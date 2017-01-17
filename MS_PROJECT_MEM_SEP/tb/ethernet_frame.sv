/*typedef struct packed {
   logic [47:0]      DA;
   logic [47:0]      SA;
   logic [31:0]      TAG;
   logic [15:0]      ETHER_TYPE;
   logic []          PAYLOAD;
   logic [31:0]      CRC;
   
} etherframe;
*/
package ethernet_frame_pkg;
typedef struct packed {
 reg [23:0]  reserved;
 reg [7:0]   QoS;
} tb_ctrl_header;

typedef struct packed {
 reg [31:0]  head_ptr;
 tb_ctrl_header ctrl_data;
} tb_link_regs;

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
   rand logic [7:0]   QoS;
   integer net_size,pad_size,rem;

   constraint on_payload_size {payload_size > 63 && payload_size < 1523;}
   constraint on_payload      {PAYLOAD.size()==payload_size;}
   constraint on_QoS          {QoS inside {8'h01,8'h02,8'h04,8'h08,8'h10,8'h20,8'h40,8'h80};}

   function new ();
        ethernet_poly = 32'hedb88320;
        //CRC=32'hFFFFFFFF; 
   endfunction // new
   
   function void clc_CRC();

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
    net_size = (48*2)+16+(payload_size*8)+32;
    pad_size = net_size % 64;
    //net_size = net_size + pad_size;
    raw_pkt  = {this.DA,this.SA,this.ETHER_TYPE};
    foreach(PAYLOAD[i])
     raw_pkt = {raw_pkt,this.PAYLOAD[i]};
     raw_pkt = {raw_pkt,this.CRC};
    $display("-=-=-=-=-=-=-=-=-=-=RAW PKT-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
    $display("%0h",raw_pkt);
    //$display("raw_pkt:%0h",raw_pkt[63:0]);
    //$display("raw_pkt:%0h",raw_pkt[655:592]);
    $display("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");
   endfunction 
 
   function void build_frame_mem();
    integer create_new = (net_size/64);
    integer last_ptr,k,j;
    rem = net_size%64;
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
           pack_frame_memload[k]= {pack_frame_memload[k],raw_pkt[l]};
           end 
           for(integer l=64-rem;l>0;l--) begin
           pack_frame_memload[k]= {pack_frame_memload[k],1'b0};
           end 
      end

         $display("net_size:%0d",net_size);
         $display("-=-=-=-=-=-=Packed MEM Data-=-=-=-=-=-=-=-=-=-");

      for(integer i=0;i<pack_frame_memload.size();i++) begin
	 $write("%0h",this.pack_frame_memload[i],":");
      end
         $display("\n-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");
    //pack_frame_memload = 
     
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
      randomize(this.mem_addr);
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
    disp_mem();  
    disp_mem_link_addr();
    mem_link_hdr_fill();
    disp_mem();  
    link_walk(mem_addr_local_head);

   endfunction

  function void link_hdr_fill();
   create_link_hdr.head_ptr      = mem_addr_local_head;
   create_link_hdr.ctrl_data.QoS = eth_frame.QoS;  
   create_link_hdr.ctrl_data.reserved = 0;  
   link_hdr_regs.push_back(create_link_hdr);

    $display("-=-=-=-=-=-=-=-=-=-=-LINK HDR-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=");
    $display("link_hdr head_ptr:%032h Ctrl_data:%032h",create_link_hdr.head_ptr,create_link_hdr.ctrl_data);
    $display("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
    
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

import ethernet_frame_pkg::*;
module ethernet_frame_gen();
   logic [31:0] mem_addr_local;
   logic [31:0] f_index,l_index,index;
 
/*   initial begin 
   ethernet_frame eth_frame  = new();
   mem_addr_gen addr_gen_obj = new();
   assert(eth_frame.randomize() with {payload_size==64;});
   eth_frame.print();
   eth_frame.build_frame_mem();
   assert(addr_gen_obj.randomize());
   
      for(integer i=0;i<eth_frame.pack_frame_memload.size();i++) begin
         mem_addr_local = addr_gen_obj.addr_gen();
         if(ethernet_mem_data.exists(mem_addr_local)) begin
          $display("mem occupied @ addr :%0h",mem_addr_local); 
          $finish;
         end else begin 
         ethernet_mem_data[mem_addr_local]= eth_frame.pack_frame_memload[i];
         end
	 $display("%064h stored @ mem location: %064h",eth_frame.pack_frame_memload[i],mem_addr_local);
      end
  
      if(ethernet_mem_data.first(index)) 
      do
	 $display("mem_location: %064h :: data_stored: %064h",index,ethernet_mem_data[index]);
      while(ethernet_mem_data.next(index));

   $finish;
   end 
*/

initial begin 
 repeat(1) begin 
 // generate packets here
 pkt_gen_mem_fill pkt = new();
 pkt.build_ethernet_frame();
 pkt.mem_fill();
 pkt.link_hdr_fill();
 end
 $finish;
end 

endmodule // ethernet_frame

