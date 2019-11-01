;First comment
%define USELESS1 1
%define USELESS2 2
%define MAIN MAIN_ROUTINE

%macro MAIN_ROUTINE 0
section .data
file:db"Grace_kid.s", 0
str:db"%1$cFirst comment%2$c%%define USELESS1 1%2$c%%define USELESS2 2%2$c%%define MAIN MAIN_ROUTINE%2$c%2$c%%macro MAIN_ROUTINE 0%2$csection .data%2$cfile:db%3$cGrace_kid.s%3$c, 0%2$cstr:db%3$c%4$s%3$c, 0%2$csection .text%2$cglobal _main%2$cextern _dprintf%2$c_main:%2$cpush rbp%2$cmov rbp, rsp%2$csub rsp, 16%2$cmov rax, 0x2000005%2$cmov rdi, file%2$cmov rsi, 0x0201%2$cmov rdx, 0777%2$csyscall%2$cmov rdi, rax%2$cmov rsi, str%2$cmov rdx, 59%2$cmov rcx, 10%2$cmov r8, 34%2$cmov r9, str%2$ccall _dprintf%2$cleave%2$cret%2$c%%endmacro%2$c%2$cMAIN", 0
section .text
global _main
extern _dprintf
_main:
push rbp
mov rbp, rsp
sub rsp, 16
mov rax, 0x2000005
mov rdi, file
mov rsi, 0x0201
mov rdx, 0777
syscall
mov rdi, rax
mov rsi, str
mov rdx, 59
mov rcx, 10
mov r8, 34
mov r9, str
call _dprintf
leave
ret
%endmacro

MAIN