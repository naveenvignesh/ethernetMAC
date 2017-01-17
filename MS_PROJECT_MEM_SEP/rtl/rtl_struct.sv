typedef struct packed {
 reg [31:0]  addr;
 reg [31:0]  reserved;
} base_address;

typedef struct packed {
// reg [23:0]  reserved;
 reg [7:0]   reserved;
 reg [7:0]   frag_length;
 reg [7:0]   last_bvalid;
 reg [7:0]   QoS;
} ctrl_header;

typedef struct packed {
 reg [31:0]  head_ptr;
 ctrl_header ctrl_data;
} link_regs;

typedef struct {
  link_regs l_reg [0:15];
} clink_regs;
