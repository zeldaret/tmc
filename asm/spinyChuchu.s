	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08022414
sub_08022414: @ 0x08022414
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08022430 @ =gUnk_080CBA28
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_08022430: .4byte gUnk_080CBA28

	thumb_func_start sub_08022434
sub_08022434: @ 0x08022434
	push {lr}
	ldr r2, _08022448 @ =gUnk_080CBA40
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08022448: .4byte gUnk_080CBA40

	thumb_func_start sub_0802244C
sub_0802244C: @ 0x0802244C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x45
	ldrb r0, [r5]
	cmp r0, #0
	bne _0802245C
	b _08022582
_0802245C:
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0x65
	bne _08022522
	adds r0, #2
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	subs r0, #2
	cmp r0, #0x18
	bhi _08022540
	lsls r0, r0, #2
	ldr r1, _08022480 @ =_08022484
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08022480: .4byte _08022484
_08022484: @ jump table
	.4byte _080224E8 @ case 0
	.4byte _080224E8 @ case 1
	.4byte _08022540 @ case 2
	.4byte _08022540 @ case 3
	.4byte _08022540 @ case 4
	.4byte _08022540 @ case 5
	.4byte _08022508 @ case 6
	.4byte _08022508 @ case 7
	.4byte _08022508 @ case 8
	.4byte _08022508 @ case 9
	.4byte _08022508 @ case 10
	.4byte _08022540 @ case 11
	.4byte _08022540 @ case 12
	.4byte _08022540 @ case 13
	.4byte _08022540 @ case 14
	.4byte _08022540 @ case 15
	.4byte _08022540 @ case 16
	.4byte _08022540 @ case 17
	.4byte _08022540 @ case 18
	.4byte _08022540 @ case 19
	.4byte _08022508 @ case 20
	.4byte _08022540 @ case 21
	.4byte _08022508 @ case 22
	.4byte _08022508 @ case 23
	.4byte _08022508 @ case 24
_080224E8:
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xf]
	movs r0, #0x5c
	strb r0, [r6]
	ldr r0, _08022504 @ =gUnk_080FD468
	str r0, [r4, #0x48]
	adds r0, r4, #0
	movs r1, #0
	bl UpdateSprite
	b _08022540
	.align 2, 0
_08022504: .4byte gUnk_080FD468
_08022508:
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #0x5c
	strb r0, [r6]
	adds r0, r4, #0
	movs r1, #1
	bl UpdateSprite
	b _08022540
_08022522:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x94
	bne _08022540
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl UpdateSprite
_08022540:
	adds r0, r4, #0
	adds r0, #0x80
	adds r1, r4, #0
	adds r1, #0x45
	ldrb r2, [r0]
	adds r5, r1, #0
	adds r7, r0, #0
	ldrb r0, [r5]
	cmp r2, r0
	beq _08022566
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #0x5c
	strb r0, [r6]
	adds r0, r4, #0
	movs r1, #1
	bl UpdateSprite
	b _0802258E
_08022566:
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	bne _0802258E
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #3
	bl UpdateSprite
	movs r0, #0xca
	lsls r0, r0, #1
	bl sub_08004488
	b _0802258E
_08022582:
	adds r0, r4, #0
	movs r1, #1
	bl UpdateSprite
	adds r7, r4, #0
	adds r7, #0x80
_0802258E:
	ldrb r0, [r5]
	strb r0, [r7]
	ldr r1, _0802259C @ =gUnk_080CBA28
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0802259C: .4byte gUnk_080CBA28

	thumb_func_start sub_080225A0
sub_080225A0: @ 0x080225A0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #1
	bne _080225B2
	adds r0, r4, #0
	bl sub_08004274
_080225B2:
	adds r0, r4, #0
	bl sub_08001318
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080225BC
sub_080225BC: @ 0x080225BC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080225DE
	adds r0, r4, #0
	bl sub_0804A7D4
	b _080225E4
_080225DE:
	adds r0, r4, #0
	bl sub_08004274
_080225E4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_9
nullsub_9: @ 0x080225E8
	bx lr
	.align 2, 0

	thumb_func_start sub_080225EC
sub_080225EC: @ 0x080225EC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r0, #0x3b
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0x5a
	strb r0, [r1]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _0802261A
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl UpdateSprite
	b _0802264C
_0802261A:
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1b]
	ldr r0, _08022650 @ =0x0000FF80
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	movs r1, #6
	bl UpdateSprite
_0802264C:
	pop {r4, pc}
	.align 2, 0
