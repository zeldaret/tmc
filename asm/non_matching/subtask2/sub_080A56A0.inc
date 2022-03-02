	.syntax unified
	push {r4, lr}
	bl sub_080A51F4
	cmp r0, #0
	bne _080A56AC
	b _080A57F0
_080A56AC:
	ldr r2, _080A56D0 @ =gMenu
	ldr r0, _080A56D4 @ =gUnk_08128C00
	str r0, [r2, #0xc]
	ldrb r0, [r2, #3]
	lsls r0, r0, #3
	ldr r1, _080A56D8 @ =gUnk_08128C14
	adds r4, r0, r1
	movs r3, #0xff
	ldr r0, _080A56DC @ =gInput
	ldrh r1, [r0, #4]
	cmp r1, #0x20
	beq _080A56F2
	cmp r1, #0x20
	bgt _080A56E0
	cmp r1, #0x10
	beq _080A56F6
	b _080A56F8
	.align 2, 0
_080A56D0: .4byte gMenu
_080A56D4: .4byte gUnk_08128C00
_080A56D8: .4byte gUnk_08128C14
_080A56DC: .4byte gInput
_080A56E0:
	cmp r1, #0x40
	beq _080A56EA
	cmp r1, #0x80
	beq _080A56EE
	b _080A56F8
_080A56EA:
	ldrb r3, [r4]
	b _080A56F8
_080A56EE:
	ldrb r3, [r4, #1]
	b _080A56F8
_080A56F2:
	ldrb r3, [r4, #2]
	b _080A56F8
_080A56F6:
	ldrb r3, [r4, #3]
_080A56F8:
	cmp r3, #0xff
	beq _080A570C
	ldr r0, _080A5708 @ =gMenu
	strb r3, [r0, #3]
	movs r0, #0x69
	bl SoundReq
	b _080A575E
	.align 2, 0
_080A5708: .4byte gMenu
_080A570C:
	ldrh r0, [r0, #2]
	cmp r0, #1
	bne _080A575E
	ldrb r3, [r2, #3]
	.ifdef DEMO_USA
	movs r4, #0
	.else
	.ifdef DEMO_JP
	movs r4, #0
	.else
	movs r1, #0
	.endif
	.endif
	cmp r3, #2
	beq _080A572E
	cmp r3, #2
	bhi _080A5724
	cmp r3, #0
	beq _080A572E
	b _080A574E
_080A5724:
	cmp r3, #4
	beq _080A5748
	cmp r3, #5
	beq _080A574C
	b _080A574E
_080A572E:
	ldr r0, _080A5744 @ =gMenu
	adds r0, #0x10
	adds r0, r3, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A574E
	.ifdef DEMO_USA
	movs r4, #8
	.else
	.ifdef DEMO_JP
	movs r4, #8
	.else
	movs r1, #8
	.endif
	.endif
	cmp r3, #0
	bne _080A574E
	.ifdef DEMO_USA
	movs r4, #7
	.else
	.ifdef DEMO_JP
	movs r4, #7
	.else
	movs r1, #7
	.endif
	.endif
	b _080A5752
	.align 2, 0
_080A5744: .4byte gMenu
_080A5748:
.ifdef DEMO_USA
	movs r0, #0x6d
	bl SoundReq
	b _080A574E
_080A574C:
	movs r0, #0x6d
	bl SoundReq
.else
.ifdef DEMO_JP
	movs r0, #0x6d
	bl SoundReq
	b _080A574E
_080A574C:
	movs r0, #0x6d
	bl SoundReq
.else
	movs r1, #9
	b _080A5752
_080A574C:
	movs r1, #0xa
.endif
.endif
_080A574E:
	.ifdef DEMO_USA
	cmp r4, #0
	.else
	.ifdef DEMO_JP
	cmp r4, #0
	.else
	cmp r1, #0
	.endif
	.endif
	beq _080A575E
_080A5752:
	.ifdef DEMO_USA
	adds r0, r4, #0
	.else
	.ifdef DEMO_JP
	adds r0, r4, #0
	.else
	adds r0, r1, #0
	.endif
	.endif
	bl sub_080A4E84
	movs r0, #0x6a
	bl SoundReq
_080A575E:
	ldr r0, _080A5780 @ =gMenu
	ldrb r1, [r0, #3]
	adds r2, r0, #0
	cmp r1, #0
	beq _080A576C
	cmp r1, #2
	bne _080A5788
_080A576C:
	adds r0, r2, #0
	adds r0, #0x10
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A5788
	ldr r1, _080A5784 @ =gUnk_0200AF00
	movs r0, #0x10
	b _080A578C
	.align 2, 0
_080A5780: .4byte gMenu
_080A5784: .4byte gUnk_0200AF00
_080A5788:
	ldr r1, _080A57AC @ =gUnk_0200AF00
	ldr r0, _080A57B0 @ =0x0000FFF0
_080A578C:
	strh r0, [r1, #0x1c]
	ldrb r3, [r2, #3]
	adds r0, r2, #0
	adds r0, #0x10
	adds r0, r3, r0
	ldrb r2, [r0]
	cmp r2, #0
	beq _080A57E6
	cmp r3, #5
	bhi _080A57E6
	lsls r0, r3, #2
	ldr r1, _080A57B4 @ =_080A57B8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A57AC: .4byte gUnk_0200AF00
_080A57B0: .4byte 0x0000FFF0
_080A57B4: .4byte _080A57B8
_080A57B8: @ jump table
	.4byte _080A57D0 @ case 0
	.4byte _080A57D8 @ case 1
	.4byte _080A57DC @ case 2
	.4byte _080A57E6 @ case 3
	.4byte _080A57E0 @ case 4
	.4byte _080A57E4 @ case 5
_080A57D0:
	cmp r2, #0x3d
	beq _080A57E6
	movs r2, #0x67
	b _080A57E6
_080A57D8:
	movs r2, #0x63
	b _080A57E6
_080A57DC:
	movs r2, #0x70
	b _080A57E6
_080A57E0:
	movs r2, #0x74
	b _080A57E6
_080A57E4:
	movs r2, #0x73
_080A57E6:
	movs r0, #0x80
	lsls r0, r0, #3
	adds r0, r2, r0
	bl sub_080A6F6C
_080A57F0:
	pop {r4, pc}
	.align 2, 0
	.syntax divided
