	.include "asm/macros.inc"
	
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CutsceneMain_Init
CutsceneMain_Init: @ 0x08053590
	push {lr}
	ldr r1, _080535A4 @ =gUnk_080FCBB4
	ldr r0, _080535A8 @ =gMenu
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080535A4: .4byte gUnk_080FCBB4
_080535A8: .4byte gMenu

	thumb_func_start sub_080535AC
sub_080535AC: @ 0x080535AC
	push {lr}
	ldr r2, _080535DC @ =gMenu
	movs r1, #1
	strb r1, [r2, #6]
	movs r0, #0x78
	strh r0, [r2, #8]
	ldr r0, _080535E0 @ =gUnk_02032EC0
	strb r1, [r0, #6]
	ldr r0, _080535E4 @ =gUpdateVisibleTiles
	strb r1, [r0]
	ldr r2, _080535E8 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _080535EC @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _080535F0 @ =gUnk_080FCB94
	bl LoadRoomEntityList
	movs r0, #6
	movs r1, #8
	bl DoFade
	pop {pc}
	.align 2, 0
_080535DC: .4byte gMenu
_080535E0: .4byte gUnk_02032EC0
_080535E4: .4byte gUpdateVisibleTiles
_080535E8: .4byte gScreen
_080535EC: .4byte 0x0000FEFF
_080535F0: .4byte gUnk_080FCB94

	thumb_func_start sub_080535F4
sub_080535F4: @ 0x080535F4
	push {lr}
	ldr r0, _0805360C @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053608
	bl ResetSystemPriority
	ldr r1, _08053610 @ =gMenu
	movs r0, #2
	strb r0, [r1, #6]
_08053608:
	pop {pc}
	.align 2, 0
_0805360C: .4byte gFadeControl
_08053610: .4byte gMenu

	thumb_func_start nullsub_481
nullsub_481: @ 0x08053614
	bx lr
	.align 2, 0

	thumb_func_start sub_08053618
sub_08053618: @ 0x08053618
	push {lr}
	ldr r1, _08053630 @ =gMenu
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805362C
	bl sub_08052004
_0805362C:
	pop {pc}
	.align 2, 0
_08053630: .4byte gMenu

	thumb_func_start sub_08053634
sub_08053634: @ 0x08053634
	push {lr}
	ldr r1, _08053644 @ =gUnk_02032EC0
	movs r0, #3
	strb r0, [r1]
	bl MessageInitialize
	pop {pc}
	.align 2, 0
_08053644: .4byte gUnk_02032EC0

	thumb_func_start sub_08053648
sub_08053648: @ 0x08053648
	push {lr}
	movs r0, #0x2d
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _08053674
	ldr r0, _08053678 @ =gRoomControls
	movs r3, #0xb4
	lsls r3, r3, #2
	adds r1, r3, #0
	ldrh r3, [r0, #6]
	adds r1, r1, r3
	strh r1, [r2, #0x2e]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r1, r3, #0
	ldrh r0, [r0, #8]
	adds r1, r1, r0
	strh r1, [r2, #0x32]
_08053674:
	pop {pc}
	.align 2, 0
_08053678: .4byte gRoomControls

	thumb_func_start sub_0805367C
sub_0805367C: @ 0x0805367C
	ldr r1, _08053688 @ =gMenu
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	bx lr
	.align 2, 0
_08053688: .4byte gMenu

	thumb_func_start sub_0805368C
sub_0805368C: @ 0x0805368C
	push {lr}
	movs r0, #6
	movs r1, #0x5d
	movs r2, #6
	bl FindEntityByID
	cmp r0, #0
	beq _080536A6
	bl DeleteEntity
	movs r0, #0xf0
	bl SoundReq
_080536A6:
	pop {pc}

	thumb_func_start sub_080536A8
sub_080536A8: @ 0x080536A8
	push {lr}
	movs r0, #5
	movs r1, #5
	movs r2, #4
	movs r3, #0x10
	bl sub_080A71C4
	pop {pc}

	thumb_func_start sub_080536B8
sub_080536B8: @ 0x080536B8
	push {lr}
	movs r0, #5
	movs r1, #3
	movs r2, #4
	movs r3, #4
	bl sub_080A71C4
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #5
	bl DoFade
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080536D4
sub_080536D4: @ 0x080536D4
	push {lr}
	ldr r1, _080536E8 @ =gUnk_080FCCFC
	ldr r0, _080536EC @ =gMenu
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080536E8: .4byte gUnk_080FCCFC
_080536EC: .4byte gMenu

	thumb_func_start sub_080536F0
sub_080536F0: @ 0x080536F0
	push {lr}
	ldr r1, _08053704 @ =gUnk_080FCD38
	ldr r0, _08053708 @ =gMenu
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08053704: .4byte gUnk_080FCD38
_08053708: .4byte gMenu

	thumb_func_start sub_0805370C
sub_0805370C: @ 0x0805370C
	push {lr}
	ldr r1, _08053730 @ =gMenu
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	ldr r1, _08053734 @ =gUpdateVisibleTiles
	movs r0, #1
	strb r0, [r1]
	bl sub_08051FF0
	ldr r0, _08053738 @ =gUnk_080FCC54
	bl LoadRoomEntityList
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	pop {pc}
	.align 2, 0
_08053730: .4byte gMenu
_08053734: .4byte gUpdateVisibleTiles
_08053738: .4byte gUnk_080FCC54

	thumb_func_start sub_0805373C
sub_0805373C: @ 0x0805373C
	push {lr}
	ldr r1, _08053750 @ =gUnk_080FCD40
	ldr r0, _08053754 @ =gMenu
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08053750: .4byte gUnk_080FCD40
_08053754: .4byte gMenu

	thumb_func_start sub_08053758
sub_08053758: @ 0x08053758
	push {r4, lr}
	ldr r1, _080537DC @ =gMenu
	movs r2, #0
	movs r3, #1
	strb r3, [r1, #6]
	movs r4, #0
	movs r0, #0x78
	strh r0, [r1, #8]
	movs r0, #0x1e
	strh r0, [r1, #0xa]
	strb r4, [r1, #0x10]
	ldr r0, _080537E0 @ =gUnk_02032EC0
	strb r3, [r0, #6]
	ldr r0, _080537E4 @ =gUnk_02025EB0
	str r2, [r0]
	ldr r0, _080537E8 @ =gUnk_0200B650
	str r2, [r0]
	ldr r0, _080537EC @ =gRoomControls
	str r2, [r0, #0x30]
	strh r2, [r0, #0xc]
	strh r2, [r0, #0xa]
	bl sub_0801B170
	movs r0, #0
	bl DispReset
	ldr r2, _080537F0 @ =gScreen
	movs r0, #0x99
	lsls r0, r0, #6
	strh r0, [r2]
	adds r1, r2, #0
	adds r1, #0x66
	ldr r0, _080537F4 @ =0x00002244
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	subs r1, #8
	movs r0, #0x1f
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x3f
	strh r0, [r1]
	subs r1, #0xa
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x60
	strh r0, [r1]
	ldr r0, _080537F8 @ =0x00001C4E
	strh r0, [r2, #0x14]
	ldr r0, _080537FC @ =0x00001DC1
	strh r0, [r2, #0x20]
	movs r0, #0xf
	bl SoundReq
	bl ResetSystemPriority
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #5
	bl DoFade
	pop {r4, pc}
	.align 2, 0
_080537DC: .4byte gMenu
_080537E0: .4byte gUnk_02032EC0
_080537E4: .4byte gUnk_02025EB0
_080537E8: .4byte gUnk_0200B650
_080537EC: .4byte gRoomControls
_080537F0: .4byte gScreen
_080537F4: .4byte 0x00002244
_080537F8: .4byte 0x00001C4E
_080537FC: .4byte 0x00001DC1

	thumb_func_start sub_08053800
sub_08053800: @ 0x08053800
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
	bl DoFade
_0805387A:
	pop {r4, r5, pc}
	.align 2, 0
_0805387C: .4byte gFadeControl
_08053880: .4byte gMenu
_08053884: .4byte gUnk_080FCCB4
_08053888: .4byte gBG1Buffer
_0805388C: .4byte 0x00000F01
_08053890: .4byte gScreen

	thumb_func_start sub_08053894
sub_08053894: @ 0x08053894
	push {r4, lr}
	ldr r0, _080538B4 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _080538F8
	ldr r1, _080538B8 @ =gMenu
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	ldrh r0, [r1, #0xa]
	adds r4, r1, #0
	cmp r0, #0
	beq _080538BC
	subs r0, #1
	strh r0, [r4, #0xa]
	b _080538E4
	.align 2, 0
_080538B4: .4byte gFadeControl
_080538B8: .4byte gMenu
_080538BC:
	ldr r0, _080538FC @ =gRoomTransition
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080538E4
	ldrb r1, [r4, #7]
	cmp r1, #0xf
	bhi _080538E4
	adds r1, #1
	strb r1, [r4, #7]
	lsls r1, r1, #0x18
	ldr r3, _08053900 @ =gScreen
	lsrs r2, r1, #0x10
	lsrs r1, r1, #0x19
	movs r0, #0x10
	subs r0, r0, r1
	orrs r2, r0
	adds r3, #0x68
	strh r2, [r3]
_080538E4:
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne _080538F8
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	movs r0, #5
	movs r1, #8
	bl DoFade
_080538F8:
	pop {r4, pc}
	.align 2, 0
_080538FC: .4byte gRoomTransition
_08053900: .4byte gScreen

	thumb_func_start sub_08053904
sub_08053904: @ 0x08053904
	push {r4, lr}
	ldr r0, _08053924 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053968
	ldr r1, _08053928 @ =gMenu
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	ldrh r0, [r1, #0xa]
	adds r4, r1, #0
	cmp r0, #0
	beq _0805392C
	subs r0, #1
	strh r0, [r4, #0xa]
	b _08053954
	.align 2, 0
_08053924: .4byte gFadeControl
_08053928: .4byte gMenu
_0805392C:
	ldr r0, _0805396C @ =gRoomTransition
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08053954
	ldrb r1, [r4, #7]
	cmp r1, #0xf
	bhi _08053954
	adds r1, #1
	strb r1, [r4, #7]
	lsls r1, r1, #0x18
	ldr r3, _08053970 @ =gScreen
	lsrs r2, r1, #0x10
	lsrs r1, r1, #0x19
	movs r0, #0x10
	subs r0, r0, r1
	orrs r2, r0
	adds r3, #0x68
	strh r2, [r3]
_08053954:
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne _08053968
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	movs r0, #5
	movs r1, #1
	bl DoFade
_08053968:
	pop {r4, pc}
	.align 2, 0
_0805396C: .4byte gRoomTransition
_08053970: .4byte gScreen

	thumb_func_start sub_08053974
sub_08053974: @ 0x08053974
	push {lr}
	ldr r0, _080539AC @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _080539A8
	bl InitFade
	movs r0, #1
	bl DispReset
	bl SetBGDefaults
	bl sub_08051F78
	ldr r0, _080539B0 @ =gUnk_080FCBC4
	bl LoadRoomEntityList
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #5
	bl DoFade
	ldr r1, _080539B4 @ =gMenu
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
_080539A8:
	pop {pc}
	.align 2, 0
_080539AC: .4byte gFadeControl
_080539B0: .4byte gUnk_080FCBC4
_080539B4: .4byte gMenu

	thumb_func_start nullsub_482
nullsub_482: @ 0x080539B8
	bx lr
	.align 2, 0

	thumb_func_start sub_080539BC
sub_080539BC: @ 0x080539BC
	push {lr}
	bl SetBGDefaults
	bl DeleteAllEntities
	movs r0, #0x22
	movs r1, #0x11
	movs r2, #0
	movs r3, #0
	bl sub_08051F9C
	movs r0, #0x22
	movs r1, #0x11
	bl sub_0804B0B0
	ldr r0, _080539EC @ =gUnk_080FCC14
	bl LoadRoomEntityList
	ldr r1, _080539F0 @ =gMenu
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	pop {pc}
	.align 2, 0
_080539EC: .4byte gUnk_080FCC14
_080539F0: .4byte gMenu

	thumb_func_start sub_080539F4
sub_080539F4: @ 0x080539F4
	push {lr}
	ldr r0, _08053A14 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053A10
	movs r0, #1
	bl DispReset
	ldr r0, _08053A18 @ =gMenu
	ldrb r1, [r0, #6]
	adds r1, #1
	strb r1, [r0, #6]
	movs r1, #0x3c
	strh r1, [r0, #8]
_08053A10:
	pop {pc}
	.align 2, 0
_08053A14: .4byte gFadeControl
_08053A18: .4byte gMenu

	thumb_func_start sub_08053A1C
sub_08053A1C: @ 0x08053A1C
	push {r4, lr}
	ldr r1, _08053A50 @ =gMenu
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08053A4E
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	movs r4, #8
	movs r0, #8
	strh r0, [r1, #8]
	ldr r0, _08053A54 @ =0x00000F07
	bl MessageFromTarget
	ldr r1, _08053A58 @ =gMessage
	movs r0, #1
	strb r0, [r1, #6]
	strb r4, [r1, #7]
	movs r0, #4
	movs r1, #8
	bl DoFade
_08053A4E:
	pop {r4, pc}
	.align 2, 0
_08053A50: .4byte gMenu
_08053A54: .4byte 0x00000F07
_08053A58: .4byte gMessage

	thumb_func_start sub_08053A5C
sub_08053A5C: @ 0x08053A5C
	push {lr}
	ldr r0, _08053A88 @ =gMessage
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _08053A86
	ldr r1, _08053A8C @ =gMenu
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08053A86
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	movs r0, #5
	movs r1, #8
	bl DoFade
_08053A86:
	pop {pc}
	.align 2, 0
_08053A88: .4byte gMessage
_08053A8C: .4byte gMenu

	thumb_func_start sub_08053A90
sub_08053A90: @ 0x08053A90
	push {lr}
	ldr r0, _08053AA8 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053AA4
	ldr r1, _08053AAC @ =gUnk_02032EC0
	movs r0, #3
	strb r0, [r1]
	bl SetBGDefaults
_08053AA4:
	pop {pc}
	.align 2, 0
_08053AA8: .4byte gFadeControl
_08053AAC: .4byte gUnk_02032EC0

	thumb_func_start sub_08053AB0
sub_08053AB0: @ 0x08053AB0
	push {lr}
	ldr r1, _08053AC4 @ =gUnk_080FCDD4
	ldr r0, _08053AC8 @ =gMenu
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08053AC4: .4byte gUnk_080FCDD4
_08053AC8: .4byte gMenu

	thumb_func_start sub_08053ACC
sub_08053ACC: @ 0x08053ACC
	push {lr}
	ldr r1, _08053AF4 @ =gMenu
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	ldr r1, _08053AF8 @ =gUpdateVisibleTiles
	movs r0, #1
	strb r0, [r1]
	bl sub_08051FF0
	ldr r0, _08053AFC @ =gUnk_080FCD84
	bl LoadRoomEntityList
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #5
	bl DoFade
	pop {pc}
	.align 2, 0
_08053AF4: .4byte gMenu
_08053AF8: .4byte gUpdateVisibleTiles
_08053AFC: .4byte gUnk_080FCD84

	thumb_func_start sub_08053B00
sub_08053B00: @ 0x08053B00
	ldr r1, _08053B0C @ =gMenu
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	bx lr
	.align 2, 0
_08053B0C: .4byte gMenu

	thumb_func_start sub_08053B10
sub_08053B10: @ 0x08053B10
	push {lr}
	movs r0, #1
	bl CheckRoomFlag
	cmp r0, #0
	beq _08053B34
	ldr r0, _08053B38 @ =gMenu
	ldrb r1, [r0, #5]
	adds r1, #1
	strb r1, [r0, #5]
	movs r0, #1
	bl DispReset
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #4
	bl DoFade
_08053B34:
	pop {pc}
	.align 2, 0
_08053B38: .4byte gMenu

	thumb_func_start sub_08053B3C
sub_08053B3C: @ 0x08053B3C
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #1
	movs r0, #5
	movs r1, #4
	movs r2, #5
	adds r3, r4, #0
	bl sub_080A71C4
	movs r0, #5
	adds r1, r4, #0
	bl DoFade
	pop {r4, pc}

	thumb_func_start sub_08053B58
sub_08053B58: @ 0x08053B58
	push {lr}
	ldr r1, _08053B6C @ =gUnk_080FCEB0
	ldr r0, _08053B70 @ =gMenu
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08053B6C: .4byte gUnk_080FCEB0
_08053B70: .4byte gMenu

	thumb_func_start sub_08053B74
sub_08053B74: @ 0x08053B74
	push {lr}
	ldr r1, _08053BA0 @ =gMenu
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	ldr r1, _08053BA4 @ =gUpdateVisibleTiles
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08053BA8 @ =gUnk_080FCDE0
	bl LoadRoomEntityList
	bl ResetSystemPriority
	bl ResetEntityPriority
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #5
	bl DoFade
	pop {pc}
	.align 2, 0
_08053BA0: .4byte gMenu
_08053BA4: .4byte gUpdateVisibleTiles
_08053BA8: .4byte gUnk_080FCDE0

	thumb_func_start sub_08053BAC
sub_08053BAC: @ 0x08053BAC
	ldr r1, _08053BB8 @ =gMenu
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	bx lr
	.align 2, 0
_08053BB8: .4byte gMenu

	thumb_func_start sub_08053BBC
sub_08053BBC: @ 0x08053BBC
	push {lr}
	movs r0, #0
	bl CheckRoomFlag
	cmp r0, #0
	beq _08053BE0
	ldr r0, _08053BE4 @ =gMenu
	ldrb r1, [r0, #5]
	adds r1, #1
	strb r1, [r0, #5]
	movs r0, #1
	bl DispReset
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #4
	bl DoFade
_08053BE0:
	pop {pc}
	.align 2, 0
_08053BE4: .4byte gMenu

	thumb_func_start sub_08053BE8
sub_08053BE8: @ 0x08053BE8
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #1
	movs r0, #5
	movs r1, #2
	movs r2, #5
	adds r3, r4, #0
	bl sub_080A71C4
	movs r0, #5
	adds r1, r4, #0
	bl DoFade
	pop {r4, pc}

	thumb_func_start sub_08053C04
sub_08053C04: @ 0x08053C04
	push {lr}
	ldr r1, _08053C18 @ =gUnk_080FCEEC
	ldr r0, _08053C1C @ =gMenu
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08053C18: .4byte gUnk_080FCEEC
_08053C1C: .4byte gMenu

	thumb_func_start sub_08053C20
sub_08053C20: @ 0x08053C20
	push {lr}
	ldr r1, _08053C50 @ =gMenu
	movs r2, #1
	strb r2, [r1, #6]
	movs r0, #0x78
	strh r0, [r1, #8]
	ldr r0, _08053C54 @ =gUpdateVisibleTiles
	strb r2, [r0]
	bl sub_08051FF0
	movs r0, #4
	bl sub_0805B4D0
	ldr r0, _08053C58 @ =gUnk_080FCEBC
	bl LoadRoomEntityList
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	movs r0, #0x33
	bl SoundReq
	pop {pc}
	.align 2, 0
_08053C50: .4byte gMenu
_08053C54: .4byte gUpdateVisibleTiles
_08053C58: .4byte gUnk_080FCEBC

	thumb_func_start nullsub_483
nullsub_483: @ 0x08053C5C
	bx lr
	.align 2, 0

	thumb_func_start sub_08053C60
sub_08053C60: @ 0x08053C60
	push {lr}
	movs r0, #5
	movs r1, #2
	bl DoFade
	movs r0, #0xf4
	bl SoundReq
	ldr r0, _08053C80 @ =0x80100000
	bl SoundReq
	movs r0, #3
	bl SetTask
	pop {pc}
	.align 2, 0
_08053C80: .4byte 0x80100000

	thumb_func_start sub_08053C84
sub_08053C84: @ 0x08053C84
	ldr r1, _08053C8C @ =gMenu
	movs r0, #2
	strb r0, [r1, #6]
	bx lr
	.align 2, 0
_08053C8C: .4byte gMenu

	thumb_func_start CutsceneMain_Exit
CutsceneMain_Exit: @ 0x08053C90
	push {lr}
	ldr r1, _08053CA4 @ =gUnk_080FCEF8
	ldr r0, _08053CA8 @ =gMenu
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08053CA4: .4byte gUnk_080FCEF8
_08053CA8: .4byte gMenu

	thumb_func_start sub_08053CAC
sub_08053CAC: @ 0x08053CAC
	push {lr}
	ldr r1, _08053CC0 @ =gUnk_080FCFA4
	ldr r0, _08053CC4 @ =gMenu
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08053CC0: .4byte gUnk_080FCFA4
_08053CC4: .4byte gMenu

	thumb_func_start sub_08053CC8
sub_08053CC8: @ 0x08053CC8
	push {r4, r5, r6, lr}
	ldr r6, _08053D20 @ =gMenu
	ldrb r4, [r6, #3]
	lsls r4, r4, #4
	ldr r0, _08053D24 @ =gUnk_080FCF04
	adds r4, r4, r0
	adds r0, r4, #0
	adds r0, #8
	str r0, [r6, #0xc]
	ldr r0, [r4]
	bl LoadRoomEntityList
	ldrb r0, [r4, #4]
	ldrb r1, [r4, #5]
	movs r2, #1
	bl GetRoomProperty
	bl LoadRoomEntityList
	ldrb r0, [r4, #4]
	ldrb r1, [r4, #5]
	movs r2, #2
	bl GetRoomProperty
	bl LoadRoomEntityList
	movs r5, #1
	strb r5, [r6, #6]
	ldr r2, _08053D28 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _08053D2C @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08053D30 @ =gUpdateVisibleTiles
	strb r5, [r0]
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	ldrb r0, [r4, #5]
	cmp r0, #0x1d
	bne _08053D1E
	strh r5, [r6, #0xa]
_08053D1E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08053D20: .4byte gMenu
_08053D24: .4byte gUnk_080FCF04
_08053D28: .4byte gScreen
_08053D2C: .4byte 0x0000FEFF
_08053D30: .4byte gUpdateVisibleTiles

	thumb_func_start sub_08053D34
sub_08053D34: @ 0x08053D34
	push {r4, lr}
	ldr r1, _08053D88 @ =gMenu
	ldrh r0, [r1, #0xa]
	cmp r0, #0
	beq _08053D72
	movs r0, #0
	strh r0, [r1, #0xa]
	movs r4, #0xd0
	lsls r4, r4, #3
	adds r0, r4, #0
	movs r1, #0x3d
	bl CheckLocalFlagByBank
	cmp r0, #0
	beq _08053D5C
	movs r0, #0x74
	movs r1, #0xc4
	movs r2, #1
	bl SetTileType
_08053D5C:
	adds r0, r4, #0
	movs r1, #0x3e
	bl CheckLocalFlagByBank
	cmp r0, #0
	beq _08053D72
	movs r0, #0x74
	movs r1, #0xcc
	movs r2, #1
	bl SetTileType
_08053D72:
	ldr r0, _08053D8C @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053D86
	ldr r1, _08053D88 @ =gMenu
	movs r0, #0x78
	strh r0, [r1, #8]
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
_08053D86:
	pop {r4, pc}
	.align 2, 0
_08053D88: .4byte gMenu
_08053D8C: .4byte gFadeControl

	thumb_func_start sub_08053D90
sub_08053D90: @ 0x08053D90
	push {lr}
	ldr r1, _08053DB0 @ =gMenu
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08053DAC
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	movs r0, #0x10
	bl sub_080500F4
_08053DAC:
	pop {pc}
	.align 2, 0
_08053DB0: .4byte gMenu

	thumb_func_start sub_08053DB4
sub_08053DB4: @ 0x08053DB4
	push {r4, r5, lr}
	ldr r0, _08053E20 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053E1C
	ldr r5, _08053E24 @ =gMenu
	ldr r4, [r5, #0xc]
	ldrb r0, [r4, #4]
	ldrb r1, [r4, #5]
	bl sub_08052FF4
	bl sub_0807C740
	ldr r1, _08053E28 @ =gUpdateVisibleTiles
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08053E2C @ =gRoomControls
	movs r0, #6
	ldrsb r0, [r4, r0]
	ldrh r2, [r1, #0xa]
	adds r0, r0, r2
	strh r0, [r1, #0xa]
	movs r0, #7
	ldrsb r0, [r4, r0]
	ldrh r2, [r1, #0xc]
	adds r0, r0, r2
	strh r0, [r1, #0xc]
	ldr r0, [r4]
	bl LoadRoomEntityList
	ldrb r0, [r4, #4]
	ldrb r1, [r4, #5]
	movs r2, #1
	bl GetRoomProperty
	bl LoadRoomEntityList
	ldrb r0, [r4, #4]
	ldrb r1, [r4, #5]
	movs r2, #2
	bl GetRoomProperty
	bl LoadRoomEntityList
	movs r0, #0x78
	strh r0, [r5, #8]
	ldrb r0, [r5, #6]
	adds r0, #1
	strb r0, [r5, #6]
	movs r0, #0x10
	bl sub_080500F4
_08053E1C:
	pop {r4, r5, pc}
	.align 2, 0
_08053E20: .4byte gFadeControl
_08053E24: .4byte gMenu
_08053E28: .4byte gUpdateVisibleTiles
_08053E2C: .4byte gRoomControls

	thumb_func_start sub_08053E30
sub_08053E30: @ 0x08053E30
	push {lr}
	ldr r0, _08053E50 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053E4E
	ldr r1, _08053E54 @ =gMenu
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08053E4E
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_08053E4E:
	pop {pc}
	.align 2, 0
_08053E50: .4byte gFadeControl
_08053E54: .4byte gMenu

	thumb_func_start sub_08053E58
sub_08053E58: @ 0x08053E58
	push {lr}
	ldr r1, _08053E6C @ =gUnk_080FD108
	ldr r0, _08053E70 @ =gMenu
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08053E6C: .4byte gUnk_080FD108
_08053E70: .4byte gMenu

	thumb_func_start sub_08053E74
sub_08053E74: @ 0x08053E74
	push {r4, lr}
	ldr r0, _08053EB0 @ =gUnk_080FCFB8
	ldr r4, _08053EB4 @ =gMenu
	str r0, [r4, #0xc]
	ldr r0, [r0]
	bl LoadRoomEntityList
	movs r0, #0x78
	strh r0, [r4, #8]
	movs r0, #0x3c
	strh r0, [r4, #0xa]
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r2, _08053EB8 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _08053EBC @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08053EC0 @ =gUpdateVisibleTiles
	movs r0, #1
	strb r0, [r1]
	movs r0, #1
	bl SetMinPriority
	movs r0, #4
	movs r1, #8
	bl DoFade
	pop {r4, pc}
	.align 2, 0
_08053EB0: .4byte gUnk_080FCFB8
_08053EB4: .4byte gMenu
_08053EB8: .4byte gScreen
_08053EBC: .4byte 0x0000FEFF
_08053EC0: .4byte gUpdateVisibleTiles

	thumb_func_start sub_08053EC4
sub_08053EC4: @ 0x08053EC4
	push {r4, lr}
	ldr r0, _08053EF4 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053EF0
	ldr r4, _08053EF8 @ =gMenu
	ldrh r0, [r4, #0xa]
	subs r0, #1
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08053EF0
	ldr r1, [r4, #0xc]
	adds r0, r1, #0
	adds r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, [r1, #4]
	bl LoadRoomEntityList
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
_08053EF0:
	pop {r4, pc}
	.align 2, 0
_08053EF4: .4byte gFadeControl
_08053EF8: .4byte gMenu

	thumb_func_start sub_08053EFC
sub_08053EFC: @ 0x08053EFC
	push {lr}
	ldr r1, _08053F1C @ =gMenu
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08053F18
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	movs r0, #8
	bl sub_080500F4
_08053F18:
	pop {pc}
	.align 2, 0
_08053F1C: .4byte gMenu

	thumb_func_start sub_08053F20
sub_08053F20: @ 0x08053F20
	push {r4, r5, lr}
	ldr r0, _08053F78 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053F74
	bl DeleteAllEntities
	ldr r5, _08053F7C @ =gMenu
	ldr r4, [r5, #0xc]
	ldrb r0, [r4, #8]
	ldrb r1, [r4, #9]
	bl sub_08052FF4
	bl sub_0807C740
	ldr r1, _08053F80 @ =gUpdateVisibleTiles
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08053F84 @ =gRoomControls
	movs r0, #0xa
	ldrsb r0, [r4, r0]
	ldrh r2, [r1, #0xa]
	adds r0, r0, r2
	strh r0, [r1, #0xa]
	movs r0, #0xb
	ldrsb r0, [r4, r0]
	ldrh r2, [r1, #0xc]
	adds r0, r0, r2
	strh r0, [r1, #0xc]
	ldr r0, [r4]
	bl LoadRoomEntityList
	movs r0, #0x78
	strh r0, [r5, #8]
	movs r0, #0x3c
	strh r0, [r5, #0xa]
	ldrb r0, [r5, #6]
	adds r0, #1
	strb r0, [r5, #6]
	movs r0, #8
	bl sub_080500F4
_08053F74:
	pop {r4, r5, pc}
	.align 2, 0
_08053F78: .4byte gFadeControl
_08053F7C: .4byte gMenu
_08053F80: .4byte gUpdateVisibleTiles
_08053F84: .4byte gRoomControls

	thumb_func_start sub_08053F88
sub_08053F88: @ 0x08053F88
	push {lr}
	ldr r0, _08053FAC @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053FAA
	ldr r1, _08053FB0 @ =gMenu
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08053FAA
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
	bl ResetEntityPriority
_08053FAA:
	pop {pc}
	.align 2, 0
_08053FAC: .4byte gFadeControl
_08053FB0: .4byte gMenu

	thumb_func_start CutsceneMain_Update
CutsceneMain_Update: @ 0x08053FB4
	push {lr}
	ldr r1, _08053FC8 @ =gUnk_080FD138
	ldr r0, _08053FCC @ =gMenu
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08053FC8: .4byte gUnk_080FD138
_08053FCC: .4byte gMenu

	thumb_func_start GetSaleItemConfirmMessageID
GetSaleItemConfirmMessageID: @ 0x08053FD0
	lsls r0, r0, #3
	ldr r1, _08053FDC @ =gUnk_080FD964
	adds r0, r0, r1
	ldrh r0, [r0, #4]
	bx lr
	.align 2, 0
_08053FDC: .4byte gUnk_080FD964

	thumb_func_start GetItemPrice
GetItemPrice: @ 0x08053FE0
	lsls r0, r0, #3
	ldr r1, _08053FEC @ =gUnk_080FD964
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_08053FEC: .4byte gUnk_080FD964

	thumb_func_start GiveItem
GiveItem: @ 0x08053FF0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	bl GetInventoryValue
	adds r5, r0, #0
	lsls r1, r6, #3
	ldr r0, _08054010 @ =gUnk_080FD5B4
	adds r4, r1, r0
	cmp r5, #0
	bne _08054014
	ldrh r0, [r4, #4]
	mov r8, r0
	b _08054018
	.align 2, 0
_08054010: .4byte gUnk_080FD5B4
_08054014:
	ldrh r2, [r4, #6]
	mov r8, r2
_08054018:
	adds r0, r6, #0
	bl ItemIsBottle
	cmp r0, #0
	bne _08054034
	adds r0, r6, #0
	bl PutItemOnSlot
	cmp r5, #0
	bne _08054034
	adds r0, r6, #0
	movs r1, #1
	bl sub_0807CAA0
_08054034:
	ldrb r0, [r4, #1]
	cmp r0, #0x12
	bls _0805403C
	b _0805427C
_0805403C:
	lsls r0, r0, #2
	ldr r1, _08054048 @ =_0805404C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08054048: .4byte _0805404C
_0805404C: @ jump table
	.4byte _0805427C @ case 0
	.4byte _08054098 @ case 1
	.4byte _080540A6 @ case 2
	.4byte _080540C0 @ case 3
	.4byte _08054104 @ case 4
	.4byte _0805414C @ case 5
	.4byte _08054154 @ case 6
	.4byte _08054194 @ case 7
	.4byte _080541B6 @ case 8
	.4byte _080541F0 @ case 9
	.4byte _08054212 @ case 10
	.4byte _080541F8 @ case 11
	.4byte _08054238 @ case 12
	.4byte _08054174 @ case 13
	.4byte _08054240 @ case 14
	.4byte _0805425C @ case 15
	.4byte _08054264 @ case 16
	.4byte _080541B0 @ case 17
	.4byte _0805417C @ case 18
_08054098:
	ldrb r0, [r4, #2]
	bl ModHealth
	movs r0, #0x71
	bl SoundReq
	b _0805427C
_080540A6:
	ldr r0, _080540BC @ =gUnk_080FD5A8
	ldrb r1, [r4, #2]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl ModRupees
	movs r0, #0x6f
	bl SoundReq
	b _0805427C
	.align 2, 0
_080540BC: .4byte gUnk_080FD5A8
_080540C0:
	movs r5, #0
	movs r4, #0x1c
	b _080540CA
_080540C6:
	adds r4, r1, #1
	adds r5, #1
_080540CA:
	cmp r5, #3
	bls _080540D0
	b _0805427C
_080540D0:
	adds r0, r4, #0
	bl GetInventoryValue
	adds r1, r4, #0
	cmp r0, #0
	bne _080540C6
	adds r6, r4, #0
	ldr r0, _08054100 @ =gSave
	adds r0, #0xb6
	adds r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _080540EE
	movs r0, #0x20
	strb r0, [r1]
_080540EE:
	adds r0, r6, #0
	movs r1, #1
	bl sub_0807CAA0
	adds r0, r6, #0
	bl PutItemOnSlot
	b _0805427C
	.align 2, 0
_08054100: .4byte gSave
_08054104:
	movs r5, #0
	ldr r0, _08054144 @ =gSave
	adds r2, r0, #0
	adds r2, #0xb6
	ldrb r1, [r2]
	adds r3, r0, #0
	cmp r1, #0x20
	beq _08054126
	adds r1, r2, #0
_08054116:
	adds r5, #1
	cmp r5, #3
	bls _0805411E
	b _0805427C
_0805411E:
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0x20
	bne _08054116
_08054126:
	cmp r5, #3
	bls _0805412C
	b _0805427C
_0805412C:
	adds r0, r3, #0
	adds r0, #0xb6
	adds r0, r5, r0
	strb r6, [r0]
	adds r0, r6, #0
	movs r1, #1
	bl sub_0807CAA0
	ldr r0, _08054148 @ =0x00000109
	bl SoundReq
	b _0805427C
	.align 2, 0
_08054144: .4byte gSave
_08054148: .4byte 0x00000109
_0805414C:
	movs r0, #1
	bl sub_080526F8
	b _0805424E
_08054154:
	ldr r1, _08054168 @ =gSave
	ldr r0, _0805416C @ =gArea
	ldr r2, _08054170 @ =0x0000046C
	adds r1, r1, r2
	ldrb r0, [r0, #3]
	adds r1, r1, r0
	ldrb r0, [r1]
	ldrb r2, [r4, #2]
	orrs r0, r2
	b _0805427A
	.align 2, 0
_08054168: .4byte gSave
_0805416C: .4byte gArea
_08054170: .4byte 0x0000046C
_08054174:
	movs r0, #0x72
	bl sub_0801E738
	b _0805427C
_0805417C:
	cmp r6, #0xb
	bne _0805418A
	movs r0, #0xc
	movs r1, #0
	bl sub_0807CAA0
	b _080541B0
_0805418A:
	movs r0, #0xb
	movs r1, #0
	bl sub_0807CAA0
	b _080541B0
_08054194:
	cmp r6, #7
	bne _080541A2
	movs r0, #8
	movs r1, #0
	bl sub_0807CAA0
	b _080541AA
_080541A2:
	movs r0, #7
	movs r1, #0
	bl sub_0807CAA0
_080541AA:
	movs r0, #0x63
	bl ModBombs
_080541B0:
	bl LoadItemGfx
	b _0805427C
_080541B6:
	cmp r5, #0
	bne _080541CA
	movs r0, #7
	movs r1, #1
	bl sub_0807CAA0
	movs r0, #7
	bl PutItemOnSlot
	b _080541E2
_080541CA:
	ldr r0, _080541EC @ =gSave
	adds r1, r0, #0
	adds r1, #0xae
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _080541E2
	movs r0, #3
	strb r0, [r1]
_080541E2:
	movs r0, #0x63
	bl ModBombs
	b _0805427C
	.align 2, 0
_080541EC: .4byte gSave
_080541F0:
	ldrb r0, [r4, #2]
	bl ModBombs
	b _0805424E
_080541F8:
	movs r0, #0x66
	bl GetInventoryValue
	cmp r0, #0
	bne _0805420A
	movs r0, #0x66
	movs r1, #1
	bl sub_0807CAA0
_0805420A:
	movs r0, #0x63
	bl ModArrows
	b _080541B0
_08054212:
	ldr r0, _08054234 @ =gSave
	adds r1, r0, #0
	adds r1, #0xaf
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0805422A
	movs r0, #3
	strb r0, [r1]
_0805422A:
	movs r0, #0x63
	bl ModArrows
	b _0805427C
	.align 2, 0
_08054234: .4byte gSave
_08054238:
	ldrb r0, [r4, #2]
	bl ModArrows
	b _0805424E
_08054240:
	movs r0, #0x3f
	movs r1, #1
	bl sub_0807CAA0
	adds r0, r7, #0
	bl sub_080542C0
_0805424E:
	ldr r0, _08054258 @ =0x00000103
	bl SoundReq
	b _0805427C
	.align 2, 0
_08054258: .4byte 0x00000103
_0805425C:
	adds r0, r7, #0
	bl sub_0801E738
	b _0805427C
_08054264:
	ldr r0, _08054284 @ =gSave
	adds r1, r0, #0
	adds r1, #0xa8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0805427C
	movs r0, #3
_0805427A:
	strb r0, [r1]
_0805427C:
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08054284: .4byte gSave

	thumb_func_start sub_08054288
sub_08054288: @ 0x08054288
	push {lr}
	ldr r1, _08054298 @ =gUnk_080FD5B4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	bl MessageFromTarget
	pop {pc}
	.align 2, 0
_08054298: .4byte gUnk_080FD5B4

	thumb_func_start sub_0805429C
sub_0805429C: @ 0x0805429C
	ldr r1, _080542A8 @ =gUnk_080FD5B4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0, #4]
	bx lr
	.align 2, 0
_080542A8: .4byte gUnk_080FD5B4

	thumb_func_start sub_080542AC
sub_080542AC: @ 0x080542AC
	ldr r1, _080542BC @ =gUnk_080FD5B4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r1, [r0, #3]
	movs r0, #1
	ands r0, r1
	bx lr
	.align 2, 0
_080542BC: .4byte gUnk_080FD5B4

	thumb_func_start sub_080542C0
sub_080542C0: @ 0x080542C0
	push {lr}
	adds r2, r0, #0
	cmp r2, #0
	bne _080542CA
	movs r2, #1
_080542CA:
	ldr r1, _080542DC @ =gSave
	adds r0, r1, #0
	adds r0, #0xc2
	ldrh r0, [r0]
	adds r2, r2, r0
	cmp r2, #0
	bge _080542E0
	movs r2, #0
	b _080542E8
	.align 2, 0
_080542DC: .4byte gSave
_080542E0:
	ldr r3, _080542F0 @ =0x000003E7
	cmp r2, r3
	ble _080542E8
	adds r2, r3, #0
_080542E8:
	adds r0, r1, #0
	adds r0, #0xc2
	strh r2, [r0]
	pop {pc}
	.align 2, 0
_080542F0: .4byte 0x000003E7
	
