	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_080874E0
sub_080874E0: @ 0x080874E0
	push {lr}
	ldr r2, _080874F4 @ =gUnk_081208A0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080874F4: .4byte gUnk_081208A0

	thumb_func_start sub_080874F8
sub_080874F8: @ 0x080874F8
	push {lr}
	bl sub_0805E780
	pop {pc}

	thumb_func_start nullsub_117
nullsub_117: @ 0x08087500
	bx lr
	.align 2, 0
