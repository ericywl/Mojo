/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     DEPTH = NUM_SYNC
*/
module pipeline_5 (
    input clk,
    input in,
    output reg out
  );
  
  localparam DEPTH = 2'h2;
  
  
  reg [1:0] M_pipe_d, M_pipe_q = 1'h0;
  
  integer i;
  
  always @* begin
    M_pipe_d = M_pipe_q;
    
    M_pipe_d[0+0-:1] = in;
    out = M_pipe_q[1+0-:1];
    for (i = 1'h1; i < 2'h2; i = i + 1) begin
      M_pipe_d[(i)*1+0-:1] = M_pipe_q[(i - 1'h1)*1+0-:1];
    end
  end
  
  always @(posedge clk) begin
    M_pipe_q <= M_pipe_d;
  end
  
endmodule
