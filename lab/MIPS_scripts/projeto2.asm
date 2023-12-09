.data
	result_str: .asciiz "Resultado da operação AND entre o perimetro e 40: "

.text
	li $t0, 10 # Largura retângulo
	li $t1, 12 # Comprimento retângulo
	mul $t0, $t0, 2 # Duplica a largura
	mul $t1, $t1, 2 # Duplica o Comprimento
	
	add $t2, $t1, $t0 # Obtém o perímetro
	li $t3, 40
	
	# Realiza operação AND entre perímetro e 40
	and $t4, $t2, $t3
	
	# Output
	li $v0, 4 # Print string
	la $a0, result_str
	syscall 
	
	li $v0, 1 # Print int
	move $a0, $t4
	syscall
	
	
	