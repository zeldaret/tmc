	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08057664 @ =gUnk_0200B650
	movs r5, #0
	str r5, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	strh r5, [r0]
	adds r0, r4, #0
	bl LoadGfxGroup
	ldr r0, _08057668 @ =gRoomVars
	strb r4, [r0, #0x10]
	ldr r3, _0805766C @ =gRoomControls
	movs r0, #0xc
	ldrsh r1, [r3, r0]
	ldrh r0, [r3, #8]
	subs r1, r1, r0
	asrs r0, r1, #3
	adds r1, r1, r0
	ldr r2, _08057670 @ =gScreen
	movs r7, #0x3f
	adds r0, r1, #0
	ands r0, r7
	strh r0, [r2, #0x30]
	strh r5, [r2, #0x2e]
	adds r0, r1, #0
	cmp r1, #0
	bge _08057604
	adds r0, #0x3f
_08057604:
	asrs r0, r0, #6
	lsls r0, r0, #9
	ldr r4, _08057674 @ =gMapDataTopSpecial
	adds r0, r0, r4
	str r0, [r2, #0x34]
	ldr r0, _08057678 @ =0x00001D49
	strh r0, [r2, #0x2c]
	movs r6, #1
	strh r6, [r2, #0x32]
	movs r0, #0xc
	ldrsh r1, [r3, r0]
	ldrh r0, [r3, #8]
	subs r1, r1, r0
	asrs r0, r1, #2
	adds r1, r1, r0
	adds r0, r1, #0
	ands r0, r7
	strh r0, [r2, #0x18]
	strh r5, [r2, #0x16]
	adds r0, r1, #0
	cmp r0, #0
	bge _08057632
	adds r0, #0x3f
_08057632:
	asrs r0, r0, #6
	lsls r0, r0, #9
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r4, r3
	adds r0, r0, r1
	str r0, [r2, #0x1c]
	ldr r0, _0805767C @ =0x00001E49
	strh r0, [r2, #0x14]
	strh r6, [r2, #0x1a]
	adds r1, r2, #0
	adds r1, #0x66
	ldr r0, _08057680 @ =0x00003C48
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08057684 @ =0x00000609
	strh r0, [r1]
	ldrh r0, [r2]
	movs r3, #0xa0
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08057664: .4byte gUnk_0200B650
_08057668: .4byte gRoomVars
_0805766C: .4byte gRoomControls
_08057670: .4byte gScreen
_08057674: .4byte gMapDataTopSpecial
_08057678: .4byte 0x00001D49
_0805767C: .4byte 0x00001E49
_08057680: .4byte 0x00003C48
_08057684: .4byte 0x00000609
	.syntax divided
