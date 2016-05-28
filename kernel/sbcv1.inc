;
; Definitions for SBCv1
;

ACIA_DATA	= $C000
ACIA_STATUS	= $C001
ACIA_COMMAND	= $C002
ACIA_CONTROL	= $C003

.ZEROPAGE
ptr1:
.WORD $0000

memcpysrc:
.WORD $0000

memcpydst:
.WORD $0000

memcpyblk:
.WORD $0000
