	.syntax unified
	push {r4, r5, lr}
	ldr r0, _080A7468 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A73B4
	b _080A74BC
_080A73B4:
	bl DeleteAllEntities
	bl sub_0805E974
	ldr r1, _080A746C @ =gCurrentRoomProperties
	ldr r5, _080A7470 @ =gUnk_02032EC0
	ldr r0, [r5, #0x10]
	str r0, [r1]
	ldr r0, _080A7474 @ =gPlayerState
	ldrb r1, [r5, #0xc]
	adds r0, #0x8b
	strb r1, [r0]
	ldr r1, _080A7478 @ =gMapBottom
	ldr r0, [r5, #0x14]
	str r0, [r1]
	ldr r1, _080A747C @ =gMapTop
	ldr r0, [r5, #0x18]
	str r0, [r1]
	movs r1, #0xea
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r1, _080A7480 @ =gActiveScriptInfo
	movs r2, #0xc
	bl MemCopy
	movs r1, #0xaa
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r1, _080A7484 @ =gUnk_03000420
	movs r2, #0x80
	lsls r2, r2, #1
	bl MemCopy
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r1, _080A7488 @ =gPaletteList
	movs r2, #0x40
	bl MemCopy
	adds r0, r5, #0
	adds r0, #0x54
	ldr r1, _080A748C @ =gGFXSlots
	movs r2, #0x85
	lsls r2, r2, #2
	bl MemCopy
	adds r0, r5, #0
	adds r0, #0x1c
	ldr r4, _080A7490 @ =gRoomControls
	adds r1, r4, #0
	movs r2, #0x38
	bl MemCopy
	ldr r0, _080A7494 @ =gUnk_03001020
	ldr r1, _080A7498 @ =gScreen
	movs r2, #0x7c
	bl MemCopy
	ldrb r0, [r4, #4]
	bl GetFlagBankOffset
	ldr r4, _080A749C @ =gArea
	strh r0, [r4, #4]
	bl GetCurrentRoomInfo
	ldr r1, _080A74A0 @ =0x0000085C
	adds r4, r4, r1
	str r0, [r4]
	ldrb r0, [r5, #6]
	bl RestoreGameTask
	ldrb r1, [r5, #0xd]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bl sub_0801D000
	bl sub_080A74F4
	ldrh r1, [r5, #8]
	ldr r0, _080A74A4 @ =0x0000FFFF
	cmp r1, r0
	beq _080A74A8
	adds r0, r1, #0
	ldrh r1, [r5, #0xa]
	bl SetFade
	b _080A74AE
	.align 2, 0
_080A7468: .4byte gFadeControl
_080A746C: .4byte gCurrentRoomProperties
_080A7470: .4byte gUnk_02032EC0
_080A7474: .4byte gPlayerState
_080A7478: .4byte gMapBottom
_080A747C: .4byte gMapTop
_080A7480: .4byte gActiveScriptInfo
_080A7484: .4byte gUnk_03000420
_080A7488: .4byte gPaletteList
_080A748C: .4byte gGFXSlots
_080A7490: .4byte gRoomControls
_080A7494: .4byte gUnk_03001020
_080A7498: .4byte gScreen
_080A749C: .4byte gArea
_080A74A0: .4byte 0x0000085C
_080A74A4: .4byte 0x0000FFFF
_080A74A8:
	ldrh r0, [r5, #0xa]
	bl SetFadeInverted
_080A74AE:
	ldr r1, _080A74C0 @ =gUnk_02032EC0
	movs r2, #0
	movs r0, #4
	strb r0, [r1]
	ldr r0, _080A74C4 @ =gRoomTransition
	adds r0, #0x30
	strb r2, [r0]
_080A74BC:
	pop {r4, r5, pc}
	.align 2, 0
_080A74C0: .4byte gUnk_02032EC0
_080A74C4: .4byte gRoomTransition
	.syntax divided
