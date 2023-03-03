r: clk.v
	iverilog -o salida clk.v
	vvp salida
	gtkwave resultados.vcd
	rm -rf salida resultados.vcd
