#subruledef calculation
{
    or => 0b000000
    nand => 0b000001
    nor => 0b000010
    and => 0b000011
    add => 0b000100
    sub => 0b000101
}

#subruledef condition
{
    never => 0b000000
    eq_0 => 0b000001
    less_0 => 0b000010
    less_eq_0 => 0b000011
    always => 0b000100
    not_0 => 0b000101
    bigger_eq_0 => 0b000110
    bigger_0 => 0b000111
}

#subruledef IO
{
    in => 0b110
    out => 0b110
}

#ruledef
{

    load {value: u6} => 0b00 @ value
    calc {c: calculation} => 0b01 @ c
    mov r{r1: u3}, r{r2: u3} => 0b10 @ r1 @ r2
    mov {inout: IO}, r{r2: u3} => 0b10 @ inout @ r2
    mov r{r1: u3}, {inout: IO} => 0b10 @ r1 @ inout
    cond {c: condition} => 0b11 @ c

    jmp => asm {cond always}

    ; all calculation modes

}