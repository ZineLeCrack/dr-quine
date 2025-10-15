section .text
global main

; --- main() ---

main:
	; --- openat("Colleen.s", O_RDONLY) ---
	mov rax, 257
	mov rdi, -100
	lea rsi, [rel file]
	xor rdx, rdx
	xor r10, r10
	syscall

	cmp rax, 0
	jl .err
	mov r12, rax

	.loop:
		; --- read(fd, buf, 1024) ---
		mov rax, 0
		mov rdi, r12
		lea rsi, [rel buf]
		mov rdx, 1024
		syscall

		cmp rax, 0
		jle .end
		mov rbx, rax

		; --- write(1, buf, rbx) ---
		mov rax, 1
		mov rdi, 1
		lea rsi, [rel buf]
		mov rdx, rbx
		syscall

		jmp .loop

	.end:
		; --- close(fd) ---
		mov rax, 3
		mov rdi, r12
		syscall

		xor rax, rax
		ret

	.err:
		mov eax, 1
		ret

; --- file = "Colleen.s" ---

section .data
file: db "Colleen.s", 0

; --- buf (size = 1024 Bytes) ---

section .bss
buf: resb 1024

section .note.GNU-stack noalloc noexec nowrite align=1
