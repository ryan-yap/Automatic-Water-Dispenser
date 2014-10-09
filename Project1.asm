$MODDE2
;
ORG 0000H
	ljmp MyProgram

org 001BH
	ljmp ISR_timer1

org 002BH
	ljmp ISR_timer2
	
$include(math32.asm)

DSEG at 60H
Max: ds 1
;Tank: ds 1
Cup: ds 1
tank: ds 4

CSEG

SCLK   EQU  P1.1 
MOSI   EQU  P1.2 
MISO   EQU  P1.3 
CE_ADC EQU  P1.4 
; The DE2_8052 is running at 11MHz.  Therefore we need big loops to achieve a 1 second delay.
; Since the 8051/8052 is an 8-bit processor, we use loops inside loops.
; One machine cycle takes 90ns.


Wait1s:
	mov R2, #200
L3: mov R1, #250
L2: mov R0, #74
L1: djnz R0, L1 ; 3 machine cycles-> 3*90*74=20us
    djnz R1, L2 ; 20us*250=0.005s
    djnz R2, L3 ; 0.005s*200=1s
    ret
    
Wait40us:
	mov R0, #255
X1: 
	djnz R0, X1 ; 3 machine cycles-> 3*90ns*255=0.68ms
    ret         ;we want 1470turns    
  

check0:
	cjne a,#0,check1
	mov dptr,#d0
	ljmp next
check1:
	cjne a,#1,check2
	mov dptr, #d1
	ljmp next
check2:
	cjne a,#2,check3
	mov dptr, #d2
	ljmp next
check3:
	cjne a,#3,check4
	mov dptr, #d3
	ljmp next
check4:
	cjne a,#4,check5
	mov dptr, #d4
	ljmp next
check5:
	cjne a,#5,check6
	mov dptr, #d5
	ljmp next
check6:
	cjne a,#6,check7
	mov dptr, #d6
	ljmp next
check7:
	cjne a,#7,check8
	mov dptr, #d7	 
	ljmp next
check8:
	cjne a,#8,check9
	mov dptr, #d8	 
	ljmp next
check9:
	cjne a,#9,check10
	mov dptr, #d9	 
	ljmp next
check10:
	cjne a,#10,check11
	mov dptr, #d10	 
	ljmp next
check11:
	cjne a,#11,check12
	mov dptr, #d11	 
	ljmp next
check12:
	cjne a,#12,check13
	mov dptr, #d12	 
	ljmp next
check13:
	cjne a,#13,check14
	mov dptr, #d13	 
	ljmp next
check14:
	cjne a,#14,check15
	mov dptr, #d14	 
	ljmp next
check15:
	cjne a,#15,check16
	mov dptr, #d15	 
	ljmp next
check16:
	cjne a,#16,check17
	mov dptr, #d16	 
	ljmp next
check17:
	cjne a,#17,check18
	mov dptr, #d17	 
	ljmp next
check18:
	cjne a,#18,check19
	mov dptr, #d18	 
	ljmp next
check19:
	cjne a,#19,check20
	mov dptr, #d19	 
	ljmp next
check20:
	cjne a,#20,check21
	mov dptr, #d20	 
	ljmp next
check21:
	cjne a,#21,check22
	mov dptr, #d21	 
	ljmp next
check22:
	cjne a,#22,check23
	mov dptr, #d22	 
	ljmp next
check23:
	cjne a,#23,check24
	mov dptr, #d23	 
	ljmp next
check24:
	cjne a,#24,check25
	mov dptr, #d24	 
	ljmp next
check25:
	cjne a,#25,check26
	mov dptr, #d25	 
	ljmp next
check26:
	cjne a,#26,check27
	mov dptr, #d26	 
	ljmp next
check27:
	cjne a,#27,check28
	mov dptr, #d27	 
	ljmp next
check28:
	cjne a,#28,check29
	mov dptr, #d28	 
	ljmp next
check29:
	cjne a,#29,check30
	mov dptr, #d29	 
	ljmp next
check30:
	cjne a,#30,check31
	mov dptr, #d30	 
	ljmp next
