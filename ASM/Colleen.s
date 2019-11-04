;First comment
section .data
str:db"%1$cFirst comment%2$csection .data%2$cstr:db%3$c%4$s%3$c, 0%2$csection .text%2$cglobal _main%2$cglobal _func%2$cextern _printf%2$c_func:%2$cret%2$c_main:%2$c%1$cSecond comment%2$cpush rbp%2$cmov rbp, rsp%2$csub rsp, 16%2$clea rdi, [rel str]%2$cmov rsi, 59%2$cmov rdx, 10%2$cmov rcx, 34%2$cmov r8, str%2$ccall _printf%2$ccall _func%2$cleave%2$cret%2$c", 0
section .text
global _main
global _func
extern _printf
_func:
ret
_main:
;Second comment
push rbp
mov rbp, rsp
sub rsp, 16
lea rdi, [rel str]
mov rsi, 59
mov rdx, 10
mov rcx, 34
mov r8, str
call _printf
call _func
leave
ret
