	.syntax unified
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r2, _08057434 @ =gRoomControls
	ldr r0, [r2, #0x28]
	ldr r1, _08057438 @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r2, #0x28]
	ldr r0, [r2, #0x2c]
	ldr r1, _0805743C @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r2, #0x2c]
	ldr r5, _08057440 @ =gScreen
	movs r1, #0xa
	ldrsh r0, [r2, r1]
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #1
	ldrh r1, [r2, #0x2a]
	adds r0, r0, r1
	strh r0, [r5, #0x2e]
	movs r1, #0xc
	ldrsh r0, [r2, r1]
	ldrh r1, [r2, #8]
	subs r0, r0, r1
	asrs r0, r0, #1
	ldrh r2, [r2, #0x2e]
	adds r0, r0, r2
	strh r0, [r5, #0x30]
	ldr r2, _08057444 @ =gSineTable
	ldr r4, _08057448 @ =gScreenTransition
	ldr r1, [r4]
	ldrb r0, [r4]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r0, r0, #5
	adds r0, #0x10
	bl sub_0805732C
	adds r0, r6, #0
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r0, #0
	bne _08057430
	ldr r0, [r4]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _08057430
	adds r2, r6, #0
	adds r2, #0x24
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0805744C @ =gUnk_08107C30
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x68
	strh r1, [r0]
_08057430:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08057434: .4byte gRoomControls
_08057438: .4byte 0xFFFFE000
_0805743C: .4byte 0xFFFFF000
_08057440: .4byte gScreen
_08057444: .4byte gSineTable
_08057448: .4byte gScreenTransition
_0805744C: .4byte gUnk_08107C30
	.syntax divided
