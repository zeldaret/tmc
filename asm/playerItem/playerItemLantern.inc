
	thumb_func_start PlayerItemLantern
PlayerItemLantern: @ 0x08054A40
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08054A5C @ =gUnk_080FEEA8
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
_08054A5C: .4byte gUnk_080FEEA8

	thumb_func_start sub_08054A60
sub_08054A60: @ 0x08054A60
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #0xa0
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #0xe]
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r4, #0x11]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	subs r1, #1
	movs r0, #0x80
	strb r0, [r1]
	ldr r0, _08054AC4 @ =gPlayerEntity
	ldrb r1, [r0, #0x14]
	movs r0, #0xe
	ands r0, r1
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl AllocMutableHitbox
	cmp r0, #0
	bne _08054AAC
	bl DeleteThisEntity
_08054AAC:
	adds r0, r4, #0
	bl sub_0801766C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AE008
	adds r0, r4, #0
	bl sub_08054AC8
	pop {r4, pc}
	.align 2, 0
_08054AC4: .4byte gPlayerEntity

	thumb_func_start sub_08054AC8
sub_08054AC8: @ 0x08054AC8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r5, _08054B14 @ =gPlayerEntity
	ldrb r1, [r5, #0x14]
	movs r0, #0xe
	ands r0, r1
	strb r0, [r4, #0x14]
	ldr r1, [r4, #0x48]
	ldr r2, _08054B18 @ =gUnk_080FEEB0
	ldrb r0, [r4, #0x14]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [r4, #0x48]
	ldrb r0, [r4, #0x14]
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1, #1]
	ldr r0, [r4, #0x48]
	movs r1, #4
	strb r1, [r0, #6]
	ldr r0, [r4, #0x48]
	strb r1, [r0, #7]
	ldrb r7, [r5, #0x1e]
	adds r6, r7, #0
	cmp r6, #0x36
	bhi _08054B06
	ldrh r0, [r5, #0x12]
	cmp r0, #6
	beq _08054B1C
_08054B06:
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	b _08054B68
	.align 2, 0
_08054B14: .4byte gPlayerEntity
_08054B18: .4byte gUnk_080FEEB0
_08054B1C:
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r2, [r5, #0x18]
	movs r1, #0x40
	ands r1, r2
	ldrb r3, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	lsrs r2, r2, #7
	lsls r2, r2, #7
	movs r1, #0x7f
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0x1e]
	cmp r6, r0
	beq _08054B52
	strb r7, [r4, #0x1e]
	ldrb r1, [r4, #0x1e]
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
_08054B52:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x5a
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
_08054B68:
	movs r0, #0x10
	bl IsItemEquipped
	cmp r0, #1
	bhi _08054BFC
	ldrb r0, [r4, #0x1e]
	cmp r0, #0xff
	beq _08054BE8
	ldr r0, _08054BF4 @ =gPlayerEntity
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	beq _08054BE8
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08054BE8
	movs r0, #4
	strb r0, [r4, #0xe]
	movs r0, #0x45
	movs r1, #0
	movs r2, #0x10
	bl CreateObject
	adds r5, r0, #0
	cmp r5, #0
	beq _08054BE8
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl PositionRelative
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	adds r3, r5, #0
	adds r3, #0x29
	lsrs r1, r1, #0x1d
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r1, _08054BF8 @ =gUnk_080FEEB0
	ldrb r0, [r4, #0x14]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r2, r5, #0
	adds r2, #0x62
	strb r0, [r2]
	ldrb r0, [r4, #0x14]
	adds r0, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x63
	strb r1, [r0]
_08054BE8:
	ldr r1, _08054BF4 @ =gPlayerEntity
	adds r0, r4, #0
	bl sub_08078E84
	b _08054C00
	.align 2, 0
_08054BF4: .4byte gPlayerEntity
_08054BF8: .4byte gUnk_080FEEB0
_08054BFC:
	bl DeleteThisEntity
_08054C00:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
