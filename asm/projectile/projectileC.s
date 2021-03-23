	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start ProjectileC
ProjectileC: @ 0x080A91E0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080A9288
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080A9204
	movs r0, #1
	strb r0, [r4, #0xc]
	bl Random
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_080A9204:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _080A921C
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _080A9218
	movs r0, #0xff
	strb r0, [r1, #0xa]
_080A9218:
	bl DeleteThisEntity
_080A921C:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _080A9230
	subs r0, #1
	strb r0, [r4, #0xf]
	b _080A92F6
_080A9230:
	adds r0, r4, #0
	bl sub_080644C8
	cmp r0, #0
	beq _080A92F6
	ldrb r1, [r4, #0xe]
	adds r0, r1, #1
	strb r0, [r4, #0xe]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080A92F6
	movs r0, #0xc
	bl sub_080A7EE0
	adds r5, r0, #0
	cmp r5, #0
	beq _080A92F6
	movs r0, #1
	strb r0, [r5, #0xa]
	ldr r0, [r4, #0x50]
	adds r0, #0x3e
	ldrb r1, [r0]
	ldr r3, _080A9284 @ =gUnk_081299C8
	ldrb r0, [r4, #0xe]
	lsrs r0, r0, #2
	movs r2, #7
	ands r0, r2
	adds r0, r0, r3
	lsls r1, r1, #3
	ldrb r0, [r0]
	adds r1, r1, r0
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r5, #0x15]
	ldr r0, [r4, #0x50]
	str r0, [r5, #0x50]
	adds r0, r4, #0
	adds r1, r5, #0
	bl CopyPosition
	b _080A92F6
	.align 2, 0
_080A9284: .4byte gUnk_081299C8
_080A9288:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080A92B0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x12
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0x16
	ands r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r4, #0x24]
	ldr r0, _080A92F8 @ =gUnk_080FD1E4
	str r0, [r4, #0x48]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
_080A92B0:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _080A92C8
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _080A92C4
	movs r0, #0xff
	strb r0, [r1, #0xa]
_080A92C4:
	bl DeleteThisEntity
_080A92C8:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A92D8
	bl DeleteThisEntity
_080A92D8:
	adds r0, r4, #0
	bl sub_0806F69C
	ldr r0, _080A92FC @ =gUnk_02027EB4
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	movs r3, #2
	bl sub_080AE4CC
	cmp r0, #0
	beq _080A92F6
	bl DeleteThisEntity
_080A92F6:
	pop {r4, r5, pc}
	.align 2, 0
_080A92F8: .4byte gUnk_080FD1E4
_080A92FC: .4byte gUnk_02027EB4
