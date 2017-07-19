/* write() assembly code from the tutorial 'Writing ARM Shellcode' (https://azeria-labs.com/writing-arm-shellcode/), */

.data
string: .asciz "Azeria Labs\n"  @ .asciz adds a null-byte to the end of the string
after_string:
.set size_of_string, after_string - string

.text
.global _start

_start:
   mov r0, #1               @ STDOUT
   ldr r1, addr_of_string   @ memory address of string
   mov r2, #size_of_string  @ size of string
   mov r7, #4               @ write syscall
   swi #0                   @ invoke syscall

_exit:
   mov r7, #1               @ exit syscall
   swi 0                    @ invoke syscall

addr_of_string: .word string
