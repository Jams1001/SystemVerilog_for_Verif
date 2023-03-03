`timescale 1ns/1ps

module clk();
   reg CLK;
   
	always	#111 CLK <= ~CLK;		

    initial begin
    CLK <= 0;
    end

    initial begin
    $dumpfile ("resultados.vcd");
    $dumpvars;
    #300

    $finish;
    end

endmodule