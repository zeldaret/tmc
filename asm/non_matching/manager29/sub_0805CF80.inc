	.syntax unified
	push {lr}
	ldr r1, [r0, #0x2c]
	ldrh r1, [r1]
	ldr r0, [r0, #0x28]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r1, [r1]
	movs r2, #0
	ldr r0, _0805CFBC @ =0x00000365
	cmp r1, r0
	beq _0805CFB4
	adds r0, #4
	cmp r1, r0
	beq _0805CFB4
	adds r0, #1
	cmp r1, r0
	beq _0805CFB4
	adds r0, #1
	cmp r1, r0
	beq _0805CFB4
	adds r0, #2
	cmp r1, r0
	beq _0805CFB4
	subs r0, #1
	cmp r1, r0
	bne _0805CFB6
_0805CFB4:
	movs r2, #1
_0805CFB6:
	adds r0, r2, #0
	pop {pc}
	.align 2, 0
_0805CFBC: .4byte 0x00000365
	.syntax divided
