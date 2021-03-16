	thumb_func_start PlayerItem10
PlayerItem10: @ 0x080ACBCC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080ACBFC @ =gPlayerState
	ldrb r1, [r0, #0x1c]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #1
	beq _080ACBE0
	bl DeleteThisEntity
_080ACBE0:
	ldr r1, _080ACC00 @ =gUnk_0812AA80
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	pop {r4, pc}
	.align 2, 0
_080ACBFC: .4byte gPlayerState
_080ACC00: .4byte gUnk_0812AA80

	thumb_func_start sub_080ACC04
sub_080ACC04: @ 0x080ACC04
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _080ACC54 @ =gPlayerEntity
	adds r0, #0x3b
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x3b
	strb r0, [r1]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	ldrb r1, [r4, #0x10]
	movs r0, #0xa0
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #2
	strb r0, [r1]
	ldr r1, _080ACC58 @ =gUnk_0812AAD8
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x48]
	movs r0, #0x10
	str r0, [r4, #0x70]
	adds r0, r4, #0
	bl sub_080ACDB0
	adds r0, r4, #0
	bl sub_0801766C
	pop {r4, pc}
	.align 2, 0
_080ACC54: .4byte gPlayerEntity
_080ACC58: .4byte gUnk_0812AAD8

	thumb_func_start sub_080ACC5C
sub_080ACC5C: @ 0x080ACC5C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080ACDB0
	cmp r0, #0
	bne _080ACC74
	adds r0, r4, #0
	bl sub_080ACC78
	adds r0, r4, #0
	bl sub_080ACECC
_080ACC74:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080ACC78
sub_080ACC78: @ 0x080ACC78
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0xa]
	ldr r0, _080ACD20 @ =gScreenTransition
	ldr r0, [r0]
	adds r0, r2, r0
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ACCF8
	ldr r0, _080ACD24 @ =gUnk_0812AAAC
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r7, [r1]
	ldr r0, [r4, #0x74]
	adds r0, r7, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080ACCA4
	str r0, [r4, #0x74]
_080ACCA4:
	ldr r0, [r4, #0x74]
	adds r0, r7, r0
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r3, #1
	ldrsb r3, [r0, r3]
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_08008782
	adds r5, r0, #0
	cmp r5, #0
	beq _080ACCF2
	ldrb r1, [r5, #5]
	ldrb r2, [r5, #2]
	movs r0, #0x11
	bl CreateObject
	adds r6, r0, #0
	cmp r6, #0
	beq _080ACCF2
	ldrb r0, [r5, #3]
	strb r0, [r6, #0xe]
	ldr r0, [r4, #0x74]
	adds r0, r7, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
	strh r0, [r6, #0x2e]
	ldr r0, [r4, #0x74]
	adds r0, r0, r7
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r6, #0x32]
_080ACCF2:
	ldr r0, [r4, #0x74]
	adds r0, #2
	str r0, [r4, #0x74]
_080ACCF8:
	ldr r2, [r4, #0x54]
	cmp r2, #0
	bne _080ACD08
	ldr r0, [r4, #0x70]
	cmp r0, #2
	bls _080ACD08
	movs r0, #1
	str r0, [r4, #0x70]
_080ACD08:
	ldr r0, [r4, #0x70]
	subs r0, #1
	str r0, [r4, #0x70]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080ACDAE
	cmp r2, #0
	bne _080ACD28
	movs r0, #2
	b _080ACD32
	.align 2, 0
_080ACD20: .4byte gScreenTransition
_080ACD24: .4byte gUnk_0812AAAC
_080ACD28:
	ldr r0, _080ACD74 @ =gUnk_0812AABC
	ldrb r1, [r4, #0xa]
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
_080ACD32:
	str r0, [r4, #0x70]
	movs r0, #0x17
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r6, r0, #0
	cmp r6, #0
	beq _080ACDAE
	bl Random
	adds r2, r0, #0
	movs r0, #0xf
	ands r2, r0
	ldr r3, [r4, #0x48]
	ldrb r1, [r3, #6]
	cmp r1, r2
	bge _080ACD58
	adds r2, r1, #0
_080ACD58:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080ACD62
	rsbs r2, r2, #0
_080ACD62:
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	cmp r0, #1
	beq _080ACD9C
	cmp r0, #1
	bgt _080ACD78
	cmp r0, #0
	beq _080ACD82
	b _080ACDAE
	.align 2, 0
_080ACD74: .4byte gUnk_0812AABC
_080ACD78:
	cmp r0, #2
	beq _080ACD8C
	cmp r0, #3
	beq _080ACDA2
	b _080ACDAE
_080ACD82:
	ldrb r0, [r3, #7]
	ldrh r1, [r4, #0x32]
	subs r1, r1, r0
	strh r1, [r6, #0x32]
	b _080ACD94
_080ACD8C:
	ldrh r0, [r4, #0x32]
	ldrb r3, [r3, #7]
	adds r0, r0, r3
	strh r0, [r6, #0x32]
_080ACD94:
	ldrh r0, [r4, #0x2e]
	adds r0, r0, r2
	strh r0, [r6, #0x2e]
	b _080ACDAE
_080ACD9C:
	ldrh r0, [r4, #0x2e]
	adds r0, r0, r1
	b _080ACDA6
_080ACDA2:
	ldrh r0, [r4, #0x2e]
	subs r0, r0, r1
_080ACDA6:
	strh r0, [r6, #0x2e]
	ldrh r0, [r4, #0x32]
	adds r0, r0, r2
	strh r0, [r6, #0x32]
_080ACDAE:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080ACDB0
sub_080ACDB0: @ 0x080ACDB0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080ACDE8
	ldr r2, _080ACDE0 @ =gPlayerEntity
	ldr r1, _080ACDE4 @ =gUnk_08126EE4
	ldrb r0, [r4, #0x14]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r2, #0x2e]
	adds r0, r0, r3
	strh r0, [r4, #0x2e]
	ldrb r0, [r4, #0x14]
	adds r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r2, [r2, #0x32]
	adds r0, r0, r2
	b _080ACEB4
	.align 2, 0
_080ACDE0: .4byte gPlayerEntity
_080ACDE4: .4byte gUnk_08126EE4
_080ACDE8:
	ldrb r2, [r4, #0x14]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080ACE48
	ldr r0, [r4, #0x50]
	ldrh r1, [r0, #0x32]
	subs r1, #3
	strh r1, [r4, #0x32]
	movs r1, #4
	ands r1, r2
	adds r3, r0, #0
	cmp r1, #0
	beq _080ACE20
	movs r0, #0x2e
	ldrsh r7, [r3, r0]
	movs r0, #0x2e
	ldrsh r6, [r4, r0]
	ldr r1, _080ACE1C @ =gUnk_0812AAE8
	ldrb r2, [r4, #0xa]
	adds r0, r2, r1
	ldrb r0, [r0]
	rsbs r5, r0, #0
	adds r0, r1, #0
	b _080ACE30
	.align 2, 0
_080ACE1C: .4byte gUnk_0812AAE8
_080ACE20:
	movs r0, #0x2e
	ldrsh r6, [r3, r0]
	movs r0, #0x2e
	ldrsh r7, [r4, r0]
	ldr r0, _080ACE44 @ =gUnk_0812AAE8
	ldrb r2, [r4, #0xa]
	adds r1, r2, r0
	ldrb r5, [r1]
_080ACE30:
	subs r1, r7, r6
	str r1, [r4, #0x78]
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, r1
	bhi _080ACE90
	ldrh r0, [r3, #0x2e]
	adds r0, r0, r5
	strh r0, [r4, #0x2e]
	b _080ACEB6
	.align 2, 0
_080ACE44: .4byte gUnk_0812AAE8
_080ACE48:
	ldr r1, [r4, #0x50]
	ldrh r0, [r1, #0x2e]
	strh r0, [r4, #0x2e]
	movs r0, #4
	ands r0, r2
	adds r3, r1, #0
	cmp r0, #0
	beq _080ACE70
	movs r0, #0x32
	ldrsh r6, [r3, r0]
	movs r0, #0x32
	ldrsh r7, [r4, r0]
	ldr r0, _080ACE6C @ =gUnk_0812AAE8
	ldrb r2, [r4, #0xa]
	adds r1, r2, r0
	ldrb r5, [r1]
	b _080ACE84
	.align 2, 0
_080ACE6C: .4byte gUnk_0812AAE8
_080ACE70:
	movs r0, #0x32
	ldrsh r7, [r3, r0]
	movs r0, #0x32
	ldrsh r6, [r4, r0]
	ldr r1, _080ACEAC @ =gUnk_0812AAE8
	ldrb r2, [r4, #0xa]
	adds r0, r2, r1
	ldrb r0, [r0]
	rsbs r5, r0, #0
	adds r0, r1, #0
_080ACE84:
	subs r1, r7, r6
	str r1, [r4, #0x78]
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, r1
	bls _080ACEB0
_080ACE90:
	subs r0, r0, r1
	lsls r1, r0, #8
	strh r1, [r4, #0x24]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	ble _080ACEA4
	strh r1, [r4, #0x24]
_080ACEA4:
	adds r0, r4, #0
	bl sub_080AEFB4
	b _080ACEB6
	.align 2, 0
_080ACEAC: .4byte gUnk_0812AAE8
_080ACEB0:
	ldrh r0, [r3, #0x32]
	adds r0, r0, r5
_080ACEB4:
	strh r0, [r4, #0x32]
_080ACEB6:
	ldr r0, _080ACEC8 @ =gPlayerEntity
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080ACEC8: .4byte gPlayerEntity

	thumb_func_start sub_080ACECC
sub_080ACECC: @ 0x080ACECC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bhi _080ACF0C
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _080ACF0C
	ldr r2, [r4, #0x78]
	cmp r2, #0
	blt _080ACF0C
	ldr r0, _080ACF10 @ =gUnk_0812AAE8
	ldrb r1, [r4, #0xa]
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, r2
	bhi _080ACF0C
	adds r1, #1
	movs r0, #0x10
	movs r2, #0
	movs r3, #0
	bl CreatePlayerItem
	adds r1, r0, #0
	cmp r1, #0
	beq _080ACF0C
	str r4, [r1, #0x50]
	str r1, [r4, #0x54]
	ldrh r0, [r4, #0x2e]
	strh r0, [r1, #0x2e]
	ldrh r0, [r4, #0x32]
	strh r0, [r1, #0x32]
_080ACF0C:
	pop {r4, pc}
	.align 2, 0
_080ACF10: .4byte gUnk_0812AAE8
