`include "adder_subtractor16.v"

module AdderSubtractor16_tb;
    reg signed [15:0] a, b;
    reg m;
    wire signed [15:0] out;
    wire f;
    AdderSubtractor16 adder1(a, b, m, out, f);

    initial begin
        a = 1; b = 5; m = 0;
        #10 
        a = 1; b = 5; m = 1;
    end

    initial begin
        $monitor("%d + %d = %d, f=%d", a, b, out, f);
    end
endmodule