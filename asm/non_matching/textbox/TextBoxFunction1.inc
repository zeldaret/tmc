    .syntax unified
	push {r4, lr}
	ldr r0, _08056598 @ =gNewWindow
	movs r1, #8
	bl MemClear
	ldr r0, _0805659C @ =gUnk_02024030
	movs r1, #0x18
	bl MemClear
	ldr r4, _080565A0 @ =gCurrentTextBox
	adds r0, r4, #0
	movs r1, #0xa8
	bl MemClear
	ldr r0, _080565A4 @ =gTextBox
	adds r1, r4, #0
	movs r2, #0x20
	bl MemCopy
	ldrb r0, [r4, #2]
	cmp r0, #0x63
	bne _08056520
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #5]
	strb r0, [r4, #2]
_08056520:
	adds r1, r4, #0
	adds r1, #0x9c
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x20
	ldrh r1, [r4, #8]
	bl sub_0805EEB4
	adds r3, r4, #0
	adds r3, #0x5c
	movs r0, #2
	strb r0, [r3]
	movs r0, #0xe
	strb r0, [r3, #1]
	adds r3, #2
	movs r2, #0
	ldr r0, _080565A8 @ =gSave
	adds r0, #0x80
	ldrb r1, [r0]
	cmp r1, #0
	beq _08056560
	adds r4, r0, #0
_0805654E:
	strb r1, [r3]
	adds r3, #1
	adds r2, #1
	cmp r2, #5
	bhi _08056560
	adds r0, r2, r4
	ldrb r1, [r0]
	cmp r1, #0
	bne _0805654E
_08056560:
	movs r0, #2
	strb r0, [r3]
	movs r0, #0xf
	strb r0, [r3, #1]
	movs r0, #0
	strb r0, [r3, #2]
	ldr r4, _080565A0 @ =gCurrentTextBox
	adds r0, r4, #0
	bl sub_08056FBC
	ldr r0, _080565AC @ =gUnk_08107BE0
	str r0, [r4, #0x2c]
	ldr r0, _080565B0 @ =gUnk_02000D00
	str r0, [r4, #0x58]
	adds r4, #0x54
	movs r0, #0xd0
	strh r0, [r4]
	movs r0, #2
	bl SetDoTextBox
	movs r0, #0
	bl sub_08056BDC
	movs r0, #2
	bl sub_080564C8
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
_08056598: .4byte gNewWindow
_0805659C: .4byte gUnk_02024030
_080565A0: .4byte gCurrentTextBox
_080565A4: .4byte gTextBox
_080565A8: .4byte gSave
_080565AC: .4byte gUnk_08107BE0
_080565B0: .4byte gUnk_02000D00
    .syntax divided
