.data
num: .byte 0x20
.text
addi $t1, $0, 0x50 # $t1 <- 50 (equivalent to move)
addi $t2, $0, 0x30 # $t2 <- 30
add $t3, $t1, $t2 # $t3 <- 80
sub $t4, $t1, $t2 #$t4 <- 20
mul $t5, $t1, $t2 # $t5 <- 1500 (Overflow)
div $t6, $t1, $t2 # $t6 <- (Decimal)
addi $t5, $t1, -0x10 # Subtract
or $t3, $t1, $t1
not $t4, $t1

# subi doesn't exist in MIPS -> use addi with minus sinal instead! (meta-code)
# move command too...