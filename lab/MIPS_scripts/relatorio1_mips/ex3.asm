.text
	li $t1, 54
	li $t2, 45
	li $v0, 1
	add $t3, $t1, $t2
	move $a0, $t3
	syscall
	