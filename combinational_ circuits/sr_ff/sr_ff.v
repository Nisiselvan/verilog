module sr_ff(

input s,
input r,
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
  case ({s,r})
   2'b00: q<=q;
   2'b01: q<=1'b0;
   2'b10: q<=1'b1;
   2'b11: q<=1'bx;
   endcase 
   end
        end 

        endmodule