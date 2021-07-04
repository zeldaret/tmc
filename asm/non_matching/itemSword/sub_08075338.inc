	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r4, _0807536C @ =gPlayerState
	ldr r1, [r4, #0x30]
	movs r3, #0x80
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08075370
	ldrb r0, [r5, #9]
	movs r1, #0x80
	orrs r1, r0
	strb r1, [r5, #9]
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08077D38
	movs r0, #0xc0
	lsls r0, r0, #4
	strh r0, [r4, #8]
	movs r0, #0x75
	bl SoundReq
	b _080754B4
	.align 2, 0
_0807536C: .4byte gPlayerState
_08075370:
	ldrb r2, [r4, #2]
	cmp r2, #0
	beq _080753DC
	movs r6, #7
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #3
	beq _080753E4
	movs r0, #0x78
	ands r0, r2
	cmp r0, #0
	bne _080753E4
	ldr r3, _080753D4 @ =gPlayerEntity
	ldr r1, [r3, #0x20]
	ldr r0, _080753D8 @ =0x00017FFF
	cmp r1, r0
	bhi _080753E4
	adds r0, r4, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080753E4
	ldr r0, [r3, #0x34]
	cmp r0, #0
	beq _080753E4
	movs r0, #0x20
	orrs r0, r2
	strb r0, [r4, #2]
	adds r0, r4, #0
	adds r0, #0xab
	strb r6, [r0]
	movs r0, #8
	asrs r0, r7
	lsls r1, r0, #4
	orrs r0, r1
	ldrb r1, [r4, #4]
	orrs r0, r1
	strb r0, [r4, #4]
	adds r0, r5, #0
	bl sub_08077B98
	movs r0, #6
	strb r0, [r5, #4]
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08075898
	b _080754B4
	.align 2, 0
_080753D4: .4byte gPlayerEntity
_080753D8: .4byte 0x00017FFF
_080753DC:
	ldr r2, _080753F0 @ =gPlayerEntity
	ldr r0, [r2, #0x34]
	cmp r0, #0
	beq _080753F4
_080753E4:
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_080759B8
	b _080754B4
	.align 2, 0
_080753F0: .4byte gPlayerEntity
_080753F4:
	movs r6, #0x80
	lsls r6, r6, #0xb
	ands r6, r1
	cmp r6, #0
	beq _08075480
	adds r0, r4, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	bne _0807541E
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _080754B4
	bl DeleteEntity
	str r6, [r4, #0x2c]
	b _080754B4
_0807541E:
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08077D38
	adds r0, r5, #0
	bl sub_08077B98
	movs r3, #8
	adds r1, r3, #0
	asrs r1, r7
	lsls r0, r1, #4
	orrs r0, r1
	ldrb r2, [r4, #4]
	orrs r0, r2
	strb r0, [r4, #4]
	ldrb r2, [r4, #0xa]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #0xb]
	orrs r1, r0
	strb r1, [r4, #0xb]
	strb r3, [r5, #4]
	movs r0, #0x14
	strb r0, [r5, #7]
	movs r0, #6
	strb r0, [r5, #0xf]
	ldrb r1, [r5, #9]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #9]
	adds r1, r4, #0
	adds r1, #0xab
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r4, #0x30]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_08077DF4
	movs r0, #0x77
	bl SoundReq
	b _080754B4
_08075480:
	ldrb r1, [r4, #0x1b]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08075492
	strb r6, [r4, #0x1b]
	adds r0, r2, #0
	bl sub_0806F948
_08075492:
	ldr r1, [r4, #0x2c]
	cmp r1, #0
	beq _080754A6
	ldrb r0, [r1, #9]
	cmp r0, #1
	beq _080754A6
	adds r0, r1, #0
	bl DeleteEntity
	str r6, [r4, #0x2c]
_080754A6:
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08077D38
	adds r0, r5, #0
	bl sub_08077B98
_080754B4:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
