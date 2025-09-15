// Code your testbench here
// or browse Examples
`timescale 1ns / 1ps

`include "four_bit_counter.v"
`include "counter_rtl.v"

module counter4bit_testbench;

    
    reg clk, reset, enable;
    wire [3:0] count_rtl, count_behavioral;

    // Instantiate RTL Counter
    counter_rtl rtl_counter (
        .clock(clk),
        .reset(reset),
        .enable(enable),
        .res_rtl(count_rtl)
    );

    // Instantiate Behavioral Counter
    four_bit_counter behavioral_counter (
        .clock(clk),
        .reset(reset),
        .enable(enable),
        .res_behav(count_behavioral)
    );

    // Clock generation
    always #10 clk = ~clk; // Generate a clock with a period of 20ns

    // Test stimulus
    initial begin
        $dumpfile("dump.vcd"); 
        $dumpvars;
        // Initialize signals
        clk = 0;
        reset = 0;
        enable = 0;

        // Reset the counters
        #15 reset = 1;
        #20 reset = 0;

        // Enable the counters and let them run
        #30 enable = 1;

        // Run for a certain period to observe behavior
        #200;

        // Finish the simulation
        $finish;
    end

    // Compare outputs and report
    always @(posedge clk) begin
        if (count_rtl !== count_behavioral) begin
            $display("Mismatch detected at time %t: RTL=%d, Behavioral=%d", 
                     $time, count_rtl, count_behavioral);
            $finish;
        end
    end

    initial begin
        $monitor("Time: %t, Reset: %b, Enable: %b, RTL_Count: %d, Behavioral_Count: %d", 
                 $time, reset, enable, count_rtl, count_behavioral);
    end

endmodule