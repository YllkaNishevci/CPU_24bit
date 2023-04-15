

module ALUControl (
input [1:0] ALUop,
input [3:0] funct,
output reg [3:0] operacioni
);


always @(ALUop)
begin
case(ALUop) // Pyet per vleren e ALUOp
    2'b00: operacioni = 4'b0010; //Ls+Ss (mbledhje)
    2'b01: operacioni = 4'b1010; //BEQ (zbritje)
    2'b10: //R-Format
        case(funct)
            4'b0010: operacioni = 4'b0010; //ADD
            4'b0011: operacioni = 4'b1010; //SUB
            4'b0000: operacioni =4'b0000; //AND
            4'b0001 : operacioni = 4'b0001; //OR
            4'b0100 : operacioni = 4'b0101; //XOR

            endcase

  
   
        endcase

end




endmodule



















