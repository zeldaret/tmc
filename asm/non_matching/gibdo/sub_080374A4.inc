

	.syntax unified

	.text

	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r2, [r0]
	cmp r2, #0x87
	bne _080374D4
	ldrb r0, [r4, #0xc]
	cmp r0, #6
	bne _080374BC
	adds r0, r4, #0
	bl sub_08037ACC
_080374BC:
	movs r0, #8
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_08037B48
	b _08037534
_080374D4:
	ldrb r0, [r4, #0xc]
	adds r1, r0, #0
	cmp r1, #6
	beq _0803752E
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x27
	bne _080374F2
	cmp r2, #0x80
	bne _080374F2
	adds r0, r4, #0
	bl sub_08037A14
	b _08037534
_080374F2:
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08037534
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r1, #0x10
	eors r0, r1
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	adds r0, r4, #0
	bl sub_08037810
	cmp r0, #0
	beq _08037534
	movs r0, #4
	strb r0, [r4, #0xe]
	b _08037534
_0803752E:
	adds r0, r4, #0
	bl sub_08037A58
_08037534:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08037546
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08037546:
	ldr r1, _08037550 @ =gGibdo
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_08037550: .4byte gGibdo


    .syntax divided
