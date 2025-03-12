`ifndef ADDER16_V
`define ADDER16_V
`include "fulladder.v"

module Adder16(input[15:0] a, b, output[15:0] out);
    wire[15:0] c;
    genvar i;
    generate
        for(i = 0; i < 16; i = i + 1) begin
            if(i == 0) begin
                FullAdder g(a[i], b[i], 1'b0, out[i], c[i]);
            end else begin
                FullAdder g(a[i], b[i], c[i-1], out[i], c[i]);
            end
        end
    endgenerate
endmodule

`endif