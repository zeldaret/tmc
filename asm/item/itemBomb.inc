	thumb_func_start ItemBomb
ItemBomb: @ 0x08075FE0
	push {lr}
	ldr r3, _08075FF4 @ =gUnk_0811BD98
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_08075FF4: .4byte gUnk_0811BD98

	thumb_func_start sub_08075FF8
sub_08075FF8: @ 0x08075FF8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _08076018 @ =gPlayerState
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #4]
	orrs r0, r1
	cmp r0, #0
	bne _08076076
	movs r5, #0
	movs r0, #8
	movs r1, #2
	movs r2, #2
	bl FindEntityInListBySubtype
	b _08076026
	.align 2, 0
_08076018: .4byte gPlayerState
_0807601C:
	adds r5, #1
	adds r0, r4, #0
	movs r1, #2
	bl FindNextEntityOfSameSubtype
_08076026:
	adds r4, r0, #0
	cmp r4, #0
	bne _0807601C
	ldrb r0, [r6, #1]
	movs r1, #1
	cmp r0, #7
	bne _08076036
	movs r1, #3
_08076036:
	cmp r1, r5
	bls _08076076
	adds r0, r6, #0
	movs r1, #2
	bl CreatePlayerBomb
	adds r4, r0, #0
	cmp r4, #0
	beq _08076076
	ldr r0, _08076080 @ =gPlayerEntity
	ldrb r2, [r0, #0x14]
	movs r1, #6
	ands r1, r2
	ldr r2, _08076084 @ =gUnk_0811BDAC
	adds r1, r1, r2
	movs r2, #0
	ldrsb r2, [r1, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r1, r3]
	lsls r3, r3, #0x10
	adds r1, r4, #0
	bl PositionRelative
	movs r0, #1
	rsbs r0, r0, #0
	bl ModBombs
	movs r0, #0x82
	lsls r0, r0, #1
	bl SoundReq
_08076076:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08077E78
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08076080: .4byte gPlayerEntity
_08076084: .4byte gUnk_0811BDAC

	thumb_func_start sub_08076088
sub_08076088: @ 0x08076088
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r3, r1, #0
	adds r5, r2, #0
	cmp r3, #0
	beq _080760AA
	ldrb r0, [r3, #0x16]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080760A4
	b _080761A0
_080760A4:
	movs r0, #2
	strb r0, [r3, #0xc]
	strb r1, [r3, #0xd]
_080760AA:
	str r3, [r4, #0x18]
	ldr r0, _080760C4 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080760CC
	ldr r1, _080760C8 @ =0x00000928
	adds r0, r4, #0
	bl sub_08077DF4
	b _080760D6
	.align 2, 0
_080760C4: .4byte gPlayerState
_080760C8: .4byte 0x00000928
_080760CC:
	movs r1, #0xce
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_08077DF4
_080760D6:
	ldr r3, _08076130 @ =gPlayerState
	movs r0, #0
	mov r8, r0
	movs r7, #3
	strb r7, [r3, #5]
	adds r0, r3, #0
	adds r0, #0xa8
	movs r6, #4
	strb r6, [r0]
	movs r0, #2
	strb r0, [r4, #4]
	movs r0, #0xf
	strb r0, [r4, #0xf]
	ldr r2, _08076134 @ =gPlayerEntity
	movs r1, #0x79
	adds r1, r1, r2
	mov ip, r1
	ldrb r1, [r1]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08076138
	mov r1, r8
	mov r0, ip
	strb r1, [r0]
	ldrb r0, [r2, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	strb r6, [r3, #5]
	movs r1, #8
	asrs r1, r5
	mvns r1, r1
	ldrb r2, [r3, #0xb]
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #0xb]
	ldrb r0, [r3, #0xa]
	ands r1, r0
	strb r1, [r3, #0xa]
	strb r7, [r4, #4]
	mov r0, r8
	strb r0, [r4, #0xf]
	b _0807614A
	.align 2, 0
_08076130: .4byte gPlayerState
_08076134: .4byte gPlayerEntity
_08076138:
	movs r1, #8
	asrs r1, r5
	ldrb r2, [r3, #0xa]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r3, #0xa]
	ldrb r0, [r3, #0xb]
	orrs r1, r0
	strb r1, [r3, #0xb]
_0807614A:
	adds r0, r4, #0
	movs r1, #0x13
	bl CreatePlayerBomb
	adds r3, r0, #0
	cmp r3, #0
	bne _08076162
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077F50
	b _080761A0
_08076162:
	ldr r1, _08076194 @ =gPlayerEntity
	str r3, [r1, #0x74]
	movs r2, #0
	strb r2, [r1, #0xf]
	ldr r0, [r4, #0x18]
	str r0, [r3, #0x54]
	ldrb r0, [r1, #0x16]
	strb r0, [r3, #0x16]
	str r4, [r3, #0x50]
	str r3, [r4, #0x18]
	ldrb r0, [r4, #3]
	strb r0, [r3, #0xb]
	ldrb r0, [r4, #7]
	strb r0, [r3, #0xe]
	ldrb r0, [r4, #8]
	strb r0, [r3, #0xf]
	ldr r0, [r4, #0x18]
	ldrb r1, [r0, #0x16]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0x10
	bne _08076198
	movs r0, #8
	strb r0, [r4, #7]
	b _0807619A
	.align 2, 0
_08076194: .4byte gPlayerEntity
_08076198:
	strb r2, [r4, #7]
_0807619A:
	movs r0, #0x7f
	bl SoundReq
_080761A0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
