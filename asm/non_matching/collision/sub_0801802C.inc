    .syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldrb r0, [r4, #8]
	cmp r0, #1
	bne _08018058
	bl sub_08079F8C
	cmp r0, #0
	beq _08018090
	movs r0, #0x10
	eors r0, r6
	ldrb r1, [r5, #0x14]
	lsls r1, r1, #2
	subs r0, r0, r1
	adds r0, #5
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0xa
	bhi _08018090
	b _0801807A
_08018058:
	cmp r0, #8
	bne _08018086
	ldrb r0, [r4, #0x15]
	movs r1, #0x10
	eors r1, r0
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	subs r1, r1, r0
	adds r1, #5
	movs r0, #0x1f
	ands r1, r0
	cmp r1, #0xa
	bgt _08018090
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0
	strb r0, [r1]
_0801807A:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080180BC
	movs r0, #1
	b _080180AE
_08018086:
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0
	strb r0, [r1]
	b _080180AE
_08018090:
	adds r0, r4, #0
	adds r0, #0x40
	ldrb r0, [r0]
	ldr r1, _080180B4 @ =0x000011AA
	adds r0, r0, r1
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #2
	ldr r0, _080180B8 @ =gCollisionMtx
	adds r3, r3, r0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08018308
_080180AE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080180B4: .4byte 0x000011AA
_080180B8: .4byte gCollisionMtx
    .syntax divided