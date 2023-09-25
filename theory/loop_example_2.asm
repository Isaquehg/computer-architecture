.text
	li $t1, 1
	$t2, 2
	
	for:
		blt $t1, 5, loop
			j exit
	loop:
		addi $t1, $t1, 1
		addi $t2, $t2, 2
		j for
	exit: