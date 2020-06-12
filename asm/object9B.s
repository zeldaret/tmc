	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0809E7A8
sub_0809E7A8: @ 0x0809E7A8
	push {lr}
	ldr r2, _0809E7BC @ =gUnk_081242D0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809E7BC: .4byte gUnk_081242D0

	thumb_func_start sub_0809E7C0
sub_0809E7C0: @ 0x0809E7C0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xb]
	cmp r0, #0xff
	beq _0809E7D4
	adds r0, r4, #0
	bl sub_0809E7FC
_0809E7D4:
	ldrb r1, [r4, #0xa]
	adds r0, r4, #0
	bl InitializeAnimation
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809E7E0
sub_0809E7E0: @ 0x0809E7E0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809E7F8
	bl sub_0805E780
_0809E7F8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809E7FC
sub_0809E7FC: @ 0x0809E7FC
	push {lr}
	adds r1, r0, #0
	ldrb r3, [r1, #0xb]
	lsls r3, r3, #1
	ldr r0, _0809E820 @ =gUnk_081242D8
	adds r3, r3, r0
	ldr r0, [r1, #0x50]
	movs r2, #0
	ldrsb r2, [r3, r2]
	lsls r2, r2, #0x10
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x10
	bl PositionRelative
	pop {pc}
	.align 2, 0
_0809E820: .4byte gUnk_081242D8
