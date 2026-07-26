module multi_12(a,b,pro);
input [11:0]a,b;
output [23:0] pro;

wire [10:0] w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12;
wire [10:0] w13,w14,w15,w16,w17,w18,w19,w20,w21,w22,w23,w24;
wire [14:0] csa_sum;
wire [14:0] Carry_select_adder_sum;
wire [4:0] csa_actual_carry;
wire carry_select_adder_carry;
wire csa_carry;

assign w1  = {a[0]&b[11], a[0]&b[10], a[0]&b[9], a[0]&b[8], a[0]&b[7], a[0]&b[6], a[0]&b[5], a[0]&b[4], a[0]&b[3], a[0]&b[2], a[0]&b[1]};
assign w2  = {a[1]&b[10], a[1]&b[9], a[1]&b[8], a[1]&b[7], a[1]&b[6], a[1]&b[5], a[1]&b[4], a[1]&b[3], a[1]&b[2], a[1]&b[1], a[1]&b[0]};
assign w3  = {a[2]&b[9], a[2]&b[8], a[2]&b[7], a[2]&b[6], a[2]&b[5], a[2]&b[4], a[2]&b[3], a[2]&b[2], a[2]&b[1], a[2]&b[0], 1'b0};
assign w4  = {a[3]&b[8], a[3]&b[7], a[3]&b[6], a[3]&b[5], a[3]&b[4], a[3]&b[3], a[3]&b[2], a[3]&b[1], a[3]&b[0], 1'b0, 1'b0};
assign w5  = {a[4]&b[7], a[4]&b[6], a[4]&b[5], a[4]&b[4], a[4]&b[3], a[4]&b[2], a[4]&b[1], a[4]&b[0], 1'b0, 1'b0, 1'b0};
assign w6  = {a[5]&b[6], a[5]&b[5], a[5]&b[4], a[5]&b[3], a[5]&b[2], a[5]&b[1], a[5]&b[0], 1'b0, 1'b0, 1'b0, 1'b0};
assign w7  = {a[6]&b[5], a[6]&b[4], a[6]&b[3], a[6]&b[2], a[6]&b[1], a[6]&b[0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0};
assign w8  = {a[7]&b[4], a[7]&b[3], a[7]&b[2], a[7]&b[1], a[7]&b[0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0};
assign w9  = {a[8]&b[3], a[8]&b[2], a[8]&b[1], a[8]&b[0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0};
assign w10 = {a[9]&b[2], a[9]&b[1], a[9]&b[0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0};
assign w11 = {a[10]&b[1], a[10]&b[0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0};
assign w12 = {a[11]&b[0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0};

assign w13 = {1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0, a[1]&b[11]};
assign w14 = {1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0, a[2]&b[11], a[2]&b[10]};
assign w15 = {1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0, a[3]&b[11], a[3]&b[10], a[3]&b[9]};
assign w16 = {1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0, a[4]&b[11], a[4]&b[10], a[4]&b[9], a[4]&b[8]};
assign w17 = {1'b0,1'b0,1'b0,1'b0,1'b0,1'b0, a[5]&b[11], a[5]&b[10], a[5]&b[9], a[5]&b[8], a[5]&b[7]};
assign w18 = {1'b0,1'b0,1'b0,1'b0,1'b0, a[6]&b[11], a[6]&b[10], a[6]&b[9], a[6]&b[8], a[6]&b[7], a[6]&b[6]};
assign w19 = {1'b0,1'b0,1'b0,1'b0, a[7]&b[11], a[7]&b[10], a[7]&b[9], a[7]&b[8], a[7]&b[7], a[7]&b[6], a[7]&b[5]};
assign w20 = {1'b0,1'b0,1'b0, a[8]&b[11], a[8]&b[10], a[8]&b[9], a[8]&b[8], a[8]&b[7], a[8]&b[6], a[8]&b[5], a[8]&b[4]};
assign w21 = {1'b0,1'b0, a[9]&b[11], a[9]&b[10], a[9]&b[9], a[9]&b[8], a[9]&b[7], a[9]&b[6], a[9]&b[5], a[9]&b[4], a[9]&b[3]};
assign w22 = {1'b0, a[10]&b[11], a[10]&b[10], a[10]&b[9], a[10]&b[8], a[10]&b[7], a[10]&b[6], a[10]&b[5], a[10]&b[4], a[10]&b[3], a[10]&b[2]};
assign w23 = {a[11]&b[11], a[11]&b[10], a[11]&b[9], a[11]&b[8], a[11]&b[7], a[11]&b[6], a[11]&b[5], a[11]&b[4], a[11]&b[3], a[11]&b[2], a[11]&b[1]};

csa_12 adder1(w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,csa_sum,csa_carry);
assign csa_actual_carry = {csa_carry,csa_sum[14:11]};
assign w24 = { 6'b000000, csa_actual_carry};
carry_select_adder_11bit adder2(w13,w14,w15,w16,w17,w18,w19,w20,w21,w22,w23,w24,1'b0,Carry_select_adder_sum,carry_select_adder_carry);
assign pro[0] = a[0]&b[0];
assign pro[11:1] = csa_sum[10:0];
assign pro[23:12] = Carry_select_adder_sum[12:0];
endmodule

module csa_12 #(parameter BitSize=11) (a,b,c,d,e,f,g,h,i,j,k,l,sum,carry);
input[BitSize-1:0] a,b,c,d,e,f,g,h,i,j,k,l;
wire [BitSize-1:0] s1,s2,s3,s4,s5;
wire [BitSize:0] c1,c2,c3,c4,c5,s6,s7,s8;
wire [BitSize+1:0] c6,c7,c8,s9;
wire [BitSize+2:0] c9,s10;
wire [BitSize+3:0] c10; 
output[BitSize+3:0] sum;
output carry; 

csa_11 csa1(a,b,c,s1,c1);
csa_11 csa2(d,e,f,s2,c2);
csa_11 csa3(g,h,i,s3,c3);
csa_11 csa4(j,k,l,s4,c4);
csa_11 csa5(s1,s2,s3,s5,c5);
csa_12b csa6(c1,c2,c3,s6,c6);
csa_12b csa7(c5,s6,c4,s7,c7);
csa_12b csa8({1'b0,s4},{1'b0,s5},s7,s8,c8);
csa_13 csa9(c6,c7,c8,s9,c9);
csa_14 csa10({2'b0,s8},{1'b0,s9},c9,s10,c10);
RCA  last({1'b0,s10},c10,sum,carry);
endmodule

module csa_11 #(parameter BitSize =11) (a,b,c,sum,carry);
input [BitSize-1:0] a,b,c;
output [BitSize-1:0] sum;
output [BitSize:0] carry;
assign carry[0] = 1'b0;
FA fa0(a[0],b[0],c[0],sum[0],carry[1]);
FA fa1(a[1],b[1],c[1],sum[1],carry[2]);
FA fa2(a[2],b[2],c[2],sum[2],carry[3]);
FA fa3(a[3],b[3],c[3],sum[3],carry[4]);
FA fa4(a[4],b[4],c[4],sum[4],carry[5]);
FA fa5(a[5],b[5],c[5],sum[5],carry[6]);
FA fa6(a[6],b[6],c[6],sum[6],carry[7]);
FA fa7(a[7],b[7],c[7],sum[7],carry[8]);
FA fa8(a[8],b[8],c[8],sum[8],carry[9]);
FA fa9(a[9],b[9],c[9],sum[9],carry[10]);
FA fa10(a[10],b[10],c[10],sum[10],carry[11]);
endmodule

module csa_12b #(parameter BitSize =12) (a,b,c,sum,carry);
input [BitSize-1:0] a,b,c;
output [BitSize-1:0] sum;
output [BitSize:0] carry;
assign carry[0] = 1'b0;
FA fa0(a[0],b[0],c[0],sum[0],carry[1]);
FA fa1(a[1],b[1],c[1],sum[1],carry[2]);
FA fa2(a[2],b[2],c[2],sum[2],carry[3]);
FA fa3(a[3],b[3],c[3],sum[3],carry[4]);
FA fa4(a[4],b[4],c[4],sum[4],carry[5]);
FA fa5(a[5],b[5],c[5],sum[5],carry[6]);
FA fa6(a[6],b[6],c[6],sum[6],carry[7]);
FA fa7(a[7],b[7],c[7],sum[7],carry[8]);
FA fa8(a[8],b[8],c[8],sum[8],carry[9]);
FA fa9(a[9],b[9],c[9],sum[9],carry[10]);
FA fa10(a[10],b[10],c[10],sum[10],carry[11]);
FA fa11(a[11],b[11],c[11],sum[11],carry[12]);
endmodule

module csa_13 #(parameter BitSize =13) (a,b,c,sum,carry);
input [BitSize-1:0] a,b,c;
output [BitSize-1:0] sum;
output [BitSize:0] carry;
assign carry[0] = 1'b0;
FA fa0(a[0],b[0],c[0],sum[0],carry[1]);
FA fa1(a[1],b[1],c[1],sum[1],carry[2]);
FA fa2(a[2],b[2],c[2],sum[2],carry[3]);
FA fa3(a[3],b[3],c[3],sum[3],carry[4]);
FA fa4(a[4],b[4],c[4],sum[4],carry[5]);
FA fa5(a[5],b[5],c[5],sum[5],carry[6]);
FA fa6(a[6],b[6],c[6],sum[6],carry[7]);
FA fa7(a[7],b[7],c[7],sum[7],carry[8]);
FA fa8(a[8],b[8],c[8],sum[8],carry[9]);
FA fa9(a[9],b[9],c[9],sum[9],carry[10]);
FA fa10(a[10],b[10],c[10],sum[10],carry[11]);
FA fa11(a[11],b[11],c[11],sum[11],carry[12]);
FA fa12(a[12],b[12],c[12],sum[12],carry[13]);
endmodule

module csa_14 #(parameter BitSize =14) (a,b,c,sum,carry);
input [BitSize-1:0] a,b,c;
output [BitSize-1:0] sum;
output [BitSize:0] carry;
assign carry[0] = 1'b0;
FA fa0(a[0],b[0],c[0],sum[0],carry[1]);
FA fa1(a[1],b[1],c[1],sum[1],carry[2]);
FA fa2(a[2],b[2],c[2],sum[2],carry[3]);
FA fa3(a[3],b[3],c[3],sum[3],carry[4]);
FA fa4(a[4],b[4],c[4],sum[4],carry[5]);
FA fa5(a[5],b[5],c[5],sum[5],carry[6]);
FA fa6(a[6],b[6],c[6],sum[6],carry[7]);
FA fa7(a[7],b[7],c[7],sum[7],carry[8]);
FA fa8(a[8],b[8],c[8],sum[8],carry[9]);
FA fa9(a[9],b[9],c[9],sum[9],carry[10]);
FA fa10(a[10],b[10],c[10],sum[10],carry[11]);
FA fa11(a[11],b[11],c[11],sum[11],carry[12]);
FA fa12(a[12],b[12],c[12],sum[12],carry[13]);
FA fa13(a[13],b[13],c[13],sum[13],carry[14]);
endmodule

module FA(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
assign sum = a^b^c;
assign carry = (a&b)||(b&c)||(c&a);
endmodule

module RCA #(parameter BitSize=15) (a,b,sum,carry_out);
input [BitSize-1:0] a,b;
output [BitSize-1:0] sum;
output carry_out;
wire [BitSize:0] c;
assign c[0] = 1'b0;

FA fa0(a[0],b[0],c[0],sum[0],c[1]);
FA fa1(a[1],b[1],c[1],sum[1],c[2]);
FA fa2(a[2],b[2],c[2],sum[2],c[3]);
FA fa3(a[3],b[3],c[3],sum[3],c[4]);
FA fa4(a[4],b[4],c[4],sum[4],c[5]);
FA fa5(a[5],b[5],c[5],sum[5],c[6]);
FA fa6(a[6],b[6],c[6],sum[6],c[7]);
FA fa7(a[7],b[7],c[7],sum[7],c[8]);
FA fa8(a[8],b[8],c[8],sum[8],c[9]);
FA fa9(a[9],b[9],c[9],sum[9],c[10]);
FA fa10(a[10],b[10],c[10],sum[10],c[11]);
FA fa11(a[11],b[11],c[11],sum[11],c[12]);
FA fa12(a[12],b[12],c[12],sum[12],c[13]);
FA fa13(a[13],b[13],c[13],sum[13],c[14]);
FA fa14(a[14],b[14],c[14],sum[14],c[15]);

assign carry_out = c[15];
endmodule

module carry_select_adder_11bit (a,b,c,d,e,f,g,h,i,j,k,l,cin,sum,cout);
	 input [10:0] a, b, c, d, e, f, g, h, i, j, k, l ;
    input cin;                                          
    output [14:0] sum;
    output cout;                                

    wire [11:0] sum_level1_0, sum_level1_1, sum_level1_2, sum_level1_3, sum_level1_4, sum_level1_5;
    wire [12:0] sum_level2_0, sum_level2_1, sum_level2_2;
    wire [13:0] sum_level3_0, sum_level3_1;
    wire [14:0] sum_final;
    
    // Level 1: Add pairs of 11-bit operands to get 12-bit results
    carry_select_adder_12bit adder_level1_0 (.a({1'b0, a}), .b({1'b0, b}), .cin(1'b0), .sum(sum_level1_0), .cout());
    carry_select_adder_12bit adder_level1_1 (.a({1'b0, c}), .b({1'b0, d}), .cin(1'b0), .sum(sum_level1_1), .cout());
    carry_select_adder_12bit adder_level1_2 (.a({1'b0, e}), .b({1'b0, f}), .cin(1'b0), .sum(sum_level1_2), .cout());
    carry_select_adder_12bit adder_level1_3 (.a({1'b0, g}), .b({1'b0, h}), .cin(1'b0), .sum(sum_level1_3), .cout());
    carry_select_adder_12bit adder_level1_4 (.a({1'b0, i}), .b({1'b0, j}), .cin(1'b0), .sum(sum_level1_4), .cout());
    carry_select_adder_12bit adder_level1_5 (.a({1'b0, k}), .b({1'b0, l}), .cin(1'b0), .sum(sum_level1_5), .cout());
    
    // Level 2: Add pairs of 12-bit results to get 13-bit results
    carry_select_adder_13bit adder_level2_0 (.a({1'b0, sum_level1_0}), .b({1'b0, sum_level1_1}), .cin(1'b0), .sum(sum_level2_0), .cout());
    carry_select_adder_13bit adder_level2_1 (.a({1'b0, sum_level1_2}), .b({1'b0, sum_level1_3}), .cin(1'b0), .sum(sum_level2_1), .cout());
    carry_select_adder_13bit adder_level2_2 (.a({1'b0, sum_level1_4}), .b({1'b0, sum_level1_5}), .cin(1'b0), .sum(sum_level2_2), .cout());
    
    // Level 3: Add first two 13-bit results to get 14-bit result
    carry_select_adder_14bit adder_level3_0 (.a({1'b0, sum_level2_0}), .b({1'b0, sum_level2_1}), .cin(1'b0), .sum(sum_level3_0), .cout());
    
    // Level 3: Extend third 13-bit result to 14-bit
    assign sum_level3_1 = {1'b0, sum_level2_2};
    
    // Final level: Add the two 14-bit results to get final 15-bit result
    carry_select_adder_15bit adder_final (.a({1'b0, sum_level3_0}), .b({1'b0, sum_level3_1}), .cin(cin), .sum(sum_final), .cout(cout));
    
    assign sum = sum_final;

endmodule

// 12-bit Carry Select Adder
module carry_select_adder_12bit (a,b,cin,sum,cout);
	 input [11:0] a, b;
    input cin;
    output [11:0] sum;
    output cout;

    wire c1, c2, c3;
    wire [2:0] sum0;
    wire [2:0] sum1_0, sum1_1, sum2_0, sum2_1;
    wire [2:0] sum3_0, sum3_1;
    wire cout1_0, cout1_1, cout2_0, cout2_1, cout3_0, cout3_1;

    // Block 0: bits 0-2
    ripple_carry_adder_3bit block0 (.a(a[2:0]), .b(b[2:0]), .cin(cin), .sum(sum0), .cout(c1));
    
    // Block 1: bits 3-5 (carry select)
    ripple_carry_adder_3bit block1_0 (.a(a[5:3]), .b(b[5:3]), .cin(1'b0), .sum(sum1_0), .cout(cout1_0));
    ripple_carry_adder_3bit block1_1 (.a(a[5:3]), .b(b[5:3]), .cin(1'b1), .sum(sum1_1), .cout(cout1_1));
    
    // Block 2: bits 6-8 (carry select)
    ripple_carry_adder_3bit block2_0 (.a(a[8:6]), .b(b[8:6]), .cin(1'b0), .sum(sum2_0), .cout(cout2_0));
    ripple_carry_adder_3bit block2_1 (.a(a[8:6]), .b(b[8:6]), .cin(1'b1), .sum(sum2_1), .cout(cout2_1));
    
    // Block 3: bits 9-11 (carry select)
    ripple_carry_adder_3bit block3_0 (.a(a[11:9]), .b(b[11:9]), .cin(1'b0), .sum(sum3_0), .cout(cout3_0));
    ripple_carry_adder_3bit block3_1 (.a(a[11:9]), .b(b[11:9]), .cin(1'b1), .sum(sum3_1), .cout(cout3_1));
    
    // Select outputs based on carry
    assign sum[2:0] = sum0;
    assign sum[5:3] = c1 ? sum1_1 : sum1_0;
    assign c2 = c1 ? cout1_1 : cout1_0;
    assign sum[8:6] = c2 ? sum2_1 : sum2_0;
    assign c3 = c2 ? cout2_1 : cout2_0;
    assign sum[11:9] = c3 ? sum3_1 : sum3_0;
    assign cout = c3 ? cout3_1 : cout3_0;
endmodule

// 13-bit Carry Select Adder
module carry_select_adder_13bit (a,b,cin,sum,cout);
    input [12:0] a, b;
    input cin;
    output [12:0] sum;
    output cout;

    wire c1, c2, c3, c4;
    wire [2:0] sum0, sum1_0, sum1_1, sum2_0, sum2_1, sum3_0, sum3_1;
    wire [0:0] sum4_0, sum4_1;
    wire cout1_0, cout1_1, cout2_0, cout2_1, cout3_0, cout3_1, cout4_0, cout4_1;

    ripple_carry_adder_3bit block0 (.a(a[2:0]), .b(b[2:0]), .cin(cin), .sum(sum0), .cout(c1));
    ripple_carry_adder_3bit block1_0 (.a(a[5:3]), .b(b[5:3]), .cin(1'b0), .sum(sum1_0), .cout(cout1_0));
    ripple_carry_adder_3bit block1_1 (.a(a[5:3]), .b(b[5:3]), .cin(1'b1), .sum(sum1_1), .cout(cout1_1));
    ripple_carry_adder_3bit block2_0 (.a(a[8:6]), .b(b[8:6]), .cin(1'b0), .sum(sum2_0), .cout(cout2_0));
    ripple_carry_adder_3bit block2_1 (.a(a[8:6]), .b(b[8:6]), .cin(1'b1), .sum(sum2_1), .cout(cout2_1));
    ripple_carry_adder_3bit block3_0 (.a(a[11:9]), .b(b[11:9]), .cin(1'b0), .sum(sum3_0), .cout(cout3_0));
    ripple_carry_adder_3bit block3_1 (.a(a[11:9]), .b(b[11:9]), .cin(1'b1), .sum(sum3_1), .cout(cout3_1));
    
    // Single bit adder for bit 12
    full_adder block4_0 (.a(a[12]), .b(b[12]), .cin(1'b0), .sum(sum4_0), .cout(cout4_0));
    full_adder block4_1 (.a(a[12]), .b(b[12]), .cin(1'b1), .sum(sum4_1), .cout(cout4_1));
    
    assign sum[2:0] = sum0;
    assign sum[5:3] = c1 ? sum1_1 : sum1_0;
    assign c2 = c1 ? cout1_1 : cout1_0;
    assign sum[8:6] = c2 ? sum2_1 : sum2_0;
    assign c3 = c2 ? cout2_1 : cout2_0;
    assign sum[11:9] = c3 ? sum3_1 : sum3_0;
    assign c4 = c3 ? cout3_1 : cout3_0;
    assign sum[12] = c4 ? sum4_1 : sum4_0;
    assign cout = c4 ? cout4_1 : cout4_0;
endmodule

// 14-bit Carry Select Adder
module carry_select_adder_14bit (
    input [13:0] a, b,
    input cin,
    output [13:0] sum,
    output cout
);
    wire c1, c2, c3, c4;
    wire [2:0] sum0, sum1_0, sum1_1, sum2_0, sum2_1, sum3_0, sum3_1;
    wire [1:0] sum4_0, sum4_1;
    wire cout1_0, cout1_1, cout2_0, cout2_1, cout3_0, cout3_1, cout4_0, cout4_1;

    ripple_carry_adder_3bit block0 (.a(a[2:0]), .b(b[2:0]), .cin(cin), .sum(sum0), .cout(c1));
    ripple_carry_adder_3bit block1_0 (.a(a[5:3]), .b(b[5:3]), .cin(1'b0), .sum(sum1_0), .cout(cout1_0));
    ripple_carry_adder_3bit block1_1 (.a(a[5:3]), .b(b[5:3]), .cin(1'b1), .sum(sum1_1), .cout(cout1_1));
    ripple_carry_adder_3bit block2_0 (.a(a[8:6]), .b(b[8:6]), .cin(1'b0), .sum(sum2_0), .cout(cout2_0));
    ripple_carry_adder_3bit block2_1 (.a(a[8:6]), .b(b[8:6]), .cin(1'b1), .sum(sum2_1), .cout(cout2_1));
    ripple_carry_adder_3bit block3_0 (.a(a[11:9]), .b(b[11:9]), .cin(1'b0), .sum(sum3_0), .cout(cout3_0));
    ripple_carry_adder_3bit block3_1 (.a(a[11:9]), .b(b[11:9]), .cin(1'b1), .sum(sum3_1), .cout(cout3_1));
    ripple_carry_adder_2bit block4_0 (.a(a[13:12]), .b(b[13:12]), .cin(1'b0), .sum(sum4_0), .cout(cout4_0));
    ripple_carry_adder_2bit block4_1 (.a(a[13:12]), .b(b[13:12]), .cin(1'b1), .sum(sum4_1), .cout(cout4_1));
    
    assign sum[2:0] = sum0;
    assign sum[5:3] = c1 ? sum1_1 : sum1_0;
    assign c2 = c1 ? cout1_1 : cout1_0;
    assign sum[8:6] = c2 ? sum2_1 : sum2_0;
    assign c3 = c2 ? cout2_1 : cout2_0;
    assign sum[11:9] = c3 ? sum3_1 : sum3_0;
    assign c4 = c3 ? cout3_1 : cout3_0;
    assign sum[13:12] = c4 ? sum4_1 : sum4_0;
    assign cout = c4 ? cout4_1 : cout4_0;
endmodule

// 15-bit Carry Select Adder
module carry_select_adder_15bit (
    input [14:0] a, b,
    input cin,
    output [14:0] sum,
    output cout
);
    wire c1, c2, c3, c4, c5;
    wire [2:0] sum0, sum1_0, sum1_1, sum2_0, sum2_1, sum3_0, sum3_1, sum4_0, sum4_1;
    wire [2:0] sum5_0, sum5_1;
    wire cout1_0, cout1_1, cout2_0, cout2_1, cout3_0, cout3_1, cout4_0, cout4_1, cout5_0, cout5_1;

    ripple_carry_adder_3bit block0 (.a(a[2:0]), .b(b[2:0]), .cin(cin), .sum(sum0), .cout(c1));
    ripple_carry_adder_3bit block1_0 (.a(a[5:3]), .b(b[5:3]), .cin(1'b0), .sum(sum1_0), .cout(cout1_0));
    ripple_carry_adder_3bit block1_1 (.a(a[5:3]), .b(b[5:3]), .cin(1'b1), .sum(sum1_1), .cout(cout1_1));
    ripple_carry_adder_3bit block2_0 (.a(a[8:6]), .b(b[8:6]), .cin(1'b0), .sum(sum2_0), .cout(cout2_0));
    ripple_carry_adder_3bit block2_1 (.a(a[8:6]), .b(b[8:6]), .cin(1'b1), .sum(sum2_1), .cout(cout2_1));
    ripple_carry_adder_3bit block3_0 (.a(a[11:9]), .b(b[11:9]), .cin(1'b0), .sum(sum3_0), .cout(cout3_0));
    ripple_carry_adder_3bit block3_1 (.a(a[11:9]), .b(b[11:9]), .cin(1'b1), .sum(sum3_1), .cout(cout3_1));
    ripple_carry_adder_3bit block4_0 (.a({1'b0, a[13:12]}), .b({1'b0, b[13:12]}), .cin(1'b0), .sum(sum4_0), .cout(cout4_0));
    ripple_carry_adder_3bit block4_1 (.a({1'b0, a[13:12]}), .b({1'b0, b[13:12]}), .cin(1'b1), .sum(sum4_1), .cout(cout4_1));
    
    // Single bit for bit 14
    full_adder block5_0 (.a(a[14]), .b(b[14]), .cin(1'b0), .sum(sum5_0[0]), .cout(cout5_0));
    full_adder block5_1 (.a(a[14]), .b(b[14]), .cin(1'b1), .sum(sum5_1[0]), .cout(cout5_1));
    assign sum5_0[2:1] = 2'b00;
    assign sum5_1[2:1] = 2'b00;
    
    assign sum[2:0] = sum0;
    assign sum[5:3] = c1 ? sum1_1 : sum1_0;
    assign c2 = c1 ? cout1_1 : cout1_0;
    assign sum[8:6] = c2 ? sum2_1 : sum2_0;
    assign c3 = c2 ? cout2_1 : cout2_0;
    assign sum[11:9] = c3 ? sum3_1 : sum3_0;
    assign c4 = c3 ? cout3_1 : cout3_0;
    assign sum[13:12] = c4 ? sum4_1[1:0] : sum4_0[1:0];
    assign c5 = c4 ? cout4_1 : cout4_0;
    assign sum[14] = c5 ? sum5_1[0] : sum5_0[0];
    assign cout = c5 ? cout5_1 : cout5_0;
endmodule

module ripple_carry_adder_3bit (
    input [2:0] a, b,
    input cin,
    output [2:0] sum,
    output cout
);
    wire c1, c2;
    full_adder fa0 (.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(c1));
    full_adder fa1 (.a(a[1]), .b(b[1]), .cin(c1), .sum(sum[1]), .cout(c2));
    full_adder fa2 (.a(a[2]), .b(b[2]), .cin(c2), .sum(sum[2]), .cout(cout));
endmodule

module ripple_carry_adder_2bit (
    input [1:0] a, b,
    input cin,
    output [1:0] sum,
    output cout
);
    wire c1;
    full_adder fa0 (.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(c1));
    full_adder fa1 (.a(a[1]), .b(b[1]), .cin(c1), .sum(sum[1]), .cout(cout));
endmodule

module full_adder (
    input a, b, cin,
    output sum, cout
);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);
endmodule
