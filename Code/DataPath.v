module DataPath(
input clock,
input [23:0] PC,
input RegDst,
input ALUsrc,
input MemToReg,
input Regwrite,
input MemRead,
input MemWrite,
input [1:0] ALUop,
input Branch,
input [23:0] Instruction,
output [23:0] PC_beq
);

wire [3:0] opcode;
wire [3:0] rs;
wire [3:0] rt;
wire [3:0] rd;
wire [3:0] funct;
wire [11:0] immediate;
wire [23:0] imm24;
wire [3:0] caktoRD;
wire [23:0] caktoBALU;
wire [23:0] ALUout;
wire [23:0] DMemOut; 
wire [23:0] WriteDatatoReg;
wire zero,overflow,carryout;
wire [3:0] ALUControlOut;
wire [23:0] ReadRs;
wire [23:0] ReadRt;
wire PcCarryOut;

assign immediate=Instruction[11:0];
assign rs= Instruction[19:16];
assign rt= Instruction[15:12];
assign rd= Instruction[11:8];
assign funct= Instruction[3:0];
assign opcode=Instruction[23:20];

Mux2to1_4bit muxparaRD(rt,rd,RegDst,caktoRD);

Mux2to1 DaljaNgaMem (ALUout,DMemOut,MemToReg,WriteDatatoReg);


RegisterFile rf(rs,rt,caktoRD,WriteDatatoReg,ReadRs,ReadRt,Regwrite,clock);


assign imm24= {{12{immediate[11]}},immediate[11:0]};

mux2to1_24bit ALUHyrja(ReadRt,imm-24,ALUsrc,caktoBALU);



ALUControl aluc(ALUop,funct,ALUControlOut);


ALU24 alu24bit(ReadRs,caktoBALU,ALUControlOut[1:0],ALUControlOut[3],zero,overflow,carryout,ALUout);



DataMemory dm(ALUout,ReadRt,clock,MemWrite,MemRead,DMemOut);

assign PC = PC + 24'd3;

wire [23:0] ImmediateShifted;
wire [23:0] ImmediateShiftedPlusPC;

shumzuesi3 sh3(imm24,24'd3,ImmediateShifted);    

// assign ImmediateShiftedPlusPC = ImmediateShifted + PC;
Mbledhesi24bit beqPlusPc(ImmediateShifted, PC, ImmediateShiftedPlusPC, PcCarryOut);

//  assign BEQPC = (Branch & Zero) ? ImmediateShiftedPlusPC : PC;
mux2to1_24bit beqOrPc(PC, ImmediateShiftedPlusPC, Branch & Zero, PC_beq);

endmodule



















