// JUAN DAVID ANGEL VILLEGAS
// 000174100
// juan.angelv@upb.edu.co

(START)
            @16400
            D=A

            @pscreen
            M=D

            @256
            D=A

            @contador
            M=D

            @32
            D=A
            @contador2
            M=D

            @4096
            D=A
            @inicio
            M=D

            @KBD
            D=M
            @84
            D=D-A
            @LVER
            D;JEQ

            @KBD
            D=M
            @67
            D=D-A
            @REGIS
            D;JEQ

            @START
            0;JMP
(LVER)
            @contador
            D=M

            @LHOR
            D;JEQ

            @256
            D=A

            @pscreen
            A=M
            M=D
            @contador
            M=M-1
            @32
            D=A
            @pscreen
            M=M+D

            @LVER
            0;JMP

(LHOR)
             @inicio
             D=M

             @SCREEN
             A=A+D
             M = -1

             @inicio
             M=M+1

             @contador2
             M=M-1
             D=M
             @END
             D;JEQ

            @LHOR
            0;JMP

(REGIS)
            @16384
            D=A
            @coord
            M=D
            @8192
            D=A
            @cont
            M=D
            @1
            D=A
            @jump
            M=D
            @color
            M=0
            @MEMO
            0;JMP

(MEMO)
            @coord
            D=M
            @pscreen
            M=D

(PAINT)
            @cont
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

            @jump
            D=M

            @pscreen
            M=M+D

            @PAINT
            0;JMP

(END)
            @START
            0;JMP