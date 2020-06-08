	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0806B1CC
sub_0806B1CC: @ 0x0806B1CC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0806B21E
	cmp r0, #1
	bgt _0806B1E0
	cmp r0, #0
	beq _0806B1E6
	b _0806B25C
_0806B1E0:
	cmp r0, #2
	beq _0806B24E
	b _0806B25C
_0806B1E6:
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
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD50
	b _0806B25C
_0806B21E:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _0806B238
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0806F118
	b _0806B25C
_0806B238:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_080042B8
	b _0806B25C
_0806B24E:
	adds r0, r4, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _0806B25C
	movs r0, #1
	strb r0, [r4, #0xc]
_0806B25C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806B260
sub_0806B260: @ 0x0806B260
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r0, #0
	str r0, [r5, #0x14]
	movs r0, #0x46
	bl GetInventoryValue
	cmp r0, #0
	bne _0806B29E
	movs r0, #0x29
	bl GetProgressFlag
	cmp r0, #0
	beq _0806B286
	movs r4, #2
	movs r0, #1
	str r0, [r5, #0x14]
	b _0806B2A0
_0806B286:
	movs r0, #0x7a
	bl sub_0807CBD0
	cmp r0, #0
	bne _0806B29A
	movs r4, #0
	movs r0, #0x7a
	bl sub_0807CCB4
	b _0806B2A0
_0806B29A:
	movs r4, #1
	b _0806B2A0
_0806B29E:
	movs r4, #3
_0806B2A0:
	ldr r0, _0806B2B0 @ =gUnk_08112D48
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r6, #0
	bl TextboxNoOverlap
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806B2B0: .4byte gUnk_08112D48

	thumb_func_start sub_0806B2B4
sub_0806B2B4: @ 0x0806B2B4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xb3
	bl sub_0807CBD0
	cmp r0, #0
	beq _0806B314
	movs r0, #0
	bl sub_0807CC3C
	cmp r0, #0
	bne _0806B2D6
	movs r4, #1
	movs r0, #0
	bl sub_0807CD10
	b _0806B316
_0806B2D6:
	movs r0, #1
	bl sub_0807CC3C
	cmp r0, #0
	bne _0806B2EA
	movs r4, #2
	movs r0, #1
	bl sub_0807CD10
	b _0806B316
_0806B2EA:
	movs r0, #2
	bl sub_0807CC3C
	cmp r0, #0
	bne _0806B2FE
	movs r4, #3
	movs r0, #2
	bl sub_0807CD10
	b _0806B316
_0806B2FE:
	movs r4, #4
	movs r0, #0
	bl sub_0807CD8C
	movs r0, #1
	bl sub_0807CD8C
	movs r0, #2
	bl sub_0807CD8C
	b _0806B316
_0806B314:
	movs r4, #0
_0806B316:
	ldr r0, _0806B328 @ =gUnk_08112D50
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r5, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_0806B328: .4byte gUnk_08112D50

	thumb_func_start sub_0806B32C
sub_0806B32C: @ 0x0806B32C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _0806B352
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
	movs r1, #9
	bl LoadAnimation
	b _0806B358
_0806B352:
	adds r0, r2, #0
	bl sub_080042B8
_0806B358:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806B35C
sub_0806B35C: @ 0x0806B35C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	movs r2, #0x3f
	ands r2, r0
	adds r2, #0x13
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806FF60
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r2, #0x7f
	ands r2, r0
	adds r2, #0xb
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806FF60
	ldrb r2, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806FF60
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl sub_0806FF88
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl sub_0806FFD8
	adds r0, r4, #0
	bl sub_0807000C
	pop {r4, pc}
