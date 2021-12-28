	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0803EBB4
sub_0803EBB4: @ 0x0803EBB4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	subs r1, #0xa
	strb r1, [r0]
	movs r0, #1
	bl sub_08049DF4
	cmp r0, #0
	beq _0803EBE4
	ldr r0, _0803EC10 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl GetFacingDirection
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803E94C
_0803EBE4:
	adds r0, r4, #0
	bl sub_0803E9A4
	adds r0, r4, #0
	adds r0, #0x80
	ldrh r1, [r0]
	adds r0, #2
	ldrh r2, [r0]
	adds r0, r4, #0
	movs r3, #2
	bl sub_0806FCB8
	cmp r0, #0
	bne _0803EC14
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_0803E94C
	b _0803EC24
	.align 2, 0
_0803EC10: .4byte gUnk_020000B0
_0803EC14:
	adds r0, r4, #0
	bl sub_0803EF20
	cmp r0, #0
	bne _0803EC24
	adds r0, r4, #0
	bl sub_0803EEA4
_0803EC24:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803EC28
sub_0803EC28: @ 0x0803EC28
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803E9A4
	adds r1, r4, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	cmp r0, #0x1c
	bls _0803EC4A
	subs r0, #1
	strb r0, [r1]
_0803EC4A:
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803EC64
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r1, #3
	movs r0, #0
	strb r0, [r1]
_0803EC64:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803EC68
sub_0803EC68: @ 0x0803EC68
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #0xa
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803E9A4
	adds r1, r4, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	cmp r0, #0x27
	bhi _0803EC8C
	adds r0, #1
	strb r0, [r1]
	b _0803EC92
_0803EC8C:
	adds r0, r4, #0
	bl sub_0803EE8C
_0803EC92:
	pop {r4, pc}

	thumb_func_start sub_0803EC94
