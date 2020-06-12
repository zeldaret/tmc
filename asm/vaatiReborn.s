	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0806B664
sub_0806B664: @ 0x0806B664
	push {lr}
	ldr r2, _0806B678 @ =gUnk_08112F78
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0806B678: .4byte gUnk_08112F78

	thumb_func_start sub_0806B67C
sub_0806B67C: @ 0x0806B67C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r6, #0xc]
	strb r1, [r6, #0xd]
	strb r1, [r6, #0xe]
	ldrb r0, [r6, #0xa]
	cmp r0, #5
	bls _0806B692
	b _0806B7B8
_0806B692:
	lsls r0, r0, #2
	ldr r1, _0806B69C @ =_0806B6A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806B69C: .4byte _0806B6A0
_0806B6A0: @ jump table
	.4byte _0806B6B8 @ case 0
	.4byte _0806B7A6 @ case 1
	.4byte _0806B70C @ case 2
	.4byte _0806B726 @ case 3
	.4byte _0806B7B0 @ case 4
	.4byte _0806B7A6 @ case 5
_0806B6B8:
	ldrh r0, [r6, #0x32]
	subs r0, #0xa0
	strh r0, [r6, #0x32]
	movs r0, #0xa0
	strb r0, [r6, #0xe]
	movs r0, #0x20
	strb r0, [r6, #0xf]
	adds r1, r6, #0
	adds r1, #0x63
	strb r0, [r1]
	movs r5, #0
_0806B6CE:
	movs r0, #0x3b
	movs r1, #2
	adds r2, r5, #0
	bl CreateNPC
	adds r4, r0, #0
	cmp r4, #0
	beq _0806B6E0
	str r6, [r4, #0x50]
_0806B6E0:
	adds r5, #1
	cmp r5, #3
	bls _0806B6CE
	movs r0, #0x3b
	movs r1, #1
	movs r2, #0
	bl CreateNPC
	adds r4, r0, #0
	str r6, [r4, #0x50]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #0xff
	strb r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	b _0806B7A6
_0806B70C:
	ldrb r1, [r6, #0xb]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806B71E
	ldrb r0, [r6, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r6, #0x18]
_0806B71E:
	adds r0, r6, #0
	bl sub_0806B96C
	b _0806B7A6
_0806B726:
	movs r0, #1
	strb r0, [r6, #0xe]
	movs r0, #0x20
	strb r0, [r6, #0xf]
	movs r0, #0x3b
	movs r1, #4
	movs r2, #0
	bl CreateNPC
	adds r4, r0, #0
	cmp r4, #0
	beq _0806B76C
	adds r0, r6, #0
	adds r1, r4, #0
	bl CopyPosition
	str r6, [r4, #0x50]
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	subs r1, #1
	adds r3, r4, #0
	adds r3, #0x29
	movs r0, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0
	strb r0, [r4, #0x1e]
_0806B76C:
	movs r0, #0x3b
	movs r1, #5
	movs r2, #0
	bl CreateNPC
	adds r4, r0, #0
	cmp r4, #0
	beq _0806B7A6
	adds r0, r6, #0
	adds r1, r4, #0
	bl CopyPosition
	str r6, [r4, #0x50]
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	adds r1, #1
	adds r3, r4, #0
	adds r3, #0x29
	movs r0, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0806B7A6:
	adds r0, r6, #0
	movs r1, #0
	bl LoadAnimation
	b _0806B7B8
_0806B7B0:
	adds r0, r6, #0
	movs r1, #0
	bl UpdateSprite
_0806B7B8:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0806B7BC
sub_0806B7BC: @ 0x0806B7BC
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #3
	bl CheckRoomFlag
	cmp r0, #0
	bne _0806B7CC
	b _0806B968
_0806B7CC:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _0806B84C
	cmp r0, #1
	bgt _0806B7DC
	cmp r0, #0
	beq _0806B7E6
	b _0806B93C
_0806B7DC:
	cmp r0, #2
	beq _0806B86C
	cmp r0, #3
	beq _0806B874
	b _0806B93C
_0806B7E6:
	ldrh r0, [r5, #0x32]
	adds r0, #1
	strh r0, [r5, #0x32]
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	movs r1, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806B82C
	movs r0, #0x3b
	movs r1, #3
	movs r2, #0
	bl CreateNPC
	adds r4, r0, #0
	cmp r4, #0
	bne _0806B80C
	b _0806B968
_0806B80C:
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	ldr r0, _0806B828 @ =0x00001634
	bl TextboxTryNoOverlap
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	bl sub_0805E780
	b _0806B968
	.align 2, 0
_0806B828: .4byte 0x00001634
_0806B82C:
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	ands r0, r1
	cmp r0, #0
	beq _0806B83A
	b _0806B95A
_0806B83A:
	movs r0, #0x20
	strb r0, [r5, #0xf]
	ldr r0, _0806B848 @ =0x000001A9
	bl PlaySFX
	b _0806B95A
	.align 2, 0
_0806B848: .4byte 0x000001A9
_0806B84C:
	adds r0, r5, #0
	bl sub_0806B9BC
	adds r4, r0, #0
	cmp r4, #0
	bne _0806B85C
	bl sub_0805E780
_0806B85C:
	movs r3, #0x84
	lsls r3, r3, #0xe
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl PositionRelative
	b _0806B95A
_0806B86C:
	adds r0, r5, #0
	bl sub_0806B96C
	b _0806B95A
_0806B874:
	ldrb r0, [r5, #0xd]
	cmp r0, #1
	beq _0806B8A2
	cmp r0, #1
	bgt _0806B884
	cmp r0, #0
	beq _0806B88E
	b _0806B91E
_0806B884:
	cmp r0, #2
	beq _0806B8C4
	cmp r0, #3
	beq _0806B906
	b _0806B91E
_0806B88E:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806B91E
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	b _0806B91E
_0806B8A2:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806B91E
	movs r0, #2
	strb r0, [r5, #0xd]
	ldr r1, _0806B8C0 @ =0x0000013F
	adds r0, r5, #0
	bl sub_0801D2B4
	b _0806B8FA
	.align 2, 0
_0806B8C0: .4byte 0x0000013F
_0806B8C4:
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0806B91E
	movs r0, #0xef
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0xe]
	adds r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0806B91E
	cmp r0, #0xa
	bne _0806B91E
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	movs r0, #0xf4
	bl sub_08004488
	movs r0, #0
	strb r0, [r5, #0xe]
_0806B8FA:
	ldrb r1, [r5, #0xd]
	subs r1, #1
	adds r0, r5, #0
	bl LoadAnimation
	b _0806B91E
_0806B906:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806B91E
	movs r0, #0
	bl SetRoomFlag
	bl sub_0805E780
_0806B91E:
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806B95A
	movs r0, #0x20
	strb r0, [r5, #0xf]
	ldr r0, _0806B938 @ =0x000001A9
	bl PlaySFX
	b _0806B95A
	.align 2, 0
_0806B938: .4byte 0x000001A9
_0806B93C:
	adds r0, r5, #0
	bl sub_0806B9BC
	adds r4, r0, #0
	cmp r4, #0
	bne _0806B94E
	bl sub_0805E780
	b _0806B968
_0806B94E:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0806B968
	ldrb r0, [r5, #0xa]
	cmp r0, #4
	beq _0806B962
_0806B95A:
	adds r0, r5, #0
	bl sub_080042B8
	b _0806B968
_0806B962:
	adds r0, r5, #0
	bl sub_08004274
_0806B968:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0806B96C
sub_0806B96C: @ 0x0806B96C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0806B9BC
	adds r5, r0, #0
	cmp r5, #0
	bne _0806B97E
	bl sub_0805E780
_0806B97E:
	ldrb r3, [r4, #0xb]
	lsls r3, r3, #1
	ldr r0, _0806B9B8 @ =gUnk_08112F80
	adds r3, r3, r0
	ldrb r1, [r5, #0x18]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	ldrb r2, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r2, #0
	ldrsb r2, [r3, r2]
	lsls r2, r2, #0x10
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r3, #0x21
	lsls r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl PositionRelative
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, r5, pc}
	.align 2, 0
_0806B9B8: .4byte gUnk_08112F80

	thumb_func_start sub_0806B9BC
sub_0806B9BC: @ 0x0806B9BC
	push {lr}
	ldr r1, [r0, #0x50]
	cmp r1, #0
	beq _0806B9CC
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _0806B9CC
	movs r1, #0
_0806B9CC:
	adds r0, r1, #0
	pop {pc}
