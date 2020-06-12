	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08064A90
sub_08064A90: @ 0x08064A90
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08064ABC
	ldr r0, _08064AB8 @ =gUnk_0810FA44
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
	b _08064B42
	.align 2, 0
_08064AB8: .4byte gUnk_0810FA44
_08064ABC:
	ldrb r1, [r4, #0xc]
	adds r5, r1, #0
	cmp r5, #0
	bne _08064AE4
	ldr r1, _08064AE0 @ =gUnk_0810FA38
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _08064B42
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r5, [r4, #0xe]
	adds r0, r4, #0
	bl sub_0807DD50
	b _08064B42
	.align 2, 0
_08064AE0: .4byte gUnk_0810FA38
_08064AE4:
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _08064B00
	adds r0, r4, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _08064B42
	movs r0, #1
	strb r0, [r4, #0xc]
	b _08064B42
_08064B00:
	adds r2, r4, #0
	adds r2, #0x39
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	bne _08064B34
	movs r0, #0xff
	orrs r0, r1
	strb r0, [r4, #0xc]
	strb r3, [r2]
	ldr r1, _08064B30 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r4, #0
	bl LoadAnimation
	adds r0, r4, #0
	bl sub_0806F118
	b _08064B42
	.align 2, 0
_08064B30: .4byte gLinkEntity
_08064B34:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	adds r0, r4, #0
	bl sub_08064C9C
_08064B42:
	pop {r4, r5, pc}

	thumb_func_start sub_08064B44
sub_08064B44: @ 0x08064B44
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08064B80 @ =gUnk_0810FA38
	bl sub_0806FDEC
	cmp r0, #0
	beq _08064B7E
	adds r0, r4, #0
	movs r1, #2
	bl UpdateSprite
	ldr r1, _08064B84 @ =gUnk_0810FA5A
	adds r0, r4, #0
	movs r2, #0
	bl sub_0806EE04
	adds r0, r4, #0
	bl sub_08064CC0
	movs r1, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
_08064B7E:
	pop {r4, pc}
	.align 2, 0
_08064B80: .4byte gUnk_0810FA38
_08064B84: .4byte gUnk_0810FA5A

	thumb_func_start sub_08064B88
sub_08064B88: @ 0x08064B88
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x39
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #1
	beq _08064BFA
	cmp r0, #1
	bgt _08064BA2
	cmp r0, #0
	beq _08064BA8
	b _08064BFA
_08064BA2:
	cmp r0, #2
	beq _08064BCE
	b _08064BFA
_08064BA8:
	adds r0, r4, #0
	bl sub_0806EE20
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r4, #0x14]
	cmp r2, #0
	beq _08064BC6
	movs r1, #0x7f
	ands r1, r2
	adds r0, r4, #0
	bl UpdateSprite
_08064BC6:
	adds r0, r4, #0
	bl sub_08004274
	b _08064C28
_08064BCE:
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0806EDC4
	adds r1, r0, #0
	cmp r1, #0
	bge _08064BE0
	ldrb r1, [r4, #0x14]
_08064BE0:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl UpdateSprite
	movs r0, #0
	strb r0, [r5]
	adds r0, r4, #0
	bl sub_0806F118
	b _08064C28
_08064BFA:
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0806EDC4
	adds r1, r0, #0
	cmp r1, #0
	bge _08064C0C
	ldrb r1, [r4, #0x14]
_08064C0C:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl UpdateSprite
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08064CD8
_08064C28:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08064C2C
sub_08064C2C: @ 0x08064C2C
	push {lr}
	adds r2, r0, #0
	ldr r0, _08064C4C @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _08064C48
	movs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0xf]
	adds r0, r2, #0
	bl UpdateSprite
_08064C48:
	pop {pc}
	.align 2, 0
_08064C4C: .4byte gTextBox

	thumb_func_start sub_08064C50
sub_08064C50: @ 0x08064C50
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _08064C68
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xf]
	adds r0, r4, #0
	bl UpdateSprite
_08064C68:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08064C6C
sub_08064C6C: @ 0x08064C6C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r2, #0x3f
	ands r2, r0
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806FF60
	ldrb r2, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806FF60
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_0806FF88
	adds r0, r4, #0
	bl sub_0807000C
	pop {r4, pc}

	thumb_func_start sub_08064C9C
sub_08064C9C: @ 0x08064C9C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	beq _08064CB8
	ldr r0, _08064CBC @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08064CB8
	adds r0, r2, #0
	bl sub_080A29BC
_08064CB8:
	pop {pc}
	.align 2, 0
_08064CBC: .4byte gUnk_030010A0

	thumb_func_start sub_08064CC0
sub_08064CC0: @ 0x08064CC0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, pc}

	thumb_func_start sub_08064CD8
sub_08064CD8: @ 0x08064CD8
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #2
	movs r0, #0x46
	bl GetInventoryValue
	cmp r0, #0
	bne _08064CF4
	movs r0, #0x73
	bl CheckLocalFlag
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
_08064CF4:
	ldr r0, _08064D04 @ =gUnk_0810FA54
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r5, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_08064D04: .4byte gUnk_0810FA54

	thumb_func_start sub_08064D08
sub_08064D08: @ 0x08064D08
	movs r1, #1
	strb r1, [r0, #0xe]
	bx lr
	.align 2, 0

	thumb_func_start sub_08064D10
sub_08064D10: @ 0x08064D10
	movs r1, #0
	strb r1, [r0, #0xe]
	bx lr
	.align 2, 0

	thumb_func_start sub_08064D18
sub_08064D18: @ 0x08064D18
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08064D50
	ldr r1, _08064D4C @ =gUnk_0810FA38
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _08064D56
	ldrb r0, [r4, #0xc]
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
	movs r1, #6
	bl UpdateSprite
	b _08064D56
	.align 2, 0
_08064D4C: .4byte gUnk_0810FA38
_08064D50:
	adds r0, r4, #0
	bl sub_08004274
_08064D56:
	pop {r4, pc}
