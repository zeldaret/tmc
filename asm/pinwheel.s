	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Pinwheel
Pinwheel: @ 0x080A23A0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x45
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _080A23C0
	ldr r0, _080A23D4 @ =gUnk_020342F8
	subs r1, #1
	bl sub_0801D5A8
	cmp r0, #0
	bne _080A23C0
	bl DeleteThisEntity
_080A23C0:
	ldr r0, _080A23D8 @ =gUnk_0812505C
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080A23D4: .4byte gUnk_020342F8
_080A23D8: .4byte gUnk_0812505C

	thumb_func_start sub_080A23DC
sub_080A23DC: @ 0x080A23DC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080A240C @ =gUnk_08125050
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r2, r4, #0
	adds r2, #0x68
	strh r0, [r2]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r0, [r3]
	movs r1, #7
	orrs r0, r1
	strb r0, [r3]
	ldrh r0, [r2]
	bl CheckLocalFlag
	cmp r0, #0
	beq _080A2410
	movs r0, #2
	b _080A2412
	.align 2, 0
_080A240C: .4byte gUnk_08125050
_080A2410:
	movs r0, #1
_080A2412:
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A2420
sub_080A2420: @ 0x080A2420
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x68
	ldrh r0, [r0]
	bl CheckLocalFlag
	cmp r0, #0
	beq _080A243A
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080A29BC
_080A243A:
	pop {r4, pc}

	thumb_func_start sub_080A243C
sub_080A243C: @ 0x080A243C
	push {lr}
	bl sub_08004274
	pop {pc}
