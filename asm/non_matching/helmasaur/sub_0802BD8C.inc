
	.syntax unified

	.text

	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802BD9C
	subs r0, #1
	strb r0, [r4, #0xe]
	b _0802BDDE
_0802BD9C:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0802BDCA
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x10
	bl sub_0804A024
	adds r1, r0, #0
	cmp r1, #0xff
	beq _0802BDCA
	adds r0, r4, #0
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r1, r0
	beq _0802BDCA
	adds r0, r4, #0
	bl sub_0802C058
	b _0802BDDE
_0802BDCA:
	adds r0, r4, #0
	bl sub_0802C020
	adds r1, r0, #0
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	beq _0802BDDE
	adds r0, r4, #0
	bl sub_0802C058
_0802BDDE:
	pop {r4, pc}

	.syntax divided
