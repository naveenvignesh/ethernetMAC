module axi_slave_model(
 AXI_clks.to_rtl           clks,
 AXI_rd_addr_ch.slave_if rd_ach,
 AXI_rd_data_ch.slave_if rd_dch
);

reg [35:0] ra_fifo [3][$];
reg [31:0] rd_fifo [3][$];
integer ra_size0,ra_size1,ra_size2;
reg [3:0]  rdid_d,rdid_nxt;

reg arready_d,arready_nxt,push_addr,pop;
reg empty_ra_fifo0,empty_ra_fifo1,empty_ra_fifo2;
typedef enum reg [2:0] {RST_AR= 3'b000,WAIT_FOR_VALID=3'h1,READY_ASSERTED=3'h3} ra_state;
typedef enum reg [2:0] {RST_DR= 3'b000,VALID_ASSERT  =3'b001,WAIT_FOR_READY=3'b011} rd_state;
ra_state cur_ra_state,nxt_ra_state;
rd_state cur_rd_state,nxt_rd_state;
reg [2:0] gnt_vector_d,gnt_vector_nxt;
reg [2:0] req_vector;
reg [1:0] r_vector[3],r_vector_nxt[3];
reg [1:0] r_v0,r_v1,r_v2;
reg pop_addr,arb_nxt;
reg [1:0] ch_tdm_d,ch_tdm_nxt;

assign {r_v0,r_v1,r_v2} = {r_vector[0],r_vector[1],r_vector[2]};

always @(posedge clks.clk or negedge clks.rst) begin 
   if(!clks.rst) begin
      cur_ra_state   <= #0 RST_AR; 
      arready_d      <= #0 0;
      empty_ra_fifo0 <= #0 1;
      empty_ra_fifo1 <= #0 1;
      empty_ra_fifo2 <= #0 1;
      ra_size0        <= #0 0;
      ra_size1        <= #0 0;
      ra_size2        <= #0 0;
   end else begin 
      cur_ra_state <= #1 nxt_ra_state;
      arready_d    <= #1 arready_nxt;
       
      if(push_addr) begin
         ra_fifo[rd_ach.ARID].push_back({rd_ach.ARLEN,rd_ach.ARADDR}); 
         $display("%0t tb_axi_slave_model::===========ADDR pushed into FIFO[%d]:%0h==========",$realtime,rd_ach.ARID,{rd_ach.ARLEN,rd_ach.ARADDR});
      end

      //if(pop_addr) begin 
      //   ra_fifo[(gnt_vector_d>>1)].pop_front();
      //end
      empty_ra_fifo0 <= #1 (ra_fifo[0].size()==0);
      empty_ra_fifo1 <= #1 (ra_fifo[1].size()==0);
      empty_ra_fifo2 <= #1 (ra_fifo[2].size()==0);
      ra_size0        <= #1 ra_fifo[0].size();
      ra_size1        <= #1 ra_fifo[1].size();
      ra_size2        <= #1 ra_fifo[2].size();
            end 
end
reg empty_ra_fifo;

always @(*) begin
   nxt_ra_state  = cur_ra_state;
   push_addr     = rd_ach.ARVALID & rd_ach.ARREADY; 
   arready_nxt   = 0;
   empty_ra_fifo = (empty_ra_fifo0 & empty_ra_fifo1 & empty_ra_fifo2);

   case(cur_ra_state)
    RST_AR: begin 
           if(clks.rst) begin
             nxt_ra_state = WAIT_FOR_VALID; 
           end else begin 
             nxt_ra_state = RST_AR; 
                    end
         end
    WAIT_FOR_VALID: begin 
                       if(rd_ach.ARVALID) begin 
                           nxt_ra_state = READY_ASSERTED;
                           arready_nxt  = 1;
		       end 
                    end
    READY_ASSERTED: begin 
                       if(rd_ach.ARVALID) begin 
                           nxt_ra_state = READY_ASSERTED;
                           arready_nxt  = 1;
                       end else begin 
                           nxt_ra_state = WAIT_FOR_VALID;
                           arready_nxt  = 0;
                                end 
                    end
   endcase 
end

 reg net_arb;
always @(*) begin 
  req_vector      =  {~empty_ra_fifo2,~empty_ra_fifo1,~empty_ra_fifo0};
  r_vector_nxt[0] =   r_vector[0];

  for(integer i=0;i<3;i=i+1) begin
     gnt_vector_nxt[i] = gnt_vector_d[i];
     r_vector_nxt[i]   = r_vector[i];
  end

  net_arb = arb_nxt || (gnt_vector_d==0);
 if(net_arb) begin
 
      //gnt_vector_nxt[r_vector[0]] = req_vector[r_vector[0]];
      gnt_vector_nxt[r_vector[0]] = 0; // no concecutive grants to system 
  for(integer i=1;i<3;i=i+1) begin 
      gnt_vector_nxt[r_vector[i]] = req_vector[r_vector[i]] & ~gnt_vector_nxt[r_vector[i-1]];
      if(gnt_vector_nxt[r_vector[i]]) begin
      r_vector_nxt[0] = r_vector[i];
      end
  end

  for(integer i=1;i<3;i=i+1) begin
      r_vector_nxt[i] = ((r_vector_nxt[i-1]+1)==3)?0:(r_vector_nxt[i-1]+1);
  end

 end

end

reg rvalid_d,rvalid_nxt;
reg [1:0] rresp;
reg rlast_d,rlast_nxt;
reg [31:0] mem_addr_d;
reg [35:0] mem_addr_nxt;
reg [3:0]  rburst_cnt_d,rburst_cnt_nxt;

always @(posedge clks.clk or negedge clks.rst) begin 

  if(!clks.rst) begin 
            cur_rd_state        <=#0 RST_DR;
            rvalid_d            <=#0 0;
            gnt_vector_d        <=#0 1;   
            for (integer i=0;i<3;i=i+1) begin 
            r_vector[i]         <=#0 i;
            end
            rlast_d             <=#0 0;
            mem_addr_d          <=#0 0;
            rburst_cnt_d        <=#0 4'hF;
            rdid_d              <= #0 0; 
  end else begin 
            cur_rd_state        <= #1 nxt_rd_state;
            rvalid_d            <= #1 rvalid_nxt;
            gnt_vector_d        <= #1 gnt_vector_nxt;   
            //req_vector      <= #1 req_vector_nxt;
            rlast_d             <= #1 rlast_nxt;
            mem_addr_d          <= #1 mem_addr_nxt[31:0];
            for (integer i=0;i<3;i=i+1) begin 
            r_vector[i]         <=#1 r_vector_nxt[i];
            end

            if(pop) begin 
               if(!ethernet_frame_pkg::ethernet_mem_data.exists(mem_addr_d)) begin
                $display("tb_axi_slave_model::============Data does not exits @ location:%h======",mem_addr_d);
                #100; $finish;
               end else begin
                ethernet_frame_pkg::ethernet_mem_data.delete(mem_addr_d);
                $display("%0t tb_axi_slave_model::==========Memory freed @ location:%h=============",$realtime,mem_addr_d);
               end
            end
           
      if(pop_addr) begin 
         $display("%tWAIT_FOR_READY====tb_axi_slave_model=====rd_addr_poped:%h",$time,ra_fifo[(gnt_vector_d>>1)][0]); 
         ra_fifo[(gnt_vector_d>>1)].pop_front();
      end
            rburst_cnt_d        <= #1 rburst_cnt_nxt;
            rdid_d              <= #1 rdid_nxt;
           end

end 

reg [63:0] rdata;
always @(mem_addr_d) begin // fix for hold violation in gate sim 
 if(clks.rst) begin
  if(ethernet_frame_pkg::ethernet_mem_data.exists(mem_addr_d)) begin
  rdata        = ethernet_frame_pkg::ethernet_mem_data[mem_addr_d];
  end else begin
            $display("tb_axi_slave_model::+++++++++Memory read TB Fatal error+++++++++++");
            $display("time:%t tb_axi_slave_model::+++++++++Data does not exits @ location:%h+++++++++++",$time,mem_addr_d);
            //if((mem_addr_d !== 32'hx))
            //$fatal("tb_axi_slave_model::+++++++++Data does not exits @ location:%h+++++++++++",mem_addr_d);
            rdata = 'hx;
           end
  rresp        = ethernet_frame_pkg::ethernet_mem_data.exists(mem_addr_d)?2'b00:2'b10; // error if does not exists in memory
 end else begin 
             rdata = 'hx;
          end
end

always @(*) begin 
  nxt_rd_state   = cur_rd_state; 
  rlast_nxt      = (rburst_cnt_d==0);
  mem_addr_nxt   = {4'h0,mem_addr_d};
  pop            = rd_dch.RREADY & rd_dch.RVALID;
  rburst_cnt_nxt = rburst_cnt_d;
  rvalid_nxt    = 0;
  pop_addr      = 0;
  arb_nxt       = 0;
  rdid_nxt      = rdid_d;

  case(cur_rd_state)
   RST_DR: begin 
              if(clks.rst) begin
                nxt_rd_state = VALID_ASSERT; 
              end else begin
                nxt_rd_state = RST_DR; 
                       end
	   end
   VALID_ASSERT: begin 
                  if(!empty_ra_fifo & !(gnt_vector_d==0)) begin 
                    nxt_rd_state   = WAIT_FOR_READY;
                    rvalid_nxt     = 1;
                    //mem_addr_nxt   = ra_fifo[(gnt_vector_d>>1)].pop_front();
                    mem_addr_nxt   = ra_fifo[(gnt_vector_d>>1)][0];
                    //$display("%t VALID_ASSERT====tb_axi_slave_model=====rd_addr_poped:%h",$realtime,mem_addr_nxt); 
                    rdid_nxt       = (gnt_vector_d>>1);
                    arb_nxt        = 1;
                    rburst_cnt_nxt = mem_addr_nxt[35:32]-1;
                    pop_addr       = 1;
                  end else begin 
                             nxt_rd_state = VALID_ASSERT;
                             rvalid_nxt   = 0;
                             rburst_cnt_nxt = 4'hF;
                             //arb_nxt        = 1;
                           end
                 end
   WAIT_FOR_READY: begin 
                     if(rd_dch.RREADY) begin

                      if(rburst_cnt_d==0) begin 
                         if(!empty_ra_fifo & !(gnt_vector_d==0)) begin 
                             nxt_rd_state = WAIT_FOR_READY;
                             rvalid_nxt   = 1;
                             //mem_addr_nxt = ra_fifo[(gnt_vector_d>>1)].pop_front();
                             mem_addr_nxt = ra_fifo[(gnt_vector_d>>1)][0];
                    //$display("%tWAIT_FOR_READY====tb_axi_slave_model=====rd_addr_poped:%h",$time,mem_addr_nxt); 
                             rdid_nxt       = (gnt_vector_d>>1);
                             rburst_cnt_nxt = mem_addr_nxt[35:32]-1;
                             pop_addr       = 1;
                             arb_nxt        = 1;
                         end else begin 
                             nxt_rd_state = VALID_ASSERT;
                             rvalid_nxt   = 0;
                             rburst_cnt_nxt = 4'hF;
                             //arb_nxt        = 1;
                                  end
                       end else begin /// in burst mode 
                             nxt_rd_state = WAIT_FOR_READY;
                             rvalid_nxt   = 1;
                             mem_addr_nxt = mem_addr_d + 8;
                             rburst_cnt_nxt = rburst_cnt_d-1;
                                  
                                end
                     end else begin
                             nxt_rd_state = WAIT_FOR_READY;
                             rvalid_nxt   = 1;
                              end
                  
                   end
  endcase

end 


assign rd_ach.ARREADY = arready_d;
assign rd_dch.RDATA   = rdata;
assign rd_dch.RRESP   = rresp;
assign rd_dch.RLAST   = (rburst_cnt_d == 0);
assign rd_dch.RUSER   = 0;
assign rd_dch.RVALID  = rvalid_d;
//assign rd_dch.RID     = (gnt_vector_d>>1);
assign rd_dch.RID     = rdid_d;

endmodule 
