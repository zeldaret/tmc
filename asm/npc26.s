	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08066978
sub_08066978: @ 0x08066978
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806699C
	ldr r0, _08066998 @ =gUnk_081106E0
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _080669B2
	.align 2, 0
_08066998: .4byte gUnk_081106E0
_0806699C:
	ldr r0, _080669B4 @ =gUnk_081106D4
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
_080669B2:
	pop {r4, pc}
	.align 2, 0
_080669B4: .4byte gUnk_081106D4

	thumb_func_start sub_080669B8
sub_080669B8: @ 0x080669B8
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
	adds r0, r4, #0
	movs r1, #2
	bl LoadAnimation
	adds r0, r4, #0
	bl sub_08078778
	pop {r4, pc}

	thumb_func_start sub_080669DC
sub_080669DC: @ 0x080669DC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x28
	movs r2, #0x28
	bl sub_0806ED9C
	adds r1, r0, #0
	cmp r1, #0
	bge _080669F2
	movs r1, #2
	b _08066A08
_080669F2:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _080669FE
	movs r0, #0x10
	strb r0, [r4, #0xf]
	b _08066A08
_080669FE:
	subs r0, #1
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
_08066A08:
	adds r0, r4, #0
	bl sub_0806F078
	cmp r0, #0
	bne _08066A18
	adds r0, r4, #0
	bl sub_080042B8
_08066A18:
	adds r2, r4, #0
	adds r2, #0x39
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08066A2C
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r2]
_08066A2C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08066A30
sub_08066A30: @ 0x08066A30
	movs r1, #1
	strb r1, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_08066A38
sub_08066A38: @ 0x08066A38
	push {lr}
	movs r3, #1
	movs r1, #1
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	subs r1, #5
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x18]
	bl sub_0807DD50
	pop {pc}

	thumb_func_start sub_08066A50
sub_08066A50: @ 0x08066A50
	push {lr}
	movs r1, #0
	bl sub_0807DD94
	pop {pc}
	.align 2, 0