check31:
	cjne a,#31,check32
	mov dptr, #d31	 
	ljmp next
check32:
	cjne a,#32,check33
	mov dptr, #d32	 
	ljmp next
check33:
	cjne a,#33,check34
	mov dptr, #d33	 
	ljmp next
check34:
	cjne a,#34,check35
	mov dptr, #d34	 
	ljmp next
check35:
	cjne a,#35,check36
	mov dptr, #d35	 
	ljmp next
check36:
	cjne a,#36,check37
	mov dptr, #d36	 
	ljmp next
check37:
	cjne a,#37,check38
	mov dptr, #d37	 
	ljmp next
check38:
	cjne a,#38,check39
	mov dptr, #d38	 
	ljmp next
check39:
	cjne a,#39,check40
	mov dptr, #d39	 
	ljmp next
check40:
	cjne a,#40,check41
	mov dptr, #d40	 
	ljmp next
check41:
	cjne a,#41,check42
	mov dptr, #d41	 
	ljmp next
check42:
	cjne a,#42,check43
	mov dptr, #d42	 
	ljmp next
check43:
	cjne a,#43,check44
	mov dptr, #d43	 
	ljmp next
check44:
	cjne a,#44,check45
	mov dptr, #d44	 
	ljmp next
check45:
	cjne a,#45,check46
	mov dptr, #d45	 
	ljmp next
check46:
	cjne a,#46,check47
	mov dptr, #d46	 
	ljmp next
check47:
	cjne a,#47,check48
	mov dptr, #d47	 
	ljmp next
check48:
	cjne a,#48,check49
	mov dptr, #d48	 
	ljmp next
check49:
	cjne a,#49,check50
	mov dptr, #d49	 
	ljmp next
check50:
	cjne a,#50,check51
	mov dptr, #d50	 
	ljmp next
check51:
	cjne a,#51,check52
	mov dptr, #d51	 
	ljmp next
check52:
	cjne a,#52,check53
	mov dptr, #d52	 
	ljmp next
check53:
	cjne a,#53,check54
	mov dptr, #d53	 
	ljmp next
check54:
	cjne a,#54,check55
	mov dptr, #d54	 
	ljmp next
check55:
	cjne a,#55,check56
	mov dptr, #d55	 
	ljmp next
check56:
	cjne a,#56,check57
	mov dptr, #d56	 
	ljmp next
check57:
	cjne a,#57,check58
	mov dptr, #d57	 
	ljmp next
check58:
	cjne a,#58,check59
	mov dptr, #d58	 
	ljmp next
check59:
	cjne a,#59,check60
	mov dptr, #d59	 
	ljmp next
check60:
	cjne a,#60,check61
	mov dptr, #d60	 
	ljmp next
check61:
	cjne a,#61,check62
	mov dptr, #d61	 
	ljmp next
check62:
	cjne a,#62,check63
	mov dptr, #d62	 
	ljmp next
check63:
	cjne a,#63,check64
	mov dptr, #d63	 
	ljmp next
check64:
	cjne a,#64,check65
	mov dptr, #d64	 
	ljmp next
check65:
	cjne a,#65,check66
	mov dptr, #d65	 
	ljmp next
check66:
	cjne a,#66,check67
	mov dptr, #d66	 
	ljmp next
check67:
	cjne a,#67,check68
	mov dptr, #d67	 
	ljmp next
check68:
	cjne a,#68,check69
	mov dptr, #d68	 
	ljmp next
check69:
	cjne a,#69,check70
	mov dptr, #d69	 
	ljmp next
check70:
	cjne a,#70,check71
	mov dptr, #d70	 
	ljmp next
check71:
	cjne a,#71,check72
	mov dptr, #d71	 
	ljmp next
check72:
	cjne a,#72,check73
	mov dptr, #d72	 
	ljmp next
check73:
	cjne a,#73,check74
	mov dptr, #d73	 
	ljmp next
check74:
	cjne a,#74,check75
	mov dptr, #d74	 
	ljmp next
