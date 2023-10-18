.text
	li $t0, 0 # cont
	li $t1, 10 # i
	
	for:
		bgtz $t1, loop # while i > 0
			j exit
			
	loop:
		addi $t0, $t0, 5 # cont += 5
		addi $t1, $t1, -2 # i -= 2
		j for
		
	exit:
