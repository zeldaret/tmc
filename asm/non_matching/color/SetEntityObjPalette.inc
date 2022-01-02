    .syntax unified
    	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	cmp r3, #0
	bge _0801D1A8
	movs r3, #0
_0801D1A8:
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x7e
	bls _0801D1BE
	adds r0, r4, #0
	adds r0, #0x27
	strb r3, [r0]
_0801D1BE:
	movs r0, #0xf
	adds r1, r3, #0
	ands r1, r0
	ldrb r2, [r4, #0x1a]
	movs r5, #0x10
	rsbs r5, r5, #0
	adds r0, r5, #0
	ands r0, r2
	orrs r0, r1
	movs r2, #0xf
	adds r1, r3, #0
	ands r1, r2
	lsls r1, r1, #4
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1a]
	lsls r1, r3, #2
	ldr r0, _0801D22C @ =gPaletteList
	adds r4, r1, r0
	ldr r0, [r4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #4
	beq _0801D22A
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	ldr r0, [r4]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x1c
	ldrb r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r4]
	subs r3, #1
	cmp r3, #0
	beq _0801D22A
	movs r7, #0xf
	adds r6, r5, #0
	movs r5, #2
_0801D212:
	adds r4, #4
	lsls r2, r3, #4
	ldrb r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	orrs r0, r2
	ands r0, r6
	orrs r0, r5
	strb r0, [r4]
	subs r3, #1
	cmp r3, #0
	bne _0801D212
_0801D22A:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801D22C: .4byte gPaletteList
    .syntax divided
