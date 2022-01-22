	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start ObjectOnSpinyBeetle
ObjectOnSpinyBeetle: @ 0x08098544
	push {lr}
	ldr r2, _08098558 @ =gUnk_0812350C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08098558: .4byte gUnk_0812350C

	thumb_func_start sub_0809855C
sub_0809855C: @ 0x0809855C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r3, #0
	movs r5, #1
	strb r5, [r4, #0xc]
	ldrb r0, [r4, #0x10]
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r4, #0x10]
	movs r0, #0x29
	adds r0, r0, r4
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	ldrb r1, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x19]
	strb r3, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x6e
	strb r0, [r1]
	subs r1, #4
	movs r0, #0x86
	strb r0, [r1]
	strb r3, [r4, #0x16]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080985AC
	movs r0, #2
	strb r0, [r4, #0x1c]
	b _080985AE
_080985AC:
	strb r5, [r4, #0x1c]
_080985AE:
	ldr r1, [r4, #0x50]
	adds r0, r4, #0
	bl SortEntityBelow
	adds r0, r4, #0
	bl sub_08098918
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080985C0
sub_080985C0: @ 0x080985C0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080989E4
	cmp r0, #0
	bne _080985CE
	b _080986FC
_080985CE:
	ldrb r0, [r0, #0xc]
	cmp r0, #4
	bls _080985D6
	b _080986E6
_080985D6:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080985E6
	b _080986EE
_080985E6:
	movs r0, #0x3f
	ands r0, r1
	subs r0, #4
	cmp r0, #0x1c
	bls _080985F2
	b _08098702
_080985F2:
	lsls r0, r0, #2
	ldr r1, _080985FC @ =_08098600
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080985FC: .4byte _08098600
_08098600: @ jump table
	.4byte _080986C4 @ case 0
	.4byte _080986C4 @ case 1
	.4byte _080986C4 @ case 2
	.4byte _08098702 @ case 3
	.4byte _080986C4 @ case 4
	.4byte _080986C4 @ case 5
	.4byte _080986C4 @ case 6
	.4byte _080986C4 @ case 7
	.4byte _080986C4 @ case 8
	.4byte _080986C4 @ case 9
	.4byte _08098702 @ case 10
	.4byte _0809867E @ case 11
	.4byte _080986C4 @ case 12
	.4byte _080986C4 @ case 13
	.4byte _080986C4 @ case 14
	.4byte _08098674 @ case 15
	.4byte _080986E0 @ case 16
	.4byte _08098702 @ case 17
	.4byte _080986E0 @ case 18
	.4byte _08098702 @ case 19
	.4byte _080986C4 @ case 20
	.4byte _080986C4 @ case 21
	.4byte _080986C4 @ case 22
	.4byte _08098702 @ case 23
	.4byte _08098702 @ case 24
	.4byte _0809867E @ case 25
	.4byte _08098702 @ case 26
	.4byte _08098702 @ case 27
	.4byte _080986E0 @ case 28
_08098674:
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	b _08098702
_0809867E:
	movs r2, #0
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0xa8
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x63
	strb r2, [r0]
	ldrb r1, [r4, #0x18]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r3]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldr r0, [r4, #0x50]
	str r2, [r0, #0x54]
	adds r0, r4, #0
	bl sub_080988E8
	b _08098702
_080986C4:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080986E6
	ldr r0, _080986DC @ =gPlayerState
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08098702
	b _080986E6
	.align 2, 0
_080986DC: .4byte gPlayerState
_080986E0:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08098702
_080986E6:
	adds r0, r4, #0
	bl sub_080989C0
	b _08098702
_080986EE:
	adds r0, r4, #0
	bl sub_08098918
	adds r0, r4, #0
	bl sub_08078930
	b _08098702
_080986FC:
	adds r0, r4, #0
	bl sub_080989C0
_08098702:
	pop {r4, pc}

	thumb_func_start sub_08098704
sub_08098704: @ 0x08098704
	push {lr}
	ldr r2, _08098718 @ =gUnk_08123524
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08098718: .4byte gUnk_08123524

	thumb_func_start sub_0809871C
sub_0809871C: @ 0x0809871C
	adds r3, r0, #0
	ldrb r1, [r3, #0x10]
	movs r0, #0x80
	movs r2, #0
	orrs r0, r1
	strb r0, [r3, #0x10]
	adds r1, r3, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	adds r1, #3
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08098754 @ =gPlayerEntity
	adds r0, #0x3b
	ldrb r0, [r0]
	subs r1, #4
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x63
	strb r2, [r0]
	ldr r0, [r3, #0x50]
	str r2, [r0, #0x54]
	ldrb r0, [r3, #0xd]
	adds r0, #1
	strb r0, [r3, #0xd]
	bx lr
	.align 2, 0
_08098754: .4byte gPlayerEntity

	thumb_func_start nullsub_533
nullsub_533: @ 0x08098758
	bx lr
	.align 2, 0

	thumb_func_start sub_0809875C
sub_0809875C: @ 0x0809875C
	adds r0, #0x29
	ldrb r2, [r0]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #0x18
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08098770
sub_08098770: @ 0x08098770
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080043E8
	cmp r0, #2
	beq _0809878C
	cmp r0, #2
	bhi _08098786
	cmp r0, #1
	beq _08098792
	b _080987A4
_08098786:
	cmp r0, #3
	beq _08098798
	b _080987A4
_0809878C:
	adds r0, r4, #0
	movs r1, #0xb
	b _0809879C
_08098792:
	adds r0, r4, #0
	movs r1, #0
	b _0809879C
_08098798:
	adds r0, r4, #0
	movs r1, #0xc
_0809879C:
	movs r2, #0
	bl CreateFx
	b _080987AC
_080987A4:
	adds r0, r4, #0
	bl sub_080989C0
	b _080987B0
_080987AC:
	bl DeleteThisEntity
_080987B0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080987B4
sub_080987B4: @ 0x080987B4
	push {lr}
	bl DeleteThisEntity
	pop {pc}

	thumb_func_start sub_080987BC
sub_080987BC: @ 0x080987BC
	push {lr}
	adds r1, r0, #0
	ldr r0, _080987D0 @ =gPlayerState
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _080987CE
	adds r0, r1, #0
	bl sub_080987D4
_080987CE:
	pop {pc}
	.align 2, 0
_080987D0: .4byte gPlayerState

	thumb_func_start sub_080987D4
sub_080987D4: @ 0x080987D4
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #0xc]
	strb r2, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start sub_080987E0
sub_080987E0: @ 0x080987E0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0809880C @ =gUnk_08123540
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bhi _0809880A
	adds r0, r4, #0
	bl sub_080989E4
	cmp r0, #0
	bne _0809880A
	adds r0, r4, #0
	bl sub_080989C0
_0809880A:
	pop {r4, pc}
	.align 2, 0
_0809880C: .4byte gUnk_08123540

	thumb_func_start sub_08098810
sub_08098810: @ 0x08098810
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x30
	strb r1, [r0, #0x1d]
	strb r2, [r0, #0xe]
	bx lr
	.align 2, 0

	thumb_func_start sub_08098820
sub_08098820: @ 0x08098820
	push {lr}
	adds r2, r0, #0
	ldr r0, _0809884C @ =gPlayerState
	ldrb r1, [r0, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _0809883E
	adds r0, r2, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x13
	beq _08098850
_0809883E:
	adds r1, r2, #0
	adds r1, #0x62
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	strb r0, [r2, #0xc]
	b _08098856
	.align 2, 0
_0809884C: .4byte gPlayerState
_08098850:
	adds r0, r2, #0
	bl sub_0806F4E8
_08098856:
	pop {pc}

	thumb_func_start sub_08098858
sub_08098858: @ 0x08098858
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xe]
	cmp r1, #0
	bne _08098878
	movs r0, #1
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x62
	strb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x63
	movs r0, #0xfe
	strb r0, [r2]
	ldr r0, [r4, #0x50]
	str r1, [r0, #0x54]
_08098878:
	ldr r0, _0809889C @ =gPlayerState
	ldrb r1, [r0, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _08098892
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x13
	beq _080988A0
_08098892:
	adds r0, r4, #0
	bl sub_080989C0
	b _080988B4
	.align 2, 0
_0809889C: .4byte gPlayerState
_080988A0:
	adds r0, r4, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _080988B4
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080988B4
	bl DeleteThisEntity
_080988B4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080988B8
sub_080988B8: @ 0x080988B8
	push {lr}
	adds r2, r0, #0
	ldr r0, _080988CC @ =gPlayerState
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	bne _080988D0
	adds r0, r2, #0
	bl sub_080989C0
	b _080988D8
	.align 2, 0
_080988CC: .4byte gPlayerState
_080988D0:
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
_080988D8:
	pop {pc}
	.align 2, 0

	thumb_func_start nullsub_123
nullsub_123: @ 0x080988DC
	bx lr
	.align 2, 0

	thumb_func_start sub_080988E0
sub_080988E0: @ 0x080988E0
	push {lr}
	bl sub_080989C0
	pop {pc}

	thumb_func_start sub_080988E8
sub_080988E8: @ 0x080988E8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bge _080988FA
	ldrb r0, [r4, #0x18]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x18]
_080988FA:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl GravityUpdate
	cmp r0, #0
	bne _0809890E
	adds r0, r4, #0
	bl sub_080989C0
_0809890E:
	pop {r4, pc}

	thumb_func_start sub_08098910
sub_08098910: @ 0x08098910
	push {lr}
	bl sub_080989C0
	pop {pc}

	thumb_func_start sub_08098918
sub_08098918: @ 0x08098918
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_080989E4
	adds r6, r0, #0
	cmp r6, #0
	bne _0809892E
	adds r0, r4, #0
	bl sub_080989C0
	b _080989BC
_0809892E:
	adds r0, r6, #0
	adds r1, r4, #0
	bl CopyPosition
	ldrb r1, [r6, #0x10]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _08098990
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _08098968
	adds r0, #1
	strb r0, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r4, #0x50]
	adds r0, r4, #0
	bl SortEntityBelow
_08098968:
	ldr r2, _0809898C @ =gUnk_08123558
	adds r0, r6, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #8
	movs r1, #0
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	adds r0, #0x63
	strb r1, [r0]
	b _080989BC
	.align 2, 0
_0809898C: .4byte gUnk_08123558
_08098990:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _080989B2
	strb r5, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r4, #0x50]
	adds r0, r4, #0
	bl SortEntityBelow
_080989B2:
	strh r5, [r4, #0x36]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #3
	strb r0, [r1]
_080989BC:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080989C0
sub_080989C0: @ 0x080989C0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080989E4
	cmp r0, #0
	beq _080989D2
	ldr r1, [r4, #0x50]
	movs r0, #0
	str r0, [r1, #0x54]
_080989D2:
	ldrb r1, [r4, #0xa]
	adds r1, #3
	adds r0, r4, #0
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
	pop {r4, pc}

	thumb_func_start sub_080989E4
sub_080989E4: @ 0x080989E4
	push {lr}
	ldr r1, [r0, #0x50]
	cmp r1, #0
	beq _080989F4
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _080989F4
	movs r1, #0
_080989F4:
	adds r0, r1, #0
	pop {pc}
