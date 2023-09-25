.data
	input_str: .asciiz "Enter a number"
	even_str: .asciiz "Even"
	odd_str: .asciiz "Odd"
	
.text
	# output string
	li $v0, 4
	la $a0, input_str
	syscall

	# Int inout mode
	li $v0, 5
	syscall
	
	# Saving input int value
	add $t1, $a0, $0
	
	# Switching to output str
	li $v0, 4
	
	# Divide
	addi $t2, $0, 2
	div $t1, $t2
	
	# If is even
	mfhi $t3
	beqz $t3, even
		la $a0, odd_str
		syscall
		j exit
	
	even:
		la $a0, even_str
		syscall 
		
	exit:
		li $v0, 10
		syscall