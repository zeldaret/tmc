	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Rope
Rope: @ 0x08031374
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08031390 @ =gUnk_080CE448
	bl EnemyFunctionHandler
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl SetChildOffset
	pop {r4, pc}
	.align 2, 0
_08031390: .4byte gUnk_080CE448

	thumb_func_start sub_08031394
sub_08031394: @ 0x08031394
	push {lr}
	ldr r2, _080313A8 @ =gUnk_080CE460
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080313A8: .4byte gUnk_080CE460

	thumb_func_start sub_080313AC
sub_080313AC: @ 0x080313AC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	bne _080313C8
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x78
	movs r0, #0x3c
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08031600
_080313C8:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _080313DA
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_080313DA:
	ldr r1, _080313E4 @ =gUnk_080CE448
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_080313E4: .4byte gUnk_080CE448

	thumb_func_start sub_080313E8
sub_080313E8: @ 0x080313E8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	beq _08031404
	ldr r0, _08031408 @ =gUnk_080CE470
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08031404:
	pop {r4, pc}
	.align 2, 0
_08031408: .4byte gUnk_080CE470

	thumb_func_start sub_0803140C
sub_0803140C: @ 0x0803140C
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_08031418
sub_08031418: @ 0x08031418
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_08031420
sub_08031420: @ 0x08031420
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _08031432
	adds r0, r4, #0
	bl sub_0804A7D4
_08031432:
	pop {r4, pc}

	thumb_func_start sub_08031434
sub_08031434: @ 0x08031434
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	rsbs r0, r0, #0
	adds r3, r0, #0
	movs r0, #0xff
	strb r0, [r4, #0x14]
	movs r2, #1
	strb r2, [r4, #0x1c]
	ldrh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x7a
	strh r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08031460
	adds r0, r4, #0
	bl sub_08031600
	b _0803147A
_08031460:
	strb r2, [r4, #0xc]
	movs r0, #0
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	ldr r0, _0803147C @ =0x0000FF80
	strh r0, [r4, #0x36]
	ldrb r0, [r4, #0x1e]
	orrs r0, r3
	strb r0, [r4, #0x1e]
_0803147A:
	pop {r4, pc}
	.align 2, 0
_0803147C: .4byte 0x0000FF80

	thumb_func_start sub_08031480
sub_08031480: @ 0x08031480
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080314CC
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08031496
	subs r0, #1
	strb r0, [r4, #0xe]
	b _080314FA
_08031496:
	adds r0, r4, #0
	bl sub_08031600
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
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
	ldr r0, _080314C8 @ =0x0000012D
	bl SoundReq
	b _080314FA
	.align 2, 0
_080314C8: .4byte 0x0000012D
_080314CC:
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080314FA
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0xf
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0x18]
	subs r0, #0x13
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	movs r0, #0x84
	bl EnqueueSFX
_080314FA:
	pop {r4, pc}

	thumb_func_start sub_080314FC
sub_080314FC: @ 0x080314FC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl GetNextFrame
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08031510
	subs r0, #1
	strb r0, [r4, #0xf]
	b _080315BA
_08031510:
	adds r5, r4, #0
	adds r5, #0x78
	ldrb r0, [r5]
	cmp r0, #0
	beq _0803151E
	subs r0, #1
	strb r0, [r5]
_0803151E:
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _08031578
	ldrb r0, [r5]
	cmp r0, #0
	bne _080315A2
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _080315A2
	ldr r0, _08031574 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0xc
	bl sub_0804A044
	adds r1, r0, #0
	cmp r1, #0xff
	beq _080315A2
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #0xd0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r2, r4, #0
	adds r2, #0x7a
	strh r0, [r2]
	strb r1, [r4, #0x15]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x1b
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl InitializeAnimation
	b _080315BA
	.align 2, 0
_08031574: .4byte gUnk_020000B0
_08031578:
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080315A2
	adds r0, r4, #0
	bl sub_08049EE4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r1, r0, #3
	ldrb r0, [r4, #0x14]
	cmp r1, r0
	beq _080315A2
	strb r1, [r4, #0x14]
	adds r0, r4, #0
	bl InitializeAnimation
_080315A2:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080315B4
	adds r0, r4, #0
	bl sub_08031600
_080315B4:
	adds r0, r4, #0
	bl sub_0803163C
_080315BA:
	pop {r4, r5, pc}

	thumb_func_start sub_080315BC
sub_080315BC: @ 0x080315BC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080315D4
	subs r0, #1
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #2
	bl UpdateAnimationVariableFrames
	b _080315FC
_080315D4:
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _080315EE
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_0803163C
	cmp r0, #0
	bne _080315FC
_080315EE:
	adds r1, r4, #0
	adds r1, #0x78
	movs r0, #0x1e
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08031600
_080315FC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08031600
sub_08031600: @ 0x08031600
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	bl Random
	movs r1, #0x30
	ands r0, r1
	adds r0, #0x3c
	strb r0, [r4, #0xe]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x7a
	strh r0, [r1]
	bl Random
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r1, r0, #3
	ldrb r0, [r4, #0x14]
	cmp r1, r0
	beq _08031638
	strb r1, [r4, #0x14]
	adds r0, r4, #0
	bl InitializeAnimation
_08031638:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803163C
sub_0803163C: @ 0x0803163C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080002B8
	cmp r0, #0x13
	bne _08031652
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	lsrs r0, r0, #1
	b _08031658
_08031652:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
_08031658:
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl ProcessMovement
	pop {r4, pc}
	.align 2, 0
