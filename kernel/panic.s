;
; panic - print error and busy-loop
;
; arguments:
;	a = low byte of string
;	x = high byte of string
;
	.import		kputs
	.export		panic

.segment "CODE"

panic:
	PHA		; save for later
	TXA
	PHA
	LDA #<panic_msg
	LDX #>panic_msg
	JSR kputs
	PLA
	TAX
	PLA
	JSR kputs
L0:
	JMP L0


.segment "DATA"
panic_msg:
	.BYTE "PANIC: ", $00
