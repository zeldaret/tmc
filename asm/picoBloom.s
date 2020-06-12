	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08098A78
sub_08098A78: @ 0x08098A78
	push {lr}
	ldr r2, _08098A8C @ =gUnk_08123568
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08098A8C: .4byte gUnk_08123568

	thumb_func_start sub_08098A90
sub_08098A90: @ 0x08098A90
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _08098A9C
	movs r0, #2
_08098A9C:
	strb r0, [r4, #0xc]
	bl Random
	movs r1, #0x7f
	ands r0, r1
	adds r0, #0x7f
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	ldr r1, _08098ACC @ =gUnk_08123574
	ldrb r0, [r4, #0xa]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldrb r0, [r4, #0xb]
	adds r1, r1, r0
	adds r0, r4, #0
	bl InitializeAnimation
	pop {r4, pc}
	.align 2, 0
_08098ACC: .4byte gUnk_08123574

	thumb_func_start sub_08098AD0
sub_08098AD0: @ 0x08098AD0
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08098AE6
	ldrb r0, [r1, #0xc]
	adds r0, #1
	strb r0, [r1, #0xc]
_08098AE6:
	pop {pc}

	thumb_func_start sub_08098AE8
sub_08098AE8: @ 0x08098AE8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08098B08
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r4]
	ldr r0, _08098B0C @ =0x0000021B
	bl sub_08004488
_08098B08:
	pop {r4, pc}
	.align 2, 0
_08098B0C: .4byte 0x0000021B
