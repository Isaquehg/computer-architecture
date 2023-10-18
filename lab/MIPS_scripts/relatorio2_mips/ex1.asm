.data
	 value1: .float 1.10
	value2: .float 2.25
	value3: .float 3.43
	value4: .float 4.89

.text
	lw $t0, value1
	sll $t1, $t0, 8
	srl $t2, $t0, 4
	
	lw $t0, value2
	sll $t1, $t0, 8
	srl $t2, $t0, 4
	
	lw $t0, value3
	sll $t1, $t0, 8
	srl $t2, $t0, 4
	
	lw $t0, value4
	sll $t1, $t0, 8
	srl $t2, $t0, 4