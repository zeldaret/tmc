	.syntax unified
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08065DB4
	ldr r2, [r1, #0x6c]
	ldrh r3, [r2]
	ldr r0, _08065DA0 @ =0x0000FFFF
	cmp r3, r0
	beq _08065DA8
	ldr r0, _08065DA4 @ =gScreen
	adds r0, #0x68
	strh r3, [r0]
	ldrh r0, [r2, #2]
	strb r0, [r1, #0xe]
	adds r0, r2, #4
	str r0, [r1, #0x6c]
	b _08065DB4
	.align 2, 0
_08065DA0: .4byte 0x0000FFFF
_08065DA4: .4byte gScreen
_08065DA8:
	ldrb r0, [r1, #0xc]
	adds r0, #1
	strb r0, [r1, #0xc]
	movs r0, #0
	bl TextboxNoOverlapFollow
_08065DB4:
	pop {pc}
	.align 2, 0
	.syntax divided
