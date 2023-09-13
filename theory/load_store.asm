.data
n1: .byte 0x20
n2: .byte 0x60
m: .byte

.text
lb $t1, n1
lb $t2, n2
add $t3, $t1, $t2
srl $t4, $t3, 1

la $t5, m
sb $t4, 4($t5)

li $t1, 0x10203040
li $t2, 0x5060
li $t3, 0x70

li $s0, 0x10010000
sw $t1, 0($s0)
sh $t2, 4($s0)
sb $t3, 6($s0)