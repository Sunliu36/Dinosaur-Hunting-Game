TITLE Example of ASM              

INCLUDE Irvine32.inc


.stack 4096

main          EQU start@0
.data
title BYTE "Dino-Hunt",0 
a1 byte "                                                                      |  $ __ $                   |  ",0
a2 byte "                                                                      | | \  / |                  |  ",0
a3 byte "                                                                      |  \ .. /                   |  ",0
a4 byte "                                                                      |   v  v                    |  ",0
s1 byte "                                                                      |           $ __ $          |  ",0
s2 byte "                                                                      |          | \  / |         |  ",0
s3 byte "                                                                      |           \ .. /          |  ",0
s4 byte "                                                                      |            v  v           |  ",0
d1 byte "                                                                      |                    $ __ $ |  ",0
d2 byte "                                                                      |                   | \  / ||  ",0
d3 byte "                                                                      |                    \ .. / |  ",0
d4 byte "                                                                      |                     v  v  |  ",0 
clrmes byte "                                                                      |                           |",0          
str1 byte "        **          $$                        $$          **                      ",0
str2 byte "         **        $$$$                      $$$$        **                       ",0
str3 byte "          **            \                 /             **                        ",0
str4 byte "           **            \               /             **                         ",0
str5 byte "            **            \             /             **                          ",0
str6 byte "             **                                      **                           ",0
str7 byte "              **                                    **                            ",0
str8 byte "               **                                  **                             ",0
str9 byte "                **             O    O             **                              ",0
stra byte "                 **                              **                               ",0
strb byte "                ---Welcome to  『Dino-Hunt Field』---                                                                                                                ",0
strc byte "                 **                              **                               ",0
strd byte "                ** \          /       \          /**                              ",0
stre byte "               **   \        /         \        /  **                             ",0
strf byte "              **     \      /           \      /    **                            ",0
strg byte "             **       \    /             \    /      **                           ",0
strh byte "            **         \  /               \  /        **                          ",0
stri byte "           **           \/                 \/          **                         ",0
strj byte "          **                                            **                        ",0
strk byte "         **                                              **                       ",0
strl byte "        **                                                **                      ",0
strm byte "                                                                                  ",0
strn byte "                                                                                  ",0
stro byte "                                                                                  ",0
strp byte "                                                                               HOW TO PLAY ?                                          ",0
strq byte "                                                                                                                                      ",0
strs byte "                                                                               (1) Press |  1  | to hit left dino                     ",0
strt byte "                    ---Press 『Z』 to start----                                                                                        ",0
stru byte "                                                                               (2) Press |  2  | to hit middle dino                   ",0
strv byte "                                                                                                                                      ",0
strw byte "                                                                               (3) Press |  3  | to hit right dino                    ",0
strx byte "                                                                                                                                      ",0
stry byte "                                                                               (*) During gaming time, Press e to End                 ",0
strz byte "                                                                                                                                      ",0
str0 byte "                                                                               (*) During gaming time, Press p to Restart             ",0
str1000 byte "                                                                                                                                   ",0
str1111 byte "                                                                                                                                   ",0
str2222 byte "Ps. You can play Both Hands. ",0
str3333 byte "                             ",0
spaccc byte "                                                                                                                                                                                      ",0
countthree byte "                                                                                    THREE                ",0
counttwo byte "                                                                                     TWO                   ",0
countone byte "                                                                                     ONE                   ",0
keystr1 byte "                                                                         _____     _____     _____  ",0
keystr2 byte "                                                                       ||     || ||     || ||     ||",0
keystr3 byte "                                                                       ||  1  || ||  2  || ||  3  ||",0
keystr4 byte "                                                                       ||_____|| ||_____|| ||_____||",0
keystr5 byte "                                                                       |/_____\| |/_____\| |/_____\|",0
str101 byte "                                                                              Time's up !!!                     ",0
str235 byte "                                                                             Try Again ?                        ",0  
str2352 byte "                                                                                                               ",0
str2353 byte "                                                                    Press    N   to  end  the  game                     ",0
str2354 byte "                                                                      Press    Y    to  restart                     ",0
str247 byte "                                                                               BYE BYE  ~                                              ",0                                                                       
randnum dword ?
ans byte 0,0,0,0,0,0
success dword 0
systime dword ?
counting dword 30 
score byte "                                                                           The score is: ",0
timemes byte "                                                                          The time left: ",0
zero byte "0",0
aheadpercentage byte "                                                                         again? press y(yes) or n(no)",0
aheadpercentage1 byte "                                                                  You're ahead of 5% people in global.        ",0
aheadpercentage2 byte "                                                                  You're ahead of 35% people in global.       ",0
aheadpercentage3 byte "                                                                  You're ahead of 50% people in global.       ",0
aheadpercentage4 byte "                                                                  You're ahead of 75% people in global.       ",0
aheadpercentage5 byte "                                                                  You're ahead of 99% people in global.       ",0
endend byte "TIME'S UP",0
beginmes byte "Remenber to press 『Alt+Enter』 to turn into full screen, then press 『X』 to enter Hunting Field.",0
wronghit byte 0
.code

