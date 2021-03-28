	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Projectile17
Projectile17: @ 0x080AAB8C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080AABA2
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
_080AABA2:
	adds r0, r4, #0
	bl sub_080AABB0
	adds r0, r4, #0
	bl GetNextFrame
	pop {r4, pc}

	thumb_func_start sub_080AABB0
sub_080AABB0: @ 0x080AABB0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	ldrb r1, [r5, #0x14]
	lsls r1, r1, #1
	ldr r0, _080AABEC @ =gSineTable
	adds r1, r1, r0
	ldrb r2, [r4, #0xe]
	lsls r2, r2, #8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r3, r0, #0
	muls r3, r2, r3
	ldr r0, [r4, #0x2c]
	adds r0, r0, r3
	str r0, [r4, #0x2c]
	adds r1, #0x80
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, [r4, #0x30]
	subs r0, r0, r1
	str r0, [r4, #0x30]
	pop {r4, r5, pc}
	.align 2, 0
_080AABEC: .4byte gSineTable
