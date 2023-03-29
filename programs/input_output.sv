`default_nettype none

module ROM(
  input var logic[7:0] address,
  output var logic[7:0] dataout
);

  always @(address) case (address)
    8'b00000000: dataout = 8'b10110001;
    8'b00000001: dataout = 8'b00001010;
    8'b00000010: dataout = 8'b10000010;
    8'b00000011: dataout = 8'b01000100;
    8'b00000100: dataout = 8'b10011110;
    default: dataout = 8'b00000000;
  endcase

endmodule
