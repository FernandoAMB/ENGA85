module Separador (seletor, entrada_32, saida_16);
input seletor;
input [31:0] entrada_32;
output [15:0] saida_16;

assign saida_16 = (seletor)? entrada_32[31:16] : entrada_32[15:0];

endmodule 