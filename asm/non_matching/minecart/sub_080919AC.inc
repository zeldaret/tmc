	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r1, _080919D4 @ =gRoomControls
	movs r0, #0
	mov r8, r0
	movs r0, #7
	strb r0, [r1, #0xe]
	ldr r0, _080919D8 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _080919DC
	movs r0, #1
	strb r0, [r5, #0xc]
	b _08091C04
	.align 2, 0
_080919D4: .4byte gRoomControls
_080919D8: .4byte gLinkState
_080919DC:
	ldr r4, _08091A14 @ =gLinkEntity
	adds r6, r4, #0
	adds r6, #0x5a
	ldrb r1, [r6]
	movs r7, #0xf
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _08091A22
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	ldrb r1, [r6]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0x10
	bne _08091A18
	adds r1, r5, #0
	adds r1, #0x63
	movs r0, #1
	strb r0, [r1]
	b _08091C04
	.align 2, 0
_08091A14: .4byte gLinkEntity
_08091A18:
	adds r0, r5, #0
	adds r0, #0x63
	mov r1, r8
	strb r1, [r0]
	b _08091C04
_08091A22:
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	mov r0, r8
	strh r0, [r4, #0x24]
	adds r0, r5, #0
	bl sub_0806F69C
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	subs r1, #1
	adds r3, r4, #0
	adds r3, #0x29
	movs r0, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r5, #0
	bl sub_08091DDC
	cmp r0, #0
	beq _08091A68
	b _08091C04
_08091A68:
	ldr r0, _08091AD8 @ =gUnk_030010A0
	ldr r0, [r0]
	ands r0, r7
	cmp r0, #0
	bne _08091A7A
	movs r0, #0x9c
	lsls r0, r0, #1
	bl PlaySFX
_08091A7A:
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08091A92
	movs r0, #0x7b
	bl PlaySFX
	movs r0, #0x3c
	strb r0, [r5, #0xf]
_08091A92:
	ldr r2, _08091ADC @ =gUnk_081223C8
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #1
	adds r1, r0, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r5, #0
	bl sub_080002B4
	adds r4, r0, #0
	ldr r1, _08091AE0 @ =gUnk_081223D8
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_08007DD6
	cmp r0, #0
	bne _08091AE4
	ldrb r0, [r5, #0x15]
	movs r1, #0x10
	eors r0, r1
	strb r0, [r5, #0x15]
	ldrb r0, [r5, #0x14]
	movs r1, #2
	eors r0, r1
	strb r0, [r5, #0x14]
	b _08091BD8
	.align 2, 0
_08091AD8: .4byte gUnk_030010A0
_08091ADC: .4byte gUnk_081223C8
_08091AE0: .4byte gUnk_081223D8
_08091AE4:
	adds r0, r4, #0
	subs r0, #0x64
	cmp r0, #0xb
	bhi _08091BD8
	lsls r0, r0, #2
	ldr r1, _08091AF8 @ =_08091AFC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08091AF8: .4byte _08091AFC
_08091AFC: @ jump table
	.4byte _08091B2C @ case 0
	.4byte _08091BD8 @ case 1
	.4byte _08091BD8 @ case 2
	.4byte _08091BB8 @ case 3
	.4byte _08091BB8 @ case 4
	.4byte _08091BB8 @ case 5
	.4byte _08091BB8 @ case 6
	.4byte _08091BD8 @ case 7
	.4byte _08091BB8 @ case 8
	.4byte _08091BB8 @ case 9
	.4byte _08091BB8 @ case 10
	.4byte _08091BB8 @ case 11
_08091B2C:
	ldrb r1, [r5, #0x10]
	movs r0, #0xdf
	ands r0, r1
	strb r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #1
	strb r0, [r1]
	subs r1, #3
	movs r0, #0x47
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x44
	strb r0, [r1]
	subs r1, #5
	movs r4, #0x80
	movs r0, #0x80
	strb r0, [r1]
	movs r0, #6
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	bl sub_08017744
	ldr r2, _08091BAC @ =gLinkState
	movs r0, #0x41
	strb r0, [r2, #2]
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #5
	eors r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [r2, #0x30]
	ldr r1, _08091BB0 @ =gLinkEntity
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r1, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1, #0x24]
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #1
	strb r0, [r1, #0x14]
	ldrb r0, [r5, #0x15]
	strb r0, [r1, #0x15]
	ldrb r0, [r1, #0x10]
	orrs r4, r0
	strb r4, [r1, #0x10]
	adds r0, r5, #0
	bl sub_08004168
	ldrb r1, [r5, #0x14]
	adds r1, #0xc
	adds r0, r5, #0
	bl InitAnimationForceUpdate
	movs r0, #0x78
	bl PlaySFX
	ldr r0, _08091BB4 @ =0x00000139
	bl PlaySFX
	b _08091C04
	.align 2, 0
_08091BAC: .4byte gLinkState
_08091BB0: .4byte gLinkEntity
_08091BB4: .4byte 0x00000139
_08091BB8:
	adds r0, r5, #0
	bl sub_080002B8
	cmp r4, r0
	bne _08091BD8
	adds r0, r5, #0
	bl sub_08091C0C
	ldr r1, _08091BD4 @ =gLinkEntity
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #1
	strb r0, [r1, #0x14]
	b _08091C04
	.align 2, 0
_08091BD4: .4byte gLinkEntity
_08091BD8:
	ldr r2, _08091BF8 @ =gLinkEntity
	ldrb r0, [r5, #0x14]
	lsls r1, r0, #1
	strb r1, [r2, #0x14]
	adds r1, r5, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bne _08091BFC
	adds r0, r5, #0
	bl UpdateAnimationSingleFrame
	b _08091C04
	.align 2, 0
_08091BF8: .4byte gLinkEntity
_08091BFC:
	ldrb r1, [r5, #0x14]
	adds r0, r5, #0
	bl InitAnimationForceUpdate
_08091C04:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
    .syntax divided