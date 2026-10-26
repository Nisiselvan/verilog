module d_ff(

input d,
input clk,
input reset,
output reg q,
output q_bar
);

 assign q_bar=~q;

always @(posedge clk) begin
 if (reset) begin
  q<=1'b0;
  end else begin
   q<= d;
   end
        end 

        endmodule