	.syntax unified
	push {r4, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xf]
	subs r0, #1
	strb r0, [r3, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805A106
	movs r0, #4
	strb r0, [r3, #0xf]
	ldr r4, _0805A108 @ =gScreen
	ldr r2, _0805A10C @ =gUnk_08108588
	ldrb r0, [r3, #0xe]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r3, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r4, #0
	adds r0, #0x68
	strh r2, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0xff
	bne _0805A106
	ldrh r1, [r4]
	ldr r0, _0805A110 @ =0x0000F7FF
	ands r0, r1
	strh r0, [r4]
	bl sub_08056250
	bl DeleteThisEntity
_0805A106:
	pop {r4, pc}
	.align 2, 0
_0805A108: .4byte gScreen
_0805A10C: .4byte gUnk_08108588
_0805A110: .4byte 0x0000F7FF
	.syntax divided
