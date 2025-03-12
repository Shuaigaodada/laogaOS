`ifndef AND_V
`define AND_V
`include "nand.v"
module And(input a, b, output out);
    Nand g1(a, b, ab_out);
    Nand g2(ab_out, ab_out, out);
endmodule
`endif