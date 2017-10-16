/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module cmp8_4 (
    input [7:0] a,
    input [7:0] b,
    input [5:0] alufn,
    output reg [7:0] cmp
  );
  
  
  
  always @* begin
    cmp[1+6-:7] = 1'h0;
    
    case (alufn[1+1-:2])
      1'h1: begin
        cmp[0+0-:1] = (a == b);
      end
      4'ha: begin
        cmp[0+0-:1] = (a < b);
      end
      4'hb: begin
        cmp[0+0-:1] = (a <= b);
      end
    endcase
  end
endmodule