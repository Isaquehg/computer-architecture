.text
	li $t1, 10
	li $t2, 0
	loop: bgt $t2, $t1, exit
		addi $t2, $t2, 1
		li $v0, 1
		move $a0, $t2
		syscall
		j loop
	exit: