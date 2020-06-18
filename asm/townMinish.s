	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0806AC3C
sub_0806AC3C: @ 0x0806AC3C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #3
	bhi _0806ACBA
	ldr r4, _0806AC6C @ =gLinkEntity
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x18
	movs r3, #0x18
	bl sub_080041A0
	cmp r0, #0
	beq _0806AC70
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080045C4
	adds r2, r0, #0
	movs r0, #0x1e
	ands r2, r0
	b _0806AC74
	.align 2, 0
_0806AC6C: .4byte gLinkEntity
_0806AC70:
	ldrb r0, [r5, #0x14]
	lsls r2, r0, #2
_0806AC74:
	adds r0, r5, #0
	adds r0, #0x69
	ldrb r3, [r0]
	adds r4, r0, #0
	cmp r2, r3
	beq _0806AC9A
	subs r0, r2, r3
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0xf
	bgt _0806AC8E
	subs r0, r3, #1
	b _0806AC90
_0806AC8E:
	adds r0, r3, #1
_0806AC90:
	strb r0, [r4]
	ldrb r1, [r4]
	movs r0, #0x1f
	ands r0, r1
	strb r0, [r4]
_0806AC9A:
	ldrb r1, [r4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0806ACBA
	ldrb r0, [r4]
	bl sub_0806F5B0
	strb r0, [r5, #0x14]
	ldrb r1, [r5, #0x14]
	lsrs r1, r1, #1
	movs r0, #2
	eors r1, r0
	adds r0, r5, #0
	bl InitializeAnimation
_0806ACBA:
	adds r0, r5, #0
	bl UpdateAnimationSingleFrame
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0806ACC4
sub_0806ACC4: @ 0x0806ACC4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xc]
	cmp r5, #1
	beq _0806AD28
	cmp r5, #1
	bgt _0806ACD8
	cmp r5, #0
	beq _0806ACE4
	b _0806ADEA
_0806ACD8:
	cmp r5, #2
	beq _0806ADB8
	cmp r5, #3
	bne _0806ACE2
	b _0806ADDC
_0806ACE2:
	b _0806ADEA
_0806ACE4:
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #4
	ldr r0, _0806AD24 @ =gUnk_08112674
	adds r1, r1, r0
	adds r0, r4, #0
	bl LoadExtraSpriteData
	cmp r0, #0
	bne _0806ACF8
	b _0806ADFA
_0806ACF8:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x6a
	strb r0, [r1]
	lsls r0, r0, #1
	strb r0, [r4, #0x14]
	strb r5, [r4, #0xe]
	adds r0, r4, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0807DD50
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
	adds r1, #8
	b _0806ADCE
	.align 2, 0
_0806AD24: .4byte gUnk_08112674
_0806AD28:
	adds r5, r4, #0
	adds r5, #0x39
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #2
	bne _0806AD44
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r1, [r5]
	adds r0, r4, #0
	bl sub_0806F118
	b _0806ADEA
_0806AD44:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0806AEA8
	ldrb r0, [r4, #0xb]
	cmp r0, #0xa
	bne _0806AD8A
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _0806AD8A
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r5]
	ldr r1, _0806ADAC @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r1, #8
	adds r0, r4, #0
	bl InitializeAnimation
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_0806AFE8
_0806AD8A:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _0806ADEA
	ldr r0, _0806ADAC @ =gLinkEntity
	ldrb r3, [r0, #0x14]
	lsrs r3, r3, #1
	ldr r0, _0806ADB0 @ =gUnk_081126E4
	adds r0, r3, r0
	ldrb r2, [r0]
	lsls r3, r3, #2
	ldr r0, _0806ADB4 @ =gUnk_081126D4
	adds r3, r3, r0
	adds r0, r4, #0
	movs r1, #1
	bl sub_08078850
	b _0806ADEA
	.align 2, 0
_0806ADAC: .4byte gLinkEntity
_0806ADB0: .4byte gUnk_081126E4
_0806ADB4: .4byte gUnk_081126D4
_0806ADB8:
	ldr r0, _0806ADD8 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0806ADEA
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
	adds r1, #4
_0806ADCE:
	adds r0, r4, #0
	bl InitializeAnimation
	b _0806ADEA
	.align 2, 0
_0806ADD8: .4byte gTextBox
_0806ADDC:
	adds r0, r4, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _0806ADEA
	movs r0, #1
	strb r0, [r4, #0xc]
_0806ADEA:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _0806ADFA
	adds r0, r4, #0
	bl GetNextFrame
_0806ADFA:
	pop {r4, r5, pc}

	thumb_func_start sub_0806ADFC
sub_0806ADFC: @ 0x0806ADFC
	push {lr}
	adds r1, r0, #0
	adds r1, #0x68
	ldrb r1, [r1]
	bl sub_08078784
	pop {pc}
	.align 2, 0

	thumb_func_start TownMinish_Head
TownMinish_Head: @ 0x0806AE0C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0806AE62
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r0, [r0]
	lsrs r2, r0, #1
	adds r0, r4, #0
	adds r0, #0x5b
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806AE3C
	adds r2, #0x1c
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806FF60
	b _0806AE46
_0806AE3C:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xff
	bl sub_0806FF60
_0806AE46:
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
	b _0806AEA4
_0806AE62:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r2, [r0]
	cmp r2, #0xff
	beq _0806AE72
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r2, r0
_0806AE72:
	adds r0, r4, #0
	adds r0, #0x5b
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0806AE82
	movs r2, #0xff
_0806AE82:
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
_0806AEA4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806AEA8
sub_0806AEA8: @ 0x0806AEA8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x82
	ldrh r5, [r6]
	ldr r0, _0806AED4 @ =0x0000FFDF
	ands r0, r5
	strh r0, [r6]
	movs r0, #0x20
	ands r0, r5
	cmp r0, #0
	beq _0806AECA
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, #0
	bl sub_08003FC4
_0806AECA:
	adds r0, r4, #0
	bl sub_0807DDE4
	strh r5, [r6]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806AED4: .4byte 0x0000FFDF

	thumb_func_start sub_0806AED8
sub_0806AED8: @ 0x0806AED8
	push {lr}
	movs r1, #0
	strb r1, [r0, #0xe]
	bl sub_0806AEE4
	pop {pc}

	thumb_func_start sub_0806AEE4
sub_0806AEE4: @ 0x0806AEE4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	adds r7, r0, #0
	cmp r7, #0
	beq _0806AEF6
	subs r0, #1
	strb r0, [r4, #0xe]
	b _0806AF5A
_0806AEF6:
	movs r0, #2
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0x20
	movs r2, #0x20
	bl sub_0806EDD8
	adds r3, r0, #0
	cmp r3, #0
	bge _0806AF16
	adds r0, r4, #0
	adds r0, #0x6a
	ldrb r1, [r0]
	lsls r0, r1, #1
	strb r0, [r4, #0x14]
	lsls r3, r1, #3
_0806AF16:
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #5
	asrs r1, r3, #1
	lsls r1, r1, #1
	ldr r2, _0806AF5C @ =gUnk_081125F4
	adds r1, r1, r2
	adds r0, r0, r1
	ldrb r6, [r0]
	ldrb r5, [r0, #1]
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	beq _0806AF3A
	adds r0, r3, #0
	bl sub_0806F5B0
	strb r0, [r4, #0x14]
_0806AF3A:
	movs r0, #0x7f
	ands r5, r0
	adds r0, r4, #0
	adds r0, #0x5a
	strb r6, [r0]
	strb r5, [r4, #0x1e]
	adds r1, r4, #0
	adds r1, #0x5b
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x58
	strb r7, [r0]
	subs r1, #2
	movs r0, #0xff
	strb r0, [r1]
_0806AF5A:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0806AF5C: .4byte gUnk_081125F4

	thumb_func_start sub_0806AF60
sub_0806AF60: @ 0x0806AF60
	push {lr}
	ldrb r2, [r0, #0x14]
	lsrs r2, r2, #1
	ldr r1, [r1, #4]
	adds r1, r1, r2
	bl InitializeAnimation
	pop {pc}

	thumb_func_start sub_0806AF70
sub_0806AF70: @ 0x0806AF70
	movs r1, #0x90
	lsls r1, r1, #0xa
	str r1, [r0, #0x20]
	bx lr

	thumb_func_start sub_0806AF78
sub_0806AF78: @ 0x0806AF78
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	ldr r0, [r4, #0x34]
	cmp r0, #0
	blt _0806AF9E
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bgt _0806AF9E
	movs r0, #0
	str r0, [r4, #0x34]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806AF70
_0806AF9E:
	pop {r4, r5, pc}

	thumb_func_start sub_0806AFA0
sub_0806AFA0: @ 0x0806AFA0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806ED78
	cmp r0, #0
	beq _0806AFBA
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	rsbs r1, r1, #0
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F62C
_0806AFBA:
	pop {r4, pc}

	thumb_func_start sub_0806AFBC
sub_0806AFBC: @ 0x0806AFBC
	push {lr}
	adds r3, r0, #0
	ldr r0, _0806AFE0 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	subs r0, #2
	cmp r0, #0
	bge _0806AFCC
	movs r0, #0
_0806AFCC:
	ldrb r1, [r3, #0xb]
	lsls r1, r1, #6
	lsls r0, r0, #3
	ldr r2, _0806AFE4 @ =gUnk_081126F0
	adds r0, r0, r2
	adds r1, r1, r0
	adds r0, r3, #0
	bl ShowNPCDialogue
	pop {pc}
	.align 2, 0
_0806AFE0: .4byte gUnk_02002A40
_0806AFE4: .4byte gUnk_081126F0

	thumb_func_start sub_0806AFE8
sub_0806AFE8: @ 0x0806AFE8
	push {lr}
	movs r2, #0
	str r2, [r1, #0x14]
	ldr r3, _0806B000 @ =gUnk_08112BF0
	ldrb r2, [r0, #0xb]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_0806B000: .4byte gUnk_08112BF0

	thumb_func_start sub_0806B004
sub_0806B004: @ 0x0806B004
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r4, #0
	movs r0, #0x29
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0806B050
	movs r0, #0x73
	bl CheckLocalFlag
	cmp r0, #0
	beq _0806B048
	movs r0, #0x46
	bl GetInventoryValue
	cmp r0, #0
	bne _0806B044
	movs r4, #3
	movs r0, #0x78
	bl CheckLocalFlag
	cmp r0, #0
	bne _0806B050
	movs r4, #2
	movs r0, #1
	str r0, [r5, #0x14]
	movs r0, #0x78
	bl SetLocalFlag
	b _0806B050
_0806B044:
	movs r4, #4
	b _0806B050
_0806B048:
	movs r4, #1
	movs r0, #0x6a
	bl SetLocalFlag
_0806B050:
	ldr r0, _0806B060 @ =gUnk_08112C40
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r6, #0
	bl TextboxNoOverlap
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806B060: .4byte gUnk_08112C40

	thumb_func_start sub_0806B064
sub_0806B064: @ 0x0806B064
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r0, #0x29
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0806B082
	movs r4, #1
	movs r0, #0x73
	bl CheckLocalFlag
	cmp r0, #0
	beq _0806B082
	movs r4, #2
_0806B082:
	ldr r0, _0806B094 @ =gUnk_08112C4A
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r5, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_0806B094: .4byte gUnk_08112C4A

	thumb_func_start sub_0806B098
sub_0806B098: @ 0x0806B098
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #2
	movs r0, #0x46
	bl GetInventoryValue
	cmp r0, #0
	bne _0806B0C0
	movs r4, #1
	movs r0, #0x29
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0806B0C0
	movs r0, #0x2a
	bl CheckGlobalFlag
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
_0806B0C0:
	ldr r2, _0806B0DC @ =gUnk_08112C50
	ldrb r1, [r5, #0xb]
	subs r1, #7
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r5, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_0806B0DC: .4byte gUnk_08112C50

	thumb_func_start sub_0806B0E0
sub_0806B0E0: @ 0x0806B0E0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	movs r0, #0x38
	movs r1, #0xb8
	movs r2, #1
	bl sub_080002C0
	cmp r0, #0x57
	bne _0806B120
	movs r0, #0x48
	movs r1, #0xb8
	movs r2, #1
	bl sub_080002C0
	cmp r0, #0x57
	bne _0806B120
	movs r0, #0x38
	movs r1, #0xc8
	movs r2, #1
	bl sub_080002C0
	cmp r0, #0x57
	bne _0806B120
	movs r0, #0x48
	movs r1, #0xc8
	movs r2, #1
	bl sub_080002C0
	cmp r0, #0x57
	bne _0806B120
	movs r5, #1
_0806B120:
	ldr r0, _0806B130 @ =gUnk_08112C5C
	lsls r1, r5, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r4, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_0806B130: .4byte gUnk_08112C5C

	thumb_func_start sub_0806B134
sub_0806B134: @ 0x0806B134
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x45
	bl GetInventoryValue
	cmp r0, #0
	beq _0806B158
	movs r4, #2
	movs r0, #0x7b
	bl CheckLocalFlag
	cmp r0, #0
	bne _0806B160
	movs r4, #1
	movs r0, #0x7b
	bl SetLocalFlag
	b _0806B160
_0806B158:
	movs r4, #0
	movs r0, #0x4a
	bl SetGlobalFlag
_0806B160:
	ldr r0, _0806B17C @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	cmp r0, #5
	bls _0806B16A
	movs r4, #3
_0806B16A:
	ldr r0, _0806B180 @ =gUnk_08112C60
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r5, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_0806B17C: .4byte gUnk_02002A40
_0806B180: .4byte gUnk_08112C60

	thumb_func_start TownMinish_Fusion
TownMinish_Fusion: @ 0x0806B184
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806B1C4
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #4
	ldr r0, _0806B1C0 @ =gUnk_08112674
	adds r1, r1, r0
	adds r0, r4, #0
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _0806B1CA
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
	bl InitializeAnimation
	b _0806B1CA
	.align 2, 0
_0806B1C0: .4byte gUnk_08112674
_0806B1C4:
	adds r0, r4, #0
	bl GetNextFrame
_0806B1CA:
	pop {r4, pc}
