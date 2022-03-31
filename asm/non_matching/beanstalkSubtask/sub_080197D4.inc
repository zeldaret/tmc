	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0x80
	lsls r5, r5, #0x18
_080197DC:
	ldr r3, [r4, #4]
	cmp r3, #0
	beq _08019824
	ldr r1, [r4]
	ldr r0, _08019808 @ =0x7FFFFFFF
	ands r1, r0
	ldr r0, _0801980C @ =gMapData
	adds r1, r1, r0
	ldr r2, [r4, #8]
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	beq _0801981A
	lsrs r0, r3, #0x18
	cmp r0, #6
	bne _08019810
	adds r0, r1, #0
	adds r1, r3, #0
	bl LZ77UnCompVram
	b _0801982E
	.align 2, 0
_08019808: .4byte 0x7FFFFFFF
_0801980C: .4byte gMapData
_08019810:
	adds r0, r1, #0
	adds r1, r3, #0
	bl LZ77UnCompWram
	b _0801982E
_0801981A:
	adds r0, r1, #0
	adds r1, r3, #0
	bl MemCopy
	b _0801982E
_08019824:
	ldrh r0, [r4]
	bl LoadPaletteGroup
	bl sub_080533CC
_0801982E:
	adds r4, #0xc
	adds r0, r4, #0
	subs r0, #0xc
	ldr r0, [r0]
	ands r0, r5
	cmp r0, #0
	bne _080197DC
	pop {r4, r5, pc}
	.align 2, 0
	.syntax divided
