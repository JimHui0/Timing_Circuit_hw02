`timescale 1ps/1fs

`define testcase 25

module testbench;

reg clk;
wire [`testcase-1:0] pwm_out;

pwm u1(
	.clk(clk),
	.pwm_out(pwm_out)
);

initial begin
    $sdf_annotate("./pwm_syn.sdf", u1);
	$fsdbDumpfile("../4.Simulation_Result/pwm_syn.fsdb");
	$fsdbDumpvars;
end

always #300 clk = ~clk;

initial begin
	clk = 0;
	#3000 $finish;
end

endmodule
