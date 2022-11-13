`timescale 1ps/1fs

`define testcase 25

module pwm (
	output wire [`testcase-1:0] pwm_out,
	input wire clk
);
	wire [`testcase-1:0] net;
	
	//XL, X1, X2, X3, X4
	
	// Test 0 : INVXL -> INVXL
	INVXL I0(.A(clk), .Y(net[0]));
	INVXL I1(.A(net[0]), .Y(pwm_out[0]));

	// Test 1 : INVXL -> INVX1
	INVXL I2(.A(clk), .Y(net[1]));
	INVX1 I3(.A(net[1]), .Y(pwm_out[1]));

	// Test 2 : INVXL -> INVX2
	INVXL I4(.A(clk), .Y(net[2]));
	INVX2 I5(.A(net[2]), .Y(pwm_out[2]));

	// Test 3 : INVXL -> INVX3
	INVXL I6(.A(clk), .Y(net[3]));
	INVX3 I7(.A(net[3]), .Y(pwm_out[3]));

	// Test 4 : INVXL -> INVX4
	INVXL I8(.A(clk), .Y(net[4]));
	INVX4 I9(.A(net[4]), .Y(pwm_out[4]));

	// Test 5 : INVX1 -> INVXL
	INVX1 I10(.A(clk), .Y(net[5]));
	INVXL I11(.A(net[5]), .Y(pwm_out[5]));

	// Test 6 : INVX1 -> INVX1
	INVX1 I12(.A(clk), .Y(net[6]));
	INVX1 I13(.A(net[6]), .Y(pwm_out[6]));

	// Test 7 : INVX1 -> INVX2
	INVX1 I14(.A(clk), .Y(net[7]));
	INVX2 I15(.A(net[7]), .Y(pwm_out[7]));

	// Test 8 : INVX1 -> INVX3
	INVX1 I16(.A(clk), .Y(net[8]));
	INVX3 I17(.A(net[8]), .Y(pwm_out[8]));

	// Test 9 : INVX1 -> INVX4
	INVX1 I18(.A(clk), .Y(net[9]));
	INVX4 I19(.A(net[9]), .Y(pwm_out[9]));

	// Test 10 : INVX2 -> INVXL
	INVX2 I20(.A(clk), .Y(net[10]));
	INVXL I21(.A(net[10]), .Y(pwm_out[10]));

	// Test 11 : INVX2 -> INVX1
	INVX2 I22(.A(clk), .Y(net[11]));
	INVX1 I23(.A(net[11]), .Y(pwm_out[11]));

	// Test 12 : INVX2 -> INVX2
	INVX2 I24(.A(clk), .Y(net[12]));
	INVX2 I25(.A(net[12]), .Y(pwm_out[12]));

	// Test 13 : INVX2 -> INVX3
	INVX2 I26(.A(clk), .Y(net[13]));
	INVX3 I27(.A(net[13]), .Y(pwm_out[13]));

	// Test 14 : INVX2 -> INVX4
	INVX2 I28(.A(clk), .Y(net[14]));
	INVX4 I29(.A(net[14]), .Y(pwm_out[14]));

	// Test 15 : INVX3 -> INVXL
	INVX3 I30(.A(clk), .Y(net[15]));
	INVXL I31(.A(net[15]), .Y(pwm_out[15]));

	// Test 16 : INVX3 -> INVX1
	INVX3 I32(.A(clk), .Y(net[16]));
	INVX1 I33(.A(net[16]), .Y(pwm_out[16]));

	// Test 17 : INVX3 -> INVX2
	INVX3 I34(.A(clk), .Y(net[17]));
	INVX2 I35(.A(net[17]), .Y(pwm_out[17]));

	// Test 18 : INVX3 -> INVX3
	INVX3 I36(.A(clk), .Y(net[18]));
	INVX3 I37(.A(net[18]), .Y(pwm_out[18]));

	// Test 19 : INVX3 -> INVX4
	INVX3 I38(.A(clk), .Y(net[19]));
	INVX4 I39(.A(net[19]), .Y(pwm_out[19]));

	// Test 20 : INVX4 -> INVXL
	INVX4 I40(.A(clk), .Y(net[20]));
	INVXL I41(.A(net[20]), .Y(pwm_out[20]));

	// Test 21 : INVX4 -> INVX1
	INVX4 I42(.A(clk), .Y(net[21]));
	INVX1 I43(.A(net[21]), .Y(pwm_out[21]));

	// Test 22 : INVX4 -> INVX2
	INVX4 I44(.A(clk), .Y(net[22]));
	INVX2 I45(.A(net[22]), .Y(pwm_out[22]));

	// Test 23 : INVX4 -> INVX3
	INVX4 I46(.A(clk), .Y(net[23]));
	INVX3 I47(.A(net[23]), .Y(pwm_out[23]));

	// Test 24 : INVX4 -> INVX4
	INVX4 I48(.A(clk), .Y(net[24]));
	INVX4 I49(.A(net[24]), .Y(pwm_out[24]));
	
endmodule