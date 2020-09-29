	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start EyeSwitch
EyeSwitch: @ 0x0808868C
	push {lr}
	ldr r2, _080886A0 @ =gUnk_08120B20
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080886A0: .4byte gUnk_08120B20

	thumb_func_start sub_080886A4
sub_080886A4: @ 0x080886A4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xa]
	movs r6, #3
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r4, #0x14]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x48
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3f
	movs r5, #1
	strb r5, [r0]
	subs r1, #5
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08088700 @ =gUnk_080FD168
	str r0, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x84
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _08088704
	strb r6, [r4, #0xc]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl InitializeAnimation
	b _08088716
	.align 2, 0
_08088700: .4byte gUnk_080FD168
_08088704:
	strb r5, [r4, #0xc]
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl InitializeAnimation
_08088716:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08088718
sub_08088718: @ 0x08088718
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x95
	beq _08088728
	cmp r0, #0x8e
	bne _0808875A
_08088728:
	ldr r0, [r4, #0x4c]
	ldrb r1, [r0, #0x15]
	adds r1, #4
	movs r0, #0x18
	ands r1, r0
	asrs r1, r1, #3
	ldrb r2, [r4, #0x14]
	movs r0, #3
	ands r0, r2
	cmp r1, r0
	bne _0808875A
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldr r0, _0808875C @ =0x00000111
	bl EnqueueSFX
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl SetFlag
_0808875A:
	pop {r4, pc}
	.align 2, 0
_0808875C: .4byte 0x00000111

	thumb_func_start sub_08088760
sub_08088760: @ 0x08088760
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808878E
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #1
	adds r1, r4, #0
	adds r1, #0x70
	strh r0, [r1]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl InitializeAnimation
_0808878E:
	pop {r4, pc}

	thumb_func_start sub_08088790
sub_08088790: @ 0x08088790
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080887D6
	adds r0, r4, #0
	adds r0, #0x86
	adds r2, r4, #0
	adds r2, #0x84
	ldrh r1, [r0]
	adds r5, r0, #0
	ldrh r0, [r2]
	cmp r1, r0
	beq _080887BC
	ldrh r0, [r2]
	bl CheckFlags
	cmp r0, #0
	beq _080887BC
	movs r0, #0
	strb r0, [r4, #0xe]
	b _080887D6
_080887BC:
	adds r1, r4, #0
	adds r1, #0x70
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080887D6
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrh r0, [r5]
	bl ClearFlag
_080887D6:
	pop {r4, r5, pc}

	thumb_func_start sub_080887D8
sub_080887D8: @ 0x080887D8
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08088802
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl InitializeAnimation
_08088802:
	pop {r4, pc}
