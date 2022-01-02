    .syntax unified
	push {lr}
	adds r2, r0, #0
	cmp r2, #5
	bhi _0801D116
	b _0801D12E
_0801D112:
	adds r0, r1, #0
	b _0801D12E
_0801D116:
	movs r1, #6
	ldr r0, _0801D130 @ =gPaletteList
	adds r0, #0x18
_0801D11C:
	ldrh r3, [r0, #2]
	cmp r2, r3
	beq _0801D112
	adds r0, #4
	adds r1, #1
	cmp r1, #0xf
	bls _0801D11C
	movs r0, #1
	rsbs r0, r0, #0
_0801D12E:
	pop {pc}
	.align 2, 0
_0801D130: .4byte gPaletteList
    .syntax divided
