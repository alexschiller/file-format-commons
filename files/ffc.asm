section	.text
    global main         ;must be declared for using gcc

main:	                ;tell linker entry point

	mov	edx, len	    ;message length
	mov	ecx, msg	    ;message to write
	mov	ebx, 1	        ;file descriptor (stdout)
	mov	eax, 4	        ;system call number (sys_write)
	int	0x80	        ;call kernel

	mov	eax, 1	        ;system call number (sys_exit)
	int	0x80	        ;call kernel

section	.data

msg	db	'File Format Commons asm 0110011001101001011011000110010100100000011001100111111011100100110110101100001011101000010000001100011011011110110110101101101011011110110111001110011',0xa	;our dear string
len	equ	$ - msg			;length of our dear string
