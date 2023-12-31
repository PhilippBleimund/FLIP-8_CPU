#include "ruledef_low.asm"

load 22

mov r0, r2 
calc add 
load 2
mov r0, r1
calc add
mov r3, r2

load 5
jmp

mov r3, out