`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2026 15:11:36
// Design Name: 
// Module Name: alu_d_v
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


module alu_d_v(
    input  [31:0] A,
    input  [31:0] B,
    input  [3:0]  opcode,
    output reg [31:0] result,
    output reg zero_flag,
    output reg carry_flag,
    output reg overflow_flag,
    output reg negative_flag
);

reg [32:0] temp;

always @(*) begin
    // Default values 
    result = 32'b0;
    carry_flag = 1'b0;
    overflow_flag = 1'b0;

    case(opcode)
        // ADD
        4'b0000: begin
            temp = A + B;
            result = temp[31:0];
            carry_flag = temp[32];
            overflow_flag =(~A[31] & ~B[31] & result[31]) | ( A[31] &  B[31] & ~result[31]);
        end
        // SUB
        4'b0001: begin
            temp = A - B;
            result = temp[31:0];
            overflow_flag =(~A[31] & B[31] & result[31]) | ( A[31] & ~B[31] & ~result[31]);
        end
        // AND
        4'b0010: begin
            result = A & B;
        end

        // OR
        4'b0011: begin
            result = A | B;
        end

        // XOR
        4'b0100: begin
            result = A ^ B;
        end

        // NAND
        4'b0101: begin
            result = ~(A & B);
        end

        // NOR
        4'b0110: begin
            result = ~(A | B);
        end

        // XNOR
        4'b0111: begin
            result = ~(A ^ B);
        end

        // Left Shift
        4'b1000: begin
            result = A << 1;
        end

        // Right Shift
        4'b1001: begin
            result = A >> 1;
        end

        // Equal
        4'b1010: begin
            result = (A == B) ? 32'd1 : 32'd0;
        end

        //Set Greater Than
        4'b1011: begin
            result = (A > B) ? 32'd1 : 32'd0;
        end
        
        //nor
        4'b1100: begin
            result = ~A;
         end
         
         //set less than
         4'b1101: begin
            result = (A < B) ? 32'd1 : 32'd0;
         end

        default: begin
            result = 32'd0;
        end

    endcase

    // Flag generation

    zero_flag = (result == 0);

    negative_flag = result[31];

end

endmodule