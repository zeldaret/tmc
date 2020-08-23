	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start MiniSlime
MiniSlime: @ 0x08045200
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0804521C @ =gUnk_080D17C0
	bl EnemyFunctionHandler
	movs r3, #8
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl SetChildOffset
	pop {r4, pc}
	.align 2, 0
_0804521C: .4byte gUnk_080D17C0

	thumb_func_start sub_08045220
sub_08045220: @ 0x08045220
	push {lr}
	ldr r2, _08045234 @ =gUnk_080D17D8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08045234: .4byte gUnk_080D17D8

	thumb_func_start sub_08045238
sub_08045238: @ 0x08045238
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804524C
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0804524C:
	ldr r1, _08045258 @ =gUnk_080D17C0
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_08045258: .4byte gUnk_080D17C0

	thumb_func_start sub_0804525C
sub_0804525C: @ 0x0804525C
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, [r4, #0x50]
	cmp r4, r3
	beq _08045298
	cmp r3, #0
	beq _08045298
	adds r2, r4, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r4, #0x50]
	ldr r0, [r4, #0x54]
	str r0, [r1, #0x54]
	ldr r1, [r4, #0x54]
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x50]
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08045298
	adds r0, r4, #0
	adds r1, r3, #0
	bl ReplaceMonitoredEntity
_08045298:
	adds r0, r4, #0
	bl sub_0804A7D4
	pop {r4, pc}

	thumb_func_start nullsub_22
nullsub_22: @ 0x080452A0
	bx lr
	.align 2, 0

	thumb_func_start sub_080452A4
sub_080452A4: @ 0x080452A4
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r2, #1
	movs r5, #1
	strb r5, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_0804A720
	adds r0, r4, #0
	movs r1, #6
	bl InitializeAnimation
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080452DC
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r5, [r4, #0xe]
	b _080452E2
_080452DC:
	adds r0, r4, #0
	bl sub_080452E4
_080452E2:
	pop {r4, r5, pc}

	thumb_func_start sub_080452E4
sub_080452E4: @ 0x080452E4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	adds r0, #1
	strb r0, [r4, #0xe]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080452FC
sub_080452FC: @ 0x080452FC
	push {r4, r5, lr}
	adds r5, r0, #0
	bl GetNextFrame
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08045370
	movs r4, #3
	strb r4, [r5, #0xc]
	movs r0, #1
	strb r0, [r5, #0xe]
	movs r1, #0x24
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble _08045330
	movs r0, #0x80
	lsls r0, r0, #5
	movs r2, #0x24
	ldrsh r1, [r5, r2]
	bl sub_0806FA04
	lsrs r0, r0, #8
	strb r0, [r5, #0xe]
_08045330:
	adds r0, r5, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08045360
	bl Random
	ands r0, r4
	cmp r0, #0
	beq _08045360
	adds r0, r5, #0
	bl sub_08049EE4
	adds r4, r0, #0
	bl Random
	movs r1, #8
	ands r0, r1
	adds r0, #0xfc
	adds r4, r4, r0
	movs r0, #0x18
	ands r4, r0
	strb r4, [r5, #0x15]
	b _08045370
_08045360:
	bl Random
	movs r1, #0x18
	ands r0, r1
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_08045374
_08045370:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08045374
sub_08045374: @ 0x08045374
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl GetNextFrame
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08045392
	movs r0, #1
	strb r0, [r4, #0xc]
_08045392:
	pop {r4, pc}
