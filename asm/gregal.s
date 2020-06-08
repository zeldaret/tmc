	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0806CADC
sub_0806CADC: @ 0x0806CADC
	push {lr}
	ldr r2, _0806CAF0 @ =gUnk_08113D8C
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0806CAF0: .4byte gUnk_08113D8C

	thumb_func_start sub_0806CAF4
sub_0806CAF4: @ 0x0806CAF4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _0806CB66
	adds r0, #1
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	movs r1, #2
	bl sub_0805E3A0
	movs r0, #0x4a
	movs r1, #1
	movs r2, #0
	bl CreateNPC
	adds r4, r0, #0
	cmp r4, #0
	beq _0806CB2C
	str r5, [r4, #0x50]
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FAD8
_0806CB2C:
	movs r0, #0x4a
	movs r1, #2
	movs r2, #0
	bl CreateNPC
	adds r4, r0, #0
	cmp r4, #0
	beq _0806CB4E
	str r5, [r4, #0x50]
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FAB0
_0806CB4E:
	adds r0, r5, #0
	bl sub_0807DD64
	adds r0, r5, #0
	bl sub_08078778
	ldr r3, _0806CB7C @ =gUnk_08113D84
	ldrb r2, [r3, #4]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08078850
_0806CB66:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r5, #0
	bl sub_0807DDE4
	adds r0, r5, #0
	bl sub_08004274
	pop {r4, r5, pc}
	.align 2, 0
_0806CB7C: .4byte gUnk_08113D84

	thumb_func_start sub_0806CB80
sub_0806CB80: @ 0x0806CB80
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r1, r0, #0
	cmp r1, #0
	bne _0806CB9E
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #2
	strb r0, [r4, #0x14]
	strb r1, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
_0806CB9E:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _0806CBB0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	adds r0, #0x21
	strb r0, [r4, #0x1e]
_0806CBB0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806CBB4
sub_0806CBB4: @ 0x0806CBB4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806CBD6
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	movs r1, #0x11
	bl UpdateSprite
_0806CBD6:
	adds r0, r4, #0
	bl sub_08004274
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _0806CC06
	ldrb r0, [r4, #0x18]
	movs r3, #4
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r2, r0
	strb r2, [r4, #0x18]
	adds r0, r1, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806CC06
	adds r0, r2, #0
	ands r0, r3
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
_0806CC06:
	pop {r4, pc}

	thumb_func_start sub_0806CC08
sub_0806CC08: @ 0x0806CC08
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0806CC40
	cmp r0, #1
	bgt _0806CC1C
	cmp r0, #0
	beq _0806CC22
	b _0806CCB0
_0806CC1C:
	cmp r0, #2
	beq _0806CC96
	b _0806CCB0
_0806CC22:
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD64
_0806CC40:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _0806CC80
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x69
	strb r0, [r1]
	ldr r1, _0806CC7C @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r1, #8
	adds r0, r4, #0
	bl LoadAnimation
	adds r0, r4, #0
	bl sub_0806F118
	b _0806CCB0
	.align 2, 0
_0806CC7C: .4byte gLinkEntity
_0806CC80:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_08004274
	b _0806CCB0
_0806CC96:
	adds r0, r4, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _0806CCB0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r1, [r0]
	adds r0, r4, #0
	bl LoadAnimation
_0806CCB0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806CCB4
sub_0806CCB4: @ 0x0806CCB4
	push {lr}
	adds r2, r1, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0806CCCA
	movs r0, #1
_0806CCCA:
	str r0, [r2, #0x14]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806CCD0
sub_0806CCD0: @ 0x0806CCD0
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	movs r2, #0x3f
	ands r2, r0
	cmp r2, #0
	beq _0806CCF4
	ldrb r1, [r3, #0x14]
	lsrs r1, r1, #1
	adds r1, r2, r1
	adds r0, r3, #0
	bl UpdateSprite
	movs r0, #1
	str r0, [r4, #0x14]
	b _0806CCF6
_0806CCF4:
	str r2, [r4, #0x14]
_0806CCF6:
	pop {r4, pc}

	thumb_func_start sub_0806CCF8
sub_0806CCF8: @ 0x0806CCF8
	push {lr}
	movs r1, #0x85
	lsls r1, r1, #1
	bl sub_0801D2B4
	pop {pc}

	thumb_func_start sub_0806CD04
sub_0806CD04: @ 0x0806CD04
	push {lr}
	ldr r1, _0806CD10 @ =0x0000010B
	bl sub_0801D2B4
	pop {pc}
	.align 2, 0
_0806CD10: .4byte 0x0000010B

	thumb_func_start sub_0806CD14
sub_0806CD14: @ 0x0806CD14
	push {lr}
	movs r1, #0x86
	lsls r1, r1, #1
	bl sub_0801D2B4
	pop {pc}

	thumb_func_start sub_0806CD20
sub_0806CD20: @ 0x0806CD20
	push {lr}
	ldr r1, _0806CD2C @ =0x0000010D
	bl sub_0801D2B4
	pop {pc}
	.align 2, 0
_0806CD2C: .4byte 0x0000010D

	thumb_func_start sub_0806CD30
sub_0806CD30: @ 0x0806CD30
	push {lr}
	movs r1, #0x87
	lsls r1, r1, #1
	bl sub_0801D2B4
	pop {pc}

	thumb_func_start sub_0806CD3C
sub_0806CD3C: @ 0x0806CD3C
	push {lr}
	ldr r1, _0806CD48 @ =0x0000010F
	bl sub_0801D2B4
	pop {pc}
	.align 2, 0
_0806CD48: .4byte 0x0000010F

	thumb_func_start sub_0806CD4C
sub_0806CD4C: @ 0x0806CD4C
	push {lr}
	movs r1, #0x88
	lsls r1, r1, #1
	bl sub_0801D2B4
	pop {pc}

	thumb_func_start sub_0806CD58
sub_0806CD58: @ 0x0806CD58
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

	thumb_func_start sub_0806CD70
sub_0806CD70: @ 0x0806CD70
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806CD9E
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
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	movs r1, #6
	bl LoadAnimation
	b _0806CDA4
_0806CD9E:
	adds r0, r4, #0
	bl sub_080042B8
_0806CDA4:
	pop {r4, pc}
	.align 2, 0
