`include "fulladder.v"
module FullAdder_tb;
    reg a, b, c;
    wire sum, carry;

    FullAdder adder1(a, b, c, out, carry);
    initial begin
        a = 0; b = 0; c = 0;
        #10 a = 1; b = 0; c = 0;
        #10 a = 0; b = 1; c = 0;
        #10 a = 1; b = 1; c = 0;
        #10 a = 0; b = 0; c = 1;
        #10 a = 1; b = 0; c = 1;
        #10 a = 0; b = 1; c = 1;
        #10 a = 1; b = 1; c = 1;
    end

    initial begin
        $monitor("a=%b, b=%b, c=%b, out=%b, carry=%b", a, b, c, out, carry);
    end
endmodule