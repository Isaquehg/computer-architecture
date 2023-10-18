.text 
	li $t0, 0x50
	li $t1, 0x40
	li $t2, 0x30
	li $t3, 0x20
	li $t4, 0x10

	beq $t3, $t4, L1
		add $t0, $t1, $t2
		j fim
	L1: sub $t0, $t0, $t3
	fim: 