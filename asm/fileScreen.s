	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start HandleGameplayScreen
HandleGameplayScreen: @ 0x08051988
	push {lr}
	ldr r1, _080519A4 @ =gScreenTransition
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _080519A8 @ =gUnk_080FC9D8
	ldr r0, _080519AC @ =gUnk_03001000
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080519A4: .4byte gScreenTransition
_080519A8: .4byte gUnk_080FC9D8
_080519AC: .4byte gUnk_03001000

	thumb_func_start sub_080519B0
sub_080519B0: @ 0x080519B0
	push {r4, r5, lr}
	ldr r0, _08051A04 @ =gFadeControl
	ldrb r5, [r0]
	cmp r5, #0
	bne _08051A02
	movs r0, #1
	bl sub_0801DA90
	bl sub_080A3210
	bl sub_0801DA7C
	bl sub_080A7124
	bl sub_0807059C
	ldr r4, _08051A08 @ =gScreenTransition
	adds r0, r4, #0
	movs r1, #0xb0
	bl _DmaZero
	bl sub_08049CD4
	bl sub_080300AC
	bl sub_0807CA18
	ldr r0, _08051A0C @ =gUnk_02002AC8
	adds r1, r4, #0
	adds r1, #0xc
	movs r2, #0x20
	bl _DmaCopy
	movs r0, #4
	strb r0, [r4, #9]
	bl sub_08053518
	ldr r1, _08051A10 @ =gUnk_03001000
	movs r0, #1
	strb r0, [r1, #3]
	strb r5, [r1, #4]
_08051A02:
	pop {r4, r5, pc}
	.align 2, 0
_08051A04: .4byte gFadeControl
_08051A08: .4byte gScreenTransition
_08051A0C: .4byte gUnk_02002AC8
_08051A10: .4byte gUnk_03001000

	thumb_func_start sub_08051A14
sub_08051A14: @ 0x08051A14
	push {lr}
	movs r0, #1
	bl sub_0801DA90
	ldr r1, _08051A70 @ =gFadeControl
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #4]
	ldr r0, _08051A74 @ =gUnk_03000000
	ldr r1, _08051A78 @ =0x00000B74
	bl _DmaZero
	ldr r0, _08051A7C @ =gUnk_02032EC0
	movs r1, #0xed
	lsls r1, r1, #2
	bl _DmaZero
	bl EraseAllEntities
	bl sub_080197AC
	bl sub_08080668
	bl sub_080ADD30
	movs r0, #1
	bl sub_0801CFA8
	bl sub_0806FD8C
	ldr r2, _08051A80 @ =gRoomControls
	ldr r1, _08051A84 @ =gScreenTransition
	ldrb r0, [r1, #0xc]
	strb r0, [r2, #4]
	ldrb r0, [r1, #0xd]
	strb r0, [r2, #5]
	bl sub_08053320
	ldr r1, _08051A88 @ =gUnk_02024490
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08051A8C @ =gUnk_03001000
	movs r0, #2
	strb r0, [r1, #3]
	pop {pc}
	.align 2, 0
_08051A70: .4byte gFadeControl
_08051A74: .4byte gUnk_03000000
_08051A78: .4byte 0x00000B74
_08051A7C: .4byte gUnk_02032EC0
_08051A80: .4byte gRoomControls
_08051A84: .4byte gScreenTransition
_08051A88: .4byte gUnk_02024490
_08051A8C: .4byte gUnk_03001000

	thumb_func_start sub_08051A90
sub_08051A90: @ 0x08051A90
	push {lr}
	ldr r1, _08051AA4 @ =gUnk_080FC9E8
	ldr r0, _08051AA8 @ =gUnk_03001000
	ldrb r0, [r0, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08051AA4: .4byte gUnk_080FC9E8
_08051AA8: .4byte gUnk_03001000

	thumb_func_start InitializeNewRoom
InitializeNewRoom: @ 0x08051AAC
	push {lr}
	bl sub_0805E5A8
	ldr r1, _08051AE4 @ =gScreen
	movs r2, #0
	movs r0, #0xba
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r1, _08051AE8 @ =gUnk_03001000
	movs r0, #1
	strb r0, [r1, #4]
	ldr r0, _08051AEC @ =gScreenTransition
	strb r2, [r0, #8]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	bl sub_08056418
	bl sub_08052CFC
	movs r0, #0
	bl sub_0801C370
	bl InitializeEntities
	bl sub_0801855C
	pop {pc}
	.align 2, 0
_08051AE4: .4byte gScreen
_08051AE8: .4byte gUnk_03001000
_08051AEC: .4byte gScreenTransition

	thumb_func_start sub_08051AF0
sub_08051AF0: @ 0x08051AF0
	push {r4, r5, lr}
	bl sub_0805E5C0
	bl sub_0805BBBC
	cmp r0, #0
	bne _08051B02
	bl sub_0807FC40
_08051B02:
	bl sub_0801B060
	bl sub_08000108
	bl sub_0801C344
	bl sub_0805E5F8
	bl FlushSprites
	bl sub_0801C208
	bl sub_08078CB4
	bl sub_080AD9B0
	bl sub_080AD918
	ldr r0, _08051BB0 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _08051BAE
	ldr r0, _08051BB4 @ =gRoomControls
	ldrh r0, [r0]
	cmp r0, #0
	bne _08051BAE
	bl sub_08052F1C
	ldr r5, _08051BB8 @ =gArea
	movs r0, #0x86
	lsls r0, r0, #4
	adds r3, r5, r0
	ldr r1, _08051BBC @ =0x00000864
	adds r0, r5, r1
	ldr r1, [r3]
	ldr r2, [r0]
	cmp r1, r2
	beq _08051B5A
	str r2, [r3]
	ldr r0, _08051BC0 @ =0x800B0000
	orrs r2, r0
	adds r0, r2, #0
	bl PlaySFX
_08051B5A:
	bl sub_0805E9F4
	bl sub_0805BC04
	adds r4, r0, #0
	cmp r4, #0
	bne _08051BAE
	bl sub_08052C5C
	bl sub_0805E5B4
	bl sub_08051E04
	bl sub_080300C4
	ldr r1, _08051BC4 @ =gUnk_03001000
	movs r0, #2
	strb r0, [r1, #4]
	movs r0, #0
	bl sub_08078A90
	ldr r0, _08051BC8 @ =gUnk_02034490
	strb r4, [r0]
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _08051B96
	bl sub_0801855C
_08051B96:
	bl sub_08052BF8
	bl sub_08053178
	ldr r0, _08051BCC @ =gRoomVars
	ldrb r0, [r0]
	cmp r0, #0
	bne _08051BAE
	movs r0, #0
	movs r1, #1
	bl sub_0805E4E0
_08051BAE:
	pop {r4, r5, pc}
	.align 2, 0
_08051BB0: .4byte gFadeControl
_08051BB4: .4byte gRoomControls
_08051BB8: .4byte gArea
_08051BBC: .4byte 0x00000864
_08051BC0: .4byte 0x800B0000
_08051BC4: .4byte gUnk_03001000
_08051BC8: .4byte gUnk_02034490
_08051BCC: .4byte gRoomVars

	thumb_func_start sub_08051BD0
sub_08051BD0: @ 0x08051BD0
	push {lr}
	bl sub_080705AC
	cmp r0, #0
	bne _08051C9C
	bl sub_0804AA84
	cmp r0, #0
	bne _08051C9C
	bl sub_0805340C
	ldr r0, _08051C5C @ =gUnk_03001000
	ldrb r0, [r0, #4]
	cmp r0, #2
	bne _08051C9C
	ldr r0, _08051C60 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _08051C02
	ldr r0, _08051C64 @ =gUnk_03003DC0
	ldrh r0, [r0, #8]
	cmp r0, #0
	beq _08051C06
_08051C02:
	bl sub_08078B48
_08051C06:
	bl FlushSprites
	bl sub_0805E5C0
	bl sub_08080A40
	bl sub_080175F4
	bl sub_0807FC40
	bl sub_0801B060
	bl sub_08000108
	bl sub_08052C3C
	bl sub_0801C344
	bl sub_0805E5F8
	bl sub_0801C208
	bl sub_08078CB4
	bl sub_080AD9B0
	bl sub_0805291C
	bl sub_08052C5C
	bl sub_080528B4
	bl sub_080185F8
	bl sub_080AD918
	ldr r0, _08051C68 @ =gRoomControls
	ldrh r2, [r0]
	cmp r2, #1
	beq _08051C6C
	cmp r2, #2
	beq _08051C88
	b _08051C9C
	.align 2, 0
_08051C5C: .4byte gUnk_03001000
_08051C60: .4byte gTextBox
_08051C64: .4byte gUnk_03003DC0
_08051C68: .4byte gRoomControls
_08051C6C:
	ldr r0, _08051C80 @ =gPlayerState
	movs r1, #0x17
	strb r1, [r0, #0xc]
	ldr r0, _08051C84 @ =gUnk_03001000
	strb r2, [r0, #4]
	bl sub_0805E59C
	bl sub_08051D98
	b _08051C9C
	.align 2, 0
_08051C80: .4byte gPlayerState
_08051C84: .4byte gUnk_03001000
_08051C88:
	ldr r1, _08051CA0 @ =gPlayerState
	movs r0, #0x17
	strb r0, [r1, #0xc]
	ldr r1, _08051CA4 @ =gUnk_03001000
	movs r0, #1
	strb r0, [r1, #4]
	bl sub_0805E59C
	bl sub_08051DCC
_08051C9C:
	pop {pc}
	.align 2, 0
_08051CA0: .4byte gPlayerState
_08051CA4: .4byte gUnk_03001000

	thumb_func_start sub_08051CA8
sub_08051CA8: @ 0x08051CA8
	push {lr}
	bl sub_080705AC
	cmp r0, #0
	bne _08051CEA
	bl sub_0805E5C0
	bl sub_080175F4
	bl sub_0801C344
	bl sub_0805E5F8
	bl FlushSprites
	bl sub_0801C208
	bl sub_08078CB4
	bl sub_080AD9B0
	bl sub_0805291C
	bl sub_080528B4
	bl sub_080AD918
	ldr r0, _08051CEC @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _08051CEA
	bl sub_0805E5B4
_08051CEA:
	pop {pc}
	.align 2, 0
_08051CEC: .4byte gFadeControl

	thumb_func_start sub_08051CF0
sub_08051CF0: @ 0x08051CF0
	push {r4, r5, r6, lr}
	bl FlushSprites
	bl sub_0801C208
	bl sub_080AD9B0
	ldr r5, _08051D20 @ =gUnk_03001000
	movs r6, #1
	strb r6, [r5, #0xb]
	bl sub_080AD918
	ldr r0, _08051D24 @ =gFadeControl
	ldrb r4, [r0]
	cmp r4, #0
	bne _08051D1E
	movs r0, #1
	bl sub_0801DA90
	strb r6, [r5, #3]
	strb r4, [r5, #4]
	ldr r0, _08051D28 @ =gScreenTransition
	strb r6, [r0, #8]
_08051D1E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08051D20: .4byte gUnk_03001000
_08051D24: .4byte gFadeControl
_08051D28: .4byte gScreenTransition

	thumb_func_start sub_08051D2C
sub_08051D2C: @ 0x08051D2C
	push {lr}
	movs r0, #7
	movs r1, #8
	bl DoFade
	movs r0, #3
	bl InitScreen
	pop {pc}
	.align 2, 0

	thumb_func_start InitializeEntities
InitializeEntities: @ 0x08051D40
	push {lr}
	bl sub_08052EA0
	bl sub_0804AF90
	bl sub_0804AFDC
	bl InitializePlayer
	ldr r1, _08051D90 @ =gUnk_03004030
	movs r0, #0
	str r0, [r1]
	bl sub_0807C740
	ldr r1, _08051D94 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	bl sub_0805283C
	movs r0, #0
	movs r1, #0
	bl sub_0801D79C
	bl LoadRoom
	bl CreateZeldaFollower
	bl sub_0804AFF4
	bl sub_0805329C
	bl sub_08000108
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_0805BB74
	bl sub_080531F8
	pop {pc}
	.align 2, 0
_08051D90: .4byte gUnk_03004030
_08051D94: .4byte gUnk_02000070

	thumb_func_start sub_08051D98
sub_08051D98: @ 0x08051D98
	push {lr}
	bl sub_08052EA0
	ldr r1, _08051DC8 @ =gRoomVars
	movs r0, #1
	strb r0, [r1]
	bl sub_0805E9A8
	bl sub_0804AF90
	bl sub_0804AFDC
	bl sub_0807C0DC
	bl sub_0805283C
	bl LoadRoom
	bl sub_0804AFF4
	movs r0, #1
	bl sub_08078A90
	pop {pc}
	.align 2, 0
_08051DC8: .4byte gRoomVars

	thumb_func_start sub_08051DCC
sub_08051DCC: @ 0x08051DCC
	push {r4, lr}
	ldr r1, _08051DFC @ =gRoomControls
	ldr r4, _08051E00 @ =gScreenTransition
	ldrb r0, [r4, #0xc]
	strb r0, [r1, #4]
	ldrb r0, [r4, #0xd]
	strb r0, [r1, #5]
	bl sub_080528F0
	movs r0, #3
	strb r0, [r4, #9]
	bl sub_08052CFC
	bl sub_08052EA0
	bl sub_0805E9A8
	bl sub_0804AF90
	bl sub_0804AFDC
	bl sub_0805283C
	pop {r4, pc}
	.align 2, 0
_08051DFC: .4byte gRoomControls
_08051E00: .4byte gScreenTransition

	thumb_func_start sub_08051E04
sub_08051E04: @ 0x08051E04
	push {lr}
	bl sub_08052620
	cmp r0, #0
	beq _08051E60
	ldr r1, _08051E2C @ =gPlayerEntity
	movs r2, #0x2e
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _08051E1A
	adds r0, #0xf
_08051E1A:
	asrs r2, r0, #4
	movs r3, #0x32
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _08051E26
	adds r0, #0xf
_08051E26:
	asrs r1, r0, #4
	ldr r3, _08051E30 @ =gUnk_08127F94
	b _08051E36
	.align 2, 0
_08051E2C: .4byte gPlayerEntity
_08051E30: .4byte gUnk_08127F94
_08051E34:
	adds r3, #8
_08051E36:
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _08051E60
	cmp r0, r2
	bhi _08051E34
	ldrb r0, [r3, #2]
	cmp r0, r2
	blo _08051E34
	ldrb r0, [r3, #1]
	cmp r0, r1
	bhi _08051E34
	ldrb r0, [r3, #3]
	cmp r0, r1
	blo _08051E34
	ldr r2, _08051E64 @ =gSave
	movs r1, #1
	ldrb r3, [r3, #4]
	lsls r1, r3
	ldr r0, [r2, #0x40]
	orrs r0, r1
	str r0, [r2, #0x40]
_08051E60:
	pop {pc}
	.align 2, 0
_08051E64: .4byte gSave

	thumb_func_start sub_08051E68
sub_08051E68: @ 0x08051E68
	push {lr}
	ldr r1, _08051E7C @ =gUnk_080FCA08
	ldr r0, _08051E80 @ =gMenu
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08051E7C: .4byte gUnk_080FCA08
_08051E80: .4byte gMenu

	thumb_func_start sub_08051E84
sub_08051E84: @ 0x08051E84
	push {r4, r5, r6, lr}
	ldr r0, _08051EF0 @ =gUnk_02032EC0
	ldrb r4, [r0, #3]
	lsls r4, r4, #3
	ldr r0, _08051EF4 @ =gUnk_080FCA20
	adds r4, r4, r0
	ldr r5, _08051EF8 @ =gRoomControls
	ldrb r0, [r4]
	strb r0, [r5, #4]
	ldrb r0, [r4, #1]
	strb r0, [r5, #5]
	bl sub_08053320
	ldrb r0, [r5, #4]
	bl sub_08052D58
	ldr r1, _08051EFC @ =gArea
	movs r6, #0
	strh r0, [r1, #4]
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	bl SetCurrentRoomPropertyList
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	bl sub_08052FD8
	ldrh r0, [r4, #4]
	ldrh r1, [r5, #6]
	adds r0, r0, r1
	strh r0, [r5, #0xa]
	ldrh r0, [r4, #6]
	ldrh r1, [r5, #8]
	adds r0, r0, r1
	strh r0, [r5, #0xc]
	ldr r1, _08051F00 @ =gMenu
	ldrb r0, [r4, #2]
	strb r0, [r1]
	ldrb r2, [r4, #3]
	movs r0, #0xf
	ands r0, r2
	strb r0, [r1, #3]
	str r4, [r1, #0xc]
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
	strb r6, [r1, #6]
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r1, #8]
	bl sub_08051F04
	pop {r4, r5, r6, pc}
	.align 2, 0
_08051EF0: .4byte gUnk_02032EC0
_08051EF4: .4byte gUnk_080FCA20
_08051EF8: .4byte gRoomControls
_08051EFC: .4byte gArea
_08051F00: .4byte gMenu

	thumb_func_start sub_08051F04
sub_08051F04: @ 0x08051F04
	push {lr}
	ldr r1, _08051F38 @ =gUnk_080FCA14
	ldr r0, _08051F3C @ =gMenu
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl FlushSprites
	bl sub_0805E5C0
	bl sub_080AD9B0
	bl sub_080AD918
	bl sub_0807FC40
	bl sub_0801B060
	bl sub_0805E5F8
	bl sub_08000108
	pop {pc}
	.align 2, 0
_08051F38: .4byte gUnk_080FCA14
_08051F3C: .4byte gMenu

	thumb_func_start sub_08051F40
sub_08051F40: @ 0x08051F40
	push {lr}
	ldr r0, _08051F60 @ =gUnk_080FCA20
	ldr r2, _08051F64 @ =gUnk_02032EC0
	ldrb r1, [r2, #3]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrb r1, [r1, #3]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _08051F68
	lsrs r1, r1, #4
	movs r0, #2
	bl MenuFadeIn
	b _08051F76
	.align 2, 0
_08051F60: .4byte gUnk_080FCA20
_08051F64: .4byte gUnk_02032EC0
_08051F68:
	movs r0, #3
	strb r0, [r2]
	movs r0, #0x10
	bl sub_080500F4
	bl sub_08056418
_08051F76:
	pop {pc}

	thumb_func_start sub_08051F78
sub_08051F78: @ 0x08051F78
	push {lr}
	ldr r0, _08051F94 @ =gUnk_02032EC0
	ldrb r3, [r0, #3]
	lsls r3, r3, #3
	ldr r0, _08051F98 @ =gUnk_080FCA20
	adds r3, r3, r0
	ldrb r0, [r3]
	ldrb r1, [r3, #1]
	ldrh r2, [r3, #4]
	ldrh r3, [r3, #6]
	bl sub_08051F9C
	pop {pc}
	.align 2, 0
_08051F94: .4byte gUnk_02032EC0
_08051F98: .4byte gUnk_080FCA20

	thumb_func_start sub_08051F9C
sub_08051F9C: @ 0x08051F9C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r2, #0
	mov r8, r3
	ldr r5, _08051FE0 @ =gScreen
	ldrh r2, [r5]
	movs r4, #0xc0
	lsls r4, r4, #7
	ands r4, r2
	bl sub_08052FF4
	ldr r1, _08051FE4 @ =gRoomControls
	ldrh r0, [r1, #6]
	adds r0, r0, r6
	movs r6, #0
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #8]
	add r0, r8
	strh r0, [r1, #0xc]
	bl sub_0807C740
	ldr r1, _08051FE8 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08051FEC @ =gUsedPalettes
	str r6, [r0]
	ldrh r0, [r5]
	orrs r4, r0
	strh r4, [r5]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, pc}
	.align 2, 0
_08051FE0: .4byte gScreen
_08051FE4: .4byte gRoomControls
_08051FE8: .4byte gUnk_02000070
_08051FEC: .4byte gUsedPalettes

	thumb_func_start sub_08051FF0
sub_08051FF0: @ 0x08051FF0
	push {lr}
	ldr r0, _08052000 @ =gMenu
	ldr r1, [r0, #0xc]
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	bl sub_0804B0B0
	pop {pc}
	.align 2, 0
_08052000: .4byte gMenu

	thumb_func_start sub_08052004
sub_08052004: @ 0x08052004
	ldr r1, _0805200C @ =gMenu
	movs r0, #2
	strb r0, [r1, #5]
	bx lr
	.align 2, 0
_0805200C: .4byte gMenu

	thumb_func_start sub_08052010
sub_08052010: @ 0x08052010
	push {r4, lr}
	bl sub_080A3210
	bl sub_08056418
	movs r0, #1
	bl sub_0801DA90
	ldr r0, _0805207C @ =gBG1Buffer
	movs r4, #0x80
	lsls r4, r4, #4
	adds r1, r4, #0
	bl _DmaZero
	ldr r0, _08052080 @ =gBG2Buffer
	adds r1, r4, #0
	bl _DmaZero
	bl sub_080A4D34
	movs r0, #0xa
	bl LoadPaletteGroup
	movs r0, #0
	movs r1, #0
	bl sub_0801D79C
	movs r0, #4
	bl LoadGfxGroup
	movs r0, #0xc0
	lsls r0, r0, #0x13
	movs r1, #0x20
	bl _DmaZero
	ldr r0, _08052084 @ =gMenu
	movs r1, #0x30
	bl _DmaZero
	ldr r1, _08052088 @ =gScreen
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0805208C @ =0x00001C01
	strh r0, [r1, #0x14]
	ldr r0, _08052090 @ =0x00001D05
	strh r0, [r1, #0x20]
	movs r0, #1
	strh r0, [r1, #0x1a]
	strh r0, [r1, #0x26]
	pop {r4, pc}
	.align 2, 0
_0805207C: .4byte gBG1Buffer
_08052080: .4byte gBG2Buffer
_08052084: .4byte gMenu
_08052088: .4byte gScreen
_0805208C: .4byte 0x00001C01
_08052090: .4byte 0x00001D05

	thumb_func_start HandleGameOverScreen
HandleGameOverScreen: @ 0x08052094
	push {r4, lr}
	ldr r1, _080520BC @ =gUnk_080FCA70
	ldr r4, _080520C0 @ =gUnk_03001000
	ldrb r0, [r4, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _080520B8
	bl FlushSprites
	bl sub_080523D4
	bl sub_080AD918
_080520B8:
	pop {r4, pc}
	.align 2, 0
_080520BC: .4byte gUnk_080FCA70
_080520C0: .4byte gUnk_03001000

	thumb_func_start sub_080520C4
sub_080520C4: @ 0x080520C4
	push {lr}
	ldr r1, _080520D4 @ =gUnk_03001000
	strb r0, [r1, #3]
	movs r0, #0
	bl sub_080A7114
	pop {pc}
	.align 2, 0
_080520D4: .4byte gUnk_03001000

	thumb_func_start sub_080520D8
sub_080520D8: @ 0x080520D8
	push {r4, lr}
	ldr r4, _08052118 @ =gFadeControl
	ldrb r0, [r4]
	cmp r0, #0
	bne _08052114
	bl sub_08052010
	ldr r1, _0805211C @ =gMenu
	movs r0, #0x50
	strb r0, [r1, #0x10]
	movs r2, #0x3c
	movs r0, #0x3c
	strh r0, [r1, #8]
	ldr r0, _08052120 @ =gSave
	adds r0, #0xaa
	movs r1, #0x18
	strb r1, [r0]
	ldr r0, _08052124 @ =gUnk_03001000
	strb r2, [r0, #5]
	movs r0, #0xa
	bl PlaySFX
	movs r0, #4
	bl sub_080500F4
	ldr r0, _08052128 @ =0xFFFF0001
	str r0, [r4, #4]
	movs r0, #1
	bl sub_080520C4
_08052114:
	pop {r4, pc}
	.align 2, 0
_08052118: .4byte gFadeControl
_0805211C: .4byte gMenu
_08052120: .4byte gSave
_08052124: .4byte gUnk_03001000
_08052128: .4byte 0xFFFF0001

	thumb_func_start sub_0805212C
sub_0805212C: @ 0x0805212C
	push {r4, lr}
	ldr r4, _0805214C @ =gFadeControl
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805219C
	ldr r1, _08052150 @ =gUnk_03001000
	ldrb r0, [r1, #5]
	cmp r0, #0
	bne _08052198
	ldr r1, _08052154 @ =gMenu
	ldrb r0, [r1, #0x10]
	cmp r0, #0x25
	bls _08052158
	subs r0, #1
	strb r0, [r1, #0x10]
	b _0805219C
	.align 2, 0
_0805214C: .4byte gFadeControl
_08052150: .4byte gUnk_03001000
_08052154: .4byte gMenu
_08052158:
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805219C
	movs r0, #2
	bl sub_080520C4
	movs r0, #0
	movs r1, #0
	bl sub_08052418
	ldr r2, _08052190 @ =gScreen
	ldrh r0, [r2]
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08052194 @ =0x0000FFFF
	str r0, [r4, #4]
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	b _0805219C
	.align 2, 0
_08052190: .4byte gScreen
_08052194: .4byte 0x0000FFFF
_08052198:
	subs r0, #1
	strb r0, [r1, #5]
_0805219C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080521A0
sub_080521A0: @ 0x080521A0
	push {r4, lr}
	ldr r0, _080521C4 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	beq _080521AC
	b _080522E8
_080521AC:
	ldr r0, _080521C8 @ =gMenu
	ldrb r1, [r0, #5]
	adds r2, r0, #0
	cmp r1, #4
	bls _080521B8
	b _080522D4
_080521B8:
	lsls r0, r1, #2
	ldr r1, _080521CC @ =_080521D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080521C4: .4byte gFadeControl
_080521C8: .4byte gMenu
_080521CC: .4byte _080521D0
_080521D0: @ jump table
	.4byte _080521E4 @ case 0
	.4byte _08052208 @ case 1
	.4byte _08052278 @ case 2
	.4byte _080522B0 @ case 3
	.4byte _080522D4 @ case 4
_080521E4:
	movs r1, #0
	movs r0, #0x1e
	strh r0, [r2, #8]
	strb r1, [r2, #3]
	movs r0, #1
	bl sub_080A7114
	movs r0, #0
	movs r1, #0
	bl sub_08052418
	ldr r1, _08052204 @ =gFadeControl
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #4]
	b _080522E8
	.align 2, 0
_08052204: .4byte gFadeControl
_08052208:
	ldrh r0, [r2, #8]
	cmp r0, #0
	bne _080522B6
	ldrb r4, [r2, #3]
	ldr r0, _08052224 @ =gInput
	ldrh r0, [r0, #2]
	cmp r0, #0x40
	beq _0805222E
	cmp r0, #0x40
	bgt _08052228
	cmp r0, #1
	beq _08052236
	b _0805225A
	.align 2, 0
_08052224: .4byte gInput
_08052228:
	cmp r0, #0x80
	beq _08052232
	b _0805225A
_0805222E:
	movs r4, #0
	b _0805225A
_08052232:
	movs r4, #1
	b _0805225A
_08052236:
	cmp r4, #0
	beq _0805223E
	movs r2, #4
	b _08052248
_0805223E:
	movs r0, #8
	movs r1, #0
	bl CreateDialogBox
	movs r2, #2
_08052248:
	ldr r1, _08052274 @ =gMenu
	movs r0, #0x3c
	strh r0, [r1, #8]
	adds r0, r2, #0
	bl sub_080A7114
	movs r0, #0x6a
	bl PlaySFX
_0805225A:
	ldr r1, _08052274 @ =gMenu
	ldrb r0, [r1, #3]
	cmp r0, r4
	beq _080522E8
	strb r4, [r1, #3]
	movs r0, #0
	adds r1, r4, #0
	bl sub_08052418
	movs r0, #0x69
	bl PlaySFX
	b _080522E8
	.align 2, 0
_08052274: .4byte gMenu
_08052278:
	movs r0, #0
	bl sub_0807CDA4
	adds r1, r0, #0
	ldr r2, _08052298 @ =gMenu
	strb r1, [r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0805229C
	cmp r1, #1
	bne _080522E8
	movs r0, #4
	bl sub_080A7114
	b _080522E8
	.align 2, 0
_08052298: .4byte gMenu
_0805229C:
	movs r0, #0x3c
	strh r0, [r2, #8]
	movs r0, #9
	movs r1, #0
	bl CreateDialogBox
	movs r0, #3
	bl sub_080A7114
	b _080522E8
_080522B0:
	ldrh r0, [r2, #8]
	cmp r0, #0
	beq _080522BC
_080522B6:
	subs r0, #1
	strh r0, [r2, #8]
	b _080522E8
_080522BC:
	ldr r0, _080522D0 @ =gInput
	ldrh r1, [r0, #2]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080522E8
	movs r0, #0
	bl sub_080A7114
	b _080522E8
	.align 2, 0
_080522D0: .4byte gInput
_080522D4:
	ldr r2, _080522EC @ =gScreen
	ldrh r1, [r2]
	ldr r0, _080522F0 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	bl sub_08050384
	movs r0, #3
	bl sub_080520C4
_080522E8:
	pop {r4, pc}
	.align 2, 0
_080522EC: .4byte gScreen
_080522F0: .4byte 0x0000FDFF

	thumb_func_start sub_080522F4
sub_080522F4: @ 0x080522F4
	push {r4, lr}
	ldr r0, _08052320 @ =gMenu
	ldrb r1, [r0, #5]
	adds r3, r0, #0
	cmp r1, #1
	beq _08052324
	cmp r1, #1
	bgt _080523AC
	cmp r1, #0
	bne _080523AC
	movs r1, #0
	movs r0, #0x1e
	strh r0, [r3, #8]
	strb r1, [r3, #3]
	movs r0, #1
	bl sub_080A7114
	movs r0, #1
	movs r1, #0
	bl sub_08052418
	b _080523CC
	.align 2, 0
_08052320: .4byte gMenu
_08052324:
	ldr r2, _08052340 @ =gScreen
	ldrh r1, [r2]
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldrh r0, [r3, #8]
	cmp r0, #0
	beq _08052344
	subs r0, #1
	strh r0, [r3, #8]
	b _080523CC
	.align 2, 0
_08052340: .4byte gScreen
_08052344:
	ldrb r4, [r3, #3]
	ldr r0, _08052358 @ =gInput
	ldrh r0, [r0, #2]
	cmp r0, #0x40
	beq _08052362
	cmp r0, #0x40
	bgt _0805235C
	cmp r0, #1
	beq _0805236A
	b _0805238C
	.align 2, 0
_08052358: .4byte gInput
_0805235C:
	cmp r0, #0x80
	beq _08052366
	b _0805238C
_08052362:
	movs r4, #0
	b _0805238C
_08052366:
	movs r4, #1
	b _0805238C
_0805236A:
	movs r0, #2
	bl sub_080A7114
	movs r0, #0x6a
	bl PlaySFX
	cmp r4, #0
	bne _08052384
	movs r0, #5
	movs r1, #8
	bl DoFade
	b _0805238C
_08052384:
	movs r0, #7
	movs r1, #8
	bl DoFade
_0805238C:
	ldr r1, _080523A8 @ =gMenu
	ldrb r0, [r1, #3]
	cmp r0, r4
	beq _080523CC
	strb r4, [r1, #3]
	movs r0, #1
	adds r1, r4, #0
	bl sub_08052418
	movs r0, #0x69
	bl PlaySFX
	b _080523CC
	.align 2, 0
_080523A8: .4byte gMenu
_080523AC:
	ldr r0, _080523C4 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _080523CC
	ldrb r0, [r3, #3]
	cmp r0, #0
	bne _080523C8
	movs r0, #2
	bl InitScreen
	b _080523CC
	.align 2, 0
_080523C4: .4byte gFadeControl
_080523C8:
	bl DoSoftReset
_080523CC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_107
nullsub_107: @ 0x080523D0
	bx lr
	.align 2, 0

	thumb_func_start sub_080523D4
sub_080523D4: @ 0x080523D4
	push {r4, r5, r6, lr}
	ldr r1, _08052408 @ =gUnk_03001010
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	movs r0, #0x86
	lsls r0, r0, #8
	strh r0, [r1, #8]
	ldr r0, _0805240C @ =gMenu
	ldrb r0, [r0, #0x10]
	strh r0, [r1, #2]
	movs r4, #0
	adds r6, r1, #0
	ldr r5, _08052410 @ =gUnk_080FCA84
_080523F0:
	adds r0, r4, r5
	ldrb r0, [r0]
	strh r0, [r6]
	ldr r0, _08052414 @ =0x000001FD
	adds r1, r4, #0
	bl sub_080ADA14
	adds r4, #1
	cmp r4, #7
	bls _080523F0
	pop {r4, r5, r6, pc}
	.align 2, 0
_08052408: .4byte gUnk_03001010
_0805240C: .4byte gMenu
_08052410: .4byte gUnk_080FCA84
_08052414: .4byte 0x000001FD
