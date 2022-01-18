.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080578C4
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0805791C @ =sub_080582F8
	adds r0, r4, #0
	movs r2, #0
	bl RegisterTransitionManager
_080578C4:
	ldr r0, _08057920 @ =gRoomControls
	ldrh r5, [r0]
	cmp r5, #0
	bne _08057960
	adds r0, r4, #0
	bl sub_08057E40
	cmp r0, #0
	beq _080578E8
	ldr r0, _08057924 @ =gRoomVars
	ldrb r6, [r0, #0x10]
	adds r1, r4, #0
	adds r1, #0x20
	ldrb r0, [r1]
	cmp r0, r6
	beq _080578E8
	strb r6, [r1]
	strb r5, [r4, #0xe]
_080578E8:
	lsls r1, r6, #6
	ldr r0, _08057928 @ =gUnk_081080A4
	adds r2, r1, r0
	ldrb r1, [r4, #0xe]
	cmp r1, #0
	bne _08057938
	ldr r1, _0805792C @ =gUnk_02034490
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r2]
	ldr r1, _08057930 @ =gGlobalGfxAndPalettes
	adds r0, r0, r1
	ldr r1, [r2, #4]
	movs r2, #0x80
	lsls r2, r2, #5
	bl LoadResourceAsync
	ldr r0, _08057934 @ =gUnk_081081E4
	adds r0, r6, r0
	ldrb r0, [r0]
	bl LoadPaletteGroup
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	b _08057960
	.align 2, 0
_0805791C: .4byte sub_08057E30
_08057920: .4byte gRoomControls
_08057924: .4byte gRoomVars
_08057928: .4byte gUnk_081080A4
_0805792C: .4byte gUnk_02034490
_08057930: .4byte gGlobalGfxAndPalettes
_08057934: .4byte gUnk_081081E4
_08057938:
	cmp r1, #0
	blt _08057960
	cmp r1, #7
	bgt _08057960
	lsls r1, r1, #3
	adds r1, r1, r2
	ldr r0, [r1]
	ldr r2, _08057964 @ =gGlobalGfxAndPalettes
	adds r0, r0, r2
	ldr r1, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #5
	bl LoadResourceAsync
	ldrb r0, [r4, #0xe]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xe]
	ldr r0, _08057968 @ =gUnk_02034490
	strb r1, [r0]
_08057960:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08057964: .4byte gGlobalGfxAndPalettes
_08057968: .4byte gUnk_02034490
.syntax divided
