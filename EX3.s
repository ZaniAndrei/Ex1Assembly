.data


.text

main:
	addi $t0, $zero, 0 #i
	addi $t1, $zero, 10 #j
	addi $t2, $zero, 0 #k
	j while
while: 	
	slt $t3, $t0, $t1
	beq $t3, $zero, print
	j loop
	

loop:
	addi $t0, $t0, 1
	addi $t2, $t2, 10
	j while
	
print:
	addi $v0, $zero, 1
	add $a0, $zero, $t0
	syscall 
	
	addi $v1, $zero, 1
	add $a1, $zero, $t2
	syscall	             
	j exit
exit: 		

	
	                  
        
	
