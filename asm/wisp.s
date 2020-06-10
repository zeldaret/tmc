	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0803353C
sub_0803353C: @ 0x0803353C
	push {lr}
	ldr r1, _08033548 @ =gUnk_080CEB74
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_08033548: .4byte gUnk_080CEB74

	thumb_func_start sub_0803354C
sub_0803354C: @ 0x0803354C
	push {lr}
	ldr r2, _08033560 @ =gUnk_080CEB8C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08033560: .4byte gUnk_080CEB8C

	thumb_func_start sub_08033564
sub_08033564: @ 0x08033564
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08033628
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0xe
	beq _080335E4
	cmp r0, #0xe
	bgt _08033586
	cmp r0, #0
	beq _08033590
	b _08033628
_08033586:
	cmp r0, #0x14
	beq _080335EE
	cmp r0, #0x15
	beq _080335E4
	b _08033628
_08033590:
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x7c
	movs r0, #0x9f
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r2, _080335DC @ =gLinkState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r2, #0x30]
	ldr r1, _080335E0 @ =gUnk_02002A40
	ldrb r2, [r4, #0xa]
	adds r0, r2, #1
	adds r3, r1, #0
	adds r3, #0xba
	strb r0, [r3]
	adds r1, #0xc8
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r1]
	lsls r2, r2, #0x18
	cmp r2, #0
	beq _08033628
	bl sub_0805E780
	b _08033628
	.align 2, 0
_080335DC: .4byte gLinkState
_080335E0: .4byte gUnk_02002A40
_080335E4:
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0
	strb r0, [r1]
	b _08033628
_080335EE:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	movs r1, #0
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x3d
	strb r1, [r0]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _08033624
	str r1, [r4, #0x54]
	movs r0, #0xe
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl CopyPosition
_08033624:
	bl sub_0805E780
_08033628:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803362C
sub_0803362C: @ 0x0803362C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	beq _08033648
	ldr r0, _0803364C @ =gUnk_080CEB98
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08033648:
	pop {r4, pc}
	.align 2, 0
_0803364C: .4byte gUnk_080CEB98

	thumb_func_start sub_08033650
sub_08033650: @ 0x08033650
	movs r1, #2
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start sub_08033658
sub_08033658: @ 0x08033658
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_08033660
sub_08033660: @ 0x08033660
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _08033672
	adds r0, r4, #0
	bl sub_0804A7D4
_08033672:
	pop {r4, pc}

	thumb_func_start sub_08033674
sub_08033674: @ 0x08033674
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #0
	strb r0, [r4, #0xe]
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r4, #0x1c]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x80
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x82
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08033744
	ldrb r1, [r4, #0xb]
	adds r0, r4, #0
	bl UpdateSprite
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080336A8
sub_080336A8: @ 0x080336A8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080336C0
	adds r0, r4, #0
	bl sub_08033744
	b _080336CE
_080336C0:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _080336CE
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800417E
_080336CE:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_080336DC
sub_080336DC: @ 0x080336DC
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xc
	beq _0803371E
	cmp r0, #0xc
	bgt _080336FC
	cmp r0, #0
	beq _0803372E
	b _08033740
_080336FC:
	cmp r0, #0x18
	beq _08033716
	cmp r0, #0x24
	bne _08033740
	adds r0, r2, #0
	adds r0, #0x80
	ldrh r0, [r0]
	strh r0, [r2, #0x2e]
	adds r0, r2, #0
	adds r0, #0x82
	ldrh r0, [r0]
	strh r0, [r2, #0x32]
	b _08033740
_08033716:
	adds r0, r2, #0
	bl sub_080A29BC
	b _08033740
_0803371E:
	ldrb r0, [r2, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r2, #0x18]
	b _08033740
_0803372E:
	movs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	adds r0, r2, #0
	bl sub_08033744
_08033740:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08033744
sub_08033744: @ 0x08033744
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl Random
	adds r5, r0, #0
	movs r0, #0xff
	ands r5, r0
	ldr r1, _0803378C @ =gUnk_080CEBA4
	movs r0, #0x70
	ands r0, r5
	lsrs r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r6, #0xe]
	movs r0, #0xc
	ands r0, r5
	lsls r4, r0, #1
	adds r0, r6, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08033796
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	beq _08033796
	adds r0, r6, #0
	bl sub_08049EE4
	adds r4, r0, #0
	movs r0, #0x80
	ands r5, r0
	cmp r5, #0
	beq _08033790
	adds r4, #4
	b _08033792
	.align 2, 0
_0803378C: .4byte gUnk_080CEBA4
_08033790:
	adds r4, #0x1c
_08033792:
	movs r0, #0x18
	ands r4, r0
_08033796:
	strb r4, [r6, #0x15]
	pop {r4, r5, r6, pc}
	.align 2, 0
