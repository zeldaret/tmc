	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08065534
sub_08065534: @ 0x08065534
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08065558
	ldr r0, _08065554 @ =gUnk_0810FEC4
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
	b _08065568
	.align 2, 0
_08065554: .4byte gUnk_0810FEC4
_08065558:
	ldr r0, _0806556C @ =gUnk_0810FEBC
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
_08065568:
	pop {pc}
	.align 2, 0
_0806556C: .4byte gUnk_0810FEBC

	thumb_func_start sub_08065570
sub_08065570: @ 0x08065570
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08065598 @ =gUnk_0810FEB0
	bl sub_0806FDEC
	cmp r0, #0
	beq _08065596
	adds r0, r4, #0
	movs r1, #0
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_08078778
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xf]
	movs r0, #2
	strb r0, [r4, #0x14]
_08065596:
	pop {r4, pc}
	.align 2, 0
_08065598: .4byte gUnk_0810FEB0

	thumb_func_start sub_0806559C
sub_0806559C: @ 0x0806559C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _080655D0
	movs r0, #0
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0x20
	movs r2, #0x20
	bl sub_0806ED9C
	cmp r0, #0
	bge _080655C6
	ldrb r0, [r4, #0x14]
	adds r1, r0, #4
	b _080655CA
_080655C6:
	strb r0, [r4, #0x14]
	adds r1, r0, #0
_080655CA:
	adds r0, r4, #0
	adds r0, #0x58
	b _080655D6
_080655D0:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
_080655D6:
	ldrb r0, [r0]
	cmp r0, r1
	beq _080655E4
	adds r0, r4, #0
	bl UpdateSprite
	b _080655EA
_080655E4:
	adds r0, r4, #0
	bl sub_08004274
_080655EA:
	adds r0, r4, #0
	bl sub_0806ED78
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08065604
	movs r0, #0
	strb r0, [r1]
	bl sub_080791D0
_08065604:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08065608
sub_08065608: @ 0x08065608
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08065644 @ =gUnk_0810FEB0
	bl sub_0806FDEC
	cmp r0, #0
	beq _08065640
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
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
_08065640:
	pop {r4, pc}
	.align 2, 0
_08065644: .4byte gUnk_0810FEB0

	thumb_func_start sub_08065648
sub_08065648: @ 0x08065648
	push {lr}
	adds r2, r0, #0
	movs r0, #0x39
	adds r0, r0, r2
	mov ip, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08065676
	ldrb r0, [r2, #0xc]
	adds r3, r2, #0
	adds r3, #0x69
	movs r1, #0
	strb r0, [r3]
	movs r0, #4
	strb r0, [r2, #0xc]
	mov r0, ip
	strb r1, [r0]
	adds r0, r2, #0
	bl sub_0806F118
	b _0806567E
_08065676:
	adds r0, r2, #0
	movs r1, #0
	bl sub_0807DD94
_0806567E:
	pop {pc}

	thumb_func_start sub_08065680
sub_08065680: @ 0x08065680
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F148
	cmp r0, #0
	beq _080656A0
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r0, [r0]
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x6a
	ldrb r1, [r0]
	adds r0, r4, #0
	bl LoadAnimation
_080656A0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080656A4
sub_080656A4: @ 0x080656A4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080656D0 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _080656C8
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r0, [r0]
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x6a
	ldrb r1, [r0]
	adds r0, r4, #0
	bl LoadAnimation
_080656C8:
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}
	.align 2, 0
_080656D0: .4byte gTextBox

	thumb_func_start sub_080656D4
sub_080656D4: @ 0x080656D4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x39
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #2
	bne _080656FC
	ldrb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x69
	movs r1, #0
	strb r0, [r2]
	movs r0, #4
	strb r0, [r4, #0xc]
	strb r1, [r5]
	adds r0, r4, #0
	bl sub_0806F118
	b _08065738
_080656FC:
	cmp r0, #0
	beq _08065740
	movs r0, #0x37
	bl GetInventoryValue
	adds r2, r0, #0
	cmp r2, #0
	beq _0806571C
	ldr r1, _08065718 @ =gUnk_0800B41C
	adds r0, r4, #0
	bl sub_0807DAD0
	b _08065740
	.align 2, 0
_08065718: .4byte gUnk_0800B41C
_0806571C:
	ldrb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x69
	strb r0, [r1]
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r2, [r5]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldr r0, [r0, #4]
	adds r1, r4, #0
	bl TextboxNoOverlap
_08065738:
	adds r0, r4, #0
	bl sub_0806574C
	b _08065748
_08065740:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
_08065748:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0806574C
sub_0806574C: @ 0x0806574C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _0806577C @ =gLinkEntity
	bl sub_080045C4
	bl sub_0806F5A4
	adds r5, r4, #0
	adds r5, #0x58
	ldrb r2, [r5]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r2
	adds r1, r1, r0
	cmp r2, r1
	beq _08065772
	adds r0, r4, #0
	bl LoadAnimation
_08065772:
	ldrb r1, [r5]
	adds r0, r4, #0
	adds r0, #0x6a
	strb r1, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_0806577C: .4byte gLinkEntity

	thumb_func_start sub_08065780
sub_08065780: @ 0x08065780
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl Random
	movs r2, #6
	adds r1, r0, #0
	ands r1, r2
	strb r1, [r4, #0x14]
	ldr r2, _080657A4 @ =gUnk_0810FED8
	lsrs r0, r0, #8
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	strh r0, [r5, #0x10]
	pop {r4, r5, pc}
	.align 2, 0
_080657A4: .4byte gUnk_0810FED8

	thumb_func_start sub_080657A8
sub_080657A8: @ 0x080657A8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r2, #7
	ands r2, r0
	adds r2, #0xb
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

	thumb_func_start sub_080657DC
sub_080657DC: @ 0x080657DC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08065814
	ldr r1, _08065810 @ =gUnk_0810FEB0
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _0806581A
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
	movs r1, #6
	bl UpdateSprite
	b _0806581A
	.align 2, 0
_08065810: .4byte gUnk_0810FEB0
_08065814:
	adds r0, r4, #0
	bl sub_08004274
_0806581A:
	pop {r4, pc}
