// JUAN DAVID ANGEL VILLEGAS
// 000174100
// juan.angelv@upb.edu.co

(START)
@KBD
 D=M
 @84  //T//
 D=D-A
 @VERTICAL 
 D;JEQ
 
@KBD
 D=M
 @67   //C//
 D=D-A 
 @BORRAR
 D;JEQ

 @KBD
 D=M
 @84  //T//
 D=D-A 
 @HORIZONTAL
 D;JEQ
 
@START
 0;JMP

(VERTICAL)
@16400
 D=A
@dibujo
 M=D 
@256//candidad de registros a pintar
 D=A
@cont//contador filas pantalla
 M=D
@32
 D=A 
@salto
 M=D

@color
M= 1
 
 @RECT
 0;JMP


(BORRAR)
@16384
 D=A
@dibujo
 M=D 
@8300
 D=A
@cont
 M=D
@1
 D=A 
@salto
 M=D

@color
M = 0

@RECT
 0;JMP
 
 
(HORIZONTAL)
@20480//16384 + (128*32)
 D=A
@dibujo
 M=D 
@32
 D=A
@cont
 M=D
@1
 D=A 
@salto
 M=D


@color
M= -1
 
@RECT
0;JMP


(RECT)
@dibujo
 D=M
@pscreen
 M=D 
 
(PAINT)
@cont//D=cont
 D=M 
 
 @END
 D;JEQ
 
@color
D=M 
@pscreen
A=M 
M=D 
 
@cont
M=M-1
 
@salto
 D=M
 
@pscreen
 M=M+D 
 
@PAINT
 0;JMP
 
(END)
 @START
 0;JMP


