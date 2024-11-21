.text
.globl main
main:
#Find the sum of the integer numbers.
la $t0, Array # array starting address
lw $t1, length # array length
li $t2, 0 # set sum=0
Loop:
lw $t3, ($t0) # get Array(n)
add $t2, $t2, $t3 # sum = sum+Array(n)
addu $t0, $t0, 4 # update Array address
sub $t1, $t1, 1
bnez $t1, Loop
sw $t2, Sum # save integer sum
mtc1 $t2, $f6 # move to float reg
cvt.s.w $f6, $f6 # cvt to float format
lw $t1, length
mtc1 $t1, $f8 # move to float reg
cvt.s.w $f8, $f8 # cvt to float format
div.s $f10, $f6, $f8 # sum / length
s.s $f10, Avg
#Done, terminate program.
li $v0, 10 # call code for terminate
syscall # system call
# Data Declarations
.data
Array: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12
length: .word 12
Sum: .word 0
array1: .space 48
li $t0, 0
sw $v0, array1($to)