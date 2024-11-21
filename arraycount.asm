.data
array:      .word 10, 15, 2, 4, 9, 3, 8, 20, 25, 30  
array_size: .word 10                             
even_msg:   .asciiz "Even numbers: "
odd_msg:    .asciiz "Odd numbers: "
newline:    .asciiz "\n"

.text
main:
    
    lw $t0, array_size        
    lw $t1, 0($t0)            

   
    li $t2, 0                 
    li $t3, 0                  

   
    li $t4, 0                 

   
print_loop:
    bge $t4, $t0, print_results  
              
    lw $t5, 0($t0)
                 
    add $t0, $t0, 4            

    
    andi $t6, $t5, 1          
    beq $t6, $zero, store_even  

   
    addi $t3, $t3, 1           
    j continue_loop

store_even:
    addi $t2, $t2, 1           

continue_loop:
    addi $t4, $t4, 1          
    j print_loop

print_results:
    # Print even numbers
    li $v0, 4                 
    la $a0, even_msg           
    syscall

    li $t4, 0                  

print_even_loop:
    bge $t4, $t2, print_odd   
    addi $t4, $t4, 1          
    j print_even_loop

print_odd:
    # Print odd numbers
    li $v0, 4                  
    la $a0, odd_msg           
    syscall

    li $t4, 0                 

print_odd_loop:
    bge $t4, $t3, end       
    
   

    addi $t4, $t4, 1           
    j print_odd_loop

end:
    li $v0, 10                
    syscall
