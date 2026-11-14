`timescale 1ns / 1ps

module WB(

input wire [31:0] mem_alu_result,
input wire [31:0] readdata,
input wire memtoreg,
output wire [31:0] writedata

    );
    
    assign writedata = memtoreg ? readdata : mem_alu_result;
    
endmodule
