`include "adder16.v"

module Adder16_tb;
    reg signed [15:0]  a, b;
    wire signed [15:0] out;
    Adder16 adder1(a, b, out);

    initial begin
        a = 16'h0001; b = 16'h1080;
        #10 a = 16'h0002; b = 16'h2080;
        #10 a = 16'h0003; b = 16'h3080;
        #10 a = 16'h0004; b = 16'h4080;
        #10 a = 1; b = -5;
    end

    initial begin
        $monitor("%x + %x = %x, %d + %d = %d", a, b, out, a, b, out);
    end
endmodule