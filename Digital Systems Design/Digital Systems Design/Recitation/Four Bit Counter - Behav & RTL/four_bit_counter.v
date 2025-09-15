`timescale 1ns / 1ps

module four_bit_counter (clock, 
    reset, 
    enable, 
    res_behav);

    input clock, 
        reset, 
        enable;

    output [3:0] res_behav;
    reg [3:0] res_behav;

    always @ (posedge clock or posedge reset)
    begin
        if (reset)
        begin
            res_behav <= 4'b0000;
        end
        else if (enable) 
        begin
            res_behav <= res_behav + 1;
        end
    end

endmodule


