	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08087998
sub_08087998: @ 0x08087998
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080879C0 @ =gUnk_08120A68
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080879C4
	subs r0, #1
	strb r0, [r4, #0xe]
	b _080879EA
	.align 2, 0
_080879C0: .4byte gUnk_08120A68
_080879C4:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _080879D8
	adds r0, r4, #0
	movs r1, #0xd
	bl UpdateSprite
	b _080879EA
_080879D8:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080879EA
	bl sub_0805E780
_080879EA:
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08087A0C
	adds r0, r4, #0
	bl sub_0806F69C
	ldrh r1, [r4, #0x24]
	movs r2, #0x24
	ldrsh r0, [r4, r2]
	cmp r0, #0x10
	ble _08087A08
	adds r0, r1, #0
	subs r0, #0x10
	b _08087A0A
_08087A08:
	movs r0, #0
_08087A0A:
	strh r0, [r4, #0x24]
_08087A0C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08087A10
sub_08087A10: @ 0x08087A10
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _08087A26
	adds r0, r4, #0
	movs r1, #3
	bl sub_0801D2B4
_08087A26:
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bls _08087A3C
	ldr r0, _08087A4C @ =gUnk_08120A78
	ldrb r1, [r4, #0xa]
	subs r1, #3
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_0801D2B4
_08087A3C:
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bhi _08087AF0
	lsls r0, r0, #2
	ldr r1, _08087A50 @ =_08087A54
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08087A4C: .4byte gUnk_08120A78
_08087A50: .4byte _08087A54
_08087A54: @ jump table
	.4byte _08087A76 @ case 0
	.4byte _08087AF0 @ case 1
	.4byte _08087AA0 @ case 2
	.4byte _08087A76 @ case 3
	.4byte _08087A68 @ case 4
_08087A68:
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
_08087A76:
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	movs r2, #0
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #1
	strb r0, [r1]
	subs r1, #9
	movs r0, #7
	strb r0, [r1]
	adds r1, #3
	movs r0, #0xaa
	strb r0, [r1]
	subs r1, #4
	movs r0, #0xe
	strb r0, [r1]
	ldr r0, _08087AE4 @ =gUnk_08120A8C
	str r0, [r4, #0x48]
	strb r2, [r4, #0x1c]
_08087AA0:
	bl Random
	ldr r2, _08087AE8 @ =gUnk_08120A7A
	movs r3, #3
	adds r1, r0, #0
	ands r1, r3
	adds r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r4, #0xe]
	lsrs r2, r0, #8
	ands r2, r3
	movs r1, #0x10
	ands r1, r0
	cmp r1, #0
	beq _08087AC0
	rsbs r2, r2, #0
_08087AC0:
	ldrh r0, [r4, #0x2e]
	adds r0, r0, r2
	strh r0, [r4, #0x2e]
	ldrh r0, [r4, #0x32]
	adds r0, r0, r2
	strh r0, [r4, #0x32]
	ldr r0, _08087AEC @ =gLinkEntity
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #0xa
	bl UpdateSprite
	b _08087AF8
	.align 2, 0
_08087AE4: .4byte gUnk_08120A8C
_08087AE8: .4byte gUnk_08120A7A
_08087AEC: .4byte gLinkEntity
_08087AF0:
	adds r0, r4, #0
	movs r1, #0x10
	bl UpdateSprite
_08087AF8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08087AFC
sub_08087AFC: @ 0x08087AFC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08087B56
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x16
	beq _08087B3C
	cmp r0, #0x16
	bgt _08087B1E
	cmp r0, #0x13
	beq _08087B4E
	b _08087B56
_08087B1E:
	cmp r0, #0x1c
	bgt _08087B56
	cmp r0, #0x1b
	blt _08087B56
	ldr r1, [r4, #0x4c]
	adds r0, r1, #0
	adds r0, #0x84
	ldr r0, [r0]
	adds r1, #0x80
	ldr r1, [r1]
	ldr r2, [r4, #0x2c]
	ldr r3, [r4, #0x30]
	bl sub_080045D4
	b _08087B44
_08087B3C:
	ldr r0, [r4, #0x4c]
	adds r1, r4, #0
	bl sub_080045C4
_08087B44:
	strb r0, [r4, #0x15]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	b _08087B56
_08087B4E:
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
_08087B56:
	pop {r4, pc}

	thumb_func_start sub_08087B58
sub_08087B58: @ 0x08087B58
	push {lr}
	adds r2, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08087B80
	ldr r0, _08087B7C @ =gUnk_08120A80
	ldrb r1, [r2, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
	b _08087B84
	.align 2, 0
_08087B7C: .4byte gUnk_08120A80
_08087B80:
	movs r0, #1
	strb r0, [r2, #0xc]
_08087B84:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08087B88
sub_08087B88: @ 0x08087B88
	adds r2, r0, #0
	adds r2, #0x46
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r2]
	movs r1, #1
	strb r1, [r0, #0xd]
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_08087B9C
sub_08087B9C: @ 0x08087B9C
	push {lr}
	bl sub_0806F3E4
	cmp r0, #0
	beq _08087BAA
	bl sub_0805E780
_08087BAA:
	pop {pc}
