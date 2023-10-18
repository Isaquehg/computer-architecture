.text
addi $t1, $0, 0x20 # $t1 <- 0x20
addi $t2, $0, 0x30 # $t2 <- 0x30
add $t3, $t2, $t1  # $t3 <- $t2 + $t1
sub $t4, $t2, $t1 # $t4 <- $t2 - $t1
or $t5, $t2, $t3 # Or
xori $t6, $t2, 0x23 # Xor