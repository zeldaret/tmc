	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_08049DF4
	adds r1, r0, #0
	cmp r1, #0
	beq _080333B4
	ldrb r0, [r4, #0xa]
	movs r3, #0x38
	cmp r0, #0
	beq _0803337E
	movs r3, #0x48
_0803337E:
	adds r0, r4, #0
	adds r2, r3, #0
	bl EntityInRectRadius
	cmp r0, #0
	beq _080333B4
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080333AA
	ldr r0, _080333B0 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl GetFacingDirection
	adds r1, r0, #0
	adds r1, #2
	movs r0, #0x1c
	ands r1, r0
	lsrs r1, r1, #2
	ldrb r0, [r4, #0x14]
	cmp r0, r1
	bne _080333B4
_080333AA:
	movs r0, #1
	b _080333B6
	.align 2, 0
_080333B0: .4byte gUnk_020000B0
_080333B4:
	movs r0, #0
_080333B6:
	pop {r4, pc}
	.syntax divided
