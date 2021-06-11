	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r5, _08075920 @ =gPlayerState
	ldrb r0, [r5, #0x12]
	cmp r0, #0x11
	bne _08075928
	ldr r0, [r5, #0x30]
	ldr r1, _08075924 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r5, #0x30]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080759B8
	b _080759B2
	.align 2, 0
_08075920: .4byte gPlayerState
_08075924: .4byte 0xFFFBFFFF
_08075928:
	adds r0, r4, #0
	bl UpdateItemAnim
	ldrb r1, [r5, #0x1b]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08075948
	movs r0, #0xa0
	strb r0, [r5, #0x1b]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0807564C
	b _080759B2
_08075948:
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _08075998
	subs r0, #1
	strb r0, [r4, #7]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08075962
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_08077DF4
_08075962:
	ldr r4, _08075990 @ =gPlayerEntity
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #3
	strb r0, [r4, #0x15]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	bl sub_08079E08
	ldr r0, _08075994 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080759B2
	adds r0, r4, #0
	movs r1, #0x11
	movs r2, #0x40
	bl CreateFx
	b _080759B2
	.align 2, 0
_08075990: .4byte gPlayerEntity
_08075994: .4byte gScreenTransition
_08075998:
	ldrb r1, [r4, #0xe]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080759B2
	ldr r0, [r5, #0x30]
	ldr r1, _080759B4 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r5, #0x30]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080759B8
_080759B2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080759B4: .4byte 0xFFFBFFFF
	.syntax divided
