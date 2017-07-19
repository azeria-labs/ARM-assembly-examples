/* Code snipped from the tutorial 'Writing ARM Shellcode' (https://azeria-labs.com/writing-arm-shellcode/), first example containing null-bytes */

.section .text
.global _start

_start:
        add r0, pc, #12
        mov r1, #0
        mov r2, #0
        mov r7, #11
        svc #0

.ascii "/bin/sh\0"
