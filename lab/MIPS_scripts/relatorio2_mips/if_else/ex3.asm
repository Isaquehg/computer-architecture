.text
	li $t0, 5
	li $t1, 10
	li $t2, 2
	bgt  $t0, $t1, greater # if a > b
		add $t3, $t0, $t2 # a + c
		move $t1, $t3 # b = a + c
		sub $t4, $t1, $t2 # b - c
		move $t2, $t4 # c = b- c
		j end
	
	greater:
		add $t3, $t0 ,$t1 # a + b
		move $t2, $t3 # c = a + b
		sub $t3, $t1, $t2 # b- c
		move $t0, $t3 # a = b -c
		
	end: