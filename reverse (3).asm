;Garinn Morton
;Assembly MW 1-2:50
;Assignment 4

global revArray

segment .data

segment .bss

segment .text

revArray:
push rbp
mov rbp, rsp
push rbx
push rcx
push rdx
push rdi
push rsi
push r8
push r9
push r10
push r11
push r12
push r13
push r14
push r15

;rdi holds the array address
;rsi holds the number of digits

mov r14, rdi ;array
mov r13, rsi ;size
dec r13
mov r12, 0 ;count

loop:
mov r15, [r14+8*r12]
mov rbx, [r14+8*r13]
mov [r14+8*r12], rbx
mov [r14+8*r13], r15
inc r12
dec r13

cmp r12, r13
jl loop

exit:
pop r15
pop r14
pop r13
pop r12
pop r11
pop r10
pop r9
pop r8
pop rsi
pop rdi
pop rdx
pop rcx
pop rbx
pop rbp

ret