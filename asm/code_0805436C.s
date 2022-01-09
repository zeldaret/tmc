	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805488C
sub_0805488C: @ 0x0805488C
	push {r4, lr}
	ldr r4, _080548DC @ =gUnk_02032EC0
	ldrb r1, [r4, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080548E0 @ =gUnk_080FE320
	adds r0, r0, r1
	ldr r2, _080548E4 @ =gMenu
	ldrb r1, [r0]
	movs r3, #0
	strb r1, [r2]
	ldrb r1, [r0, #1]
	strb r1, [r2, #3]
	ldrb r1, [r4, #3]
	strb r1, [r2, #4]
	str r0, [r2, #0xc]
	ldrb r0, [r2, #5]
	adds r0, #1
	strb r0, [r2, #5]
	strb r3, [r2, #6]
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r2, #8]
	movs r0, #0
	bl DispReset
	ldrb r0, [r4, #3]
	movs r1, #1
	bl sub_08054974
	bl sub_0806F364
	movs r0, #0xff
	bl ClearRoomFlag
	bl sub_080548E8
	pop {r4, pc}
	.align 2, 0
_080548DC: .4byte gUnk_02032EC0
_080548E0: .4byte gUnk_080FE320
_080548E4: .4byte gMenu

	thumb_func_start sub_080548E8
sub_080548E8: @ 0x080548E8
	push {lr}
	ldr r1, _08054918 @ =gUnk_080FE2AC
	ldr r0, _0805491C @ =gMenu
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl FlushSprites
	bl UpdateEntities
	bl DrawEntities
	bl CopyOAM
	bl UpdateScroll
	bl UpdateBgAnim
	bl UpdateScrollVram
	pop {pc}
	.align 2, 0
_08054918: .4byte gUnk_080FE2AC
_0805491C: .4byte gMenu

	thumb_func_start sub_08054920
sub_08054920: @ 0x08054920
	push {lr}
	bl MessageInitialize
	bl sub_0806F38C
	ldr r1, _08054948 @ =gUnk_080C9CBC
	ldr r0, _0805494C @ =gFuseInfo
	ldrb r0, [r0, #3]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _08054954
	ldr r0, _08054950 @ =gUnk_02032EC0
	ldrb r1, [r0, #3]
	movs r0, #0xa
	bl MenuFadeIn
	b _08054962
	.align 2, 0
_08054948: .4byte gUnk_080C9CBC
_0805494C: .4byte gFuseInfo
_08054950: .4byte gUnk_02032EC0
_08054954:
	ldr r1, _08054964 @ =gUnk_02032EC0
	movs r0, #3
	strb r0, [r1]
	movs r0, #7
	movs r1, #0x10
	bl SetFade
_08054962:
	pop {pc}
	.align 2, 0
_08054964: .4byte gUnk_02032EC0

	thumb_func_start sub_08054968
sub_08054968: @ 0x08054968
	ldr r1, _08054970 @ =gMenu
	movs r0, #2
	strb r0, [r1, #5]
	bx lr
	.align 2, 0
_08054970: .4byte gMenu

	thumb_func_start sub_08054974
sub_08054974: @ 0x08054974
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080549B0 @ =gUnk_080FE320
	adds r6, r1, r0
	ldrb r0, [r6, #2]
	ldrb r1, [r6, #3]
	bl SetCurrentRoomPropertyList
	ldr r4, _080549B4 @ =gRoomControls
	ldrb r0, [r6, #2]
	strb r0, [r4, #4]
	ldrb r0, [r6, #3]
	strb r0, [r4, #5]
	bl LoadGfxGroups
	ldrb r0, [r4, #4]
	bl GetFlagBankOffset
	ldr r1, _080549B8 @ =gArea
	strh r0, [r1, #4]
	cmp r5, #0
	beq _080549BC
	ldrb r0, [r6, #2]
	ldrb r1, [r6, #3]
	bl LoadAuxiliaryRoom
	b _080549CE
	.align 2, 0
_080549B0: .4byte gUnk_080FE320
_080549B4: .4byte gRoomControls
_080549B8: .4byte gArea
_080549BC:
	ldrb r0, [r6, #2]
	ldrb r1, [r6, #3]
	bl sub_08052FF4
	bl sub_0807C740
	ldr r1, _08054A00 @ =gUpdateVisibleTiles
	movs r0, #1
	strb r0, [r1]
_080549CE:
	ldr r2, _08054A04 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _08054A08 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08054A0C @ =gRoomControls
	ldrh r0, [r6, #4]
	ldrh r2, [r1, #6]
	adds r0, r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r6, #6]
	ldrh r2, [r1, #8]
	adds r0, r0, r2
	strh r0, [r1, #0xc]
	ldrb r0, [r6, #2]
	cmp r0, #2
	bne _080549F4
	bl TryLoadPrologueHyruleTown
_080549F4:
	ldr r0, _08054A10 @ =gUnk_02032EC0
	ldrb r0, [r0, #3]
	bl sub_08018710
	pop {r4, r5, r6, pc}
	.align 2, 0
_08054A00: .4byte gUpdateVisibleTiles
_08054A04: .4byte gScreen
_08054A08: .4byte 0x00001FFF
_08054A0C: .4byte gRoomControls
_08054A10: .4byte gUnk_02032EC0

	thumb_func_start sub_08054A14
sub_08054A14: @ 0x08054A14
	push {lr}
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08054A38 @ =gUnk_080FE320
	adds r2, r1, r0
	ldrb r0, [r2, #0x11]
	cmp r0, #0xd
	bhi _08054A34
	ldr r1, _08054A3C @ =gLocalFlagBanks
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r2, #0x12]
	bl SetLocalFlagByBank
_08054A34:
	pop {pc}
	.align 2, 0
_08054A38: .4byte gUnk_080FE320
_08054A3C: .4byte gLocalFlagBanks
