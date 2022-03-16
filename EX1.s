.data


.text

main:
	addi $t0, $zero, 2 #a
	addi $t1, $zero, 3 #b
	addi $t2, $zero, 10 #m
	addi $t4, $zero, 1 #condicao1
	addi $t5, $zero, 0 #condicao2

	add $t2, $zero, $t0
	slt $t3, $t1, $t2
	beq $t3, $t4, condicao
	beq $t3, $t5, fim  

condicao:
   add $t2, $zero, $t1
   j fim
   
fim:
      add $v0, $zero, 1
      add $a0, $zero, $t2
      syscall
    
