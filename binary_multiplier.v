module binary_multiplier (
    input [3:0] A,         // 4-bit input A
    input [3:0] B,         // 4-bit input B
    output [7:0] Product   // 8-bit output Product
);

    // Internal wires for partial products
    wire [3:0] p0, p1, p2, p3;

    // Generate partial products
    assign p0 = A[0] ? B : 4'b0000;   // Partial product for A[0]
    assign p1 = A[1] ? (B << 1) : 4'b0000; // Partial product for A[1]
    assign p2 = A[2] ? (B << 2) : 4'b0000; // Partial product for A[2]
    assign p3 = A[3] ? (B << 3) : 4'b0000; // Partial product for A[3]

    // Sum partial products to get the final product
    assign Product = p0 + p1 + p2 + p3;

endmodule
