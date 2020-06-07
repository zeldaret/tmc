	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_0809D1F0
sub_0809D1F0: @ 0x0809D1F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	mov sb, r0
	cmp r0, #0
	beq _0809D224
	cmp r0, #1
	beq _0809D2B0
	bl sub_08078B48
	ldr r2, _0809D220 @ =gLinkEntity
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
	movs r1, #0x68
	adds r1, r1, r5
	mov r8, r1
	b _0809D3A8
	.align 2, 0
_0809D220: .4byte gLinkEntity
_0809D224:
	ldrb r1, [r5, #0xe]
	cmp r1, #0
	beq _0809D234
	movs r0, #0xff
	strb r0, [r5, #0x1e]
	subs r0, r1, #1
	strb r0, [r5, #0xe]
	b _0809D488
_0809D234:
	movs r1, #1
	strb r1, [r5, #0xc]
	mov r2, sb
	str r2, [r5, #0x20]
	ldr r0, _0809D2A0 @ =0xFFEC0000
	str r0, [r5, #0x34]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	movs r0, #8
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r2, [r5, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r5, #0x19]
	ldrb r0, [r5, #0x1b]
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r5, #0x1b]
	ldr r0, _0809D2A4 @ =gRoomControls
	ldrh r0, [r0, #0xa]
	strh r0, [r5, #0x2e]
	ldr r0, _0809D2A8 @ =gLinkEntity
	ldrh r0, [r0, #0x32]
	strh r0, [r5, #0x32]
	mov r3, sb
	str r3, [r5, #0x54]
	adds r0, r5, #0
	movs r1, #6
	bl sub_0805E3A0
	adds r0, r5, #0
	movs r1, #0
	bl LoadAnimation
	ldr r0, _0809D2AC @ =0x00000123
	bl PlaySFX
	movs r0, #0x68
	adds r0, r0, r5
	mov r8, r0
	b _0809D3A8
	.align 2, 0
_0809D2A0: .4byte 0xFFEC0000
_0809D2A4: .4byte gRoomControls
_0809D2A8: .4byte gLinkEntity
_0809D2AC: .4byte 0x00000123
_0809D2B0:
	ldr r6, _0809D430 @ =gLinkEntity
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x38
	strb r1, [r0]
	ldrh r0, [r5, #0x24]
	adds r0, #8
	strh r0, [r5, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #2
	mov sl, r1
	cmp r0, sl
	ble _0809D2D6
	mov r2, sl
	strh r2, [r5, #0x24]
_0809D2D6:
	ldrb r1, [r6, #0x10]
	movs r0, #0x80
	ands r0, r1
	movs r3, #0x68
	adds r3, r3, r5
	mov r8, r3
	cmp r0, #0
	beq _0809D3A8
	ldr r0, _0809D434 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0809D3A8
	ldrb r0, [r6, #0xc]
	cmp r0, #0x1c
	beq _0809D3A8
	cmp r0, #6
	beq _0809D3A8
	cmp r0, #9
	beq _0809D3A8
	ldr r7, _0809D438 @ =gLinkState
	adds r0, r7, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0x18
	beq _0809D3A8
	cmp r0, #0xb
	beq _0809D3A8
	cmp r0, #8
	beq _0809D3A8
	bl sub_08079F8C
	cmp r0, #0
	beq _0809D3A8
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0xe
	movs r3, #0xe
	bl sub_080041A0
	cmp r0, #0
	beq _0809D3A8
	movs r1, #0x36
	ldrsh r0, [r6, r1]
	movs r2, #0x36
	ldrsh r1, [r5, r2]
	subs r0, r0, r1
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bhi _0809D3A8
	adds r0, r6, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809D3A8
	movs r0, #0x95
	movs r1, #0xa
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0809D3A8
	str r4, [r5, #0x54]
	movs r0, #2
	strb r0, [r5, #0xc]
	movs r0, #8
	strb r0, [r5, #0xe]
	mov r3, sl
	strh r3, [r5, #0x24]
	movs r0, #0xe0
	lsls r0, r0, #8
	mov r1, r8
	strh r0, [r1]
	bl sub_08079184
	bl sub_08078B48
	bl sub_080791D0
	bl sub_08077B20
	adds r0, r7, #0
	adds r0, #0x26
	movs r2, #0
	strb r2, [r0]
	strb r2, [r7, #2]
	ldrb r1, [r6, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r6, #0x10]
	ldrb r1, [r6, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6, #0x18]
	ldr r1, _0809D43C @ =gUnk_03003DC0
	movs r0, #6
	strb r0, [r1]
	ldr r0, _0809D440 @ =gUnk_02034490
	mov r3, sb
	strb r3, [r0]
_0809D3A8:
	adds r0, r5, #0
	bl sub_0806F69C
	mov r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r5, #0
	bl sub_08003FC4
	adds r0, r5, #0
	bl sub_080042B8
	ldr r4, [r5, #0x54]
	cmp r4, #0
	beq _0809D454
	ldr r2, _0809D430 @ =gLinkEntity
	movs r3, #0x2e
	ldrsh r1, [r2, r3]
	movs r3, #0x2e
	ldrsh r0, [r5, r3]
	subs r0, #8
	cmp r1, r0
	bge _0809D3DA
	movs r0, #0
	strb r0, [r5, #0xe]
_0809D3DA:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _0809D448
	ldr r2, _0809D444 @ =0xFFF80000
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0
	bl PositionRelative
	ldrh r0, [r4, #0x36]
	adds r0, #0x18
	strh r0, [r4, #0x36]
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	adds r3, r4, #0
	adds r3, #0x29
	lsrs r1, r1, #0x1d
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r2, [r5, #0x19]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r5, #0x1b]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r4, #0x1b]
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x1b]
	b _0809D454
	.align 2, 0
_0809D430: .4byte gLinkEntity
_0809D434: .4byte gTextBox
_0809D438: .4byte gLinkState
_0809D43C: .4byte gUnk_03003DC0
_0809D440: .4byte gUnk_02034490
_0809D444: .4byte 0xFFF80000
_0809D448:
	subs r0, #1
	strb r0, [r5, #0xe]
	adds r0, r2, #0
	adds r1, r4, #0
	bl CopyPosition
_0809D454:
	adds r0, r5, #0
	bl sub_080040A8
	cmp r0, #0
	bne _0809D488
	ldrb r0, [r5, #0xc]
	cmp r0, #2
	bne _0809D478
	ldr r0, _0809D494 @ =gUnk_02002A40
	ldr r1, [r0, #0x40]
	movs r2, #0x80
	lsls r2, r2, #0x15
	orrs r1, r2
	str r1, [r0, #0x40]
	movs r0, #9
	movs r1, #0
	bl sub_080A7138
_0809D478:
	ldr r4, [r5, #0x54]
	cmp r4, #0
	beq _0809D484
	adds r0, r4, #0
	bl sub_0805E79C
_0809D484:
	bl sub_0805E780
_0809D488:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809D494: .4byte gUnk_02002A40