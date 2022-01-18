    .syntax unified
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E82C
	adds r0, r4, #0
	subs r0, #0x65
	cmp r0, #0x10
	bhi _0801E790
	adds r0, r4, #0
	bl sub_0801E8B0
	adds r1, r0, #0
	cmp r1, #0
	bge _0801E76E
	movs r1, #0
	ldr r0, _0801E794 @ =gSave
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r2, r0, r3
	ldrb r0, [r2]
	cmp r0, #0
	beq _0801E76E
_0801E764:
	adds r1, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801E764
_0801E76E:
	cmp r1, #0x11
	bhi _0801E790
	ldr r2, _0801E794 @ =gSave
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r0, r2, r3
	adds r0, r1, r0
	strb r4, [r0]
	adds r3, #0x13
	adds r0, r2, r3
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	cmp r0, #0x63
	ble _0801E78E
	movs r0, #0x63
_0801E78E:
	strb r0, [r1]
_0801E790:
	pop {r4, pc}
	.align 2, 0
_0801E794: .4byte gSave
    .syntax divided
