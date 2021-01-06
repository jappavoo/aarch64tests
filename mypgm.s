	.data
val:	.quad 0xfeedfacebadf00de
	.text

	.global _start
_start:	
	movn  x0, #0                // load x0 with ~0
	movz  x1, #0xbeef           // load x1 with 0xdeadbeefdeadbeef
	movk  x1, #0xdead, lsl #16  //  
	movk  x1, #0xbeef, lsl #32  // 
	movk  x1, #0xdead, lsl #48  //
	ldr   x2, val               // load value at label val
	ldr   x3, =val              // load x3 with address of label val (encoded pc relative)

	bl myfunc
	nop
	
myfunc:
	movn x4, #0xffff, LSL #32
	ret
