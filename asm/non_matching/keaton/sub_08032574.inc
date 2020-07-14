	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _0803258A
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080325A4
_0803258A:
	adds r5, r4, #0
	adds r5, #0x76
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080325A4
	adds r0, r4, #0
	bl sub_080AEFE0
	cmp r0, #0
	bne _080325AC
_080325A4:
	adds r0, r4, #0
	bl sub_0803275C
	b _080325C2
_080325AC:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	ldrh r1, [r5]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080325C2
	adds r0, r4, #0
	bl sub_08032794
_080325C2:
	pop {r4, r5, pc}
	.align 2, 0
    .syntax divided
