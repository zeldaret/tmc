.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _080579F0 @ =gUnk_081081E4
	adds r0, r4, r0
	ldrb r0, [r0]
	bl LoadPaletteGroup
	lsls r1, r4, #6
	ldr r0, _080579F4 @ =gUnk_081080A4
	adds r1, r1, r0
	movs r3, #0
	ldr r2, _080579F8 @ =0x040000D4
	ldr r6, _080579FC @ =gGlobalGfxAndPalettes
	ldr r5, _08057A00 @ =0x84000400
_080579D4:
	ldr r0, [r1]
	adds r0, r0, r6
	str r0, [r2]
	ldr r0, [r1, #4]
	str r0, [r2, #4]
	str r5, [r2, #8]
	ldr r0, [r2, #8]
	adds r3, #1
	adds r1, #8
	cmp r3, #7
	bls _080579D4
	ldr r0, _08057A04 @ =gRoomVars
	strb r4, [r0, #0x10]
	pop {r4, r5, r6, pc}
	.align 2, 0
_080579F0: .4byte gUnk_081081E4
_080579F4: .4byte gUnk_081080A4
_080579F8: .4byte 0x040000D4
_080579FC: .4byte gGlobalGfxAndPalettes
_08057A00: .4byte 0x84000400
_08057A04: .4byte gRoomVars
.syntax divided
