	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Lamp
Lamp: @ 0x0809CE90
	push {lr}
	ldr r2, _0809CEA4 @ =gUnk_08123E80
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809CEA4: .4byte gUnk_08123E80

	thumb_func_start sub_0809CEA8
sub_0809CEA8: @ 0x0809CEA8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	pop {r4, pc}

	thumb_func_start sub_0809CEC0
sub_0809CEC0: @ 0x0809CEC0
	push {lr}
	bl GetNextFrame
	pop {pc}
