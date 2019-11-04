section .data
max:dq 5
file_prefix:db"Sully_%d.s", 0
cmd:db"nasm -f macho64 -DOSX Sully_%1$d.s && ld Sully_%1$d.o -macosx_version_min 10.8 -lSystem -o Sully && ./Sully", 0
str:db"section .data%1$cmax:dq %4$d%1$cfile_prefix:db%2$cSully_%%d.s%2$c, 0%1$ccmd:db%2$cnasm -f macho64 -DOSX Sully_%%1$d.s && ld Sully_%%1$d.o -macosx_version_min 10.8 -lSystem -o Sully && ./Sully%2$c, 0%1$cstr:db%2$c%3$s%2$c, 0%1$csection .bss%1$cfile_buf resb 64%1$cbuf resb 255%1$csection .text%1$cglobal _main%1$cextern _printf%1$cextern _dprintf%1$cextern _sprintf%1$cextern _access%1$cextern _system%1$c%1$c_main:%1$cpush rbp%1$cmov rbp, rsp%1$cmov r15, [rel max]%1$c;Stop condition%1$ccmp r15, 0%1$cje .exit%1$c;Build file name%1$clea rdi, [rel file_buf]%1$clea rsi, [rel file_prefix]%1$cmov rdx, r15%1$ccall _sprintf%1$c;Check file exist%1$clea rdi, [rel file_buf]%1$cmov rsi, 0%1$ccall _access%1$c;Decrease%1$ccmp rax, -1%1$cje .endif%1$csub r15, 1%1$c.endif:%1$c;Rebuild file name%1$clea rdi, [rel file_buf]%1$clea rsi, [rel file_prefix]%1$cmov rdx, r15%1$ccall _sprintf%1$c;Create file%1$cmov rax, 0x2000005%1$clea rdi, [rel file_buf]%1$cmov rsi, 0x0201%1$cmov rdx, 0777%1$csyscall%1$ccmp rax, -1%1$cje .exit%1$c;Write prog into it%1$cmov rdi, rax%1$clea rsi, [rel str]%1$cmov rdx, 10%1$cmov rcx, 34%1$clea r8, [rel str]%1$cmov r9, r15%1$ccall _dprintf%1$c;Compile and run%1$clea rdi, [rel buf]%1$clea rsi, [rel cmd]%1$cmov rdx, r15%1$ccall _sprintf%1$clea rdi, [rel buf]%1$ccall _system%1$c.exit:%1$cleave%1$cret", 0
section .bss
file_buf resb 64
buf resb 255
section .text
global _main
extern _printf
extern _dprintf
extern _sprintf
extern _access
extern _system

_main:
push rbp
mov rbp, rsp
mov r15, [rel max]
;Stop condition
cmp r15, 0
je .exit
;Build file name
lea rdi, [rel file_buf]
lea rsi, [rel file_prefix]
mov rdx, r15
call _sprintf
;Check file exist
lea rdi, [rel file_buf]
mov rsi, 0
call _access
;Decrease
cmp rax, -1
je .endif
sub r15, 1
.endif:
;Rebuild file name
lea rdi, [rel file_buf]
lea rsi, [rel file_prefix]
mov rdx, r15
call _sprintf
;Create file
mov rax, 0x2000005
lea rdi, [rel file_buf]
mov rsi, 0x0201
mov rdx, 0777
syscall
cmp rax, -1
je .exit
;Write prog into it
mov rdi, rax
lea rsi, [rel str]
mov rdx, 10
mov rcx, 34
lea r8, [rel str]
mov r9, r15
call _dprintf
;Compile and run
lea rdi, [rel buf]
lea rsi, [rel cmd]
mov rdx, r15
call _sprintf
lea rdi, [rel buf]
call _system
.exit:
leave
ret