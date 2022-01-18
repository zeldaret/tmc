	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _080A75AC
	ldr r1, _080A7654 @ =gPlayerState
	ldrb r0, [r1, #4]
	cmp r0, #0
	bne _080A75AC
	ldrb r1, [r1, #2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080A75AC
	bl DeleteThisEntity
_080A75AC:
	adds r0, r5, #0
	bl AllocMutableHitbox
	cmp r0, #0
	bne _080A75BA
	bl DeleteThisEntity
_080A75BA:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #3
	bl LoadSwapGFX
	ldr r1, _080A7658 @ =gPlayerEntity
	adds r0, r1, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	adds r0, #1
	movs r2, #0x20
	adds r3, r5, #0
	adds r3, #0x3c
	movs r4, #0
	orrs r0, r2
	strb r0, [r3]
	adds r1, #0x3b
	ldrb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x3b
	strb r0, [r1]
	ldrb r1, [r5, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r5, #0x11]
	adds r0, r5, #0
	adds r0, #0x41
	strb r4, [r0]
	subs r0, #4
	strb r4, [r0]
	adds r0, #5
	strb r4, [r0]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0xff
	strb r0, [r5, #0x1e]
	adds r0, r5, #0
	bl sub_0801766C
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _080A76BC
	ldr r2, _080A7654 @ =gPlayerState
	ldrb r1, [r2, #2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080A767A
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	movs r0, #2
	strb r0, [r5, #0xb]
	adds r0, r2, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1d
	adds r0, #8
	adds r1, r5, #0
	adds r1, #0x44
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #1
	beq _080A765C
	cmp r0, #6
	bne _080A7664
	subs r1, #4
	movs r0, #0x1a
	b _080A766A
	.align 2, 0
_080A7654: .4byte gPlayerState
_080A7658: .4byte gPlayerEntity
_080A765C:
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0x18
	b _080A766A
_080A7664:
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0x19
_080A766A:
	strb r0, [r1]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	bl sub_080A7824
	b _080A7692
_080A767A:
	adds r0, r2, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1d
	adds r0, #4
	adds r1, r5, #0
	adds r1, #0x44
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_080A76CC
_080A7692:
	ldr r0, _080A76B0 @ =gPlayerState
	str r5, [r0, #0x2c]
	adds r0, r5, #0
	bl sub_08079BD8
	ldr r4, _080A76B4 @ =gUnk_0812906C
	ldr r0, _080A76B8 @ =gUnk_08129068
	bl GetRandomByWeight
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	bl SoundReq
	b _080A76C2
	.align 2, 0
_080A76B0: .4byte gPlayerState
_080A76B4: .4byte gUnk_0812906C
_080A76B8: .4byte gUnk_08129068
_080A76BC:
	adds r0, r5, #0
	bl sub_080A76CC
_080A76C2:
	movs r0, #0x87
	lsls r0, r0, #1
	bl SoundReq
	pop {r4, r5, pc}
	.syntax divided
