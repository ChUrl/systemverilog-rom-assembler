`default_nettype none

module ROM(
  input var logic[7:0] address,
  output var logic[7:0] dataout
);

  always @(address) case (address)
    case 8'b00000000: dataout = 8'b00000101;
    case 8'b00000001: dataout = 8'b10000001;
    case 8'b00000010: dataout = 8'b00001010;
    case 8'b00000011: dataout = 8'b10000010;
    case 8'b00000100: dataout = 8'b01000100;
    case 8'b00000101: dataout = 8'b10011001;
    case 8'b00000110: dataout = 8'b00001111;
    case 8'b00000111: dataout = 8'b10000010;
    case 8'b00001000: dataout = 8'b01000101;
    case 8'b00001001: dataout = 8'b00000000;
    case 8'b00001010: dataout = 8'b11000001;
    default: dataout = 8'b00000000;
  endcase

endmodule
