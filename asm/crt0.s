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
	ldr sp, sp_irq
	mov r0, #0x1f
	msr cpsr_fc, r0
	ldr sp, sp_usr
	ldr r1, INTR_VECTOR_BUF
	ldr r0, intr_main
	str r0, [r1]
.ifdef EU
	ldr r1, unk_function
	mov lr, pc
	bx r1
.endif
	ldr r1, =AgbMain
	mov lr, pc
	bx r1
_080000F0:
	b start_vector
sp_irq: .4byte gUnk_03007FA0
sp_usr: .4byte gUnk_03007F00
INTR_VECTOR_BUF: .4byte 0x03007FFC
intr_main: .4byte IntrMain
.ifdef EU
unk_function: .4byte sub_08000118
.endif