main PROC
first1:		;full screen
 mov dl,5
 mov dh,10
 call gotoxy
 mov edx,offset beginmes
 call writestring
 call readchar
 cmp al,"x"
 jne first1

start:		; tell the rule
 call clrscr
 mov success,0
 mov dl,0
 mov dh,0
 call Gotoxy 
 call crlf
 call crlf
 call crlf
 call crlf
 mov edx,offset str1
 call writestring
 call crlf
 mov edx,offset str2
 call writestring
 call crlf
 mov edx,offset str3
 call writestring
 call crlf
 mov edx,offset str4
 call writestring
 call crlf
 mov edx,offset str5
 call writestring
 call crlf
 mov edx,offset str6
 call writestring
 call crlf
 mov edx,offset str7
 call writestring
 call crlf
 mov edx,offset str8
 call writestring
 call crlf
 mov edx,offset str9
 call writestring
 call crlf
 mov edx,offset stra
 call writestring
 call crlf
 mov edx,offset strb
 call writestring
 call crlf
 mov edx,offset strc
 call writestring
 call crlf
 mov edx,offset strd
 call writestring
 call crlf
 mov edx,offset stre
 call writestring
 call crlf
 mov edx,offset strf
 call writestring
 call crlf
 mov edx,offset strg
 call writestring
 call crlf
  mov edx,offset strh
 call writestring
 call crlf
 mov edx,offset stri
 call writestring
 call crlf
 mov edx,offset strj
 call writestring
 call crlf
 mov edx,offset strk
 call writestring
 call crlf
 mov edx,offset strl
 call writestring
 call crlf
 mov edx,offset strm
 call writestring
 call crlf
 mov edx,offset strn
 call writestring
 call crlf
 mov edx,offset stro
 call writestring
 call crlf
 mov edx,offset strp
 call writestring
 call crlf
 mov edx,offset strq
 call writestring
 call crlf
 mov edx,offset strs
 call writestring
 call crlf
 mov edx,offset strt
 call writestring
 call crlf
 mov edx,offset stru
 call writestring
 call crlf
 mov edx,offset strv
 call writestring
 call crlf
 mov edx,offset strw
 call writestring
 call crlf
  mov edx,offset strx
 call writestring
 call crlf
 mov edx,offset stry
 call writestring
 call crlf
 mov edx,offset strz
 call writestring
 call crlf
 mov edx,offset str0
 call writestring
 call crlf
 mov edx,offset str1000
 call writestring
 call crlf
 mov edx,offset str1111
 call writestring
 call crlf
 call crlf
 call crlf
 call crlf
 call crlf
 mov edx,offset str2222
 call writestring
 call crlf
 mov edx,offset str3333
 call writestring
 call crlf
 call readchar
 cmp al,"z"
 je gamestart
 jmp start

