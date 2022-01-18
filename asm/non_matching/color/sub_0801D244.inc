    .syntax unified
	push {r4, r5, r6, lr}
	lsls r0, r0, #2
	ldr r1, _0801D288 @ =gPaletteList
	adds r2, r0, r1
	ldr r0, [r2]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #3
	bne _0801D284
	ldrb r0, [r2, #1]
	subs r0, #1
	strb r0, [r2, #1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801D284
	ldr r0, [r2]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x1c
	movs r5, #0
	movs r6, #0x10
	rsbs r6, r6, #0
	movs r4, #1
_0801D270:
	strb r5, [r2, #1]
	ldrb r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
	adds r2, #4
	subs r3, #1
	cmp r3, #0
	bne _0801D270
_0801D284:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801D288: .4byte gPaletteList
    .syntax divided
