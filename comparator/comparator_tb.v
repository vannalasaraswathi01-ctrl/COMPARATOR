// Testbench for 4-bit Comparator

module comparator_tb;

    reg [3:0] A;
    reg [3:0] B;

    wire A_greater_B;
    wire A_equal_B;
    wire A_less_B;

    // Instantiate comparator
    comparator uut (
        .A(A),
        .B(B),
        .A_greater_B(A_greater_B),
        .A_equal_B(A_equal_B),
        .A_less_B(A_less_B)
    );

    initial begin

        $display("A     B     A>B  A=B  A<B");
        $display("-------------------------");

        // Test 1
        A = 4'b0011;
        B = 4'b0010;
        #10;
        $display("%b   %b    %b    %b    %b",
                 A, B, A_greater_B, A_equal_B, A_less_B);

        // Test 2
        A = 4'b0010;
        B = 4'b0101;
        #10;
        $display("%b   %b    %b    %b    %b",
                 A, B, A_greater_B, A_equal_B, A_less_B);

        // Test 3
        A = 4'b0110;
        B = 4'b0110;
        #10;
        $display("%b   %b    %b    %b    %b",
                 A, B, A_greater_B, A_equal_B, A_less_B);

        // Test 4
        A = 4'b1111;
        B = 4'b0001;
        #10;
        $display("%b   %b    %b    %b    %b",
                 A, B, A_greater_B, A_equal_B, A_less_B);

        // Test 5
        A = 4'b0000;
        B = 4'b1111;
        #10;
        $display("%b   %b    %b    %b    %b",
                 A, B, A_greater_B, A_equal_B, A_less_B);

        $finish;

    end

endmodule