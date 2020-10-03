align 16

extern printf
extern scanf
extern revArray
extern showArray
extern getData
extern getchar
extern stdin
extern clearerr

global ctrl

segment .data

initialMsg db "Welcome to Array Management.", 10, 0
readyMsg db "Please enter integer data to be stored in your array. Press Cntl+D and Cntl+D to terminate: ", 0
correctMsg db "Is this correct (y or n)? ", 0
revMsg db "The data have been reversed. This is the array", 10, 0
stringformat db "%s", 0
numberformat db "%ld", 0

segment .bss
array resq 20

segment .text
ctrl:

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

;================================================init message
mov qword rax, 0
mov rdi, stringformat
mov rsi, initialMsg
call printf

restart:
;=================================================call get Data
mov qword rax, 0
mov rdi, stringformat
mov rsi, readyMsg
call printf

push qword 0
mov rdi, array
mov rsi, 20
call getData			;"numbers" long array now holds the input integers
mov r15, rax			;The amount of integers input is stored in r10
pop rax

;=================================================call show array
mov rdi, array
mov rsi, r15
call showArray

;==================================================call to correct message
mov qword rax, 0
mov rdi, stringformat
mov rsi, correctMsg
call printf

mov rax,0                ;Clear the input stream; establish the input stream as valid.
mov rdi,[stdin]
call clearerr

mov rax,0
call getchar       ;Get the one character response from the user.
mov rbx,rax
call getchar       ;Remove from input stream the enter key that followed y or n.

;==================================================compare to y
cmp rbx, 121
jne restart

;=================================================call reverse
mov rdi, array
mov rsi, r15
call revArray

;================================================init message
mov qword rax, 0
mov rdi, stringformat
mov rsi, revMsg
call printf

;=================================================call show array
mov rdi, array
mov rsi, r15
call showArray

mov rax, r15

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