	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Projectile24
Projectile24: @ 0x080ACA34
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080ACA4C @ =gUnk_0812AA5C
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080ACA4C: .4byte gUnk_0812AA5C

	thumb_func_start sub_080ACA50
sub_080ACA50: @ 0x080ACA50
	push {lr}
	ldr r2, _080ACA64 @ =gUnk_0812AA74
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080ACA64: .4byte gUnk_0812AA74

	thumb_func_start sub_080ACA68
sub_080ACA68: @ 0x080ACA68
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0xc
	bgt _080ACA82
	cmp r1, #0xa
	bge _080ACA86
	cmp r1, #6
	beq _080ACA86
	b _080ACAC0
_080ACA82:
	cmp r1, #0x1a
	bne _080ACAC0
_080ACA86:
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r1, [r4, #0x24]
	adds r0, r0, r1
	strh r0, [r4, #0x24]
	ldr r0, [r4, #0x4c]
	str r0, [r4, #0x54]
	adds r0, r4, #0
	bl sub_080ACB40
	cmp r0, #0
	beq _080ACAB0
	movs r0, #0
	b _080ACAB6
_080ACAB0:
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
_080ACAB6:
	strb r0, [r4, #0x15]
	movs r0, #0xd8
	bl SoundReq
	b _080ACAC4
_080ACAC0:
	bl DeleteThisEntity
_080ACAC4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080ACAC8
sub_080ACAC8: @ 0x080ACAC8
	push {lr}
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0x10
	strb r1, [r0, #0x15]
	ldr r1, _080ACAE8 @ =0x0000FFFC
	strh r1, [r0, #0x36]
	str r2, [r0, #0x54]
	movs r1, #7
	bl InitializeAnimation
	ldr r0, _080ACAEC @ =0x00000199
	bl SoundReq
	pop {pc}
	.align 2, 0
_080ACAE8: .4byte 0x0000FFFC
_080ACAEC: .4byte 0x00000199

	thumb_func_start sub_080ACAF0
sub_080ACAF0: @ 0x080ACAF0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AF090
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080ACB0C
	bl DeleteThisEntity
_080ACB0C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080ACB10
sub_080ACB10: @ 0x080ACB10
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AF090
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _080ACB22
	bl DeleteThisEntity
_080ACB22:
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080ACB90
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080ACB3C
	bl DeleteThisEntity
_080ACB3C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080ACB40
sub_080ACB40: @ 0x080ACB40
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x50]
	ldr r1, [r0, #0x50]
	ldr r3, [r2, #0x54]
	ldr r0, [r1, #0x64]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0x54]
	cmp r0, r2
	beq _080ACB5A
	ldr r0, [r0, #0x54]
	cmp r3, r0
	beq _080ACB86
_080ACB5A:
	ldr r1, [r1, #0x64]
	ldr r0, [r1, #0x20]
	ldr r0, [r0, #0x54]
	cmp r0, r2
	beq _080ACB6A
	ldr r0, [r0, #0x54]
	cmp r3, r0
	beq _080ACB86
_080ACB6A:
	ldr r0, [r1, #0x24]
	ldr r0, [r0, #0x54]
	cmp r0, r2
	beq _080ACB78
	ldr r0, [r0, #0x54]
	cmp r3, r0
	beq _080ACB86
_080ACB78:
	ldr r0, [r1, #0x28]
	ldr r0, [r0, #0x54]
	cmp r0, r2
	beq _080ACB8A
	ldr r0, [r0, #0x54]
	cmp r3, r0
	bne _080ACB8A
_080ACB86:
	movs r0, #0
	b _080ACB8C
_080ACB8A:
	movs r0, #1
_080ACB8C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080ACB90
sub_080ACB90: @ 0x080ACB90
	push {r4, lr}
	adds r2, r0, #0
	ldr r3, [r2, #0x50]
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	movs r4, #0x2e
	ldrsh r0, [r3, r4]
	cmp r1, r0
	bne _080ACBC6
	movs r0, #0x32
	ldrsh r1, [r2, r0]
	movs r4, #0x32
	ldrsh r0, [r3, r4]
	cmp r1, r0
	bgt _080ACBC6
	movs r0, #1
	strb r0, [r3, #0xf]
	adds r0, r2, #0
	movs r1, #0x1f
	movs r2, #0x40
	bl CreateFx
	ldr r0, _080ACBC8 @ =0x00000119
	bl EnqueueSFX
	bl DeleteThisEntity
_080ACBC6:
	pop {r4, pc}
	.align 2, 0
_080ACBC8: .4byte 0x00000119
