`timescale 1ns/1ps

// Define the module named fifo_non_fsm with specified input and output ports
module fifo_non_fsm(
    Data_out,
    stack_full,
    stack_empty,
    Data_in,
    write_to_stack,
    read_from_stack,
    clk,
    rst
);

    // Parameters defining the width and height of the stack, and pointer width
    parameter stack_width = 8;
    parameter stack_height = 32;
    parameter stack_ptr_width = 5;
    
    // Output ports
    output [stack_width-1:0] Data_out;
    output stack_full, stack_empty;
    
    // Input ports
    input [stack_width-1:0] Data_in;
    input write_to_stack, read_from_stack, clk, rst;
    
    // Registers for read and write pointers, and pointer gap
    reg [stack_ptr_width-1:0] read_ptr, write_ptr;
    reg [stack_ptr_width:0] ptr_gap;
    
    // Register to hold data read from the stack
    reg [stack_width-1:0] Data_out;
    
    // Memory array representing the stack
    reg [stack_width-1:0] stack [stack_height-1:0];
    
    // Check if stack is full and empty
    assign stack_full = (ptr_gap == stack_height);
    assign stack_empty = (ptr_gap == 0);
    
    // Always block triggered on positive edge of clock or reset signal
    always@(posedge clk or posedge rst)
    if(rst) 
    begin
        // Reset: Initialize data out, read pointer, write pointer, and pointer gap
        Data_out <= 0;
        read_ptr <= 0;
        write_ptr <= 0;
        ptr_gap <= 0;
    end
    else if (write_to_stack && (!stack_full) && (!read_from_stack))
    begin
        // Write data into the stack if it's not full and not being read
        stack[write_ptr] <= Data_in;
        write_ptr <= write_ptr + 1;
        ptr_gap <= ptr_gap + 1;
    end
    else if ((!write_to_stack) && (!stack_empty) && read_from_stack)
    begin
        // Read data from the stack if it's not empty and being read
        Data_out <= stack[read_ptr];
        read_ptr <= read_ptr + 1;
        ptr_gap <= ptr_gap - 1;
    end
    else if (write_to_stack && read_from_stack && stack_empty)
    begin 
        // Write data into the stack if it's empty and being read and written simultaneously
        stack[write_ptr] <= Data_in;
        write_ptr <= write_ptr + 1;
        ptr_gap <= ptr_gap + 1;
    end
    else if(write_to_stack && read_from_stack && stack_full)
    begin
        // Read data from the stack if it's full and being read and written simultaneously
        Data_out <= stack[read_ptr];
        read_ptr <= read_ptr + 1;
        ptr_gap <= ptr_gap - 1;
    end
    else if(write_to_stack && read_from_stack && (!stack_full) && (!stack_empty))
    begin
        // Read data from the stack and write new data simultaneously if it's not full or empty
        Data_out <= stack[read_ptr];
        stack[write_ptr] <= Data_in;
        read_ptr <= read_ptr + 1;
        write_ptr <= write_ptr + 1;
    end
endmodule
