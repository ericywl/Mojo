/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module hello_world_rom_7 (
    input [3:0] address,
    output reg [7:0] letter
  );
  
  
  
  localparam TEXT = 112'h0d0a21646c726f57206f6c6c6548;
  
  always @* begin
    letter = TEXT[(address)*8+7-:8];
  end
endmodule