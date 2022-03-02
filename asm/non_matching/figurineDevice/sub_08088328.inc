	.syntax unified
.ifdef EU
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r4, #0x7f
_08087CC6:
	bl Random
	adds r5, r0, #0
	ands r5, r4
	cmp r5, #0x63
	bhi _08087CC6
	adds r0, r6, #0
	adds r0, #0x81
	ldrb r0, [r0]
	rsbs r0, r0, #0
	bl ModShells
	bl Random
	movs r1, #0x7f
	ands r1, r0
	adds r4, r1, #1
	adds r7, r4, #0
	adds r0, r6, #0
	bl sub_08088424
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r5, r0
	bhs _08087D34EU
	movs r5, #0
	movs r0, #0x7e
	adds r0, r0, r6
	mov r8, r0
_08087D02EU:
	cmp r5, #0
	bne _08087D72
	cmp r4, #0x88
	bls _08087D0C
	movs r4, #1
_08087D0C:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08088160
	cmp r0, #0
	beq _08087D2C
	ldr r0, _08087D28 @ =gUnk_02002B0E
	adds r1, r4, #0
	bl ReadBit
	cmp r0, #0
	bne _08087D2C
	movs r5, #1
	b _08087D2E
	.align 2, 0
_08087D28: .4byte gUnk_02002B0E
_08087D2C:
	adds r4, #1
_08087D2E:
	cmp r7, r4
	bne _08087D02EU
	b _08087D6E
_08087D34EU:
	movs r5, #1
	movs r0, #0x7e
	adds r0, r0, r6
	mov r8, r0
_08087D3C:
	cmp r5, #0
	beq _08087DA4
	cmp r4, #0x88
	bls _08087D46
	movs r4, #1
_08087D46:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08088160
	cmp r0, #0
	beq _08087D68
	ldr r0, _08087D64 @ =gUnk_02002B0E
	adds r1, r4, #0
	bl ReadBit
	cmp r0, #0
	beq _08087D68
	movs r5, #0
	b _08087D6A
	.align 2, 0
_08087D64: .4byte gUnk_02002B0E
_08087D68:
	adds r4, #1
_08087D6A:
	cmp r7, r4
	bne _08087D3C
_08087D6E:
	cmp r5, #0
	beq _08087DA4
_08087D72:
	ldr r0, _08087D94 @ =gSave
	adds r0, #0xb0
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x7c
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r0, [r0]
	cmp r1, r0
	beq _08087D98
	movs r0, #7
	bl SetRoomFlag
	b _08087DA4
	.align 2, 0
_08087D94: .4byte gSave
_08087D98:
	movs r0, #0x5f
	bl SetLocalFlag
	movs r0, #8
	bl SetRoomFlag
_08087DA4:
	mov r0, r8
	strb r4, [r0]
	ldr r0, [r6, #0x50]
	adds r0, #0x7e
	strb r4, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
.else
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r4, #0x7f
_08088332:
	bl Random
	adds r5, r0, #0
	ands r5, r4
	cmp r5, #0x63
	bhi _08088332
	adds r0, r6, #0
	adds r0, #0x81
	ldrb r0, [r0]
	rsbs r0, r0, #0
	bl ModShells
	bl Random
	movs r1, #0x7f
	ands r1, r0
	adds r4, r1, #1
	adds r7, r4, #0
	adds r0, r6, #0
	bl sub_08088424
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	bhs _080883A4
	movs r5, #0
	movs r0, #0x7d
	adds r0, r0, r6
	mov r8, r0
_08088372:
	cmp r5, #0
	bne _080883E2
	cmp r4, #0x88
	bls _0808837C
	movs r4, #1
_0808837C:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08088160
	cmp r0, #0
	beq _0808839C
	ldr r0, _08088398 @ =gUnk_02002B0E
	adds r1, r4, #0
	bl ReadBit
	cmp r0, #0
	bne _0808839C
	movs r5, #1
	b _0808839E
	.align 2, 0
_08088398: .4byte gUnk_02002B0E
_0808839C:
	adds r4, #1
_0808839E:
	cmp r7, r4
	bne _08088372
	b _080883DE
_080883A4:
	movs r5, #1
	movs r0, #0x7d
	adds r0, r0, r6
	mov r8, r0
_080883AC:
	cmp r5, #0
	beq _08088414
	cmp r4, #0x88
	bls _080883B6
	movs r4, #1
_080883B6:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08088160
	cmp r0, #0
	beq _080883D8
	ldr r0, _080883D4 @ =gUnk_02002B0E
	adds r1, r4, #0
	bl ReadBit
	cmp r0, #0
	beq _080883D8
	movs r5, #0
	b _080883DA
	.align 2, 0
_080883D4: .4byte gUnk_02002B0E
_080883D8:
	adds r4, #1
_080883DA:
	cmp r7, r4
	bne _080883AC
_080883DE:
	cmp r5, #0
	beq _08088414
_080883E2:
	ldr r0, _08088404 @ =gSave
	adds r0, #0xb0
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x80
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r0, [r0]
	cmp r1, r0
	beq _08088408
	movs r0, #7
	bl SetRoomFlag
	b _08088414
	.align 2, 0
_08088404: .4byte gSave
_08088408:
	movs r0, #0x5f
	bl SetLocalFlag
	movs r0, #8
	bl SetRoomFlag
_08088414:
	mov r0, r8
	strb r4, [r0]
	ldr r0, [r6, #0x50]
	adds r0, #0x7d
	strb r4, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
.endif
	.syntax divided
