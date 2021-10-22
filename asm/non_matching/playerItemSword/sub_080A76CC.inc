	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080A76D8
	b _080A77DC
_080A76D8:
	ldr r5, _080A771C @ =gPlayerState
	ldr r0, [r5, #0x2c]
	cmp r0, r4
	beq _080A76E4
	bl DeleteThisEntity
_080A76E4:
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _080A76F2
	str r0, [r5, #0x2c]
	strb r0, [r5, #0x1b]
	bl DeleteThisEntity
_080A76F2:
	ldrb r2, [r5, #0x1b]
	cmp r2, #0
	beq _080A7744
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0xd
	strb r0, [r1]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _080A7728
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #1
	beq _080A7720
	cmp r0, #6
	bne _080A7724
	movs r0, #0xa
	b _080A7726
	.align 2, 0
_080A771C: .4byte gPlayerState
_080A7720:
	movs r0, #8
	b _080A7726
_080A7724:
	movs r0, #9
_080A7726:
	strb r0, [r1]
_080A7728:
	ldr r0, _080A7740 @ =gPlayerEntity
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080A77C4
	movs r0, #0x8b
	lsls r0, r0, #1
	bl SoundReq
	b _080A77C4
	.align 2, 0
_080A7740: .4byte gPlayerEntity
_080A7744:
	ldr r0, [r5, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	beq _080A776A
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #6
	bne _080A7762
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0xc
	b _080A7768
_080A7762:
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0xb
_080A7768:
	strb r0, [r1]
_080A776A:
	ldr r0, _080A77D0 @ =gPlayerState
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r2, #3
	ands r2, r0
	cmp r2, #0
	beq _080A77C4
	ldr r0, _080A77D4 @ =gPlayerEntity
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A77C4
	movs r1, #0x12
	cmp r2, #1
	bne _080A778E
	movs r1, #0x14
_080A778E:
	adds r0, r4, #0
	movs r2, #0
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _080A77C4
	ldrb r1, [r4, #0x1e]
	lsls r1, r1, #1
	ldr r0, _080A77D8 @ =gUnk_081292E2
	adds r1, r1, r0
	movs r0, #1
	ldrsb r0, [r1, r0]
	ldrh r3, [r4, #0x32]
	adds r0, r0, r3
	strh r0, [r2, #0x32]
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _080A77BE
	rsbs r1, r1, #0
_080A77BE:
	ldrh r0, [r4, #0x2e]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
_080A77C4:
	ldr r1, _080A77D4 @ =gPlayerEntity
	adds r0, r4, #0
	bl sub_080A78B8
	b _080A7806
	.align 2, 0
_080A77D0: .4byte gPlayerState
_080A77D4: .4byte gPlayerEntity
_080A77D8: .4byte gUnk_081292E2
_080A77DC:
	ldr r1, _080A7810 @ =gPlayerState
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _080A7814
	ldr r0, [r1, #0x2c]
	adds r2, r0, #0
	adds r2, #0x40
	ldrb r0, [r2]
	cmp r0, #0
	beq _080A7814
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r2]
	adds r0, r4, #0
	adds r0, #0x40
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_080A7A54
_080A7806:
	adds r0, r4, #0
	bl sub_080A7A84
	b _080A7820
	.align 2, 0
_080A7810: .4byte gPlayerState
_080A7814:
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
_080A7820:
	pop {r4, r5, pc}
	.align 2, 0
	.syntax divided
