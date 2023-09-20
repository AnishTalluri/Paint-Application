
#Note that this file only contains a function xyCoordinatesToAddress
#As such, this function should work independent of any caller funmction which calls it
#When using regisetrs, you HAVE to make sure they follow the register usage convention in RISC-V as discussed in lectures.
#Else, your function can potentially fail when used by the autograder and in such a context, you will receive a 0 score for this part

xyCoordinatesToAddress:
	#(x,y) in (a0,a1) arguments
	#a2 argument contains base address
	#returns pixel address in a0
	
	#since this is leaf function, no need to preserve ra 
	
	#Enter code below!
	#make sure to return to calling function after putting correct value in a0!
	
	# x * 4 (2**2)
	slli a0 a0 2
	
	# x * 128 (2**7) 
	slli a1 a1 7
	
	# x + y = coordinates on the map
	add a0 a0 a1
	
	# combined xy value added to base address to move it to the proper coordinates
	add a0 a0 a2
	
	# return address
	ret
	