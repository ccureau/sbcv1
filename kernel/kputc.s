;
; kputc - print one character to console
;
; registers: a = character to print
; 
	.export 		kputc
	.include		"sbcv1.inc"

.segment "CODE"

kputc:
	JSR write
	CMP #$0D	; Is this a newline?
	BNE exit
	LDA #$0A	; add linefeed
	JSR write
	JMP exit
write:
	PHA			; character to print
	LDA ACIA_STATUS
	AND #$10
	BEQ write
	PLA
	STA ACIA_DATA
exit:
	RTS
