`default_nettype none

module ROM(
  input var logic[7:0] address,
  output var logic[7:0] dataout
);

  always @(address) case (address)
    case 8'b00000000: dataout = 8'b00110000;
    case 8'b00000001: dataout = 8'b10000110;
    case 8'b00000010: dataout = 8'b00110001;
    case 8'b00000011: dataout = 8'b10000110;
    case 8'b00000100: dataout = 8'b00110010;
    case 8'b00000101: dataout = 8'b10000110;
    case 8'b00000110: dataout = 8'b00110011;
    case 8'b00000111: dataout = 8'b10000110;
    case 8'b00001000: dataout = 8'b00110100;
    case 8'b00001001: dataout = 8'b10000110;
    case 8'b00001010: dataout = 8'b00110101;
    case 8'b00001011: dataout = 8'b10000110;
    case 8'b00001100: dataout = 8'b00110110;
    case 8'b00001101: dataout = 8'b10000110;
    case 8'b00001110: dataout = 8'b00110111;
    case 8'b00001111: dataout = 8'b10000110;
    case 8'b00010000: dataout = 8'b00111000;
    case 8'b00010001: dataout = 8'b10000110;
    case 8'b00010010: dataout = 8'b00111001;
    case 8'b00010011: dataout = 8'b10000110;
    case 8'b00010100: dataout = 8'b00000000;
    case 8'b00010101: dataout = 8'b11000100;
    default: dataout = 8'b00000000;
  endcase

endmodule
