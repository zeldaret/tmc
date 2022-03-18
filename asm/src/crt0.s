	.include "asm/macros.inc"
	.include "constants/constants.inc"
	.syntax unified
	.text

	arm_func_start __start
__start:
	b start_vector

header:
	.include "asm/rom_header.inc"

start_vector:
	mov r0, #0x12
	msr cpsr_fc, r0
	ldr sp, =irq_stack_begin
	mov r0, #0x1f
	msr cpsr_fc, r0
	ldr sp, =usr_stack_begin
	ldr r1, =0x03007FFC
	ldr r0, =ram_IntrMain
	str r0, [r1]

.ifndef USA
.ifndef DEMO_USA
.ifndef JP
	ldr r1, =fill_rq_stack
	mov lr, pc
	bx r1
.endif
.endif
.endif

	ldr r1, =AgbMain
	mov lr, pc
	bx r1
	b start_vector
