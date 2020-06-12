	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0809CEC8
sub_0809CEC8: @ 0x0809CEC8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0809CF06
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0809CEEE
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _0809CEF4
_0809CEEE:
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
_0809CEF4:
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl InitializeAnimationOrderAndFlip
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	b _0809CF0C
_0809CF06:
	adds r0, r4, #0
	bl sub_08004274
_0809CF0C:
	adds r4, #0x59
	ldrb r0, [r4]
	cmp r0, #0xff
	bne _0809CF20
	bl Random
	movs r1, #0xf
	ands r0, r1
	adds r0, #0x10
	strb r0, [r4]
_0809CF20:
	pop {r4, pc}
	.align 2, 0
