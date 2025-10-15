section .text
global ft_strlen
global main

; --- ft_strlen() ---

ft_strlen:
	xor rax, rax
	.loop:
		cmp byte [rdi], 0
		je .end
		inc rdi
		inc rax
		jmp .loop
	.end:
		ret

; --- main() ---

main:
	mov rdi, str
	call ft_strlen
	mov rdi, 1
	mov rsi, str
	mov edx, eax
	mov rax, 1
	syscall
	xor rax, rax
	ret

; --- data ---

section .data
str: db "section .text", 10, "global ft_strlen", 10, "global main", 10, "", 10, "; --- ft_strlen() ---", 10, "", 10, "ft_strlen:", 10, "	xor rax, rax", 10, "	.loop:", 10, "		cmp byte [rdi], 0", 10, "		je .end", 10, "		inc rdi", 10, "		inc rax", 10, "		jmp .loop", 10, "	.end:", 10, "		ret", 10, "", 10, "; --- main() ---", 10, "", 10, "main:", 10, "	mov rdi, str", 10, "	call ft_strlen", 10, "	mov rdi, 1", 10, "	mov rsi, str", 10, "	mov edx, eax", 10, "	mov rax, 1", 10, "	syscall", 10, "	xor rax, rax", 10, "	ret", 10, "", 10, "; --- data ---", 10, "", 10, "section .data", 10, "str: db", 10, "", 10, "section .note.GNU-stack noalloc noexec nowrite align=1", 10, 0

section .note.GNU-stack noalloc noexec nowrite align=1
