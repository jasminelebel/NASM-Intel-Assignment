extern	printf

section .data
    dividend dq 15
    divisor dq 4
    fmt_with_remainder db "         %d + %d/%d", 10, 0
    fmt_no_remainder db "           %d", 10, 0

section .text
    global main

main:
    mov rbx, 0
    mov rax, [dividend]

_loop:
    add rbx, 1
    sub rax, [divisor]
    cmp rax, [divisor]
    jge _loop
    cmp rax,0
    jz _print_no_remainder

_print:
    push rbp

	mov	rdi,fmt_with_remainder
	mov	rsi,rbx
    mov rdx,rax
    mov rcx, [divisor]
	mov	rax,0
    call printf

	pop	rbp
    jmp _exit

_print_no_remainder:
    push rbp

	mov	rdi,fmt_no_remainder
	mov	rsi,rbx
	mov	rax,0
    call printf

	pop	rbp

_exit:
	mov	rax,0
	ret