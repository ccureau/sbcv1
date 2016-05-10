
	.include	"sbcv1.inc"
	.import		panic

.segment "CODE"
start:
	LDA #$00
	STA ACIA_STATUS
	LDA %00001011
	STA ACIA_COMMAND
	LDA %00011110
	STA ACIA_CONTROL

	LDA #<message
	LDX #>message
	JSR panic

.segment "DATA"
message:
	.BYTE "testing", $00

.segment "VECTORS"
.word start
.word start
.word start

