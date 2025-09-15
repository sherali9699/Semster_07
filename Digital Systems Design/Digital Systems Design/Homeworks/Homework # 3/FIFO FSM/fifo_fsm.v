// Set the timescale for simulation
`timescale 1ns/1ps

// Define the FIFO FSM module
module fifo_fsm(Data_out,
                stack_full, 
                stack_empty,
                Data_in,
                write_to_stack,
                read_from_stack,
                clk,
                rst);
  				
  				// Parameters defining the width, height, and pointer width of the stack
  				parameter stack_width = 8;
                parameter stack_height = 32;
                parameter stack_ptr_width = 5;

  				// Output registers for data out and stack status
  				output reg [stack_width-1:0] Data_out;
  				output stack_full,stack_empty;
  
  				// Input ports for data in, write and read signals, clock, and reset
  				input [stack_width-1:0] Data_in;
  				input write_to_stack, read_from_stack,clk,rst;
  
  				// Define states of the FSM
  				parameter S_reset = 0;
  				parameter S_idle = 1;
  				parameter S_read = 2;
  				parameter S_write = 3;
  
  				// Registers for FSM state and next state
  				reg [2:0] state,next_state;
  
  				// Registers for read and write pointers, and pointer gap
  				reg [stack_ptr_width-1:0] read_ptr, write_ptr;
                reg [stack_ptr_width:0] ptr_gap;
  
  				// Memory array representing the stack
                reg [stack_width-1:0] stack [stack_height-1:0];
  
  				// Calculate stack_full and stack_empty signals
  				assign stack_full = (ptr_gap == stack_height);
  				assign stack_empty = (ptr_gap == 0);
  
  				// Sequential logic for FSM state transition
  				always@(posedge clk)
                  if(rst == 1) state <= S_reset; 
  				  else state <= next_state;
  
  				// Combinational logic for FSM behavior based on current state and inputs
  				always@(state or write_to_stack or read_from_stack or Data_in)   
                  begin
                    // State machine behavior using case x statement
                    casex(state)
                      S_reset: begin 
                        		Data_out = 0;
                        		read_ptr = 0;
                                write_ptr = 0;
                                ptr_gap = 0;
                        		if(rst)
                                  next_state = S_reset;
                        		else if((write_to_stack == 0) && (read_from_stack == 0))
                                  next_state = S_idle;
                                else if((write_to_stack == 1) && (read_from_stack == 0))
                                  next_state = S_write;
                                else if((write_to_stack == 0) && (read_from_stack == 1))
                                  next_state = S_read;
                      		   end
                      S_idle: begin
                                Data_out = 0;
                        		if(rst)
                                  next_state = S_reset;
                                else if((write_to_stack == 0) && (read_from_stack == 0))
                                  next_state = S_idle;
                                else if((write_to_stack == 1) && (read_from_stack == 0))
                                  next_state = S_write;
                                else if((write_to_stack == 0) && (read_from_stack == 1))
                                  next_state = S_read;
                      		  end
                      S_write:begin
                        		if(write_to_stack && (!stack_full))
                                  begin
                                    stack[write_ptr] = Data_in;
                                    write_ptr = write_ptr + 1;
                                    ptr_gap = ptr_gap + 1;
                                  end
                        
								if(rst)
                                  next_state = S_reset;
                                else if((write_to_stack == 0) && (read_from_stack == 0))
                                  next_state = S_idle;
                                else if((write_to_stack == 1) && (read_from_stack == 0))
                                  next_state = S_write;
                                else if((write_to_stack == 0) && (read_from_stack == 1))
                                  next_state = S_read;
                      		  end
                      S_read:begin
                        		if(read_from_stack && (!stack_empty))
                                  begin
                                    Data_out = stack[read_ptr];
                                    read_ptr = read_ptr + 1;
                                    ptr_gap = ptr_gap - 1;
                                  end
                        
								if(rst)
                                  next_state = S_reset;
                                else if((write_to_stack == 0) && (read_from_stack == 0))
                                  next_state = S_idle;
                                else if((write_to_stack == 1) && (read_from_stack == 0))
                                  next_state = S_write;
                                else if((write_to_stack == 0) && (read_from_stack == 1))
                                  next_state = S_read;
                      		 end
                      default: next_state = S_idle;
                      
                    endcase
                end
endmodule