gamestart:	; Countdown
 call clrscr
 mov success,0
 mov ecx,10

 LLstr01:
  mov edx,offset spaccc
  call writestring
  call crlf
  Loop LLstr01
 mov edx,offset countthree
 call writestring
 call crlf

 mov eax,1000
 call delay
 mov ecx,42
 mov dl,0
 mov dh,0
 call Gotoxy 
 
 L42:
  mov edx,offset spaccc
  call writestring
  call crlf
  Loop L42
 mov dl,0
 mov dh,0
 call Gotoxy 
 mov ecx,10

LLLLLL:
 mov edx,offset spaccc
 call writestring
 call crlf
 Loop LLLLLL

 mov edx,offset counttwo
 call writestring
 call crlf

 mov eax,1000
 call delay
 mov ecx,37
 mov dl,0
 mov dh,0
 call Gotoxy 

 L377:
  mov edx,offset spaccc
  call writestring
  call crlf
  Loop L377
 mov dl,0
 mov dh,0
 call Gotoxy 
 mov ecx,10

LLLLLLL:
 mov edx,offset spaccc
 call writestring
 call crlf
 Loop LLLLLLL
 mov edx,offset countone
 call writestring
 call crlf

 mov eax,1000
 call delay
 mov ecx,37
 mov dl,0
 mov dh,0
 call Gotoxy 

 L3777:
  mov edx,offset spaccc
  call writestring
  call crlf
  Loop L3777
			
 invoke gettickcount ;GameStart
 mov systime,eax	            ;Store starting time
 mov dl,0
 mov dh,6
 call Gotoxy
 mov ecx,6
 mov esi,0
 mov edx,offset timemes		    ;time left print
 call writestring
 invoke gettickcount   
 sub eax,systime  
 mov edx,0
 mov ebx,1000
 div ebx
 sub counting,eax
 mov eax,counting
 call writedec
 call crlf

 mov eax,lightblue+(black*16)
 call settextcolor

L:                              ;print dinos
 mov eax,3  
 call randomrange
 mov randnum,eax
 cmp randnum,0
 je L1
 cmp randnum,1
 je L2
 cmp randnum,2
 je L3

L1:
 mov edx,offset a1
 call writestring
 call crlf
 mov edx,offset a2
 call writestring
 call crlf
 mov edx,offset a3
 call writestring
 call crlf
 mov edx,offset a4
 call writestring
 call crlf
 mov edx,offset clrmes
 call writestring
 call crlf
 mov ans[esi],"1"
 inc esi
 jmp exit1

L2:
 mov edx,offset s1
 call writestring
 call crlf
 mov edx,offset s2
 call writestring
 call crlf
 mov edx,offset s3
 call writestring
 call crlf
 mov edx,offset s4
 call writestring
 call crlf
 mov edx,offset clrmes
 call writestring
 call crlf
 mov ans[esi],"2"
 inc esi
 jmp exit1

L3:
 mov edx,offset d1
 call writestring
 call crlf
 mov edx,offset d2
 call writestring
 call crlf
 mov edx,offset d3
 call writestring
 call crlf
 mov edx,offset d4
 call writestring
 call crlf
 mov edx,offset clrmes
 call writestring
 call crlf
 mov ans[esi],"3"
 inc esi

exit1:
 dec ecx
 cmp ecx,0
 jne L
 mov eax,16
 mov eax,gray+(black*16)
 call settextcolor
 mov edx,offset keystr1
 call writestring
 call crlf
 mov edx,offset keystr2
 call writestring
 call crlf
 mov edx,offset keystr3
 call writestring
 call crlf
 mov edx,offset keystr4
 call writestring
 call crlf
 mov edx,offset keystr5
 call writestring
 call crlf

