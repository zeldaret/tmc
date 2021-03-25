	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start ProjectileB
ProjectileB: @ 0x080A9158
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _080A9166
	movs r0, #1
	strb r0, [r5, #0xc]
_080A9166:
	ldr r4, [r5, #0x50]
	cmp r4, #0
	beq _080A917C
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A917C
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _080A91A4
_080A917C:
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A9198
	ldr r1, [r5, #0x4c]
	ldr r0, _080A91A0 @ =gPlayerEntity
	cmp r1, r0
	bne _080A9198
	adds r0, r5, #0
	bl sub_0803C0AC
_080A9198:
	adds r0, r5, #0
	bl DeleteEntity
	b _080A91D8
	.align 2, 0
_080A91A0: .4byte gPlayerEntity
_080A91A4:
	ldr r1, _080A91DC @ =gUnk_08129998
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r5, #0x48]
	adds r0, r4, #0
	adds r1, r5, #0
	bl CopyPosition
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080A91D8
	adds r1, r5, #0
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080A91D8
	movs r0, #0xff
	strb r0, [r1]
_080A91D8:
	pop {r4, r5, pc}
	.align 2, 0
_080A91DC: .4byte gUnk_08129998
