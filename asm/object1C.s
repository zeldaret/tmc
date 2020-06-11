	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_080874A0
sub_080874A0: @ 0x080874A0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080874AE
	movs r0, #1
	strb r0, [r4, #0xc]
_080874AE:
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r4, #0
	adds r1, #0x82
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0x10
	movs r3, #0x10
	bl CheckRectOnScreen
	cmp r0, #0
	bne _080874DC
	ldr r2, [r4, #0x50]
	movs r1, #1
	ldrb r4, [r4, #0xb]
	lsls r1, r4
	ldr r0, [r2, #0x20]
	bics r0, r1
	str r0, [r2, #0x20]
	bl sub_0805E780
_080874DC:
	pop {r4, pc}
	.align 2, 0
