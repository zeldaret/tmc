	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08038048
sub_08038048: @ 0x08038048
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #2
	bl UpdateAnimationVariableFrames
	adds r0, r4, #0
	bl sub_080AEF88
	movs r0, #0x36
	ldrsh r6, [r4, r0]
	bl Random
	adds r5, r0, #0
	movs r0, #0xf
	ands r5, r0
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #1
	bne _08038088
	movs r0, #0
	movs r1, #3
	strb r1, [r4, #0xc]
	strb r0, [r4, #0xd]
	movs r0, #0x14
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl InitializeAnimation
	b _0803810C
_08038088:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _08038098
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800417E
	b _080380B0
_08038098:
	adds r0, r4, #0
	bl sub_080002B8
	movs r1, #0xf0
	ands r1, r0
	cmp r1, #0x50
	bne _080380B0
	ldrb r0, [r4, #0x15]
	adds r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
_080380B0:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080380C8
	adds r0, r5, #0
	adds r0, #0x10
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08038168
_080380C8:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080380E2
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r6, r0
	bge _080380E2
	adds r0, r4, #0
	movs r1, #4
	bl InitializeAnimation
	movs r0, #1
	strb r0, [r4, #0xd]
_080380E2:
	movs r0, #0xc
	rsbs r0, r0, #0
	cmp r6, r0
	bge _080380F6
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	b _08038100
_080380F6:
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x80
_08038100:
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1b]
_0803810C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08038110
sub_08038110: @ 0x08038110
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #2
	bl UpdateAnimationVariableFrames
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08038164
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r0, [r2]
	cmp r0, #4
	bhi _08038150
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
	movs r0, #0xe0
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl sub_08038168
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
	b _08038164
_08038150:
	movs r0, #0
	movs r1, #1
	strb r1, [r4, #0xc]
	strb r0, [r2]
	movs r0, #0xc0
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
_08038164:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08038168
sub_08038168: @ 0x08038168
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _0803817E
	adds r0, r4, #0
	bl sub_08049EE4
	strb r0, [r4, #0x15]
	b _080381AA
_0803817E:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08038196
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	b _080381AA
_08038196:
	bl Random
	movs r1, #0xf
	ands r1, r0
	adds r1, #0x18
	ldrb r0, [r4, #0x15]
	adds r1, r1, r0
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r4, #0x15]
_080381AA:
	pop {r4, pc}
