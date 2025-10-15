section .text
global main

; --- ft_putstr ---

ft_putstr:
	mov rax, 1
	mov rsi, rdi
	mov rdi, 1
	mov rdx, len - 1
	syscall
	ret

; --- main ---

main:
	mov rdx, 1
	mov rsi, str
	mov rdi, 1

	.loop:
		cmp byte [rsi], 0
		je .end
		cmp byte [rsi], 92
		jne .write
		inc rsi
		cmp byte [rsi], 110
		je .newline
		cmp byte [rsi], 116
		je .tab
		cmp byte [rsi], 115
		je .str
		cmp byte [rsi], 113
		je .quote
		.change
			mov byte [rsi], bl
		.write:
			mov rax, 1
			syscall
			inc rsi
			jmp .loop

	.newline:
		mov bl, 10
		jmp .change

	.tab:
		mov bl, 9
		jmp .change

	.str:
		mov rbx, rsi
		mov rdi, copy
		call ft_putstr
		mov rdx, 1
		mov rsi, rbx
		inc rsi
		jmp .loop

	.quote:
		mov bl, 34
		jmp .change

	.end:
		xor rax, rax
		ret

; --- data ---

section .data

str: db "section .text\nglobal main\n\n; --- ft_putstr ---\n\nft_putstr:\n\tmov rax, 1\n\tmov rsi, rdi\n\tmov rdi, 1\n\tmov rdx, len - 1\n\tsyscall\n\tret\n\n; --- main ---\n\nmain:\n\tmov rdx, 1\n\tmov rsi, str\n\tmov rdi, 1\n\n\t.loop:\n\t\tcmp byte [rsi], 0\n\t\tje .end\n\t\tcmp byte [rsi], 92\n\t\tjne .write\n\t\tinc rsi\n\t\tcmp byte [rsi], 110\n\t\tje .newline\n\t\tcmp byte [rsi], 116\n\t\tje .tab\n\t\tcmp byte [rsi], 115\n\t\tje .str\n\t\tcmp byte [rsi], 113\n\t\tje .quote\n\t\t.change\n\t\t\tmov byte [rsi], bl\n\t\t.write:\n\t\t\tmov rax, 1\n\t\t\tsyscall\n\t\t\tinc rsi\n\t\t\tjmp .loop\n\n\t.newline:\n\t\tmov bl, 10\n\t\tjmp .change\n\n\t.tab:\n\t\tmov bl, 9\n\t\tjmp .change\n\n\t.str:\n\t\tmov rbx, rsi\n\t\tmov rdi, copy\n\t\tcall ft_putstr\n\t\tmov rdx, 1\n\t\tmov rsi, rbx\n\t\tinc rsi\n\t\tjmp .loop\n\n\t.quote:\n\t\tmov bl, 34\n\t\tjmp .change\n\n\t.end:\n\t\txor rax, rax\n\t\tret\n\n; --- data ---\n\nsection .data\n\nstr: db \q\s\q, 0\ncopy: db \q\s\q, 0\nlen: equ $ - copy\n\nsection .note.GNU-stack noalloc noexec nowrite align=1\n", 0
copy: db "section .text\nglobal main\n\n; --- ft_putstr ---\n\nft_putstr:\n\tmov rax, 1\n\tmov rsi, rdi\n\tmov rdi, 1\n\tmov rdx, len - 1\n\tsyscall\n\tret\n\n; --- main ---\n\nmain:\n\tmov rdx, 1\n\tmov rsi, str\n\tmov rdi, 1\n\n\t.loop:\n\t\tcmp byte [rsi], 0\n\t\tje .end\n\t\tcmp byte [rsi], 92\n\t\tjne .write\n\t\tinc rsi\n\t\tcmp byte [rsi], 110\n\t\tje .newline\n\t\tcmp byte [rsi], 116\n\t\tje .tab\n\t\tcmp byte [rsi], 115\n\t\tje .str\n\t\tcmp byte [rsi], 113\n\t\tje .quote\n\t\t.change\n\t\t\tmov byte [rsi], bl\n\t\t.write:\n\t\t\tmov rax, 1\n\t\t\tsyscall\n\t\t\tinc rsi\n\t\t\tjmp .loop\n\n\t.newline:\n\t\tmov bl, 10\n\t\tjmp .change\n\n\t.tab:\n\t\tmov bl, 9\n\t\tjmp .change\n\n\t.str:\n\t\tmov rbx, rsi\n\t\tmov rdi, copy\n\t\tcall ft_putstr\n\t\tmov rdx, 1\n\t\tmov rsi, rbx\n\t\tinc rsi\n\t\tjmp .loop\n\n\t.quote:\n\t\tmov bl, 34\n\t\tjmp .change\n\n\t.end:\n\t\txor rax, rax\n\t\tret\n\n; --- data ---\n\nsection .data\n\nstr: db \q\s\q, 0\ncopy: db \q\s\q, 0\nlen: equ $ - copy\n\nsection .note.GNU-stack noalloc noexec nowrite align=1\n", 0
len: equ $ - copy

section .note.GNU-stack noalloc noexec nowrite align=1
