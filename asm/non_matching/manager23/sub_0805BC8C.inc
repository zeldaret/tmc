	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805BCAE
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805BCAE
	adds r0, r4, #0
	bl sub_0805BE94
_0805BCAE:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805BCD0
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805BCD0
	adds r0, r4, #0
	bl sub_0805BEC4
	adds r0, r4, #0
	bl sub_0805BE94
_0805BCD0:
	pop {r4, pc}
	.align 2, 0
	.syntax divided