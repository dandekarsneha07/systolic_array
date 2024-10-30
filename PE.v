//`include "booth_mult.v"
module PE #(parameter REG_WIDTH = 4, parameter OUT_WIDTH = 8)(A, B, a, b, clk, reset, C);

input [REG_WIDTH-1:0] A, B;
output reg [REG_WIDTH-1:0] a, b;
output reg [OUT_WIDTH-1:0] C;
input clk, reset;

wire [OUT_WIDTH-1:0] mult;


always @ (posedge clk)begin
  if(reset) begin
    C <= 0;
    a <= 0;
    b <= 0;
  end

else begin
  C <= C + mult;
  a <= A;
  b <= B;
  end
end

assign mult = A*B;

endmodule