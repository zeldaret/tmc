    .syntax unified
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, _0801D2F8 @ =gUsedPalettes
	adds r4, r1, #0
	adds r4, #0x10
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	cmp r3, #5
	bls _0801D33C
	cmp r3, #0x15
	bne _0801D300
	ldr r2, _0801D2FC @ =gPaletteBuffer
	adds r0, r2, #0
	adds r0, #0x78
	ldrh r0, [r0]
	lsls r1, r4, #5
	adds r1, r1, r2
	movs r2, #0x20
	bl MemFill16
	b _0801D33C
	.align 2, 0
_0801D2F8: .4byte gUsedPalettes
_0801D2FC: .4byte gPaletteBuffer
_0801D300:
	cmp r3, #0x14
	bhi _0801D31C
	subs r0, r3, #6
	lsls r0, r0, #5
	ldr r1, _0801D318 @ =gPaletteBuffer
	adds r0, r0, r1
	adds r1, r4, #0
	movs r2, #1
	bl LoadPalettes
	b _0801D33C
	.align 2, 0
_0801D318: .4byte gPaletteBuffer
_0801D31C:
	ldr r1, _0801D340 @ =gUnk_08133368
	adds r0, r3, #0
	subs r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsrs r2, r0, #0x18
	movs r1, #0xf
	ands r2, r1
	ldr r1, _0801D344 @ =0x00FFFFFF
	ands r0, r1
	ldr r1, _0801D348 @ =gGlobalGfxAndPalettes
	adds r0, r0, r1
	adds r1, r4, #0
	bl LoadPalettes
_0801D33C:
	pop {r4, pc}
	.align 2, 0
_0801D340: .4byte gUnk_08133368
_0801D344: .4byte 0x00FFFFFF
_0801D348: .4byte gGlobalGfxAndPalettes
    .syntax divided
