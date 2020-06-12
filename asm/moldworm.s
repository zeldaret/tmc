	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08023038
sub_08023038: @ 0x08023038
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r5, [r4, #0x2e]
	ldrh r6, [r4, #0x32]
	ldrb r1, [r4, #0xa]
	cmp r1, #0
	bne _0802306C
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _08023052
	adds r0, r4, #0
	bl sub_0802390C
_08023052:
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x7d
	strb r0, [r1]
	ldr r1, _08023068 @ =gUnk_080CBC38
	adds r0, r4, #0
	bl EnemyFunctionHandler
	b _08023090
	.align 2, 0
_08023068: .4byte gUnk_080CBC38
_0802306C:
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _08023088
	cmp r1, #8
	beq _08023080
	adds r0, r4, #0
	bl sub_080235BC
	b _08023090
_08023080:
	adds r0, r4, #0
	bl sub_08023730
	b _08023090
_08023088:
	adds r0, r4, #0
	bl DeleteEntity
	b _080230CA
_08023090:
	ldr r0, [r4, #0x50]
	adds r2, r0, #0
	adds r2, #0x7c
	adds r0, #0x7d
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	beq _080230CA
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _080230CA
	ldrb r2, [r2]
	subs r2, #1
	movs r0, #0xf
	ands r2, r0
	adds r2, #0x78
	adds r2, r1, r2
	ldrh r1, [r4, #0x2e]
	subs r1, r1, r5
	adds r1, #8
	movs r3, #0xf
	ands r1, r3
	lsls r1, r1, #4
	ldrh r0, [r4, #0x32]
	subs r0, r0, r6
	adds r0, #8
	ands r0, r3
	orrs r1, r0
	strb r1, [r2]
_080230CA:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080230CC
sub_080230CC: @ 0x080230CC
	push {lr}
	ldr r2, _080230E0 @ =gUnk_080CBC50
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080230E0: .4byte gUnk_080CBC50

	thumb_func_start sub_080230E4
sub_080230E4: @ 0x080230E4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xd]
	cmp r0, #0xff
	bne _08023132
	movs r2, #0
	movs r0, #7
	strb r0, [r5, #0xc]
	movs r3, #1
	strb r3, [r5, #0xe]
	strb r2, [r5, #0xd]
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0x85
	strb r0, [r1]
	subs r1, #2
	movs r0, #0xf8
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x7f
	strb r2, [r0]
	subs r0, #4
	strb r2, [r0]
	subs r0, #0x3a
	ldrb r0, [r0]
	cmp r0, #0x80
	beq _0802311E
	cmp r0, #0x9e
	bne _08023128
_0802311E:
	strb r2, [r5, #0xb]
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #0x14
	b _08023130
_08023128:
	strb r3, [r5, #0xb]
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #8
_08023130:
	strb r0, [r1]
_08023132:
	adds r0, r5, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802318A
	adds r0, r5, #0
	adds r0, #0x7f
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802318A
	ldrb r0, [r5, #0xc]
	cmp r0, #7
	bne _0802318A
	ldr r4, _08023194 @ =gLinkEntity
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	adds r4, #0x3d
	movs r0, #0xec
	strb r0, [r4]
	ldr r2, _08023198 @ =gLinkState
	movs r0, #0x41
	strb r0, [r2, #2]
	ldr r0, [r2, #0x30]
	ldr r1, _0802319C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r2, #0x30]
_0802318A:
	ldr r1, _080231A0 @ =gUnk_080CBC38
	adds r0, r5, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_08023194: .4byte gLinkEntity
_08023198: .4byte gLinkState
_0802319C: .4byte 0xFFF7FFFF
_080231A0: .4byte gUnk_080CBC38

	thumb_func_start sub_080231A4
sub_080231A4: @ 0x080231A4
	push {lr}
	adds r2, r0, #0
	adds r2, #0x7c
	ldrb r1, [r2]
	adds r1, #1
	strb r1, [r2]
	bl sub_08001324

	thumb_func_start nullsub_134
nullsub_134: @ 0x080231B4
	pop {pc}
	.align 2, 0

	thumb_func_start nullsub_135
nullsub_135: @ 0x080231B8
	bx lr
	.align 2, 0

	thumb_func_start sub_080231BC
sub_080231BC: @ 0x080231BC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _08023280 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x3f
	bhi _0802327E
	movs r0, #0xf
	movs r1, #1
	bl CreateEnemy
	adds r4, r0, #0
	str r4, [r6, #0x54]
	str r6, [r4, #0x50]
	movs r0, #0xf
	movs r1, #2
	bl CreateEnemy
	adds r5, r0, #0
	str r5, [r4, #0x54]
	str r6, [r5, #0x50]
	movs r0, #0xf
	movs r1, #3
	bl CreateEnemy
	adds r4, r0, #0
	str r4, [r5, #0x54]
	str r6, [r4, #0x50]
	movs r0, #0xf
	movs r1, #4
	bl CreateEnemy
	adds r5, r0, #0
	str r5, [r4, #0x54]
	str r6, [r5, #0x50]
	movs r0, #0xf
	movs r1, #5
	bl CreateEnemy
	adds r4, r0, #0
	str r4, [r5, #0x54]
	str r6, [r4, #0x50]
	movs r0, #0xf
	movs r1, #6
	bl CreateEnemy
	adds r5, r0, #0
	str r5, [r4, #0x54]
	str r6, [r5, #0x50]
	movs r0, #0xf
	movs r1, #7
	bl CreateEnemy
	adds r4, r0, #0
	str r4, [r5, #0x54]
	str r6, [r4, #0x50]
	movs r0, #0xf
	movs r1, #8
	bl CreateEnemy
	str r0, [r4, #0x54]
	str r4, [r0, #0x74]
	str r6, [r0, #0x50]
	movs r1, #0
	str r1, [r0, #0x54]
	adds r0, r6, #0
	bl sub_0804A720
	movs r0, #6
	strb r0, [r6, #0xc]
	movs r1, #0x1e
	strb r1, [r6, #0xe]
	str r6, [r6, #0x50]
	adds r0, r6, #0
	adds r0, #0x78
	strh r1, [r0]
	ldrb r1, [r6, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r6, #0x1a]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r6, #0x15]
	ldrb r0, [r6, #0x15]
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r6, #0x14]
	ldrb r1, [r6, #0x14]
	adds r0, r6, #0
	bl InitializeAnimation
_0802327E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08023280: .4byte gUnk_03003DBC

	thumb_func_start nullsub_136
nullsub_136: @ 0x08023284
	bx lr
	.align 2, 0

	thumb_func_start sub_08023288
sub_08023288: @ 0x08023288
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08023324
	ldrb r1, [r7, #0xe]
	adds r0, r1, #1
	strb r0, [r7, #0xe]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08023324
	bl Random
	adds r4, r0, #0
	movs r0, #0x1e
	ands r4, r0
	movs r0, #0
	mov r8, r0
	ldr r2, _08023308 @ =gLinkEntity
	mov sb, r2
	ldr r0, _0802330C @ =gUnk_080CBC70
	mov sl, r0
_080232C2:
	mov r2, sb
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	mov r2, sl
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r1, r0
	mov r0, sb
	movs r2, #0x32
	ldrsh r1, [r0, r2]
	adds r0, r4, #1
	add r0, sl
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r1, r0
	ldr r0, _08023310 @ =gUnk_03001198
	ldrb r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl GetTileTypeByPos
	bl sub_08023A38
	cmp r0, #0
	beq _08023314
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_08023990
	b _08023324
	.align 2, 0
_08023308: .4byte gLinkEntity
_0802330C: .4byte gUnk_080CBC70
_08023310: .4byte gUnk_03001198
_08023314:
	adds r4, #2
	movs r0, #0x1e
	ands r4, r0
	movs r2, #1
	add r8, r2
	mov r0, r8
	cmp r0, #0xf
	bls _080232C2
_08023324:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08023330
sub_08023330: @ 0x08023330
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08004274
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08023394
	movs r0, #4
	strb r0, [r5, #0xc]
	movs r0, #0x19
	strb r0, [r5, #0xe]
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x78
	movs r4, #0
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r1]
	bl Random
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r5, #0x15]
	lsrs r0, r0, #2
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0x7b
	strb r4, [r0]
	adds r0, #4
	strb r4, [r0]
	ldrb r1, [r5, #0x14]
	adds r0, r5, #0
	bl sub_08023A88
	ldr r1, [r5, #0x54]
	adds r0, r5, #0
	bl CopyPosition
	adds r0, r5, #0
	movs r1, #4
	movs r2, #0
	bl CreateFx
_08023394:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08023398
sub_08023398: @ 0x08023398
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	adds r0, #3
	ldrb r0, [r0]
	cmp r0, #0
	beq _080233C0
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	bne _080233C0
	adds r1, r5, #0
	adds r1, #0x78
	movs r0, #1
	strh r0, [r1]
_080233C0:
	adds r4, r5, #0
	adds r4, #0x78
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08023416
	adds r0, r5, #0
	bl GetTileTypeByEntity
	bl sub_08023A38
	cmp r0, #0
	beq _08023412
	movs r0, #5
	strb r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x7f
	movs r0, #0
	strb r0, [r1]
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0x85
	strb r0, [r1]
	ldr r1, [r5, #0x54]
	movs r0, #1
	strb r0, [r1, #0xe]
	adds r0, r5, #0
	bl sub_08023A68
	adds r0, r5, #0
	movs r1, #4
	movs r2, #0
	bl CreateFx
	b _0802349C
_08023412:
	movs r0, #0x28
	strh r0, [r4]
_08023416:
	adds r0, r5, #0
	adds r0, #0x7f
	ldrb r0, [r0]
	cmp r0, #0
	beq _08023426
	adds r0, r5, #0
	bl sub_08023AB0
_08023426:
	ldrb r0, [r5, #0xe]
	subs r1, r0, #1
	strb r1, [r5, #0xe]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08023440
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0802349C
	movs r0, #0x19
	strb r0, [r5, #0xe]
	b _0802349C
_08023440:
	ldr r4, [r5, #0x2c]
	ldr r6, [r5, #0x30]
	adds r0, r5, #0
	bl sub_080AEF88
	ldr r0, [r5, #0x2c]
	cmp r0, r4
	bne _08023460
	ldr r0, [r5, #0x30]
	cmp r0, r6
	bne _08023460
	adds r1, r5, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
_08023460:
	ldr r0, _080234A0 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0802349C
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049F84
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_08004596
	ldrb r0, [r5, #0x15]
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	asrs r0, r0, #2
	ldrb r1, [r5, #0x14]
	cmp r0, r1
	beq _0802349C
	strb r0, [r5, #0x14]
	adds r1, r5, #0
	adds r1, #0x7b
	ldrb r1, [r1]
	adds r1, r0, r1
	adds r0, r5, #0
	bl InitializeAnimation
_0802349C:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080234A0: .4byte gUnk_030010A0

	thumb_func_start sub_080234A4
sub_080234A4: @ 0x080234A4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x7f
	ldrb r0, [r0]
	cmp r0, #0
	beq _080234D6
	movs r0, #6
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #0xa
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x78
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r1]
_080234D6:
	pop {r4, pc}

	thumb_func_start sub_080234D8
sub_080234D8: @ 0x080234D8
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802351A
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x1a]
	subs r0, #0x12
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r4, #0x1a]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08023A88
_0802351A:
	pop {r4, pc}

	thumb_func_start sub_0802351C
sub_0802351C: @ 0x0802351C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldrb r0, [r7, #0xe]
	cmp r0, #0
	beq _0802355A
	ldrb r0, [r7, #0xb]
	cmp r0, #1
	beq _08023534
	ldr r0, _080235A8 @ =gLinkEntity
	ldrb r0, [r0, #0x1e]
	cmp r0, #0xff
	bne _0802355A
_08023534:
	movs r0, #0
	strb r0, [r7, #0xe]
	ldr r1, [r7, #0x54]
	movs r0, #3
	strb r0, [r1, #0xc]
	ldr r1, [r7, #0x54]
	adds r0, r7, #0
	adds r0, #0x80
	ldrb r0, [r0]
	strb r0, [r1, #0xf]
	ldr r0, [r7, #0x54]
	ldrb r1, [r0, #0x14]
	adds r1, #1
	bl InitializeAnimation
	ldrb r1, [r7, #0x14]
	adds r0, r7, #0
	bl InitializeAnimation
_0802355A:
	adds r0, r7, #0
	adds r0, #0x7f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080235B4
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	bne _080235B8
	ldr r5, _080235A8 @ =gLinkEntity
	ldrb r0, [r7, #0x14]
	movs r4, #7
	adds r2, r4, #0
	ands r2, r0
	strb r2, [r5, #0x14]
	ldr r3, _080235AC @ =gLinkState
	ldr r0, [r3, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r3, #0x30]
	ldr r6, _080235B0 @ =gUnk_080CBC90
	adds r2, r2, r6
	movs r3, #0
	ldrsb r3, [r2, r3]
	lsls r3, r3, #0x10
	adds r0, r7, #0
	adds r1, r5, #0
	movs r2, #0
	bl PositionRelative
	ldrb r0, [r7, #0x14]
	ands r4, r0
	adds r4, r4, r6
	ldrb r0, [r4]
	rsbs r0, r0, #0
	adds r5, #0x63
	strb r0, [r5]
	b _080235B8
	.align 2, 0
_080235A8: .4byte gLinkEntity
_080235AC: .4byte gLinkState
_080235B0: .4byte gUnk_080CBC90
_080235B4:
	movs r0, #4
	strb r0, [r7, #0xc]
_080235B8:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080235BC
sub_080235BC: @ 0x080235BC
	push {lr}
	ldr r2, _080235D0 @ =gUnk_080CBC98
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080235D0: .4byte gUnk_080CBC98

	thumb_func_start sub_080235D4
sub_080235D4: @ 0x080235D4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r1, [r4, #0x50]
	ldrh r0, [r1, #0x2e]
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #0x32]
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl sub_080239F0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _080235F6
	movs r0, #0x10
	b _080235F8
_080235F6:
	movs r0, #0x12
_080235F8:
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl InitializeAnimation
	pop {r4, pc}

	thumb_func_start sub_08023604
sub_08023604: @ 0x08023604
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x50]
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	adds r0, r0, r2
	adds r0, #0x78
	ldrb r0, [r0]
	cmp r0, #0x88
	beq _08023640
	movs r1, #0
	movs r0, #2
	strb r0, [r2, #0xc]
	strb r1, [r2, #0xe]
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	adds r0, r2, #0
	bl sub_08023644
_08023640:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08023644
sub_08023644: @ 0x08023644
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0x17
	bne _08023692
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08023692
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bne _08023692
	movs r6, #0x32
	ldrsh r1, [r4, r6]
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bne _08023692
	movs r2, #1
	strb r2, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0x54]
	strb r2, [r0, #0xe]
	adds r0, r4, #0
	bl sub_080239F0
_08023692:
	adds r0, r5, #0
	adds r0, #0x7c
	adds r1, r5, #0
	adds r1, #0x7d
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080236F2
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	adds r1, #0x78
	adds r1, r4, r1
	ldrb r0, [r1]
	lsrs r0, r0, #4
	ldr r3, _080236F4 @ =0x0000FFF8
	adds r0, r0, r3
	ldrh r6, [r4, #0x2e]
	adds r0, r0, r6
	strh r0, [r4, #0x2e]
	ldrb r0, [r1]
	ands r2, r0
	adds r2, r2, r3
	ldrh r0, [r4, #0x32]
	adds r2, r2, r0
	strh r2, [r4, #0x32]
	ldrb r2, [r5, #0x1b]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r5, #0x19]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r4, #0x19]
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x19]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
_080236F2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080236F4: .4byte 0x0000FFF8

	thumb_func_start sub_080236F8
sub_080236F8: @ 0x080236F8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802372E
	movs r0, #2
	strb r0, [r4, #0xc]
	ldr r1, [r4, #0x54]
	movs r0, #3
	strb r0, [r1, #0xc]
	ldr r1, [r4, #0x54]
	ldr r0, [r4, #0x50]
	adds r0, #0x80
	ldrb r0, [r0]
	strb r0, [r1, #0xf]
	ldr r0, [r4, #0x54]
	ldrb r1, [r0, #0x14]
	adds r1, #1
	bl InitializeAnimation
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl InitializeAnimation
_0802372E:
	pop {r4, pc}

	thumb_func_start sub_08023730
sub_08023730: @ 0x08023730
	push {lr}
	ldr r2, _08023744 @ =gUnk_080CBCA8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08023744: .4byte gUnk_080CBCA8

	thumb_func_start sub_08023748
sub_08023748: @ 0x08023748
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x14
	strb r0, [r4, #0x14]
	ldr r1, [r4, #0x50]
	ldrh r0, [r1, #0x2e]
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #0x32]
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl sub_080239F0
	adds r0, r4, #0
	bl sub_08023A68
	pop {r4, pc}

	thumb_func_start sub_0802376C
sub_0802376C: @ 0x0802376C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	ldrb r0, [r5, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _0802379A
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0xf
	bhi _0802379A
	ldrb r0, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #0x18]
	adds r0, r4, #0
	bl sub_08004274
_0802379A:
	adds r0, r5, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	adds r0, r0, r4
	adds r0, #0x78
	ldrb r0, [r0]
	cmp r0, #0x88
	beq _080237D4
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldr r0, [r4, #0x50]
	adds r0, #0x7f
	movs r1, #1
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #0x14
	bl sub_08023A88
	adds r0, r4, #0
	bl sub_080237D8
_080237D4:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080237D8
sub_080237D8: @ 0x080237D8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0x17
	bne _0802382E
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802382E
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bne _0802382E
	movs r6, #0x32
	ldrsh r1, [r4, r6]
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bne _0802382E
	movs r2, #1
	strb r2, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r5, #0
	adds r0, #0x7f
	strb r2, [r0]
	adds r0, r4, #0
	bl sub_080239F0
	adds r0, r4, #0
	bl sub_08023A68
_0802382E:
	adds r0, r5, #0
	adds r0, #0x7c
	adds r1, r5, #0
	adds r1, #0x7d
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0802388E
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	adds r1, #0x78
	adds r1, r4, r1
	ldrb r0, [r1]
	lsrs r0, r0, #4
	ldr r3, _08023890 @ =0x0000FFF8
	adds r0, r0, r3
	ldrh r6, [r4, #0x2e]
	adds r0, r0, r6
	strh r0, [r4, #0x2e]
	ldrb r0, [r1]
	ands r2, r0
	adds r2, r2, r3
	ldrh r0, [r4, #0x32]
	adds r2, r2, r0
	strh r2, [r4, #0x32]
	ldrb r2, [r5, #0x1b]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r5, #0x19]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r4, #0x19]
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x19]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
_0802388E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08023890: .4byte 0x0000FFF8

	thumb_func_start sub_08023894
sub_08023894: @ 0x08023894
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08023900
	movs r0, #2
	strb r0, [r5, #0xc]
	ldr r0, [r5, #0x50]
	adds r0, #0x7f
	movs r1, #1
	strb r1, [r0]
	ldrb r1, [r5, #0x14]
	adds r0, r5, #0
	bl InitializeAnimation
	ldr r0, [r5, #0x50]
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	bne _08023900
	ldr r2, _08023904 @ =gLinkState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2, #0x30]
	ldr r4, _08023908 @ =gLinkEntity
	ldrh r0, [r5, #0x2e]
	strh r0, [r4, #0x2e]
	ldrh r0, [r5, #0x32]
	strh r0, [r4, #0x32]
	ldr r0, [r5, #0x74]
	adds r1, r5, #0
	bl sub_080045C4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xc
	strb r0, [r1]
	subs r0, #0x1c
	bl ModHealth
	adds r0, r4, #0
	movs r1, #0x7a
	bl sub_0800449C
_08023900:
	pop {r4, r5, pc}
	.align 2, 0
_08023904: .4byte gLinkState
_08023908: .4byte gLinkEntity

	thumb_func_start sub_0802390C
sub_0802390C: @ 0x0802390C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08023932
	ldr r2, [r5, #0x54]
	adds r3, r5, #0
	adds r3, #0x3d
_08023922:
	ldrb r0, [r3]
	adds r1, r2, #0
	adds r1, #0x3d
	strb r0, [r1]
	ldr r2, [r2, #0x54]
	cmp r2, #0
	bne _08023922
	b _0802398C
_08023932:
	ldr r2, [r5, #0x54]
	b _0802393C
_08023936:
	ldr r2, [r2, #0x54]
	cmp r2, #0
	beq _0802398C
_0802393C:
	adds r0, r2, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08023936
	movs r0, #0x45
	adds r0, r0, r2
	mov ip, r0
	ldrb r1, [r0]
	movs r4, #0xff
	subs r0, r4, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _08023936
	adds r0, r1, #0
	orrs r0, r4
	mov r1, ip
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x3d
	ldrb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x45
	ldrb r0, [r1]
	cmp r0, r3
	blo _0802397A
	subs r0, r0, r3
	b _0802397C
_0802397A:
	movs r0, #0
_0802397C:
	strb r0, [r1]
	adds r2, r5, #0
_08023980:
	adds r0, r2, #0
	adds r0, #0x3d
	strb r4, [r0]
	ldr r2, [r2, #0x54]
	cmp r2, #0
	bne _08023980
_0802398C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08023990
sub_08023990: @ 0x08023990
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #3
	strb r0, [r5, #0xc]
	ldrb r3, [r5, #0x18]
	subs r0, #7
	ands r0, r3
	movs r3, #1
	orrs r0, r3
	strb r0, [r5, #0x18]
	movs r0, #0x55
	strb r0, [r5, #0x1a]
	adds r4, r5, #0
	adds r4, #0x29
	ldrb r0, [r4]
	movs r3, #7
	orrs r0, r3
	strb r0, [r4]
	strh r1, [r5, #0x2e]
	strh r2, [r5, #0x32]
	ldr r0, _080239EC @ =gLinkEntity
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, r5, #0
	bl InitializeAnimationOrderAndFlip
	adds r0, r5, #0
	movs r1, #0x16
	bl InitializeAnimation
	ldr r4, [r5, #0x54]
_080239D4:
	adds r0, r4, #0
	bl sub_080239F0
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	ldr r4, [r4, #0x54]
	cmp r4, #0
	bne _080239D4
	pop {r4, r5, pc}
	.align 2, 0
_080239EC: .4byte gLinkEntity

	thumb_func_start sub_080239F0
sub_080239F0: @ 0x080239F0
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x78
	movs r0, #0x88
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	bx lr

	thumb_func_start sub_08023A38
sub_08023A38: @ 0x08023A38
	push {lr}
	adds r1, r0, #0
	cmp r1, #0x1a
	beq _08023A5A
	cmp r1, #0x29
	beq _08023A5A
	ldr r0, _08023A60 @ =gUnk_080B37A0
	adds r0, r1, r0
	ldrb r1, [r0]
	cmp r1, #9
	beq _08023A5A
	cmp r1, #0xb
	beq _08023A5A
	cmp r1, #0xa
	beq _08023A5A
	cmp r1, #0xc
	bne _08023A64
_08023A5A:
	movs r0, #1
	b _08023A66
	.align 2, 0
_08023A60: .4byte gUnk_080B37A0
_08023A64:
	movs r0, #0
_08023A66:
	pop {pc}

	thumb_func_start sub_08023A68
sub_08023A68: @ 0x08023A68
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #5
	bl sub_0801D2B4
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0x17
	bl InitializeAnimation
	pop {r4, pc}

	thumb_func_start sub_08023A88
sub_08023A88: @ 0x08023A88
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0x22
	bl sub_0801D2B4
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r1, r5, #0
	bl InitializeAnimation
	pop {r4, r5, pc}

	thumb_func_start sub_08023AB0
sub_08023AB0: @ 0x08023AB0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r4, #0
	adds r7, #0x7b
	ldrb r0, [r7]
	cmp r0, #8
	bne _08023AF6
	adds r5, r4, #0
	adds r5, #0x7e
	ldrb r0, [r5]
	adds r6, r0, #0
	cmp r6, #0
	bne _08023B00
	adds r0, r4, #0
	bl sub_08023B38
	cmp r0, #0
	beq _08023ADE
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r0, #0x1d
	bhi _08023B34
_08023ADE:
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x85
	strb r0, [r1]
	strb r6, [r7]
	movs r0, #0x1e
	strb r0, [r5]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl InitializeAnimation
	b _08023B34
_08023AF6:
	adds r5, r4, #0
	adds r5, #0x7e
	ldrb r0, [r5]
	cmp r0, #0
	beq _08023B06
_08023B00:
	subs r0, #1
	strb r0, [r5]
	b _08023B34
_08023B06:
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r0, #0x59
	bls _08023B34
	adds r0, r4, #0
	bl sub_08023B38
	cmp r0, #0
	beq _08023B34
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x87
	strb r0, [r1]
	movs r0, #8
	strb r0, [r7]
	movs r0, #0xa
	strb r0, [r5]
	ldrb r1, [r4, #0x14]
	adds r1, #8
	adds r0, r4, #0
	bl InitializeAnimation
_08023B34:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08023B38
sub_08023B38: @ 0x08023B38
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_08049DF4
	adds r5, r0, #0
	cmp r5, #0
	bne _08023B4C
	movs r0, #0
	b _08023B8E
_08023B4C:
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	ldr r3, _08023B90 @ =gUnk_080CBCB8
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #1
	adds r1, r0, r3
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r2, r1
	movs r6, #0x32
	ldrsh r1, [r4, r6]
	adds r0, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	movs r3, #0
	movs r4, #0x2e
	ldrsh r0, [r5, r4]
	subs r0, r0, r2
	adds r0, #0x14
	cmp r0, #0x28
	bhi _08023B8C
	movs r6, #0x32
	ldrsh r0, [r5, r6]
	subs r0, r0, r1
	adds r0, #0x14
	cmp r0, #0x28
	bhi _08023B8C
	movs r3, #1
_08023B8C:
	adds r0, r3, #0
_08023B8E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08023B90: .4byte gUnk_080CBCB8
