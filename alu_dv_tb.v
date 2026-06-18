`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2026 15:13:29
// Design Name: 
// Module Name: alu_dv_tb
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


module alu_dv_tb;

reg  [31:0] A;
reg  [31:0] B;
reg  [3:0]  opcode;

wire [31:0] result;
wire zero_flag;
wire carry_flag;
wire overflow_flag;
wire negative_flag;

alu_d_v DUT (
    .A(A),
    .B(B),
    .opcode(opcode),
    .result(result),
    .zero_flag(zero_flag),
    .carry_flag(carry_flag),
    .overflow_flag(overflow_flag),
    .negative_flag(negative_flag)
);

initial begin

    // ADD
    A = 20;
    B = 10;
    opcode = 4'b0000;
    #10;

    // SUB
    A = 20;
    B = 10;
    opcode = 4'b0001;
    #10;

    // AND
    A = 12;
    B = 10;
    opcode = 4'b0010;
    #10;

    // OR
    A = 12;
    B = 10;
    opcode = 4'b0011;
    #10;

    // XOR
    A = 12;
    B = 10;
    opcode = 4'b0100;
    #10;

    // NAND
    A = 12;
    B = 10;
    opcode = 4'b0101;
    #10;

    // NOR
    A = 12;
    B = 10;
    opcode = 4'b0110;
    #10;

    // XNOR
    A = 12;
    B = 10;
    opcode = 4'b0111;
    #10;

    // LEFT SHIFT
    A = 5;
    B = 0;
    opcode = 4'b1000;
    #10;

    // RIGHT SHIFT
    A = 10;
    B = 0;
    opcode = 4'b1001;
    #10;

    // EQUAL
    A = 10;
    B = 10;
    opcode = 4'b1010;
    #10;

    // GREATER THAN
    A = 20;
    B = 10;
    opcode = 4'b1011;
    #10;

    // ZERO FLAG TEST
    A = 20;
    B = 20;
    opcode = 4'b0001;
    #10;

    // NEGATIVE FLAG TEST
    A = 5;
    B = 10;
    opcode = 4'b0001;
    #10;

    // CARRY FLAG TEST
    A = 32'hFFFFFFFF;
    B = 32'h00000001;
    opcode = 4'b0000;
    #10;

    // OVERFLOW FLAG TEST
    A = 32'h7FFFFFFF;
    B = 32'h00000001;
    opcode = 4'b0000;
    #10;
    
    //not
    A = 32'd12;
    B = 32'd0;
    opcode = 4'b1100;
    #10;
    
    //less than
    A = 32'd5;
    B = 32'd10;
    opcode = 4'b1101;
    #10;

    $finish;

end

endmodule