	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08063524
sub_08063524: @ 0x08063524
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806353A
	adds r0, r2, #0
	bl sub_0806362C
	b _08063540
_0806353A:
	adds r0, r2, #0
	bl sub_08063544
_08063540:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08063544
sub_08063544: @ 0x08063544
	push {lr}
	ldr r2, _08063558 @ =gUnk_0810CAA0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08063558: .4byte gUnk_0810CAA0

	thumb_func_start sub_0806355C
sub_0806355C: @ 0x0806355C
	push {r4, lr}
	adds r4, r0, #0
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
	movs r1, #4
	bl InitAnimationForceUpdate
	adds r0, r4, #0
	bl sub_08078778
	pop {r4, pc}

	thumb_func_start sub_08063584
sub_08063584: @ 0x08063584
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x20
	movs r2, #0x20
	bl sub_0806ED9C
	cmp r0, #0
	blt _080635B2
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _080635B8
	bl Random
	movs r1, #0x3f
	ands r1, r0
	cmp r1, #0
	bne _080635B2
	movs r0, #1
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0
	bl InitAnimationForceUpdate
_080635B2:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _080635D0
_080635B8:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080635D0
	movs r0, #0
	strb r0, [r4, #0xf]
_080635D0:
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080635FC
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0806EDC4
	adds r1, r0, #0
	adds r1, #4
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	ldrb r0, [r4, #0xe]
	ldr r1, _08063604 @ =0x00000A01
	adds r0, r0, r1
	bl TextboxNoOverlapFollow
_080635FC:
	adds r0, r4, #0
	bl sub_0806ED78
	pop {r4, pc}
	.align 2, 0
_08063604: .4byte 0x00000A01

	thumb_func_start sub_08063608
sub_08063608: @ 0x08063608
	push {lr}
	adds r2, r0, #0
	ldr r0, _08063628 @ =gTextBox
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0
	bne _08063626
	movs r0, #1
	strb r0, [r2, #0xc]
	strb r1, [r2, #0xf]
	adds r0, r2, #0
	movs r1, #4
	bl InitAnimationForceUpdate
_08063626:
	pop {pc}
	.align 2, 0
_08063628: .4byte gTextBox

	thumb_func_start sub_0806362C
sub_0806362C: @ 0x0806362C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r3, [r4, #0xc]
	cmp r3, #1
	beq _08063662
	cmp r3, #1
	bgt _08063640
	cmp r3, #0
	beq _08063646
	b _080636D4
_08063640:
	cmp r3, #2
	beq _080636BA
	b _080636D4
_08063646:
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x69
	strb r3, [r0]
	adds r0, r4, #0
	bl sub_0807DD64
_08063662:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _080636A4
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x69
	strb r0, [r1]
	ldr r1, _080636A0 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r1, #4
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	adds r0, r4, #0
	bl sub_0806F118
	b _080636D4
	.align 2, 0
_080636A0: .4byte gLinkEntity
_080636A4:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	b _080636D4
_080636BA:
	adds r0, r4, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _080636D4
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r1, [r0]
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_080636D4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080636D8
sub_080636D8: @ 0x080636D8
	push {lr}
	ldr r1, _080636EC @ =gUnk_02002A40
	ldrb r1, [r1, #8]
	lsls r1, r1, #3
	ldr r2, _080636F0 @ =gUnk_0810CAAC
	adds r1, r1, r2
	bl ShowNPCDialogue
	pop {pc}
	.align 2, 0
_080636EC: .4byte gUnk_02002A40
_080636F0: .4byte gUnk_0810CAAC

	thumb_func_start sub_080636F4
sub_080636F4: @ 0x080636F4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, pc}

	thumb_func_start sub_0806370C
sub_0806370C: @ 0x0806370C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _08063738
	adds r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	ldrh r0, [r2, #0x32]
	subs r0, #4
	strh r0, [r2, #0x32]
	adds r0, r2, #0
	movs r1, #2
	bl InitAnimationForceUpdate
	b _0806373E
_08063738:
	adds r0, r2, #0
	bl UpdateAnimationSingleFrame
_0806373E:
	pop {pc}
