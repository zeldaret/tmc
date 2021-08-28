	.syntax unified
	push {lr}
	cmp r0, #4
	bne _0805B8DA
	movs r0, #0x18
	bl CheckGlobalFlag
	b _0805B8E8
_0805B8DA:
	cmp r0, #4
	bls _0805B8E6
	cmp r0, #6
	bhi _0805B8E6
	movs r0, #0
	b _0805B8E8
_0805B8E6:
	movs r0, #1
_0805B8E8:
	pop {pc}
	.align 2, 0
	.syntax divided
