	.include "asm/macros.inc"
	.include "constants/constants.inc"
	.syntax unified
	.text

	thumb_func_start fill_rq_stack
fill_rq_stack: // fill iqr and user stack with 'MCZ3'
	adr r0, pool
	ldm r0!, {r1, r2, r3}
loop1:
	subs r2, #4
	str r1, [r2]
	cmp r2, r3
	bgt loop1
	bx lr

// unused
// returns the maximum values reached by irq stack (r0) and usr stack (r1)
check_stack_threshold:
	adr r0, pool
	ldm r0!, {r1, r2, r3}
loop2:
	ldr r0, [r3]
	adds r3, #4
	cmp r0, r1 // cmp against magic
	beq loop2

	subs r2, #0xa0
loop3:
	ldr r0, [r2]
	adds r2, #4
	cmp r0, r1  // cmp against magic
	beq loop3

	subs r1, r2, #4
	subs r0, r3, #4
	bx lr

	.align 2, 0
pool:
	.byte '3, 'Z, 'C, 'M 	// r1
	.4byte irq_stack_begin  // r2
	.4byte usr_stack_top 	// r3
