.text
	li $t1, 10
	li $t2, 0
	beq $t1, $t2, equal
		sub  $t3, $t1, $t2
		j exit
	equal:
		add $t3, $t1, $t2
	exit: