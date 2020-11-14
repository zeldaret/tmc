	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start FusionMenuNPC
FusionMenuNPC: @ 0x0806E8CC
	push {lr}
	adds r3, r0, #0
	ldr r2, _0806E8EC @ =gNPCFunctions
	ldrb r1, [r3, #0xf]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #8
	adds r0, r0, r2
	ldr r1, [r0]
	cmp r1, #0
	beq _0806E8F0
	adds r0, r3, #0
	bl _call_via_r1
	b _0806E8F4
	.align 2, 0
_0806E8EC: .4byte gNPCFunctions
_0806E8F0:
	bl DeleteThisEntity
_0806E8F4:
	pop {pc}
	.align 2, 0

	thumb_func_start FusionMenuNPC_Head
FusionMenuNPC_Head: @ 0x0806E8F8
	push {lr}
	adds r3, r0, #0
	ldr r2, _0806E918 @ =gNPCFunctions
	ldrb r1, [r3, #0xf]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #4
	adds r0, r0, r2
	ldr r1, [r0]
	cmp r1, #0
	beq _0806E916
	adds r0, r3, #0
	bl _call_via_r1
_0806E916:
	pop {pc}
	.align 2, 0
_0806E918: .4byte gNPCFunctions
