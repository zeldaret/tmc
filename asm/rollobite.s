	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08020638
sub_08020638: @ 0x08020638
	push {lr}
	ldr r1, _08020644 @ =gUnk_080CA66C
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_08020644: .4byte gUnk_080CA66C

	thumb_func_start sub_08020648
sub_08020648: @ 0x08020648
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08020AD0
	ldr r1, _08020664 @ =gUnk_080CA684
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_08020664: .4byte gUnk_080CA684

	thumb_func_start sub_08020668
sub_08020668: @ 0x08020668
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x3f
	ldrb r0, [r2]
	cmp r0, #0x22
	bne _080206A2
	adds r1, r4, #0
	adds r1, #0x45
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080206A2
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	movs r0, #0x23
	strb r0, [r2]
	ldrb r1, [r4, #0x14]
	adds r1, #8
	adds r0, r4, #0
	bl UpdateSprite
_080206A2:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x80
	beq _080206D0
	ldrb r0, [r4, #0xc]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080206D0
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0xb4
	strb r0, [r4, #0xe]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	adds r1, #0x10
	adds r0, r4, #0
	bl UpdateSprite
_080206D0:
	ldrb r0, [r5]
	cmp r0, #0x93
	bne _080206DC
	adds r0, r4, #0
	bl sub_08020648
_080206DC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080206E0
sub_080206E0: @ 0x080206E0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08020AD0
	cmp r0, #0
	beq _080206F6
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strb r0, [r1]
	b _08020730
_080206F6:
	adds r0, r4, #0
	bl sub_08020B6C
	cmp r0, #0
	beq _0802072A
	adds r1, r4, #0
	adds r1, #0x42
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	adds r5, r4, #0
	adds r5, #0x3e
	ldrb r1, [r5]
	adds r0, r4, #0
	movs r2, #0xa
	bl sub_080AE58C
	adds r0, r4, #0
	adds r0, #0x46
	ldrh r1, [r0]
	ldrb r2, [r5]
	adds r0, r4, #0
	movs r3, #0xa
	bl sub_080AE7E8
	b _08020730
_0802072A:
	adds r0, r4, #0
	bl sub_08001324
_08020730:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08020734
sub_08020734: @ 0x08020734
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	bhi _08020764
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	bne _08020764
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	adds r1, #0x10
	adds r0, r4, #0
	bl UpdateSprite
	b _08020774
_08020764:
	ldr r0, _08020778 @ =gUnk_080CA6A4
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08020774:
	pop {r4, pc}
	.align 2, 0
_08020778: .4byte gUnk_080CA6A4

	thumb_func_start sub_0802077C
sub_0802077C: @ 0x0802077C
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_08020788
sub_08020788: @ 0x08020788
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_08020790
sub_08020790: @ 0x08020790
	push {lr}
	bl sub_0806F3E4
	pop {pc}

	thumb_func_start sub_08020798
sub_08020798: @ 0x08020798
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_6
nullsub_6: @ 0x080207A4
	bx lr
	.align 2, 0

	thumb_func_start sub_080207A8
sub_080207A8: @ 0x080207A8
	push {lr}
	movs r3, #4
	movs r1, #4
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x80
	orrs r1, r2
	strb r1, [r0, #0x10]
	movs r1, #0x29
	adds r1, r1, r0
	mov ip, r1
	ldrb r2, [r1]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r3
	mov r2, ip
	strb r1, [r2]
	adds r3, r0, #0
	adds r3, #0x3a
	ldrb r2, [r3]
	movs r1, #0xfb
	ands r1, r2
	strb r1, [r3]
	ldrb r1, [r0, #0x15]
	movs r2, #0x10
	eors r1, r2
	strb r1, [r0, #0x15]
	movs r1, #0xc0
	lsls r1, r1, #9
	str r1, [r0, #0x20]
	movs r1, #0x80
	strh r1, [r0, #0x24]
	ldrb r1, [r0, #0x14]
	adds r1, #0x10
	bl UpdateSprite
	pop {pc}

	thumb_func_start sub_080207F4
sub_080207F4: @ 0x080207F4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r1, #0
	movs r0, #0x30
	strb r0, [r4, #0x16]
	movs r0, #0x12
	strb r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x84
	strb r1, [r0]
	bl Random
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08020A30
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08020820
sub_08020820: @ 0x08020820
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0802084A
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _0802084A
	strb r5, [r4, #0xe]
_0802084A:
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08020872
	movs r0, #0xef
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08020872
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
_08020872:
	pop {r4, r5, pc}

	thumb_func_start sub_08020874
sub_08020874: @ 0x08020874
	push {lr}
	ldr r2, _08020888 @ =gUnk_080CA6BC
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08020888: .4byte gUnk_080CA6BC

	thumb_func_start sub_0802088C
sub_0802088C: @ 0x0802088C
	movs r1, #1
	strb r1, [r0, #0xd]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	ldr r1, _080208B0 @ =gLinkEntity
	ldrb r1, [r1, #0x14]
	adds r2, r0, #0
	adds r2, #0x85
	strb r1, [r2]
	adds r0, #0x29
	ldrb r2, [r0]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_080208B0: .4byte gLinkEntity

	thumb_func_start sub_080208B4
sub_080208B4: @ 0x080208B4
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r4, r2, #0
	adds r4, #0x85
	ldrb r0, [r4]
	ldr r5, _080208EC @ =gLinkEntity
	ldrb r1, [r5, #0x14]
	subs r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	beq _080208E6
	ldrb r0, [r2, #0x14]
	adds r0, r0, r1
	movs r1, #3
	ands r0, r1
	strb r0, [r2, #0x14]
	ldrb r1, [r2, #0x14]
	adds r1, #0x10
	adds r0, r2, #0
	bl UpdateSprite
_080208E6:
	ldrb r0, [r5, #0x14]
	strb r0, [r4]
	pop {r4, r5, pc}
	.align 2, 0
_080208EC: .4byte gLinkEntity

	thumb_func_start sub_080208F0
sub_080208F0: @ 0x080208F0
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

	thumb_func_start sub_08020904
sub_08020904: @ 0x08020904
	push {lr}
	movs r1, #4
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x80
	orrs r1, r2
	strb r1, [r0, #0x10]
	movs r1, #0xff
	strb r1, [r0, #0x15]
	ldrb r1, [r0, #0x14]
	adds r1, #0x10
	bl UpdateSprite
	pop {pc}

	thumb_func_start sub_08020920
sub_08020920: @ 0x08020920
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08020936
	adds r0, r1, #0
	bl sub_08020A30
_08020936:
	pop {pc}

	thumb_func_start sub_08020938
sub_08020938: @ 0x08020938
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r5, #0x80
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08020950
	adds r0, r4, #0
	bl sub_08004274
_08020950:
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #0
	bne _08020980
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08020978
	movs r0, #5
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x14]
	adds r1, #0xc
	adds r0, r4, #0
	bl UpdateSprite
_08020978:
	adds r0, r4, #0
	bl sub_08078930
	b _0802099C
_08020980:
	cmp r0, #1
	bne _0802098C
	movs r0, #0x82
	lsls r0, r0, #1
	bl sub_08004488
_0802098C:
	ldrb r1, [r4, #0x15]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _0802099C
	adds r0, r4, #0
	bl sub_080AEFE0
_0802099C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080209A0
sub_080209A0: @ 0x080209A0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080209E2
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x22
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08020A30
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #3
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl UpdateSprite
	b _080209F0
_080209E2:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080209F0
	adds r0, r4, #0
	bl sub_08078930
_080209F0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080209F4
sub_080209F4: @ 0x080209F4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xe0
	lsls r1, r1, #5
	bl sub_08003FC4
	cmp r0, #0
	bne _08020A14
	movs r1, #7
	movs r0, #7
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
_08020A14:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	bne _08020A24
	adds r0, r4, #0
	bl sub_08004274
_08020A24:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08020A28
sub_08020A28: @ 0x08020A28
	push {lr}
	bl sub_08004274
	pop {pc}

	thumb_func_start sub_08020A30
sub_08020A30: @ 0x08020A30
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x84
	ldrb r0, [r5]
	cmp r0, #1
	bhi _08020A68
	bl Random
	ldr r2, _08020A64 @ =gUnk_080CA6CC
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #0xe]
	cmp r0, #0
	bne _08020A68
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	b _08020A7A
	.align 2, 0
_08020A64: .4byte gUnk_080CA6CC
_08020A68:
	movs r0, #0
	movs r1, #1
	strb r1, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x84
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08020A7C
_08020A7A:
	pop {r4, r5, pc}

	thumb_func_start sub_08020A7C
sub_08020A7C: @ 0x08020A7C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl Random
	ldrb r5, [r6, #0x15]
	ldr r4, _08020ACC @ =gUnk_080CA6D4
	movs r1, #3
	bl __modsi3
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r5, r0
	movs r4, #0x18
	ands r5, r4
	adds r0, r6, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08020ABA
	adds r0, r6, #0
	bl sub_08049EE4
	adds r0, #4
	ands r0, r4
	movs r1, #0x10
	eors r1, r5
	cmp r1, r0
	bne _08020ABA
	adds r5, r1, #0
_08020ABA:
	strb r5, [r6, #0x15]
	lsrs r0, r5, #3
	strb r0, [r6, #0x14]
	ldrb r1, [r6, #0x14]
	adds r0, r6, #0
	bl UpdateSprite
	pop {r4, r5, r6, pc}
	.align 2, 0
_08020ACC: .4byte gUnk_080CA6D4

	thumb_func_start sub_08020AD0
sub_08020AD0: @ 0x08020AD0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_08020B6C
	cmp r0, #0
	beq _08020B68
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08020B68
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r3, _08020B5C @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r5, r0, #4
	movs r2, #0x3f
	ands r5, r2
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r5, r0
	adds r6, r4, #0
	adds r6, #0x38
	ldrb r1, [r6]
	adds r0, r5, #0
	bl sub_080002B0
	lsls r0, r0, #0x10
	ldr r1, _08020B60 @ =0xFF8F0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08020B68
	movs r0, #6
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrh r2, [r4, #0x2e]
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	adds r0, #8
	strh r0, [r4, #0x2e]
	ldrh r0, [r4, #0x32]
	ands r1, r0
	adds r1, #0xd
	strh r1, [r4, #0x32]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	ldrb r1, [r4, #0x14]
	adds r1, #0x14
	adds r0, r4, #0
	bl UpdateSprite
	ldr r0, _08020B64 @ =0x00004034
	ldrb r2, [r6]
	adds r1, r5, #0
	bl UpdateCollisionLayer
	movs r0, #1
	b _08020B6A
	.align 2, 0
_08020B5C: .4byte gRoomControls
_08020B60: .4byte 0xFF8F0000
_08020B64: .4byte 0x00004034
_08020B68:
	movs r0, #0
_08020B6A:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08020B6C
sub_08020B6C: @ 0x08020B6C
	push {lr}
	adds r0, #0x58
	ldrb r0, [r0]
	subs r0, #0x10
	cmp r0, #3
	bls _08020B7C
	movs r0, #0
	b _08020B7E
_08020B7C:
	movs r0, #1
_08020B7E:
	pop {pc}
