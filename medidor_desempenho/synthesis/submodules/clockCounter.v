module clockCounter(input clock, input reset_n, input read, input write, input[31:0] writedata, output reg [31:0] readdata, output [31:0] extern_count);

	reg paused;
	
	
	always @ (negedge clock) begin
		if (!reset_n) begin
			readdata <= 0;
			paused <= 1; //estado inicial pausado
		end
		else begin
		
		
			if (write == 1) begin
				if (writedata == 32'b0) begin
					readdata <= 0;
					paused <= 1; //quando resetar, pausa
				end
				else if (writedata == 32'b1) begin //escrever 1 para pausar
					paused <= ~paused;
				end
			end
			else if (paused == 0) begin
				readdata <= readdata + 1;
			end
			
		end
	end
	
	assign extern_count = readdata;


endmodule
