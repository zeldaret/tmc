	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object70
Object70: @ 0x08097420
	push {lr}
	ldr r2, _08097434 @ =gUnk_081232A4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08097434: .4byte gUnk_081232A4

	thumb_func_start sub_08097438
sub_08097438: @ 0x08097438
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xa]
	adds r1, r0, #0
	adds r1, #0xb
	strb r1, [r4, #0x1e]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080974A2
	adds r0, r4, #0
	bl sub_08004168
	ldr r1, _08097494 @ =gPlayerEntity
	ldrb r0, [r1, #0x1b]
	movs r2, #0xc0
	orrs r0, r2
	strb r0, [r1, #0x1b]
	adds r1, #0x29
	ldrb r1, [r1]
	movs r2, #7
	movs r0, #7
	ands r0, r1
	cmp r0, #7
	beq _08097498
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	adds r1, #1
	adds r3, r4, #0
	adds r3, #0x29
	ands r1, r2
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	b _080974A2
	.align 2, 0
_08097494: .4byte gPlayerEntity
_08097498:
	adds r1, r4, #0
	adds r1, #0x29
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
_080974A2:
	pop {r4, pc}

	thumb_func_start sub_080974A4
sub_080974A4: @ 0x080974A4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08097554
	ldr r3, _08097540 @ =gPlayerEntity
	ldr r0, [r3, #0x34]
	cmp r0, #0
	bne _080974E8
	ldr r2, _08097544 @ =gPlayerState
	ldrb r1, [r2, #0x1e]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080974D6
	ldrb r0, [r2, #0x12]
	cmp r0, #0x11
	bne _080974D6
	ldrb r0, [r3, #0xc]
	cmp r0, #1
	beq _080974FA
	cmp r0, #0x18
	beq _080974FA
	cmp r0, #4
	beq _080974FA
_080974D6:
	ldr r1, _08097540 @ =gPlayerEntity
	ldr r0, [r1, #0x34]
	cmp r0, #0
	bne _080974E8
	adds r0, r1, #0
	movs r1, #0x52
	movs r2, #0
	bl CreateFx
_080974E8:
	ldr r2, _08097540 @ =gPlayerEntity
	ldrb r1, [r2, #0x1b]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x1b]
	bl DeleteThisEntity
_080974FA:
	ldr r2, _08097540 @ =gPlayerEntity
	ldr r0, [r2, #0x2c]
	str r0, [r4, #0x2c]
	ldr r0, [r2, #0x30]
	str r0, [r4, #0x30]
	ldr r0, _08097544 @ =gPlayerState
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _08097584
	ldrb r0, [r2, #0x1b]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r2, #0x1b]
	adds r0, r2, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r2, #7
	movs r0, #7
	ands r0, r1
	cmp r0, #7
	beq _08097548
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	adds r1, #1
	adds r3, r4, #0
	adds r3, #0x29
	ands r1, r2
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	b _08097584
	.align 2, 0
_08097540: .4byte gPlayerEntity
_08097544: .4byte gPlayerState
_08097548:
	adds r1, r4, #0
	adds r1, #0x29
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	b _08097584
_08097554:
	ldr r2, _08097570 @ =gPlayerEntity
	ldrb r0, [r2, #0xc]
	cmp r0, #0x1e
	beq _08097584
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	bne _08097574
	ldrb r0, [r2, #0x1b]
	movs r1, #0x3f
	ands r1, r0
	movs r0, #0x80
	b _0809757C
	.align 2, 0
_08097570: .4byte gPlayerEntity
_08097574:
	ldrb r0, [r2, #0x1b]
	movs r1, #0x3f
	ands r1, r0
	movs r0, #0x40
_0809757C:
	orrs r1, r0
	strb r1, [r2, #0x1b]
	bl DeleteThisEntity
_08097584:
	pop {r4, pc}
	.align 2, 0
