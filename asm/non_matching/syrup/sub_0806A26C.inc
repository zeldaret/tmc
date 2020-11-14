	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xf
	movs r1, #0x2f
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0806A2AE
	adds r0, r5, #0
	adds r1, r4, #0
	bl PositionEntityOnTop
	bl Random
	adds r5, r0, #0
	ldr r2, _0806A2B0 @ =gUnk_081121DC
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x62
	strb r0, [r3]
	lsrs r0, r5, #8
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	subs r0, #8
	adds r1, r4, #0
	adds r1, #0x63
	strb r0, [r1]
_0806A2AE:
	pop {r4, r5, pc}
	.align 2, 0
_0806A2B0: .4byte gUnk_081121DC
    .syntax divided
