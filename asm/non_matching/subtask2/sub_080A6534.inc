	.syntax unified
	push {r4, lr}
	bl sub_080A4D34
	movs r0, #4
	bl sub_080A4DB8
	bl sub_080A6290
	ldr r2, _080A6590 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _080A6594 @ =0x0000F7FF
	ands r0, r1
	movs r4, #0
	strh r0, [r2]
	ldr r0, _080A6598 @ =gPaletteBuffer
	adds r0, #0xa2
	ldrh r1, [r0]
	movs r0, #0
	bl SetColor
	ldr r1, _080A659C @ =gUnk_08128F4C
	ldr r0, _080A65A0 @ =gUI
	ldrb r0, [r0, #3]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	ldr r3, _080A65A4 @ =gSave
	ldrh r1, [r3, #0x20]
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #0x20]
	ldr r1, _080A65A8 @ =gMenu
	ldrh r0, [r1, #0x10]
	ands r2, r0
	strh r2, [r1, #0x12]
	strh r4, [r1, #0x10]
	movs r0, #0x3c
	strh r0, [r1, #8]
	movs r0, #1
	bl SetMenuType
	movs r0, #4
	movs r1, #8
	bl SetFade
	pop {r4, pc}
	.align 2, 0
_080A6590: .4byte gScreen
_080A6594: .4byte 0x0000F7FF
_080A6598: .4byte gPaletteBuffer
_080A659C: .4byte gUnk_08128F4C
_080A65A0: .4byte gUI
_080A65A4: .4byte gSave
_080A65A8: .4byte gMenu
	.syntax divided
