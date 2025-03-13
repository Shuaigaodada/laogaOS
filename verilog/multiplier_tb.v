`include "multiplier.v"

module Multiplier_tb;
    reg [3:0] a, b;
    wire [7:0] out;
    Multiplier multiplier1(a, b, out);

    initial begin
        a = 4'b1001; b = 4'b0011;
        #10;
        $display("%b * %b = %b", a, b, out);
    end

    initial begin
        $monitor("%b * %b = %b", a, b, out);
    end
endmodule