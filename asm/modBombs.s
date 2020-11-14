	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start ModBombs
ModBombs: @ 0x080542F4
	push {lr}
	adds r3, r0, #0
	ldr r1, _08054318 @ =gUnk_02002A40
	adds r0, r1, #0
	adds r0, #0xac
	ldrb r0, [r0]
	adds r3, r3, r0
	ldr r2, _0805431C @ =gBombBagSizes
	adds r0, r1, #0
	adds r0, #0xae
	ldrb r0, [r0]
	adds r0, r0, r2
	ldrb r2, [r0]
	cmp r3, #0
	bge _08054320
	movs r3, #0
	b _08054326
	.align 2, 0
_08054318: .4byte gUnk_02002A40
_0805431C: .4byte gBombBagSizes
_08054320:
	cmp r2, r3
	bge _08054326
	adds r3, r2, #0
_08054326:
	adds r0, r1, #0
	adds r0, #0xac
	strb r3, [r0]
	pop {pc}
	.align 2, 0
