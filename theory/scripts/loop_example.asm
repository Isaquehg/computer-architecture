.text
	li $t1, 6
	li $t2, 2
	loop: 
		bge $t1, 10, maior
			addi $t1, $t1, 1
			addi $t2, $t2, 2
			j loop
	maior:
		