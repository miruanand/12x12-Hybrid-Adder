// Testbench for multi_12 (12x12 Hybrid Adder Multiplier - grouped version)
`timescale 1ns/1ps

module tb_multiplier_grouped;

    reg  [11:0] a, b;
    wire [23:0] pro;

    multi_12 uut (
        .a(a),
        .b(b),
        .pro(pro)
    );

    task check(input [11:0] ta, input [11:0] tb);
        begin
            a = ta;
            b = tb;
            #10;
            if (pro !== (ta * tb))
                $display("FAIL: %0d x %0d = %0d (expected %0d)", ta, tb, pro, ta*tb);
            else
                $display("PASS: %0d x %0d = %0d", ta, tb, pro);
        end
    endtask

    initial begin
        check(12'd0,    12'd0);
        check(12'd1,    12'd1);
        check(12'd4095, 12'd4095);
        check(12'd123,  12'd45);
        check(12'd2048, 12'd2);
        check(12'd3000, 12'd1500);
        $finish;
    end

endmodule
