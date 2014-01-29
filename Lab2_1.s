#Alan Achtenberg
#CSCE-350
#Lab2




.data # "data section" global, static modifiable data
	counter: .word 0
.text

.globl main # declare `main' as a global symbol

main:
	li $t8, 0 #counter1
	li $t9, 0 #counter2
	li $s1, 1 #program argument temp=1
	li $a0, 1 #load 1 into a1
	loop1:
		bgt $t9,$0,exit1	#if t0>0 exit loop1
		loop2:
			add $t8, $t8, $s1 #add s0 to t8 
			bgt $t8, $s0, exit2    #if t9>0 exit loop2
			li $v0, 1 #syscall for print int in a0
			syscall
			j loop2
		exit2:
		li $t9, 1
	j loop1
	exit1:
	
	li $v0, 10
	syscall #system exit call
	
	
	
	
	
	