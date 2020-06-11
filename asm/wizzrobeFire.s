	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0802FB30
sub_0802FB30: @ 0x0802FB30
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0802FB58 @ =gUnk_080CDFC4
	bl sub_0800279C
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
	bl sub_0804A9AC
	pop {r4, r5, pc}
	.align 2, 0
_0802FB58: .4byte gUnk_080CDFC4

	thumb_func_start sub_0802FB5C
sub_0802FB5C: @ 0x0802FB5C
	push {lr}
	ldr r2, _0802FB70 @ =gUnk_080CDFDC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802FB70: .4byte gUnk_080CDFDC

	thumb_func_start sub_0802FB74
sub_0802FB74: @ 0x0802FB74
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802FB88
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0802FB88:
	ldr r1, _0802FBB4 @ =gUnk_080CDFC4
	adds r0, r4, #0
	bl sub_0804AA30
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802FBB0
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
_0802FBB0:
	pop {r4, pc}
	.align 2, 0
_0802FBB4: .4byte gUnk_080CDFC4

	thumb_func_start sub_0802FBB8
sub_0802FBB8: @ 0x0802FBB8
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
	movs r1, #8
	movs r2, #0
	bl sub_0804A98C
	adds r1, r0, #0
	cmp r1, #0
	beq _0802FBF6
	str r1, [r4, #0x54]
	str r4, [r1, #0x50]
	ldrb r0, [r4, #0x15]
	strb r0, [r1, #0x15]
_0802FBF6:
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl UpdateSprite
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802FC04
sub_0802FC04: @ 0x0802FC04
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x82
	ldrb r3, [r2]
	cmp r3, #1
	beq _0802FC52
	cmp r3, #1
	bgt _0802FC1C
	cmp r3, #0
	beq _0802FC32
	b _0802FC88
_0802FC1C:
	cmp r3, #0xff
	bne _0802FC88
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0802FC88
	strb r0, [r2]
	b _0802FC88
_0802FC32:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802FC88
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0xe
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	b _0802FC88
_0802FC52:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802FC88
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
	bl UpdateSprite
_0802FC88:
	adds r0, r5, #0
	bl sub_0802F9C8
	pop {r4, r5, pc}

	thumb_func_start sub_0802FC90
sub_0802FC90: @ 0x0802FC90
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x82
	ldrb r0, [r2]
	cmp r0, #1
	beq _0802FD18
	cmp r0, #1
	bgt _0802FCA8
	cmp r0, #0
	beq _0802FCB2
	b _0802FDCA
_0802FCA8:
	cmp r0, #2
	beq _0802FD6A
	cmp r0, #3
	beq _0802FD94
	b _0802FDCA
_0802FCB2:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0802FCC6
	cmp r1, #6
	beq _0802FCDE
	b _0802FDCA
_0802FCC6:
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
	b _0802FDCA
_0802FCDE:
	ldr r1, _0802FD14 @ =gLinkEntity
	adds r0, r4, #0
	movs r2, #0xa0
	movs r3, #0xa0
	bl sub_080041A0
	cmp r0, #0
	beq _0802FDCA
	adds r0, r4, #0
	bl sub_080040A8
	cmp r0, #0
	beq _0802FDCA
	adds r0, r4, #0
	movs r1, #8
	movs r2, #1
	bl sub_0804A98C
	adds r2, r0, #0
	cmp r2, #0
	beq _0802FDCA
	ldrb r1, [r4, #0x15]
	movs r0, #0x18
	ands r0, r1
	strb r0, [r2, #0x15]
	b _0802FDCA
	.align 2, 0
_0802FD14: .4byte gLinkEntity
_0802FD18:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	bne _0802FDCA
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
	bl sub_08004488
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl UpdateSprite
	b _0802FDCA
_0802FD6A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802FDCA
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	bl Random
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x1c
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	b _0802FDCA
_0802FD94:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802FDCA
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
	bl sub_08004488
	adds r0, r4, #0
	bl sub_0802F8E4
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl UpdateSprite
_0802FDCA:
	adds r0, r4, #0
	bl sub_0802F9C8
	pop {r4, pc}
	.align 2, 0
