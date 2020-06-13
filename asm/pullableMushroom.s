	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0808A9FC
sub_0808A9FC: @ 0x0808A9FC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0808AA18 @ =gUnk_081211A4
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r4, #0x41
	movs r0, #0
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_0808AA18: .4byte gUnk_081211A4

	thumb_func_start sub_0808AA1C
sub_0808AA1C: @ 0x0808AA1C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r6, #1
	strb r6, [r5, #0xc]
	bl CheckIsDungeon
	cmp r0, #0
	bne _0808AA36
	adds r0, r5, #0
	movs r1, #0
	bl sub_0801D2B4
_0808AA36:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _0808AACC
	cmp r0, #1
	bgt _0808AA46
	cmp r0, #0
	beq _0808AA4C
	b _0808AB5E
_0808AA46:
	cmp r0, #2
	beq _0808AB20
	b _0808AB5E
_0808AA4C:
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0808AAC0 @ =gUnk_080FD224
	str r0, [r5, #0x48]
	strb r6, [r5, #0x16]
	ldr r0, _0808AAC4 @ =0x00004022
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _0808AAC8 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r7, #0x32
	ldrsh r2, [r5, r7]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
	adds r0, r5, #0
	adds r0, #0x45
	strb r6, [r0]
	adds r1, r5, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	adds r1, #3
	movs r0, #0x6e
	strb r0, [r1]
	subs r1, #4
	movs r0, #0xe
	strb r0, [r1]
	strb r6, [r5, #0x1c]
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x63
	movs r0, #4
	strb r0, [r1]
	b _0808AB5E
	.align 2, 0
_0808AAC0: .4byte gUnk_080FD224
_0808AAC4: .4byte 0x00004022
_0808AAC8: .4byte gRoomControls
_0808AACC:
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _0808AB10
	ldr r0, _0808AB1C @ =gUnk_080FD224
	str r0, [r5, #0x48]
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r0, r5, #0
	adds r0, #0x45
	strb r6, [r0]
	adds r1, r5, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	adds r1, #3
	movs r0, #0x6e
	strb r0, [r1]
	subs r1, #4
	movs r0, #4
	strb r0, [r1]
	strb r6, [r5, #0x1c]
	movs r0, #3
	strb r0, [r5, #0xc]
_0808AB10:
	ldrb r1, [r5, #0x14]
	adds r1, #9
	adds r0, r5, #0
	bl InitializeAnimation
	b _0808AB5E
	.align 2, 0
_0808AB1C: .4byte gUnk_080FD224
_0808AB20:
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r5, #0x19]
	ldrb r1, [r5, #0x14]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0808AB52
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r5, #0x74]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r5, #0x78]
	b _0808AB5E
_0808AB52:
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r5, #0x78]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r5, #0x74]
_0808AB5E:
	adds r0, r5, #0
	bl sub_0808AB68
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0808AB68
sub_0808AB68: @ 0x0808AB68
	push {lr}
	ldr r2, _0808AB7C @ =gUnk_081211B4
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808AB7C: .4byte gUnk_081211B4

	thumb_func_start sub_0808AB80
sub_0808AB80: @ 0x0808AB80
	push {lr}
	ldr r2, _0808AB94 @ =gUnk_081211C0
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808AB94: .4byte gUnk_081211C0

	thumb_func_start sub_0808AB98
sub_0808AB98: @ 0x0808AB98
	push {lr}
	adds r3, r0, #0
	ldr r2, [r3, #0x50]
	ldrh r1, [r2, #0xc]
	ldr r0, _0808ABB0 @ =0x00000201
	cmp r1, r0
	bne _0808ABB4
	movs r0, #0
	str r0, [r2, #0x54]
	bl DeleteThisEntity
	b _0808ABC2
	.align 2, 0
_0808ABB0: .4byte 0x00000201
_0808ABB4:
	ldrb r0, [r2, #0xc]
	cmp r0, #2
	bne _0808ABC2
	adds r0, r3, #0
	movs r1, #0
	bl sub_0808B168
_0808ABC2:
	pop {pc}

	thumb_func_start sub_0808ABC4
sub_0808ABC4: @ 0x0808ABC4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldrh r1, [r0, #0xc]
	ldr r0, _0808AC38 @ =0x00000201
	cmp r1, r0
	bne _0808ABD6
	bl DeleteThisEntity
_0808ABD6:
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x50]
	bl sub_0808B1F0
	adds r2, r0, #0
	cmp r2, #7
	bhi _0808ABE6
	movs r2, #0
_0808ABE6:
	ldrb r3, [r4, #0x14]
	lsls r1, r3, #2
	ldr r0, _0808AC3C @ =gUnk_081211CC
	adds r5, r1, r0
	cmp r2, #0x1f
	bhi _0808AC5A
	cmp r2, #0
	beq _0808ABF8
	subs r2, #6
_0808ABF8:
	ldrh r0, [r5]
	str r0, [r4, #0x70]
	ldr r1, [r4, #0x50]
	movs r0, #2
	ldrsb r0, [r5, r0]
	ldrh r3, [r1, #0x2e]
	adds r0, r0, r3
	strh r0, [r4, #0x2e]
	movs r0, #3
	ldrsb r0, [r5, r0]
	ldrh r1, [r1, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	ldrb r1, [r4, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808AC40
	lsls r1, r2, #4
	movs r0, #0x80
	lsls r0, r0, #2
	subs r0, r0, r1
	str r0, [r4, #0x74]
	lsls r0, r2, #3
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #0x78]
	movs r0, #0xf
	strb r0, [r4, #0x1e]
	b _0808ACDE
	.align 2, 0
_0808AC38: .4byte 0x00000201
_0808AC3C: .4byte gUnk_081211CC
_0808AC40:
	lsls r1, r2, #4
	movs r0, #0x80
	lsls r0, r0, #2
	subs r0, r0, r1
	str r0, [r4, #0x78]
	lsls r0, r2, #3
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r4, #0x74]
	movs r0, #0x14
	strb r0, [r4, #0x1e]
	b _0808ACDE
_0808AC5A:
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	beq _0808AC9E
	adds r1, r2, #0
	subs r1, #0x20
	lsls r1, r1, #2
	adds r0, #0xff
	subs r0, r0, r1
	str r0, [r4, #0x74]
	lsls r0, r2, #3
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #0x78]
	movs r0, #0x10
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808AC92
	ldr r0, [r4, #0x50]
	lsrs r1, r2, #1
	ldrh r0, [r0, #0x2e]
	subs r0, r0, r1
	strh r0, [r4, #0x2e]
	b _0808ACDE
_0808AC92:
	ldr r1, [r4, #0x50]
	lsrs r0, r2, #1
	ldrh r1, [r1, #0x2e]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	b _0808ACDE
_0808AC9E:
	adds r1, r2, #0
	subs r1, #0x20
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	str r0, [r4, #0x78]
	lsls r0, r2, #3
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r4, #0x74]
	movs r0, #0x15
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808ACCE
	ldr r0, [r4, #0x50]
	lsrs r1, r2, #1
	ldrh r0, [r0, #0x32]
	adds r1, r1, r0
	b _0808ACD6
_0808ACCE:
	ldr r0, [r4, #0x50]
	lsrs r2, r2, #1
	ldrh r1, [r0, #0x32]
	subs r1, r1, r2
_0808ACD6:
	movs r0, #3
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
_0808ACDE:
	ldr r1, [r4, #0x74]
	ldr r2, [r4, #0x78]
	ldr r3, [r4, #0x70]
	adds r0, r4, #0
	bl sub_0805EC9C
	pop {r4, r5, pc}

	thumb_func_start sub_0808ACEC
sub_0808ACEC: @ 0x0808ACEC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808AD00
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
_0808AD00:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	subs r0, #4
	cmp r0, #0x12
	bhi _0808AD92
	lsls r0, r0, #2
	ldr r1, _0808AD1C @ =_0808AD20
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0808AD1C: .4byte _0808AD20
_0808AD20: @ jump table
	.4byte _0808AD6C @ case 0
	.4byte _0808AD6C @ case 1
	.4byte _0808AD6C @ case 2
	.4byte _0808AD92 @ case 3
	.4byte _0808AD6C @ case 4
	.4byte _0808AD6C @ case 5
	.4byte _0808AD6C @ case 6
	.4byte _0808AD6C @ case 7
	.4byte _0808AD6C @ case 8
	.4byte _0808AD6C @ case 9
	.4byte _0808AD92 @ case 10
	.4byte _0808AD92 @ case 11
	.4byte _0808AD6C @ case 12
	.4byte _0808AD6C @ case 13
	.4byte _0808AD6C @ case 14
	.4byte _0808AD88 @ case 15
	.4byte _0808AD6C @ case 16
	.4byte _0808AD92 @ case 17
	.4byte _0808AD6C @ case 18
_0808AD6C:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	bl sub_0806F5A4
	strb r0, [r4, #0x14]
	movs r0, #2
	strb r0, [r4, #0xd]
	strb r0, [r4, #0xe]
	b _0808AD9E
_0808AD88:
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	b _0808AD9E
_0808AD92:
	movs r0, #0
	strb r0, [r4, #0xf]
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08078930
_0808AD9E:
	pop {r4, pc}

	thumb_func_start sub_0808ADA0
sub_0808ADA0: @ 0x0808ADA0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x54]
	bl sub_0808B1F0
	cmp r0, #7
	bls _0808ADB4
	ldr r1, [r4, #0x54]
	cmp r1, #0
	bne _0808ADE2
_0808ADB4:
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r2, #2
	movs r0, #2
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x14]
	eors r0, r2
	strb r0, [r4, #0x14]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	b _0808ADEE
_0808ADE2:
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1, #0x24]
	ldr r0, [r4, #0x54]
	bl sub_0806F69C
_0808ADEE:
	pop {r4, pc}

	thumb_func_start sub_0808ADF0
sub_0808ADF0: @ 0x0808ADF0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0x14]
	adds r1, r2, #0
	adds r1, #0xd
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r1, r0
	bne _0808AE26
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808AE1E
	movs r0, #0
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	b _0808AE80
_0808AE1E:
	adds r0, r4, #0
	bl sub_08004274
	b _0808AE80
_0808AE26:
	adds r1, r2, #1
	cmp r1, r0
	beq _0808AE54
	adds r0, r4, #0
	bl InitializeAnimation
	ldrb r0, [r4, #0x14]
	cmp r0, #3
	bne _0808AE42
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _0808AE48
_0808AE42:
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
_0808AE48:
	strb r0, [r4, #0x18]
	movs r0, #0x97
	lsls r0, r0, #1
	bl PlaySFX
	b _0808AE80
_0808AE54:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808AE80
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0808AE80
	ldrb r1, [r4, #0x14]
	adds r1, #0xd
	adds r0, r4, #0
	bl InitializeAnimation
_0808AE80:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0808AE84
sub_0808AE84: @ 0x0808AE84
	push {lr}
	adds r2, r0, #0
	ldr r0, _0808AEA8 @ =gLinkState
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _0808AE94
	movs r0, #6
	strb r0, [r2, #0xd]
_0808AE94:
	ldr r0, _0808AEAC @ =gUnk_081211DC
	ldrb r1, [r2, #0xd]
	subs r1, #5
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808AEA8: .4byte gLinkState
_0808AEAC: .4byte gUnk_081211DC

	thumb_func_start sub_0808AEB0
sub_0808AEB0: @ 0x0808AEB0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0808AF68
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	bl sub_0808B1F0
	adds r6, r0, #0
	ldr r5, _0808AF10 @ =gLinkState
	adds r2, r5, #0
	adds r2, #0x90
	ldr r1, _0808AF14 @ =gUnk_081211E4
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r2]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0808AF20
	adds r0, r4, #0
	bl sub_08004274
	cmp r6, #0x3f
	bhi _0808AF08
	ldr r0, _0808AF18 @ =gLinkEntity
	ldrb r2, [r4, #0x15]
	movs r1, #0x40
	bl sub_080044AE
	ldr r0, [r4, #0x7c]
	subs r0, #1
	str r0, [r4, #0x7c]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0808AF08
	movs r0, #4
	str r0, [r4, #0x7c]
	ldr r0, _0808AF1C @ =0x0000012F
	bl PlaySFX
_0808AF08:
	movs r0, #1
	strb r0, [r4, #0xf]
	b _0808AFD0
	.align 2, 0
_0808AF10: .4byte gLinkState
_0808AF14: .4byte gUnk_081211E4
_0808AF18: .4byte gLinkEntity
_0808AF1C: .4byte 0x0000012F
_0808AF20:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0808AFD0
	ldr r2, _0808AF64 @ =gLinkEntity
	ldrb r0, [r2, #0xc]
	cmp r0, #1
	bne _0808AFD0
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808AFD0
	movs r0, #0x1b
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	adds r0, #0x38
	strb r6, [r0]
	ldrb r0, [r4, #0x15]
	movs r1, #0x10
	eors r0, r1
	adds r1, r5, #0
	adds r1, #0x39
	strb r0, [r1]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0808B1F0
	adds r1, r5, #0
	adds r1, #0x3a
	strb r0, [r1]
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	b _0808AFD0
	.align 2, 0
_0808AF64: .4byte gLinkEntity
_0808AF68:
	movs r6, #1
	strb r6, [r4, #0xe]
	str r6, [r4, #0x7c]
	ldr r5, _0808AFC8 @ =gLinkEntity
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	movs r1, #2
	eors r0, r1
	strb r0, [r4, #0x14]
	lsls r0, r0, #3
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r5, #0x18]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x14]
	adds r1, #5
	adds r0, r4, #0
	bl InitializeAnimation
	adds r0, r4, #0
	movs r1, #0
	bl sub_0808B21C
	cmp r0, #0
	beq _0808AFB6
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl sub_0808B168
_0808AFB6:
	ldrb r1, [r4, #0x14]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0808AFCC
	ldrh r0, [r4, #0x32]
	strh r0, [r5, #0x32]
	b _0808AFD0
	.align 2, 0
_0808AFC8: .4byte gLinkEntity
_0808AFCC:
	ldrh r0, [r4, #0x2e]
	strh r0, [r5, #0x2e]
_0808AFD0:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0808AFD4
sub_0808AFD4: @ 0x0808AFD4
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	strb r1, [r0, #0xd]
	ldr r2, [r0, #0x54]
	ldrb r0, [r0, #0x15]
	movs r1, #0x10
	eors r0, r1
	strb r0, [r2, #0x15]
	movs r0, #0x98
	lsls r0, r0, #1
	bl PlaySFX
	pop {pc}

	thumb_func_start sub_0808AFF0
sub_0808AFF0: @ 0x0808AFF0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _0808B054 @ =gUnk_081211EC
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r0, _0808B058 @ =gLinkState
	ldrb r1, [r0, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _0808B01E
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x13
	beq _0808B050
_0808B01E:
	ldrb r5, [r4, #0xa]
	cmp r5, #1
	bne _0808B050
	ldr r0, [r4, #0x50]
	strb r5, [r0, #0xc]
	ldr r0, [r4, #0x50]
	strb r5, [r0, #0xd]
	ldr r2, [r4, #0x50]
	ldrb r0, [r2, #0x15]
	movs r1, #0x10
	eors r0, r1
	strb r0, [r4, #0x15]
	ldrb r3, [r2, #0x10]
	movs r1, #0x7f
	adds r0, r1, #0
	ands r0, r3
	strb r0, [r2, #0x10]
	ldrb r0, [r4, #0x10]
	ands r1, r0
	strb r1, [r4, #0x10]
	strb r5, [r4, #0xc]
	movs r0, #0x98
	lsls r0, r0, #1
	bl PlaySFX
_0808B050:
	pop {r4, r5, pc}
	.align 2, 0
_0808B054: .4byte gUnk_081211EC
_0808B058: .4byte gLinkState

	thumb_func_start sub_0808B05C
sub_0808B05C: @ 0x0808B05C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0808B0AE
	ldr r2, _0808B0B8 @ =gLinkEntity
	ldrb r0, [r2, #0x14]
	lsrs r0, r0, #1
	movs r1, #2
	eors r0, r1
	strb r0, [r4, #0x14]
	lsls r0, r0, #3
	strb r0, [r4, #0x15]
	ldrb r0, [r2, #0x18]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x14]
	adds r1, #5
	adds r0, r4, #0
	bl InitializeAnimation
	adds r0, r4, #0
	movs r1, #1
	bl sub_0808B21C
	cmp r0, #0
	beq _0808B0AE
	ldr r0, [r4, #0x54]
	movs r1, #1
	bl sub_0808B168
_0808B0AE:
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	pop {r4, pc}
	.align 2, 0
_0808B0B8: .4byte gLinkEntity

	thumb_func_start sub_0808B0BC
sub_0808B0BC: @ 0x0808B0BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x88
	adds r5, r0, #0
	ldr r1, [r5, #0x50]
	bl sub_0808B1F0
	adds r7, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _0808B0D6
	cmp r0, #1
	beq _0808B0DE
	b _0808B162
_0808B0D6:
	adds r0, r5, #0
	bl sub_08004274
	b _0808B162
_0808B0DE:
	ldr r6, _0808B148 @ =gLinkEntity
	ldrb r0, [r6, #0x14]
	movs r1, #0xe
	ands r1, r0
	ldr r0, _0808B14C @ =gUnk_08126EE4
	adds r1, r1, r0
	mov r2, sp
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r3, [r6, #0x2e]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	movs r0, #1
	ldrsb r0, [r1, r0]
	ldrh r1, [r6, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	mov r0, sp
	adds r1, r5, #0
	movs r2, #7
	movs r3, #7
	bl sub_0800419C
	cmp r0, #0
	beq _0808B154
	ldrb r0, [r6, #0xc]
	cmp r0, #1
	bne _0808B162
	ldr r4, _0808B150 @ =gLinkState
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808B162
	movs r0, #0x1b
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x38
	strb r7, [r0]
	ldrb r0, [r5, #0x15]
	movs r1, #0x10
	eors r0, r1
	adds r1, r4, #0
	adds r1, #0x39
	strb r0, [r1]
	ldr r0, [r5, #0x50]
	adds r1, r6, #0
	bl sub_0808B1F0
	adds r1, r4, #0
	adds r1, #0x3a
	strb r0, [r1]
	b _0808B162
	.align 2, 0
_0808B148: .4byte gLinkEntity
_0808B14C: .4byte gUnk_08126EE4
_0808B150: .4byte gLinkState
_0808B154:
	movs r0, #0x40
	strh r0, [r5, #0x24]
	cmp r7, #0x3f
	bhi _0808B162
	adds r0, r5, #0
	bl sub_0806F69C
_0808B162:
	add sp, #0x88
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0808B168
sub_0808B168: @ 0x0808B168
	push {r4, r5, lr}
	adds r3, r0, #0
	cmp r1, #0
	beq _0808B188
	ldrb r0, [r3, #0x14]
	movs r1, #2
	eors r1, r0
	lsls r1, r1, #1
	ldr r0, _0808B184 @ =gUnk_081211F4
	adds r2, r1, r0
	adds r1, r2, #1
	ldr r4, [r3, #0x50]
	adds r5, r4, #0
	b _0808B1CE
	.align 2, 0
_0808B184: .4byte gUnk_081211F4
_0808B188:
	ldrb r1, [r3, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808B1B8
	ldr r5, _0808B1AC @ =gLinkEntity
	ldr r4, [r3, #0x50]
	ldrb r1, [r3, #0x14]
	lsls r2, r1, #1
	ldr r0, _0808B1B0 @ =gUnk_081211FC
	adds r2, r2, r0
	movs r0, #2
	eors r1, r0
	lsls r1, r1, #1
	ldr r0, _0808B1B4 @ =gUnk_081211F5
	adds r1, r1, r0
	b _0808B1CE
	.align 2, 0
_0808B1AC: .4byte gLinkEntity
_0808B1B0: .4byte gUnk_081211FC
_0808B1B4: .4byte gUnk_081211F5
_0808B1B8:
	ldr r5, [r3, #0x50]
	ldr r4, _0808B1E4 @ =gLinkEntity
	movs r0, #2
	eors r0, r1
	lsls r0, r0, #1
	ldr r1, _0808B1E8 @ =gUnk_081211F4
	adds r2, r0, r1
	ldrb r0, [r3, #0x14]
	lsls r0, r0, #1
	ldr r1, _0808B1EC @ =gUnk_081211FD
	adds r1, r0, r1
_0808B1CE:
	movs r0, #0
	ldrsb r0, [r2, r0]
	ldrh r5, [r5, #0x2e]
	adds r0, r0, r5
	strh r0, [r3, #0x2e]
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r4, [r4, #0x32]
	adds r0, r0, r4
	strh r0, [r3, #0x32]
	pop {r4, r5, pc}
	.align 2, 0
_0808B1E4: .4byte gLinkEntity
_0808B1E8: .4byte gUnk_081211F4
_0808B1EC: .4byte gUnk_081211FD

	thumb_func_start sub_0808B1F0
sub_0808B1F0: @ 0x0808B1F0
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldrb r1, [r2, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808B20A
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	movs r2, #0x2e
	ldrsh r0, [r3, r2]
	b _0808B212
_0808B20A:
	movs r0, #0x32
	ldrsh r1, [r2, r0]
	movs r2, #0x32
	ldrsh r0, [r3, r2]
_0808B212:
	subs r0, r1, r0
	cmp r0, #0
	bge _0808B21A
	rsbs r0, r0, #0
_0808B21A:
	pop {pc}

	thumb_func_start sub_0808B21C
sub_0808B21C: @ 0x0808B21C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #6
	orrs r1, r0
	strb r1, [r2]
	adds r0, r4, #0
	movs r1, #0x32
	movs r2, #1
	movs r3, #0
	bl CreateObjectWithParent
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _0808B26E
	ldrb r0, [r4, #0x14]
	strb r0, [r1, #0x14]
	ldr r1, [r4, #0x54]
	ldrb r0, [r4, #0x15]
	strb r0, [r1, #0x15]
	ldr r3, [r4, #0x54]
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
	ldr r0, [r4, #0x54]
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	strb r5, [r0, #0xb]
_0808B26E:
	adds r0, r4, #0
	movs r1, #0x32
	movs r2, #2
	movs r3, #0
	bl CreateObjectWithParent
	adds r1, r0, #0
	str r1, [r4, #0x50]
	cmp r1, #0
	bne _0808B286
	movs r0, #0
	b _0808B292
_0808B286:
	ldrb r0, [r4, #0x14]
	strb r0, [r1, #0x14]
	ldr r1, [r4, #0x50]
	ldr r0, [r4, #0x54]
	str r0, [r1, #0x54]
	movs r0, #1
_0808B292:
	pop {r4, r5, pc}
