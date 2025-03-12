`ifndef NOR_V
`define NOR_V
`include "or.v"
`include "not.v"

module Nor(input a, b, output out);
    Or or1(a, b, res);
    Not not1(res, out);
endmodule
`endif