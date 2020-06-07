	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0806C2C4
sub_0806C2C4: @ 0x0806C2C4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0806C2FA
	cmp r0, #1
	bgt _0806C2D8
	cmp r0, #0
	beq _0806C2DE
	b _0806C350
_0806C2D8:
	cmp r0, #2
	beq _0806C342
	b _0806C350
_0806C2DE:
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xe]
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_0807DD50
	b _0806C350
_0806C2FA:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _0806C338
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	ldr r1, _0806C334 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r4, #0
	adds r1, #0x58
	ldrb r1, [r1]
	movs r2, #4
	rsbs r2, r2, #0
	ands r1, r2
	adds r1, r1, r0
	adds r0, r4, #0
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_0806F118
	b _0806C350
	.align 2, 0
_0806C334: .4byte gLinkEntity
_0806C338:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	b _0806C350
_0806C342:
	adds r0, r4, #0
	bl sub_0806F148
	cmp r0, #0
	beq _0806C350
	movs r0, #1
	strb r0, [r4, #0xc]
_0806C350:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806C354
sub_0806C354: @ 0x0806C354
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

	thumb_func_start sub_0806C36C
sub_0806C36C: @ 0x0806C36C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _0806C392
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
	movs r1, #6
	bl LoadAnimation
	b _0806C398
_0806C392:
	adds r0, r2, #0
	bl sub_080042B8
_0806C398:
	pop {pc}
	.align 2, 0
