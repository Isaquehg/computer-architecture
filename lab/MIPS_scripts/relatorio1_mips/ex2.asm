.text
	li $v0, 5
	syscall
	move $t1, $v0
	li $v0, 1
	addi $t2, $t1, 30
	move $a0, $t2
	syscall
	