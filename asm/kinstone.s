	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified
	
	.text

	thumb_func_start sub_08018500
sub_08018500: @ 0x08018500
	push {r4, lr}
	ldr r4, _08018550 @ =gUnk_02033AB8
	adds r3, r4, #4
	ldr r0, _08018554 @ =gUnk_080B3D14
	ldrb r1, [r4]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrb r2, [r4, #1]
	lsls r0, r2, #1
	adds r0, r0, r2
	ldrh r1, [r1]
	adds r0, r0, r1
	movs r2, #0
_0801851A:
	strh r0, [r3]
	adds r0, #1
	adds r3, #2
	adds r2, #1
	cmp r2, #2
	bls _0801851A
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldr r1, _08018558 @ =0x00000C81
	adds r0, r0, r1
	movs r2, #0
	adds r1, r4, #0
	adds r1, #0xa
_08018536:
	strh r0, [r3]
	adds r0, #1
	adds r3, #2
	adds r2, #1
	cmp r2, #4
	bls _08018536
	movs r0, #5
	bl sub_08018690
	movs r0, #0
	strb r0, [r4, #2]
	pop {r4, pc}
	.align 2, 0
_08018550: .4byte gUnk_02033AB8
_08018554: .4byte gUnk_080B3D14
_08018558: .4byte 0x00000C81
