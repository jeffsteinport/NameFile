10 'COPYRIGHT(C)1992 T&D S.S.
20 'BY JEFF STEINPORT
30 CLS:CLEAR 10000
40 OPEN"D",#1,"REMEMBER",192
50 L=0:M=0:N=0:O=0:P=0
60 ON ! GOTO 560
70 PRINT"TO END PUSH  BREAK"
80 PRINT"       FILE YOUR FRIENDS"
90 GOTO570
100 CLS
110 LINE INPUT"NAME: ";S$:IF L=1 THEN 190
120 LINE INPUT"PHONE: ";N$:IF M=2 THEN 190
130 LINE INPUT"STREET ADDRESS: ";Q$:IF N=3 THEN 190
140 LINE INPUT"CITY,STATE: ";CS$:IF O=4 THEN 190
150 LINE INPUT"ZIP CODE: ";Z$:IF P=5 THEN 190
160 PRINT:PRINT:INPUT"RECORD NUMBER: ";R
170 PRINT"READY DISK AND PRESS ENTER"
180 A$=INKEY$:IF A$=""THEN180
190 IF LEN(S$)<32 THEN S$=S$+" ":GOTO 190
200 IF LEN(S$)>32 THEN PRINT"NAME TOO LONG PLEASE REENTER":L=1:GOTO 110
210 IF LEN(N$)<32 THEN N$=N$+" ":GOTO 210
220 IF LEN(N$)>32 THEN PRINT"PHONE NUMBER TOO LONG,PLEASE REENTER":M=2:GOTO 120
230 IF LEN(Q$)<32 THEN Q$=Q$+" ":GOTO 230
240 IF LEN(Q$)>32 THEN PRINT"STREET ADDRESS TOO LONG,PLEASE REENTER":N=3:GOTO 130
250 IF LEN(CS$)<32 THEN CS$=CS$+" ":GOTO 250
260 IF LEN(CS$)>32 THEN PRINT"CITY AND STATE TOO LONG,PLEASE REENETR":O=4:GOTO 140
270 IF LEN(Z$)<32 THEN Z$=Z$+" ":GOTO 270
280 IF LEN(Z$)>32 THEN PRINT"ZIP CODE TOO LONG,PLEASE REENTER":P=5:GOTO 150
290 S$=S$+Q$+CS$+Z$+N$
300 WRITE #1,S$
310 PUT#1,R
320 PRINT"COMPLETE":FORS=1 TO 1000:NEXT S
330 CLOSE#1
340 GOTO 30
350 CLS:INPUT"RECORD NUMBER:";R
360 GET #1,R
370 INPUT #1,A$
380 PRINT A$
390 CLOSE#1
400 PRINT"PRESS ENTER TO CONTINUE"
410 A$=INKEY$:IF A$=""THEN 410
420 GOTO 30
430 CLS:INPUT"WHAT FILE DO YOU WANT TO DELETE:";R
440 INPUT"ARE YOU SURE(Y/N)";Y$
450 IF Y$="Y"THEN 500
460 IF Y$="N"THEN 470
470 PRINT"IF YOU DON'T WANT TO DELETE"
480 PRINT"FILE #"R;"THEN WHY DID YOU SELECT"
490 PRINT"THIS SECTION?":FOR F=1 TO 2000:NEXT F:CLOSE #1:GOTO 30
500 PRINT"DELETING"
510 S$=" "
520 WRITE #1,S$
530 PUT #1,R
540 PRINT"DELETED":FOR F=1 TO 1000:NEXT F
550 CLOSE#1:GOTO 30
560 CLOSE#1:END
570 PRINT"         DO YOU WANT TO"
580 PRINT"          1)SAVE A FILE                   2)SEE A FILE                    3)DELETE A FILE"
590 PRINT"             (1,2 OR 3)"
600 R$=INKEY$:IF R$=""THEN 600
610 IF R$="1"THEN 100
620 IF R$="2"THEN 350
630 IF R$="3"THEN 430
640 GOTO 590
