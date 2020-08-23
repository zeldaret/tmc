	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start MountainMinish
MountainMinish: @ 0x08067E2C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08067E58
	ldr r0, _08067E54 @ =gUnk_08111368
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
	b _08067E5E
	.align 2, 0
_08067E54: .4byte gUnk_08111368
_08067E58:
	adds r0, r4, #0
	bl sub_08067EF0
_08067E5E:
	pop {r4, pc}

	thumb_func_start sub_08067E60
sub_08067E60: @ 0x08067E60
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08067E84 @ =gUnk_08111358
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _08067E80
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_08078778
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
_08067E80:
	pop {r4, pc}
	.align 2, 0
_08067E84: .4byte gUnk_08111358

	thumb_func_start sub_08067E88
sub_08067E88: @ 0x08067E88
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x28
	movs r2, #0x28
	bl sub_0806ED9C
	adds r1, r0, #0
	cmp r1, #0
	bge _08067E9E
	movs r1, #2
	b _08067EB4
_08067E9E:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _08067EAA
	movs r0, #0x10
	strb r0, [r4, #0xf]
	b _08067EB4
_08067EAA:
	subs r0, #1
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
_08067EB4:
	adds r0, r4, #0
	bl sub_0806F078
	cmp r0, #0
	bne _08067EC4
	adds r0, r4, #0
	bl GetNextFrame
_08067EC4:
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08067EE4
	movs r0, #0
	strb r0, [r1]
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	movs r1, #0x90
	lsls r1, r1, #5
	adds r0, r0, r1
	bl TextboxNoOverlapFollow
_08067EE4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08067EE8
sub_08067EE8: @ 0x08067EE8
	movs r1, #1
	strb r1, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_08067EF0
sub_08067EF0: @ 0x08067EF0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #0xc]
	cmp r4, #1
	beq _08067F58
	cmp r4, #1
	bgt _08067F04
	cmp r4, #0
	beq _08067F10
	b _0806801A
_08067F04:
	cmp r4, #2
	beq _08067FDC
	cmp r4, #3
	bne _08067F0E
	b _08068000
_08067F0E:
	b _0806801A
_08067F10:
	ldr r1, _08067F50 @ =gUnk_08111358
	adds r0, r5, #0
	bl LoadExtraSpriteData
	cmp r0, #0
	bne _08067F1E
	b _080680F0
_08067F1E:
	movs r2, #1
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	ldrb r0, [r5, #0xa]
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0x69
	strb r4, [r0]
	adds r0, r5, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r5, #0
	bl sub_0807DD50
	ldr r1, _08067F54 @ =gUnk_08111304
	ldrb r0, [r5, #0xb]
	adds r0, r0, r1
	ldrb r1, [r0]
	b _08067FF2
	.align 2, 0
_08067F50: .4byte gUnk_08111358
_08067F54: .4byte gUnk_08111304
_08067F58:
	adds r4, r5, #0
	adds r4, #0x39
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #2
	bne _08067F98
	movs r1, #0
	movs r0, #3
	strb r0, [r5, #0xc]
	strb r1, [r4]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x69
	strb r0, [r1]
	ldr r1, _08067F94 @ =gPlayerEntity
	adds r0, r5, #0
	bl GetFacingDirection
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r5, #0
	bl InitializeAnimation
	adds r0, r5, #0
	bl sub_0806F118
	b _0806801A
	.align 2, 0
_08067F94: .4byte gPlayerEntity
_08067F98:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r5, #0
	bl sub_0807DDE4
	ldrb r0, [r5, #0xb]
	cmp r0, #3
	bne _0806801A
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0806801A
	movs r1, #0
	movs r0, #2
	strb r0, [r5, #0xc]
	strb r1, [r4]
	ldr r1, _08067FD8 @ =gPlayerEntity
	adds r0, r5, #0
	bl GetFacingDirection
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r5, #0
	bl InitializeAnimation
	adds r0, r5, #0
	bl sub_08068190
	b _0806801A
	.align 2, 0
_08067FD8: .4byte gPlayerEntity
_08067FDC:
	ldr r0, _08067FFC @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0806801A
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x14]
	lsrs r1, r1, #1
	adds r1, #4
_08067FF2:
	adds r0, r5, #0
	bl InitializeAnimation
	b _0806801A
	.align 2, 0
_08067FFC: .4byte gTextBox
_08068000:
	adds r0, r5, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _0806801A
	movs r0, #1
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	adds r0, #0x69
	ldrb r1, [r0]
	adds r0, r5, #0
	bl InitializeAnimation
_0806801A:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0xff
	beq _0806802C
	adds r0, r5, #0
	bl GetNextFrame
_0806802C:
	adds r1, r5, #0
	adds r1, #0x5b
	ldrb r2, [r1]
	movs r0, #1
	ands r0, r2
	adds r6, r1, #0
	cmp r0, #0
	beq _0806807E
	movs r0, #0xfe
	ands r0, r2
	strb r0, [r6]
	adds r0, r5, #0
	bl sub_080040A8
	cmp r0, #0
	bne _08068068
	ldr r4, _08068064 @ =gUnk_0811137A
	bl Random
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	bl PlaySFX
	b _0806807E
	.align 2, 0
_08068064: .4byte gUnk_0811137A
_08068068:
	ldr r4, _080680F4 @ =gUnk_08111374
	bl Random
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	bl sub_08004488
_0806807E:
	ldrb r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080680A8
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r6]
	adds r0, r5, #0
	movs r1, #4
	movs r2, #0
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _080680A8
	ldr r3, _080680F8 @ =0xFFE80000
	adds r0, r5, #0
	movs r2, #0
	bl PositionRelative
_080680A8:
	ldrb r1, [r6]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080680D2
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r6]
	adds r0, r5, #0
	movs r1, #0x3d
	movs r2, #0x20
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _080680D2
	ldr r2, _080680FC @ =0xFFEC0000
	ldr r3, _08068100 @ =0xFFF60000
	adds r0, r5, #0
	bl PositionRelative
_080680D2:
	ldrb r1, [r6]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080680F0
	movs r0, #0xf7
	ands r0, r1
	strb r0, [r6]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	ldrb r1, [r7]
	adds r0, r0, r1
	strb r0, [r7]
_080680F0:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080680F4: .4byte gUnk_08111374
_080680F8: .4byte 0xFFE80000
_080680FC: .4byte 0xFFEC0000
_08068100: .4byte 0xFFF60000

	thumb_func_start sub_08068104
sub_08068104: @ 0x08068104
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, pc}

	thumb_func_start sub_0806811C
sub_0806811C: @ 0x0806811C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	adds r7, r0, #0
	cmp r7, #0
	beq _0806812E
	subs r0, #1
	strb r0, [r4, #0xe]
	b _0806818A
_0806812E:
	movs r0, #2
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0x20
	movs r2, #0x20
	bl sub_0806EDD8
	adds r3, r0, #0
	cmp r3, #0
	bge _08068148
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #0x14]
	lsls r3, r0, #2
_08068148:
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #5
	asrs r1, r3, #1
	lsls r1, r1, #1
	ldr r2, _0806818C @ =gUnk_08111284
	adds r1, r1, r2
	adds r0, r0, r1
	ldrb r6, [r0]
	ldrb r5, [r0, #1]
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	beq _0806816C
	adds r0, r3, #0
	bl sub_0806F5B0
	strb r0, [r4, #0x14]
_0806816C:
	movs r0, #0x40
	orrs r6, r0
	adds r0, r4, #0
	adds r0, #0x5a
	strb r6, [r0]
	movs r0, #0x7f
	ands r5, r0
	strb r5, [r4, #0x1e]
	adds r0, r4, #0
	adds r0, #0x58
	strb r7, [r0]
	adds r1, r4, #0
	adds r1, #0x59
	movs r0, #0xff
	strb r0, [r1]
_0806818A:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0806818C: .4byte gUnk_08111284

	thumb_func_start sub_08068190
sub_08068190: @ 0x08068190
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r5, [r6, #0xb]
	cmp r5, #8
	bls _0806819C
	movs r5, #8
_0806819C:
	movs r0, #0x7e
	bl CheckLocalFlag
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	movs r0, #0x41
	bl GetInventoryValue
	cmp r0, #0
	beq _080681B4
	movs r4, #2
_080681B4:
	movs r0, #2
	bl GetInventoryValue
	cmp r0, #0
	beq _080681C0
	movs r4, #3
_080681C0:
	ldr r2, _080681D4 @ =gUnk_0811130E
	lsls r0, r4, #1
	lsls r1, r5, #3
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r6, #0
	bl TextboxNoOverlap
	pop {r4, r5, r6, pc}
	.align 2, 0
_080681D4: .4byte gUnk_0811130E

	thumb_func_start sub_080681D8
sub_080681D8: @ 0x080681D8
	ldr r1, [r1, #4]
	strb r1, [r0, #0xa]
	bx lr
	.align 2, 0

	thumb_func_start MountainMinish_Head
MountainMinish_Head: @ 0x080681E0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x5a
	ldrb r4, [r0]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r4, r0
	ldrb r2, [r5, #0x1e]
	adds r0, r5, #0
	movs r1, #1
	bl SetExtraSpriteFrame
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _08068226
	movs r0, #0xe1
	rsbs r0, r0, #0
	ands r4, r0
	adds r2, r4, #4
	adds r0, r5, #0
	movs r1, #0
	bl SetExtraSpriteFrame
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0xff
	bl SetExtraSpriteFrame
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl SetSpriteSubEntryOffsetData1
	b _08068268
_08068226:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _08068254
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xff
	bl SetExtraSpriteFrame
	movs r0, #0xe1
	rsbs r0, r0, #0
	ands r4, r0
	adds r0, r5, #0
	movs r1, #2
	adds r2, r4, #0
	bl SetExtraSpriteFrame
	adds r0, r5, #0
	movs r1, #1
	movs r2, #2
	bl SetSpriteSubEntryOffsetData1
	b _08068268
_08068254:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xff
	bl SetExtraSpriteFrame
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0xff
	bl SetExtraSpriteFrame
_08068268:
	adds r0, r5, #0
	bl sub_0807000C
	pop {r4, r5, pc}

	thumb_func_start MountainMinish_Fusion
MountainMinish_Fusion: @ 0x08068270
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080682A8
	ldr r1, _080682A4 @ =gUnk_08111358
	adds r0, r4, #0
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _080682AE
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #6
	bl InitializeAnimation
	b _080682AE
	.align 2, 0
_080682A4: .4byte gUnk_08111358
_080682A8:
	adds r0, r4, #0
	bl GetNextFrame
_080682AE:
	pop {r4, pc}
