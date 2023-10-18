.text
	# Duas formas de carregar valores -> li e addi
	addi $t1, $t0, 10
	li $t2, 2
	blt $t1, 10, menor
		addi $t2, $t2, -1
		j exit
	menor:
		addi $t2, $t2,  2
	exit: