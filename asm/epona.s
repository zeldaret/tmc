	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08065990
sub_08065990: @ 0x08065990
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080659B4 @ =gUnk_0811006C
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08065A64
	adds r0, r4, #0
	bl sub_0806ED78
	pop {r4, pc}
	.align 2, 0
_080659B4: .4byte gUnk_0811006C

	thumb_func_start sub_080659B8
sub_080659B8: @ 0x080659B8
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	movs r0, #6
	strb r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x69
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
	adds r0, r4, #0
	bl LoadAnimation
	pop {r4, pc}

	thumb_func_start sub_080659F0
sub_080659F0: @ 0x080659F0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_08065AA4
	pop {r4, pc}

	thumb_func_start sub_08065A00
sub_08065A00: @ 0x08065A00
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_08065AA4
	pop {r4, pc}

	thumb_func_start sub_08065A10
sub_08065A10: @ 0x08065A10
	push {lr}
	adds r2, r0, #0
	ldr r0, _08065A30 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _08065A2E
	movs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x14]
	lsrs r1, r1, #1
	adds r0, r2, #0
	bl LoadAnimation
_08065A2E:
	pop {pc}
	.align 2, 0
_08065A30: .4byte gTextBox

	thumb_func_start sub_08065A34
sub_08065A34: @ 0x08065A34
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _08065A4E
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
	adds r0, r4, #0
	bl LoadAnimation
_08065A4E:
	pop {r4, pc}

	thumb_func_start sub_08065A50
sub_08065A50: @ 0x08065A50
	push {lr}
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #3
	ldr r2, _08065A60 @ =gUnk_08110080
	adds r1, r1, r2
	bl sub_0806F1AC
	pop {pc}
	.align 2, 0
_08065A60: .4byte gUnk_08110080

	thumb_func_start sub_08065A64
sub_08065A64: @ 0x08065A64
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08065A8C @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	rsbs r0, r0, #0
	lsrs r5, r0, #0x1f
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r0, [r0]
	cmp r5, r0
	beq _08065A9C
	cmp r5, #0
	bne _08065A90
	adds r0, r4, #0
	bl sub_08078778
	b _08065A9C
	.align 2, 0
_08065A8C: .4byte gLinkState
_08065A90:
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_080787A8
_08065A9C:
	adds r0, r4, #0
	adds r0, #0x69
	strb r5, [r0]
	pop {r4, r5, pc}

	thumb_func_start sub_08065AA4
sub_08065AA4: @ 0x08065AA4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x39
	movs r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #0
	beq _08065B18
	ldr r0, _08065AD0 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08065B00
	cmp r2, #2
	bne _08065AD4
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0806F118
	b _08065AE6
	.align 2, 0
_08065AD0: .4byte gLinkState
_08065AD4:
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_08065A50
_08065AE6:
	ldr r1, _08065AFC @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r4, #0
	bl LoadAnimation
	b _08065B0A
	.align 2, 0
_08065AFC: .4byte gLinkEntity
_08065B00:
	adds r0, r4, #0
	bl sub_08065A50
	bl sub_080791D0
_08065B0A:
	movs r0, #0xd3
	bl PlaySFX
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	strb r0, [r1]
_08065B18:
	pop {r4, pc}
	.align 2, 0
	
	thumb_func_start sub_08065B1C
sub_08065B1C: @ 0x08065B1C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _08065B42
	adds r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	adds r0, r2, #0
	movs r1, #7
	bl LoadAnimation
	b _08065B48
_08065B42:
	adds r0, r2, #0
	bl sub_080042B8
_08065B48:
	pop {pc}
	.align 2, 0