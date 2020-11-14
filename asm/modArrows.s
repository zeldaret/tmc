	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start ModArrows
ModArrows: @ 0x08054330
	push {lr}
	adds r3, r0, #0
	ldr r1, _08054354 @ =gUnk_02002A40
	adds r0, r1, #0
	adds r0, #0xad
	ldrb r0, [r0]
	adds r3, r3, r0
	ldr r2, _08054358 @ =gQuiverSizes
	adds r0, r1, #0
	adds r0, #0xaf
	ldrb r0, [r0]
	adds r0, r0, r2
	ldrb r2, [r0]
	cmp r3, #0
	bge _0805435C
	movs r3, #0
	b _08054362
	.align 2, 0
_08054354: .4byte gUnk_02002A40
_08054358: .4byte gQuiverSizes
_0805435C:
	cmp r2, r3
	bge _08054362
	adds r3, r2, #0
_08054362:
	adds r0, r1, #0
	adds r0, #0xad
	strb r3, [r0]
	pop {pc}
	.align 2, 0
