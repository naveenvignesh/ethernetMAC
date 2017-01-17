package ethernet_frame_pkg;
`include "TB_CRC_block.sv"

typedef struct packed {
// reg [23:0]  reserved;
 reg [7:0]   reserved;
 reg [7:0]   frag_length; 
 reg [7:0]   last_bvalid;
 reg [7:0]   QoS;
} tb_ctrl_header;

typedef struct packed {
 reg [31:0]  head_ptr;
 tb_ctrl_header ctrl_data;
} tb_link_regs;

logic debug_print=1'b0;

class ethernet_frame;
   rand logic [47:0]  DA;
   rand logic [47:0]  SA;
   //rand logic [31:0]  TAG;
   rand logic [15:0]  ETHER_TYPE;
   rand logic [7:0]   PAYLOAD[];
   logic      [31:0]  CRC;
   logic 	      ethernet_poly;
   rand logic [14:0]  payload_size; 
   logic      [31:0]  pack_frame_crc[];
   logic      [63:0]  pack_frame_memload[];
   logic      [12175:0] raw_pkt;
   logic      [12175:0] raw_pkt_crc;
   rand logic [7:0]   QoS;
   integer net_size,pad_size,rem;
   logic      [7:0]   frag_length;
   logic      [7:0]   last_bvalid;
   string             str_raw_pkt_crc;

   constraint on_payload_size {payload_size > 63 && payload_size < 1523;}
   constraint on_payload      {PAYLOAD.size()==payload_size;}
   constraint on_QoS          {QoS inside {8'h01,8'h02,8'h04,8'h08,8'h10,8'h20,8'h40,8'h80};}

   function new ();
        ethernet_poly = 32'hedb88320;
        //CRC=32'hFFFFFFFF; 
   endfunction // new
   
   function logic[31:0] clc_CRC(input integer net_size);
      integer rem,div,i,j; 
      //logic   [31:0] CRC_in;
       div     = net_size/64; 
       rem     = (net_size%64)/8; 
       //$display("rem:%h",rem);
       clc_CRC = 32'hFFFFFFFF;

       for(i=0,j=net_size-1;i<div;i=i+1,j=j-64) begin
             //$display("data:%h CRC_in:%h",raw_pkt[j-:64],clc_CRC); 
             clc_CRC=nextCRC32_D64(raw_pkt[j-:64],clc_CRC);
             //$display("clc_CRC:%h",clc_CRC);
       end 
  
       //for(integer l=64-rem;l>0;l--) begin
       case(rem)
         1:begin
             //$display("data:%h CRC_in:%h",raw_pkt[7:0],clc_CRC);
             clc_CRC=nextCRC32_D8(raw_pkt[7:0],clc_CRC);//byte
             //$display("clc_CRC:%h",clc_CRC);
           end
         2:begin
             //$display("data:%h CRC_in:%h",raw_pkt[15:0],clc_CRC);
             clc_CRC=nextCRC32_D16(raw_pkt[15:0],clc_CRC);// 2byte
             //$display("clc_CRC:%h",clc_CRC);
           end
         3:begin
             //$display("data:%h CRC_in:%h",raw_pkt[23:8],clc_CRC);
             clc_CRC=nextCRC32_D16(raw_pkt[23:8],clc_CRC);// 2byte
             //$display("data:%h CRC_in:%h",raw_pkt[7:0],clc_CRC);
             clc_CRC=nextCRC32_D8(raw_pkt[7:0],clc_CRC);  // 1byte
             //$display("clc_CRC:%h",clc_CRC);
	   end
         4:begin
             //$display("data:%h CRC_in:%h",raw_pkt[31:0],clc_CRC);
             clc_CRC=nextCRC32_D32(raw_pkt[31:0],clc_CRC);
             //$display("clc_CRC:%h",clc_CRC);
           end
         5:begin
             //$display("data:%h CRC_in:%h",raw_pkt[39:8],clc_CRC);
             clc_CRC=nextCRC32_D32(raw_pkt[39:8],clc_CRC);
             //$display("data:%h CRC_in:%h",raw_pkt[7:0],clc_CRC);
             clc_CRC=nextCRC32_D8(raw_pkt[7:0],clc_CRC);
             //$display("clc_CRC:%h",clc_CRC);
           end
         6:begin
             //$display("data:%h CRC_in:%h",raw_pkt[47:16],clc_CRC);
             clc_CRC=nextCRC32_D32(raw_pkt[47:16],clc_CRC);
             //$display("data:%h CRC_in:%h",raw_pkt[15:0],clc_CRC);
             clc_CRC=nextCRC32_D16(raw_pkt[15:0],clc_CRC);
             //$display("clc_CRC:%h",clc_CRC);
           end
         7:begin
             //$display("data:%h CRC_in:%h",raw_pkt[55:24],clc_CRC);
             clc_CRC=nextCRC32_D32(raw_pkt[55:24],clc_CRC);
             //$display("data:%h CRC_in:%h",raw_pkt[23:8],clc_CRC);
             clc_CRC=nextCRC32_D16(raw_pkt[23:8],clc_CRC);
             //$display("data:%h CRC_in:%h",raw_pkt[7:0],clc_CRC);
             clc_CRC=nextCRC32_D8(raw_pkt[7:0],clc_CRC);
             //$display("clc_CRC:%h",clc_CRC);
           end
       endcase
      
   endfunction // clac_CRC
  
   function void print();
      $display("=-=-=-=-=-=-=-=-=-=-=-=ETHERNET FRAME=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");
      $display("DA:%0h",
                this.DA[47:40],"::%0h",
                this.DA[39:32],"::%0h",
                this.DA[31:24],"::%0h",
                this.DA[23:16],"::%0h",
                this.DA[15:8] ,"::%0h",
                this.DA[7:0]  );
      $display("SA:%0h",
	        this.SA[47:40],"::%0h",
                this.SA[39:32],"::%0h",
                this.SA[31:24],"::%0h",
                this.SA[23:16],"::%0h",
                this.SA[15:8] ,"::%0h",
                this.SA[7:0] );
      
                
                
      $display("ETHER_TYPE:%0h",this.ETHER_TYPE);
      $display("PAYLOAD:");
      for(integer i=0;i<payload_size;i++) begin
	 $write("%0h",this.PAYLOAD[i],":");
      end
      $display("\nCRC:%0h",this.CRC);
      $display("\n-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");
      
   endfunction // print
  
   function void post_randomize();
    //net_size = (48*2)+16+(payload_size*8)+32;
    string str_temp;
    net_size = (48*2)+16+(payload_size*8);
    pad_size = net_size % 64;
    //net_size = net_size + pad_size;
    str_raw_pkt_crc = {""};
    raw_pkt  = {this.DA,this.SA,this.ETHER_TYPE};
    $sformat(str_temp,"%h",{this.DA,this.SA,this.ETHER_TYPE});
    str_raw_pkt_crc = {str_raw_pkt_crc,str_temp};
    foreach(PAYLOAD[i]) begin
     raw_pkt = {raw_pkt,this.PAYLOAD[i]};
     $sformat(str_temp,"%h",this.PAYLOAD[i]);
     str_raw_pkt_crc = {str_raw_pkt_crc,str_temp};
     end
     //raw_pkt = {raw_pkt,this.CRC};
     raw_pkt_crc = raw_pkt;
     this.CRC=clc_CRC(net_size);
     raw_pkt_crc = {raw_pkt_crc,this.CRC};
     $sformat(str_temp,"%h",this.CRC);
     str_raw_pkt_crc = {str_raw_pkt_crc,str_temp};
    //if(debug_print) begin 
    $display("-=-=-=-=-=-=-=-=-=-=RAW PKT-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
    $display("%0h",raw_pkt);
    //$display("raw_pkt:%0h",raw_pkt[63:0]);
    //$display("raw_pkt:%0h",raw_pkt[655:592]);
    $display("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");
    //end
    $display("-=-=-=-=-=-=-=-=-=-=RAW PKT CRC-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
    $display("%0h",raw_pkt_crc);
    $display("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");
    $display("-=-=-=-=-=-=-=-=-=-=STR RAW PKT CRC-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
    $display(str_raw_pkt_crc);
    $display("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");
   endfunction 
 
   function void build_frame_mem();
    integer create_new = (net_size/64);
    integer last_ptr,k,j;
    reg [7:0] flength;
    rem = net_size%64;

    flength = rem/8;
    case(flength)
       8'd0: last_bvalid = 8'b1111_1111; //ff
       8'd1: last_bvalid = 8'b1000_0000; //80
       8'd2: last_bvalid = 8'b1100_0000; //c0
       8'd3: last_bvalid = 8'b1110_0000; //e0
       8'd4: last_bvalid = 8'b1111_0000; //f0
       8'd5: last_bvalid = 8'b1111_1000; //f8
       8'd6: last_bvalid = 8'b1111_1100; //fc
       8'd7: last_bvalid = 8'b1111_1110; //fe
       //8'd8: last_bvalid = 8'b1111_1111; //ff
    endcase

    if(debug_print)
    $display("rem:%0d",rem);
    if(rem>0)
    pack_frame_memload = new [create_new+1];
    else 
    pack_frame_memload = new [create_new];
    
    for(k=0,j=net_size-1;k<(net_size/64);k=k+1,j=j-64) begin
      pack_frame_memload[k] = raw_pkt[j-:64]; 
	 //$write("%0h",this.raw_pkt[j-:64],":");
         //last_ptr = j-64;
    end    
    
      if(rem>0) begin
           for(integer l=rem;l>0;l--) begin
           pack_frame_memload[k]= {pack_frame_memload[k],raw_pkt[l-1]};// fixing l to l-1 on oct 8th 2016
           end 
           for(integer l=64-rem;l>0;l--) begin
           pack_frame_memload[k]= {pack_frame_memload[k],1'b0};
           end 
      end

         if(debug_print)
         $display("net_size:%0d",net_size);
         $display("-=-=-=-=-=-=Packed MEM Data-=-=-=-=-=-=-=-=-=-");

      for(integer i=0;i<pack_frame_memload.size();i++) begin
	 $write("%0h",this.pack_frame_memload[i],":");
      end
         $display("\n-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");
    //pack_frame_memload = 
        frag_length = pack_frame_memload.size();  
   endfunction // build_frame_crc 
  

   function void build_frame_crc(); 
     
   endfunction // build_frame 

	       
endclass // ethernet_frame

logic [63:0] ethernet_mem_data[*];
logic [31:0] ethernet_mem_link_addr[*];
logic [63:0] ethernet_mem_ctrl[*];
tb_link_regs link_hdr_regs[$];

class mem_addr_gen;
   rand logic [31:0] mem_addr;
   rand logic [31:0] base_addr;
  
   //constraint on_mem_addr { mem_addr % 128 ==0;}
   constraint on_mem_addr { mem_addr % 16 ==0;}
   constraint on_mem_addr_start_end { mem_addr>= 32'hFF000000; & mem_addr<= 32'hFF0FFFFF;}
   function new();
   endfunction 

   function reg [31:0] addr_gen();
     do
      randomize(mem_addr);
     while(ethernet_mem_data.exists(mem_addr));

     return mem_addr;
   endfunction 
   
endclass

class pkt_gen_mem_fill;

   logic [31:0] mem_addr_local,mem_addr_local_prev,mem_addr_local_head;
   logic [31:0] f_index,l_index,index;
   ethernet_frame eth_frame;
   mem_addr_gen   addr_gen_obj;
   tb_link_regs   create_link_hdr;

   function new();
     eth_frame  = new();
     addr_gen_obj = new();
   endfunction 
    
   function string exp_str();
    string temp_str;
    temp_str = eth_frame.str_raw_pkt_crc;
    return temp_str;
   endfunction 

   function void build_ethernet_frame();
   assert(eth_frame.randomize() with {payload_size==64;});
   eth_frame.print();
   eth_frame.build_frame_mem();
   endfunction
  
   function void mem_fill();
    assert(addr_gen_obj.randomize());

    $display("-=-=-=-=-=-=-=-=-=-=MEM FILL-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
      for(integer i=0;i<eth_frame.pack_frame_memload.size();i++) begin
         mem_addr_local  = addr_gen_obj.addr_gen();
         if(ethernet_mem_data.exists(mem_addr_local)) begin
          $display("Something Wrong !!!! mem occupied @ addr :%032h",mem_addr_local); 
          $finish;
         end else begin 
          ethernet_mem_data[mem_addr_local]= eth_frame.pack_frame_memload[i];
	  $display("%064h stored @ mem location: %032h",eth_frame.pack_frame_memload[i],mem_addr_local);
                  if(i==0) begin 
		  mem_addr_local_head = mem_addr_local; 	
                  end else if(i==(eth_frame.pack_frame_memload.size()-1)) begin
                               ethernet_mem_link_addr[mem_addr_local]      = mem_addr_local_head; 
                               ethernet_mem_link_addr[mem_addr_local_prev] = mem_addr_local; 
                           end else begin 
                               ethernet_mem_link_addr[mem_addr_local_prev] = mem_addr_local; 
                           end
		  mem_addr_local_prev = mem_addr_local; 	
         end
      end
    $display("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
    if(debug_print) begin 
    disp_mem();  
    disp_mem_link_addr();
    end
    mem_link_hdr_fill();
    disp_mem();  
    link_walk(mem_addr_local_head);

   endfunction

  function logic [63:0] link_hdr_fill();
   create_link_hdr.head_ptr      = mem_addr_local_head;
   create_link_hdr.ctrl_data.QoS = eth_frame.QoS;  
   create_link_hdr.ctrl_data.last_bvalid = eth_frame.last_bvalid;  
   create_link_hdr.ctrl_data.frag_length = eth_frame.frag_length;  
   create_link_hdr.ctrl_data.reserved = 0;  
   //link_hdr_regs.push_back(create_link_hdr);

    $display("-=-=-=-=-=-=-=-=-=-=-LINK HDR-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=");
    $display("link_hdr head_ptr:%032h Ctrl_data:%032h",create_link_hdr.head_ptr,create_link_hdr.ctrl_data);
    $display("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
    
    return create_link_hdr;
  endfunction 

  function void mem_link_hdr_fill();
      logic [31:0] index;
      if(ethernet_mem_link_addr.first(index)) 
      do
          //ethernet_mem_data[index+64]= ethernet_mem_link_addr[index];
          ethernet_mem_data[index+8]= ethernet_mem_link_addr[index];
      while(ethernet_mem_link_addr.next(index));
   
  endfunction 

endclass

function void disp_mem();
      logic [31:0] index;
    $display("-=-=-=-=-=-=-=-=-=-=MEM DISP-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
      if(ethernet_mem_data.first(index)) 
      do
	 $display("mem_location: %064h :: data_stored: %064h",index,ethernet_mem_data[index]);
      while(ethernet_mem_data.next(index));
    $display("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
endfunction 
function void disp_mem_link_addr();
      logic [31:0] index;
    $display("-=-=-=-=-=-=-=-=-=-=MEM LINK DISP-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
      if(ethernet_mem_link_addr.first(index)) 
      do
	 $display("mem_location: %032h :: nxt_mem_link_addr: %032h",index,ethernet_mem_link_addr[index]);
      while(ethernet_mem_link_addr.next(index));
    $display("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
endfunction 

function void link_walk(input logic[31:0] start);
     logic [31:0] ptr;
      ptr = start;
          $display("-=-=-=-=-=-=-=-=-=-=-=-=-=LINK WALK-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
     do 
        begin
          $display("MEM_ADDR:%032h MEM_DATA:%064h",ptr,ethernet_mem_data[ptr]);
          ptr = ethernet_mem_link_addr[ptr];
        end
     while(start!=ptr);  
          $display("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
endfunction 

endpackage 