hit: ;擊打
 mov dl,0
 mov dh,6
 call Gotoxy
 mov eax,16
 mov eax,white+(black*16) 
 call settextcolor
 mov edx,offset timemes
 call writestring
 invoke gettickcount 
 sub eax,systime
 mov edx,0
 mov ebx,1000
 div ebx
 cmp eax,30
 jae reallyexit		
 cmp eax,20
 ja L12      
 sub counting,eax
 mov eax,counting
 mov counting,30
 call writedec
 call crlf
 jmp L14

L12:     
 mov edx,offset zero
 call writestring
 sub counting,eax
 mov eax,counting
 mov counting,30
 call writedec
 call crlf

L14:
 mov dl,0
 mov dh,31
 call Gotoxy
 mov wronghit,0    
 mov esi,5
 call readchar
 cmp al,"e"	                    
 je reallyexit1
 cmp al,"p"	                    
 je gamestart
 cmp ans[esi],al  
 je yes
 mov wronghit,1                 ; wrong hit
 mov esi,5
 mov dl,0
 mov dh,35
 call Gotoxy
 mov edx,offset timemes
 cmp success,10120
 jbe changeback_white1
 cmp success,40529
 jbe changeback_blue1
 cmp success,91345
 jb changeback_green1
 jmp changeback_yellow1

changeback_white1:
 mov eax,16
 mov eax,lightblue+(black*16)
 call settextcolor
 jmp call_set2

changeback_blue1:
 mov eax,16
 mov eax,lightred+(black*16)
 call settextcolor
 jmp call_set2

changeback_green1:
 mov eax,16
 mov eax,green+(black*16)
 call settextcolor
 jmp call_set2

changeback_yellow1:
 mov eax,16
 mov eax,yellow+(black*16)
 call settextcolor

call_set2:
 mov edx,offset clrmes
 call writestring
 mov dl,0
 mov dh,31
 call Gotoxy
 jmp L8

LLLL:
 mov esi,5
 mov wronghit,2
 mov dl,0
 mov dh,36
 call Gotoxy
 mov eax,300
 call delay
 mov dl,0
 mov dh,31
 call Gotoxy
 mov edx,offset clrmes
 call writestring
 call crlf 

call_set1:
 jmp L8

yes: ;打正確僵屍時
 cmp success,10120
 jb L50p
 cmp success,40529
 jb L150p
 cmp success,91345
 jb L300p
 jmp L300up

L50p:
 mov eax,16
 mov eax,lightblue+(black*16)
 call settextcolor
 add success,184
 jmp endofLp

L150p:
 mov eax,16
 mov eax,lightred+(black*16)
 call settextcolor
 add success,647
 jmp endofLp

L300p:
 mov eax,16
 mov eax,green+(black*16)
 call settextcolor
 add success,1588
 jmp endofLp

L300up:
 mov eax,16
 mov eax,yellow+(black*16)
 call settextcolor
 add success,3669
 jmp endofLp

endofLp:
 mov ecx,5

L4:	                            ; next dinos
 mov bl,ans[esi-1]
 mov ans[esi],bl
 sub esi,1
 loop L4

 mov eax,3  	                ;put new dino in array
 call randomrange
 mov randnum,eax
 cmp randnum,0
 je L5
 cmp randnum,1
 je L6
 cmp randnum,2
 je L7
 
L5:
 mov ans[0],"1"
 jmp exit2
L6:
 mov ans[0],"2"
 jmp exit2
L7:
 mov ans[0],"3"

exit2:
 mov esi,0
 mov ecx,6
 mov dl,0
 mov dh,7
 call Gotoxy

L8:	;印出殭屍
 xor edx, edx
 cmp ans[esi],"1"
 je printL
 cmp ans[esi],"2"
 je printM
 cmp ans[esi],"3"
 je printR
 jmp exit3

