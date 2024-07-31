module altera_helloworld
(
	input  clk_i,
	output clk_o,

	input  data_i,
	output data_o
);
assign clk_o = clk_i;  // Continous assignment

endmodule