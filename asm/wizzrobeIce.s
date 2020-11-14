	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start WizzrobeIce
WizzrobeIce: @ 0x0802FDD4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0802FDFC @ =gUnk_080CE074
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl SetChildOffset
	pop {r4, r5, pc}
	.align 2, 0
_0802FDFC: .4byte gUnk_080CE074

	thumb_func_start sub_0802FE00
sub_0802FE00: @ 0x0802FE00
	push {lr}
	ldr r2, _0802FE14 @ =gUnk_080CE08C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802FE14: .4byte gUnk_080CE08C

	thumb_func_start sub_0802FE18
sub_0802FE18: @ 0x0802FE18
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802FE2C
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0802FE2C:
	ldr r1, _0802FE8C @ =gUnk_080CE074
	adds r0, r4, #0
	bl sub_0804AA30
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x87
	bne _0802FE6A
	movs r0, #0x2a
	movs r1, #3
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0802FE6A
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r3]
	adds r1, r2, #0
	adds r1, #0x63
	movs r0, #0xfc
	strb r0, [r1]
	str r4, [r2, #0x50]
_0802FE6A:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802FE8A
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x84
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
_0802FE8A:
	pop {r4, pc}
	.align 2, 0
_0802FE8C: .4byte gUnk_080CE074

	thumb_func_start sub_0802FE90
sub_0802FE90: @ 0x0802FE90
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #0xff
	strb r0, [r1]
	subs r1, #1
	movs r0, #0x28
	strb r0, [r1]
	strb r0, [r4, #0xe]
	movs r0, #0x60
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_0802F888
	adds r0, r4, #0
	movs r1, #9
	movs r2, #0
	bl sub_0804A98C
	adds r1, r0, #0
	cmp r1, #0
	beq _0802FECE
	str r1, [r4, #0x54]
	str r4, [r1, #0x50]
	ldrb r0, [r4, #0x15]
	strb r0, [r1, #0x15]
_0802FECE:
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl InitializeAnimation
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802FEDC
sub_0802FEDC: @ 0x0802FEDC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x82
	ldrb r3, [r2]
	cmp r3, #1
	beq _0802FF2A
	cmp r3, #1
	bgt _0802FEF4
	cmp r3, #0
	beq _0802FF0A
	b _0802FF60
_0802FEF4:
	cmp r3, #0xff
	bne _0802FF60
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0802FF60
	strb r0, [r2]
	b _0802FF60
_0802FF0A:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802FF60
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0xc
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	b _0802FF60
_0802FF2A:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802FF60
	movs r0, #2
	strb r0, [r5, #0xc]
	strb r1, [r2]
	movs r0, #0x20
	strb r0, [r5, #0xe]
	ldrb r1, [r5, #0x15]
	lsrs r1, r1, #3
	ldr r2, [r5, #0x54]
	movs r4, #1
	strb r3, [r2, #0xe]
	ldrb r3, [r2, #0x18]
	subs r0, #0x24
	ands r0, r3
	orrs r0, r4
	strb r0, [r2, #0x18]
	movs r0, #4
	orrs r1, r0
	adds r0, r5, #0
	bl InitializeAnimation
_0802FF60:
	adds r0, r5, #0
	bl sub_0802F9C8
	pop {r4, r5, pc}

	thumb_func_start sub_0802FF68
sub_0802FF68: @ 0x0802FF68
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x82
	ldrb r0, [r2]
	cmp r0, #1
	beq _0802FFF0
	cmp r0, #1
	bgt _0802FF80
	cmp r0, #0
	beq _0802FF8A
	b _080300A2
_0802FF80:
	cmp r0, #2
	beq _08030042
	cmp r0, #3
	beq _0803006C
	b _080300A2
_0802FF8A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0802FF9E
	cmp r1, #0xa
	beq _0802FFB6
	b _080300A2
_0802FF9E:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0x38
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	ldr r2, [r4, #0x54]
	ldrb r1, [r2, #0x18]
	subs r0, #0x3c
	ands r0, r1
	strb r0, [r2, #0x18]
	b _080300A2
_0802FFB6:
	ldr r1, _0802FFEC @ =gPlayerEntity
	adds r0, r4, #0
	movs r2, #0xa0
	movs r3, #0xa0
	bl sub_080041A0
	cmp r0, #0
	beq _080300A2
	adds r0, r4, #0
	bl sub_080040A8
	cmp r0, #0
	beq _080300A2
	adds r0, r4, #0
	movs r1, #9
	movs r2, #1
	bl sub_0804A98C
	adds r2, r0, #0
	cmp r2, #0
	beq _080300A2
	ldrb r1, [r4, #0x15]
	movs r0, #0x18
	ands r0, r1
	strb r0, [r2, #0x15]
	b _080300A2
	.align 2, 0
_0802FFEC: .4byte gPlayerEntity
_0802FFF0:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	bne _080300A2
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0x28
	strb r0, [r1]
	strb r0, [r4, #0xe]
	strb r3, [r4, #0xf]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x84
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
	movs r0, #0xab
	lsls r0, r0, #1
	bl EnqueueSFX
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl InitializeAnimation
	b _080300A2
_08030042:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080300A2
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	bl Random
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x18
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	b _080300A2
_0803006C:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080300A2
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r2]
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0x28
	strb r0, [r1]
	strb r0, [r4, #0xe]
	movs r0, #0xab
	lsls r0, r0, #1
	bl EnqueueSFX
	adds r0, r4, #0
	bl sub_0802F8E4
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl InitializeAnimation
_080300A2:
	adds r0, r4, #0
	bl sub_0802F9C8
	pop {r4, pc}
	.align 2, 0
