section .text
global main

; Grace

%macro PUTCHAR 1
	mov byte [tmp], %1
	mov rax, 1
	mov rdi, r9
	lea rsi, [tmp]
	mov rdx, 1
	syscall
%endmacro

%macro PUTCOPY 0
	mov rax, 1
	mov rdi, r9
	mov rsi, copy
	mov rdx, len - 1
	syscall
%endmacro

%macro OPEN_FILE 0
	main:
		mov rax, 2
		mov rdi, file
		mov rsi, 0102o
		mov rdx, 0644o
		syscall
		cmp rax, 0
		jl .fail
		mov r9, rax
%endmacro

OPEN_FILE
	mov rbx, str
	.loop:
		cmp byte [rbx], 0
		je .end
		cmp byte [rbx], 92
		jne .write
		inc rbx
		cmp byte [rbx], 110
		je .newline
		cmp byte [rbx], 116
		je .tab
		cmp byte [rbx], 113
		je .quote
		cmp byte [rbx], 115
		je .str
		.write:
			mov cl,  byte [rbx]
			PUTCHAR cl
			inc rbx
			jmp .loop

	.newline:
		mov byte [rbx], 10
		jmp .write

	.tab:
		mov byte [rbx], 9
		jmp .write

	.quote:
		mov byte [rbx], 34
		jmp .write

	.str:
		PUTCOPY
		inc rbx
		jmp .loop

	.end:
		mov rdi, r9
		mov rax, 3
		syscall
	.fail:
		xor rax, rax
		ret

section .data
file: db "Grace_kid.s", 0
str: db "section .text\nglobal main\n\n; Grace\n\n%macro PUTCHAR 1\n\tmov byte [tmp], %1\n\tmov rax, 1\n\tmov rdi, r9\n\tlea rsi, [tmp]\n\tmov rdx, 1\n\tsyscall\n%endmacro\n\n%macro PUTCOPY 0\n\tmov rax, 1\n\tmov rdi, r9\n\tmov rsi, copy\n\tmov rdx, len - 1\n\tsyscall\n%endmacro\n\n%macro OPEN_FILE 0\n\tmain:\n\t\tmov rax, 2\n\t\tmov rdi, file\n\t\tmov rsi, 0102o\n\t\tmov rdx, 0644o\n\t\tsyscall\n\t\tcmp rax, 0\n\t\tjl .fail\n\t\tmov r9, rax\n%endmacro\n\nOPEN_FILE\n\tmov rbx, str\n\t.loop:\n\t\tcmp byte [rbx], 0\n\t\tje .end\n\t\tcmp byte [rbx], 92\n\t\tjne .write\n\t\tinc rbx\n\t\tcmp byte [rbx], 110\n\t\tje .newline\n\t\tcmp byte [rbx], 116\n\t\tje .tab\n\t\tcmp byte [rbx], 113\n\t\tje .quote\n\t\tcmp byte [rbx], 115\n\t\tje .str\n\t\t.write:\n\t\t\tmov cl,  byte [rbx]\n\t\t\tPUTCHAR cl\n\t\t\tinc rbx\n\t\t\tjmp .loop\n\n\t.newline:\n\t\tmov byte [rbx], 10\n\t\tjmp .write\n\n\t.tab:\n\t\tmov byte [rbx], 9\n\t\tjmp .write\n\n\t.quote:\n\t\tmov byte [rbx], 34\n\t\tjmp .write\n\n\t.str:\n\t\tPUTCOPY\n\t\tinc rbx\n\t\tjmp .loop\n\n\t.end:\n\t\tmov rdi, r9\n\t\tmov rax, 3\n\t\tsyscall\n\t.fail:\n\t\txor rax, rax\n\t\tret\n\nsection .data\nfile: db \qGrace_kid.s\q, 0\nstr: db \q\s\q, 0\ncopy: db \q\s\q, 0\nlen: equ $ - copy\n\nsection .bss\ntmp resb 1\n\nsection .note.GNU-stack noalloc noexec nowrite align=1\n", 0
copy: db "section .text\nglobal main\n\n; Grace\n\n%macro PUTCHAR 1\n\tmov byte [tmp], %1\n\tmov rax, 1\n\tmov rdi, r9\n\tlea rsi, [tmp]\n\tmov rdx, 1\n\tsyscall\n%endmacro\n\n%macro PUTCOPY 0\n\tmov rax, 1\n\tmov rdi, r9\n\tmov rsi, copy\n\tmov rdx, len - 1\n\tsyscall\n%endmacro\n\n%macro OPEN_FILE 0\n\tmain:\n\t\tmov rax, 2\n\t\tmov rdi, file\n\t\tmov rsi, 0102o\n\t\tmov rdx, 0644o\n\t\tsyscall\n\t\tcmp rax, 0\n\t\tjl .fail\n\t\tmov r9, rax\n%endmacro\n\nOPEN_FILE\n\tmov rbx, str\n\t.loop:\n\t\tcmp byte [rbx], 0\n\t\tje .end\n\t\tcmp byte [rbx], 92\n\t\tjne .write\n\t\tinc rbx\n\t\tcmp byte [rbx], 110\n\t\tje .newline\n\t\tcmp byte [rbx], 116\n\t\tje .tab\n\t\tcmp byte [rbx], 113\n\t\tje .quote\n\t\tcmp byte [rbx], 115\n\t\tje .str\n\t\t.write:\n\t\t\tmov cl,  byte [rbx]\n\t\t\tPUTCHAR cl\n\t\t\tinc rbx\n\t\t\tjmp .loop\n\n\t.newline:\n\t\tmov byte [rbx], 10\n\t\tjmp .write\n\n\t.tab:\n\t\tmov byte [rbx], 9\n\t\tjmp .write\n\n\t.quote:\n\t\tmov byte [rbx], 34\n\t\tjmp .write\n\n\t.str:\n\t\tPUTCOPY\n\t\tinc rbx\n\t\tjmp .loop\n\n\t.end:\n\t\tmov rdi, r9\n\t\tmov rax, 3\n\t\tsyscall\n\t.fail:\n\t\txor rax, rax\n\t\tret\n\nsection .data\nfile: db \qGrace_kid.s\q, 0\nstr: db \q\s\q, 0\ncopy: db \q\s\q, 0\nlen: equ $ - copy\n\nsection .bss\ntmp resb 1\n\nsection .note.GNU-stack noalloc noexec nowrite align=1\n", 0
len: equ $ - copy

section .bss
tmp resb 1

section .note.GNU-stack noalloc noexec nowrite align=1
