`ifndef ADDERLOG_V
`define ADDERLOG_V
`include "fulladder.v"
`include "xor.v"
`include "and.v"

module AdderLogo(
    input signed [15:0] a, b, 
    output signed [15:0] sum,
    output OF, SF, ZF, CF);

    genvar i;
    wire [15:0] carry;

    FullAdder fa(a[0], b[0], 1'b0, sum[0], carry[0]);
    generate
        for(i = 1;i < 16;i = i + 1) begin
            FullAdder fa(a[i], b[i], carry[i-1], sum[i], carry[i]);
        end
    endgenerate
    Xor xor1(1'b0, carry[14], CF);
    assign SF = sum[14];
    assign ZF = (sum == 16'h0000);
    Xor xor2(carry[14], carry[15], OF);

endmodule
`endif