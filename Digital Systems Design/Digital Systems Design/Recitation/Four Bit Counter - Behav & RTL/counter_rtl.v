`timescale 1ns / 1ps

module counter_rtl (
    clock,
    reset,
    enable,
    res_rtl
    );
    
    input clock,
          reset,
          enable;
          
    output [3:0] res_rtl;
    reg [3:0] res_rtl;

    reg [3:0] count_next;

always @ ( reset or // reset : count_next =0
           enable or // enable
           res_rtl ) // result
    begin
        casex ({ reset , enable })
            2 'b1x: count_next = 4'b0000;
            2 'b01: count_next = res_rtl + 4'b0001;
            default : count_next = res_rtl;
        endcase
    end

    always @ ( posedge clock )
    begin
        res_rtl <= #1 count_next;
    end
    
endmodule