check75:
	cjne a,#75,check76
	mov dptr, #d75	 
	ljmp next
check76:
	cjne a,#76,check77
	mov dptr, #d76	 
	ljmp next
check77:
	cjne a,#77,check78
	mov dptr, #d77	 
	ljmp next
check78:
	cjne a,#78,check79
	mov dptr, #d78 
	ljmp next
check79:
	cjne a,#79,check80
	mov dptr, #d79
	ljmp next
check80:
	cjne a,#80,check81
	mov dptr, #d80	 
	ljmp next
check81:
	cjne a,#81,check82
	mov dptr, #d81	 
	ljmp next
check82:
	cjne a,#82,check83
	mov dptr, #d82	 
	ljmp next
check83:
	cjne a,#83,check84
	mov dptr, #d83	 
	ljmp next
check84:
	cjne a,#84,check85
	mov dptr, #d84	 
	ljmp next
check85:
	cjne a,#85,check86
	mov dptr, #d85	 
	ljmp next
check86:
	cjne a,#86,check87
	mov dptr, #d86	 
	ljmp next
check87:
	cjne a,#87,check88
	mov dptr, #d87	 
	ljmp next
check88:
	cjne a,#88,check89
	mov dptr, #d88	 
	ljmp next
check89:
	cjne a,#89,check90
	mov dptr, #d89	 
	ljmp next
check90:
	cjne a,#90,check91
	mov dptr, #d90	 
	ljmp next
check91:
	cjne a,#91,check92
	mov dptr, #d91	 
	ljmp next
check92:
	cjne a,#92,check93
	mov dptr, #d92	 
	ljmp next
check93:
	cjne a,#93,check94
	mov dptr, #d93	 
	ljmp next
check94:
	cjne a,#94,check95
	mov dptr, #d94	 
	ljmp next
check95:
	cjne a,#95,check96
	mov dptr, #d95	 
	ljmp next
check96:
	cjne a,#96,check97
	mov dptr, #d96	 
	ljmp next
check97:
	cjne a,#97,check98
	mov dptr, #d97	 
	ljmp next
check98:
	cjne a,#98,check99
	mov dptr, #d98	 
	ljmp next
check99:
	cjne a,#99,check100
	mov dptr, #d99	 
	ljmp next
check100:
	;cjne a,#100,next
	mov dptr, #d100	 	;its 100 if its none of the above
next:
	lcall LCD_str
ret

LCD_Display:
    ; Turn LCD on, and wait a bit.
    setb LCD_ON
    lcall Wait40us
    
    mov LCD_MOD, #0xff ; Use LCD_DATA as output port
    clr LCD_RW ;  Only writing to the LCD in this code.
	
	mov a, #0ch ; Display on command
	lcall LCD_command
	mov a, #38H ; 8-bits interface, 2 lines, 5x7 characters
	lcall LCD_command
	mov a, #01H ; Clear screen (Warning, very slow command!)
	lcall LCD_command
    
    ; Delay loop needed for 'clear screen' command above (1.6ms at least!)
    mov R1, #40
    
Clr_loop:
	lcall Wait40us
	djnz R1, Clr_loop

	; Move to first column of first row	
	mov a, #080H
	lcall LCD_command
	
	mov dptr, #cup_is
	lcall LCD_Str
	
	; Display string in first row
	mov a,cup 	; move cup capacity here
	lcall check0
	mov dptr, #full
	lcall LCD_str
	
	; Move to first column of second row	
	mov a, #0c0H
	lcall LCD_command
	
	
	; Display string in second row
	mov dptr, #tank_is
	lcall LCD_str
	mov a,b 	; move tank capacity here
	lcall check0
	;mov dptr, #full
	;lcall LCD_str
	ret

LCD_command:
	mov	LCD_DATA, A
	clr	LCD_RS
	setb LCD_EN
	clr	LCD_EN
	ljmp Wait40us

LCD_put:
	mov	LCD_DATA, A
	setb LCD_RS
	setb LCD_EN
	clr	LCD_EN
	ljmp Wait40us

