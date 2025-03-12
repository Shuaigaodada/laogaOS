`include "half-adder.v"

module HalfAdder_tb;
    reg a, b;
    wire sum, carry;
    HalfAdder halfadder1(a, b, sum, carry);

    initial begin
        a = 0; b = 0;
        #10 a = 1; b = 0;
        #10 a = 0; b = 1;
        #10 a = 1; b = 1;
    end

    initial begin
        $monitor("a=%b, b=%b, sum=%b, carry=%b", a, b, sum, carry);
    end
endmodule