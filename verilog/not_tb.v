`include "not.v"
module Not_tb;
    reg a;
    wire out;
    Not not1(a, out);
    initial begin
        a = 0;
        #10 a = 1;
    end
    initial begin
        $monitor("a=%b, out=%b", a, out);
    end
endmodule