	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_0806A028
sub_0806A028: @ 0x0806A028
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x39
	movs r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #0
	beq _0806A07E
	ldr r0, _0806A054 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806A060
	cmp r2, #2
	bne _0806A058
	movs r0, #6
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0806F118
	b _0806A076
	.align 2, 0
_0806A054: .4byte gLinkState
_0806A058:
	adds r0, r4, #0
	bl sub_0806A080
	b _0806A076
_0806A060:
	adds r0, r4, #0
	bl sub_08069FBC
	adds r0, r4, #0
	bl sub_0806A080
	movs r0, #0xd1
	bl PlaySFX
	bl sub_080791D0
_0806A076:
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	strb r0, [r1]
_0806A07E:
	pop {r4, pc}
