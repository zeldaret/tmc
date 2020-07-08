	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start LilypadSmall
LilypadSmall: @ 0x08097A5C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _08097AAC
	movs r4, #1
	movs r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0x5a
	strb r0, [r5, #0xe]
	bl Random
	strb r0, [r5, #0xf]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	strb r0, [r5, #0x1e]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r5, #0x18]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0xb]
	bl GetCurrentRoomProperty
	str r0, [r5, #0x54]
	adds r1, r5, #0
	adds r1, #0x54
	adds r2, r5, #0
	adds r2, #0x70
	adds r0, r5, #0
	bl sub_080A2CC0
_08097AAC:
	adds r0, r5, #0
	bl sub_08097ADC
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_080A2BE4
	adds r0, r5, #0
	bl sub_08097B24
	adds r2, r5, #0
	adds r2, #0x70
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08097ADA
	adds r1, r5, #0
	adds r1, #0x54
	adds r0, r5, #0
	bl sub_080A2CC0
_08097ADA:
	pop {r4, r5, pc}

	thumb_func_start sub_08097ADC
sub_08097ADC: @ 0x08097ADC
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r5, _08097B18 @ =gLinkState
	ldr r0, [r5, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08097B20
	ldr r4, _08097B1C @ =gLinkEntity
	adds r0, r2, #0
	adds r1, r4, #0
	movs r2, #8
	movs r3, #8
	bl sub_080041A0
	cmp r0, #0
	beq _08097B20
	bl sub_08079F8C
	cmp r0, #0
	beq _08097B20
	movs r0, #1
	strb r0, [r5, #0x14]
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08097B20
	movs r0, #1
	b _08097B22
	.align 2, 0
_08097B18: .4byte gLinkState
_08097B1C: .4byte gLinkEntity
_08097B20:
	movs r0, #0
_08097B22:
	pop {r4, r5, pc}

	thumb_func_start sub_08097B24
sub_08097B24: @ 0x08097B24
	push {r4, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xe]
	subs r0, #1
	strb r0, [r3, #0xe]
	movs r4, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08097B44
	movs r0, #0x5a
	strb r0, [r3, #0xe]
	ldrb r0, [r3, #0x1e]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r3, #0x1e]
_08097B44:
	ldr r2, _08097B68 @ =gUnk_08123318
	ldrb r0, [r3, #0xf]
	adds r0, #1
	strb r0, [r3, #0xf]
	ands r0, r4
	lsrs r0, r0, #5
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r3, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
	pop {r4, pc}
	.align 2, 0
_08097B68: .4byte gUnk_08123318
