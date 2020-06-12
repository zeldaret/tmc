	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08066FD8
sub_08066FD8: @ 0x08066FD8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	bne _08066FE8
	bl sub_0805E780
_08066FE8:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _08067030
	cmp r0, #1
	bgt _08066FF8
	cmp r0, #0
	beq _08066FFE
	b _0806707C
_08066FF8:
	cmp r0, #2
	beq _0806706E
	b _0806707C
_08066FFE:
	ldr r1, _0806702C @ =gUnk_08110C00
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _0806707C
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD50
	b _0806707C
	.align 2, 0
_0806702C: .4byte gUnk_08110C00
_08067030:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _08067064
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	ldr r1, _08067060 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r1, #4
	adds r0, r4, #0
	bl LoadAnimation
	adds r0, r4, #0
	bl sub_0806F118
	b _0806707C
	.align 2, 0
_08067060: .4byte gLinkEntity
_08067064:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	b _0806707C
_0806706E:
	adds r0, r4, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _0806707C
	movs r0, #1
	strb r0, [r4, #0xc]
_0806707C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08067080
sub_08067080: @ 0x08067080
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r2, [r0]
	movs r0, #0x81
	rsbs r0, r0, #0
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
	.align 2, 0

	thumb_func_start sub_080670B4
sub_080670B4: @ 0x080670B4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r0, #0x11
	bl GetInventoryValue
	cmp r0, #0
	bne _080670D0
	movs r0, #0x15
	bl CheckGlobalFlag
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
_080670D0:
	ldr r0, _080670E0 @ =gUnk_08110C0C
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r5, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_080670E0: .4byte gUnk_08110C0C

	thumb_func_start sub_080670E4
sub_080670E4: @ 0x080670E4
	push {lr}
	ldr r1, _080670F8 @ =gUnk_02002A40
	ldrb r1, [r1, #8]
	lsls r1, r1, #3
	ldr r2, _080670FC @ =gUnk_08110C10
	adds r1, r1, r2
	bl sub_0806F1AC
	pop {pc}
	.align 2, 0
_080670F8: .4byte gUnk_02002A40
_080670FC: .4byte gUnk_08110C10

	thumb_func_start sub_08067100
sub_08067100: @ 0x08067100
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, pc}

	thumb_func_start sub_08067118
sub_08067118: @ 0x08067118
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08067150
	ldr r1, _0806714C @ =gUnk_08110C00
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _08067156
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
	b _08067156
	.align 2, 0
_0806714C: .4byte gUnk_08110C00
_08067150:
	adds r0, r4, #0
	bl sub_08004274
_08067156:
	pop {r4, pc}
