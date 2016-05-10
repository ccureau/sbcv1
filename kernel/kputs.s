;
; kputs - print null-terminated string to console
;
; arguments:
;	a = low byte of string
;	x = high byte of string
;
	.import		kputc
	.export		kputs
	.include 	"sbcv1.inc"

.segment "CODE"

kputs:
	STA ptr1
	TXA		; high byte
	STA ptr1+1
	LDY #$00
L0:
	LDA (ptr1),y	
	BEQ exit
	JSR kputc
	INY
	BNE L0
	INC ptr1+1
	JMP L0
exit:
	RTS
