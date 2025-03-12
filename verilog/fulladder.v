`ifndef FULLADDER_V
`define FULLADDER_V
`include "half-adder.v"
// `include "and.v"
`include "or.v"

module FullAdder(input a, b, c, output sum, carry);
    wire s1, c1, c2;
    HalfAdder ha1(a, b, s1, c1);
    HalfAdder ha2(s1, c, sum, c2);
    Or or1(c1, c2, carry);
    // wire w1, w2, w3, w4;
    // Xor xor1(a, b, w1);
    // Xor xor2(w1, c, sum);
    // And and1(a, b, w2);
    // And and2(w1, c, w3);
    // Or or1(w2, w3, carry);
endmodule
`endif