/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module bool8_2 (
    input [7:0] a,
    input [7:0] b,
    input [5:0] alufn,
    output reg [7:0] s
  );
  
  
  
  always @* begin
    s = 1'h0;
    
    case (alufn[0+1-:2])
      1'h0: begin
        s = a & b;
      end
      1'h1: begin
        s = a | b;
      end
      4'ha: begin
        s = a ^ b;
      end
      4'hb: begin
        s = a;
      end
    endcase
  end
endmodule