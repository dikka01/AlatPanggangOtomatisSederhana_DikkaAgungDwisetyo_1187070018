ORG 00H
Main:Mov A,#0CH 
MOV P2,A
Acall Delay
Mov A,#06H     
MOV P2,A
Acall Delay
Mov A,#03H   
MOV P2,A
Acall Delay
Mov A,#09H   
MOV P2,A
Acall Delay
SJMP Main
Delay:Mov R3,#08H   
Up2:MOV R2,#0FFH
Up1:MOV R1,#0FFH
Here:DJNZ R1,Here
DJNZ R2,Up1
DJNZ R3,Up2
RET
END