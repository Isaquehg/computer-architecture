.text 
#a)
lw $t1, 24($s2) #6 * 4 = 24 -> Sempre multiplicar por 4
add $t1, $t1, $s0
sw $t1, 60($s1)

#b)
lw $t1, 0($s2)
lw $t2, 24($s2)
lw $t3, 20($t2)
add $t1, $t1,  $t2
add $t1, $t1,  $t3
sw $t1, 60($s1)
