;First comment
%define USELESS1 1
%define USELESS2 2
%define MAIN MAIN_ROUTINE

%macro MAIN_ROUTINE 0
section .data
file:db"Grace_kid.s", 0
str:db"%1$cFirst comment%2$c%%define USELESS1 1%2$c%%define USELESS2 2%2$c%%define MAIN MAIN_ROUTINE%2$c%2$c%%macro MAIN_ROUTINE 0%2$csection .data%2$cfile:db%3$cGrace_kid.s%3$c, 0%2$cstr:db%3$c%4$s%3$c, 0%2$csection .text%2$cglobal _main%2$cextern _dprintf%2$c_main:%2$cpush rbp%2$cmov rbp, rsp%2$csub rsp, 16%2$cmov rax, 0x2000005%2$clea rdi, [rel file]%2$cmov rsi, 0x0201%2$cmov rdx, 0777%2$csyscall%2$ccmp rax, -1%2$cje .exit%2$cmov rdi, rax%2$clea rsi, [rel str]%2$cmov rdx, 59%2$cmov rcx, 10%2$cmov r8, 34%2$clea r9, [rel str]%2$ccall _dprintf%2$c.exit:%2$cleave%2$cret%2$c%%endmacro%2$c%2$cMAIN", 0
section .text
global _main
extern _dprintf
_main:
push rbp
mov rbp, rsp
sub rsp, 16
mov rax, 0x2000005
lea rdi, [rel file]
mov rsi, 0x0201
mov rdx, 0777
syscall
cmp rax, -1
je .exit
mov rdi, rax
lea rsi, [rel str]
mov rdx, 59
mov rcx, 10
mov r8, 34
lea r9, [rel str]
call _dprintf
.exit:
leave
ret
%endmacro

MAIN