printL:    
 mov edx,offset a1
 call writestring
 call crlf
 mov edx,offset a2
 call writestring
 call crlf
 mov edx,offset a3
 call writestring
 call crlf
 mov edx,offset a4
 call writestring
 call crlf
 inc esi
 cmp wronghit,1
 je LLLL
 jmp exit3

printM:   
 mov edx,offset s1
 call writestring
 call crlf
 mov edx,offset s2
 call writestring
 call crlf
 mov edx,offset s3
 call writestring
 call crlf
 mov edx,offset s4
 call writestring
 call crlf
 inc esi
 cmp wronghit,1
 je LLLL
 jmp exit3

printR:   
 mov edx,offset d1
 call writestring
 call crlf
 mov edx,offset d2
 call writestring
 call crlf
 mov edx,offset d3
 call writestring
 call crlf
 mov edx,offset d4
 call writestring
 call crlf
 inc esi
 cmp wronghit,1
 je LLLL

exit3:
 cmp wronghit,2
 je hit
 mov edx,offset clrmes
 call writestring
 call crlf
 dec ecx
 cmp ecx,0
 jne L8
 mov eax,16
 mov eax,gray+(black*16)
 call settextcolor
 mov edx,offset keystr1
 call writestring
 call crlf
 mov edx,offset keystr2
 call writestring
 call crlf
 mov edx,offset keystr3
 call writestring
 call crlf
 mov edx,offset keystr4
 call writestring
 call crlf
 mov edx,offset keystr5
 call writestring
 call crlf
 jmp hit

reallyexit: 	                         ; time's up
 call clrscr

 mov ecx,10	
 Loop_space:
  mov edx,offset spaccc
  call writestring
  call crlf
  Loop Loop_space
 mov edx,offset str101
 call writestring
 call crlf


 mov eax,1500
 call delay

reallyexit1:
 call clrscr
 mov dl,0
 mov dh,4
 call Gotoxy
 cmp success,0
 jne LL184
 mov edx,offset score
 call writestring
 call clrscr
 mov eax,success
 call writedec
 call crlf
 jmp L50p1

LL184:		                              ;分數結算
 mov ecx, 104
 mov ebx,0
 Looop:
  mov edx,offset score
  call writestring
  mov eax,ebx
  call writedec
  call crlf 
  mov dl,0
  mov dh,4
  call Gotoxy
  mov eax,1
  call delay 
  add ebx,1
  Loop Looop
  mov edx,offset score
  call writestring
  mov eax,success

  call writedec
  call crlf
 cmp success,10000
 jb L50p1
 cmp success,30000
 jb L150p1
 cmp success,70000
 jb L300p1
 cmp success,150000
 jb L400p1
 jmp L400up

L50p1:
 mov edx,offset aheadpercentage1
 call writestring
 call crlf
 jmp endofLp1

L150p1:
 mov edx,offset aheadpercentage2
 call writestring
 call crlf
 jmp endofLp1

L300p1:
 mov edx,offset aheadpercentage3
 call writestring
 call crlf
 jmp endofLp1

L400p1:
 mov edx,offset aheadpercentage4
 call writestring
 call crlf
 jmp endofLp1

L400up:
 mov edx,offset aheadpercentage5
 call writestring
 call crlf

endofLp1:	              ; PRINT TRY AGAIN
 call crlf
 call crlf

 mov edx,offset str235
 call writestring
 call crlf
 mov edx,offset str2352
 call writestring
 call crlf
 mov edx,offset str2353
 call writestring
 call crlf
 mov edx,offset str2354
 call writestring
 call crlf

L13:
 call readchar
 cmp al,"n"	                         
 je done
 cmp al,"y"	                            
 je gamestart
 jmp L13

done:		                            ;if print N
 call clrscr
 mov ecx,11

Lp_space: 
 call crlf
 Loop Lp_space

 mov edx,offset str247
 call writestring
 call crlf
 mov eax,2000
 call delay
 exit
main ENDP

END main