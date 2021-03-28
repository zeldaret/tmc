	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Projectile7
Projectile7: @ 0x080A8A68
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFunction
	cmp r0, #0
	beq _080A8A78
	bl DeleteThisEntity
_080A8A78:
	ldr r0, _080A8A8C @ =gUnk_0812979C
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080A8A8C: .4byte gUnk_0812979C

	thumb_func_start sub_080A8A90
sub_080A8A90: @ 0x080A8A90
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _080A8AAA
	movs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x15]
	lsrs r1, r1, #3
	adds r0, r2, #0
	bl InitializeAnimation
	b _080A8AC2
_080A8AAA:
	movs r0, #2
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x15]
	lsrs r1, r1, #3
	movs r0, #4
	orrs r1, r0
	adds r0, r2, #0
	bl InitializeAnimation
	ldr r0, _080A8AC4 @ =0x0000015F
	bl EnqueueSFX
_080A8AC2:
	pop {pc}
	.align 2, 0
_080A8AC4: .4byte 0x0000015F

	thumb_func_start sub_080A8AC8
sub_080A8AC8: @ 0x080A8AC8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	cmp r5, #0
	bne _080A8AD8
	bl DeleteEntity
	b _080A8B34
_080A8AD8:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _080A8AE6
	adds r0, r4, #0
	bl DeleteEntity
	b _080A8B34
_080A8AE6:
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _080A8B2E
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	ldrb r0, [r5, #0x15]
	adds r2, r0, #4
	movs r0, #0x18
	ands r2, r0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080A8B1A
	movs r0, #0
	strb r2, [r4, #0x15]
	lsrs r1, r2, #2
	strb r1, [r4, #0x14]
	strb r0, [r4, #0xe]
	lsrs r1, r2, #3
	adds r0, r4, #0
	bl InitializeAnimation
	b _080A8B2E
_080A8B1A:
	lsrs r0, r2, #2
	ldrb r1, [r4, #0x14]
	cmp r0, r1
	beq _080A8B2E
	strb r2, [r4, #0x15]
	strb r0, [r4, #0x14]
	lsrs r1, r2, #3
	adds r0, r4, #0
	bl InitializeAnimation
_080A8B2E:
	adds r0, r4, #0
	bl GetNextFrame
_080A8B34:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A8B38
sub_080A8B38: @ 0x080A8B38
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080AF090
	adds r2, r0, #0
	cmp r2, #0
	beq _080A8B66
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080A8B5E
	adds r0, r4, #0
	bl DeleteEntity
	b _080A8B74
_080A8B5E:
	adds r0, r4, #0
	bl sub_08016AD2
	b _080A8B74
_080A8B66:
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	strh r2, [r4, #0x24]
_080A8B74:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A8B78
sub_080A8B78: @ 0x080A8B78
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A8B94
	adds r0, r4, #0
	bl DeleteEntity
_080A8B94:
	pop {r4, pc}
	.align 2, 0
