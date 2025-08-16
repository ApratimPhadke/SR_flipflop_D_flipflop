`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2025 02:06:57 PM
// Design Name: 
// Module Name: SR_D
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
/*
//structural code 
module D(
input wire clk,
input wire d,
output reg q,
output wire qb
);
always @(posedge clk) begin 
q<=d;
end 
assign qb = ~q;
endmodule

module SR_D(
input wire clk,
input wire S,
input wire R,
output wire Q,
output wire Qb
);
wire D;
assign D = S | (~R & Q);
D dff(
.clk(clk),
.d(D),
.q(Q),
.qb(Qb)
);
endmodule
*/
module sr_d(
input wire clk,
input wire S,
input wire R,
output reg Q ,
output wire Qbar
);
wire D;

assign D = S|(~R & Q);

always @(posedge clk) begin 
Q<=D;
end 
assign Qbar = ~Q;
endmodule