; LCD_str sends a zero terminated string pointed by dptr to the LCD.	
LCD_str:
	clr a
	movc a, @a+dptr
	jz LCD_str_done
	inc dptr
	lcall LCD_put
	sjmp LCD_str
LCD_str_done:
	ret
    

;Subroutine to check if any key is pressed
key_is_one:
	jnb KEY.1, key1_is_zero ; loop while the button is pressed	
	jnb KEY.2, key2_is_zero
	jnb KEY.3, key3_is_zero
	ret

;Subroutine to reset servo
key1_is_zero:
	jnb KEY.1, key1_is_zero
	mov R7, #0
	ret
	
;Subroutine for maximum increase
key2_is_zero:
	jnb KEY.2, key2_is_zero
	mov a, b
	cjne a, #100d, increment
	ret
increment:
	add a, #5
	mov b, a
	ret

;Subroutine for maximum decrease
key3_is_zero:
	jnb KEY.3, key3_is_zero
	mov a, b
	cjne a, #0, decrement
	ret
decrement:
	subb a, #5
	mov b, a
	ret
ISR_timer1:
	clr TF1
	clr TR1
	;lcall key_is_one
	
	mov TH1, #high(50000)
	mov TL1, #low(50000)
	setb TR1
	reti
ISR_timer2:
	push psw
	push acc
	push dpl
	push dph

	;lcall key_is_one		;check for button press
							;Key1: Starts Water Flow
							;Key2: Increase Maximum by 5%
							;Key3: Decrease Maximum by 5%
	clr TF2
	;jnb SWA.1, ServoOn		;control servo with switch
	cjne R7, #1, ServoOn	;control servo with capacitor cup

	cjne R5, #1, inc_A
	cjne R6, #39, inc_A1
	mov R5, #0
	mov R6, #0
	ljmp do_nothing	

	
ServoOn:
	mov LEDRA, #00000000B
	cjne R5, #5, inc_A
	cjne R6, #34, inc_A1
	mov R5, #0
	mov R6, #0
	ljmp do_nothing
	
inc_A:	
	mov a, R5
	inc a
	mov R5, a
	setb P0.1
	ljmp do_nothing

inc_A1:
	mov a, R6
	inc a
	mov R6, a
	clr P0.1
		
do_nothing:
	pop dph
	pop dpl
	pop acc
	pop psw

	reti
    
;get_percentage:

	;cjne A,#70H,CHK_LESS

	;ljmp _IS_EQUAL
	
;CHK_LESS:

;	jc	_IS_LESS

;CHK_GREATER:

	
;	mov y+0, x+0
;	mov y+1, x+1
;	mov y+2, x+2
;	mov y+3, x+3
;	load32(x,198)
;	lcall sub32
;	mov y+0, x+0
;	mov y+1, x+1
;	mov y+2, x+2
;	mov y+3, x+3
;	load32(x,93)
;	lcall sub32
;		
;   mov A, x+0

;	ret

;_IS_EQUAL:
;_IS_LESS:

	;mov R0, #0h
	;mov	R1, #0h
	
	;ret
    
INIT_SPI:
    orl P1MOD, #00000110b ; Set SCLK, MOSI as outputs
    anl P1MOD, #11110111b ; Set MISO as input
    clr SCLK              ; For mode (0,0) SCLK is zero
	ret
	
DO_SPI_G:
	push acc
    mov R1, #0            ; Received byte stored in R1
    mov R2, #8            ; Loop counter (8-bits)
DO_SPI_G_LOOP:
    mov a, R0             ; Byte to write is in R0
    rlc a                 ; Carry flag has bit to write
    mov R0, a
    mov MOSI, c
    setb SCLK             ; Transmit
    mov c, MISO           ; Read received bit
    mov a, R1             ; Save received bit in R1
    rlc a
    mov R1, a
    clr SCLK
    djnz R2, DO_SPI_G_LOOP
    pop acc
    ret

Delay:
	mov R3, #20
Delay_loop:
	djnz R3, Delay_loop
	ret


	
