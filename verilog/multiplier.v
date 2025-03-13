`ifndef MULTIPLIER_V
`define MULTIPLIER_V
`include "fulladder.v"
`include "and.v"

module Multiplier(input [3:0] a, b, output [7:0] p);
    wire [3:0] a1, a2, a3, a4;
    wire c1, c2, c3, c4, t1, t2, t3, t4;
    And and1(a[0], b[0], a1[0]);
    And and2(a[0], b[1], a1[1]);
    And and3(a[0], b[2], a1[2]);
    And and4(a[0], b[3], a1[3]);

    And and5(a[1], b[0], a2[0]);
    And and6(a[1], b[1], a2[1]);
    And and7(a[1], b[2], a2[2]);
    And and8(a[1], b[3], a2[3]);

    And and9(a[2], b[0], a3[0]);
    And and10(a[2], b[1], a3[1]);
    And and11(a[2], b[2], a3[2]);
    And and12(a[2], b[3], a3[3]);

    And and13(a[3], b[0], a4[0]);
    And and14(a[3], b[1], a4[1]);
    And and15(a[3], b[2], a4[2]);
    And and16(a[3], b[3], a4[3]);
    
    assign p[0] = a1[0];
    FullAdder fa1(a1[1], a2[0], 1'b0, p[1], c1);
    FullAdder fa2(a1[2], a2[1], c1, t1, c2);
    FullAdder fa3(a3[0], t1, c2, p[2], c3);
    FullAdder fa4(a1[3], a2[2], c3, t2, c4);
    FullAdder fa5(a3[1], t2, c4, p[3], c1);
    FullAdder fa6(a4[0], a2[3], c1, t3, c2);
    FullAdder fa7(a3[2], t3, c2, p[4], c3);
    FullAdder fa8(a4[1], a3[3], c3, t4, c4);
    FullAdder fa9(t4, a4[2], c4, p[5], c1);
    FullAdder fa10(a4[3], 1'b0, c1, p[6], p[7]);
    
endmodule

`endif