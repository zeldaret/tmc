	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start SmallTownMinish
SmallTownMinish: @ 0x0806E278
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806E2A8
	adds r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _0806E2A0 @ =gUnk_081142FC
	str r0, [r4, #0x48]
	adds r0, r4, #0
	bl sub_0807DD50
	ldr r3, _0806E2A4 @ =gUnk_08114304
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_08078850
	b _0806E2B0
	.align 2, 0
_0806E2A0: .4byte gUnk_081142FC
_0806E2A4: .4byte gUnk_08114304
_0806E2A8:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
_0806E2B0:
	ldr r0, _0806E2CC @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806E2D0
	ldrb r0, [r4, #0x18]
	subs r1, #0x84
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #0x18]
	b _0806E2DA
	.align 2, 0
_0806E2CC: .4byte gPlayerState
_0806E2D0:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_0806E2DA:
	pop {r4, pc}

	thumb_func_start sub_0806E2DC
sub_0806E2DC: @ 0x0806E2DC
	push {lr}
	adds r3, r0, #0
	ldr r0, _0806E300 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	subs r0, #2
	cmp r0, #0
	bge _0806E2EC
	movs r0, #0
_0806E2EC:
	ldrb r1, [r3, #0xb]
	lsls r1, r1, #6
	lsls r0, r0, #3
	ldr r2, _0806E304 @ =gUnk_08114308
	adds r0, r0, r2
	adds r1, r1, r0
	adds r0, r3, #0
	bl ShowNPCDialogue
	pop {pc}
	.align 2, 0
_0806E300: .4byte gUnk_02002A40
_0806E304: .4byte gUnk_08114308
