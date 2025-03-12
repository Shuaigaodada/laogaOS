`include "nor.v"
module Nor_tb;
    reg a, b;
    wire out;

    Nor nor1(a, b, out);
    initial begin
        a = 0; b = 0;
        #10 a = 1; b = 0;
        #10 a = 0; b = 1;
        #10 a = 1; b = 1;
    end
    initial begin
        $monitor("a=%b, b=%b, out=%b", a, b, out);
    end
endmodule