	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Guard
Guard: @ 0x08063CF8
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08063D1C
	ldr r0, _08063D18 @ =gUnk_0810F544
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
	b _08063D22
	.align 2, 0
_08063D18: .4byte gUnk_0810F544
_08063D1C:
	adds r0, r2, #0
	bl sub_08063D24
_08063D22:
	pop {pc}

	thumb_func_start sub_08063D24
sub_08063D24: @ 0x08063D24
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08063D40 @ =gUnk_0810F550
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
	pop {r4, pc}
	.align 2, 0
_08063D40: .4byte gUnk_0810F550

	thumb_func_start sub_08063D44
sub_08063D44: @ 0x08063D44
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08063DA0 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x46
	bhi _08063DC6
	ldrb r0, [r4, #9]
	movs r1, #0x15
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	lsls r1, r1, #4
	ldr r0, _08063DA4 @ =gUnk_0810F524
	adds r1, r1, r0
	adds r0, r4, #0
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _08063DC6
	adds r0, r4, #0
	movs r1, #4
	bl InitializeAnimation
	ldr r0, _08063DA8 @ =gUnk_0810F6BC
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	movs r2, #0
	bl sub_0806EE04
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	blt _08063DB6
	cmp r0, #3
	bgt _08063DAC
	movs r0, #0xc
	bl sub_080A7EE0
	str r4, [r0, #0x50]
	movs r1, #0x3c
	strb r1, [r0, #0xf]
	b _08063DB6
	.align 2, 0
_08063DA0: .4byte gUnk_03003DBC
_08063DA4: .4byte gUnk_0810F524
_08063DA8: .4byte gUnk_0810F6BC
_08063DAC:
	cmp r0, #5
	bgt _08063DB6
	adds r0, r4, #0
	bl sub_08078778
_08063DB6:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xa]
	adds r0, r4, #0
	bl sub_08063DC8
_08063DC6:
	pop {r4, pc}

	thumb_func_start sub_08063DC8
sub_08063DC8: @ 0x08063DC8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0xff
	bne _08063DF8
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	ldr r1, _08063DF4 @ =gLinkEntity
	adds r0, r4, #0
	bl GetFacingDirection
	bl sub_0806F5A4
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	b _08063E4C
	.align 2, 0
_08063DF4: .4byte gLinkEntity
_08063DF8:
	adds r0, r4, #0
	bl sub_0806EE20
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	ldrb r1, [r4, #0x14]
	cmp r0, r1
	beq _08063E18
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl InitializeAnimation
	b _08063E1E
_08063E18:
	adds r0, r4, #0
	bl GetNextFrame
_08063E1E:
	adds r2, r4, #0
	adds r2, #0x39
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08063E4C
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r1, [r2]
	ldr r1, _08063E50 @ =gLinkEntity
	adds r0, r4, #0
	bl GetFacingDirection
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r4, #0
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_08064428
_08063E4C:
	pop {r4, pc}
	.align 2, 0
_08063E50: .4byte gLinkEntity

	thumb_func_start sub_08063E54
sub_08063E54: @ 0x08063E54
	push {lr}
	ldrb r1, [r0, #0xe]
	subs r1, #1
	strb r1, [r0, #0xe]
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _08063E68
	movs r0, #0xf
	bl SetRoomFlag
_08063E68:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08063E6C
sub_08063E6C: @ 0x08063E6C
	push {lr}
	adds r2, r0, #0
	ldr r0, _08063E8C @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _08063E8A
	movs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x14]
	adds r1, #4
	adds r0, r2, #0
	bl InitializeAnimation
_08063E8A:
	pop {pc}
	.align 2, 0
_08063E8C: .4byte gTextBox

	thumb_func_start sub_08063E90
sub_08063E90: @ 0x08063E90
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #9]
	movs r1, #0x15
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	lsls r1, r1, #4
	ldr r0, _08063EC8 @ =gUnk_0810F524
	adds r1, r1, r0
	adds r0, r4, #0
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _08063F1E
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xe]
	cmp r1, #0
	beq _08063ECC
	adds r1, r4, #0
	adds r1, #0x70
	movs r0, #8
	strb r0, [r1]
	b _08063ED2
	.align 2, 0
_08063EC8: .4byte gUnk_0810F524
_08063ECC:
	adds r0, r4, #0
	adds r0, #0x70
	strb r1, [r0]
_08063ED2:
	movs r0, #0
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_0805ACC0
	adds r2, r0, #0
	cmp r2, #0
	bne _08063EF2
	ldrh r0, [r4, #0x2e]
	adds r1, r4, #0
	adds r1, #0x68
	strh r0, [r1]
	ldrh r0, [r4, #0x32]
	adds r1, #2
	strh r0, [r1]
	b _08063EFE
_08063EF2:
	lsrs r1, r2, #0x10
	adds r0, r4, #0
	adds r0, #0x68
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
_08063EFE:
	adds r1, r4, #0
	adds r1, #0x71
	movs r0, #0
	strb r0, [r1]
	subs r1, #0x39
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	adds r0, r4, #0
	bl sub_0807DD64
	adds r0, r4, #0
	bl sub_08063F20
_08063F1E:
	pop {r4, pc}

	thumb_func_start sub_08063F20
sub_08063F20: @ 0x08063F20
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl GetNextFrame
	adds r2, r4, #0
	adds r2, #0x39
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08063F72
	ldrb r0, [r4, #0xc]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xc]
	strb r1, [r2]
	ldr r1, _08063F74 @ =gLinkEntity
	adds r0, r4, #0
	bl GetFacingDirection
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x70
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	adds r0, r4, #0
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_08064428
_08063F72:
	pop {r4, pc}
	.align 2, 0
_08063F74: .4byte gLinkEntity

	thumb_func_start sub_08063F78
sub_08063F78: @ 0x08063F78
	push {lr}
	adds r2, r0, #0
	ldr r0, _08063FA8 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _08063FA6
	ldrb r0, [r2, #0xc]
	subs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x14]
	lsrs r1, r1, #1
	adds r0, r2, #0
	adds r0, #0x70
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	adds r1, r1, r0
	adds r0, r2, #0
	bl InitializeAnimation
_08063FA6:
	pop {pc}
	.align 2, 0
_08063FA8: .4byte gTextBox

	thumb_func_start Guard_Head
Guard_Head: @ 0x08063FAC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x3f
	adds r2, r0, #0
	ands r2, r1
	ldrb r3, [r6, #0x1e]
	adds r5, r0, #0
	ands r5, r3
	adds r1, r6, #0
	adds r1, #0x5b
	ldrb r1, [r1]
	adds r4, r0, #0
	ands r4, r1
	ldrb r0, [r6, #9]
	cmp r0, #0x15
	bne _08063FEC
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _08063FE2
	adds r5, #0x21
	movs r2, #1
	rsbs r2, r2, #0
	movs r4, #0
	b _08063FF6
_08063FE2:
	adds r2, #0x19
	cmp r4, #0
	beq _08063FF6
	adds r4, #0x1f
	b _08063FF6
_08063FEC:
	adds r2, #0x46
	adds r5, #0x2d
	cmp r4, #0
	beq _08063FF6
	adds r4, #0x4c
_08063FF6:
	subs r4, #1
	adds r0, r6, #0
	movs r1, #0
	bl SetExtraSpriteFrame
	adds r0, r6, #0
	movs r1, #1
	adds r2, r5, #0
	bl SetExtraSpriteFrame
	adds r0, r6, #0
	movs r1, #2
	adds r2, r4, #0
	bl SetExtraSpriteFrame
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	bl SetSpriteSubEntryOffsetData1
	adds r0, r6, #0
	movs r1, #1
	movs r2, #2
	bl SetSpriteSubEntryOffsetData2
	adds r0, r6, #0
	bl sub_0807000C
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08064030
sub_08064030: @ 0x08064030
	ldr r0, _08064040 @ =gRoomVars
	ldr r2, [r0, #0x68]
	rsbs r0, r2, #0
	orrs r0, r2
	lsrs r0, r0, #0x1f
	str r0, [r1, #0x14]
	bx lr
	.align 2, 0
_08064040: .4byte gRoomVars

	thumb_func_start sub_08064044
sub_08064044: @ 0x08064044
	ldr r1, _0806404C @ =gUnk_030010A0
	movs r0, #1
	strb r0, [r1, #8]
	bx lr
	.align 2, 0
_0806404C: .4byte gUnk_030010A0

	thumb_func_start sub_08064050
sub_08064050: @ 0x08064050
	push {lr}
	adds r2, r1, #0
	movs r1, #0
	str r1, [r2, #4]
	ldrb r0, [r0, #0xb]
	cmp r0, #0x12
	beq _08064072
	cmp r0, #0x12
	bgt _08064068
	cmp r0, #0x11
	beq _0806406E
	b _0806407A
_08064068:
	cmp r0, #0x13
	beq _08064076
	b _0806407A
_0806406E:
	movs r0, #1
	b _08064078
_08064072:
	movs r0, #2
	b _08064078
_08064076:
	movs r0, #3
_08064078:
	str r0, [r2, #4]
_0806407A:
	pop {pc}

	thumb_func_start sub_0806407C
sub_0806407C: @ 0x0806407C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	bne _080640E8
	adds r0, #1
	strb r0, [r5, #0x18]
	bl Random
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x20
	strh r0, [r5, #0x12]
	bl Random
	adds r1, r0, #0
	movs r0, #0x18
	ands r1, r0
	ldrb r0, [r4, #0x15]
	cmp r0, #8
	beq _080640C4
	cmp r0, #8
	bgt _080640B2
	cmp r0, #0
	beq _080640BC
	b _080640DA
_080640B2:
	cmp r0, #0x10
	beq _080640CC
	cmp r0, #0x18
	beq _080640D4
	b _080640DA
_080640BC:
	cmp r1, #0x10
	bne _080640DA
	movs r1, #8
	b _080640DA
_080640C4:
	cmp r1, #0x18
	bne _080640DA
	movs r1, #0x10
	b _080640DA
_080640CC:
	cmp r1, #0
	bne _080640DA
	movs r1, #0x18
	b _080640DA
_080640D4:
	cmp r1, #8
	bne _080640DA
	movs r1, #0
_080640DA:
	strb r1, [r4, #0x15]
	adds r0, r1, #0
	bl sub_0806F5B0
	strb r0, [r4, #0x14]
	movs r0, #0x80
	strh r0, [r4, #0x24]
_080640E8:
	ldrb r0, [r4, #0x14]
	lsrs r2, r0, #1
	adds r1, r2, #4
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r1, r0
	beq _0806410A
	adds r0, r4, #0
	adds r0, #0x70
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #4
	adds r1, r2, r1
	adds r0, r4, #0
	bl InitializeAnimation
_0806410A:
	adds r0, r4, #0
	bl sub_080AEF88
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	adds r2, r4, #0
	adds r2, #0x68
	movs r3, #0
	ldrsh r0, [r2, r3]
	subs r1, r1, r0
	cmp r1, #0x10
	ble _0806412C
	ldrh r0, [r2]
	adds r0, #0x10
	strh r0, [r4, #0x2e]
	movs r0, #1
	strh r0, [r5, #0x12]
_0806412C:
	movs r3, #0x10
	rsbs r3, r3, #0
	cmp r1, r3
	bge _0806413E
	ldrh r0, [r2]
	subs r0, #0x10
	strh r0, [r4, #0x2e]
	movs r0, #1
	strh r0, [r5, #0x12]
_0806413E:
	movs r6, #0x32
	ldrsh r1, [r4, r6]
	adds r2, r4, #0
	adds r2, #0x6a
	movs r6, #0
	ldrsh r0, [r2, r6]
	subs r1, r1, r0
	cmp r1, #0x10
	ble _0806415A
	ldrh r0, [r2]
	adds r0, #0x10
	strh r0, [r4, #0x32]
	movs r0, #1
	strh r0, [r5, #0x12]
_0806415A:
	cmp r1, r3
	bge _08064168
	ldrh r0, [r2]
	subs r0, #0x10
	strh r0, [r4, #0x32]
	movs r0, #1
	strh r0, [r5, #0x12]
_08064168:
	ldrh r0, [r5, #0x12]
	subs r0, #1
	strh r0, [r5, #0x12]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0806417A
	ldr r1, _0806417C @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_0806417A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806417C: .4byte gUnk_02033280

	thumb_func_start sub_08064180
sub_08064180: @ 0x08064180
	push {lr}
	movs r0, #7
	movs r1, #0x15
	movs r2, #7
	bl sub_0805EB00
	cmp r0, #0
	beq _08064194
	bl DeleteEntity
_08064194:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08064198
sub_08064198: @ 0x08064198
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x71
	ldrb r1, [r4]
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _080641AE
	subs r0, r1, #1
	strb r0, [r4]
_080641AE:
	ldr r0, _080641D8 @ =gLinkEntity
	movs r2, #0x32
	ldrsh r1, [r0, r2]
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	subs r1, r1, r0
	cmp r1, #2
	ble _080641C0
	movs r1, #2
_080641C0:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080641CA
	adds r1, r0, #0
_080641CA:
	adds r6, r4, #0
	cmp r1, #0
	beq _08064256
	cmp r1, #0
	ble _080641DC
	movs r0, #0x10
	b _080641DE
	.align 2, 0
_080641D8: .4byte gLinkEntity
_080641DC:
	movs r0, #0
_080641DE:
	strb r0, [r5, #0x15]
	cmp r1, #0
	bge _080641E6
	rsbs r1, r1, #0
_080641E6:
	lsls r0, r1, #8
	strh r0, [r5, #0x24]
	movs r0, #0x32
	ldrsh r4, [r5, r0]
	adds r0, r5, #0
	bl sub_080AEF88
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	adds r6, r5, #0
	adds r6, #0x71
	cmp r4, r0
	beq _08064256
	ldr r0, _080642B0 @ =gLinkEntity
	movs r2, #0x24
	ldrsh r1, [r0, r2]
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r1, r0
	ble _08064222
	ldr r0, _080642B4 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #6
	bl __modsi3
	cmp r0, #0
	bne _08064222
	adds r0, r5, #0
	bl sub_080A29FC
_08064222:
	adds r4, r5, #0
	adds r4, #0x71
	movs r0, #0xa
	strb r0, [r4]
	ldrb r0, [r5, #0x15]
	bl sub_0806F5B0
	strb r0, [r5, #0x14]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	adds r1, r5, #0
	adds r1, #0x70
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r1, #4
	adds r1, r0, r1
	adds r0, r5, #0
	adds r0, #0x58
	adds r6, r4, #0
	ldrb r0, [r0]
	cmp r1, r0
	beq _08064256
	adds r0, r5, #0
	bl InitializeAnimation
_08064256:
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _0806428C
	ldr r1, _080642B0 @ =gLinkEntity
	adds r0, r5, #0
	bl GetFacingDirection
	bl sub_0806F5B0
	strb r0, [r5, #0x14]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	adds r1, r5, #0
	adds r1, #0x70
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r1, r0, r1
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r1, r0
	beq _0806428C
	adds r0, r5, #0
	bl InitializeAnimation
_0806428C:
	adds r0, r5, #0
	bl sub_0806ED78
	movs r0, #0x36
	ldrsh r4, [r5, r0]
	ldr r0, _080642B0 @ =gLinkEntity
	ldrh r0, [r0, #0x36]
	strh r0, [r5, #0x36]
	cmp r4, #0
	bge _080642AC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080642AC
	adds r0, r5, #0
	bl sub_080A29FC
_080642AC:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080642B0: .4byte gLinkEntity
_080642B4: .4byte gUnk_030010A0

	thumb_func_start sub_080642B8
sub_080642B8: @ 0x080642B8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x71
	ldrb r1, [r4]
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _080642CE
	subs r0, r1, #1
	strb r0, [r4]
_080642CE:
	ldr r0, _080642F8 @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	subs r1, r1, r0
	cmp r1, #2
	ble _080642E0
	movs r1, #2
_080642E0:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080642EA
	adds r1, r0, #0
_080642EA:
	adds r6, r4, #0
	cmp r1, #0
	beq _08064376
	cmp r1, #0
	ble _080642FC
	movs r0, #8
	b _080642FE
	.align 2, 0
_080642F8: .4byte gLinkEntity
_080642FC:
	movs r0, #0x18
_080642FE:
	strb r0, [r5, #0x15]
	cmp r1, #0
	bge _08064306
	rsbs r1, r1, #0
_08064306:
	lsls r0, r1, #8
	strh r0, [r5, #0x24]
	movs r0, #0x2e
	ldrsh r4, [r5, r0]
	adds r0, r5, #0
	bl sub_080AEF88
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	adds r6, r5, #0
	adds r6, #0x71
	cmp r4, r0
	beq _08064376
	ldr r0, _080643D0 @ =gLinkEntity
	movs r2, #0x24
	ldrsh r1, [r0, r2]
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r1, r0
	ble _08064342
	ldr r0, _080643D4 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #6
	bl __modsi3
	cmp r0, #0
	bne _08064342
	adds r0, r5, #0
	bl sub_080A29FC
_08064342:
	adds r4, r5, #0
	adds r4, #0x71
	movs r0, #0xa
	strb r0, [r4]
	ldrb r0, [r5, #0x15]
	bl sub_0806F5B0
	strb r0, [r5, #0x14]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	adds r1, r5, #0
	adds r1, #0x70
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r1, #4
	adds r1, r0, r1
	adds r0, r5, #0
	adds r0, #0x58
	adds r6, r4, #0
	ldrb r0, [r0]
	cmp r1, r0
	beq _08064376
	adds r0, r5, #0
	bl InitializeAnimation
_08064376:
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _080643AC
	ldr r1, _080643D0 @ =gLinkEntity
	adds r0, r5, #0
	bl GetFacingDirection
	bl sub_0806F5B0
	strb r0, [r5, #0x14]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	adds r1, r5, #0
	adds r1, #0x70
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r1, r0, r1
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r1, r0
	beq _080643AC
	adds r0, r5, #0
	bl InitializeAnimation
_080643AC:
	adds r0, r5, #0
	bl sub_0806ED78
	movs r0, #0x36
	ldrsh r4, [r5, r0]
	ldr r0, _080643D0 @ =gLinkEntity
	ldrh r0, [r0, #0x36]
	strh r0, [r5, #0x36]
	cmp r4, #0
	bge _080643CC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080643CC
	adds r0, r5, #0
	bl sub_080A29FC
_080643CC:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080643D0: .4byte gLinkEntity
_080643D4: .4byte gUnk_030010A0

	thumb_func_start sub_080643D8
sub_080643D8: @ 0x080643D8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	bl CheckGlobalFlag
	cmp r0, #0
	bne _080643EA
	movs r3, #0
	b _08064406
_080643EA:
	movs r0, #2
	bl GetInventoryValue
	cmp r0, #0
	bne _080643F8
	movs r3, #1
	b _08064406
_080643F8:
	movs r0, #3
	bl GetInventoryValue
	movs r3, #3
	cmp r0, #0
	bne _08064406
	movs r3, #2
_08064406:
	ldrb r1, [r4, #0xb]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	ldr r2, _08064424 @ =gUnk_0810F6D4
	lsls r1, r3, #1
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r1, r4, #0
	bl TextboxNoOverlap
	pop {r4, pc}
	.align 2, 0
_08064424: .4byte gUnk_0810F6D4

	thumb_func_start sub_08064428
sub_08064428: @ 0x08064428
	push {lr}
	adds r3, r0, #0
	ldr r0, _0806444C @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	subs r1, r0, #2
	cmp r1, #0
	bge _08064438
	movs r1, #0
_08064438:
	ldrb r2, [r3, #0xb]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08064454
	ldrb r0, [r3, #0xb]
	lsls r0, r0, #3
	ldr r1, _08064450 @ =gUnk_0810CF4C
	b _08064460
	.align 2, 0
_0806444C: .4byte gUnk_02002A40
_08064450: .4byte gUnk_0810CF4C
_08064454:
	movs r0, #0x7f
	ands r0, r2
	lsls r0, r0, #6
	lsls r1, r1, #3
	ldr r2, _0806446C @ =gUnk_0810D0A4
	adds r1, r1, r2
_08064460:
	adds r1, r0, r1
	adds r0, r3, #0
	bl ShowNPCDialogue
	pop {pc}
	.align 2, 0
_0806446C: .4byte gUnk_0810D0A4

	thumb_func_start sub_08064470
sub_08064470: @ 0x08064470
	push {lr}
	ldr r0, _08064484 @ =gLinkState
	adds r0, #0xab
	ldrb r0, [r0]
	cmp r0, #1
	beq _0806447E
	movs r0, #0
_0806447E:
	str r0, [r1, #0x14]
	pop {pc}
	.align 2, 0
_08064484: .4byte gLinkState

	thumb_func_start sub_08064488
sub_08064488: @ 0x08064488
	push {lr}
	ldr r1, _080644A0 @ =gLinkState
	adds r0, r1, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #2
	beq _0806449C
	adds r1, #0xab
	movs r0, #0
	strb r0, [r1]
_0806449C:
	pop {pc}
	.align 2, 0
_080644A0: .4byte gLinkState

	thumb_func_start sub_080644A4
sub_080644A4: @ 0x080644A4
	ldr r0, _080644B0 @ =gLinkState
	adds r0, #0xab
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_080644B0: .4byte gLinkState

	thumb_func_start sub_080644B4
sub_080644B4: @ 0x080644B4
	push {lr}
	adds r2, r1, #0
	movs r3, #0
	ldrb r1, [r0, #0x14]
	ldr r0, [r2, #4]
	cmp r1, r0
	bne _080644C4
	movs r3, #1
_080644C4:
	str r3, [r2, #0x14]
	pop {pc}

	thumb_func_start sub_080644C8
sub_080644C8: @ 0x080644C8
	push {r4, lr}
	adds r2, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	ldr r3, _08064500 @ =gRoomControls
	movs r4, #0xa
	ldrsh r1, [r3, r4]
	subs r1, r0, r1
	adds r0, r1, #0
	adds r0, #8
	cmp r0, #0
	blt _08064504
	adds r0, r1, #0
	subs r0, #8
	cmp r0, #0xf0
	bgt _08064504
	movs r0, #0x32
	ldrsh r1, [r2, r0]
	movs r2, #0xc
	ldrsh r0, [r3, r2]
	subs r0, r1, r0
	cmp r0, #0
	blt _08064504
	subs r0, #0x18
	cmp r0, #0xa0
	bgt _08064504
	movs r0, #1
	b _08064506
	.align 2, 0
_08064500: .4byte gRoomControls
_08064504:
	movs r0, #0
_08064506:
	pop {r4, pc}
