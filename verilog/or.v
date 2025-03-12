`ifndef OR_V
`define OR_V
`include "nand.v"
module Or(input a, b, output out);
    Nand n1(a, a, a_res);
    Nand n2(b, b, b_res);
    Nand n3(a_res, b_res, out);
endmodule
`endif