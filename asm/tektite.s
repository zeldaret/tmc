	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Tektite
Tektite: @ 0x0802F118
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0802F134 @ =gUnk_080CDED0
	bl EnemyFunctionHandler
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl SetChildOffset
	pop {r4, pc}
	.align 2, 0
_0802F134: .4byte gUnk_080CDED0

	thumb_func_start sub_0802F138
sub_0802F138: @ 0x0802F138
	push {lr}
	ldr r2, _0802F14C @ =gUnk_080CDEE8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802F14C: .4byte gUnk_080CDEE8

	thumb_func_start sub_0802F150
sub_0802F150: @ 0x0802F150
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802F164
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0802F164:
	ldr r1, _0802F18C @ =gUnk_080CDED0
	adds r0, r4, #0
	bl sub_0804AA30
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802F1E8
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0x14
	beq _0802F196
	cmp r0, #0x14
	bgt _0802F190
	cmp r0, #0xe
	beq _0802F1E0
	b _0802F1E8
	.align 2, 0
_0802F18C: .4byte gUnk_080CDED0
_0802F190:
	cmp r0, #0x15
	beq _0802F1E0
	b _0802F1E8
_0802F196:
	movs r0, #0
	movs r1, #1
	strb r1, [r4, #0xc]
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0802F1A8
	movs r0, #0xc0
	b _0802F1B6
_0802F1A8:
	bl Random
	ldr r2, _0802F1DC @ =gUnk_080CDEF8
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
_0802F1B6:
	strb r0, [r4, #0xe]
	movs r1, #0
	strb r1, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x7c
	strb r1, [r0]
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0802F1CE
	ldr r0, [r4, #0x20]
	asrs r0, r0, #2
_0802F1CE:
	str r0, [r4, #0x20]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	b _0802F1E8
	.align 2, 0
_0802F1DC: .4byte gUnk_080CDEF8
_0802F1E0:
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0
	strb r0, [r1]
_0802F1E8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_16
nullsub_16: @ 0x0802F1EC
	bx lr
	.align 2, 0

	thumb_func_start sub_0802F1F0
sub_0802F1F0: @ 0x0802F1F0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08001242
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0802F20C
	adds r0, r4, #0
	adds r0, #0x80
	ldrh r1, [r0]
	adds r0, r4, #0
	bl sub_08003FC4
_0802F20C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802F210
sub_0802F210: @ 0x0802F210
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0804A720
	movs r4, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	strb r4, [r5, #0xd]
	bl Random
	ldr r2, _0802F280 @ =gUnk_080CDEF8
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r5, #0xe]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	ldrb r1, [r5, #0xe]
	adds r0, r0, r1
	strb r0, [r5, #0xe]
	strb r4, [r5, #0xf]
	adds r0, r5, #0
	adds r0, #0x7c
	strb r4, [r0]
	ldrb r0, [r5, #0xa]
	movs r2, #0xa0
	lsls r2, r2, #6
	adds r1, r2, #0
	cmp r0, #0
	bne _0802F258
	movs r0, #0xc0
	lsls r0, r0, #5
	adds r1, r0, #0
_0802F258:
	adds r0, r5, #0
	adds r0, #0x80
	strh r1, [r0]
	ldrb r0, [r5, #0xa]
	movs r2, #0xc0
	lsls r2, r2, #6
	adds r1, r2, #0
	cmp r0, #0
	bne _0802F270
	movs r0, #0xa0
	lsls r0, r0, #6
	adds r1, r0, #0
_0802F270:
	adds r0, r5, #0
	adds r0, #0x82
	strh r1, [r0]
	adds r0, r5, #0
	movs r1, #0
	bl InitializeAnimation
	pop {r4, r5, pc}
	.align 2, 0
_0802F280: .4byte gUnk_080CDEF8

	thumb_func_start sub_0802F284
sub_0802F284: @ 0x0802F284
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0x60
	bls _0802F298
	adds r0, r4, #0
	movs r1, #2
	bl UpdateAnimationVariableFrames
	b _0802F29E
_0802F298:
	adds r0, r4, #0
	bl GetNextFrame
_0802F29E:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802F2AA
	subs r0, #1
	strb r0, [r4, #0xe]
	b _0802F2FE
_0802F2AA:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0802F2E4
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802F2FE
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r0, [r0]
	lsls r0, r0, #4
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl sub_0802F45C
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
	b _0802F2FE
_0802F2E4:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802F2FE
	movs r0, #0x40
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
_0802F2FE:
	pop {r4, pc}

	thumb_func_start sub_0802F300
sub_0802F300: @ 0x0802F300
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080AEF88
	movs r0, #0x36
	ldrsh r6, [r4, r0]
	bl Random
	adds r5, r0, #0
	movs r0, #0xf
	ands r5, r0
	adds r0, r4, #0
	adds r0, #0x80
	ldrh r1, [r0]
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #1
	bne _0802F364
	movs r0, #0
	movs r2, #3
	strb r2, [r4, #0xc]
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0802F33C
	movs r5, #0
_0802F33C:
	cmp r5, #0
	bne _0802F344
	movs r0, #0xc0
	b _0802F350
_0802F344:
	ldr r0, _0802F360 @ =gUnk_080CDEF8
	adds r1, r5, #0
	ands r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r5
_0802F350:
	strb r0, [r4, #0xe]
	movs r0, #0
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #3
	bl InitializeAnimation
	b _0802F3F0
	.align 2, 0
_0802F360: .4byte gUnk_080CDEF8
_0802F364:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _0802F374
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800417E
	b _0802F38C
_0802F374:
	adds r0, r4, #0
	bl sub_080002B8
	movs r1, #0xf0
	ands r1, r0
	cmp r1, #0x50
	bne _0802F38C
	ldrb r0, [r4, #0x15]
	adds r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
_0802F38C:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802F3AC
	movs r0, #0x10
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0802F3AC
	subs r0, #1
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_0802F45C
_0802F3AC:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0802F3C6
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r6, r0
	bge _0802F3C6
	adds r0, r4, #0
	movs r1, #4
	bl InitializeAnimation
	movs r0, #1
	strb r0, [r4, #0xd]
_0802F3C6:
	movs r0, #0xc
	rsbs r0, r0, #0
	cmp r6, r0
	bge _0802F3DA
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	b _0802F3E4
_0802F3DA:
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x80
_0802F3E4:
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1b]
_0802F3F0:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802F3F4
sub_0802F3F4: @ 0x0802F3F4
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802F45A
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #1
	bhi _0802F44C
	ldrb r0, [r4, #0xa]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802F44C
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r0, [r0]
	lsls r0, r0, #4
	str r0, [r4, #0x20]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0802F45C
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
	b _0802F45A
_0802F44C:
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r2]
	adds r0, r4, #0
	bl InitializeAnimation
_0802F45A:
	pop {r4, pc}

	thumb_func_start sub_0802F45C
sub_0802F45C: @ 0x0802F45C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _0802F472
	adds r0, r4, #0
	bl sub_08049EE4
	strb r0, [r4, #0x15]
	b _0802F49E
_0802F472:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0802F48A
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	b _0802F49E
_0802F48A:
	bl Random
	movs r1, #0xf
	ands r1, r0
	adds r1, #0x18
	ldrb r0, [r4, #0x15]
	adds r1, r1, r0
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r4, #0x15]
_0802F49E:
	pop {r4, pc}
