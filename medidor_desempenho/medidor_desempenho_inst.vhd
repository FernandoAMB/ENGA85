	component medidor_desempenho is
		port (
			clk_clk             : in  std_logic                     := 'X'; -- clk
			clockcount_readdata : out std_logic_vector(31 downto 0);        -- readdata
			reset_reset_n       : in  std_logic                     := 'X'; -- reset_n
			sum_readdata        : out std_logic_vector(31 downto 0)         -- readdata
		);
	end component medidor_desempenho;

	u0 : component medidor_desempenho
		port map (
			clk_clk             => CONNECTED_TO_clk_clk,             --        clk.clk
			clockcount_readdata => CONNECTED_TO_clockcount_readdata, -- clockcount.readdata
			reset_reset_n       => CONNECTED_TO_reset_reset_n,       --      reset.reset_n
			sum_readdata        => CONNECTED_TO_sum_readdata         --        sum.readdata
		);

