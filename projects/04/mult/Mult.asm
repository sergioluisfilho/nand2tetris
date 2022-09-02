// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.
        @soma
        M=0
        @R0
        D=M
        @i
        M=D
(LOOP)
        @i
        MD=M-1
        @FINAL
        D;JLT
        @R1
        D=M
        @soma
        M=M+D
        @LOOP
        0;JMP
(FINAL)
        @soma
        D=M
        @R2
        M=D
(STOP)
    @STOP
    0;JMP