;Prints the BCD number stored in R2-R3-R4 into the 7-segment displays
Display_BCD:
	
	mov dptr, #Disp7seg

	mov a, bcd+3
	swap a
	anl a, #0FH
	movc a, @a+dptr
	mov HEX7, a
	
	mov a, bcd+3
	anl a, #0FH
	movc a, @a+dptr
	mov HEX6, a
	
	mov a, bcd+2
	swap a
	anl a, #0FH
	movc a, @a+dptr
	mov HEX5, a
	
	mov a, bcd+2
	anl a, #0FH
	movc a, @a+dptr
	mov HEX4, a
	
	mov a, bcd+1
	swap a
	anl a, #0FH
	movc a, @a+dptr
	mov HEX3, a
	
	mov a, bcd+1
	anl a, #0FH
	movc a, @a+dptr
	mov HEX2, a

	mov a, bcd+0
	swap a
	anl a, #0FH
	movc a, @a+dptr
	mov HEX1, a
	
	mov a, bcd+0
	anl a, #0FH
	movc a, @a+dptr
	mov HEX0, a
	
	ret

	
;Converts the hex number in R0-R1 to BCD in R2-R3-R4
;Changes R0 to R5 and the accumulator.
hex2bcd1:
    mov R2, #0  ; Set BCD result to 00000 
    mov R3, #0
    mov R4, #0
    mov R5, #16 ; Loop counter.
hex2bcd_L1:
    mov a, R1   ; Shift R0-R1 left through carry
    rlc a
    mov R1, a
    mov a, R0
    rlc a
    mov R0, a
    mov a, R4   ; Perform bcd+bcd+carry using BCD numbers
    addc a, R4
    da a
    mov R4, a
    mov a, R3
    addc a, R3
    da a
    mov R3, a
    mov a, R2
    addc a, R2
    mov R2, a
    djnz R5, hex2bcd_L1
    ret
    
motorswitch:
	jnb SWA.7, motor_off
	setb P0.2
	ret
motor_off:
	clr P0.2
	ret

stopServo:
	mov LEDG,#00000001B
	mov R7, #1
	ret

startServo:
	mov LEDG,#00000000B
;	mov R7, #0
	ret


;Prints the BCD number stored in R2-R3-R4 into the 7-segment displays
printBCD:
	mov dptr,#Disp7Seg
	
    ; Digit 5
    mov a,r2
    anl a, #0FH
    movc a, @a+dptr
    mov HEX4, a
    
    ; Digit 4
    mov a,r3
    swap a
    anl a, #0FH
    movc a, @a+dptr
    mov HEX3, a
    
    ; Digit 3
    mov a,r3
    anl a, #0FH
    movc a, @a+dptr
    mov HEX2, a
    
    ; Digit 2
    mov a,r4
    swap a
    anl a, #0FH
    movc a, @a+dptr
    mov HEX1, a
    
    ; Digit 1
    mov a,r4
    anl a, #0FH
    movc a, @a+dptr
    mov HEX0, a
    ret


CHECK_SWITCH:
	jnb SWA.0,showpercent
	lcall Display_BCD
	ret
showpercent:
    lcall printBCD ; show percent of cup
	ret
	
	
CHECK_TWOFIVE:	
	cjne A, B, check_less
check_less:
	JC A_is_less
A_is_greater:
	clr LEDG
	lcall stopServo
	ret 
A_is_less: 
	lcall startServo 
	ret 	
		

;Initializes timer/counter 0 as a 16-bit counter
InitTimer0:
    setb T0 ; Enable pin T0 as input
    setb T1 ; Enable pin T1 as input
    clr TR0 ; Stop timer 0
    clr TR1
    mov TMOD,#00010101B ; Set timer 0 and 1 as 16-bit counter								modified
    
    clr TR1 ; Disable timer 1
	clr TF1
	
    mov TH1, #high(50000)
    mov TL1, #low(50000)
    setb TR1 ; Enable timer 1
    setb ET1; Enable timer 1 interrupt														modified
    ret



