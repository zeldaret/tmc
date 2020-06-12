	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0802222C
sub_0802222C: @ 0x0802222C
	push {lr}
	ldr r1, _08022238 @ =gUnk_080CB948
	bl EnemyFunctionHandler
	pop {pc}
	.align 2, 0
_08022238: .4byte gUnk_080CB948

	thumb_func_start sub_0802223C
sub_0802223C: @ 0x0802223C
	push {lr}
	ldr r2, _08022250 @ =gUnk_080CB960
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08022250: .4byte gUnk_080CB960

	thumb_func_start sub_08022254
sub_08022254: @ 0x08022254
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _08022344
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	subs r0, #4
	cmp r0, #0x18
	bhi _08022356
	lsls r0, r0, #2
	ldr r1, _0802227C @ =_08022280
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802227C: .4byte _08022280
_08022280: @ jump table
	.4byte _080222E4 @ case 0
	.4byte _080222E4 @ case 1
	.4byte _080222E4 @ case 2
	.4byte _08022356 @ case 3
	.4byte _080222E4 @ case 4
	.4byte _080222E4 @ case 5
	.4byte _080222E4 @ case 6
	.4byte _080222E4 @ case 7
	.4byte _080222E4 @ case 8
	.4byte _080222E4 @ case 9
	.4byte _08022356 @ case 10
	.4byte _08022356 @ case 11
	.4byte _080222E4 @ case 12
	.4byte _080222E4 @ case 13
	.4byte _080222E4 @ case 14
	.4byte _08022356 @ case 15
	.4byte _08022356 @ case 16
	.4byte _08022356 @ case 17
	.4byte _080222F2 @ case 18
	.4byte _08022356 @ case 19
	.4byte _080222E4 @ case 20
	.4byte _080222E4 @ case 21
	.4byte _080222E4 @ case 22
	.4byte _08022356 @ case 23
	.4byte _080222F2 @ case 24
_080222E4:
	ldr r0, _08022340 @ =gLinkState
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08022356
_080222F2:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	bl CreateFx
	movs r0, #1
	movs r1, #1
	bl CreateEnemy
	adds r5, r0, #0
	cmp r5, #0
	beq _08022356
	movs r0, #1
	strb r0, [r5, #0xb]
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #0xf8
	strb r0, [r1]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0804A4E4
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r4, #0x15]
	str r5, [r4, #0x54]
	b _08022356
	.align 2, 0
_08022340: .4byte gLinkState
_08022344:
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x94
	beq _08022356
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
_08022356:
	ldr r1, _08022360 @ =gUnk_080CB948
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_08022360: .4byte gUnk_080CB948

	thumb_func_start nullsub_131
nullsub_131: @ 0x08022364
	bx lr
	.align 2, 0

	thumb_func_start sub_08022368
sub_08022368: @ 0x08022368
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	bl Random
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08022390
sub_08022390: @ 0x08022390
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _080223D4
	ldrb r1, [r4, #0xe]
	adds r0, r1, #1
	strb r0, [r4, #0xe]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080223C0
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	bl Random
	movs r1, #4
	ands r0, r1
	strb r0, [r4, #0xf]
_080223C0:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _080223CE
	adds r0, r4, #0
	bl sub_080AEF88
	b _080223DA
_080223CE:
	subs r0, #1
	strb r0, [r4, #0xf]
	b _080223DA
_080223D4:
	bl Random
	strb r0, [r4, #0xe]
_080223DA:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080223E4
sub_080223E4: @ 0x080223E4
	push {lr}
	adds r3, r0, #0
	ldr r2, [r3, #0x54]
	cmp r2, #0
	beq _0802240A
	adds r1, r2, #0
	adds r1, #0x41
	movs r0, #0x94
	strb r0, [r1]
	subs r1, #4
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #5
	movs r0, #0xc
	strb r0, [r1]
	ldrb r1, [r3, #0x15]
	adds r0, r2, #0
	adds r0, #0x3e
	strb r1, [r0]
_0802240A:
	adds r0, r3, #0
	bl DeleteEntity
	pop {pc}
	.align 2, 0
