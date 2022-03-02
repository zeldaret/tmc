	.syntax unified
	push {r4, lr}
	ldr r0, _080A72E8 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A72E4
	ldr r0, _080A72EC @ =gScreen
	ldr r1, _080A72F0 @ =gUnk_03001020
	movs r2, #0x7c
	bl MemCopy
	ldr r0, _080A72F4 @ =gPaletteBuffer
	ldr r1, _080A72F8 @ =gUnk_02024090
	movs r2, #0x80
	lsls r2, r2, #3
	bl MemCopy
	ldr r0, _080A72FC @ =gGFXSlots
	ldr r4, _080A7300 @ =gUnk_02032F14
	movs r2, #0x85
	lsls r2, r2, #2
	adds r1, r4, #0
	bl MemCopy
	ldr r0, _080A7304 @ =gPaletteList
	movs r2, #0x85
	lsls r2, r2, #2
	adds r1, r4, r2
	movs r2, #0x40
	bl MemCopy
	ldr r0, _080A7308 @ =gRoomControls
	adds r1, r4, #0
	subs r1, #0x38
	movs r2, #0x38
	bl MemCopy
	ldr r0, _080A730C @ =gUnk_03000420
	movs r2, #0x95
	lsls r2, r2, #2
	adds r1, r4, r2
	movs r2, #0x80
	lsls r2, r2, #1
	bl MemCopy
	ldr r0, _080A7310 @ =gActiveScriptInfo
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r1, r4, r2
	movs r2, #0xc
	bl MemCopy
	bl sub_0805E958
	adds r1, r4, #0
	subs r1, #0x54
	ldr r0, _080A7314 @ =gRoomTransition
	adds r0, #0x2f
	ldrb r0, [r0]
	strb r0, [r1, #0xd]
	ldr r0, _080A7318 @ =gPlayerState
	adds r0, #0x8b
	ldrb r0, [r0]
	strb r0, [r1, #0xc]
	ldr r0, _080A731C @ =gCurrentRoomProperties
	ldr r0, [r0]
	str r0, [r1, #0x10]
	ldr r0, _080A7320 @ =gMapBottom
	ldr r0, [r0]
	str r0, [r1, #0x14]
	ldr r0, _080A7324 @ =gMapTop
	ldr r0, [r0]
	str r0, [r1, #0x18]
	movs r0, #1
	strb r0, [r1]
_080A72E4:
	pop {r4, pc}
	.align 2, 0
_080A72E8: .4byte gFadeControl
_080A72EC: .4byte gScreen
_080A72F0: .4byte gUnk_03001020
_080A72F4: .4byte gPaletteBuffer
_080A72F8: .4byte gUnk_02024090
_080A72FC: .4byte gGFXSlots
_080A7300: .4byte gUnk_02032F14
_080A7304: .4byte gPaletteList
_080A7308: .4byte gRoomControls
_080A730C: .4byte gUnk_03000420
_080A7310: .4byte gActiveScriptInfo
_080A7314: .4byte gRoomTransition
_080A7318: .4byte gPlayerState
_080A731C: .4byte gCurrentRoomProperties
_080A7320: .4byte gMapBottom
_080A7324: .4byte gMapTop
	.syntax divided
