; interrupts are already disabled!

; Basic procedure:
; - push A, X, Y, SP for current task
; - copy ZP to process struct
; - copy SP to process struct
; - copy kernel process SP
; - copy kernel process ZP
; - do task select
; - copy SP to kernel struct
; - copy ZP to kernel struct
; - copy selected process SP
; - copy selected process ZP
; - pop SP, Y, X, A for new task
; - enable interrupts
; - RTI

ctxsw:
	; push A, X, Y, SP for current task
	PHA
	PHX
	PHY
	TSX			; stack pointer
	PHX

	; copy ZP to process struct


	; copy SP to process struct


	; copy kernel process SP


	; copy kernel process ZP


	; do task select


	; copy ZP to kernel struct


	; copy SP to kernel struct


	; copy selected process SP


	; copy selected process ZP


	; pop SP, Y, X, A for new task
	PLX
	TXS			; stack pointer
	PLY
	PLX
	PLA

	; enable interrupts
	CLI

	; all done!
	RTI

