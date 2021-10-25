	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080572CA
	movs r0, #8
	strb r0, [r4, #0xf]
	ldr r2, _080572CC @ =gScreen
	ldr r3, _080572D0 @ =gUnk_08107C1C
	ldrb r0, [r4, #0xe]
	adds r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r3
	ldrh r0, [r0]
	adds r2, #0x68
	strh r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0xa
	bne _080572CA
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #0
	strb r0, [r1]
_080572CA:
	pop {r4, pc}
	.align 2, 0
_080572CC: .4byte gScreen
_080572D0: .4byte gUnk_08107C1C
	.syntax divided
