	.syntax unified
	push {r4, r5, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xf]
	subs r0, #1
	strb r0, [r3, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08057320
	movs r0, #8
	strb r0, [r3, #0xf]
	ldr r5, _08057324 @ =gScreen
	ldr r2, _08057328 @ =gUnk_08107C1C
	ldrb r0, [r3, #0xe]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r3, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r5, #0
	adds r0, #0x68
	movs r4, #0
	strh r2, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0xff
	bne _08057320
	movs r0, #1
	strb r0, [r3, #0xc]
	adds r0, r3, #0
	adds r0, #0x22
	strb r4, [r0]
	subs r0, #1
	strb r4, [r0]
	adds r0, r5, #0
	adds r0, #0x6c
	strb r4, [r0]
_08057320:
	pop {r4, r5, pc}
	.align 2, 0
_08057324: .4byte gScreen
_08057328: .4byte gUnk_08107C1C
	.syntax divided
