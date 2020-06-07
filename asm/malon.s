	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0806581C
sub_0806581C: @ 0x0806581C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08065840
	ldr r0, _0806583C @ =gUnk_0810FF64
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _0806585C
	.align 2, 0
_0806583C: .4byte gUnk_0810FF64
_08065840:
	ldr r1, _08065860 @ =gUnk_0810FF5C
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0806585C
	adds r0, r4, #0
	bl sub_0806ED78
_0806585C:
	pop {r4, pc}
	.align 2, 0
_08065860: .4byte gUnk_0810FF5C

	thumb_func_start sub_08065864
sub_08065864: @ 0x08065864
	push {lr}
	movs r3, #1
	movs r1, #1
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	subs r1, #5
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x18]
	movs r1, #0xc
	bl LoadAnimation
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08065880
sub_08065880: @ 0x08065880
	push {lr}
	bl sub_080042B8
	pop {pc}

	thumb_func_start sub_08065888
sub_08065888: @ 0x08065888
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
	movs r0, #4
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	adds r0, r4, #0
	bl sub_0807DD50
	pop {r4, pc}

	thumb_func_start sub_080658BC
sub_080658BC: @ 0x080658BC
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _080658F4
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	ldr r1, _080658F0 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r4, #0
	bl LoadAnimation
	adds r0, r4, #0
	bl sub_0806F118
	b _080658FC
	.align 2, 0
_080658F0: .4byte gLinkEntity
_080658F4:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
_080658FC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08065900
sub_08065900: @ 0x08065900
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F148
	cmp r0, #0
	beq _08065910
	movs r0, #1
	strb r0, [r4, #0xc]
_08065910:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08065914
sub_08065914: @ 0x08065914
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #7
	movs r1, #0x1f
	movs r2, #7
	bl sub_0805EB00
	adds r4, r0, #0
	cmp r4, #0
	beq _08065938
	movs r2, #0xc0
	lsls r2, r2, #0xd
	ldr r3, _0806595C @ =0xFFFF0000
	adds r0, r5, #0
	adds r1, r4, #0
	bl PositionRelative
	str r5, [r4, #0x50]
_08065938:
	movs r0, #7
	movs r1, #0x20
	movs r2, #7
	bl sub_0805EB00
	adds r4, r0, #0
	cmp r4, #0
	beq _08065958
	movs r2, #0xa0
	lsls r2, r2, #0xe
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0
	bl PositionRelative
	str r5, [r4, #0x50]
_08065958:
	pop {r4, r5, pc}
	.align 2, 0
_0806595C: .4byte 0xFFFF0000

	thumb_func_start sub_08065960
sub_08065960: @ 0x08065960
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _08065986
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
	movs r1, #0xc
	bl LoadAnimation
	b _0806598C
_08065986:
	adds r0, r2, #0
	bl sub_080042B8
_0806598C:
	pop {pc}
	.align 2, 0
