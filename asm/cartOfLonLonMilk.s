	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08065B4C
sub_08065B4C: @ 0x08065B4C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08065B68 @ =gUnk_08110118
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
	pop {r4, pc}
	.align 2, 0
_08065B68: .4byte gUnk_08110118

	thumb_func_start sub_08065B6C
sub_08065B6C: @ 0x08065B6C
	push {lr}
	ldrb r1, [r0, #0xc]
	adds r1, #1
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0, #0x18]
	ldr r2, _08065B98 @ =0xFFFF8000
	adds r1, r2, #0
	ldrh r2, [r0, #0x30]
	adds r1, r1, r2
	strh r1, [r0, #0x30]
	movs r1, #6
	strb r1, [r0, #0x14]
	movs r1, #3
	bl LoadAnimation
	pop {pc}
	.align 2, 0
_08065B98: .4byte 0xFFFF8000

	thumb_func_start sub_08065B9C
sub_08065B9C: @ 0x08065B9C
	push {lr}
	bl sub_080042B8
	pop {pc}
