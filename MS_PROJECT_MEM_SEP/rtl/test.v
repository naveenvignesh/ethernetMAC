module test(a);
 input reg a;
 reg[3:0] b;
 //assign  a= a+1;

 always @(*) begin
    b= b+a+1;
     $display ("b:%h",b);
 end
endmodule

module tb;
 reg a;
 test test_inst(a);
 initial begin 
  a= 1;   
  #200;
   
     $display ("a:%d",a);
     $finish;
  end 

endmodule 
