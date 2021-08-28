	.syntax unified
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	bne _080590F6
	movs r0, #1
	strb r0, [r1, #0xc]
	adds r0, r1, #0
	movs r1, #6
	bl sub_0805E3A0
_080590F6:
	movs r0, #0x6c
	bl CheckLocalFlag
	cmp r0, #0
	beq _0805911A
	movs r0, #0x4b
	bl CheckLocalFlag
	cmp r0, #0
	beq _08059112
	movs r0, #0x4a
	bl SetLocalFlag
	b _08059120
_08059112:
	movs r0, #0x4a
	bl ClearLocalFlag
	b _08059120
_0805911A:
	movs r0, #0x4a
	bl ClearLocalFlag
_08059120:
	pop {pc}
	.align 2, 0
	.syntax divided
