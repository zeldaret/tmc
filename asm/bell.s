	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08097D78
sub_08097D78: @ 0x08097D78
	push {lr}
	ldr r2, _08097D8C @ =gUnk_08123384
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08097D8C: .4byte gUnk_08123384

	thumb_func_start sub_08097D90
sub_08097D90: @ 0x08097D90
	push {r4, lr}
	adds r4, r0, #0
	movs r3, #1
	movs r2, #1
	strb r2, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x38
	strb r2, [r0]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	adds r0, r4, #0
	movs r1, #0
	bl LoadAnimation
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08097DCC
sub_08097DCC: @ 0x08097DCC
	push {lr}
	bl sub_080042B8
	pop {pc}
