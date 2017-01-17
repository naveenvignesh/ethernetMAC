module eth_tx_protocol_check(tx_xgmii.to_tb xgmii_tx);

reg [3:0]         rec_state;
integer           idles;
logic [7:0]       rfifo[$];
integer           rec_pktnum;
logic [12176:0]   efifo[$];
string            esstore[*];

//always @(posedge xgmii_tx.TXCLK or negedge xgmii_tx.TXCLK or clks.rst) begin
//always @(posedge xgmii_tx.TXDCLK or clks.rst) begin
always @(posedge clks.clk or clks.rst) begin
 if(~clks.rst) begin
   rec_state <= #0 0;
   idles     <= #0 0;
 end else begin
             case(rec_state)
              4'h0: begin
                       if(xgmii_tx.TXC==4'hF & xgmii_tx.TXD==64'haaaaaafb) begin
                               rec_state <= #1 4'h1;
                       end else if(xgmii_tx.TXC==4'hF & xgmii_tx.TXD==64'h06060606) begin
                               rec_state <= #1 4'h4; 
                               end else begin
                                         rec_state <= #1 4'h0;
                                         end
                    end 
              4'h1: begin
                       assert(xgmii_tx.TXC==4'hF & xgmii_tx.TXD==64'habaaaaaa) begin
                         rec_state <= #1 4'h2;
                       end else begin
                                   //assert(xgmii_tx.TXC==4'hF & xgmii_tx.TXD==64'haaaaaaaa)else
                                   $error("%t::--------------premable not recieved--------------",$time);
                                   #100 $finish;
                                end
		    end
              4'h2: begin
                       case(xgmii_tx.TXC)
                        4'h0: begin
                             rfifo.push_back( xgmii_tx.TXD[7:0]  );
                             rfifo.push_back( xgmii_tx.TXD[15:8] );
                             rfifo.push_back( xgmii_tx.TXD[23:16]);
                             rfifo.push_back( xgmii_tx.TXD[31:24]);
                             rec_state <= #1 4'h2;
			      end
                        4'hf: begin
                                   assert (xgmii_tx.TXD[7:0] == 8'hfd) begin
                                       pop_print();
                                       idles     <=idles + 3;
                                       rec_state <= #1 4'h3;
                                   end else begin
                                       $error("%t::-------------- pkt terminate failed----------",$time);
                                       #100 $finish;
                                            end
                              end
                        4'he: begin
                                   assert (xgmii_tx.TXD[15:8] == 8'hfd) begin
                                       rfifo.push_back( xgmii_tx.TXD[7:0]  );
                                       pop_print();
                                       //rec_state <= #1 4'h2;
                                       idles     <=idles + 2;
                                       rec_state <= #1 4'h3;
                                   end else begin
                                       $error("%t::-------------- pkt terminate failed----------",$time);
                                       #100 $finish;
                                   end 
			      end
                        4'hc: begin
                                   assert (xgmii_tx.TXD[23:16] == 8'hfd) begin
                                       rfifo.push_back( xgmii_tx.TXD[7:0]  );
                                       rfifo.push_back( xgmii_tx.TXD[15:8] );
                                       pop_print();
                                       idles     <=idles + 2;
                                       rec_state <= #1 4'h3;
                                   end else begin
                                       $error("%t::-------------- pkt terminate failed----------",$time);
                                       #100 $finish;
                                   end 
                              end
                        4'h8: begin
                                   assert (xgmii_tx.TXD[31:24] == 8'hfd) begin
                                       rfifo.push_back( xgmii_tx.TXD[7:0]  );
                                       rfifo.push_back( xgmii_tx.TXD[15:8] );
                                       rfifo.push_back( xgmii_tx.TXD[23:16]);
                                       pop_print();
                                       rec_state <= #1 4'h3;
                                   end else begin
                                       $error("%t::-------------- pkt terminate failed----------",$time);
                                       #100 $finish;
                                   end 
                              end
                        default : begin
                                   assert(xgmii_tx.TXC == 4'h0| xgmii_tx.TXC==4'hf|xgmii_tx.TXC==4'he|xgmii_tx.TXC==4'hc| xgmii_tx.TXC==4'h8) else
                                   $error("%t::-------------- pkt data ctrl failed----------",$time);
                                   #100 $finish;
				  end
                       endcase
		    end
               4'h3: begin
                       if(xgmii_tx.TXC==4'hF & xgmii_tx.TXD==64'h07070707) begin
                          idles     <= #1 idles + 1;
                          rec_state <= #1 4'h3;
                       end else if(xgmii_tx.TXC==4'hF & xgmii_tx.TXD==64'haaaaaafb) begin
                                  rec_state <= #1 4'h1;
                                end else if (xgmii_tx.TXC==4'hF & xgmii_tx.TXD==64'h06060606) begin
                                           rec_state <= #1 4'h4;
                                         end else begin
                                                  assert (xgmii_tx.TXC==4'hF & 
                                                          (xgmii_tx.TXD==64'h07070707 |
                                                           xgmii_tx.TXD==64'haaaaaafb |
                                                           xgmii_tx.TXD==64'h06060606 )) else
                                                  $error("%t::------------protocol check failed----------------",$time);
                                                  #100 $finish;
                                                  end
		     end  
               4'h4: begin
                        if(xgmii_tx.TXC==4'hf & xgmii_tx.TXD==64'h06060606) begin
			  rec_state <= #1 4'h4;                           
	                end else if(xgmii_tx.TXC==4'hf & xgmii_tx.TXD==64'h07070707) begin 
            
                                      rec_state <= #1 4'h0;
				 end else begin
                                                  assert (xgmii_tx.TXC==4'hF & 
                                                          (xgmii_tx.TXD==64'h07070707 |
                                                           xgmii_tx.TXD==64'h06060606 )) else
                                                  $error("%t::------------protocol check failed----------------",$time);
                                                  #100 $finish;
					  end
		       end
             endcase
          end
end 

integer rec_cnt;
task pop_print();
  reg [12176:0] rpkt,epkt;
  string        recv_pkt,temp_str;
  reg [7:0] temp;
  integer itr,fir,las,flag,num,i;
  rpkt = {12176{1'b0}};
  //s=(rfifo.size() * 8)-1;
  recv_pkt = {""};
  $display("____pkt:%d___",rec_cnt);
  while(rfifo.size()) begin
   temp = rfifo.pop_front();
   $write("%h",temp);
   rpkt = {rpkt,temp};
   $sformat(temp_str,"%h",temp);   //new change
   recv_pkt = {recv_pkt,temp_str}; //new change
  end
  $display("\n__________");
  $display(recv_pkt);              //new change
  
  $display("num esstore %d",esstore.num());              //new change
  if(esstore.num()==0)begin
    $display("-------------------------------------------------------------------------");
    $display("!!!ERROR---Frame not expected !!!!!! buf empty");
    $display("-------------------------------------------------------------------------");
  end else begin
            flag =0 ; 
            num  =esstore.num();            

            assert(esstore.first(itr));
            assert(esstore.last(las));
            i=0;
           while(i<num) begin 
              if(esstore[itr]==recv_pkt) begin
                 $display("-------------------------------------------------------------------------");
                 $display("!!!!INFO Ethernet frame matched \nrec_frame:\n%s\nexp_frame:\n%s\n",recv_pkt,esstore[itr]);
                 $display("-------------------------------------------------------------------------");
                 //assert(esstore.delete(itr));
                 esstore.delete(itr);
                 flag=1;
                 break;
               end 
               i=i+1;
            end 

            if(flag==1)begin
             $display("-------------------------------------------------------------------------");
             $display("!!!!INFO Success!!!Frame matched %h",rec_cnt);  
             $display("-------------------------------------------------------------------------");
            end
            else begin
             $display("-------------------------------------------------------------------------");
             $display("!!!!!ERROR Frame not found in database %h \n %s",rec_cnt,recv_pkt); 
             $display("-------------------------------------------------------------------------");
            end
           end  
  rec_cnt ++;

endtask

initial begin
 rec_cnt = 0;
end



endmodule 
