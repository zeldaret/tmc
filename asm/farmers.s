	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0806BBE4
sub_0806BBE4: @ 0x0806BBE4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806BC40
	ldrb r0, [r4, #0xa]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0806BC28 @ =gUnk_08113140
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _0806BC54
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xe]
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _0806BC2C
	movs r0, #6
	b _0806BC2E
	.align 2, 0
_0806BC28: .4byte gUnk_08113140
_0806BC2C:
	movs r0, #2
_0806BC2E:
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x14]
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_0806BC58
	adds r0, r4, #0
	bl sub_0807DD64
_0806BC40:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_08004274
_0806BC54:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806BC58
sub_0806BC58: @ 0x0806BC58
	push {lr}
	movs r1, #2
	bl sub_0805E3A0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806BC64
sub_0806BC64: @ 0x0806BC64
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r2, #0x7f
	ands r2, r0
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806FF60
	ldrb r2, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806FF60
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_0806FF88
	adds r0, r4, #0
	bl sub_0807000C
	pop {r4, pc}

	thumb_func_start sub_0806BC94
sub_0806BC94: @ 0x0806BC94
	push {lr}
	ldrb r3, [r0, #0x18]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1f
	rsbs r2, r3, #0
	orrs r2, r3
	asrs r2, r2, #0x1f
	movs r3, #8
	ands r2, r3
	ldr r1, [r1, #4]
	adds r1, r1, r2
	ldrb r2, [r0, #0x14]
	lsrs r2, r2, #1
	adds r1, r1, r2
	bl UpdateSprite
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806BCB8
sub_0806BCB8: @ 0x0806BCB8
	ldrb r1, [r0, #0xe]
	strb r1, [r0, #0x14]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806BCC0
sub_0806BCC0: @ 0x0806BCC0
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne _0806BCD0
	adds r0, r1, #0
	bl sub_0806F188
_0806BCD0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806BCD4
sub_0806BCD4: @ 0x0806BCD4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806BCE8
sub_0806BCE8: @ 0x0806BCE8
	push {lr}
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #3
	ldr r2, _0806BCF8 @ =gUnk_08113158
	adds r1, r1, r2
	bl sub_0806F1AC
	pop {pc}
	.align 2, 0
_0806BCF8: .4byte gUnk_08113158

	thumb_func_start sub_0806BCFC
sub_0806BCFC: @ 0x0806BCFC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806BD4C
	ldrb r0, [r4, #0xa]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0806BD48 @ =gUnk_08113140
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _0806BD52
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0806BC58
	adds r0, r4, #0
	movs r1, #3
	bl LoadAnimation
	b _0806BD52
	.align 2, 0
_0806BD48: .4byte gUnk_08113140
_0806BD4C:
	adds r0, r4, #0
	bl sub_080042B8
_0806BD52:
	pop {r4, pc}
