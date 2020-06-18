	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0801EC2C
sub_0801EC2C: @ 0x0801EC2C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080AEF88
	adds r0, r5, #0
	bl GetNextFrame
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801EC7E
	adds r0, r5, #0
	bl sub_0801EDEC
	cmp r0, #0
	beq _0801EC78
	ldr r1, _0801EC74 @ =gUnk_080CA174
	ldrb r0, [r5, #0xa]
	adds r0, r0, r1
	ldrb r4, [r0]
	bl Random
	movs r1, #3
	ands r0, r1
	cmp r4, r0
	bhi _0801EC78
	strb r1, [r5, #0xc]
	ldrb r1, [r5, #0x14]
	adds r1, #4
	adds r0, r5, #0
	bl InitializeAnimation
	b _0801EC7E
	.align 2, 0
_0801EC74: .4byte gUnk_080CA174
_0801EC78:
	adds r0, r5, #0
	bl sub_0801ECFC
_0801EC7E:
	pop {r4, r5, pc}

	thumb_func_start sub_0801EC80
sub_0801EC80: @ 0x0801EC80
	push {r4, r5, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801ECD8
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_0804A98C
	adds r2, r0, #0
	cmp r2, #0
	beq _0801ECD8
	ldrb r0, [r4, #0x15]
	strb r0, [r2, #0x15]
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #2
	ldr r0, _0801ECF0 @ =gUnk_080CA176
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r3, [r2, #0x2e]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	movs r0, #1
	ldrsb r0, [r1, r0]
	ldrh r1, [r2, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	ldr r0, _0801ECF4 @ =0x0000FFFD
	strh r0, [r2, #0x36]
	ldrb r1, [r5]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r5]
	ldr r0, _0801ECF8 @ =0x0000018D
	bl sub_08004488
_0801ECD8:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801ECEC
	adds r0, r4, #0
	bl sub_0801ECFC
_0801ECEC:
	pop {r4, r5, pc}
	.align 2, 0
_0801ECF0: .4byte gUnk_080CA176
_0801ECF4: .4byte 0x0000FFFD
_0801ECF8: .4byte 0x0000018D

	thumb_func_start sub_0801ECFC
sub_0801ECFC: @ 0x0801ECFC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	bl Random
	movs r1, #0x38
	ands r0, r1
	adds r0, #0x18
	strb r0, [r4, #0xe]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801ED14
sub_0801ED14: @ 0x0801ED14
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _0801ED7E
	adds r0, r5, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _0801ED4C
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _0801ED46
	bl Random
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	bne _0801ED46
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	bne _0801EDC4
_0801ED46:
	bl Random
	b _0801EDD0
_0801ED4C:
	bl Random
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _0801ED78
	adds r0, r5, #0
	bl sub_08049EE4
	adds r4, r0, #0
	bl Random
	ldr r2, _0801ED74 @ =gUnk_080CA17E
	movs r1, #1
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, r0, r4
	b _0801EDD0
	.align 2, 0
_0801ED74: .4byte gUnk_080CA17E
_0801ED78:
	bl Random
	b _0801EDD0
_0801ED7E:
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	bne _0801EDC4
	adds r0, r5, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _0801ED9A
	bl Random
	b _0801EDD0
_0801ED9A:
	bl Random
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _0801EDC4
	adds r0, r5, #0
	bl sub_08049EE4
	adds r4, r0, #0
	bl Random
	ldr r2, _0801EDC0 @ =gUnk_080CA17E
	movs r1, #1
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, r0, r4
	b _0801EDD0
	.align 2, 0
_0801EDC0: .4byte gUnk_080CA17E
_0801EDC4:
	ldr r0, _0801EDE8 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_080045C4
	adds r0, #4
_0801EDD0:
	movs r1, #0x18
	ands r0, r1
	strb r0, [r5, #0x15]
	ldrb r0, [r5, #0x15]
	lsrs r0, r0, #3
	strb r0, [r5, #0x14]
	ldrb r1, [r5, #0x14]
	adds r0, r5, #0
	bl InitializeAnimation
	pop {r4, r5, pc}
	.align 2, 0
_0801EDE8: .4byte gUnk_020000B0

	thumb_func_start sub_0801EDEC
sub_0801EDEC: @ 0x0801EDEC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_08049DF4
	adds r1, r0, #0
	cmp r1, #0
	beq _0801EE12
	adds r0, r4, #0
	bl sub_080045C4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	ldrb r4, [r4, #0x15]
	cmp r0, r4
	bne _0801EE12
	movs r0, #1
	b _0801EE14
_0801EE12:
	movs r0, #0
_0801EE14:
	pop {r4, pc}
	.align 2, 0
