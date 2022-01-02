    .syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	movs r2, #0
	movs r3, #0
	ldr r1, _0801D37C @ =gPaletteList
_0801D356:
	mov r4, sp
	adds r0, r4, r2
	strb r2, [r0]
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bgt _0801D370
	cmp r0, #0
	blt _0801D370
	strb r3, [r1]
	strb r3, [r1, #1]
	strh r3, [r1, #2]
_0801D370:
	adds r1, #4
	adds r2, #1
	cmp r2, #0xf
	bls _0801D356
	movs r4, #6
	b _0801D390
	.align 2, 0
_0801D37C: .4byte gPaletteList
_0801D380:
	cmp r4, r1
	ble _0801D390
	mov r2, sp
	adds r0, r2, r4
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0801D48C
_0801D390:
	adds r0, r4, #1
	bl sub_0801D458
	adds r4, r0, #0
	cmp r4, #0
	beq _0801D3AC
	movs r0, #1
	bl FindFreeObjPalette
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801D380
_0801D3AC:
	movs r1, #0
	ldr r4, _0801D450 @ =gEntityLists
	mov ip, r4
_0801D3B2:
	lsls r0, r1, #3
	mov r2, ip
	adds r3, r0, r2
	adds r0, r3, #0
	ldr r3, [r3, #4]
	adds r5, r1, #1
	cmp r0, r3
	beq _0801D444
	movs r7, #0x10
	rsbs r7, r7, #0
	adds r4, r0, #0
	ldr r6, _0801D454 @ =gUnk_020000C0
_0801D3CA:
	ldrb r0, [r3, #8]
	cmp r0, #9
	beq _0801D43E
	adds r1, r3, #0
	adds r1, #0x28
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x7e
	bhi _0801D40C
	ldrb r1, [r1]
	lsls r1, r1, #6
	adds r1, r1, r6
	ldrb r0, [r1, #5]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r1, #5]
	ldrb r0, [r1, #0x15]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r1, #0x15]
	adds r2, r1, #0
	adds r2, #0x25
	ldrb r0, [r2]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r2]
	adds r1, #0x35
	ldrb r0, [r1]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r1]
_0801D40C:
	adds r1, r3, #0
	adds r1, #0x27
	ldrb r0, [r1]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r2, [r3, #0x1a]
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x1c
	add r0, sp
	ldrb r1, [r0]
	movs r0, #0xf
	ands r1, r0
	adds r0, r7, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1a]
	lsrs r1, r0, #4
	add r1, sp
	ldrb r2, [r1]
	lsls r2, r2, #4
	movs r1, #0xf
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x1a]
_0801D43E:
	ldr r3, [r3, #4]
	cmp r4, r3
	bne _0801D3CA
_0801D444:
	adds r1, r5, #0
	cmp r1, #8
	bls _0801D3B2
	add sp, #0x10
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801D450: .4byte gEntityLists
_0801D454: .4byte gUnk_020000C0
    .syntax divided
