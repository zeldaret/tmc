	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080590B6
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x60
	bl CheckLocalFlag
	cmp r0, #0
	bne _080590CC
	movs r0, #0x5f
	bl SetLocalFlag
	b _080590C8
_080590B6:
	movs r0, #0x60
	bl CheckLocalFlag
	cmp r0, #0
	beq _080590C8
	movs r0, #0x5f
	bl ClearLocalFlag
	movs r5, #1
_080590C8:
	cmp r5, #0
	beq _080590D8
_080590CC:
	ldr r0, _080590DC @ =gUnk_080F4B88
	bl LoadRoomEntityList
	adds r0, r4, #0
	bl DeleteManager
_080590D8:
	pop {r4, r5, pc}
	.align 2, 0
_080590DC: .4byte gUnk_080F4B88
	.syntax divided
