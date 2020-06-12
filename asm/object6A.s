	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08094A44
sub_08094A44: @ 0x08094A44
	push {lr}
	ldr r2, _08094A58 @ =gUnk_08122A34
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08094A58: .4byte gUnk_08122A34

	thumb_func_start sub_08094A5C
sub_08094A5C: @ 0x08094A5C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08094A78
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0807DD64
	adds r0, r4, #0
	movs r1, #4
	bl InitializeAnimation
_08094A78:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08094A90
sub_08094A90: @ 0x08094A90
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08094ACE
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	ldr r1, _08094AE4 @ =gUnk_08114F30
	ldrb r2, [r4, #0x19]
	lsrs r0, r2, #6
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #6
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r4, #0
	movs r1, #0
	bl LoadAnimation
	adds r0, r4, #0
	bl sub_0807DD64
_08094ACE:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}
	.align 2, 0
_08094AE4: .4byte gUnk_08114F30

	thumb_func_start sub_08094AE8
sub_08094AE8: @ 0x08094AE8
	push {r4, r5, lr}
	adds r5, r1, #0
	movs r0, #0x6a
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08094B08
	ldr r1, [r5, #4]
	bl sub_0807DAD0
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
_08094B08:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08094B0C
sub_08094B0C: @ 0x08094B0C
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x36]
	subs r0, #1
	movs r3, #0
	strh r0, [r2, #0x36]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x20
	rsbs r1, r1, #0
	cmp r0, r1
	bgt _08094B30
	ldr r0, _08094B2C @ =0x0000FFE0
	strh r0, [r2, #0x36]
	b _08094B34
	.align 2, 0
_08094B2C: .4byte 0x0000FFE0
_08094B30:
	ldr r0, _08094B38 @ =gUnk_02033280
	strb r3, [r0, #6]
_08094B34:
	pop {pc}
	.align 2, 0
_08094B38: .4byte gUnk_02033280

	thumb_func_start sub_08094B3C
sub_08094B3C: @ 0x08094B3C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x34]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r2, #0x34]
	movs r0, #0x36
	ldrsh r1, [r2, r0]
	movs r0, #0xd
	rsbs r0, r0, #0
	cmp r1, r0
	blt _08094B60
	ldr r0, _08094B5C @ =0x0000FFF3
	strh r0, [r2, #0x36]
	b _08094B66
	.align 2, 0
_08094B5C: .4byte 0x0000FFF3
_08094B60:
	ldr r1, _08094B68 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_08094B66:
	pop {pc}
	.align 2, 0
_08094B68: .4byte gUnk_02033280

	thumb_func_start sub_08094B6C
sub_08094B6C: @ 0x08094B6C
	adds r0, #0x29
	ldrb r2, [r0]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #0x18
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08094B80
sub_08094B80: @ 0x08094B80
	adds r0, #0x29
	ldrb r2, [r0]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08094B94
sub_08094B94: @ 0x08094B94
	push {r4, lr}
	movs r0, #0x6a
	movs r1, #0x22
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08094BD2
	ldr r0, _08094BD4 @ =gLinkEntity
	adds r1, r4, #0
	bl CopyPosition
	ldr r0, _08094BD8 @ =0x0000FFD0
	strh r0, [r4, #0x36]
	ldr r1, _08094BDC @ =gUnk_0800AEDC
	adds r0, r4, #0
	bl sub_0807DAD0
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
	adds r0, r4, #0
	bl sub_080A29BC
	ldrh r0, [r4, #0x36]
	adds r0, #0x10
	strh r0, [r4, #0x36]
	ldrh r0, [r4, #0x32]
	adds r0, #1
	strh r0, [r4, #0x32]
_08094BD2:
	pop {r4, pc}
	.align 2, 0
_08094BD4: .4byte gLinkEntity
_08094BD8: .4byte 0x0000FFD0
_08094BDC: .4byte gUnk_0800AEDC

	thumb_func_start sub_08094BE0
sub_08094BE0: @ 0x08094BE0
	push {r4, lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	movs r1, #0x6a
	movs r2, #6
	movs r3, #0x22
	bl sub_0805EB2C
	adds r4, r0, #0
	cmp r4, #0
	beq _08094C22
	ldr r0, _08094C28 @ =gLinkEntity
	adds r1, r4, #0
	bl CopyPosition
	ldr r0, _08094C2C @ =0x0000FFF4
	strh r0, [r4, #0x36]
	ldrh r0, [r4, #0x32]
	adds r0, #1
	strh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	adds r0, r4, #0
	movs r1, #1
	bl LoadAnimation
_08094C22:
	add sp, #4
	pop {r4, pc}
	.align 2, 0
_08094C28: .4byte gLinkEntity
_08094C2C: .4byte 0x0000FFF4

	thumb_func_start sub_08094C30
sub_08094C30: @ 0x08094C30
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	cmp r5, #0
	beq _08094C40
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _08094C44
_08094C40:
	bl sub_0805E780
_08094C44:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08094C74
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	ldr r1, _08094C84 @ =gUnk_08114F30
	ldrb r0, [r5, #0x19]
	lsrs r0, r0, #6
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #6
	ldrb r2, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r4, #0
	movs r1, #1
	bl LoadAnimation
_08094C74:
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, r5, pc}
	.align 2, 0
_08094C84: .4byte gUnk_08114F30

	thumb_func_start sub_08094C88
sub_08094C88: @ 0x08094C88
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #0xc]
	cmp r1, #0
	beq _08094CA0
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08094CCC
	bl sub_0805E780
	b _08094CDA
_08094CA0:
	adds r0, r1, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x18]
	adds r0, r5, #0
	movs r1, #3
	bl sub_0805E3A0
	ldrb r0, [r5, #0xb]
	cmp r0, #0x43
	bgt _08094CCC
	cmp r0, #0x40
	blt _08094CCC
	adds r0, r5, #0
	adds r1, r5, #0
	bl sub_0806FAD8
_08094CCC:
	ldrb r4, [r5, #0xa]
	ldrb r0, [r5, #0xb]
	strb r0, [r5, #0xa]
	adds r0, r5, #0
	bl sub_08080CB4
	strb r4, [r5, #0xa]
_08094CDA:
	pop {r4, r5, pc}

	thumb_func_start sub_08094CDC
sub_08094CDC: @ 0x08094CDC
	push {lr}
	movs r0, #0x6a
	movs r1, #3
	movs r2, #0x62
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _08094D0A
	ldr r1, _08094D0C @ =gRoomControls
	ldrh r0, [r1, #6]
	adds r0, #0xe0
	strh r0, [r2, #0x2e]
	movs r3, #0x96
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	movs r0, #0xa2
	lsls r0, r0, #1
	bl PlaySFX
_08094D0A:
	pop {pc}
	.align 2, 0
_08094D0C: .4byte gRoomControls

	thumb_func_start sub_08094D10
sub_08094D10: @ 0x08094D10
	push {lr}
	sub sp, #4
	movs r0, #0x62
	str r0, [sp]
	movs r0, #6
	movs r1, #0x6a
	movs r2, #6
	movs r3, #3
	bl sub_0805EB2C
	adds r1, r0, #0
	cmp r1, #0
	beq _08094D2E
	movs r0, #0xff
	strb r0, [r1, #0xc]
_08094D2E:
	add sp, #4
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08094D34
sub_08094D34: @ 0x08094D34
	push {lr}
	movs r0, #0x6a
	movs r1, #0x15
	movs r2, #0xd
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _08094D68
	ldr r1, _08094D6C @ =gRoomControls
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	movs r3, #0x96
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	movs r0, #0xa2
	lsls r0, r0, #1
	bl PlaySFX
_08094D68:
	pop {pc}
	.align 2, 0
_08094D6C: .4byte gRoomControls

	thumb_func_start sub_08094D70
sub_08094D70: @ 0x08094D70
	push {lr}
	sub sp, #4
	movs r0, #0xd
	str r0, [sp]
	movs r0, #6
	movs r1, #0x6a
	movs r2, #6
	movs r3, #0x15
	bl sub_0805EB2C
	adds r1, r0, #0
	cmp r1, #0
	beq _08094D8E
	movs r0, #0xff
	strb r0, [r1, #0xc]
_08094D8E:
	add sp, #4
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08094D94
sub_08094D94: @ 0x08094D94
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	beq _08094DAC
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08094DCE
	bl sub_0805E780
	b _08094DD4
_08094DAC:
	adds r0, r1, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #3
	bl sub_0805E3A0
	adds r0, r4, #0
	movs r1, #0
	bl LoadAnimation
_08094DCE:
	adds r0, r4, #0
	bl sub_080042B8
_08094DD4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08094DD8
sub_08094DD8: @ 0x08094DD8
	push {lr}
	movs r0, #0x6a
	movs r1, #4
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _08094E06
	ldr r1, _08094E08 @ =gRoomControls
	ldrh r0, [r1, #6]
	adds r0, #0xf0
	strh r0, [r2, #0x2e]
	movs r3, #0x96
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	movs r0, #0xa2
	lsls r0, r0, #1
	bl PlaySFX
_08094E06:
	pop {pc}
	.align 2, 0
_08094E08: .4byte gRoomControls

	thumb_func_start sub_08094E0C
sub_08094E0C: @ 0x08094E0C
	push {lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	movs r1, #0x6a
	movs r2, #6
	movs r3, #4
	bl sub_0805EB2C
	adds r1, r0, #0
	cmp r1, #0
	beq _08094E2A
	movs r0, #0xff
	strb r0, [r1, #0xc]
_08094E2A:
	add sp, #4
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08094E30
sub_08094E30: @ 0x08094E30
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _08094E88
	ldr r0, _08094E80 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	beq _08094E48
	b _08094F94
_08094E48:
	movs r0, #0x6a
	movs r1, #5
	movs r2, #1
	bl CreateObject
	adds r5, r0, #0
	cmp r5, #0
	bne _08094E5A
	b _08094F94
_08094E5A:
	bl Random
	ldr r4, _08094E84 @ =gRoomControls
	movs r1, #0xf0
	bl __modsi3
	ldrh r1, [r4, #0xa]
	adds r1, r1, r0
	strh r1, [r5, #0x2e]
	bl Random
	movs r1, #0xa0
	bl __modsi3
	ldrh r1, [r4, #0xc]
	adds r1, r1, r0
	strh r1, [r5, #0x32]
	b _08094F94
	.align 2, 0
_08094E80: .4byte gUnk_030010A0
_08094E84: .4byte gRoomControls
_08094E88:
	cmp r0, #1
	bne _08094F44
	ldrb r1, [r4, #0xc]
	cmp r1, #1
	beq _08094ED4
	cmp r1, #1
	bgt _08094E9C
	cmp r1, #0
	beq _08094EA6
	b _08094F94
_08094E9C:
	cmp r1, #2
	beq _08094F08
	cmp r1, #3
	beq _08094F22
	b _08094F94
_08094EA6:
	strb r0, [r4, #0xc]
	ldr r0, _08094ED0 @ =0xFF600000
	str r0, [r4, #0x34]
	str r1, [r4, #0x20]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_080002B8
	cmp r0, #0xd
	bne _08094F94
	movs r0, #3
	strb r0, [r4, #0xc]
	b _08094F94
	.align 2, 0
_08094ED0: .4byte 0xFF600000
_08094ED4:
	ldr r1, [r4, #0x34]
	ldr r0, [r4, #0x20]
	subs r1, r1, r0
	str r1, [r4, #0x34]
	ldr r2, _08094F04 @ =0xFFFFE000
	adds r0, r0, r2
	str r0, [r4, #0x20]
	cmp r1, #0
	ble _08094F94
	ldrb r0, [r4, #0xc]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xc]
	str r1, [r4, #0x34]
	str r1, [r4, #0x20]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
	movs r0, #0xbf
	lsls r0, r0, #1
	bl sub_08004488
	b _08094F94
	.align 2, 0
_08094F04: .4byte 0xFFFFE000
_08094F08:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08094F94
	bl sub_0805E780
	b _08094F94
_08094F22:
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x20]
	subs r0, r0, r1
	str r0, [r4, #0x34]
	ldr r0, _08094F40 @ =0xFFFFE000
	adds r1, r1, r0
	str r1, [r4, #0x20]
	adds r0, r4, #0
	bl sub_080040A8
	cmp r0, #0
	bne _08094F94
	bl sub_0805E780
	b _08094F94
	.align 2, 0
_08094F40: .4byte 0xFFFFE000
_08094F44:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08094F94
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	beq _08094F68
	cmp r0, #1
	bgt _08094F5E
	cmp r0, #0
	beq _08094F7A
	b _08094F94
_08094F5E:
	cmp r0, #2
	beq _08094F72
	cmp r0, #3
	beq _08094F84
	b _08094F94
_08094F68:
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
	b _08094F94
_08094F72:
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x18]
_08094F7A:
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	b _08094F94
_08094F84:
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
_08094F94:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08094F98
sub_08094F98: @ 0x08094F98
	push {lr}
	movs r0, #0x6a
	movs r1, #5
	movs r2, #0
	bl CreateObject
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08094FA8
sub_08094FA8: @ 0x08094FA8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	bhi _08095086
	lsls r0, r0, #2
	ldr r1, _08094FBC @ =_08094FC0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08094FBC: .4byte _08094FC0
_08094FC0: @ jump table
	.4byte _08094FD4 @ case 0
	.4byte _08094FF0 @ case 1
	.4byte _08095024 @ case 2
	.4byte _08095040 @ case 3
	.4byte _08095070 @ case 4
_08094FD4:
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0x1e]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_080787B4
	b _08095086
_08094FF0:
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08095086
	movs r0, #0
	strb r0, [r1]
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080788E0
	ldr r0, _08095020 @ =gLinkState
	movs r1, #0xc
	strb r1, [r0, #0xc]
	adds r0, #0x38
	movs r1, #0x36
	strb r1, [r0]
	movs r0, #2
	bl sub_08078A90
	b _08095086
	.align 2, 0
_08095020: .4byte gLinkState
_08095024:
	movs r0, #0x36
	bl GetInventoryValue
	cmp r0, #2
	bne _08095086
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #7
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	b _08095086
_08095040:
	ldr r0, _0809506C @ =gLinkEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #0xc
	beq _08095086
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x5b
	bl CheckGlobalFlag
	cmp r0, #0
	bne _08095086
	movs r0, #0x1c
	movs r1, #0
	movs r2, #0
	bl sub_080A7C00
	movs r0, #0x5b
	bl SetGlobalFlag
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	b _08095086
	.align 2, 0
_0809506C: .4byte gLinkEntity
_08095070:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08095086
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #1
	bl sub_08078A90
_08095086:
	pop {r4, pc}

	thumb_func_start sub_08095088
sub_08095088: @ 0x08095088
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	beq _080950C8
	cmp r0, #1
	bgt _0809509C
	cmp r0, #0
	beq _080950A2
	b _0809510A
_0809509C:
	cmp r0, #2
	beq _080950F0
	b _0809510A
_080950A2:
	movs r0, #0x5b
	bl GetInventoryValue
	cmp r0, #0
	beq _080950B0
	bl sub_0805E780
_080950B0:
	movs r0, #1
	strb r0, [r5, #0xc]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_080787B4
	b _0809510A
_080950C8:
	adds r1, r5, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0809510A
	movs r0, #0
	strb r0, [r1]
	movs r0, #2
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	bl sub_080788E0
	ldr r0, _080950EC @ =0x00001F1F
	movs r1, #0
	bl sub_08078AA8
	b _0809510A
	.align 2, 0
_080950EC: .4byte 0x00001F1F
_080950F0:
	ldr r0, _0809511C @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0809510A
	movs r0, #0x5b
	movs r1, #0
	movs r2, #0
	bl sub_080A7C00
	bl sub_0805E780
_0809510A:
	ldrb r4, [r5, #0xa]
	movs r0, #0x5b
	strb r0, [r5, #0xa]
	adds r0, r5, #0
	bl sub_08080CB4
	strb r4, [r5, #0xa]
	pop {r4, r5, pc}
	.align 2, 0
_0809511C: .4byte gTextBox

	thumb_func_start sub_08095120
sub_08095120: @ 0x08095120
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0809514C
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #3
	bl sub_0805E3A0
	adds r0, r4, #0
	adds r1, r4, #0
	bl sub_0806FAD8
	adds r0, r4, #0
	bl sub_0807DD64
	adds r0, r4, #0
	movs r1, #2
	bl LoadAnimation
_0809514C:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08095164
sub_08095164: @ 0x08095164
	push {lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	movs r1, #0x6a
	movs r2, #6
	movs r3, #8
	bl sub_0805EB2C
	cmp r0, #0
	beq _08095182
	movs r1, #3
	bl LoadAnimation
_08095182:
	add sp, #4
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08095188
sub_08095188: @ 0x08095188
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080951B4
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #3
	bl sub_0805E3A0
	adds r0, r4, #0
	adds r1, r4, #0
	bl sub_0806FAD8
	adds r0, r4, #0
	bl sub_0807DD64
	adds r0, r4, #0
	movs r1, #0
	bl LoadAnimation
_080951B4:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	pop {r4, pc}

	thumb_func_start sub_080951C4
sub_080951C4: @ 0x080951C4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080951E8
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r1, #0
	ldr r0, _08095240 @ =0x0000FFF0
	strh r0, [r4, #0x36]
	strb r1, [r4, #0xe]
	adds r0, r4, #0
	bl sub_0807DD64
	adds r0, r4, #0
	movs r1, #3
	bl InitializeAnimation
_080951E8:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_08004274
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08095218
	str r0, [r4, #0x34]
	str r0, [r4, #0x50]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08095218
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0xe6
	bl PlaySFX
_08095218:
	ldr r3, [r4, #0x50]
	cmp r3, #0
	beq _0809523C
	ldrb r1, [r3, #0x18]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	ldrb r2, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrh r0, [r3, #0x2e]
	adds r0, #0x10
	strh r0, [r4, #0x2e]
	ldrh r0, [r3, #0x32]
	subs r0, #0x10
	strh r0, [r4, #0x32]
_0809523C:
	pop {r4, pc}
	.align 2, 0
_08095240: .4byte 0x0000FFF0

	thumb_func_start sub_08095244
sub_08095244: @ 0x08095244
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _0809527C
	movs r0, #0x6a
	movs r1, #0xa
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0809527C
	str r5, [r4, #0x50]
	movs r2, #0x80
	lsls r2, r2, #0xd
	ldr r3, _08095280 @ =0xFFF00000
	adds r0, r5, #0
	adds r1, r4, #0
	bl PositionRelative
	ldr r1, _08095284 @ =gUnk_0801183C
	adds r0, r4, #0
	bl sub_0807DAD0
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
_0809527C:
	pop {r4, r5, pc}
	.align 2, 0
_08095280: .4byte 0xFFF00000
_08095284: .4byte gUnk_0801183C

	thumb_func_start sub_08095288
sub_08095288: @ 0x08095288
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r1, r0, #0
	cmp r1, #0
	bne _080952AA
	adds r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #3
	bl sub_0805E3A0
	adds r0, r4, #0
	movs r1, #0
	bl LoadAnimation
_080952AA:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _080952F0
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #1
	bhi _080952D4
	movs r0, #0
	strb r0, [r4, #0xd]
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #0xc0
	lsls r3, r3, #8
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0805EC9C
	b _080952F0
_080952D4:
	movs r2, #0x80
	lsls r2, r2, #1
	ldrb r3, [r4, #0xe]
	lsls r3, r3, #8
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0805EC9C
	ldrb r0, [r4, #0xe]
	adds r0, #0xa
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_0806F69C
_080952F0:
	ldr r3, [r4, #0x54]
	cmp r3, #0
	beq _080952FE
	adds r0, r3, #0
	adds r1, r4, #0
	bl CopyPosition
_080952FE:
	adds r0, r4, #0
	bl sub_080042B8
	ldr r3, [r4, #0x50]
	cmp r3, #0
	beq _08095328
	ldrb r1, [r3, #0x18]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	ldrb r2, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldr r0, [r3, #4]
	cmp r0, #0
	bne _0809532C
	bl sub_0805E780
	b _0809532C
_08095328:
	bl sub_0805E780
_0809532C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08095330
sub_08095330: @ 0x08095330
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x6a
	movs r1, #0xb
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0809535E
	str r4, [r5, #0x54]
	str r5, [r4, #0x54]
	str r5, [r4, #0x50]
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	ldr r0, _08095360 @ =0x0000FFF0
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	adds r1, r4, #0
	bl sub_0806FAB0
_0809535E:
	pop {r4, r5, pc}
	.align 2, 0
_08095360: .4byte 0x0000FFF0

	thumb_func_start sub_08095364
sub_08095364: @ 0x08095364
	push {r4, r5, r6, lr}
	ldr r6, [r0, #0x54]
	cmp r6, #0
	beq _0809539E
	movs r5, #0
	movs r0, #2
	strb r0, [r6, #0x1e]
	adds r0, r6, #0
	adds r0, #0x38
	movs r4, #1
	strb r4, [r0]
	adds r0, r6, #0
	bl UpdateSpriteOrderAndFlip
	str r5, [r6, #0x54]
	strb r4, [r6, #0xd]
	ldr r0, _080953A0 @ =0x0000FFF0
	strh r0, [r6, #0x36]
	movs r0, #7
	strb r0, [r6, #0x15]
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r6, #0x20]
	movs r0, #0x80
	strh r0, [r6, #0x24]
	adds r0, r6, #0
	movs r1, #1
	bl LoadAnimation
_0809539E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080953A0: .4byte 0x0000FFF0

	thumb_func_start sub_080953A4
sub_080953A4: @ 0x080953A4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080953E0
	adds r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _08095414 @ =0x0000FFF0
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	ldr r1, _08095418 @ =gUnk_08114F30
	ldrb r2, [r4, #0x19]
	lsrs r0, r2, #6
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #6
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r4, #0
	adds r1, r4, #0
	bl sub_0806FAB0
	adds r0, r4, #0
	bl sub_0807DD64
_080953E0:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xa]
	cmp r0, #0xd
	bne _08095412
	adds r0, r4, #0
	adds r0, #0x5b
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	ldr r1, _0809541C @ =0x00000139
	cmp r0, #0
	beq _0809540C
	movs r1, #0
_0809540C:
	adds r0, r4, #0
	bl sub_0801D2B4
_08095412:
	pop {r4, pc}
	.align 2, 0
_08095414: .4byte 0x0000FFF0
_08095418: .4byte gUnk_08114F30
_0809541C: .4byte 0x00000139

	thumb_func_start sub_08095420
sub_08095420: @ 0x08095420
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0x6a
	movs r1, #0xc
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08095450
	ldr r3, _08095454 @ =0xFFF00000
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	ldr r1, [r6, #4]
	adds r0, r4, #0
	bl sub_0807DAD0
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
_08095450:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08095454: .4byte 0xFFF00000

	thumb_func_start nullsub_527
nullsub_527: @ 0x08095458
	bx lr
	.align 2, 0

	thumb_func_start sub_0809545C
sub_0809545C: @ 0x0809545C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	movs r0, #0x6a
	movs r1, #0xd
	movs r2, #0
	bl CreateObject
	adds r5, r0, #0
	cmp r5, #0
	beq _080954A6
	ldr r3, _080954A8 @ =0xFFF00000
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl PositionRelative
	ldr r1, [r6, #4]
	adds r0, r5, #0
	bl sub_0807DAD0
	adds r1, r5, #0
	adds r1, #0x84
	str r0, [r1]
	movs r0, #0x6a
	movs r1, #2
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _080954A6
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	str r5, [r4, #0x50]
_080954A6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080954A8: .4byte 0xFFF00000

	thumb_func_start sub_080954AC
sub_080954AC: @ 0x080954AC
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x6a
	movs r1, #0x1a
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _080954D6
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	ldr r1, _080954D8 @ =gUnk_08015B14
	adds r0, r4, #0
	bl sub_0807DAD0
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
_080954D6:
	pop {r4, r5, pc}
	.align 2, 0
_080954D8: .4byte gUnk_08015B14

	thumb_func_start sub_080954DC
sub_080954DC: @ 0x080954DC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _08095598
	cmp r0, #1
	bgt _080954F0
	cmp r0, #0
	beq _080954FC
	b _0809562C
_080954F0:
	cmp r0, #2
	beq _080955B8
	cmp r0, #3
	bne _080954FA
	b _08095620
_080954FA:
	b _0809562C
_080954FC:
	ldrb r0, [r4, #0xe]
	adds r5, r0, #0
	cmp r5, #0
	beq _0809550A
	subs r0, #1
	strb r0, [r4, #0xe]
	b _0809562C
_0809550A:
	movs r0, #1
	movs r2, #1
	strb r0, [r4, #0xc]
	strb r5, [r4, #0xd]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	strh r5, [r4, #0x36]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x68
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x6a
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x6c
	strh r5, [r0]
	ldr r1, _08095590 @ =gUnk_08122AE0
	ldrb r0, [r4, #0xb]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r5, r4, #0
	adds r5, #0x6e
	strb r0, [r5]
	ldr r1, _08095594 @ =gUnk_08122AE8
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r4, #0
	bl sub_0801D2B4
	adds r0, r4, #0
	bl sub_0807DD64
	ldrb r1, [r4, #0xb]
	adds r1, #2
	adds r0, r4, #0
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_08095754
	bl Random
	movs r1, #6
	bl __modsi3
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r0, r1
	bl PlaySFX
	adds r1, r5, #0
	b _08095630
	.align 2, 0
_08095590: .4byte gUnk_08122AE0
_08095594: .4byte gUnk_08122AE8
_08095598:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x10
	rsbs r2, r2, #0
	adds r1, r4, #0
	adds r1, #0x6e
	cmp r0, r2
	bgt _08095630
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	strh r2, [r4, #0x36]
	b _08095630
_080955B8:
	adds r5, r4, #0
	adds r5, #0x6c
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x40
	bls _080955CE
	movs r0, #0x40
	strh r0, [r5]
_080955CE:
	ldr r3, _0809561C @ =gUnk_080C9160
	movs r2, #0x6e
	adds r2, r2, r4
	mov ip, r2
	ldrb r0, [r2]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldrh r0, [r5]
	lsls r0, r0, #8
	adds r2, r1, #0
	muls r2, r0, r2
	asrs r2, r2, #0x10
	strh r2, [r4, #0x2e]
	mov r1, ip
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldrh r0, [r5]
	lsls r0, r0, #7
	muls r1, r0, r1
	asrs r1, r1, #0x10
	strh r1, [r4, #0x32]
	adds r0, r4, #0
	adds r0, #0x68
	ldrh r0, [r0]
	adds r2, r2, r0
	strh r2, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	adds r1, r1, r0
	strh r1, [r4, #0x32]
	mov r1, ip
	b _08095630
	.align 2, 0
_0809561C: .4byte gUnk_080C9160
_08095620:
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F62C
_0809562C:
	adds r1, r4, #0
	adds r1, #0x6e
_08095630:
	ldrb r0, [r1]
	adds r0, #4
	strb r0, [r1]
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0809564A
	adds r0, r4, #0
	bl sub_080040A8
	cmp r0, #0
	bne _0809564A
	bl sub_0805E780
_0809564A:
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809565E
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _08095664
_0809565E:
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
_08095664:
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, r5, pc}

	thumb_func_start sub_0809567C
sub_0809567C: @ 0x0809567C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x68
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r1, r1, #0x10
	ldr r0, [r4, #0x2c]
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x6a
	movs r3, #0
	ldrsh r2, [r1, r3]
	lsls r2, r2, #0x10
	ldr r1, [r4, #0x30]
	subs r1, r1, r2
	bl sub_080045DA
	strb r0, [r4, #0x15]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080956B4
sub_080956B4: @ 0x080956B4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _080956E2
	adds r0, #1
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	movs r1, #0
	bl InitializeAnimation
	adds r4, r5, #0
	adds r4, #0x68
	ldrh r2, [r5, #0x2e]
	ldrh r1, [r5, #0x32]
	movs r0, #7
_080956D4:
	strh r2, [r4]
	adds r4, #2
	strh r1, [r4]
	adds r4, #2
	subs r0, #1
	cmp r0, #0
	bge _080956D4
_080956E2:
	adds r0, r5, #0
	bl sub_08004274
	ldrb r0, [r5, #0xb]
	ldr r1, _08095724 @ =gUnk_030010A0
	ldr r1, [r1]
	adds r0, r0, r1
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080956FE
	adds r0, r5, #0
	bl sub_080957B4
_080956FE:
	ldr r6, [r5, #0x50]
	cmp r6, #0
	beq _08095728
	ldrb r1, [r6, #0x18]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	ldrb r2, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x18]
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _0809572C
	bl sub_0805E780
	b _0809572C
	.align 2, 0
_08095724: .4byte gUnk_030010A0
_08095728:
	bl sub_0805E780
_0809572C:
	adds r4, r5, #0
	adds r4, #0x68
	adds r0, r5, #0
	adds r0, #0x6c
	adds r1, r4, #0
	movs r2, #0x1c
	bl sub_0801D66C
	ldrh r0, [r4, #0x14]
	strh r0, [r5, #0x2e]
	ldrh r0, [r4, #0x16]
	strh r0, [r5, #0x32]
	ldrh r0, [r6, #0x36]
	strh r0, [r5, #0x36]
	ldrh r0, [r6, #0x2e]
	strh r0, [r4, #0x1c]
	ldrh r0, [r6, #0x32]
	strh r0, [r4, #0x1e]
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08095754
sub_08095754: @ 0x08095754
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r2, [r5, #0xb]
	movs r0, #0x6a
	movs r1, #0xf
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0809577A
	str r5, [r4, #0x50]
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FAD8
_0809577A:
	pop {r4, r5, pc}

	thumb_func_start sub_0809577C
sub_0809577C: @ 0x0809577C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08095796
	adds r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _080957B0 @ =0x0000FFF0
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
_08095796:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080957AE
	bl sub_0805E780
_080957AE:
	pop {r4, pc}
	.align 2, 0
_080957B0: .4byte 0x0000FFF0

	thumb_func_start sub_080957B4
sub_080957B4: @ 0x080957B4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x6a
	movs r1, #0x10
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _080957DA
	str r5, [r4, #0x50]
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FAD8
_080957DA:
	pop {r4, r5, pc}

	thumb_func_start sub_080957DC
sub_080957DC: @ 0x080957DC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080957F8
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0807DD64
	adds r0, r4, #0
	movs r1, #0
	bl LoadAnimation
_080957F8:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08095810
sub_08095810: @ 0x08095810
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x6a
	movs r1, #0x11
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08095844
	str r5, [r4, #0x50]
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FAB0
	ldr r1, _08095848 @ =gUnk_08011940
	adds r0, r4, #0
	bl sub_0807DAD0
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
_08095844:
	pop {r4, r5, pc}
	.align 2, 0
_08095848: .4byte gUnk_08011940

	thumb_func_start sub_0809584C
sub_0809584C: @ 0x0809584C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x45
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _0809586C
	ldr r0, _080958D0 @ =gUnk_020342F8
	subs r1, #1
	bl sub_0801D5A8
	cmp r0, #0
	bne _0809586C
	bl sub_0805E780
_0809586C:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _08095880
	ldrb r0, [r5, #0xb]
	bl sub_0801E7F4
	cmp r0, #0
	beq _08095880
	bl sub_0805E780
_08095880:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _080958B2
	adds r0, #1
	strb r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r5, #0
	bl UpdateSpriteOrderAndFlip
	ldr r1, _080958D4 @ =gUnk_08114F30
	ldrb r2, [r5, #0x19]
	lsrs r0, r2, #6
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #6
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x19]
	adds r0, r5, #0
	bl sub_0807DD64
_080958B2:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r5, #0
	bl sub_0807DDE4
	ldrb r4, [r5, #0xa]
	movs r0, #0x5c
	strb r0, [r5, #0xa]
	adds r0, r5, #0
	bl sub_08080CB4
	strb r4, [r5, #0xa]
	pop {r4, r5, pc}
	.align 2, 0
_080958D0: .4byte gUnk_020342F8
_080958D4: .4byte gUnk_08114F30

	thumb_func_start sub_080958D8
sub_080958D8: @ 0x080958D8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080958EC
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0807DD64
_080958EC:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08095914
	adds r0, r4, #0
	bl sub_08095954
_08095914:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08095918
sub_08095918: @ 0x08095918
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0809593C
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD64
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
_0809593C:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08095954
sub_08095954: @ 0x08095954
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x6a
	movs r1, #0x14
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _080959B8
	str r5, [r4, #0x50]
	ldrb r0, [r5, #0x14]
	ldr r1, _080959AC @ =gUnk_08122AF8
	adds r0, r0, r1
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r0, r3]
	lsls r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl PositionRelative
	ldr r0, _080959B0 @ =0x0000FFFD
	strh r0, [r4, #0x36]
	ldr r1, _080959B4 @ =gUnk_08012C48
	adds r0, r4, #0
	bl sub_0807DAD0
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
	movs r0, #0x92
	lsls r0, r0, #1
	bl sub_08004488
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	b _080959C4
	.align 2, 0
_080959AC: .4byte gUnk_08122AF8
_080959B0: .4byte 0x0000FFFD
_080959B4: .4byte gUnk_08012C48
_080959B8:
	ldr r0, _080959C8 @ =gUnk_02033280
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r0]
_080959C4:
	pop {r4, r5, pc}
	.align 2, 0
_080959C8: .4byte gUnk_02033280

	thumb_func_start sub_080959CC
sub_080959CC: @ 0x080959CC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080959F2
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #3
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD64
_080959F2:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	adds r0, r4, #0
	bl sub_08095D30
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08095A1C
sub_08095A1C: @ 0x08095A1C
	push {r4, r5, lr}
	adds r5, r1, #0
	movs r0, #0x6a
	movs r1, #0x16
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08095A5E
	ldr r1, _08095A60 @ =gRoomControls
	ldrh r0, [r1, #6]
	adds r0, #0xe8
	strh r0, [r4, #0x2e]
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	ldr r0, _08095A64 @ =0x0000FFFC
	strh r0, [r4, #0x36]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	ldr r1, [r5, #4]
	adds r0, r4, #0
	bl sub_0807DAD0
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
_08095A5E:
	pop {r4, r5, pc}
	.align 2, 0
_08095A60: .4byte gRoomControls
_08095A64: .4byte 0x0000FFFC

	thumb_func_start sub_08095A68
sub_08095A68: @ 0x08095A68
	push {lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	movs r1, #0x6a
	movs r2, #6
	movs r3, #0x16
	bl sub_0805EB2C
	adds r1, r0, #0
	cmp r1, #0
	beq _08095A86
	movs r0, #0xff
	strb r0, [r1, #0xc]
_08095A86:
	add sp, #4
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08095A8C
sub_08095A8C: @ 0x08095A8C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #5
	bhi _08095B44
	lsls r0, r0, #2
	ldr r1, _08095AA0 @ =_08095AA4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08095AA0: .4byte _08095AA4
_08095AA4: @ jump table
	.4byte _08095ABC @ case 0
	.4byte _08095ACC @ case 1
	.4byte _08095ADC @ case 2
	.4byte _08095AE6 @ case 3
	.4byte _08095B12 @ case 4
	.4byte _08095B1C @ case 5
_08095ABC:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xc]
	strb r1, [r4, #0x1e]
	adds r0, r4, #0
	bl sub_0807DD64
_08095ACC:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	b _08095B44
_08095ADC:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
_08095AE6:
	ldrb r1, [r4, #0x18]
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1e
	movs r5, #1
	eors r0, r5
	movs r3, #4
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #0x18]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08095B44
	movs r0, #1
	strb r5, [r4, #0xc]
	ands r2, r3
	orrs r2, r0
	b _08095B42
_08095B12:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
_08095B1C:
	ldrb r1, [r4, #0x18]
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1e
	movs r5, #1
	eors r0, r5
	movs r3, #4
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #0x18]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08095B44
	strb r5, [r4, #0xc]
	ands r2, r3
_08095B42:
	strb r2, [r4, #0x18]
_08095B44:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08095B48
sub_08095B48: @ 0x08095B48
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _08095B78
	adds r0, #1
	strb r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r5, #0
	bl UpdateSpriteOrderAndFlip
	ldr r1, _08095BA8 @ =gUnk_08114F30
	ldrb r2, [r5, #0x19]
	lsrs r0, r2, #6
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #6
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x19]
_08095B78:
	ldrb r0, [r5, #0x18]
	movs r4, #4
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r1, r0
	strb r1, [r5, #0x18]
	ldr r2, [r5, #0x50]
	cmp r2, #0
	beq _08095BCE
	adds r0, r2, #0
	adds r0, #0x5a
	ldrb r3, [r0]
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	bne _08095BAC
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _08095BCE
	bl sub_0805E780
	b _08095BDC
	.align 2, 0
_08095BA8: .4byte gUnk_08114F30
_08095BAC:
	adds r0, r1, #0
	ands r0, r4
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x18]
	ldrh r0, [r2, #0x12]
	ldrb r1, [r2, #0x1e]
	bl sub_080700C8
	ldrb r1, [r0]
	adds r2, r5, #0
	adds r2, #0x62
	strb r1, [r2]
	ldrb r0, [r0, #1]
	adds r1, r5, #0
	adds r1, #0x63
	strb r0, [r1]
_08095BCE:
	ldrb r4, [r5, #0xa]
	ldrb r0, [r5, #0xb]
	strb r0, [r5, #0xa]
	adds r0, r5, #0
	bl sub_08080CB4
	strb r4, [r5, #0xa]
_08095BDC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08095BE0
sub_08095BE0: @ 0x08095BE0
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	movs r0, #0x6a
	movs r1, #0x18
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _08095BFC
	str r4, [r1, #0x50]
	adds r0, r4, #0
	bl CopyPosition
_08095BFC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08095C00
sub_08095C00: @ 0x08095C00
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08095C14
	bl sub_0805E780
	b _08095C46
_08095C14:
	ldr r3, [r2, #0x50]
	cmp r3, #0
	beq _08095C46
	adds r1, r2, #0
	adds r1, #0x60
	movs r0, #0xe8
	strh r0, [r1]
	ldrb r0, [r3, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _08095C38
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
	b _08095C46
_08095C38:
	ldrb r0, [r2, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r2, #0x18]
_08095C46:
	pop {pc}

	thumb_func_start sub_08095C48
sub_08095C48: @ 0x08095C48
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x6a
	movs r1, #0x19
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _08095C66
	str r1, [r4, #0x54]
	str r4, [r1, #0x50]
	adds r0, r4, #0
	bl CopyPosition
_08095C66:
	pop {r4, pc}

	thumb_func_start sub_08095C68
sub_08095C68: @ 0x08095C68
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08095C80
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x1e]
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
_08095C80:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08095CAA
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _08095CA4
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_08095CA4:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08095CAE
_08095CAA:
	bl sub_0805E780
_08095CAE:
	pop {r4, pc}

	thumb_func_start sub_08095CB0
sub_08095CB0: @ 0x08095CB0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x6a
	movs r1, #0x1b
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08095CDC
	str r4, [r5, #0x54]
	str r5, [r4, #0x50]
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	movs r0, #0x10
	strb r0, [r4, #0xe]
	ldrb r0, [r5, #0x1e]
	strb r0, [r4, #0x1e]
	ldrb r0, [r5, #0x1e]
	strb r0, [r4, #0x1f]
_08095CDC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08095CE0
sub_08095CE0: @ 0x08095CE0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08095D06
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD64
_08095D06:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	adds r0, r4, #0
	bl sub_08095D30
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08095D30
sub_08095D30: @ 0x08095D30
	push {lr}
	adds r2, r0, #0
	adds r0, r1, #0
	cmp r0, #0
	beq _08095D4E
	ldr r1, _08095D50 @ =gUnk_08122B00
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	adds r0, r2, #0
	bl sub_0801D2B4
_08095D4E:
	pop {pc}
	.align 2, 0
_08095D50: .4byte gUnk_08122B00

	thumb_func_start sub_08095D54
sub_08095D54: @ 0x08095D54
	push {r4, r5, lr}
	adds r5, r1, #0
	movs r0, #0x6a
	movs r1, #0x1c
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08095D86
	ldr r0, _08095D88 @ =gLinkEntity
	adds r1, r4, #0
	bl CopyPosition
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	ldr r1, [r5, #4]
	adds r0, r4, #0
	bl sub_0807DAD0
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
_08095D86:
	pop {r4, r5, pc}
	.align 2, 0
_08095D88: .4byte gLinkEntity

	thumb_func_start sub_08095D8C
sub_08095D8C: @ 0x08095D8C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0x6a
	movs r1, #0x1d
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08095DB8
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	ldr r1, [r6, #4]
	adds r0, r4, #0
	bl sub_0807DAD0
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
_08095DB8:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08095DBC
sub_08095DBC: @ 0x08095DBC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08095DF0 @ =gUnk_02033280
	ldr r0, [r5]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08095DD0
	bl sub_0805E780
_08095DD0:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _08095DF4
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08095DE6
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0807DD64
_08095DE6:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	b _08095E74
	.align 2, 0
_08095DF0: .4byte gUnk_02033280
_08095DF4:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08095E30
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0x4b
	bl InitializeAnimation
	ldr r1, _08095E78 @ =gUnk_08114F30
	ldrb r2, [r4, #0x19]
	lsrs r0, r2, #6
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #6
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r4, #0
	adds r1, r4, #0
	bl sub_0806FAB0
_08095E30:
	ldrb r2, [r4, #0xb]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08095E56
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08095E56
	movs r0, #0xff
	strb r0, [r4, #0xb]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r4, #0x20]
	movs r0, #0xc0
	lsls r0, r0, #8
	strh r0, [r4, #0x24]
_08095E56:
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	adds r0, r4, #0
	bl sub_08003FC4
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_080040A8
	cmp r0, #0
	bne _08095E74
	bl sub_0805E780
_08095E74:
	pop {r4, r5, pc}
	.align 2, 0
_08095E78: .4byte gUnk_08114F30

	thumb_func_start sub_08095E7C
sub_08095E7C: @ 0x08095E7C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0x6a
	movs r1, #0x1e
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08095EA8
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	ldr r1, [r6, #4]
	adds r0, r4, #0
	bl sub_0807DAD0
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
_08095EA8:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08095EAC
sub_08095EAC: @ 0x08095EAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	adds r4, r1, #0
	movs r0, #0x6a
	movs r1, #0x1e
	movs r2, #1
	bl CreateObject
	adds r5, r0, #0
	cmp r5, #0
	beq _08095F2A
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _08095EE0
	movs r7, #0x10
	movs r6, #0x1f
	movs r0, #0x80
	lsls r0, r0, #7
	mov sl, r0
	movs r2, #0
	mov r8, r2
	b _08095F02
_08095EE0:
	movs r7, #8
	movs r6, #0xf
	movs r0, #0x80
	lsls r0, r0, #0xb
	mov sl, r0
	ldr r4, _08095F34 @ =gUnk_08122B0E
	bl Random
	movs r1, #7
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	movs r0, #0
	ldrsh r2, [r1, r0]
	mov r8, r2
	movs r0, #0xff
	strb r0, [r5, #0xb]
_08095F02:
	bl Random
	adds r4, r0, #0
	ands r4, r6
	subs r4, r7, r4
	bl Random
	ands r6, r0
	subs r3, r7, r6
	lsls r4, r4, #0x10
	lsls r3, r3, #0x10
	mov r0, sb
	adds r1, r5, #0
	adds r2, r4, #0
	bl PositionRelative
	mov r2, sl
	str r2, [r5, #0x20]
	mov r0, r8
	strh r0, [r5, #0x24]
_08095F2A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08095F34: .4byte gUnk_08122B0E

	thumb_func_start sub_08095F38
sub_08095F38: @ 0x08095F38
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08095FC2
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	ldrb r0, [r4, #0xb]
	cmp r0, #4
	beq _08095F64
	cmp r0, #4
	bgt _08095F5A
	cmp r0, #3
	beq _08095F60
	b _08095F6A
_08095F5A:
	cmp r0, #6
	beq _08095F68
	b _08095F6A
_08095F60:
	movs r1, #0
	b _08095F6A
_08095F64:
	movs r1, #1
	b _08095F6A
_08095F68:
	movs r1, #4
_08095F6A:
	adds r0, r4, #0
	bl sub_0801D2B4
	ldr r0, _08095F90 @ =gLinkEntity
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08095F98
	adds r1, r4, #0
	adds r1, #0x84
	ldr r0, _08095F94 @ =0x000008BF
	str r0, [r1]
	movs r0, #0x34
	strb r0, [r4, #0xe]
	movs r0, #0xb5
	b _08095FA6
	.align 2, 0
_08095F90: .4byte gLinkEntity
_08095F94: .4byte 0x000008BF
_08095F98:
	adds r1, r4, #0
	adds r1, #0x84
	ldr r0, _08096020 @ =0x000008E3
	str r0, [r1]
	movs r0, #0x55
	strb r0, [r4, #0xe]
	movs r0, #0xd6
_08095FA6:
	strb r0, [r4, #0xf]
	ldr r0, _08096024 @ =gLinkEntity
	adds r1, r4, #0
	bl CopyPosition
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
_08095FC2:
	ldr r5, _08096024 @ =gLinkEntity
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08095FE0
	movs r0, #0xef
	ands r0, r1
	strb r0, [r2]
	movs r0, #0xea
	lsls r0, r0, #1
	bl PlaySFX
_08095FE0:
	ldrh r0, [r5, #0x12]
	adds r1, r4, #0
	adds r1, #0x84
	ldr r2, [r1]
	lsrs r1, r2, #8
	cmp r0, r1
	bne _08095FFC
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	beq _08096000
_08095FFC:
	bl sub_0805E780
_08096000:
	ldr r0, _08096024 @ =gLinkEntity
	ldrb r0, [r0, #0x1e]
	ldrb r1, [r4, #0xe]
	subs r0, r0, r1
	ldrb r1, [r4, #0xf]
	adds r0, r0, r1
	ldrb r1, [r4, #0x1e]
	cmp r0, r1
	beq _0809601E
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x1e]
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
_0809601E:
	pop {r4, r5, pc}
	.align 2, 0
_08096020: .4byte 0x000008E3
_08096024: .4byte gLinkEntity

	thumb_func_start sub_08096028
sub_08096028: @ 0x08096028
	push {r4, r5, lr}
	movs r4, #6
	movs r5, #0xc0
	lsls r5, r5, #2
	adds r0, r5, #0
	movs r1, #0x7b
	bl CheckLocalFlagByOffset
	cmp r0, #0
	bne _0809603E
	movs r4, #4
_0809603E:
	adds r0, r5, #0
	movs r1, #0x7a
	bl CheckLocalFlagByOffset
	cmp r0, #0
	bne _0809604C
	movs r4, #3
_0809604C:
	movs r0, #0x6a
	movs r1, #0x1f
	adds r2, r4, #0
	bl CreateObject
	pop {r4, r5, pc}

	thumb_func_start sub_08096058
sub_08096058: @ 0x08096058
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0809606C
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0807DD64
_0809606C:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08096084
sub_08096084: @ 0x08096084
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080960A0
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0807DD64
	ldrb r1, [r4, #0xb]
	adds r0, r4, #0
	bl InitializeAnimation
_080960A0:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_08004274
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _080960C0
	adds r1, r4, #0
	bl CopyPosition
_080960C0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080960C4
sub_080960C4: @ 0x080960C4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0x6a
	movs r1, #0x23
	movs r2, #0x49
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08096110
	str r5, [r4, #0x50]
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	ldr r1, _08096160 @ =gUnk_08114F34
	ldrb r0, [r5, #0x19]
	lsrs r0, r0, #6
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #6
	ldrb r2, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FAD8
	ldr r1, [r6, #4]
	adds r0, r4, #0
	bl sub_0807DAD0
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
_08096110:
	movs r0, #0x6a
	movs r1, #0x24
	movs r2, #0x4a
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0809615E
	str r5, [r4, #0x50]
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	ldr r1, _08096164 @ =gUnk_08114F30
	ldrb r0, [r5, #0x19]
	lsrs r0, r0, #6
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #6
	ldrb r2, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FAB0
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	ldr r1, [r6, #4]
	adds r0, r4, #0
	bl sub_0807DAD0
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
_0809615E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08096160: .4byte gUnk_08114F34
_08096164: .4byte gUnk_08114F30

	thumb_func_start sub_08096168
sub_08096168: @ 0x08096168
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0809618C
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0x4b
	bl InitializeAnimation
_0809618C:
	adds r0, r4, #0
	bl sub_08004274
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F62C
	adds r0, r4, #0
	bl sub_080040A8
	cmp r0, #0
	bne _080961AC
	bl sub_0805E780
_080961AC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080961B0
sub_080961B0: @ 0x080961B0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r5, #0
	ldr r6, _080961F0 @ =gUnk_08122B1E
_080961B8:
	movs r0, #0x6a
	movs r1, #0x25
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _080961E6
	adds r0, r7, #0
	adds r1, r4, #0
	bl CopyPosition
	lsls r0, r5, #5
	strb r0, [r4, #0x15]
	bl Random
	movs r2, #0xf8
	lsls r2, r2, #1
	adds r1, r2, #0
	ands r0, r1
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r4, #0x24]
_080961E6:
	adds r6, #2
	adds r5, #1
	cmp r5, #7
	ble _080961B8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080961F0: .4byte gUnk_08122B1E

	thumb_func_start sub_080961F4
sub_080961F4: @ 0x080961F4
	ldrb r2, [r0, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0, #0x18]
	movs r1, #0
	strb r1, [r0, #0x1e]
	bx lr

	thumb_func_start sub_08096208
sub_08096208: @ 0x08096208
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #1
	ldr r0, _08096238 @ =gUnk_08122B2E
	adds r4, r1, r0
	movs r0, #0x6a
	movs r1, #0x26
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _08096234
	movs r2, #0
	ldrsb r2, [r4, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r4, r3]
	lsls r3, r3, #0x10
	adds r0, r5, #0
	bl PositionRelative
_08096234:
	pop {r4, r5, pc}
	.align 2, 0
_08096238: .4byte gUnk_08122B2E

	thumb_func_start sub_0809623C
sub_0809623C: @ 0x0809623C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x6a
	movs r1, #0x27
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _0809625A
	ldr r3, _0809625C @ =0xFFF00000
	adds r0, r4, #0
	movs r2, #0
	bl PositionRelative
_0809625A:
	pop {r4, pc}
	.align 2, 0
_0809625C: .4byte 0xFFF00000

	thumb_func_start sub_08096260
sub_08096260: @ 0x08096260
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x6a
	movs r1, #0x28
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _0809627E
	ldr r3, _08096280 @ =0xFFF00000
	adds r0, r4, #0
	movs r2, #0
	bl PositionRelative
_0809627E:
	pop {r4, pc}
	.align 2, 0
_08096280: .4byte 0xFFF00000

	thumb_func_start sub_08096284
sub_08096284: @ 0x08096284
	push {lr}
	movs r1, #0xd
	bl sub_0809629C
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08096290
sub_08096290: @ 0x08096290
	push {lr}
	movs r1, #0xe
	bl sub_0809629C
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0809629C
sub_0809629C: @ 0x0809629C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _080962B2
	movs r0, #1
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	bl sub_0807DD64
_080962B2:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r5, #0
	bl sub_0807DDE4
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r5, #0
	bl sub_08003FC4
	ldrb r4, [r5, #0xa]
	strb r6, [r5, #0xa]
	adds r0, r5, #0
	bl sub_08080CB4
	strb r4, [r5, #0xa]
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080962D8
sub_080962D8: @ 0x080962D8
	push {lr}
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #6
	bl DoFade
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080962E8
sub_080962E8: @ 0x080962E8
	push {lr}
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #7
	bl DoFade
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080962F8
sub_080962F8: @ 0x080962F8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r1, #4]
	lsls r4, r4, #4
	ldr r0, _08096318 @ =gUnk_08122B3C
	adds r4, r4, r0
	ldrb r2, [r4, #0xc]
	adds r3, r4, #0
	adds r3, #8
	adds r0, r5, #0
	movs r1, #1
	bl sub_08078850
	str r4, [r5, #0x48]
	pop {r4, r5, pc}
	.align 2, 0
_08096318: .4byte gUnk_08122B3C
