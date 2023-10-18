.data
	entrada_str: .asciiz "Entre com sua idade"
	menor_str: .asciiz "Menor de idade"
	maior_str: .asciiz "Maior de idade"

.text
	li $v0, 4
	la $a0, entrada_str
	syscall
	
	li $v0, 5
	syscall
	
	bge $v0, 18, maior
		li $v0, 4
		la $a0, menor_str
		syscall
		j exit
	
	maior: 
		li $v0, 4
		la $a0, maior_str
		syscall
		
	exit:
