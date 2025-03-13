`ifndef ADDER_SUBTRACTOR16_H
`define ADDER_SUBTRACTOR16_H

`include "fulladder.v"
`include "xor.v"

module AdderSubtractor16(input [15:0] a, b, input m, output [15:0] out, output f);
    wire [15:0] b_xor_m;
    wire [15:0] sum;
    wire cout;

    genvar i;
    generate
        for(i = 0; i < 16; i = i + 1) begin
            Xor xor1(b[i], m, b_xor_m[i]);
        end
    endgenerate

    wire [15:0] c;
    FullAdder g0(a[0], b_xor_m[0], m, sum[0], c[0]);

    generate
        for(i = 1; i < 16; i = i + 1) begin
            FullAdder g(a[i], b_xor_m[i], c[i-1], sum[i], c[i]);
        end
    endgenerate

    assign cout = c[15];
    assign out = sum;
    assign f = c[15] ^ c[14];
endmodule
`endif