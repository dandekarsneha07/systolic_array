`include "PE.v"
module systolic_array(B0, B1, A0, A2, C0, C1, C2, C3, clk, reset);

input [3:0] B0, B1, A0, A2;
input clk, reset;
output [7:0] C0, C1, C2, C3;
wire [3:0] a0, a1, a2, a3, b0, b1, b2, b3;


PE P0(A0, B0, a0, b0, clk, reset, C0);
PE P1(a0, B1, a1, b1, clk, reset, C1);
PE P2(A2, b0, a2, b2, clk, reset, C2);
PE P3(a2, b1, a3, b3, clk, reset, C3);

endmodule