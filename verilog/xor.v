`ifndef XOR_V
`define XOR_V
`include "or.v"
`include "and.v"
`include "nand.v"

module Xor(input a, b, output out);
    wire w1, w2;
    Or or1(a, b, w1);
    Nand nand1(a, b, w2);
    And and1(w1, w2, out);
endmodule
`endif