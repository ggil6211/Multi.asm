// Program: Mult.asm
// Computes RAM[0] * RAM[1] = 2*2
// Usage: put the product (R2) in RAM[2] 
	
	@COUNTER	
 	M=1		//initialise the counter to 1, if we set it zero is will add 1 too many
	@R2
	M=0		// initialise the product register = 0		
	(LOOP)
 	@COUNTER
 	D=M
 	@R1
 	D=D-M		//subtracts the data reg to the r1 vaule
 	@END
 	D;JGT		//if counter >0 then goto END
 	@R0
 	D=M		// load the first number
 	@R2
 	M=M+D		// adds the number to itself
 	@COUNTER
 	M=M+1		//increment the counter
 	@LOOP
 	0;JMP
	(END)		//finshes the loop
 	@END
 	0;JMP


