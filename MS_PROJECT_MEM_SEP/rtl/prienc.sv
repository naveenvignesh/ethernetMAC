module prienc #(parameter N=4)(
input en,
input      [N-1:0] req,
output reg [N-1:0] gnt);

reg gset;
always @(en or req) begin
         
         gnt  = {(N-1){1'b0}};
         gset = 0;

         for(integer i=N-1;i>=0;i=i-1) begin  
           if(i==N-1) begin
              gnt[i]  = req[i];
              gset   |= gnt[i];
	   end else begin
              gnt[i]  = ~gset & req[i];
              gset   |= gnt[i];
                    end   
         end 
  
end 

endmodule 
