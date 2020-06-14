	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0803C738
sub_0803C738: @ 0x0803C738
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0803C754 @ =gUnk_080D0110
	bl EnemyFunctionHandler
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl SetChildOffset
	pop {r4, pc}
	.align 2, 0
_0803C754: .4byte gUnk_080D0110

	thumb_func_start sub_0803C758
sub_0803C758: @ 0x0803C758
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0803C76C
	cmp r0, #7
	beq _0803C76C
	adds r0, r4, #0
	bl sub_0803CAD0
_0803C76C:
	ldr r0, _0803C780 @ =gUnk_080D0128
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_0803C780: .4byte gUnk_080D0128

	thumb_func_start sub_0803C784
sub_0803C784: @ 0x0803C784
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x1d
	bne _0803C7A2
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl sub_0803CBAC
	b _0803C7FA
_0803C7A2:
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x43
	bne _0803C7FA
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _0803C7FA
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #0x10
	eors r0, r1
	lsls r1, r0, #3
	ldr r3, _0803C818 @ =gUnk_080C9160
	lsls r0, r0, #4
	adds r0, r0, r3
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r0, #0
	bge _0803C7D8
	adds r0, #0x1f
_0803C7D8:
	asrs r0, r0, #5
	ldrh r5, [r2, #0x2e]
	adds r0, r0, r5
	strh r0, [r2, #0x2e]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _0803C7F2
	adds r0, #0x1f
_0803C7F2:
	asrs r1, r0, #5
	ldrh r0, [r2, #0x32]
	subs r0, r0, r1
	strh r0, [r2, #0x32]
_0803C7FA:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C80C
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0803C80C:
	ldr r1, _0803C81C @ =gUnk_080D0110
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_0803C818: .4byte gUnk_080C9160
_0803C81C: .4byte gUnk_080D0110

	thumb_func_start sub_0803C820
sub_0803C820: @ 0x0803C820
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	beq _0803C83C
	ldr r0, _0803C840 @ =gUnk_080D0148
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0803C83C:
	pop {r4, pc}
	.align 2, 0
_0803C840: .4byte gUnk_080D0148

	thumb_func_start sub_0803C844
sub_0803C844: @ 0x0803C844
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_0803C850
sub_0803C850: @ 0x0803C850
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x54]
	cmp r0, #0
	beq _0803C864
	adds r1, r2, #0
	adds r1, #0x62
	ldrb r1, [r1]
	adds r0, #0x62
	strb r1, [r0]
_0803C864:
	adds r0, r2, #0
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_0803C86C
sub_0803C86C: @ 0x0803C86C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803CBAC
	movs r0, #0
	str r0, [r4, #0x54]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803C87C
sub_0803C87C: @ 0x0803C87C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x11
	movs r2, #0
	bl sub_0804A98C
	cmp r0, #0
	beq _0803C8B4
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
	adds r0, r4, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _0803C8B8 @ =0x0000FFFE
	strh r0, [r4, #0x36]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #0xff
	strb r0, [r1]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x74
	strh r1, [r0]
	ldrh r1, [r4, #0x32]
	adds r0, #2
	strh r1, [r0]
_0803C8B4:
	pop {r4, pc}
	.align 2, 0
_0803C8B8: .4byte 0x0000FFFE

	thumb_func_start sub_0803C8BC
sub_0803C8BC: @ 0x0803C8BC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_0803CA84
	adds r0, r4, #0
	bl sub_0803CA4C
	cmp r0, #0
	beq _0803C8E0
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
_0803C8E0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803C8E4
sub_0803C8E4: @ 0x0803C8E4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803C914
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x42
	strb r0, [r1]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_0803C914:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803C918
sub_0803C918: @ 0x0803C918
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803CB04
	cmp r0, #0
	bne _0803C94E
	adds r0, r4, #0
	bl sub_0803CA4C
	cmp r0, #0
	bne _0803C946
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x43
	strb r0, [r1]
	ldrb r1, [r4, #0x14]
	adds r1, #0xc
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	b _0803C94E
_0803C946:
	adds r0, r4, #0
	movs r1, #4
	bl sub_0803CA84
_0803C94E:
	pop {r4, pc}

	thumb_func_start sub_0803C950
sub_0803C950: @ 0x0803C950
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803C97A
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_0803C97A:
	pop {r4, pc}

	thumb_func_start sub_0803C97C
sub_0803C97C: @ 0x0803C97C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803C9D2
	adds r0, r4, #0
	bl sub_0803CB64
	movs r0, #6
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x42
	strb r0, [r1]
	bl Random
	movs r1, #1
	ands r0, r1
	adds r2, r4, #0
	adds r2, #0x79
	cmp r0, #0
	beq _0803C9C2
	ldrb r0, [r2]
	cmp r0, #0
	bne _0803C9C2
	movs r0, #0xf
	strb r0, [r4, #0xe]
	strb r1, [r2]
	b _0803C9D2
_0803C9C2:
	movs r1, #0
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	strb r1, [r2]
	ldr r0, [r4, #0x54]
	ldrb r1, [r4, #0x14]
	bl InitAnimationForceUpdate
_0803C9D2:
	pop {r4, pc}

	thumb_func_start sub_0803C9D4
sub_0803C9D4: @ 0x0803C9D4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803CA08
	adds r0, r2, #0
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r0, #1
	bne _0803C9F6
	adds r0, r2, #0
	bl sub_0803CB34
	b _0803CA08
_0803C9F6:
	movs r0, #3
	strb r0, [r2, #0xc]
	movs r0, #0xb4
	strb r0, [r2, #0xe]
	ldrb r1, [r2, #0x14]
	adds r1, #4
	adds r0, r2, #0
	bl InitAnimationForceUpdate
_0803CA08:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803CA0C
sub_0803CA0C: @ 0x0803CA0C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	cmp r0, #0
	bne _0803CA3E
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0x13
	bhi _0803CA3E
	ldrb r1, [r4, #0x14]
	adds r1, #0x14
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0803CA3E:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_0803CC08
	pop {r4, pc}

	thumb_func_start sub_0803CA4C
sub_0803CA4C: @ 0x0803CA4C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0803CA7C @ =gLinkEntity
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r0, #0x32
	ldrsh r2, [r4, r0]
	adds r0, r5, #0
	movs r3, #0x28
	bl sub_0806FCB8
	cmp r0, #0
	bne _0803CA80
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x70
	movs r3, #0x50
	bl sub_080041A0
	cmp r0, #0
	beq _0803CA80
	movs r0, #1
	b _0803CA82
	.align 2, 0
_0803CA7C: .4byte gLinkEntity
_0803CA80:
	movs r0, #0
_0803CA82:
	pop {r4, r5, pc}

	thumb_func_start sub_0803CA84
sub_0803CA84: @ 0x0803CA84
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r1, _0803CACC @ =gLinkEntity
	bl sub_080045C4
	adds r4, r0, #0
	subs r0, r4, #3
	movs r1, #7
	ands r0, r1
	cmp r0, #2
	bhi _0803CAAA
	ldrb r0, [r5, #0x14]
	lsrs r1, r4, #3
	subs r0, r0, r1
	movs r1, #3
	ands r0, r1
	cmp r0, #1
	bls _0803CACA
_0803CAAA:
	adds r0, r4, #4
	movs r1, #0x18
	ands r0, r1
	lsrs r4, r0, #3
	ldrb r0, [r5, #0x14]
	cmp r4, r0
	beq _0803CACA
	strb r4, [r5, #0x14]
	adds r1, r4, r6
	adds r0, r5, #0
	bl InitAnimationForceUpdate
	ldr r0, [r5, #0x54]
	adds r1, r4, #0
	bl InitAnimationForceUpdate
_0803CACA:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803CACC: .4byte gLinkEntity

	thumb_func_start sub_0803CAD0
sub_0803CAD0: @ 0x0803CAD0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x74
	ldrh r1, [r6]
	adds r5, r4, #0
	adds r5, #0x76
	ldrh r2, [r5]
	movs r3, #1
	bl sub_0806FCB8
	cmp r0, #0
	bne _0803CB02
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	ldrh r2, [r6]
	ldrh r3, [r5]
	bl sub_080045D4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080AEFE0
_0803CB02:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0803CB04
sub_0803CB04: @ 0x0803CB04
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _0803CB1A
	movs r0, #0
	b _0803CB32
_0803CB1A:
	adds r0, r4, #0
	bl sub_0803CB34
	adds r0, r4, #0
	adds r0, #0x79
	strb r5, [r0]
	ldr r0, [r4, #0x54]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	bl InitAnimationForceUpdate
	movs r0, #1
_0803CB32:
	pop {r4, r5, pc}

	thumb_func_start sub_0803CB34
sub_0803CB34: @ 0x0803CB34
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0xa6
	strb r0, [r1]
	ldr r1, _0803CB60 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r4, #0
	adds r1, #0x78
	strb r0, [r1]
	ldrb r1, [r4, #0x14]
	adds r1, #8
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	pop {r4, pc}
	.align 2, 0
_0803CB60: .4byte gLinkEntity

	thumb_func_start sub_0803CB64
sub_0803CB64: @ 0x0803CB64
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x12
	movs r2, #0
	bl sub_0804A98C
	adds r5, r0, #0
	cmp r5, #0
	beq _0803CBA0
	ldrb r1, [r4, #0x14]
	lsls r1, r1, #1
	ldr r0, _0803CBA4 @ =gUnk_080D0154
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x78
	ldrb r0, [r0]
	strb r0, [r5, #0x15]
	movs r2, #0
	ldrsb r2, [r1, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r1, r3]
	lsls r3, r3, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl PositionRelative
	ldr r0, _0803CBA8 @ =0x00000193
	bl sub_08004488
_0803CBA0:
	pop {r4, r5, pc}
	.align 2, 0
_0803CBA4: .4byte gUnk_080D0154
_0803CBA8: .4byte 0x00000193

	thumb_func_start sub_0803CBAC
sub_0803CBAC: @ 0x0803CBAC
	push {lr}
	adds r3, r0, #0
	ldr r2, [r3, #0x54]
	cmp r2, #0
	beq _0803CBC6
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	adds r1, r2, #0
	adds r1, #0x3f
	movs r0, #0x43
	strb r0, [r1]
_0803CBC6:
	movs r0, #7
	strb r0, [r3, #0xc]
	ldrb r1, [r3, #0x18]
	subs r0, #0xb
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #0x18]
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x12
	ldrb r1, [r2]
	movs r0, #0x7b
	ands r0, r1
	strb r0, [r2]
	adds r1, r3, #0
	adds r1, #0x3f
	movs r0, #0x42
	strb r0, [r1]
	ldrb r1, [r3, #0x14]
	adds r1, #0x10
	adds r0, r3, #0
	bl InitAnimationForceUpdate
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803CC08
sub_0803CC08: @ 0x0803CC08
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x54]
	cmp r5, #0
	beq _0803CCB4
	movs r1, #0x36
	ldrsh r0, [r5, r1]
	movs r2, #0x36
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	cmp r0, #2
	bhi _0803CCB4
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bge _0803CCB4
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	movs r3, #6
	bl sub_0806FCB8
	cmp r0, #0
	beq _0803CCB4
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _0803CC56
	ldrh r0, [r1, #0x2e]
	adds r0, #6
	strh r0, [r1, #0x2e]
	ldrh r0, [r1, #0x32]
	adds r0, #6
	strh r0, [r1, #0x32]
_0803CC56:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _0803CC72
	ldrh r0, [r1, #0x2e]
	subs r0, #6
	strh r0, [r1, #0x2e]
	ldrh r0, [r1, #0x32]
	adds r0, #6
	strh r0, [r1, #0x32]
_0803CC72:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _0803CC8E
	ldrh r0, [r1, #0x2e]
	adds r0, #6
	strh r0, [r1, #0x2e]
	ldrh r0, [r1, #0x32]
	subs r0, #6
	strh r0, [r1, #0x32]
_0803CC8E:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _0803CCAA
	ldrh r0, [r1, #0x2e]
	subs r0, #6
	strh r0, [r1, #0x2e]
	ldrh r0, [r1, #0x32]
	subs r0, #6
	strh r0, [r1, #0x32]
_0803CCAA:
	movs r0, #0
	str r0, [r4, #0x54]
	adds r0, r5, #0
	bl DeleteEntity
_0803CCB4:
	pop {r4, r5, pc}
	.align 2, 0