MyProgram:
    mov SP, #7FH ; Set the stack pointer to the begining of idata
	


	mov T2CON, #00H ; Autoreload is enabled, work as a timer
    clr TR2
    clr TF2
 	
     ;Set up timer 2 to interrupt every 50ms
     ;Timer 2 reload value computed using 65536-(50e-3*(10e6/12))
    mov RCAP2H,#high(65117)
    mov RCAP2L,#low(65117)
    setb TR2
    setb ET2
    
	mov R5, #0
	mov R6, #0

	lcall InitTimer0
         
    setb EA  ; Enable all interrupts


    
    ; Turn anoying LEDs off:
	mov LEDRA, #0 ; LEDs LEDR0 to LEDR7
	mov LEDRB, #0 ; LEDs LEDR8 to LEDR15
	mov LEDRC, #0 ; LEDs LEDR16, LEDR15, and LEDG8
	mov LEDG,  #0 ; LEDs LEDG0 to LEDG7
	orl P3MOD, #00000001b ; make CE_ADC (P1.4) output
	orl P1MOD, #00010000b ; make CE_ADC (P1.4) output
	orl P0MOD, #00000110b ; make CE_ADC (P0.0) output
	lcall INIT_SPI
	mov B, #25D
	    
forever:
	;cpl LEDRA.0 ; Blinking LED for coolness sake!
	clr CE_ADC
	mov R0, #00000110B ; Start bit:1, Single:1, D2: 0
	lcall DO_SPI_G
	
	mov R0, #00000000B ; Read channel 0; D1 (bit 7): 0, D0 (bit 6):0
	lcall DO_SPI_G
	mov a, R1          ; R1 contains bits 8 to 11
	anl a, #0FH
	;mov LEDRB, a
	mov R4,a
	

	mov R0, #55H ; It doesn't matter what we transmit...
	lcall DO_SPI_G
	;mov LEDRA, R1      ; R1 contains bits 0 to 7
	mov x+0,R1
	mov x+1,R4
	mov x+2,#0
	mov x+3,#0
	Load32(y,10000)
	lcall mul32
	Load32(y,234960)
	lcall add32
	Load32(y,100)
	lcall mul32
	Load32(y,82376)
	lcall div32
	Load32(y,26000)
	lcall sub32
	load32(y,7)
	lcall sub32
	lcall hex2bcd

	setb CE_ADC
	lcall Delay

    clr TR0 ; Stop counter 0
	;Initialize count to zero
    mov TL0, #0
    mov TH0, #0
    
    setb TR0 ; Start counting
    lcall Wait1s ; Wait one second
    clr TR0 ; Stop counter 0, TH0-TL0 has now the frequency

	mov y+0, TL0
	mov y+1, TH0
	mov y+2, #0
	mov y+3, #0
	load32(x,2892000)
	lcall div32 ; This subroutine is in math32.asm
	load32(y,25)
	lcall add32

	mov	A,x+0
	cjne A,#77H,CHK_LESS

	ljmp _IS_LESS
	
CHK_LESS:

	jc	_IS_LESS

CHK_GREATER:

	mov y+0, x+0
	mov y+1, x+1
	mov y+2, x+2
	mov y+3, x+3
	load32(x,196)
	lcall sub32
	mov y+0, x+0
	mov y+1, x+1
	mov y+2, x+2
	mov y+3, x+3
	load32(x,82)
	lcall sub32
	
	;mov A, x+1
    mov A, x+0
    mov cup, x+0
	lcall CHECK_TWOFIVE


ENDING:
	mov R0, #0
    mov R1, cup
    
looop:    
    lcall hex2bcd1
	lcall CHECK_SWITCH
	lcall key_is_one
	lcall LCD_Display
	lcall motorswitch
	jmp forever
	
_IS_LESS:
	mov R0, #0h
	mov	R1, #0h
	jmp	looop



