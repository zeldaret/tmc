	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08059844
	cmp r0, #0
	beq _080596BC
	adds r4, #0x20
	ldrb r0, [r4]
	cmp r0, #0
	beq _080596D8
	ldr r0, _080596B8 @ =gUnk_085A7320
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrb r2, [r4]
	bl sub_08059894
	ldrb r0, [r4]
	subs r0, #1
	b _080596D6
	.align 2, 0
_080596B8: .4byte gUnk_085A7320
_080596BC:
	adds r4, #0x20
	ldrb r0, [r4]
	cmp r0, #0x1f
	bhi _080596D8
	ldr r0, _080596DC @ =gUnk_085A7320
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrb r2, [r4]
	bl sub_08059894
	ldrb r0, [r4]
	adds r0, #1
_080596D6:
	strb r0, [r4]
_080596D8:
	pop {r4, pc}
	.align 2, 0
_080596DC: .4byte gUnk_085A7320
	.syntax divided
