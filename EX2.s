.data


.text

main:
	addi $t0, $zero, 0 #a
	addi $t1, $zero, 50 #b
	addi $t2, $zero, 0 #x
	
	slt $t3, $t0, $zero #se a for menor que 0 ele sai do programa
	bne $t3, $zero, print 
	
	slti $t6, $t1, 51   #se b for menor que 50 ele continua, senao ele sai do programa
	beq $t6, $zero, print
	
	addi $t2, $zero, 1  #t4 = 1 #atribui 1 ao x 
	j print #printa o numero
print:
	addi $v0, $zero, 1
	add $a0, $zero, $t2
	syscall	             
	j exit
exit: 		

	
	                  
        
	
