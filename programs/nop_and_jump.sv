`default_nettype none

module ROM(
  input var logic[7:0] address,
  output var logic[7:0] dataout
);

  always @(address) case (address)
    8'b00000001: dataout = 8'b11000000;
    8'b00000010: dataout = 8'b00000000;
    8'b00000011: dataout = 8'b11000100;
    default: dataout = 8'b00000000;
  endcase

endmodule