sub_0803EC94: @ 0x0803EC94
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #0xa
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803E9A4
	adds r5, r4, #0
	adds r5, #0x80
	ldrh r1, [r5]
	adds r6, r4, #0
	adds r6, #0x82
	ldrh r2, [r6]
	adds r0, r4, #0
	movs r3, #1
	bl sub_0806FCB8
	cmp r0, #0
	beq _0803ECD8
	ldrh r0, [r5]
	strh r0, [r4, #0x2e]
	ldrh r0, [r6]
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl sub_0803EE8C
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803E94C
	b _0803ED02
_0803ECD8:
	adds r0, r4, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803ED02
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	ldrh r2, [r5]
	ldrh r3, [r6]
	bl sub_080045D4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_0803E94C
	adds r0, r4, #0
	bl ProcessMovement
_0803ED02:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0803ED04
sub_0803ED04: @ 0x0803ED04
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	subs r1, #0xc
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0803E9A4
	adds r1, r4, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	subs r0, #4
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0803ED3C
	movs r0, #0
	strb r0, [r1]
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0xf
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x14]
	adds r1, #0x20
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_0803ED3C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803ED40
sub_0803ED40: @ 0x0803ED40
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803ED74
	movs r0, #7
	strb r0, [r2, #0xc]
	movs r0, #1
	strb r0, [r2, #0xe]
	ldr r1, _0803ED78 @ =gUnk_080D08C4
	ldrb r0, [r2, #0x14]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x7c
	strb r1, [r0]
	adds r1, r2, #0
	adds r1, #0x7f
	movs r0, #0xf6
	strb r0, [r1]
	adds r0, #0x65
	bl EnqueueSFX
_0803ED74:
	pop {pc}
	.align 2, 0
_0803ED78: .4byte gUnk_080D08C4

	thumb_func_start sub_0803ED7C
sub_0803ED7C: @ 0x0803ED7C
	push {lr}
	adds r2, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0803ED94
	adds r0, r2, #0
	bl UpdateAnimationSingleFrame
	b _0803EDD0
_0803ED94:
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	adds r1, r2, #0
	adds r1, #0x7f
	cmp r0, #0
	bne _0803EDAE
	movs r0, #2
	strb r0, [r2, #0xe]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0803EDAE:
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803EDC0
	adds r1, r2, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	adds r0, #5
	strb r0, [r1]
	b _0803EDD0
_0803EDC0:
	movs r0, #8
	strb r0, [r2, #0xc]
	movs r0, #0x1e
	strb r0, [r2, #0xe]
	movs r0, #8
	movs r1, #0
	bl InitScreenShake
_0803EDD0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803EDD4
sub_0803EDD4: @ 0x0803EDD4
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803EDE8
	movs r0, #9
	strb r0, [r1, #0xc]
_0803EDE8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803EDEC
sub_0803EDEC: @ 0x0803EDEC
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	subs r0, #2
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bhi _0803EE26
	movs r0, #0xa
	strb r0, [r2, #0xc]
	movs r0, #0x3c
	strb r0, [r2, #0xe]
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #3
	strb r0, [r2, #0x15]
	subs r1, #2
	movs r0, #0
	strb r0, [r1]
	adds r1, #3
	movs r0, #0xfe
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x10
	bl sub_0803E94C
	b _0803EE34
_0803EE26:
	cmp r0, #0x12
	bhi _0803EE34
	ldr r2, [r2, #0x54]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
_0803EE34:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803EE38
sub_0803EE38: @ 0x0803EE38
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0803EE60
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803EE88
	ldr r0, [r4, #0x54]
	ldrb r1, [r0, #0x10]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0, #0x10]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803E94C
	b _0803EE88
_0803EE60:
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #0xa
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803E9A4
	adds r1, r4, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x27
	bls _0803EE88
	adds r0, r4, #0
	bl sub_0803EE8C
_0803EE88:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803EE8C
sub_0803EE8C: @ 0x0803EE8C
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	adds r2, r0, #0
	adds r2, #0x7a
	movs r1, #0x1e
	strb r1, [r2]
	movs r1, #0
	bl sub_0803E94C
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803EEA4
sub_0803EEA4: @ 0x0803EEA4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0803EEF8
	adds r0, r4, #0
	movs r1, #0x4e
	bl sub_0803EF04
	cmp r0, #0
	beq _0803EEF8
	ldr r0, _0803EEF4 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0x12
	bl sub_0804A044
	adds r2, r0, #0
	cmp r2, #0xff
	beq _0803EEF8
	adds r1, r4, #0
	adds r1, #0x7a
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803EF00
	movs r0, #5
	strb r0, [r4, #0xc]
	strb r2, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803E94C
	movs r0, #1
	b _0803EF02
	.align 2, 0
_0803EEF4: .4byte gUnk_020000B0
_0803EEF8:
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #0x1e
	strb r0, [r1]
_0803EF00:
	movs r0, #0
_0803EF02:
	pop {r4, pc}

	thumb_func_start sub_0803EF04
sub_0803EF04: @ 0x0803EF04
	push {r4, lr}
	adds r3, r1, #0
	ldr r1, _0803EF1C @ =gUnk_020000B0
	ldr r2, [r1]
	movs r4, #0x2e
	ldrsh r1, [r2, r4]
	movs r4, #0x32
	ldrsh r2, [r2, r4]
	subs r2, #4
	bl sub_0806FCB8
	pop {r4, pc}
	.align 2, 0
_0803EF1C: .4byte gUnk_020000B0

	thumb_func_start sub_0803EF20
sub_0803EF20: @ 0x0803EF20
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r6, _0803EF5C @ =gUnk_03003D80
	ldr r4, [r6, #4]
	cmp r4, r6
	beq _0803EF6A
	ldr r7, _0803EF60 @ =gUnk_080D08C8
_0803EF2E:
	ldrb r0, [r4, #8]
	cmp r0, #8
	bne _0803EF64
	ldrb r0, [r4, #9]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r2, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	bl _call_via_r2
	cmp r0, #0
	beq _0803EF64
	movs r0, #2
	strb r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x78
	movs r0, #0xb4
	strh r0, [r1]
	adds r1, #3
	movs r0, #1
	strb r0, [r1]
	b _0803EF6C
	.align 2, 0
_0803EF5C: .4byte gUnk_03003D80
_0803EF60: .4byte gUnk_080D08C8
_0803EF64:
	ldr r4, [r4, #4]
	cmp r4, r6
	bne _0803EF2E
_0803EF6A:
	movs r0, #0
_0803EF6C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0803EF70
sub_0803EF70: @ 0x0803EF70
	movs r0, #0
	bx lr

	thumb_func_start sub_0803EF74
sub_0803EF74: @ 0x0803EF74
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r0, #0x32
	ldrsh r2, [r4, r0]
	adds r0, r5, #0
	movs r3, #0x50
	bl sub_0806FCB8
	cmp r0, #0
	beq _0803EFA8
	adds r0, r4, #0
	adds r1, r5, #0
	bl GetFacingDirection
	ldrb r1, [r4, #0x15]
	subs r1, r1, r0
	adds r1, #2
	movs r0, #0x1f
	ands r1, r0
	cmp r1, #4
	bhi _0803EFA8
	movs r0, #1
	b _0803EFAA
_0803EFA8:
	movs r0, #0
_0803EFAA:
	pop {r4, r5, pc}

	thumb_func_start sub_0803EFAC
sub_0803EFAC: @ 0x0803EFAC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r2, #0x50
	movs r3, #0x50
	bl EntityInRectRadius
	cmp r0, #0
	beq _0803EFD6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x1c
	bl sub_0804A044
	cmp r0, #0xff
	beq _0803EFD6
	ldrb r4, [r4, #0x15]
	cmp r0, r4
	bne _0803EFD6
	movs r0, #1
	b _0803EFD8
_0803EFD6:
	movs r0, #0
_0803EFD8:
	pop {r4, r5, pc}
	.align 2, 0
