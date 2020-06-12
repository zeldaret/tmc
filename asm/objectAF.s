	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_080A058C
sub_080A058C: @ 0x080A058C
	push {lr}
	ldr r2, _080A05A0 @ =gUnk_081248C4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A05A0: .4byte gUnk_081248C4

	thumb_func_start sub_080A05A4
sub_080A05A4: @ 0x080A05A4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xa]
	cmp r1, #2
	beq _080A05D2
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #9
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_080A0640
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
	b _080A05F0
_080A05D2:
	movs r0, #0
	strb r1, [r4, #0xc]
	ldrh r1, [r4, #0x32]
	adds r1, #1
	strh r1, [r4, #0x32]
	strh r0, [r4, #0x36]
	adds r1, r4, #0
	adds r1, #0x63
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #3
	bl InitializeAnimation
_080A05F0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A05F4
sub_080A05F4: @ 0x080A05F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	bne _080A060C
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
	b _080A0622
_080A060C:
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080A0616
	bl sub_0805E780
_080A0616:
	adds r0, r4, #0
	bl sub_080A0640
	adds r0, r4, #0
	bl sub_08004274
_080A0622:
	pop {r4, pc}

	thumb_func_start sub_080A0624
sub_080A0624: @ 0x080A0624
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A063C
	bl sub_0805E780
_080A063C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A0640
sub_080A0640: @ 0x080A0640
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080A065E
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #0x64]
	ldr r0, [r0, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0xc
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	b _080A0666
_080A065E:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
_080A0666:
	movs r0, #0
	strh r0, [r4, #0x36]
	pop {r4, pc}
