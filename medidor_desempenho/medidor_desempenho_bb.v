
module medidor_desempenho (
	clk_clk,
	clockcount_readdata,
	reset_reset_n,
	sum_readdata);	

	input		clk_clk;
	output	[31:0]	clockcount_readdata;
	input		reset_reset_n;
	output	[31:0]	sum_readdata;
endmodule
