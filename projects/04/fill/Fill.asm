// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
(INICIO)
        @SCREEN
        D=A
        @i
        M=D
(LOOP)
        @i
        D=M
        @24575
        D=A-D
        @INICIO
        D;JLT
        @KBD
        D=M
        @PRETO
        D;JNE
        @i
        D=M
        A=D
        M=0
        @ANDATELA
        0;JMP
(PRETO)
        @i
        D=M
        A=D
        M=-1
(ANDATELA)
        @i
        M=M+1
        @LOOP
        0;JMP