_08022650: .4byte 0x0000FF80

	thumb_func_start sub_08022654
sub_08022654: @ 0x08022654
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	beq _0802268C
	cmp r0, #1
	bgt _08022668
	cmp r0, #0
	beq _0802266E
	b _080226E4
_08022668:
	cmp r0, #2
	beq _080226BE
	b _080226E4
_0802266E:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080226E4
	movs r0, #1
	strb r0, [r4, #0xd]
	ldr r0, _080226E8 @ =0x0000012D
	bl PlaySFX
	adds r0, r4, #0
	movs r1, #0
	bl UpdateSprite
_0802268C:
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080226E4
	movs r0, #2
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #5
	bl UpdateSprite
	movs r0, #0x7d
	bl sub_08004488
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
_080226BE:
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080226E4
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x65
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #2
	bl UpdateSprite
_080226E4:
	pop {r4, pc}
	.align 2, 0
_080226E8: .4byte 0x0000012D

	thumb_func_start sub_080226EC
sub_080226EC: @ 0x080226EC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08022776
	adds r0, r4, #0
	bl sub_080228CC
	cmp r0, #0
	beq _0802271A
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x65
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #2
	bl UpdateSprite
	b _0802277C
_0802271A:
	adds r0, r4, #0
	bl sub_080228F0
	cmp r0, #0
	beq _08022758
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0x90
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	ldr r0, _08022754 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x5a
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #4
	bl UpdateSprite
	b _0802277C
	.align 2, 0
_08022754: .4byte gUnk_020000B0
_08022758:
	ldrb r1, [r4, #0xe]
	adds r0, r1, #1
	strb r0, [r4, #0xe]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08022770
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
_08022770:
	adds r0, r4, #0
	bl sub_080AEF88
_08022776:
	adds r0, r4, #0
	bl sub_08004274
_0802277C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08022780
sub_08022780: @ 0x08022780
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080227AA
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #3
	bl UpdateSprite
	movs r0, #0xca
	lsls r0, r0, #1
	bl sub_08004488
_080227AA:
	pop {r4, pc}

	thumb_func_start sub_080227AC
sub_080227AC: @ 0x080227AC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080227CC
	ldr r0, _080227C8 @ =gUnk_080FD470
	b _080227CE
	.align 2, 0
_080227C8: .4byte gUnk_080FD470
_080227CC:
	ldr r0, _08022814 @ =gUnk_080FD468
_080227CE:
	str r0, [r4, #0x48]
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r3, #2
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080227EE
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x5c
	strb r0, [r1]
_080227EE:
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08022812
	strb r3, [r4, #0xc]
	bl Random
	ldr r2, _08022818 @ =gUnk_080CBA60
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0
	bl UpdateSprite
_08022812:
	pop {r4, pc}
	.align 2, 0
_08022814: .4byte gUnk_080FD468
_08022818: .4byte gUnk_080CBA60

	thumb_func_start sub_0802281C
sub_0802281C: @ 0x0802281C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08022852
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x20
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_0804AA1C
_08022852:
	pop {r4, pc}

	thumb_func_start sub_08022854
sub_08022854: @ 0x08022854
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08022898
	adds r0, r4, #0
	bl sub_080AEFE0
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08022898
	movs r0, #7
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x5c
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #5
	bl UpdateSprite
	movs r0, #0x7d
	bl sub_08004488
_08022898:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802289C
sub_0802289C: @ 0x0802289C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080228CA
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x20
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0x78
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl UpdateSprite
_080228CA:
	pop {r4, pc}

	thumb_func_start sub_080228CC
sub_080228CC: @ 0x080228CC
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xf]
	cmp r0, #0
	bne _080228E8
	adds r0, r1, #0
	movs r1, #1
	movs r2, #0x28
	bl sub_08049F64
	cmp r0, #0
	beq _080228EC
	movs r0, #1
	b _080228EE
_080228E8:
	subs r0, #1
	strb r0, [r1, #0xf]
_080228EC:
	movs r0, #0
_080228EE:
	pop {pc}

	thumb_func_start sub_080228F0
sub_080228F0: @ 0x080228F0
	push {lr}
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x81
	ldrb r0, [r2]
	cmp r0, #0
	bne _08022910
	adds r0, r1, #0
	movs r1, #1
	movs r2, #0x40
	bl sub_08049F64
	cmp r0, #0
	beq _08022914
	movs r0, #1
	b _08022916
_08022910:
	subs r0, #1
	strb r0, [r2]
_08022914:
	movs r0, #0
_08022916:
	pop {pc}
