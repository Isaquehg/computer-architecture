.data
	# Dados do "vetor"
	dado1: .word 0x00000010
	dado2: .word 0x00000010
	dado3: .word 0x00000010
	dado4: .word 0x00000020
.text
	li $s5, 0x00000010 # Valor a ser comparado
	li $s6, 0x10010000 # Endereço de início do vetor
	li $s3, 0 # Inicializa o offset com zero
	li $s4, 1 # Valor para pular o offset de 1 em 1 (1 * 4 posições)
	
	loop:
		# Offset de 4 em 4 (0x10010000, 0x10010004, 0x10010008,...)
		add $t1, $s3, $s3 # t1 = 2 * offset ($s3)
		add $t1, $t1, $t1 # t1 = 2 * t1
		add $t1, $t1, $s6 # t1 = endereço base + offset
		
		lw $t0, 0($t1) # Carrega a posição do offset do vetor em $t0
		
		bne $t0, $s5, fim
			add $s3, $s3, $s4
			j loop
	fim:
		