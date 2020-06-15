	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start MineralWaterSource
MineralWaterSource: @ 0x08097370
	push {lr}
	ldr r2, _08097384 @ =gUnk_08123298
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08097384: .4byte gUnk_08123298

	thumb_func_start sub_08097388
sub_08097388: @ 0x08097388
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806FBD8
	cmp r0, #0
	beq _080973D4
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	ldr r1, _080973D8 @ =gUnk_081232A0
	adds r0, r0, r1
	ldrb r1, [r0]
	strb r1, [r4, #0xb]
	ldrb r2, [r0, #3]
	adds r1, r4, #0
	adds r1, #0x40
	strb r2, [r1]
	ldr r2, [r4, #0x48]
	ldrb r1, [r0, #1]
	strb r1, [r2, #6]
	ldr r1, [r4, #0x48]
	ldrb r0, [r0, #2]
	strb r0, [r1, #7]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	adds r1, #3
	movs r0, #0x91
	strb r0, [r1]
	subs r1, #4
	movs r0, #2
	strb r0, [r1]
	movs r0, #1
	strb r0, [r4, #0xc]
_080973D4:
	pop {r4, pc}
	.align 2, 0
_080973D8: .4byte gUnk_081232A0

	thumb_func_start sub_080973DC
sub_080973DC: @ 0x080973DC
	adds r0, #0x41
	movs r1, #0
	strb r1, [r0]
	bx lr
