#include "ruledef_low.asm"

load 6
mov r0, r5

load 1
mov r0, r2
mov in, r1
calc sub
mov r3, r4

load 22
mov r4, r3 
cond less_eq_0

; ~~ code block ~~
load 6
mov r0, r1
mov r5, r2
calc add

mov r3, r5 

load 1
mov r0, r2
mov r4, r1
calc sub
mov r3, r4
; ~~ end code ~~

load 7
jmp

mov r5, out
load 22
jmp