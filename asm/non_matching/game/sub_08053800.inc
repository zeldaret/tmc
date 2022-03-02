	.syntax unified
	push {r4, r5, lr}
	ldr r0, _0805387C @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805387A
	ldr r1, _08053880 @ =gMenu
	ldrb r5, [r1, #0x10]
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #2
	ldr r0, _08053884 @ =gUnk_080FCCB4
	adds r4, r4, r0
	ldrh r0, [r4, #8]
	movs r2, #0
	strh r0, [r1, #8]
	movs r0, #0x1e
	strh r0, [r1, #0xa]
	ldrb r0, [r1, #0x10]
	adds r0, #1
	strb r0, [r1, #0x10]
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	strb r2, [r1, #7]
	adds r0, r5, #0
	adds r0, #0x8a
	bl LoadPaletteGroup
	adds r0, r5, #0
	adds r0, #0x3a
	bl LoadGfxGroup
	ldr r0, _08053888 @ =gBG1Buffer
	movs r1, #0x80
	lsls r1, r1, #4
	bl MemClear
	ldr r0, _0805388C @ =0x00000F01
	adds r5, r5, r0
	ldr r1, [r4]
	adds r0, r5, #0
	bl sub_0805F46C
	ldr r2, _08053890 @ =gScreen
	movs r0, #1
	strh r0, [r2, #0x1a]
	adds r1, r2, #0
	adds r1, #0x68
	movs r0, #0x10
	strh r0, [r1]
	ldrh r1, [r4, #4]
	adds r0, r2, #0
	adds r0, #0x58
	strh r1, [r0]
	ldrh r1, [r4, #6]
	adds r0, #4
	strh r1, [r0]
	ldrh r1, [r4, #0xa]
	movs r0, #4
	bl SetFade
_0805387A:
	pop {r4, r5, pc}
	.align 2, 0
_0805387C: .4byte gFadeControl
_08053880: .4byte gMenu
_08053884: .4byte gUnk_080FCCB4
_08053888: .4byte gBG1Buffer
_0805388C: .4byte 0x00000F01
_08053890: .4byte gScreen
	.syntax divided
