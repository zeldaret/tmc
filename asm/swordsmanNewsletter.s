	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_080933C0
sub_080933C0: @ 0x080933C0
	push {lr}
	ldr r2, _080933D4 @ =gUnk_081228B0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080933D4: .4byte gUnk_081228B0

	thumb_func_start sub_080933D8
sub_080933D8: @ 0x080933D8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #0x1e]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	ldr r0, _080933F8 @ =gUnk_081228A8
	str r0, [r4, #0x48]
	adds r0, r4, #0
	bl sub_080787B4
	pop {r4, pc}
	.align 2, 0
_080933F8: .4byte gUnk_081228A8

	thumb_func_start sub_080933FC
sub_080933FC: @ 0x080933FC
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08093420
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08093424 @ =gUnk_081228B8
	ldrb r0, [r2, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r2, #0
	bl TextboxNoOverlap
_08093420:
	pop {pc}
	.align 2, 0
_08093424: .4byte gUnk_081228B8
