	.syntax unified
	push {lr}
	ldrb r1, [r0, #0x15]
	cmp r1, #8
	beq _0807A8BA
	cmp r1, #8
	bgt _0807A8A6
	cmp r1, #0
	beq _0807A8B0
	b _0807A8C8
_0807A8A6:
	cmp r1, #0x10
	beq _0807A8B6
	cmp r1, #0x18
	beq _0807A8C0
	b _0807A8C8
_0807A8B0:
	movs r2, #8
	rsbs r2, r2, #0
	b _0807A8CA
_0807A8B6:
	movs r2, #5
	b _0807A8CA
_0807A8BA:
	movs r2, #0
	movs r1, #8
	b _0807A8CC
_0807A8C0:
	movs r2, #0
	movs r1, #8
	rsbs r1, r1, #0
	b _0807A8CC
_0807A8C8:
	movs r2, #0
_0807A8CA:
	movs r1, #0
_0807A8CC:
	bl sub_080002B4
	pop {pc}
	.align 2, 0
	.syntax divided
