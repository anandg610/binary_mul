module binary_multiplier_tb;

    // Inputs
    reg [3:0] A;
    reg [3:0] B;

    // Outputs
    wire [7:0] Product;

    // Instantiate the binary multiplier
    binary_multiplier uut (
        .A(A),
        .B(B),
        .Product(Product)
    );

    // Testbench procedure
    initial begin
        // Initialize inputs
        A = 4'b0000;
        B = 4'b0000;

        // Display header
        $display("A     B     | Product");
        $display("---------------------");

        // Test case 1
        A = 4'b0011; B = 4'b0101; // 3 * 5
        #10;
        $display("%b  %b  | %b", A, B, Product);

        // Test case 2
        A = 4'b1111; B = 4'b0011; // 15 * 3
        #10;
        $display("%b  %b  | %b", A, B, Product);

        // Test case 3
        A = 4'b1010; B = 4'b0100; // 10 * 4
        #10;
        $display("%b  %b  | %b", A, B, Product);

        // Test case 4
        A = 4'b0110; B = 4'b0110; // 6 * 6
        #10;
        $display("%b  %b  | %b", A, B, Product);

        // Test case 5
        A = 4'b0001; B = 4'b1111; // 1 * 15
        #10;
        $display("%b  %b  | %b", A, B, Product);

        // Test case 6
        A = 4'b0101; B = 4'b0010; // 5 * 2
        #10;
        $display("%b  %b  | %b", A, B, Product);

        // Test case 7
        A = 4'b1100; B = 4'b0011; // 12 * 3
        #10;
        $display("%b  %b  | %b", A, B, Product);

        // Test case 8
        A = 4'b1001; B = 4'b0101; // 9 * 5
        #10;
        $display("%b  %b  | %b", A, B, Product);

        // Finish simulation
        $finish;
    end

endmodule
