    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08002632
	mov r8, r0
	ldr r1, _0801E9E4 @ =gUnk_08001DCC
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r7, [r0]
	movs r0, #0x67
	bl GetInventoryValue
	cmp r0, #0
	beq _0801EA56
	ldr r1, _0801E9E8 @ =gSave
	ldrb r0, [r7]
	ldrb r2, [r1, #8]
	cmp r0, r2
	bhi _0801EA56
	ldr r2, _0801E9EC @ =0x000001C1
	adds r0, r1, r2
	add r0, r8
	ldrb r5, [r0]
	subs r2, #0x80
	adds r0, r1, r2
	add r0, r8
	ldrb r6, [r0]
	adds r4, r6, r7
_0801E9D6:
	cmp r5, #0xf1
	beq _0801E9F6
	cmp r5, #0xf1
	bhi _0801E9F0
	cmp r5, #0
	beq _0801E9F6
	b _0801EA10
	.align 2, 0
_0801E9E4: .4byte gUnk_08001DCC
_0801E9E8: .4byte gSave
_0801E9EC: .4byte 0x000001C1
_0801E9F0:
	cmp r5, #0xf2
	beq _0801EA0A
	b _0801EA10
_0801E9F6:
	ldrb r5, [r4, #5]
	cmp r5, #0
	beq _0801EA10
	cmp r5, #0xff
	beq _0801EA14
	adds r0, r5, #0
	bl CheckKinstoneFused
	cmp r0, #0
	beq _0801EA10
_0801EA0A:
	adds r4, #1
	adds r6, #1
	ldrb r5, [r4, #5]
_0801EA10:
	cmp r5, #0xff
	bne _0801EA1C
_0801EA14:
	adds r0, r7, #0
	bl sub_0801EA74
	adds r5, r0, #0
_0801EA1C:
	cmp r5, #0
	beq _0801EA32
	cmp r5, #0xf2
	beq _0801E9D6
	adds r0, r5, #0
	bl CheckKinstoneFused
	cmp r0, #0
	beq _0801EA34
	movs r5, #0xf1
	b _0801E9D6
_0801EA32:
	movs r5, #0xf3
_0801EA34:
	ldr r1, _0801EA5C @ =gSave
	ldr r2, _0801EA60 @ =0x000001C1
	adds r0, r1, r2
	add r0, r8
	strb r5, [r0]
	subs r2, #0x80
	adds r0, r1, r2
	add r0, r8
	strb r6, [r0]
	bl Random
	ldrb r4, [r7, #1]
	movs r1, #0x64
	bl __modsi3
	cmp r4, r0
	bhi _0801EA64
_0801EA56:
	movs r0, #0
	b _0801EA6E
	.align 2, 0
_0801EA5C: .4byte gSave
_0801EA60: .4byte 0x000001C1
_0801EA64:
	subs r0, r5, #1
	cmp r0, #0x63
	bls _0801EA6C
	movs r5, #0
_0801EA6C:
	adds r0, r5, #0
_0801EA6E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
    .syntax divided
