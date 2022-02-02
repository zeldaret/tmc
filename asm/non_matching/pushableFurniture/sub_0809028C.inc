	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #0x83
	ldrb r0, [r4]
	movs r2, #0x30
	ands r2, r0
	movs r0, #0
	mov sb, r0
	strb r2, [r4]
	adds r0, r6, #0
	adds r0, #0x70
	ldrh r5, [r0]
	adds r7, r5, #0
	subs r7, #0x80
	adds r0, #2
	ldrh r3, [r0]
	movs r0, #0x80
	rsbs r0, r0, #0
	adds r0, r0, r3
	mov r8, r0
	cmp r1, #1
	bne _0809039A
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _080902D4
	adds r1, r3, #0
	subs r1, #0x7f
	movs r0, #0
	bl sub_08090480
	b _080902FE
_080902D4:
	mov r0, r8
	movs r1, #2
	bl GetTileType
	adds r1, r0, #0
	ldr r0, _080902EC @ =0x00000301
	cmp r1, r0
	beq _080902F0
	adds r0, #7
	cmp r1, r0
	beq _080902F6
	b _080902FE
	.align 2, 0
_080902EC: .4byte 0x00000301
_080902F0:
	ldrb r0, [r4]
	movs r1, #8
	b _080902FA
_080902F6:
	ldrb r0, [r4]
	movs r1, #2
_080902FA:
	orrs r0, r1
	strb r0, [r4]
_080902FE:
	adds r2, r6, #0
	adds r2, #0x83
	ldrb r1, [r2]
	movs r0, #0x2a
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _0809031E
	movs r0, #0
	adds r1, r7, #0
	bl sub_08090480
	movs r0, #0
	mov r1, r8
	bl sub_08090480
_0809031E:
	ldrb r1, [r4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809034E
	subs r4, r7, #1
	adds r0, r4, #0
	movs r1, #1
	bl GetTileType
	movs r1, #0xc0
	lsls r1, r1, #2
	cmp r0, r1
	bne _0809033C
	b _08090478
_0809033C:
	movs r0, #0
	adds r1, r4, #0
	bl sub_08090480
	subs r1, r7, #2
	movs r0, #2
	bl sub_08090480
	b _08090478
_0809034E:
	subs r0, r7, #1
	movs r1, #2
	bl GetTileType
	adds r1, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	beq _08090368
	adds r0, #8
	cmp r1, r0
	beq _0809036E
	b _08090376
_08090368:
	ldrb r1, [r4]
	movs r0, #4
	b _08090372
_0809036E:
	ldrb r1, [r4]
	movs r0, #1
_08090372:
	orrs r0, r1
	strb r0, [r4]
_08090376:
	ldrb r1, [r4]
	movs r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _08090478
	movs r0, #0x2a
	ands r0, r1
	cmp r0, #0
	bne _08090478
	movs r0, #0
	adds r1, r7, #0
	bl sub_08090480
	movs r0, #1
	mov r1, r8
	bl sub_08090480
	b _08090478
_0809039A:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080903AE
	adds r1, r5, #0
	subs r1, #0x81
	movs r0, #0
	bl sub_08090480
	b _080903DA
_080903AE:
	adds r0, r7, #0
	movs r1, #2
	bl GetTileType
	adds r1, r0, #0
	ldr r0, _080903C8 @ =0x00000302
	cmp r1, r0
	beq _080903CC
	adds r0, #4
	cmp r1, r0
	beq _080903D2
	b _080903DA
	.align 2, 0
_080903C8: .4byte 0x00000302
_080903CC:
	ldrb r0, [r4]
	movs r1, #4
	b _080903D6
_080903D2:
	ldrb r0, [r4]
	movs r1, #1
_080903D6:
	orrs r0, r1
	strb r0, [r4]
_080903DA:
	adds r2, r6, #0
	adds r2, #0x83
	ldrb r1, [r2]
	movs r0, #0x15
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _080903FA
	movs r0, #0
	adds r1, r7, #0
	bl sub_08090480
	movs r0, #0
	mov r1, r8
	bl sub_08090480
_080903FA:
	ldrb r1, [r4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0809042C
	mov r4, r8
	adds r4, #1
	adds r0, r4, #0
	movs r1, #1
	bl GetTileType
	movs r1, #0xc0
	lsls r1, r1, #2
	cmp r0, r1
	beq _08090478
	movs r0, #0
	adds r1, r4, #0
	bl sub_08090480
	mov r1, r8
	adds r1, #2
	movs r0, #1
	bl sub_08090480
	b _08090478
_0809042C:
	mov r0, r8
	adds r0, #1
	movs r1, #2
	bl GetTileType
	adds r1, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	beq _08090448
	adds r0, #6
	cmp r1, r0
	beq _0809044E
	b _08090456
_08090448:
	ldrb r1, [r4]
	movs r0, #8
	b _08090452
_0809044E:
	ldrb r1, [r4]
	movs r0, #2
_08090452:
	orrs r0, r1
	strb r0, [r4]
_08090456:
	ldrb r1, [r4]
	movs r0, #0x2a
	ands r0, r1
	cmp r0, #0
	beq _08090478
	movs r0, #0x15
	ands r0, r1
	cmp r0, #0
	bne _08090478
	movs r0, #2
	adds r1, r7, #0
	bl sub_08090480
	movs r0, #0
	mov r1, r8
	bl sub_08090480
_08090478:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.syntax divided
