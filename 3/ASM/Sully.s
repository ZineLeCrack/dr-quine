section .text
global main

%macro PUTCHAR 1
	mov byte [tmp], %1
	mov rax, 1
	mov rdi, r9
	lea rsi, [tmp]
	mov rdx, 1
	syscall
%endmacro

%macro OPEN_FILE 0
	mov rax, 2
	mov rdi, filename
	mov rsi, 0102o
	mov rdx, 0644o
	syscall
	cmp rax, 0
	jl .fail
	mov r9, rax
%endmacro

%macro PUTSTR 0
	mov rax, 1
	mov rdi, r9
	mov rsi, str
	mov rdx, len - 1
	syscall
%endmacro

main:
	mov r8b, 5
	cmp r8b, 0
	jle .end
	add r8b, 47
	mov byte [filename + 6], r8b
	OPEN_FILE
	mov rbx, str
	.loop:
		cmp byte [rbx], 0
		je .end
		cmp byte [rbx], 92
		jne .normal
		inc rbx
		cmp byte [rbx], 110
		je .newline
		cmp byte [rbx], 116
		je .tab
		cmp byte [rbx], 113
		je .quote
		cmp byte [rbx], 115
		je .str
		cmp byte [rbx], 120
		je .number
	.normal:
		mov cl, byte [rbx]
	.write:
		PUTCHAR cl
		inc rbx
		jmp .loop
	.end:
		xor rax, rax
	.fail:
		ret

	.newline:
		mov cl, 10
		jmp .write

	.tab:
		mov cl, 9
		jmp .write

	.quote:
		mov cl, 34
		jmp .write

	.str:
		PUTSTR
		inc rbx
		jmp .loop

	.number:
		mov cl, r8b
		jmp .write

section .data
filename: db "Sully_X.s", 0
str: db "section .text\nglobal main\n\n%macro PUTCHAR 1\n\tmov byte [tmp], %1\n\tmov rax, 1\n\tmov rdi, r9\n\tlea rsi, [tmp]\n\tmov rdx, 1\n\tsyscall\n%endmacro\n\n%macro OPEN_FILE 0\n\tmov rax, 2\n\tmov rdi, filename\n\tmov rsi, 0102o\n\tmov rdx, 0644o\n\tsyscall\n\tcmp rax, 0\n\tjl .fail\n\tmov r9, rax\n%endmacro\n\n%macro PUTSTR 0\n\tmov rax, 1\n\tmov rdi, r9\n\tmov rsi, str\n\tmov rdx, len - 1\n\tsyscall\n%endmacro\n\nmain:\n\tmov r8b, \x\n\tcmp r8b, 0\n\tjle .end\n\tadd r8b, 47\n\tmov byte [filename + 6], r8b\n\tOPEN_FILE\n\tmov rbx, str\n\t.loop:\n\t\tcmp byte [rbx], 0\n\t\tje .end\n\t\tcmp byte [rbx], 92\n\t\tjne .normal\n\t\tinc rbx\n\t\tcmp byte [rbx], 110\n\t\tje .newline\n\t\tcmp byte [rbx], 116\n\t\tje .tab\n\t\tcmp byte [rbx], 113\n\t\tje .quote\n\t\tcmp byte [rbx], 115\n\t\tje .str\n\t\tcmp byte [rbx], 120\n\t\tje .number\n\t.normal:\n\t\tmov cl, byte [rbx]\n\t.write:\n\t\tPUTCHAR cl\n\t\tinc rbx\n\t\tjmp .loop\n\t.end:\n\t\txor rax, rax\n\t.fail:\n\t\tret\n\n\t.newline:\n\t\tmov cl, 10\n\t\tjmp .write\n\n\t.tab:\n\t\tmov cl, 9\n\t\tjmp .write\n\n\t.quote:\n\t\tmov cl, 34\n\t\tjmp .write\n\n\t.str:\n\t\tPUTSTR\n\t\tinc rbx\n\t\tjmp .loop\n\n\t.number:\n\t\tmov cl, r8b\n\t\tjmp .write\n\nsection .data\nfilename: db \qSully_X.s\q, 0\nstr: db \q\s\q, 0\nlen: equ $ - str\n\nsection .bss\ntmp resb 1\n\nsection .note.GNU-stack noalloc noexec nowrite align=1\n", 0
len: equ $ - str

section .bss
tmp resb 1

section .note.GNU-stack noalloc noexec nowrite align=1
