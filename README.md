#Design and Verification of a 32-bit ALU with Status Flag Generation using Verilog HDL

##Overview

This project implements a 32-bit Arithmetic Logic Unit (ALU) using Verilog HDL. The ALU performs arithmetic, logical, shift, and comparison operations based on a 4-bit opcode and generates status flags including Zero, Carry, Overflow, and Negative flags.

##Features

###Arithmetic Operations

- Addition
- Subtraction

###Logical Operations

- AND
- OR
- XOR
- NAND
- NOR
- XNOR
- NOT

##Shift Operations

- Logical Left Shift
- Logical Right Shift

###Comparison Operations

- Equal To
- Greater Than
- Less Than

###Status Flags

- Zero Flag (Z)
- Carry Flag (C)
- Overflow Flag (V)
- Negative Flag (N)

##Tools Used

- Verilog HDL
- Xilinx Vivado

##Verification

The design was verified using a Verilog testbench with directed test cases covering:

- Arithmetic operations
- Logical operations
- Shift operations
- Comparison operations
- Status flag generation
- Corner-case validation

Project Files

- "alu_32bit.v" – RTL Design
- "alu_32bit_tb.v" – Testbench
- "Project_Report.pdf"
- RTL Schematic
- Simulation Waveforms

##Results

The ALU was successfully simulated and verified in Vivado. All operations and status flags produced the expected results during functional verification.
