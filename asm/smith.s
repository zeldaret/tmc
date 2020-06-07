	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08065FC0
sub_08065FC0: @ 0x08065FC0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08066028
	adds r2, r4, #0
	adds r2, #0x39
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r6, r4, #0
	adds r6, #0x58
	cmp r0, #2
	bne _0806600C
	movs r0, #0
	movs r1, #4
	strb r1, [r4, #0xc]
	strb r0, [r2]
	ldrb r0, [r6]
	movs r5, #0
	cmp r0, #0xc
	bne _08065FF0
	movs r5, #8
_08065FF0:
	ldr r1, _08066020 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r5, r5, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl LoadAnimation
	adds r0, r4, #0
	bl sub_0806F118
_0806600C:
	ldr r0, _08066024 @ =gUnk_0811036C
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _08066042
	.align 2, 0
_08066020: .4byte gLinkEntity
_08066024: .4byte gUnk_0811036C
_08066028:
	ldr r0, _08066058 @ =gUnk_08110360
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
	adds r6, r4, #0
	adds r6, #0x58
_08066042:
	ldrb r0, [r6]
	cmp r0, #0xc
	bne _0806605C
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _0806606E
	.align 2, 0
_08066058: .4byte gUnk_08110360
_0806605C:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #8
	orrs r1, r0
	strb r1, [r2]
_0806606E:
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080660A0
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0x3d
	movs r2, #0x20
	bl CreateFX
	ldr r4, _080660A4 @ =gUnk_08110380
	bl Random
	movs r1, #7
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r0, [r1]
	bl PlaySFX
_080660A0:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080660A4: .4byte gUnk_08110380

	thumb_func_start sub_080660A8
sub_080660A8: @ 0x080660A8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x5a
	ldrb r4, [r0]
	ldrb r2, [r5, #0x1e]
	adds r0, r5, #0
	movs r1, #0
	bl sub_0806FF60
	movs r0, #0x40
	ands r4, r0
	cmp r4, #0
	beq _080660CE
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0x16
	bl sub_0806FF60
	b _080660D8
_080660CE:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0xff
	bl sub_0806FF60
_080660D8:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl sub_0806FF88
	adds r0, r5, #0
	bl sub_0807000C
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080660EC
sub_080660EC: @ 0x080660EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08066114 @ =gUnk_08110354
	bl sub_0806FDEC
	cmp r0, #0
	beq _08066112
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #2
	bl LoadAnimation
_08066112:
	pop {r4, pc}
	.align 2, 0
_08066114: .4byte gUnk_08110354

	thumb_func_start sub_08066118
sub_08066118: @ 0x08066118
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x28
	movs r2, #0x28
	bl sub_0806ED9C
	adds r1, r0, #0
	cmp r1, #0
	bge _0806612E
	movs r1, #2
	b _08066144
_0806612E:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _0806613A
	movs r0, #0x10
	strb r0, [r4, #0xf]
	b _08066144
_0806613A:
	subs r0, #1
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
_08066144:
	adds r0, r4, #0
	bl sub_0806F078
	cmp r0, #0
	bne _08066154
	adds r0, r4, #0
	bl sub_080042B8
_08066154:
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0806616C
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0
	bl TextboxTryNoOverlap
_0806616C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08066170
sub_08066170: @ 0x08066170
	movs r1, #1
	strb r1, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_08066178
sub_08066178: @ 0x08066178
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080661AC @ =gUnk_08110354
	bl sub_0806FDEC
	cmp r0, #0
	beq _080661A8
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0807DD50
_080661A8:
	pop {r4, pc}
	.align 2, 0
_080661AC: .4byte gUnk_08110354

	thumb_func_start sub_080661B0
sub_080661B0: @ 0x080661B0
	push {lr}
	movs r1, #0
	bl sub_0807DD94
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080661BC
sub_080661BC: @ 0x080661BC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _080661F4
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080661FC
	adds r0, r4, #0
	bl sub_0806EDC4
	adds r0, #8
	adds r1, r4, #0
	adds r1, #0x80
	strh r0, [r1]
	ldrh r1, [r1]
	adds r0, r4, #0
	bl LoadAnimation
	b _080661FC
_080661F4:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
_080661FC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08066200
sub_08066200: @ 0x08066200
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}

	thumb_func_start sub_08066218
sub_08066218: @ 0x08066218
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F148
	cmp r0, #0
	beq _08066228
	movs r0, #1
	strb r0, [r4, #0xc]
_08066228:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806622C
sub_0806622C: @ 0x0806622C
	push {lr}
	adds r2, r0, #0
	ldr r0, _0806624C @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	subs r0, #2
	cmp r0, #0
	bge _0806623C
	movs r0, #0
_0806623C:
	lsls r1, r0, #3
	ldr r0, _08066250 @ =gUnk_08110390
	adds r1, r1, r0
	adds r0, r2, #0
	bl sub_0806F1AC
	pop {pc}
	.align 2, 0
_0806624C: .4byte gUnk_02002A40
_08066250: .4byte gUnk_08110390

	thumb_func_start nullsub_501
nullsub_501: @ 0x08066254
	bx lr
	.align 2, 0

	thumb_func_start sub_08066258
sub_08066258: @ 0x08066258
	push {r4, lr}
	ldr r4, _08066270 @ =gUnk_081103D0
	bl Random
	movs r1, #7
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r0, [r1]
	bl PlaySFX
	pop {r4, pc}
	.align 2, 0
_08066270: .4byte gUnk_081103D0

	thumb_func_start sub_08066274
sub_08066274: @ 0x08066274
	push {lr}
	ldr r3, _08066284 @ =gUnk_081103E0
	movs r1, #1
	movs r2, #0
	bl sub_08078850
	pop {pc}
	.align 2, 0
_08066284: .4byte gUnk_081103E0

	thumb_func_start sub_08066288
sub_08066288: @ 0x08066288
	push {lr}
	adds r1, r0, #0
	adds r1, #0x68
	ldrb r1, [r1]
	bl sub_08078784
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08066298
sub_08066298: @ 0x08066298
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080662D0
	ldr r1, _080662CC @ =gUnk_08110354
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _080662D6
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #6
	bl LoadAnimation
	b _080662D6
	.align 2, 0
_080662CC: .4byte gUnk_08110354
_080662D0:
	adds r0, r4, #0
	bl sub_080042B8
_080662D6:
	pop {r4, pc}
