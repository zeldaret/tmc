	thumb_func_start PlayerItemPacciCane
PlayerItemPacciCane: @ 0x080704BC
	push {lr}
	ldr r2, _080704D0 @ =gUnk_0811B9D8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080704D0: .4byte gUnk_0811B9D8

	thumb_func_start sub_080704D4
sub_080704D4: @ 0x080704D4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AE008
	movs r0, #0x87
	lsls r0, r0, #1
	bl SoundReq
	adds r0, r4, #0
	bl sub_080704FC
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080704FC
sub_080704FC: @ 0x080704FC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0807052C @ =gPlayerEntity
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r2, [r0]
	movs r0, #0x80
	ands r0, r2
	ldr r1, _08070530 @ =gPlayerState
	cmp r0, #0
	bne _08070518
	ldr r0, [r1, #0x2c]
	cmp r4, r0
	beq _08070534
_08070518:
	ldr r0, [r1, #0x2c]
	cmp r4, r0
	bne _08070522
	movs r0, #0
	str r0, [r1, #0x2c]
_08070522:
	adds r0, r4, #0
	bl DeleteEntity
	b _08070566
	.align 2, 0
_0807052C: .4byte gPlayerEntity
_08070530: .4byte gPlayerState
_08070534:
	movs r0, #0xf
	ands r0, r2
	cmp r0, #0xf
	beq _08070562
	ldrb r1, [r5, #0x1e]
	adds r0, #0x91
	subs r0, r1, r0
	ldrb r2, [r4, #0x1e]
	cmp r0, r2
	beq _08070558
	adds r0, r1, #0
	adds r0, #0x6f
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x1e]
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
_08070558:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08078E84
	b _08070566
_08070562:
	movs r0, #0xff
	strb r0, [r4, #0x1e]
_08070566:
	ldr r2, _08070580 @ =gPlayerEntity
	ldrb r1, [r2, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08070584
	ldrb r0, [r2, #0x18]
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x1f
	movs r0, #1
	eors r2, r0
	b _0807058A
	.align 2, 0
_08070580: .4byte gPlayerEntity
_08070584:
	ldrb r0, [r2, #0x18]
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x1f
_0807058A:
	lsls r2, r2, #6
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	pop {r4, r5, pc}
	.align 2, 0