; The table below holds the 7-segment LED patterns for each digit.
; Zero turns the LED on.
Disp7Seg:
	DB 11000000B ; 0
	DB 11111001B ; 1
	DB 10100100B ; 2
	DB 10110000B ; 3
	DB 10011001B ; 4
	DB 10010010B ; 5
	DB 10000010B ; 6
	DB 11111000B ; 7
	DB 10000000B ; 8
	DB 10010000B ; 9
	DB 10001000B ; A
	DB 10000011B ; B
	DB 11000110B ; C
	DB 10100001B ; D
	DB 10000110B ; E
	DB 10001110B ; F

d0:
	DB '00%', 0	
d1:
	DB '01%', 0
d2:
	DB '02%', 0
d3:
	DB '03%', 0
d4:
	DB '04%', 0
d5:
	DB '05%', 0
d6:
	DB '06%', 0	
d7:
	DB '07%', 0
d8:
	DB '08%', 0
d9:
	DB '09%', 0
d10:
	DB '10%', 0
d11:
	DB '11%', 0
d12:
	DB '12%', 0
d13:
	DB '13%', 0
d14:
	DB '14%', 0
d15:
	DB '15%', 0
d16:
	DB '16%', 0
d17:
	DB '17%', 0
d18:
	DB '18%', 0
d19:
	DB '19%', 0
d20:
	DB '20%', 0
d21:
	DB '21%', 0
d22:
	DB '22%', 0
d23:
	DB '23%', 0
d24:
	DB '24%', 0
d25:
	DB '25%', 0
d26:
	DB '26%', 0
d27:
	DB '27%', 0
d28:
	DB '28%', 0
d29:
	DB '29%', 0
d30:
	DB '30%', 0
d31:
	DB '31%', 0
d32:
	DB '32%', 0
d33:
	DB '33%', 0
d34:
	DB '34%', 0
d35:
	DB '35%', 0
d36:
	DB '36%', 0
d37:
	DB '37%', 0
d38:
	DB '38%', 0
d39:
	DB '39%', 0
d40:
	DB '40%', 0
d41:
	DB '41%', 0
d42:
	DB '42%', 0
d43:
	DB '43%', 0
d44:
	DB '44%', 0
d45:
	DB '45%', 0
d46:
	DB '46%', 0
d47:
	DB '47%', 0
d48:
	DB '48%', 0
d49:
	DB '49%', 0
d50:
	DB '50%', 0
d51:
	DB '51%', 0
d52:
	DB '52%', 0
d53:
	DB '53%', 0
d54:
	DB '54%', 0
d55:
	DB '55%', 0
d56:
	DB '56%', 0
d57:
	DB '57%', 0
d58:
	DB '58%', 0
d59:
	DB '59%', 0
d60:
	DB '60%', 0
d61:
	DB '61%', 0
d62:
	DB '62%', 0
d63:
	DB '63%', 0
d64:
	DB '64%', 0
d65:
	DB '65%', 0
d66:
	DB '66%', 0
d67:
	DB '67%', 0
d68:
	DB '68%', 0
d69:
	DB '69%', 0
d70:
	DB '70%', 0
d71:
	DB '71%', 0
d72:
	DB '72%', 0
d73:
	DB '73%', 0
d74:
	DB '74%', 0
d75:
	DB '75%', 0
d76:
	DB '76%', 0
d77:
	DB '77%', 0
d78:
	DB '78%', 0
d79:
	DB '79%', 0
d80:
	DB '80%', 0
d81:
	DB '81%', 0
d82:
	DB '82%', 0
d83:
	DB '83%', 0
d84:
	DB '84%', 0
d85:
	DB '85%', 0
d86:
	DB '86%', 0
d87:
	DB '87%', 0
d88:
	DB '88%', 0
d89:
	DB '89%', 0
d90:
	DB '90%', 0
d91:
	DB '91%', 0
d92:
	DB '92%', 0
d93:
	DB '93%', 0
d94:
	DB '94%', 0
d95:
	DB '95%', 0
d96:
	DB '96%', 0
d97:
	DB '97%', 0
d98:
	DB '98%', 0
d99:
	DB '99%', 0
d100:
	DB '100%', 0
cup_is:
	DB 'Cup is ', 0
full:
	DB ' full', 0
tank_is:
	DB 'Fill cup to ', 0
	

END
