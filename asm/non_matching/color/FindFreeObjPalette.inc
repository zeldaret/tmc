    .syntax unified
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r2, #6
	ldr r0, _0801D154 @ =gPaletteList
	adds r3, r0, #0
	adds r3, #0x18
_0801D142:
	ldrb r0, [r3]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bne _0801D158
	adds r1, #1
	cmp r4, r1
	bhi _0801D15A
	b _0801D180
	.align 2, 0
_0801D154: .4byte gPaletteList
_0801D158:
	movs r1, #0
_0801D15A:
	adds r3, #4
	adds r2, #1
	cmp r2, #0xf
	bls _0801D142
	movs r1, #0
	movs r2, #6
	ldr r0, _0801D188 @ =gPaletteList
	adds r3, r0, #0
	adds r3, #0x18
_0801D16C:
	ldrb r0, [r3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bgt _0801D18C
	cmp r0, #0
	blt _0801D18C
	adds r1, #1
	cmp r4, r1
	bhi _0801D18E
_0801D180:
	subs r0, r1, #1
	subs r0, r2, r0
	b _0801D19A
	.align 2, 0
_0801D188: .4byte gPaletteList
_0801D18C:
	movs r1, #0
_0801D18E:
	adds r3, #4
	adds r2, #1
	cmp r2, #0xf
	bls _0801D16C
	movs r0, #1
	rsbs r0, r0, #0
_0801D19A:
	pop {r4, pc}
    .syntax divided
