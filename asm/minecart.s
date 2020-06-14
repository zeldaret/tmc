	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_080916CC
sub_080916CC: @ 0x080916CC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080916E8 @ =gUnk_081223A8
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r4, #0x41
	movs r0, #0
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_080916E8: .4byte gUnk_081223A8

	thumb_func_start sub_080916EC
sub_080916EC: @ 0x080916EC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0xe]
	lsls r0, r0, #3
	ldr r1, _080917C8 @ =gUnk_030010EC
	adds r7, r0, r1
	adds r0, r6, #0
	adds r0, #0x84
	str r7, [r0]
	ldr r0, _080917CC @ =gRoomControls
	ldrb r0, [r0, #5]
	ldrb r1, [r7, #4]
	cmp r0, r1
	bne _08091716
	ldr r0, _080917D0 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0809171A
_08091716:
	bl DeleteThisEntity
_0809171A:
	ldr r4, _080917CC @ =gRoomControls
	ldrh r1, [r7]
	movs r5, #0x3f
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #4
	ldrh r2, [r4, #6]
	adds r0, r0, r2
	adds r0, #8
	strh r0, [r6, #0x2e]
	ldrh r1, [r7]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r1
	lsrs r0, r0, #2
	ldrh r3, [r4, #8]
	adds r0, r0, r3
	adds r0, #8
	strh r0, [r6, #0x32]
	ldrb r0, [r7, #5]
	strb r0, [r6, #0x14]
	ldrb r0, [r7, #6]
	strb r0, [r6, #0xb]
	movs r2, #1
	strb r2, [r6, #0xc]
	ldr r0, _080917D4 @ =gUnk_080FD310
	str r0, [r6, #0x48]
	ldrb r1, [r6, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r6, #0x10]
	adds r0, r6, #0
	adds r0, #0x3f
	strb r2, [r0]
	adds r1, r6, #0
	adds r1, #0x3c
	movs r0, #0x47
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x44
	strb r0, [r1]
	subs r1, #5
	movs r0, #0x80
	strb r0, [r1]
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #3
	strb r0, [r6, #0x15]
	movs r0, #0xe0
	lsls r0, r0, #3
	strh r0, [r6, #0x24]
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r6, #0x14]
	adds r1, #4
	ldrb r0, [r6, #0xb]
	adds r1, r1, r0
	adds r0, r6, #0
	bl InitAnimationForceUpdate
	ldr r0, _080917D8 @ =0x00004022
	movs r2, #0x2e
	ldrsh r1, [r6, r2]
	ldrh r2, [r4, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r5
	movs r3, #0x32
	ldrsh r2, [r6, r3]
	ldrh r3, [r4, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r5
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r6, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080917C8: .4byte gUnk_030010EC
_080917CC: .4byte gRoomControls
_080917D0: .4byte gLinkState
_080917D4: .4byte gUnk_080FD310
_080917D8: .4byte 0x00004022

	thumb_func_start sub_080917DC
sub_080917DC: @ 0x080917DC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x1d
	bne _08091810
	movs r0, #0xa8
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	movs r0, #7
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	ldrb r0, [r4, #0xb]
	adds r1, r1, r0
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	ldr r0, _0809180C @ =0x0000013B
	bl PlaySFX
	b _080918A0
	.align 2, 0
_0809180C: .4byte 0x0000013B
_08091810:
	adds r0, r4, #0
	bl sub_0800445C
	cmp r0, #0
	beq _0809184A
	ldr r2, _08091840 @ =gLinkState
	ldr r0, [r2, #0x30]
	ldr r1, _08091844 @ =0x00040080
	ands r0, r1
	cmp r0, #0
	bne _08091848
	ldrb r0, [r2, #0x1c]
	cmp r0, #0
	bne _08091848
	ldrb r0, [r2, #5]
	cmp r0, #0
	bne _08091848
	ldrb r0, [r2, #2]
	cmp r0, #0
	bne _08091848
	ldrb r0, [r4, #0xe]
	adds r0, #1
	b _0809184A
	.align 2, 0
_08091840: .4byte gLinkState
_08091844: .4byte 0x00040080
_08091848:
	movs r0, #0
_0809184A:
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0809189C
	ldrb r0, [r4, #0xe]
	cmp r0, #8
	bls _080918A0
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldr r2, _08091894 @ =gLinkState
	movs r0, #0x81
	strb r0, [r2, #2]
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [r2, #0x30]
	ldr r1, _08091898 @ =gLinkEntity
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r1, #0x20]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #0x24]
	ldrb r2, [r1, #0x10]
	movs r0, #0x7f
	ands r0, r2
	strb r0, [r1, #0x10]
	bl sub_08077B2C
	bl sub_0807A108
	movs r0, #0x7c
	bl PlaySFX
	b _080918A0
	.align 2, 0
_08091894: .4byte gLinkState
_08091898: .4byte gLinkEntity
_0809189C:
	movs r0, #0
	strb r0, [r4, #0xe]
_080918A0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080918A4
sub_080918A4: @ 0x080918A4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08091964 @ =gLinkEntity
	adds r1, r5, #0
	movs r2, #2
	movs r3, #2
	bl sub_080041A0
	cmp r0, #0
	beq _08091974
	ldrh r0, [r4, #0x2e]
	strh r0, [r5, #0x2e]
	ldrh r0, [r4, #0x32]
	strh r0, [r5, #0x32]
	movs r0, #0x36
	ldrsh r1, [r5, r0]
	movs r0, #0x10
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0809197E
	ldr r0, [r5, #0x20]
	cmp r0, #0
	bge _080919A4
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #1
	strb r0, [r5, #0x14]
	ldr r2, _08091968 @ =gLinkState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x13
	eors r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2, #0x30]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x10]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x97
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	adds r0, #1
	subs r1, #3
	orrs r0, r2
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	adds r2, r4, #0
	adds r2, #0x3b
	strb r0, [r2]
	adds r1, #4
	movs r0, #0x18
	strb r0, [r1]
	adds r1, #4
	movs r0, #8
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0801766C
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _0809196C @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_0807BA8C
	ldr r0, _08091970 @ =0x00000137
	bl PlaySFX
	b _0809197E
	.align 2, 0
_08091964: .4byte gLinkEntity
_08091968: .4byte gLinkState
_0809196C: .4byte gRoomControls
_08091970: .4byte 0x00000137
_08091974:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080045C4
	strb r0, [r5, #0x15]
_0809197E:
	ldr r3, _080919A8 @ =gLinkEntity
	ldr r0, [r3, #0x20]
	cmp r0, #0
	bge _080919A4
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	subs r1, #1
	adds r3, #0x29
	movs r0, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_080919A4:
	pop {r4, r5, pc}
	.align 2, 0
_080919A8: .4byte gLinkEntity

	thumb_func_start sub_080919AC
sub_080919AC: @ 0x080919AC
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
	bl sub_080042B8
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

	thumb_func_start sub_08091C0C
sub_08091C0C: @ 0x08091C0C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004168
	ldr r1, _08091C30 @ =gLinkEntity
	adds r0, r4, #0
	bl CopyPosition
	adds r0, r4, #0
	bl sub_080002B8
	cmp r0, #0x68
	beq _08091C46
	cmp r0, #0x68
	bhi _08091C34
	cmp r0, #0x67
	beq _08091C3E
	b _08091C80
	.align 2, 0
_08091C30: .4byte gLinkEntity
_08091C34:
	cmp r0, #0x69
	beq _08091C4E
	cmp r0, #0x6a
	beq _08091C66
	b _08091C80
_08091C3E:
	ldrb r0, [r4, #0x15]
	cmp r0, #0x18
	beq _08091C54
	b _08091C76
_08091C46:
	ldrb r0, [r4, #0x15]
	cmp r0, #8
	beq _08091C6C
	b _08091C5C
_08091C4E:
	ldrb r0, [r4, #0x15]
	cmp r0, #8
	bne _08091C5C
_08091C54:
	movs r0, #0
	strb r0, [r4, #0x15]
	strb r0, [r4, #0x14]
	b _08091C86
_08091C5C:
	movs r0, #0x18
	strb r0, [r4, #0x15]
	movs r0, #3
	strb r0, [r4, #0x14]
	b _08091C86
_08091C66:
	ldrb r0, [r4, #0x15]
	cmp r0, #0x18
	bne _08091C76
_08091C6C:
	movs r0, #0x10
	strb r0, [r4, #0x15]
	movs r0, #2
	strb r0, [r4, #0x14]
	b _08091C86
_08091C76:
	movs r0, #8
	strb r0, [r4, #0x15]
	movs r0, #1
	strb r0, [r4, #0x14]
	b _08091C86
_08091C80:
	movs r0, #3
	strb r0, [r4, #0xc]
	b _08091C92
_08091C86:
	movs r0, #3
	strb r0, [r4, #0xc]
	ldr r1, _08091C94 @ =gLinkEntity
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #1
	strb r0, [r1, #0x14]
_08091C92:
	pop {r4, pc}
	.align 2, 0
_08091C94: .4byte gLinkEntity

	thumb_func_start sub_08091C98
sub_08091C98: @ 0x08091C98
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	ldr r5, _08091CC0 @ =gLinkEntity
	adds r0, r4, #0
	adds r1, r5, #0
	bl CopyPosition
	ldr r1, _08091CC4 @ =gRoomControls
	ldrh r0, [r1]
	cmp r0, #0
	bne _08091CBE
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0xe0
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	str r5, [r1, #0x30]
_08091CBE:
	pop {r4, r5, pc}
	.align 2, 0
_08091CC0: .4byte gLinkEntity
_08091CC4: .4byte gRoomControls

	thumb_func_start sub_08091CC8
sub_08091CC8: @ 0x08091CC8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r2, _08091D58 @ =gLinkState
	ldrb r0, [r2, #2]
	cmp r0, #0
	bne _08091D64
	movs r0, #1
	strb r0, [r6, #0xc]
	ldrb r0, [r6, #0x15]
	movs r1, #0x10
	eors r0, r1
	strb r0, [r6, #0x15]
	ldrb r0, [r6, #0x14]
	movs r1, #2
	eors r0, r1
	strb r0, [r6, #0x14]
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x13
	eors r0, r1
	str r0, [r2, #0x30]
	adds r0, r6, #0
	adds r0, #0x84
	ldr r4, [r0]
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	ldr r5, _08091D5C @ =gRoomControls
	ldrh r0, [r5, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r2, #0x32
	ldrsh r0, [r6, r2]
	ldrh r2, [r5, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	strh r1, [r4]
	ldrb r0, [r5, #5]
	strb r0, [r4, #4]
	ldrb r0, [r6, #0x14]
	strb r0, [r4, #5]
	ldrb r1, [r6, #0x14]
	adds r1, #0x10
	adds r0, r6, #0
	bl InitAnimationForceUpdate
	ldr r0, _08091D60 @ =0x00004022
	movs r3, #0x2e
	ldrsh r1, [r6, r3]
	ldrh r2, [r5, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r3, #0x32
	ldrsh r2, [r6, r3]
	ldrh r3, [r5, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r6, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
	b _08091D8A
	.align 2, 0
_08091D58: .4byte gLinkState
_08091D5C: .4byte gRoomControls
_08091D60: .4byte 0x00004022
_08091D64:
	adds r0, r6, #0
	bl sub_080042B8
	ldr r3, _08091D8C @ =gLinkEntity
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	subs r1, #1
	adds r3, #0x29
	movs r0, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_08091D8A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08091D8C: .4byte gLinkEntity

	thumb_func_start sub_08091D90
sub_08091D90: @ 0x08091D90
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bge _08091DA0
	adds r0, r4, #0
	bl sub_080042B8
_08091DA0:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _08091DD8
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08091DD8
	ldrb r1, [r4, #0xb]
	movs r0, #4
	eors r1, r0
	strb r1, [r4, #0xb]
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	strb r1, [r0, #6]
	movs r0, #0x9e
	lsls r0, r0, #1
	bl PlaySFX
_08091DD8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08091DDC
sub_08091DDC: @ 0x08091DDC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08091E30 @ =gUnk_081223D0
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #1
	adds r1, r0, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r4, #0
	bl sub_080002CC
	cmp r0, #0xff
	bne _08091E5C
	ldr r0, _08091E34 @ =gLinkEntity
	ldrb r1, [r4, #0x14]
	bl sub_0807BD14
	cmp r0, #0
	beq _08091E5C
	ldrb r1, [r4, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r4, #0x11]
	movs r0, #5
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0x15]
	cmp r0, #8
	beq _08091E40
	cmp r0, #8
	bgt _08091E38
	cmp r0, #0
	beq _08091E40
	b _08091E44
	.align 2, 0
_08091E30: .4byte gUnk_081223D0
_08091E34: .4byte gLinkEntity
_08091E38:
	cmp r0, #0x10
	beq _08091E40
	cmp r0, #0x18
	bne _08091E44
_08091E40:
	movs r0, #0xa0
	strh r0, [r4, #0x24]
_08091E44:
	ldr r0, _08091E54 @ =gLinkEntity
	ldrb r1, [r4, #0x15]
	strb r1, [r0, #0x15]
	ldr r0, _08091E58 @ =gRoomControls
	str r4, [r0, #0x30]
	movs r0, #1
	b _08091E5E
	.align 2, 0
_08091E54: .4byte gLinkEntity
_08091E58: .4byte gRoomControls
_08091E5C:
	movs r0, #0
_08091E5E:
	pop {r4, pc}
