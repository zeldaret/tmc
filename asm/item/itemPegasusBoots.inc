
	thumb_func_start ItemPegasusBoots
ItemPegasusBoots: @ 0x08076800
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov sb, r1
	ldr r4, _0807682C @ =gPlayerEntity
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	cmp r0, #0
	beq _08076834
	ldr r1, _08076830 @ =gPlayerState
	movs r0, #0
	strb r0, [r1, #0x1e]
	strb r0, [r1, #0xe]
	adds r0, r6, #0
	mov r1, sb
	bl sub_08077E78
	b _080768EC
	.align 2, 0
_0807682C: .4byte gPlayerEntity
_08076830: .4byte gPlayerState
_08076834:
	ldrb r0, [r6, #7]
	subs r0, #1
	strb r0, [r6, #7]
	movs r1, #7
	mov r8, r1
	ands r0, r1
	cmp r0, #0
	bne _0807684A
	movs r0, #0x7d
	bl SoundReq
_0807684A:
	ldr r2, _08076880 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080768DA
	ldrb r1, [r6, #7]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	bne _080768DA
	ldrb r0, [r2, #0x12]
	cmp r0, #0x11
	bne _08076884
	adds r0, r4, #0
	adds r0, #0x63
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080768DA
	adds r0, r4, #0
	movs r1, #0x52
	movs r2, #0
	bl CreateFx
	b _080768DA
	.align 2, 0
_08076880: .4byte gPlayerState
_08076884:
	adds r0, r4, #0
	movs r1, #0x11
	movs r2, #0x40
	bl CreateFx
	adds r5, r0, #0
	cmp r5, #0
	beq _080768DA
	ldrh r0, [r5, #0x32]
	adds r0, #2
	strh r0, [r5, #0x32]
	ldrb r0, [r6, #4]
	cmp r0, #2
	beq _080768DA
	bl Random
	adds r4, r0, #0
	movs r0, #3
	ands r4, r0
	bl Random
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	beq _080768B8
	rsbs r4, r4, #0
_080768B8:
	ldrh r0, [r5, #0x32]
	adds r0, r0, r4
	strh r0, [r5, #0x32]
	bl Random
	adds r4, r0, #0
	mov r0, r8
	ands r4, r0
	bl Random
	ands r0, r7
	cmp r0, #0
	beq _080768D4
	rsbs r4, r4, #0
_080768D4:
	ldrh r0, [r5, #0x2e]
	adds r0, r0, r4
	strh r0, [r5, #0x2e]
_080768DA:
	ldr r0, _080768F4 @ =gUnk_0811BDCC
	ldrb r1, [r6, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r6, #0
	mov r1, sb
	bl _call_via_r2
_080768EC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080768F4: .4byte gUnk_0811BDCC

	thumb_func_start sub_080768F8
sub_080768F8: @ 0x080768F8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r3, _08076934 @ =gPlayerState
	ldrb r1, [r3, #0x1c]
	ldrb r0, [r3, #4]
	orrs r1, r0
	ldrb r0, [r3, #5]
	orrs r1, r0
	ldrb r0, [r3, #2]
	orrs r1, r0
	ldr r2, [r3, #0x30]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r2
	orrs r1, r0
	cmp r1, #0
	bne _08076954
	movs r0, #1
	strb r0, [r3, #0x1e]
	adds r0, r3, #0
	adds r0, #0x21
	strb r1, [r0]
	movs r0, #0x80
	ands r2, r0
	cmp r2, #0
	bne _08076938
	movs r0, #0x10
	strb r0, [r4, #7]
	b _0807693C
	.align 2, 0
_08076934: .4byte gPlayerState
_08076938:
	ldr r0, _08076950 @ =0x00000C14
	strh r0, [r3, #8]
_0807693C:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077D38
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08076964
	b _08076962
	.align 2, 0
_08076950: .4byte 0x00000C14
_08076954:
	movs r0, #0
	strb r0, [r3, #0x1e]
	strb r0, [r3, #0xe]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
_08076962:
	pop {r4, r5, pc}

	thumb_func_start sub_08076964
sub_08076964: @ 0x08076964
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r6, r1, #0
	bl sub_08077EFC
	cmp r0, #0
	bne _08076978
	b _08076A70
_08076978:
	ldr r0, _080769C4 @ =gPlayerEntity
	ldr r7, [r0, #0x34]
	cmp r7, #0
	bne _08076A70
	ldr r5, _080769C8 @ =gPlayerState
	ldrb r0, [r5, #0x1e]
	cmp r0, #0
	beq _08076A70
	adds r0, r4, #0
	bl UpdateItemAnim
	ldr r0, [r5, #0x30]
	movs r1, #0x80
	mov r8, r1
	ands r0, r1
	cmp r0, #0
	bne _080769A0
	adds r0, r4, #0
	bl UpdateItemAnim
_080769A0:
	ldrb r0, [r5, #0x1e]
	adds r0, #1
	strb r0, [r5, #0x1e]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bne _08076A7E
	ldr r0, [r5, #0x30]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080769CC
	strb r7, [r5, #0x1e]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077E78
	b _08076A7E
	.align 2, 0
_080769C4: .4byte gPlayerEntity
_080769C8: .4byte gPlayerState
_080769CC:
	movs r0, #0x40
	strb r0, [r5, #0x1e]
	movs r1, #8
	asrs r1, r6
	ldrb r0, [r5, #0xa]
	bics r0, r1
	strb r0, [r5, #0xa]
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	bl sub_0807A158
	cmp r0, #0
	beq _08076A46
	ldr r0, [r5, #0x30]
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _08076A60
	adds r0, r5, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08076A46
	adds r0, r5, #0
	adds r0, #0xab
	movs r1, #3
	strb r1, [r0]
	movs r1, #0xa6
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_08077DF4
	adds r0, r4, #0
	movs r1, #0xc
	bl CreatePlayerBomb
	adds r5, r0, #0
	cmp r5, #0
	beq _08076A70
	ldr r6, _08076A34 @ =gSave
	adds r4, r6, #0
	adds r4, #0xb4
	ldrb r0, [r4]
	bl sub_0805449C
	cmp r0, #0
	beq _08076A38
	ldrb r1, [r4]
	b _08076A3E
	.align 2, 0
_08076A34: .4byte gSave
_08076A38:
	adds r0, r6, #0
	adds r0, #0xb5
	ldrb r1, [r0]
_08076A3E:
	adds r0, r5, #0
	adds r0, #0x68
	strb r1, [r0]
	b _08076A7E
_08076A46:
	ldr r0, _08076A5C @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08076A60
	adds r1, #0x84
	adds r0, r4, #0
	bl sub_08077DF4
	b _08076A7E
	.align 2, 0
_08076A5C: .4byte gPlayerState
_08076A60:
	ldr r1, _08076A6C @ =gPlayerState
	movs r0, #0xc1
	lsls r0, r0, #4
	strh r0, [r1, #8]
	b _08076A7E
	.align 2, 0
_08076A6C: .4byte gPlayerState
_08076A70:
	ldr r1, _08076A84 @ =gPlayerState
	movs r0, #0
	strb r0, [r1, #0x1e]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077E78
_08076A7E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08076A84: .4byte gPlayerState

	thumb_func_start sub_08076A88
sub_08076A88: @ 0x08076A88
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	bl sub_08077EFC
	cmp r0, #0
	beq _08076B64
	ldr r1, _08076AB4 @ =gPlayerState
	ldrb r0, [r1, #0x1e]
	adds r3, r1, #0
	cmp r0, #0
	beq _08076B64
	ldr r0, [r3, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08076ABC
	ldr r1, _08076AB8 @ =gPlayerEntity
	movs r0, #0xc0
	lsls r0, r0, #2
	b _08076AC2
	.align 2, 0
_08076AB4: .4byte gPlayerState
_08076AB8: .4byte gPlayerEntity
_08076ABC:
	ldr r1, _08076B00 @ =gPlayerEntity
	movs r0, #0xa0
	lsls r0, r0, #2
_08076AC2:
	strh r0, [r1, #0x24]
	adds r5, r1, #0
	ldr r1, _08076B04 @ =gUnk_0800275C
	ldrb r2, [r5, #0x14]
	movs r6, #0xe
	adds r0, r6, #0
	ands r0, r2
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrh r0, [r5, #0x2a]
	ands r0, r1
	cmp r1, r0
	bne _08076B0E
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _08076B08
	movs r2, #0
	movs r0, #6
	strb r0, [r5, #0xc]
	strb r2, [r5, #0xd]
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	adds r0, r3, #0
	adds r0, #0x38
	strb r2, [r0]
	movs r0, #0xff
	strb r0, [r3, #0xd]
	b _08076B72
	.align 2, 0
_08076B00: .4byte gPlayerEntity
_08076B04: .4byte gUnk_0800275C
_08076B08:
	movs r0, #1
	strb r0, [r4, #8]
	b _08076B72
_08076B0E:
	ldr r1, _08076B60 @ =gUnk_0811BE38
	movs r0, #0xfe
	ands r0, r2
	adds r0, r0, r1
	adds r1, r3, #0
	adds r1, #0x90
	ldrh r2, [r0]
	ldrh r0, [r1]
	ands r0, r2
	cmp r0, #0
	bne _08076B64
	ldrb r0, [r4, #0xa]
	adds r1, r6, #0
	ands r1, r0
	lsls r0, r1, #2
	strb r0, [r4, #0xb]
	ldrb r2, [r3, #0xd]
	cmp r2, #0xff
	beq _08076B52
	cmp r2, r0
	beq _08076B52
	adds r0, r2, #0
	ldrb r1, [r4, #0xb]
	subs r0, r0, r1
	movs r2, #0x1f
	ands r0, r2
	cmp r0, #0xf
	bgt _08076B4A
	adds r0, r1, #2
	strb r0, [r4, #0xb]
_08076B4A:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	ands r0, r2
	strb r0, [r4, #0xb]
_08076B52:
	ldrb r0, [r4, #0xb]
	strb r0, [r3, #0xd]
	adds r0, r4, #0
	bl UpdateItemAnim
	b _08076B72
	.align 2, 0
_08076B60: .4byte gUnk_0811BE38
_08076B64:
	ldr r1, _08076B74 @ =gPlayerState
	movs r0, #0
	strb r0, [r1, #0x1e]
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08077E78
_08076B72:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08076B74: .4byte gPlayerState
