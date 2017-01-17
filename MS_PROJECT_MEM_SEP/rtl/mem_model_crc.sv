//
// This is a simple memory model for the Ethernet MAC tx controller
//
// This is gneric memory that will be used for pkt data FIFO across ethernet
// MAC controller
//


//module mem_model(clks,waddr,wdata,write,raddr,rdata);
module mem_model_crc(MEMIF_CRC.to_mem  memif,AXI_clks.to_rtl clks);

parameter DWIDTH = 32;
parameter AWIDTH = 32; 
parameter MEM_DEPTH = (1<<AWIDTH);

logic  [AWIDTH-1:0] waddr;
logic  [DWIDTH-1:0] wdata;
logic               write;
logic  [AWIDTH-1:0] raddr;
logic  [DWIDTH-1:0] rdata;

assign waddr          = memif.f0_waddr;
assign wdata          = memif.f0_wdata;
assign write          = memif.f0_write;
assign raddr          = memif.f0_raddr;
assign memif.f0_rdata = rdata;


reg [DWIDTH-1:0] mem[0:MEM_DEPTH-1];

logic [DWIDTH-1:0] m00,m01,m02,m03;
assign m00=mem[0];
assign m01=mem[1];
assign m02=mem[2];
assign m03=mem[3];

always @(*) begin
  rdata <= #1 mem[raddr];
end

always @(posedge(clks.clk)) begin
  if(write) begin
    mem[waddr]<=#1 wdata;
  end
end

endmodule
