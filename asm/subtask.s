	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Subtask_PauseMenu
Subtask_PauseMenu: @ 0x080A4EA0
	push {r4, lr}
	ldr r4, _080A4EB8 @ =gUnk_02034490
	ldrb r0, [r4, #0x11]
	cmp r0, #6
	bne _080A4EBC
	movs r0, #0x80
	lsls r0, r0, #1
	bl SetBgmVolume
	bl Subtask_Exit
	b _080A4F14
	.align 2, 0
_080A4EB8: .4byte gUnk_02034490
_080A4EBC:
	bl FlushSprites
	ldr r1, _080A4F18 @ =gUnk_08128B30
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_080A5128
	bl sub_0801C1D4
	bl DrawOAMCmd
	ldrb r0, [r4, #0x11]
	cmp r0, #4
	beq _080A4EF0
	ldr r0, _080A4F1C @ =gUnk_08128A38
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	bl _call_via_r0
_080A4EF0:
	bl CopyOAM
	movs r3, #0x16
	ldrsb r3, [r4, r3]
	movs r1, #0
	cmp r3, #0
	beq _080A4F00
	ldr r1, _080A4F20 @ =0x00000E46
_080A4F00:
	ldr r2, _080A4F24 @ =gScreen
	adds r0, r2, #0
	adds r0, #0x66
	strh r1, [r0]
	lsls r1, r3, #8
	movs r0, #0x10
	subs r0, r0, r3
	orrs r1, r0
	adds r2, #0x68
	strh r1, [r2]
_080A4F14:
	pop {r4, pc}
	.align 2, 0
_080A4F18: .4byte gUnk_08128B30
_080A4F1C: .4byte gUnk_08128A38
_080A4F20: .4byte 0x00000E46
_080A4F24: .4byte gScreen

	thumb_func_start sub_080A4F28
sub_080A4F28: @ 0x080A4F28
	push {r4, lr}
	bl sub_0801E8D4
	bl sub_080A4D34
	movs r1, #4
	ldr r3, _080A4F90 @ =gUnk_02034492
	movs r2, #0
_080A4F38:
	adds r0, r1, r3
	strb r2, [r0]
	adds r1, #1
	cmp r1, #0xd
	ble _080A4F38
	ldr r1, _080A4F94 @ =gRoomTransition
	ldrh r0, [r1, #0x20]
	ldrh r1, [r1, #0x22]
	bl sub_080A6A80
	ldr r4, _080A4F98 @ =gUnk_02034490
	ldrb r0, [r0, #4]
	strb r0, [r4, #6]
	bl sub_0801DB94
	strb r0, [r4, #7]
	movs r0, #0x10
	bl IsItemEquipped
	movs r1, #0xf
	cmp r0, #2
	beq _080A4F66
	movs r1, #0x10
_080A4F66:
	strb r1, [r4, #0x15]
	ldr r1, _080A4F9C @ =gUnk_08128A38
	ldrb r0, [r4, #1]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	bl sub_080A50A0
	strb r0, [r4, #1]
	strb r0, [r4, #0x14]
	bl sub_080A4DB8
	movs r0, #4
	movs r1, #0x20
	bl SetFade
	movs r0, #1
	bl sub_080A4E90
	pop {r4, pc}
	.align 2, 0
_080A4F90: .4byte gUnk_02034492
_080A4F94: .4byte gRoomTransition
_080A4F98: .4byte gUnk_02034490
_080A4F9C: .4byte gUnk_08128A38

	thumb_func_start sub_080A4FA0
sub_080A4FA0: @ 0x080A4FA0
	push {lr}
	ldr r0, _080A4FB4 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A4FB0
	movs r0, #2
	bl sub_080A4E90
_080A4FB0:
	pop {pc}
	.align 2, 0
_080A4FB4: .4byte gFadeControl

	thumb_func_start sub_080A4FB8
sub_080A4FB8: @ 0x080A4FB8
	push {r4, r5, lr}
	bl sub_080A51F4
	cmp r0, #0
	beq _080A5052
	ldr r0, _080A4FE4 @ =gMenu
	ldr r1, [r0, #0xc]
	adds r2, r0, #0
	cmp r1, #0
	beq _080A5052
	movs r4, #1
	rsbs r4, r4, #0
	ldr r0, _080A4FE8 @ =gInput
	ldrh r1, [r0, #2]
	cmp r1, #8
	beq _080A4FFE
	cmp r1, #8
	bgt _080A4FEC
	cmp r1, #2
	beq _080A500A
	b _080A500C
	.align 2, 0
_080A4FE4: .4byte gMenu
_080A4FE8: .4byte gInput
_080A4FEC:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _080A5006
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _080A5002
	b _080A500C
_080A4FFE:
	movs r4, #0
	b _080A5010
_080A5002:
	movs r4, #1
	b _080A5010
_080A5006:
	movs r4, #2
	b _080A5010
_080A500A:
	movs r4, #3
_080A500C:
	cmp r4, #0
	blt _080A5052
_080A5010:
	ldr r0, [r2, #0xc]
	adds r0, r0, r4
	ldrb r5, [r0]
	cmp r5, #6
	bgt _080A5024
	cmp r5, #4
	bge _080A5028
	cmp r5, #0
	beq _080A5052
	b _080A5042
_080A5024:
	cmp r5, #0xf
	bne _080A5042
_080A5028:
	movs r0, #0x47
	bl GetInventoryValue
	cmp r0, #0
	bne _080A5042
	movs r1, #1
	cmp r4, #1
	bne _080A503A
	movs r1, #2
_080A503A:
	ldr r0, _080A5078 @ =gMenu
	ldr r0, [r0, #0xc]
	adds r0, r0, r1
	ldrb r5, [r0]
_080A5042:
	ldr r0, _080A507C @ =gUnk_02034490
	movs r4, #0
	strb r5, [r0, #0x14]
	movs r0, #0x65
	bl SoundReq
	ldr r0, _080A5078 @ =gMenu
	str r4, [r0, #0xc]
_080A5052:
	ldr r4, _080A507C @ =gUnk_02034490
	movs r0, #0x14
	ldrsb r0, [r4, r0]
	bl sub_080A50A0
	adds r5, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, r5
	beq _080A5096
	strb r5, [r4, #0x14]
	bl sub_080A51D4
	cmp r5, #0xe
	bne _080A5080
	movs r0, #6
	bl sub_080A4E90
	b _080A5096
	.align 2, 0
_080A5078: .4byte gMenu
_080A507C: .4byte gUnk_02034490
_080A5080:
	movs r0, #3
	bl sub_080A4E90
	ldr r0, _080A5098 @ =gBG0Buffer
	movs r1, #0x80
	lsls r1, r1, #4
	bl MemClear
	ldr r1, _080A509C @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
_080A5096:
	pop {r4, r5, pc}
	.align 2, 0
_080A5098: .4byte gBG0Buffer
_080A509C: .4byte gScreen

	thumb_func_start sub_080A50A0
sub_080A50A0: @ 0x080A50A0
	push {lr}
	adds r1, r0, #0
	cmp r1, #0xf
	bne _080A50B4
	bl AreaHasMap
	movs r1, #4
	cmp r0, #0
	beq _080A50B4
	movs r1, #5
_080A50B4:
	adds r0, r1, #0
	pop {pc}

	thumb_func_start sub_080A50B8
sub_080A50B8: @ 0x080A50B8
	push {r4, lr}
	ldr r4, _080A50DC @ =gUnk_02034490
	movs r0, #0x16
	ldrsb r0, [r4, r0]
	adds r0, #2
	cmp r0, #0x10
	ble _080A50D8
	ldr r2, _080A50E0 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _080A50E4 @ =0x0000F8FF
	ands r0, r1
	strh r0, [r2]
	movs r0, #4
	bl sub_080A4E90
	movs r0, #0x10
_080A50D8:
	strb r0, [r4, #0x16]
	pop {r4, pc}
	.align 2, 0
_080A50DC: .4byte gUnk_02034490
_080A50E0: .4byte gScreen
_080A50E4: .4byte 0x0000F8FF

	thumb_func_start sub_080A50E8
sub_080A50E8: @ 0x080A50E8
	push {lr}
	ldr r1, _080A5104 @ =gUnk_02034490
	movs r0, #0x10
	strb r0, [r1, #0x16]
	movs r0, #0x14
	ldrsb r0, [r1, r0]
	strb r0, [r1, #1]
	bl sub_080A4DB8
	movs r0, #5
	bl sub_080A4E90
	pop {pc}
	.align 2, 0
_080A5104: .4byte gUnk_02034490

	thumb_func_start sub_080A5108
sub_080A5108: @ 0x080A5108
	push {r4, lr}
	ldr r4, _080A5124 @ =gUnk_02034490
	movs r0, #0x16
	ldrsb r0, [r4, r0]
	subs r0, #2
	cmp r0, #0
	bge _080A511E
	movs r0, #2
	bl sub_080A4E90
	movs r0, #0
_080A511E:
	strb r0, [r4, #0x16]
	pop {r4, pc}
	.align 2, 0
_080A5124: .4byte gUnk_02034490

	thumb_func_start sub_080A5128
sub_080A5128: @ 0x080A5128
	push {r4, r5, lr}
	sub sp, #0x18
	ldr r0, _080A5140 @ =gUnk_02034490
	ldrb r1, [r0, #1]
	adds r2, r0, #0
	cmp r1, #7
	blt _080A515A
	cmp r1, #8
	ble _080A5144
	cmp r1, #0xb
	bgt _080A515A
	b _080A51C6
	.align 2, 0
_080A5140: .4byte gUnk_02034490
_080A5144:
	movs r0, #0x60
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	subs r0, #0x28
	str r0, [sp, #8]
	movs r1, #0x48
	str r1, [sp, #0xc]
	movs r0, #0x80
	lsls r0, r0, #1
	b _080A5182
_080A515A:
	movs r0, #0x40
	str r0, [sp]
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r4, #0x10
	subs r0, r4, r0
	str r0, [sp, #4]
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r4, r4, r0
	str r4, [sp, #8]
	movs r1, #0x48
	str r1, [sp, #0xc]
	adds r0, #0xe0
_080A5182:
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r4, _080A51CC @ =gOamCmd
	movs r0, #0
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #8]
	ldr r0, [sp]
	strh r0, [r4]
	ldr r0, [sp, #4]
	strh r0, [r4, #2]
.ifdef EU
	movs r5, #0xfd
	lsls r5, r5, #0x1
.else
	ldr r5, _080A51D0 @ =0x000001FB
.endif
	adds r0, r5, #0
	movs r1, #0
	bl DrawDirect
	ldr r0, [sp, #8]
	strh r0, [r4]
	ldr r0, [sp, #0xc]
	strh r0, [r4, #2]
	adds r0, r5, #0
	movs r1, #1
	bl DrawDirect
	ldr r0, [sp, #0x10]
	strh r0, [r4]
	ldr r0, [sp, #0x14]
	strh r0, [r4, #2]
	adds r0, r5, #0
	movs r1, #2
	bl DrawDirect
_080A51C6:
	add sp, #0x18
	pop {r4, r5, pc}
	.align 2, 0
_080A51CC: .4byte gOamCmd
.ifndef EU
_080A51D0: .4byte 0x000001FB
.endif

	thumb_func_start sub_080A51D4
sub_080A51D4: @ 0x080A51D4
	push {lr}
	ldr r0, _080A51EC @ =gUnk_02034490
	ldrb r1, [r0, #1]
	cmp r1, #0xd
	bhi _080A51E8
	adds r0, #2
	adds r0, r1, r0
	ldr r1, _080A51F0 @ =gMenu
	ldrb r1, [r1, #3]
	strb r1, [r0]
_080A51E8:
	pop {pc}
	.align 2, 0
_080A51EC: .4byte gUnk_02034490
_080A51F0: .4byte gMenu

	thumb_func_start sub_080A51F4
sub_080A51F4: @ 0x080A51F4
	push {lr}
	movs r1, #1
	ldr r0, _080A5210 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A5202
	movs r1, #0
_080A5202:
	ldr r0, _080A5214 @ =gUnk_02034490
	ldrb r0, [r0, #0x11]
	cmp r0, #2
	beq _080A520C
	movs r1, #0
_080A520C:
	adds r0, r1, #0
	pop {pc}
	.align 2, 0
_080A5210: .4byte gFadeControl
_080A5214: .4byte gUnk_02034490

	thumb_func_start sub_080A5218
sub_080A5218: @ 0x080A5218
	push {lr}
	ldr r1, _080A5230 @ =gUnk_08128B48
	ldr r0, _080A5234 @ =gMenu
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_080A5384
	pop {pc}
	.align 2, 0
_080A5230: .4byte gUnk_08128B48
_080A5234: .4byte gMenu

	thumb_func_start sub_080A5238
sub_080A5238: @ 0x080A5238
	push {r4, r5, lr}
	ldr r4, _080A528C @ =gMenu
	movs r0, #0
	str r0, [r4, #0xc]
	ldr r0, _080A5290 @ =gUnk_08128B50
	bl sub_080A70AC
	movs r5, #1
	adds r4, #0x10
_080A524A:
	adds r0, r5, #0
	bl GetInventoryValue
	cmp r0, #1
	bne _080A527E
	ldr r1, _080A5294 @ =gUnk_080FD5B4
	lsls r0, r5, #3
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #0x11
	bhi _080A527E
	cmp r5, #0x10
	bhi _080A526C
	cmp r5, #0xf
	blo _080A526C
	ldr r0, _080A5298 @ =gUnk_02034490
	ldrb r5, [r0, #0x15]
_080A526C:
	adds r0, r1, r4
	strb r5, [r0]
	lsls r1, r1, #3
	movs r0, #0xd8
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r0, r5, #0
	bl sub_080A5F48
_080A527E:
	adds r5, #1
	cmp r5, #0x1f
	bls _080A524A
	movs r0, #1
	bl sub_080A7114
	pop {r4, r5, pc}
	.align 2, 0
_080A528C: .4byte gMenu
_080A5290: .4byte gUnk_08128B50
_080A5294: .4byte gUnk_080FD5B4
_080A5298: .4byte gUnk_02034490

	thumb_func_start sub_080A529C
sub_080A529C: @ 0x080A529C
	push {r4, r5, lr}
	bl sub_080A51F4
	cmp r0, #0
	beq _080A5380
	ldr r1, _080A52D0 @ =gMenu
	ldr r0, _080A52D4 @ =gUnk_08128BF4
	str r0, [r1, #0xc]
	ldrb r4, [r1, #3]
	lsls r1, r4, #3
	ldr r0, _080A52D8 @ =gItemMenuTable
	adds r1, r1, r0
	ldr r0, _080A52DC @ =gInput
	ldrh r2, [r0, #2]
	adds r3, r0, #0
	cmp r2, #1
	beq _080A52E0
	cmp r2, #2
	beq _080A52EC
	ldrh r0, [r3, #4]
	cmp r0, #0x20
	beq _080A5330
	cmp r0, #0x20
	bgt _080A531E
	b _080A5318
	.align 2, 0
_080A52D0: .4byte gMenu
_080A52D4: .4byte gUnk_08128BF4
_080A52D8: .4byte gItemMenuTable
_080A52DC: .4byte gInput
_080A52E0:
	cmp r4, #0x10
	bne _080A52EC
.ifdef DEMO_USA
	movs r0, #0x6d
	bl SoundReq
	b _080A5336
.else
.ifdef DEMO_JP @ TODO same as DEMO_USA
	movs r0, #0x6d
	bl SoundReq
	b _080A5336
.else
	movs r0, #0xb
	bl sub_080A4E84
	b _080A530A
.endif
.endif
_080A52EC:
	ldr r0, _080A5314 @ =gMenu
	adds r0, #0x10
	adds r2, r4, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _080A5336
	ldrh r0, [r3, #2]
	movs r1, #1
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	ldrb r0, [r2]
	bl ForceEquipItem
_080A530A:
	movs r0, #0x6a
	bl SoundReq
	b _080A5336
	.align 2, 0
_080A5314: .4byte gMenu
_080A5318:
	cmp r0, #0x10
	beq _080A5334
	b _080A5336
_080A531E:
	cmp r0, #0x40
	beq _080A5328
	cmp r0, #0x80
	beq _080A532C
	b _080A5336
_080A5328:
	ldrb r4, [r1]
	b _080A5336
_080A532C:
	ldrb r4, [r1, #1]
	b _080A5336
_080A5330:
	ldrb r4, [r1, #2]
	b _080A5336
_080A5334:
	ldrb r4, [r1, #3]
_080A5336:
	ldr r5, _080A535C @ =gMenu
	ldrb r0, [r5, #3]
	cmp r0, r4
	beq _080A5346
	strb r4, [r5, #3]
	movs r0, #0x69
	bl SoundReq
_080A5346:
	adds r0, r5, #0
	adds r0, #0x10
	adds r0, r4, r0
	ldrb r1, [r0]
	cmp r4, #0xc
	blo _080A5376
	cmp r4, #0xf
	bls _080A5360
	cmp r4, #0x10
	beq _080A5374
	b _080A5376
	.align 2, 0
_080A535C: .4byte gMenu
_080A5360:
	cmp r1, #0
	beq _080A5376
	ldr r0, _080A5370 @ =gSave
	adds r0, r0, r1
	adds r0, #0x9a
	ldrb r1, [r0]
	b _080A5376
	.align 2, 0
_080A5370: .4byte gSave
_080A5374:
	movs r1, #0x73
_080A5376:
	movs r0, #0x80
	lsls r0, r0, #3
	adds r0, r1, r0
	bl sub_080A6F6C
_080A5380:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A5384
sub_080A5384: @ 0x080A5384
.ifdef EU
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080A4C14EU @ =gOamCmd
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	movs r5, #0
	ldr r4, _080A4C18 @ =gSave
	movs r0, #0xb6
	adds r0, r0, r4
	mov sl, r0
	movs r1, #0xac
	adds r1, r1, r4
	mov sb, r1
	movs r2, #0xad
	adds r2, r2, r4
	mov r8, r2
	movs r6, #0
_080A4BC8:
	ldr r0, _080A4C1C @ =gChooseFileState
	adds r0, #0x10
	adds r2, r5, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _080A4C68
	ldr r0, _080A4C20 @ =gItemMenuTable
	adds r1, r6, r0
	ldrb r0, [r1, #6]
	ldr r3, _080A4C14EU @ =gOamCmd
	strh r0, [r3]
	ldrb r0, [r1, #7]
	strh r0, [r3, #2]
	ldrb r3, [r2]
	cmp r3, #0x1f
	bhi _080A4BF4
	cmp r3, #0x1c
	blo _080A4BF4
	adds r0, r3, #0
	subs r0, #0x1c
	add r0, sl
	ldrb r3, [r0]
_080A4BF4:
	movs r2, #3
	cmp r3, #7
	blo _080A4C42
	cmp r3, #8
	bhi _080A4C28
	ldr r0, _080A4C24 @ =gBombBagSizes
	adds r1, r4, #0
	adds r1, #0xae
	ldrb r1, [r1]
	adds r1, r1, r0
	ldrb r0, [r1]
	mov r7, sb
	ldrb r7, [r7]
	cmp r0, r7
	bhi _080A4C42
	b _080A4C40
	.align 2, 0
_080A4C14EU: .4byte gOamCmd
_080A4C18: .4byte gSave
_080A4C1C: .4byte gChooseFileState
_080A4C20: .4byte gItemMenuTable
_080A4C24: .4byte gBombBagSizes
_080A4C28:
	cmp r3, #0xa
	bhi _080A4C42
	ldr r0, _080A4D40 @ =gQuiverSizes
	adds r1, r4, #0
	adds r1, #0xaf
	ldrb r1, [r1]
	adds r1, r1, r0
	ldrb r0, [r1]
	mov r1, r8
	ldrb r1, [r1]
	cmp r0, r1
	bhi _080A4C42
_080A4C40:
	movs r2, #4
_080A4C42:
	lsls r2, r2, #0xc
	movs r7, #0xd8
	lsls r7, r7, #2
	adds r0, r6, r7
	movs r7, #0x80
	lsls r7, r7, #4
	adds r1, r7, #0
	orrs r0, r1
	orrs r2, r0
	ldr r0, _080A4D44 @ =gOamCmd
	strh r2, [r0, #8]
	ldr r1, _080A4D48 @ =gSpriteAnimations_322
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r1, [r0]
	ldr r0, _080A4D4C @ =0x00000141
	bl DrawDirect
_080A4C68:
	adds r6, #8
	adds r5, #1
	cmp r5, #0x10
	bls _080A4BC8
	ldr r0, _080A4D44 @ =gOamCmd
	movs r1, #0x80
	lsls r1, r1, #4
	strh r1, [r0, #8]
	ldr r1, _080A4D50EU @ =gChooseFileState
	ldrb r1, [r1, #3]
	mov sb, r0
	cmp r1, #0x10
	bne _080A4C8E
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _080A4C8E
	movs r1, #0x11
_080A4C8E:
	lsls r0, r1, #3
	ldr r1, _080A4D54EU @ =gItemMenuTable
	mov r8, r1
	adds r1, r0, r1
	mov r4, sb
	ldrb r0, [r1, #6]
	strh r0, [r4]
	ldrb r0, [r1, #7]
	strh r0, [r4, #2]
	ldrb r2, [r1, #4]
	ldr r0, _080A4D58 @ =gMain
	ldrh r1, [r0, #0xc]
	movs r0, #0x10
	ands r0, r1
	adds r1, r2, #4
	cmp r0, #0
	beq _080A4CB2EU
	adds r1, r2, #3
_080A4CB2EU:
	movs r6, #0xfd
	lsls r6, r6, #1
	adds r0, r6, #0
	bl DrawDirect
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	movs r1, #0x11
	cmp r0, #0
	beq _080A4CCA
	movs r1, #0x10
_080A4CCA:
	lsls r0, r1, #3
	mov r2, r8
	adds r1, r0, r2
	ldrb r0, [r1, #6]
	strh r0, [r4]
	ldrb r0, [r1, #7]
	strh r0, [r4, #2]
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r4, #8]
	adds r0, r6, #0
	movs r1, #0x22
	bl DrawDirect
	ldr r7, _080A4D5C @ =gSave
	adds r0, r7, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	bl sub_080A554C
	adds r5, r0, #0
	cmp r5, #0x10
	bhi _080A4D0E
	lsls r0, r5, #3
	mov r3, r8
	adds r1, r0, r3
	ldrb r0, [r1, #6]
	strh r0, [r4]
	ldrb r0, [r1, #7]
	strh r0, [r4, #2]
	adds r0, r6, #0
	movs r1, #3
	bl DrawDirect
_080A4D0E:
	adds r0, r7, #0
	adds r0, #0xb5
	ldrb r0, [r0]
	bl sub_080A554C
	adds r5, r0, #0
	cmp r5, #0x10
	bhi _080A4D36
	lsls r0, r5, #3
	mov r7, r8
	adds r1, r0, r7
	ldrb r0, [r1, #6]
	mov r2, sb
	strh r0, [r2]
	ldrb r0, [r1, #7]
	strh r0, [r2, #2]
	adds r0, r6, #0
	movs r1, #3
	bl DrawDirect
_080A4D36:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A4D40: .4byte gQuiverSizes
_080A4D44: .4byte gOamCmd
_080A4D48: .4byte gSpriteAnimations_322
_080A4D4C: .4byte 0x00000141
_080A4D50EU: .4byte gChooseFileState
_080A4D54EU: .4byte gItemMenuTable
_080A4D58: .4byte gMain
_080A4D5C: .4byte gSave
.else
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080A5400 @ =gOamCmd
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	movs r5, #0
	ldr r4, _080A5404 @ =gSave
	movs r0, #0xb6
	adds r0, r0, r4
	mov sl, r0
	movs r1, #0xac
	adds r1, r1, r4
	mov sb, r1
	movs r2, #0xad
	adds r2, r2, r4
	mov r8, r2
	movs r6, #0
_080A53B4:
	ldr r0, _080A5408 @ =gMenu
	adds r0, #0x10
	adds r2, r5, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _080A5456
	ldr r0, _080A540C @ =gItemMenuTable
	adds r1, r6, r0
	ldrb r0, [r1, #6]
	ldr r3, _080A5400 @ =gOamCmd
	strh r0, [r3]
	ldrb r0, [r1, #7]
	strh r0, [r3, #2]
	ldrb r3, [r2]
	cmp r3, #0x1f
	bhi _080A53E0
	cmp r3, #0x1c
	blo _080A53E0
	adds r0, r3, #0
	subs r0, #0x1c
	add r0, sl
	ldrb r3, [r0]
_080A53E0:
	movs r2, #3
	cmp r3, #7
	blo _080A542E
	cmp r3, #8
	bhi _080A5414
	ldr r0, _080A5410 @ =gBombBagSizes
	adds r1, r4, #0
	adds r1, #0xae
	ldrb r1, [r1]
	adds r1, r1, r0
	ldrb r0, [r1]
	mov r7, sb
	ldrb r7, [r7]
	cmp r0, r7
	bhi _080A542E
	b _080A542C
	.align 2, 0
_080A5400: .4byte gOamCmd
_080A5404: .4byte gSave
_080A5408: .4byte gMenu
_080A540C: .4byte gItemMenuTable
_080A5410: .4byte gBombBagSizes
_080A5414:
	cmp r3, #0xa
	bhi _080A542E
	ldr r0, _080A552C @ =gQuiverSizes
	adds r1, r4, #0
	adds r1, #0xaf
	ldrb r1, [r1]
	adds r1, r1, r0
	ldrb r0, [r1]
	mov r1, r8
	ldrb r1, [r1]
	cmp r0, r1
	bhi _080A542E
_080A542C:
	movs r2, #4
_080A542E:
	lsls r2, r2, #0xc
	movs r7, #0xd8
	lsls r7, r7, #2
	adds r0, r6, r7
	movs r7, #0x80
	lsls r7, r7, #4
	adds r1, r7, #0
	orrs r0, r1
	orrs r2, r0
	ldr r0, _080A5530 @ =gOamCmd
	strh r2, [r0, #8]
	ldr r1, _080A5534 @ =gSpriteAnimations_322
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r1, [r0]
	movs r0, #0xa1
	lsls r0, r0, #1
	bl DrawDirect
_080A5456:
	adds r6, #8
	adds r5, #1
	cmp r5, #0x10
	bls _080A53B4
	ldr r0, _080A5530 @ =gOamCmd
	movs r1, #0x80
	lsls r1, r1, #4
	strh r1, [r0, #8]
	ldr r1, _080A5538 @ =gMenu
	ldrb r1, [r1, #3]
	mov sb, r0
	cmp r1, #0x10
	bne _080A547C
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _080A547C
	movs r1, #0x11
_080A547C:
	lsls r0, r1, #3
	ldr r1, _080A553C @ =gItemMenuTable
	mov r8, r1
	adds r1, r0, r1
	mov r4, sb
	ldrb r0, [r1, #6]
	strh r0, [r4]
	ldrb r0, [r1, #7]
	strh r0, [r4, #2]
	ldrb r2, [r1, #4]
	ldr r0, _080A5540 @ =gMain
	ldrh r1, [r0, #0xc]
	movs r0, #0x10
	ands r0, r1
	adds r1, r2, #4
	cmp r0, #0
	beq _080A54A0
	adds r1, r2, #3
_080A54A0:
	ldr r6, _080A5544 @ =0x000001FB
	adds r0, r6, #0
	bl DrawDirect
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	movs r1, #0x11
	cmp r0, #0
	beq _080A54B6
	movs r1, #0x10
_080A54B6:
	lsls r0, r1, #3
	mov r2, r8
	adds r1, r0, r2
	ldrb r0, [r1, #6]
	strh r0, [r4]
	ldrb r0, [r1, #7]
	strh r0, [r4, #2]
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r4, #8]
	adds r0, r6, #0
	movs r1, #0x22
	bl DrawDirect
	ldr r7, _080A5548 @ =gSave
	adds r0, r7, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	bl sub_080A554C
	adds r5, r0, #0
	cmp r5, #0x10
	bhi _080A54FA
	lsls r0, r5, #3
	mov r3, r8
	adds r1, r0, r3
	ldrb r0, [r1, #6]
	strh r0, [r4]
	ldrb r0, [r1, #7]
	strh r0, [r4, #2]
	adds r0, r6, #0
	movs r1, #3
	bl DrawDirect
_080A54FA:
	adds r0, r7, #0
	adds r0, #0xb5
	ldrb r0, [r0]
	bl sub_080A554C
	adds r5, r0, #0
	cmp r5, #0x10
	bhi _080A5522
	lsls r0, r5, #3
	mov r7, r8
	adds r1, r0, r7
	ldrb r0, [r1, #6]
	mov r2, sb
	strh r0, [r2]
	ldrb r0, [r1, #7]
	strh r0, [r2, #2]
	adds r0, r6, #0
	movs r1, #3
	bl DrawDirect
_080A5522:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A552C: .4byte gQuiverSizes
_080A5530: .4byte gOamCmd
_080A5534: .4byte gSpriteAnimations_322
_080A5538: .4byte gMenu
_080A553C: .4byte gItemMenuTable
_080A5540: .4byte gMain
_080A5544: .4byte 0x000001FB
_080A5548: .4byte gSave
.endif
