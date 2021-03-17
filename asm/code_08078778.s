	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0807887C
sub_0807887C: @ 0x0807887C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	adds r1, r5, #0
	adds r1, #0x39
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_08078904
	adds r4, r0, #0
	cmp r4, #0
	bge _080788A4
	movs r0, #0
	bl sub_08078904
	adds r4, r0, #0
	cmp r4, #0
	blt _080788BA
_080788A4:
	ldr r2, _080788DC @ =gUnk_03003DF0
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #0x10
	adds r0, r1, r0
	str r5, [r0]
	adds r1, r1, r2
	strb r7, [r1, #9]
	strb r6, [r1, #0xb]
_080788BA:
	cmp r6, #0
	beq _080788D6
	movs r0, #6
	movs r1, #9
	movs r2, #6
	bl FindEntityInListBySubtype
	cmp r0, #0
	bne _080788D6
	movs r0, #9
	movs r1, #0
	movs r2, #0
	bl CreateObject
_080788D6:
	adds r0, r4, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080788DC: .4byte gUnk_03003DF0

	thumb_func_start sub_080788E0
sub_080788E0: @ 0x080788E0
	push {lr}
	bl sub_08078904
	adds r1, r0, #0
	cmp r1, #0
	blt _080788FC
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08078900 @ =gUnk_03003DF8
	adds r0, r0, r1
	movs r1, #0xc
	bl MemClear
_080788FC:
	pop {pc}
	.align 2, 0
_08078900: .4byte gUnk_03003DF8

	thumb_func_start sub_08078904
sub_08078904: @ 0x08078904
	push {lr}
	adds r3, r0, #0
	movs r1, #0
	ldr r0, _0807891C @ =gUnk_03003DF0
	adds r2, r0, #0
	adds r2, #0x10
_08078910:
	ldr r0, [r2]
	cmp r3, r0
	bne _08078920
	adds r0, r1, #0
	b _0807892C
	.align 2, 0
_0807891C: .4byte gUnk_03003DF0
_08078920:
	adds r2, #0xc
	adds r1, #1
	cmp r1, #0x1f
	bls _08078910
	movs r0, #1
	rsbs r0, r0, #0
_0807892C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08078930
sub_08078930: @ 0x08078930
	push {lr}
	adds r3, r0, #0
	ldr r2, _08078950 @ =gUnk_03003BE0
	ldrb r0, [r2, #2]
	cmp r0, #0x1f
	bhi _0807894C
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0xc
	adds r0, r0, r1
	str r3, [r0]
	ldrb r0, [r2, #2]
	adds r0, #1
	strb r0, [r2, #2]
_0807894C:
	pop {pc}
	.align 2, 0
_08078950: .4byte gUnk_03003BE0

	thumb_func_start sub_08078954
sub_08078954: @ 0x08078954
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	ldr r0, _08078970 @ =gUnk_03003BE0
	ldrb r1, [r0, #2]
	adds r2, r0, #0
	cmp r4, r1
	bhs _080789A6
	ldr r0, [r2, #0xc]
	cmp r0, r5
	bne _08078974
	subs r0, r1, #1
	b _0807898C
	.align 2, 0
_08078970: .4byte gUnk_03003BE0
_08078974:
	adds r4, #1
	ldrb r3, [r2, #2]
	cmp r4, r3
	bhs _080789A6
	lsls r0, r4, #2
	adds r1, r2, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, r5
	bne _08078974
	subs r0, r3, #1
_0807898C:
	strb r0, [r2, #2]
	ldrb r0, [r2, #2]
	cmp r4, r0
	bhs _080789A6
	lsls r0, r4, #2
	adds r0, #0xc
	adds r1, r0, r2
_0807899A:
	ldr r0, [r1, #4]
	stm r1!, {r0}
	adds r4, #1
	ldrb r0, [r2, #2]
	cmp r4, r0
	blo _0807899A
_080789A6:
	pop {r4, r5, pc}

	thumb_func_start sub_080789A8
sub_080789A8: @ 0x080789A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _080789BC @ =gUnk_03003BE0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080789C0
	ldrb r0, [r1, #1]
	b _08078A88
	.align 2, 0
_080789BC: .4byte gUnk_03003BE0
_080789C0:
	ldr r0, _08078A5C @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08078A56
	ldr r0, _08078A60 @ =gPlayerEntity
	bl sub_080002D0
	adds r4, r0, #0
	cmp r4, #0xf
	bls _080789E6
	ldr r0, _08078A64 @ =gUnk_080084BC
	adds r1, r4, #0
	subs r1, #0x10
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0xf
	beq _08078A56
_080789E6:
	ldr r0, _08078A5C @ =gPlayerState
	ldrb r0, [r0, #0x12]
	cmp r0, #0x12
	beq _08078A56
	ldr r3, _08078A68 @ =gUnk_03003BE0
	movs r0, #1
	strb r0, [r3]
	ldrb r4, [r3, #2]
	cmp r4, #0
	beq _08078A2E
	ldr r2, _08078A60 @ =gPlayerEntity
	ldrb r1, [r2, #0x14]
	movs r0, #6
	ands r0, r1
	ldr r1, _08078A6C @ =gUnk_0811BFE0
	adds r6, r0, r1
	adds r7, r2, #0
	adds r3, #8
	mov r8, r3
_08078A0C:
	lsls r0, r4, #2
	mov r1, r8
	adds r5, r0, r1
	ldr r1, [r5]
	cmp r1, #0
	beq _08078A26
	ldrb r2, [r6]
	ldrb r3, [r6, #1]
	adds r0, r7, #0
	bl sub_0807A180
	cmp r0, #0
	bne _08078A74
_08078A26:
	subs r4, #1
	ldr r7, _08078A60 @ =gPlayerEntity
	cmp r4, #0
	bne _08078A0C
_08078A2E:
	ldr r0, _08078A60 @ =gPlayerEntity
	ldrb r1, [r0, #0x14]
	movs r2, #6
	ands r2, r1
	ldr r1, _08078A70 @ =gUnk_08007DF4
	adds r2, r2, r1
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldrb r2, [r2, #1]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	bl sub_0800029C
	ldr r4, _08078A68 @ =gUnk_03003BE0
	strh r0, [r4, #4]
	movs r1, #6
	bl sub_0806FC24
	cmp r0, #0
	bne _08078A84
_08078A56:
	movs r0, #0
	b _08078A88
	.align 2, 0
_08078A5C: .4byte gPlayerState
_08078A60: .4byte gPlayerEntity
_08078A64: .4byte gUnk_080084BC
_08078A68: .4byte gUnk_03003BE0
_08078A6C: .4byte gUnk_0811BFE0
_08078A70: .4byte gUnk_08007DF4
_08078A74:
	mov r0, r8
	subs r0, #8
	ldr r1, [r5]
	str r1, [r0, #8]
	movs r1, #2
	strb r1, [r0, #1]
	movs r0, #2
	b _08078A88
_08078A84:
	movs r0, #1
	strb r0, [r4, #1]
_08078A88:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08078A90
sub_08078A90: @ 0x08078A90
	push {lr}
	adds r1, r0, #0
	ldr r0, _08078AA4 @ =gPlayerState
	adds r2, r0, #0
	adds r2, #0x8b
	ldrb r0, [r2]
	cmp r0, #3
	beq _08078AA2
	strb r1, [r2]
_08078AA2:
	pop {pc}
	.align 2, 0
_08078AA4: .4byte gPlayerState

	thumb_func_start sub_08078AA8
sub_08078AA8: @ 0x08078AA8
	ldr r3, _08078AB8 @ =gPlayerState
	movs r2, #0x16
	strb r2, [r3, #0xc]
	ldr r2, _08078ABC @ =gScreenTransition
	strh r0, [r2, #0x36]
	adds r2, #0x35
	strb r1, [r2]
	bx lr
	.align 2, 0
_08078AB8: .4byte gPlayerState
_08078ABC: .4byte gScreenTransition

	thumb_func_start sub_08078AC0
sub_08078AC0: @ 0x08078AC0
	push {r4, lr}
	ldr r3, _08078AEC @ =gPlayerState
	mov ip, r3
	movs r3, #0xf
	mov r4, ip
	strb r3, [r4, #0xc]
	mov r3, ip
	adds r3, #0x38
	strb r0, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	mov r1, ip
	adds r1, #0x39
	strb r0, [r1]
	rsbs r0, r2, #0
	orrs r0, r2
	lsrs r0, r0, #0x1f
	adds r1, #1
	strb r0, [r1]
	pop {r4, pc}
	.align 2, 0
_08078AEC: .4byte gPlayerState

	thumb_func_start sub_08078AF0
sub_08078AF0: @ 0x08078AF0
	push {r4, lr}
	ldr r3, _08078B40 @ =gPlayerState
	mov ip, r3
	adds r3, #0x38
	movs r4, #0
	strb r1, [r3]
	mov r1, ip
	adds r1, #0x39
	strb r2, [r1]
	adds r1, #1
	strb r4, [r1]
	movs r1, #8
	mov r2, ip
	strb r1, [r2, #0xc]
	adds r2, #0xa8
	movs r1, #0x15
	strb r1, [r2]
	mov r1, ip
	adds r1, #0x26
	strb r4, [r1]
	movs r1, #1
	mov r3, ip
	strb r1, [r3, #0x14]
	ldr r2, _08078B44 @ =gPlayerEntity
	str r0, [r2, #0x54]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	ldrb r1, [r2, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0x11]
	bl sub_0807A108
	pop {r4, pc}
	.align 2, 0
_08078B40: .4byte gPlayerState
_08078B44: .4byte gPlayerEntity

	thumb_func_start sub_08078B48
sub_08078B48: @ 0x08078B48
	push {lr}
	ldr r1, _08078B80 @ =gPlayerState
	ldrb r0, [r1, #7]
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1, #7]
	ldrb r0, [r1, #0xb]
	orrs r0, r2
	strb r0, [r1, #0xb]
	ldrb r0, [r1, #0xa]
	orrs r2, r0
	strb r2, [r1, #0xa]
	adds r2, r1, #0
	adds r2, #0x27
	movs r0, #2
	strb r0, [r2]
	adds r0, r1, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	subs r0, #4
	adds r2, r1, #0
	cmp r0, #0x19
	bhi _08078BF8
	lsls r0, r0, #2
	ldr r1, _08078B84 @ =_08078B88
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08078B80: .4byte gPlayerState
_08078B84: .4byte _08078B88
_08078B88: @ jump table
	.4byte _08078C04 @ case 0
	.4byte _08078C04 @ case 1
	.4byte _08078BF8 @ case 2
	.4byte _08078BF8 @ case 3
	.4byte _08078BF8 @ case 4
	.4byte _08078BF0 @ case 5
	.4byte _08078BF8 @ case 6
	.4byte _08078BF8 @ case 7
	.4byte _08078BF8 @ case 8
	.4byte _08078BF8 @ case 9
	.4byte _08078BF8 @ case 10
	.4byte _08078BF8 @ case 11
	.4byte _08078BF8 @ case 12
	.4byte _08078BF8 @ case 13
	.4byte _08078BF8 @ case 14
	.4byte _08078BF8 @ case 15
	.4byte _08078BF8 @ case 16
	.4byte _08078BF8 @ case 17
	.4byte _08078BF8 @ case 18
	.4byte _08078BF8 @ case 19
	.4byte _08078BF8 @ case 20
	.4byte _08078C04 @ case 21
	.4byte _08078C04 @ case 22
	.4byte _08078BF8 @ case 23
	.4byte _08078BF8 @ case 24
	.4byte _08078C04 @ case 25
_08078BF0:
	ldr r0, [r2, #0x30]
	ldr r1, _08078C18 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r2, #0x30]
_08078BF8:
	ldr r0, _08078C1C @ =gRoomVars
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _08078C04
	movs r0, #1
	strb r0, [r2, #0x1a]
_08078C04:
	ldr r0, _08078C20 @ =gPlayerEntity
	adds r0, #0x3d
	movs r1, #0xfe
	strb r1, [r0]
	adds r1, r2, #0
	adds r1, #0x8a
	movs r0, #2
	strb r0, [r1]
	pop {pc}
	.align 2, 0
_08078C18: .4byte 0xFFFBFFFF
_08078C1C: .4byte gRoomVars
_08078C20: .4byte gPlayerEntity

	thumb_func_start sub_08078C24
sub_08078C24: @ 0x08078C24
	push {lr}
	ldr r3, _08078CAC @ =gPlayerState
	movs r2, #0
	strb r2, [r3]
	strb r2, [r3, #1]
	strb r2, [r3, #2]
	strb r2, [r3, #3]
	strb r2, [r3, #4]
	strb r2, [r3, #5]
	strb r2, [r3, #6]
	strb r2, [r3, #7]
	movs r0, #0
	strh r2, [r3, #8]
	strb r0, [r3, #0xa]
	strb r0, [r3, #0xb]
	movs r1, #0x35
	adds r1, r1, r3
	mov ip, r1
	adds r1, r3, #0
	adds r1, #0x36
	strb r0, [r1]
	strb r0, [r3, #0xc]
	strb r0, [r3, #0xd]
	strb r0, [r3, #0xe]
	strb r0, [r3, #0x11]
	strb r0, [r3, #0x12]
	strb r0, [r3, #0x13]
	strb r0, [r3, #0x14]
	strb r0, [r3, #0x1b]
	strb r0, [r3, #0x1e]
	strb r0, [r3, #0x1f]
	subs r1, #0x16
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	strh r2, [r3, #0x22]
	strh r2, [r3, #0x24]
	adds r1, #5
	strb r0, [r1]
	str r2, [r3, #0x2c]
	adds r1, #0x5a
	strh r2, [r1]
	mov r1, ip
	strb r0, [r1]
	str r2, [r3, #0x30]
	adds r1, r3, #0
	adds r1, #0x38
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #5
	strb r0, [r1]
	subs r1, #3
	strb r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	adds r1, #4
	movs r2, #0x40
	bl MemFill32
	ldr r0, _08078CB0 @ =gUnk_03003DF0
	movs r1, #0xc4
	lsls r1, r1, #1
	bl MemClear
	pop {pc}
	.align 2, 0
_08078CAC: .4byte gPlayerState
_08078CB0: .4byte gUnk_03003DF0

	thumb_func_start sub_08078CB4
sub_08078CB4: @ 0x08078CB4
	push {lr}
	ldr r0, _08078CCC @ =gPlayerState
	ldrb r0, [r0, #5]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08078CC8
	bl sub_08078D60
_08078CC8:
	pop {pc}
	.align 2, 0
_08078CCC: .4byte gPlayerState

	thumb_func_start sub_08078CD0
sub_08078CD0: @ 0x08078CD0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x70]
	ldrh r0, [r5, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	ldrb r1, [r5, #0x1b]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r4, #0x1b]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1b]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	ldr r1, _08078D28 @ =gUnk_0811C01C
	ldr r0, _08078D2C @ =gPlayerState
	ldr r0, [r0, #0x2c]
	ldrb r0, [r0, #0x1e]
	adds r0, r0, r1
	ldrb r2, [r0]
	ldr r3, _08078D30 @ =gUnk_0811C0B0
	ldrb r1, [r4, #0x1c]
	movs r0, #0x30
	ands r0, r1
	lsrs r0, r0, #2
	adds r0, r0, r3
	lsls r2, r2, #1
	ldr r0, [r0]
	adds r2, r0, r2
	ldrb r0, [r5, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _08078D34
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldrh r0, [r5, #0x2e]
	subs r0, r0, r1
	b _08078D3C
	.align 2, 0
_08078D28: .4byte gUnk_0811C01C
_08078D2C: .4byte gPlayerState
_08078D30: .4byte gUnk_0811C0B0
_08078D34:
	movs r0, #0
	ldrsb r0, [r2, r0]
	ldrh r1, [r5, #0x2e]
	adds r0, r0, r1
_08078D3C:
	strh r0, [r4, #0x2e]
	movs r0, #1
	ldrsb r0, [r2, r0]
	ldrh r1, [r5, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_0806FEBC
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _08078D5E
	adds r0, r4, #0
	bl CopyPosition
_08078D5E:
	pop {r4, r5, pc}

	thumb_func_start sub_08078D60
sub_08078D60: @ 0x08078D60
	push {r4, r5, r6, lr}
	ldr r1, _08078DCC @ =gPlayerEntity
	ldr r0, [r1, #0x74]
	ldr r4, [r0, #0x54]
	ldrb r0, [r4, #0xc]
	adds r6, r1, #0
	cmp r0, #2
	beq _08078D72
	b _08078E82
_08078D72:
	adds r0, r6, #0
	adds r0, #0x63
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r6, #0x36]
	adds r0, r0, r1
	strh r0, [r4, #0x36]
	ldrb r1, [r6, #0x1b]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r4, #0x1b]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1b]
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r2, #0x7f
	ands r2, r0
	ldr r1, _08078DD0 @ =gUnk_0811C0E8
	ldrb r0, [r4, #0x16]
	lsrs r0, r0, #4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r6, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _08078DD4
	adds r2, r1, r2
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldrh r0, [r6, #0x2e]
	subs r0, r0, r1
	strh r0, [r4, #0x2e]
	adds r1, r2, #0
	b _08078DE0
	.align 2, 0
_08078DCC: .4byte gPlayerEntity
_08078DD0: .4byte gUnk_0811C0E8
_08078DD4:
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r2, [r6, #0x2e]
	adds r0, r0, r2
	strh r0, [r4, #0x2e]
_08078DE0:
	movs r0, #1
	ldrsb r0, [r1, r0]
	ldrh r1, [r4, #0x36]
	adds r0, r0, r1
	strh r0, [r4, #0x36]
	adds r5, r6, #0
	ldrh r0, [r5, #0x32]
	strh r0, [r4, #0x32]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ResolveEntityOnTop
	ldr r0, _08078E34 @ =gPlayerState
	ldrb r0, [r0, #5]
	cmp r0, #4
	bne _08078E4C
	ldrb r1, [r5, #0x19]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r4, #0
	bl sub_0806F8DC
	ldrb r1, [r4, #0x16]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #2
	bne _08078E82
	ldr r0, _08078E38 @ =gScreenTransition
	ldr r1, [r0]
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _08078E3C
	cmp r1, #3
	beq _08078E44
	b _08078E82
	.align 2, 0
_08078E34: .4byte gPlayerState
_08078E38: .4byte gScreenTransition
_08078E3C:
	ldrh r0, [r4, #0x2e]
	adds r0, #1
	strh r0, [r4, #0x2e]
	b _08078E82
_08078E44:
	ldrh r0, [r4, #0x2e]
	subs r0, #1
	strh r0, [r4, #0x2e]
	b _08078E82
_08078E4C:
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	cmp r0, #0
	beq _08078E62
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	subs r1, #1
	b _08078E6E
_08078E62:
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	adds r1, #1
_08078E6E:
	adds r3, r4, #0
	adds r3, #0x29
	movs r0, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_08078E82:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08078E84
sub_08078E84: @ 0x08078E84
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _08078ED0 @ =gPlayerEntity
	cmp r4, r0
	bne _08078EAC
	adds r0, r5, #0
	bl sub_08079BD8
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x62
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x63
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
_08078EAC:
	ldr r0, _08078ED4 @ =gSpritePtrs
	ldrh r2, [r4, #0x12]
	lsls r2, r2, #4
	adds r0, #4
	adds r2, r2, r0
	ldrb r1, [r4, #0x1e]
	lsls r1, r1, #2
	ldr r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _08078ED8
	adds r0, r4, #0
	movs r1, #1
	adds r2, r5, #0
	bl sub_0806FEBC
	b _08078EE2
	.align 2, 0
_08078ED0: .4byte gPlayerEntity
_08078ED4: .4byte gSpritePtrs
_08078ED8:
	adds r0, r4, #0
	movs r1, #3
	adds r2, r5, #0
	bl sub_0806FEBC
_08078EE2:
	pop {r4, r5, pc}

	thumb_func_start sub_08078EE4
sub_08078EE4: @ 0x08078EE4
	ldr r2, _08078EF4 @ =gPlayerEntity
	ldr r1, _08078EF8 @ =gPlayerState
	ldrh r0, [r1, #0x16]
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #0x18]
	strh r0, [r2, #0x32]
	bx lr
	.align 2, 0
_08078EF4: .4byte gPlayerEntity
_08078EF8: .4byte gPlayerState

	thumb_func_start sub_08078EFC
sub_08078EFC: @ 0x08078EFC
	push {lr}
	ldr r3, _08078F18 @ =gPlayerState
	ldrb r2, [r3, #0xc]
	cmp r2, #0
	beq _08078F20
	ldr r0, _08078F1C @ =gPlayerEntity
	movs r1, #0
	strb r2, [r0, #0xc]
	strb r1, [r0, #0xd]
	strb r1, [r3, #0xc]
	bl sub_08070680
	movs r0, #1
	b _08078F22
	.align 2, 0
_08078F18: .4byte gPlayerState
_08078F1C: .4byte gPlayerEntity
_08078F20:
	movs r0, #0
_08078F22:
	pop {pc}

	thumb_func_start sub_08078F24
sub_08078F24: @ 0x08078F24
	push {r4, lr}
	ldr r4, _08078F38 @ =gPlayerState
	ldrb r3, [r4, #0xd]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _08078F3C
	bl sub_08078F60
	b _08078F5A
	.align 2, 0
_08078F38: .4byte gPlayerState
_08078F3C:
	ldr r2, _08078F5C @ =gSineTable
	lsls r0, r3, #4
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x8c
	strh r1, [r0]
	lsls r0, r3, #4
	adds r0, #0x80
	adds r0, r0, r2
	ldrh r0, [r0]
	rsbs r0, r0, #0
	adds r1, r4, #0
	adds r1, #0x8e
	strh r0, [r1]
_08078F5A:
	pop {r4, pc}
	.align 2, 0
_08078F5C: .4byte gSineTable

	thumb_func_start sub_08078F60
sub_08078F60: @ 0x08078F60
	ldr r0, _08078F70 @ =gPlayerState
	adds r1, r0, #0
	adds r1, #0x8c
	movs r2, #0
	strh r2, [r1]
	adds r0, #0x8e
	strh r2, [r0]
	bx lr
	.align 2, 0
_08078F70: .4byte gPlayerState

	thumb_func_start sub_08078F74
sub_08078F74: @ 0x08078F74
	push {lr}
	adds r2, r0, #0
	ldr r0, _08078FA4 @ =gArea
	ldrb r0, [r0, #0x18]
	cmp r0, #3
	bne _08078FAC
	ldr r3, _08078FA8 @ =gPlayerState
	adds r0, r3, #0
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _08078FAC
	movs r1, #0
	movs r0, #0x81
	strb r0, [r3, #2]
	movs r0, #0x15
	strb r0, [r2, #0xc]
	strb r1, [r2, #0xd]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r2, #0x20]
	movs r0, #1
	b _08078FAE
	.align 2, 0
_08078FA4: .4byte gArea
_08078FA8: .4byte gPlayerState
_08078FAC:
	movs r0, #0
_08078FAE:
	pop {pc}

	thumb_func_start sub_08078FB0
sub_08078FB0: @ 0x08078FB0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _08078FE0 @ =gPlayerState
	ldrb r1, [r5, #6]
	movs r6, #0x80
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08078FCA
	adds r1, r5, #0
	adds r1, #0x35
	movs r0, #0xff
	strb r0, [r1]
_08078FCA:
	adds r0, r4, #0
	bl sub_08079064
	ldr r1, [r5, #0x30]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08078FE4
	movs r2, #0x58
	b _08078FFA
	.align 2, 0
_08078FE0: .4byte gPlayerState
_08078FE4:
	ands r1, r6
	cmp r1, #0
	beq _08078FEE
	movs r2, #0x18
	b _08078FFA
_08078FEE:
	ldrh r0, [r5, #8]
	lsrs r0, r0, #8
	movs r2, #0xb8
	cmp r0, #7
	bne _08078FFA
	movs r2, #0x34
_08078FFA:
	ldr r0, _08079014 @ =gPlayerState
	adds r3, r0, #0
	ldrb r1, [r0, #8]
	cmp r2, r1
	bls _08079040
	ldrb r0, [r4, #0x14]
	adds r2, r0, #0
	cmp r2, #4
	bls _08079018
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	b _08079020
	.align 2, 0
_08079014: .4byte gPlayerState
_08079018:
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
_08079020:
	strb r0, [r4, #0x18]
	ldr r0, [r3, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08079036
	ldrh r1, [r3, #8]
	ldrb r0, [r4, #0x14]
	adds r2, r1, r0
	b _08079042
_08079036:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x19
	ldrh r3, [r3, #8]
	adds r2, r0, r3
	b _08079042
_08079040:
	ldrh r2, [r0, #8]
_08079042:
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x58
	ldrb r1, [r1]
	orrs r0, r1
	cmp r2, r0
	beq _08079062
	lsrs r0, r2, #8
	strh r0, [r4, #0x12]
	movs r0, #0xff
	ands r2, r0
	adds r0, r4, #0
	adds r1, r2, #0
	bl InitAnimationForceUpdate
_08079062:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08079064
sub_08079064: @ 0x08079064
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0807909C @ =gPlayerState
	ldr r1, [r0, #0x30]
	ldr r2, _080790A0 @ =0x00100080
	ands r1, r2
	adds r5, r0, #0
	cmp r1, #0
	bne _080790DE
	movs r3, #0
	movs r2, #0
	ldr r1, _080790A4 @ =gUnk_03000B80
_0807907C:
	ldrb r0, [r1, #0xf]
	cmp r0, r3
	bls _08079086
	adds r3, r0, #0
	ldrh r4, [r1, #0x10]
_08079086:
	adds r1, #0x1c
	adds r2, #1
	cmp r2, #3
	bls _0807907C
	adds r2, r5, #0
	ldrb r0, [r2, #0xe]
	cmp r0, r3
	bhs _080790A8
	strh r4, [r2, #8]
	b _080790DE
	.align 2, 0
_0807909C: .4byte gPlayerState
_080790A0: .4byte 0x00100080
_080790A4: .4byte gUnk_03000B80
_080790A8:
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080790C0
	ldr r0, _080790BC @ =0x000002BE
	strh r0, [r2, #8]
	b _080790DE
	.align 2, 0
_080790BC: .4byte 0x000002BE
_080790C0:
	ldrh r1, [r5, #8]
	movs r0, #0xc1
	lsls r0, r0, #3
	cmp r1, r0
	beq _080790D8
	movs r0, #0x82
	lsls r0, r0, #1
	cmp r1, r0
	beq _080790D8
	ldr r0, _080790E0 @ =0x00000404
	cmp r1, r0
	bne _080790DE
_080790D8:
	adds r0, r6, #0
	bl sub_080790E4
_080790DE:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080790E0: .4byte 0x00000404

	thumb_func_start sub_080790E4
sub_080790E4: @ 0x080790E4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08079128 @ =gPlayerState
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _08079182
	movs r0, #0x10
	bl sub_080793E4
	cmp r0, #0
	beq _0807912C
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0x14
	strb r0, [r1]
	adds r1, #5
	movs r0, #4
	strb r0, [r1]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	movs r1, #0x10
	eors r0, r1
	adds r1, r4, #0
	adds r1, #0x3e
	strb r0, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	bl ModHealth
	movs r0, #0x7a
	bl SoundReq
	b _08079182
	.align 2, 0
_08079128: .4byte gPlayerState
_0807912C:
	ldrb r1, [r5, #6]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08079182
	cmp r1, #0
	bne _08079150
	movs r0, #1
	bl sub_080793E4
	cmp r0, #0
	beq _0807914C
	ldrb r0, [r4, #0xf]
	cmp r0, #5
	bhi _08079154
	adds r0, #1
_0807914C:
	strb r0, [r4, #0xf]
	b _08079182
_08079150:
	subs r0, r1, #1
	strb r0, [r5, #6]
_08079154:
	ldr r2, _08079174 @ =gPlayerState
	ldrb r0, [r4, #0x14]
	adds r1, r2, #0
	adds r1, #0x35
	strb r0, [r1]
	adds r1, #0x73
	movs r0, #0x19
	strb r0, [r1]
	ldr r0, [r2, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0807917C
	ldr r0, _08079178 @ =0x0000093C
	b _08079180
	.align 2, 0
_08079174: .4byte gPlayerState
_08079178: .4byte 0x0000093C
_0807917C:
	movs r0, #0xcf
	lsls r0, r0, #2
_08079180:
	strh r0, [r2, #8]
_08079182:
	pop {r4, r5, pc}

	thumb_func_start sub_08079184
sub_08079184: @ 0x08079184
	ldr r0, _08079194 @ =gPlayerState
	movs r1, #0
	strb r1, [r0, #5]
	strb r1, [r0, #1]
	ldr r0, _08079198 @ =gPlayerEntity
	str r1, [r0, #0x74]
	bx lr
	.align 2, 0
_08079194: .4byte gPlayerState
_08079198: .4byte gPlayerEntity

	thumb_func_start sub_0807919C
sub_0807919C: @ 0x0807919C
	push {lr}
	ldr r0, _080791B0 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080791B4
	bl sub_080791BC
	b _080791B8
	.align 2, 0
_080791B0: .4byte gPlayerState
_080791B4:
	bl sub_08079258
_080791B8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080791BC
sub_080791BC: @ 0x080791BC
	ldr r0, _080791CC @ =gPlayerEntity
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #0xc]
	strb r2, [r0, #0xd]
	strb r2, [r0, #0xf]
	bx lr
	.align 2, 0
_080791CC: .4byte gPlayerEntity

	thumb_func_start sub_080791D0
sub_080791D0: @ 0x080791D0
	push {lr}
	ldr r3, _0807920C @ =gPlayerState
	ldr r0, [r3, #0x30]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080791E8
	ldr r0, _08079210 @ =gPlayerEntity
	ldrb r1, [r0, #0x18]
	movs r2, #3
	orrs r1, r2
	strb r1, [r0, #0x18]
_080791E8:
	ldr r0, [r3, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08079214
	ldr r2, _08079210 @ =gPlayerEntity
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	bl sub_0807921C
	b _08079218
	.align 2, 0
_0807920C: .4byte gPlayerState
_08079210: .4byte gPlayerEntity
_08079214:
	bl sub_08079258
_08079218:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807921C
sub_0807921C: @ 0x0807921C
	push {r4, lr}
	ldr r4, _0807924C @ =gPlayerEntity
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldr r2, _08079250 @ =gPlayerState
	ldr r0, [r2, #0x30]
	ldr r1, _08079254 @ =0xFECBF6FA
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_08079938
	bl sub_080791BC
	adds r0, r4, #0
	bl sub_0805E374
	pop {r4, pc}
	.align 2, 0
_0807924C: .4byte gPlayerEntity
_08079250: .4byte gPlayerState
_08079254: .4byte 0xFECBF6FA

	thumb_func_start sub_08079258
sub_08079258: @ 0x08079258
	push {r4, lr}
	ldr r4, _080792AC @ =gPlayerState
	ldr r0, [r4, #0x30]
	movs r1, #0x40
	ands r0, r1
	ldr r3, _080792B0 @ =gPlayerEntity
	cmp r0, #0
	bne _08079278
	ldrb r1, [r3, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r3, #0x10]
	ldrb r0, [r3, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r3, #0x18]
_08079278:
	movs r0, #9
	strb r0, [r3, #0xc]
	movs r0, #1
	strb r0, [r3, #0xd]
	adds r2, r3, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	movs r2, #0
	ldr r0, _080792B4 @ =0x00000C18
	strh r0, [r4, #8]
	ldr r0, [r4, #0x30]
	ldr r1, _080792B8 @ =0xFECFFEFA
	ands r0, r1
	str r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0x26
	strb r2, [r0]
	strb r2, [r4, #0xc]
	adds r0, r3, #0
	bl sub_0805E374
	pop {r4, pc}
	.align 2, 0
_080792AC: .4byte gPlayerState
_080792B0: .4byte gPlayerEntity
_080792B4: .4byte 0x00000C18
_080792B8: .4byte 0xFECFFEFA

	thumb_func_start sub_080792BC
sub_080792BC: @ 0x080792BC
	push {r4, lr}
	ldr r3, _080792D0 @ =gPlayerState
	movs r4, #0x13
	strb r4, [r3, #0xc]
	adds r3, #0x38
	strb r2, [r3]
	ldr r2, _080792D4 @ =gPlayerEntity
	strh r0, [r2, #0x24]
	strb r1, [r2, #0x15]
	pop {r4, pc}
	.align 2, 0
_080792D0: .4byte gPlayerState
_080792D4: .4byte gPlayerEntity

	thumb_func_start sub_080792D8
sub_080792D8: @ 0x080792D8
	push {r4, r5, r6, lr}
	ldr r5, _08079344 @ =gPlayerEntity
	adds r3, r5, #0
	adds r3, #0x42
	ldrb r0, [r3]
	cmp r0, #0
	beq _080793E0
	ldrb r2, [r5, #0xc]
	cmp r2, #0xb
	beq _08079338
	ldr r0, _08079348 @ =gPlayerState
	ldrb r1, [r0, #0x1e]
	adds r6, r0, #0
	cmp r1, #0
	bne _08079338
	ldrb r0, [r6, #5]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08079338
	ldrb r0, [r6, #2]
	cmp r0, #0
	bne _08079338
	ldrb r0, [r6, #0x12]
	cmp r0, #0xff
	beq _08079338
	ldrb r1, [r6, #7]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08079338
	adds r0, r6, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	subs r0, #1
	cmp r0, #0
	bgt _08079338
	cmp r2, #3
	beq _08079338
	ldr r1, [r6, #0x30]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r1, r0
	cmp r1, #0
	beq _0807934C
_08079338:
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #0
	strb r0, [r1]
	b _080793E0
	.align 2, 0
_08079344: .4byte gPlayerEntity
_08079348: .4byte gPlayerState
_0807934C:
	cmp r2, #0x1d
	bne _0807935E
	adds r0, r5, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0x10
	beq _0807935E
	strb r1, [r3]
	b _080793E0
_0807935E:
	adds r0, r5, #0
	adds r0, #0x42
	ldrb r3, [r0]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r2, r0, #0
	cmp r1, #0
	ble _08079372
	subs r0, r3, #1
	b _08079374
_08079372:
	adds r0, r3, #1
_08079374:
	strb r0, [r2]
	ldrb r0, [r2]
	cmp r0, #0
	beq _080793E0
	adds r4, r6, #0
	ldrb r0, [r4, #7]
	movs r1, #0xdf
	ands r1, r0
	strb r1, [r4, #7]
	adds r0, r5, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080793CA
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _080793CA
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080793CA
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _080793CA
	bl ResetPlayer
	ldr r0, [r4, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _080793C4
	movs r0, #0x8a
	lsls r0, r0, #1
	strh r0, [r4, #8]
	b _080793CA
_080793C4:
	movs r0, #0x83
	lsls r0, r0, #3
	strh r0, [r6, #8]
_080793CA:
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r4, r5, #0
	adds r4, #0x3e
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_080027EA
	ldrb r0, [r4]
	bl sub_0807A5B8
_080793E0:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080793E4
sub_080793E4: @ 0x080793E4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080793FC @ =gPlayerState
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _08079408
	ldr r1, _08079400 @ =gUnk_0811C0F8
	ldr r0, _08079404 @ =gPlayerEntity
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #1
	b _08079410
	.align 2, 0
_080793FC: .4byte gPlayerState
_08079400: .4byte gUnk_0811C0F8
_08079404: .4byte gPlayerEntity
_08079408:
	ldr r1, _08079448 @ =gUnk_0811C0F8
	ldr r0, _0807944C @ =gPlayerEntity
	ldrb r0, [r0, #0x15]
	lsrs r0, r0, #2
_08079410:
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r4, [r0]
	bl sub_08079778
	cmp r0, #0
	beq _08079454
	ldr r0, _08079450 @ =gPlayerState
	adds r0, #0x90
	ldrh r0, [r0]
	ands r0, r4
	cmp r0, #0
	beq _08079454
	cmp r5, #0
	beq _08079442
	bl sub_0807A500
	ldr r1, _0807944C @ =gPlayerEntity
	adds r1, #0x38
	ldrb r1, [r1]
	adds r2, r5, #0
	bl sub_080002F0
	cmp r0, #0
	beq _08079454
_08079442:
	movs r0, #1
	b _08079456
	.align 2, 0
_08079448: .4byte gUnk_0811C0F8
_0807944C: .4byte gPlayerEntity
_08079450: .4byte gPlayerState
_08079454:
	movs r0, #0
_08079456:
	pop {r4, r5, pc}

	thumb_func_start sub_08079458
sub_08079458: @ 0x08079458
	push {r4, r5, lr}
	ldr r4, _08079498 @ =gPlayerEntity
	movs r1, #0
	movs r0, #0x19
	strb r0, [r4, #0xc]
	str r1, [r4, #0x34]
	str r1, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x42
	strb r1, [r0]
	bl sub_08078EE4
	ldr r2, _0807949C @ =gPlayerState
	ldr r1, [r2, #0x30]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	cmp r0, #0
	bne _08079514
	movs r0, #0x80
	lsls r0, r0, #9
	ands r1, r0
	cmp r1, #0
	beq _080794E4
	adds r0, r2, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrh r0, [r1, #0x2e]
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #0x32]
	strh r0, [r4, #0x32]
	b _08079514
	.align 2, 0
_08079498: .4byte gPlayerEntity
_0807949C: .4byte gPlayerState
_080794A0:
	ldr r2, _080794DC @ =gPlayerEntity
	ldr r0, [r4]
	lsrs r0, r0, #0x1e
	adds r1, r2, #0
	adds r1, #0x38
	strb r0, [r1]
	ldr r3, _080794E0 @ =gRoomControls
	ldr r0, [r4]
	movs r1, #0x3f
	ands r0, r1
	lsls r0, r0, #4
	ldrh r1, [r3, #6]
	adds r0, r0, r1
	adds r0, #8
	strh r0, [r2, #0x2e]
	ldr r0, [r4]
	movs r1, #0xfc
	lsls r1, r1, #4
	ands r0, r1
	lsrs r0, r0, #2
	ldrh r3, [r3, #8]
	adds r0, r0, r3
	adds r0, #8
	strh r0, [r2, #0x32]
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	b _08079514
	.align 2, 0
_080794DC: .4byte gPlayerEntity
_080794E0: .4byte gRoomControls
_080794E4:
	movs r5, #0
	ldr r1, [r2, #0x40]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08079514
	adds r4, r2, #0
	adds r4, #0x40
_080794F4:
	ldr r1, [r4]
	ldrh r0, [r4]
	lsrs r1, r1, #0x1e
	bl sub_080002E0
	cmp r0, #0xf
	bne _080794A0
	adds r4, #4
	adds r5, #1
	cmp r5, #0xf
	bhi _08079514
	ldr r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080794F4
_08079514:
	ldr r0, _0807951C @ =gPlayerEntity
	bl UpdateSpriteForCollisionLayer
	pop {r4, r5, pc}
	.align 2, 0
_0807951C: .4byte gPlayerEntity

	thumb_func_start sub_08079520
sub_08079520: @ 0x08079520
	push {lr}
	adds r1, r0, #0
	ldr r0, _08079538 @ =gPlayerState
	ldrb r0, [r0, #0xd]
	cmp r0, #0x7f
	ble _08079532
	ldrb r0, [r1, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #3
_08079532:
	strb r0, [r1, #0x15]
	pop {pc}
	.align 2, 0
_08079538: .4byte gPlayerState

	thumb_func_start sub_0807953C
sub_0807953C: @ 0x0807953C
	ldr r1, _08079548 @ =0x00000F38
	ldr r0, _0807954C @ =gPlayerState
	adds r0, #0x92
	ldrh r0, [r0]
	ands r0, r1
	bx lr
	.align 2, 0
_08079548: .4byte 0x00000F38
_0807954C: .4byte gPlayerState

	thumb_func_start sub_08079550
sub_08079550: @ 0x08079550
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080795A8 @ =gUnk_03004030
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _08079562
	b _080796FC
_08079562:
	ldr r2, _080795AC @ =gPlayerState
	ldrb r0, [r2, #0x1e]
	cmp r0, #0
	beq _08079576
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080795B4
_08079576:
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	ldr r1, _080795B0 @ =gPlayerEntity
	mov r8, r1
	cmp r0, #0
	bne _080795A0
	ldrb r1, [r2, #0x1b]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080795A0
	mov r3, r8
	ldrb r1, [r3, #0x15]
	ldrb r2, [r2, #0xd]
	cmp r1, r2
	bne _080795A0
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080795B4
_080795A0:
	movs r0, #0
	mov r5, r8
	strb r0, [r5, #0xf]
	b _080796FE
	.align 2, 0
_080795A8: .4byte gUnk_03004030
_080795AC: .4byte gPlayerState
_080795B0: .4byte gPlayerEntity
_080795B4:
	bl sub_08079778
	cmp r0, #0
	bne _080795BE
	b _080796FC
_080795BE:
	ldr r3, _08079610 @ =gPlayerEntity
	ldrb r2, [r3, #0x14]
	movs r0, #6
	ands r0, r2
	ldr r1, _08079614 @ =gUnk_0811C100
	adds r1, r0, r1
	movs r0, #2
	ands r0, r2
	mov r8, r3
	cmp r0, #0
	beq _0807961C
	movs r6, #0x2e
	ldrsh r2, [r3, r6]
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r2, r2, r0
	ldr r4, _08079618 @ =gRoomControls
	ldrh r0, [r4, #6]
	subs r2, r2, r0
	asrs r2, r2, #4
	movs r3, #0x3f
	ands r2, r3
	mov r0, r8
	movs r5, #0x32
	ldrsh r1, [r0, r5]
	ldr r0, [r0, #0x48]
	ldrb r5, [r0, #3]
	adds r0, r1, r5
	ldrh r4, [r4, #8]
	subs r0, r0, r4
	asrs r0, r0, #4
	ands r0, r3
	lsls r7, r0, #6
	orrs r7, r2
	subs r1, r1, r5
	subs r1, r1, r4
	asrs r1, r1, #4
	ands r1, r3
	lsls r4, r1, #6
	orrs r4, r2
	b _0807965E
	.align 2, 0
_08079610: .4byte gPlayerEntity
_08079614: .4byte gUnk_0811C100
_08079618: .4byte gRoomControls
_0807961C:
	mov r6, r8
	movs r0, #0x2e
	ldrsh r2, [r6, r0]
	ldr r0, [r6, #0x48]
	ldrb r0, [r0, #4]
	mov ip, r0
	adds r0, r2, r0
	ldr r4, _080796EC @ =gRoomControls
	ldrh r3, [r4, #6]
	mov sb, r3
	subs r0, r0, r3
	asrs r7, r0, #4
	movs r3, #0x3f
	ands r7, r3
	movs r5, #0x32
	ldrsh r0, [r6, r5]
	ldrb r1, [r1, #1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	ldrh r1, [r4, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r7, r0
	mov r6, ip
	subs r2, r2, r6
	mov r1, sb
	subs r2, r2, r1
	asrs r4, r2, #4
	ands r4, r3
	orrs r4, r0
_0807965E:
	adds r0, r7, #0
	mov r5, r8
	adds r5, #0x38
	ldrb r1, [r5]
	bl sub_080002C8
	adds r3, r0, #0
	ldr r6, _080796F0 @ =gUnk_0811C1E8
	mov r1, r8
	ldrb r0, [r1, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	adds r0, r3, #0
	bl sub_08007DD6
	adds r3, r0, #0
	cmp r3, #0
	beq _080796FC
	adds r0, r4, #0
	ldrb r1, [r5]
	bl sub_080002C8
	adds r3, r0, #0
	mov r5, r8
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	adds r0, r3, #0
	bl sub_08007DD6
	adds r3, r0, #0
	cmp r3, #0
	beq _080796FC
	ldr r1, _080796F4 @ =gPlayerState
	ldrb r2, [r1, #6]
	movs r0, #0x80
	orrs r0, r2
	strb r0, [r1, #6]
	ldrb r0, [r1, #0x1e]
	adds r4, r1, #0
	cmp r0, #0
	bne _080796C8
	ldrb r0, [r5, #0xf]
	adds r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _080796FC
_080796C8:
	ldr r0, _080796F8 @ =gPlayerEntity
	subs r1, r3, #1
	movs r2, #0
	strb r1, [r0, #0x14]
	movs r1, #4
	strb r1, [r0, #0xc]
	strb r2, [r0, #0xd]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #0x81
	strb r1, [r4, #2]
	bl sub_08070680
	movs r0, #1
	b _080796FE
	.align 2, 0
_080796EC: .4byte gRoomControls
_080796F0: .4byte gUnk_0811C1E8
_080796F4: .4byte gPlayerState
_080796F8: .4byte gPlayerEntity
_080796FC:
	movs r0, #0
_080796FE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08079708
sub_08079708: @ 0x08079708
	push {r4, lr}
	ldr r4, _08079740 @ =gPlayerState
	adds r2, r4, #0
	adds r2, #0xa8
	movs r3, #0
	movs r1, #0x12
	strb r1, [r2]
	subs r2, #0x6c
	movs r1, #0xff
	strb r1, [r2]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #0xa
	strb r1, [r0, #0xc]
	strb r3, [r0, #0xd]
	bl sub_080085B0
	ldr r0, [r4, #0x30]
	movs r1, #0x88
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807973E
	bl sub_0805E544
_0807973E:
	pop {r4, pc}
	.align 2, 0
_08079740: .4byte gPlayerState

	thumb_func_start sub_08079744
sub_08079744: @ 0x08079744
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x2e]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #8
	beq _0807975E
	cmp r1, #8
	ble _0807975A
	subs r0, #1
	b _0807975C
_0807975A:
	adds r0, #1
_0807975C:
	strh r0, [r2, #0x2e]
_0807975E:
	ldrh r0, [r2, #0x32]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #8
	beq _08079774
	cmp r1, #8
	ble _08079770
	subs r0, #1
	b _08079772
_08079770:
	adds r0, #1
_08079772:
	strh r0, [r2, #0x32]
_08079774:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08079778
sub_08079778: @ 0x08079778
	push {lr}
	ldr r0, _08079790 @ =gPlayerState
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807979C
	ldr r2, _08079794 @ =gUnk_0811C108
	ldr r1, _08079798 @ =gPlayerEntity
	ldrb r0, [r1, #0x14]
	lsrs r0, r0, #1
	b _080797A4
	.align 2, 0
_08079790: .4byte gPlayerState
_08079794: .4byte gUnk_0811C108
_08079798: .4byte gPlayerEntity
_0807979C:
	ldr r2, _080797BC @ =gUnk_0811C108
	ldr r1, _080797C0 @ =gPlayerEntity
	ldrb r0, [r1, #0x15]
	lsrs r0, r0, #2
_080797A4:
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	movs r3, #0
	ldrh r0, [r1, #0x2a]
	ands r0, r2
	cmp r2, r0
	bne _080797B6
	movs r3, #1
_080797B6:
	adds r0, r3, #0
	pop {pc}
	.align 2, 0
_080797BC: .4byte gUnk_0811C108
_080797C0: .4byte gPlayerEntity

	thumb_func_start sub_080797C4
sub_080797C4: @ 0x080797C4
	push {lr}
	ldr r1, _080797E4 @ =gUnk_0811C110
	ldr r2, _080797E8 @ =gPlayerEntity
	ldrb r0, [r2, #0x15]
	lsrs r0, r0, #3
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r3, #0
	ldrh r0, [r2, #0x2a]
	ands r0, r1
	cmp r1, r0
	bne _080797E0
	movs r3, #1
_080797E0:
	adds r0, r3, #0
	pop {pc}
	.align 2, 0
_080797E4: .4byte gUnk_0811C110
_080797E8: .4byte gPlayerEntity

	thumb_func_start sub_080797EC
sub_080797EC: @ 0x080797EC
	push {r4, r5, lr}
	ldr r4, _08079804 @ =gPlayerState
	ldr r1, [r4, #0x30]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0807985C
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _0807980C
	ldr r5, _08079808 @ =0x00000934
	b _0807991E
	.align 2, 0
_08079804: .4byte gPlayerState
_08079808: .4byte 0x00000934
_0807980C:
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _08079818
	movs r5, #0x82
	lsls r5, r5, #3
	b _0807991E
_08079818:
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	bne _080798A0
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	movs r5, #0xa4
	lsls r5, r5, #2
	cmp r0, #0
	bne _0807991E
	movs r5, #0xb6
	lsls r5, r5, #1
	ldrb r1, [r4, #0x1b]
	movs r0, #0x48
	ands r0, r1
	cmp r0, #0
	bne _080798C2
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _080798CE
	adds r1, r4, #0
	adds r1, #0xa8
	ldrb r0, [r1]
	cmp r0, #0
	bne _08079852
	movs r0, #1
	strb r0, [r1]
_08079852:
	ldr r5, _08079858 @ =0x00000404
	b _0807991E
	.align 2, 0
_08079858: .4byte 0x00000404
_0807985C:
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	bne _0807992E
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _0807986E
	movs r5, #0xd2
	lsls r5, r5, #2
	b _0807991E
_0807986E:
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _0807987A
	movs r5, #0xa6
	lsls r5, r5, #2
	b _0807991E
_0807987A:
	movs r0, #0x80
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	beq _0807988A
	movs r5, #0xe2
	lsls r5, r5, #3
	b _0807991E
_0807988A:
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _08079896
	movs r5, #0xb0
	lsls r5, r5, #1
	b _0807991E
_08079896:
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _080798A6
_080798A0:
	movs r5, #0xa1
	lsls r5, r5, #2
	b _0807991E
_080798A6:
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	movs r5, #0xa4
	lsls r5, r5, #2
	cmp r0, #0
	bne _0807991E
	movs r5, #0xb6
	lsls r5, r5, #1
	ldrb r1, [r4, #0x1b]
	movs r0, #0x48
	ands r0, r1
	cmp r0, #0
	beq _080798C8
_080798C2:
	movs r0, #0x6c
	strb r0, [r4]
	b _0807992E
_080798C8:
	lsls r0, r1, #0x18
	cmp r0, #0
	beq _080798FC
_080798CE:
	movs r0, #0
	bl sub_080793E4
	cmp r0, #0
	beq _0807991E
	bl sub_0807A500
	ldr r1, _080798F8 @ =gPlayerEntity
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002E0
	cmp r0, #0xff
	beq _0807991E
	ldrb r1, [r4, #0x1b]
	movs r0, #0xf7
	ands r0, r1
	strb r0, [r4, #0x1b]
	movs r5, #0xb8
	lsls r5, r5, #1
	b _0807991E
	.align 2, 0
_080798F8: .4byte gPlayerEntity
_080798FC:
	adds r1, r4, #0
	adds r1, #0xa8
	ldrb r0, [r1]
	cmp r0, #0
	bne _0807990A
	movs r0, #1
	strb r0, [r1]
_0807990A:
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	movs r5, #0x82
	lsls r5, r5, #1
	cmp r0, #0
	beq _0807991E
	movs r5, #0xc1
	lsls r5, r5, #3
_0807991E:
	ldr r0, _08079930 @ =gPlayerState
	strh r5, [r0, #8]
	ldrb r0, [r0, #3]
	cmp r0, #0
	bne _0807992E
	ldr r0, _08079934 @ =gPlayerEntity
	bl UpdateAnimationSingleFrame
_0807992E:
	pop {r4, r5, pc}
	.align 2, 0
_08079930: .4byte gPlayerState
_08079934: .4byte gPlayerEntity

	thumb_func_start sub_08079938
sub_08079938: @ 0x08079938
	push {r4, lr}
	ldr r3, _08079954 @ =gPlayerState
	ldr r2, [r3, #0x30]
	movs r0, #8
	ands r0, r2
	mov ip, r3
	cmp r0, #0
	beq _080799E4
	ldrb r0, [r3, #5]
	cmp r0, #0
	beq _0807995C
	ldr r4, _08079958 @ =0x0000092C
	b _08079AD8
	.align 2, 0
_08079954: .4byte gPlayerState
_08079958: .4byte 0x0000092C
_0807995C:
	mov r0, ip
	adds r0, #0x3d
	mov r3, ip
	ldrb r1, [r3, #0x1c]
	ldrb r0, [r0]
	orrs r0, r1
	cmp r0, #0
	beq _0807996E
	b _08079B14
_0807996E:
	movs r0, #0x80
	lsls r0, r0, #0x12
	ands r0, r2
	cmp r0, #0
	bne _08079A1E
	mov r4, ip
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _08079988
	ldr r4, _08079984 @ =0x00000414
	b _08079AD8
	.align 2, 0
_08079984: .4byte 0x00000414
_08079988:
	mov r0, ip
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	bne _08079A5C
	mov r0, ip
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _08079A6C
	mov r0, ip
	ldrb r1, [r0, #0x1b]
	movs r0, #0x48
	ands r0, r1
	cmp r0, #0
	beq _080799AA
	b _08079B14
_080799AA:
	cmp r1, #0
	beq _080799B0
	b _08079AA4
_080799B0:
	mov r1, ip
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _080799BA
	b _08079B14
_080799BA:
	movs r0, #0x20
	ands r2, r0
	cmp r2, #0
	beq _080799D0
	ldr r0, _080799D8 @ =gArea
	ldrb r0, [r0, #0x17]
	cmp r0, #4
	bne _080799CC
	b _08079AD4
_080799CC:
	cmp r0, #5
	bne _080799DC
_080799D0:
	movs r4, #0x80
	lsls r4, r4, #3
	b _08079AD8
	.align 2, 0
_080799D8: .4byte gArea
_080799DC:
	ldr r4, _080799E0 @ =0x000002C2
	b _08079AD8
	.align 2, 0
_080799E0: .4byte 0x000002C2
_080799E4:
	mov r4, ip
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _080799F2
	movs r4, #0xd4
	lsls r4, r4, #2
	b _08079AD8
_080799F2:
	mov r0, ip
	adds r0, #0x3d
	mov r4, ip
	ldrb r1, [r4, #0x1c]
	ldrb r0, [r0]
	orrs r0, r1
	cmp r0, #0
	beq _08079A04
	b _08079B14
_08079A04:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _08079A14
	movs r4, #0x8b
	lsls r4, r4, #4
	b _08079AD8
_08079A14:
	movs r0, #0x80
	lsls r0, r0, #0x12
	ands r0, r2
	cmp r0, #0
	beq _08079A24
_08079A1E:
	movs r4, #0x81
	lsls r4, r4, #4
	b _08079AD8
_08079A24:
	mov r1, ip
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	beq _08079A32
	movs r4, #0xa6
	lsls r4, r4, #2
	b _08079AD8
_08079A32:
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r2
	cmp r0, #0
	beq _08079A44
	ldr r4, _08079A40 @ =0x0000070C
	b _08079AD8
	.align 2, 0
_08079A40: .4byte 0x0000070C
_08079A44:
	mov r4, ip
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _08079A52
	movs r4, #0xb2
	lsls r4, r4, #1
	b _08079AD8
_08079A52:
	mov r0, ip
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _08079A62
_08079A5C:
	movs r4, #0xa0
	lsls r4, r4, #2
	b _08079AD8
_08079A62:
	mov r0, ip
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _08079A72
_08079A6C:
	movs r4, #0xa3
	lsls r4, r4, #2
	b _08079AD8
_08079A72:
	mov r0, ip
	ldrb r1, [r0, #0x1b]
	movs r0, #0x48
	ands r0, r1
	cmp r0, #0
	bne _08079B14
	movs r0, #0x20
	ands r2, r0
	cmp r2, #0
	beq _08079AA0
	ldr r0, _08079A98 @ =gArea
	ldrb r0, [r0, #0x17]
	ldr r4, _08079A9C @ =0x000002C2
	cmp r0, #4
	bne _08079AD8
	movs r4, #0xa6
	lsls r4, r4, #3
	b _08079AD8
	.align 2, 0
_08079A98: .4byte gArea
_08079A9C: .4byte 0x000002C2
_08079AA0:
	cmp r1, #0
	beq _08079AAA
_08079AA4:
	movs r4, #0xb4
	lsls r4, r4, #1
	b _08079AD8
_08079AAA:
	ldrb r0, [r3, #4]
	cmp r0, #0
	bne _08079B14
	ldr r0, [r3, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08079AD4
	ldr r0, _08079ACC @ =gUnk_03000B80
	adds r0, #0x63
	ldrb r0, [r0]
	cmp r0, #0
	bne _08079B14
	ldr r4, _08079AD0 @ =0x00000604
	b _08079AD8
	.align 2, 0
_08079ACC: .4byte gUnk_03000B80
_08079AD0: .4byte 0x00000604
_08079AD4:
	movs r4, #0x80
	lsls r4, r4, #1
_08079AD8:
	mov r1, ip
	strh r4, [r1, #8]
	ldrb r0, [r1, #5]
	cmp r0, #0
	bne _08079B10
	movs r3, #0
	movs r2, #0
	ldr r1, _08079B18 @ =gUnk_03000B80
_08079AE8:
	ldrb r0, [r1, #0xf]
	cmp r0, r3
	bls _08079AF0
	adds r3, r0, #0
_08079AF0:
	adds r1, #0x1c
	adds r2, #1
	cmp r2, #3
	bls _08079AE8
	mov r2, ip
	ldrb r0, [r2, #0xe]
	cmp r0, r3
	blo _08079B14
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r2]
	cmp r0, r3
	bne _08079B10
	ldr r0, _08079B1C @ =gPlayerEntity
	bl UpdateAnimationSingleFrame
_08079B10:
	ldr r0, _08079B20 @ =gPlayerState
	strb r4, [r0]
_08079B14:
	pop {r4, pc}
	.align 2, 0
_08079B18: .4byte gUnk_03000B80
_08079B1C: .4byte gPlayerEntity
_08079B20: .4byte gPlayerState

	thumb_func_start sub_08079B24
sub_08079B24: @ 0x08079B24
	push {r4, r5, lr}
	ldr r2, _08079B60 @ =gPlayerEntity
	ldrb r0, [r2, #0xc]
	cmp r0, #0xa
	beq _08079BD4
	adds r0, r2, #0
	adds r0, #0x45
	ldrb r3, [r0]
	cmp r3, #0
	bne _08079BD4
	ldr r4, _08079B64 @ =gPlayerState
	ldr r1, [r4, #0x30]
	ldr r0, _08079B68 @ =0xFEFFFFFF
	ands r1, r0
	str r1, [r4, #0x30]
	adds r0, r2, #0
	adds r0, #0x42
	strb r3, [r0]
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _08079BD4
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _08079B6C
	bl sub_08079458
	b _08079BC0
	.align 2, 0
_08079B60: .4byte gPlayerEntity
_08079B64: .4byte gPlayerState
_08079B68: .4byte 0xFEFFFFFF
_08079B6C:
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _08079BC0
	movs r3, #0x80
	lsls r3, r3, #5
	ands r3, r1
	cmp r3, #0
	bne _08079BC0
	movs r5, #0x36
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _08079BA6
	ldr r0, [r2, #0x20]
	cmp r0, #0
	ble _08079B8C
	str r3, [r2, #0x20]
_08079B8C:
	ldrb r1, [r4, #2]
	movs r3, #0x41
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08079BD4
	strb r3, [r4, #2]
	movs r0, #0xff
	strb r0, [r2, #0x15]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0xd]
	b _08079BD4
_08079BA6:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _08079BC0
	bl sub_08079D48
	cmp r0, #0
	bne _08079BC0
	ldrb r0, [r4, #0xa]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #0xa]
	b _08079BD4
_08079BC0:
	ldr r2, _08079BD0 @ =gPlayerEntity
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	movs r0, #0
	b _08079BD6
	.align 2, 0
_08079BD0: .4byte gPlayerEntity
_08079BD4:
	movs r0, #1
_08079BD6:
	pop {r4, r5, pc}

	thumb_func_start sub_08079BD8
sub_08079BD8: @ 0x08079BD8
	push {r4, r5, lr}
	ldr r4, _08079C2C @ =gPlayerEntity
	ldr r1, [r4, #0x2c]
	str r1, [r0, #0x2c]
	ldr r1, [r4, #0x30]
	str r1, [r0, #0x30]
	ldr r1, [r4, #0x34]
	str r1, [r0, #0x34]
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r2, [r1]
	adds r1, r0, #0
	adds r1, #0x38
	strb r2, [r1]
	ldrb r3, [r4, #0x19]
	lsrs r3, r3, #6
	lsls r3, r3, #6
	ldrb r5, [r0, #0x19]
	movs r2, #0x3f
	adds r1, r2, #0
	ands r1, r5
	orrs r1, r3
	strb r1, [r0, #0x19]
	ldrb r1, [r4, #0x1b]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r3, [r0, #0x1b]
	ands r2, r3
	orrs r2, r1
	strb r2, [r0, #0x1b]
	adds r4, #0x29
	ldrb r2, [r4]
	lsls r2, r2, #0x1d
	adds r0, #0x29
	lsrs r2, r2, #0x1d
	ldrb r3, [r0]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_08079C2C: .4byte gPlayerEntity

	thumb_func_start sub_08079C30
sub_08079C30: @ 0x08079C30
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, _08079C68 @ =gPlayerState
	ldrb r1, [r0, #0x14]
	adds r7, r0, #0
	cmp r1, #0
	beq _08079C44
	b _08079D40
_08079C44:
	ldr r1, [r7, #0x30]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08079D40
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	bne _08079D36
	ldrb r0, [r7, #0x13]
	subs r0, #0xd
	cmp r0, #0x1d
	bhi _08079CE8
	lsls r0, r0, #2
	ldr r1, _08079C6C @ =_08079C70
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08079C68: .4byte gPlayerState
_08079C6C: .4byte _08079C70
_08079C70: @ jump table
	.4byte _08079D36 @ case 0
	.4byte _08079D36 @ case 1
	.4byte _08079D36 @ case 2
	.4byte _08079D36 @ case 3
	.4byte _08079CE8 @ case 4
	.4byte _08079CE8 @ case 5
	.4byte _08079CE8 @ case 6
	.4byte _08079D36 @ case 7
	.4byte _08079CE8 @ case 8
	.4byte _08079CE8 @ case 9
	.4byte _08079D36 @ case 10
	.4byte _08079CE8 @ case 11
	.4byte _08079CE8 @ case 12
	.4byte _08079CE8 @ case 13
	.4byte _08079CE8 @ case 14
	.4byte _08079CE8 @ case 15
	.4byte _08079CE8 @ case 16
	.4byte _08079CE8 @ case 17
	.4byte _08079CE8 @ case 18
	.4byte _08079CE8 @ case 19
	.4byte _08079CE8 @ case 20
	.4byte _08079CE8 @ case 21
	.4byte _08079CE8 @ case 22
	.4byte _08079CE8 @ case 23
	.4byte _08079CE8 @ case 24
	.4byte _08079CE8 @ case 25
	.4byte _08079CE8 @ case 26
	.4byte _08079CE8 @ case 27
	.4byte _08079CE8 @ case 28
	.4byte _08079D36 @ case 29
_08079CE8:
	mov r8, r7
	mov r0, r8
	ldrb r4, [r0, #0x12]
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r6, #0
	movs r1, #0
	bl sub_080002B4
	ldr r5, _08079D3C @ =gUnk_08007CAC
	adds r1, r5, #0
	bl sub_08007DD6
	cmp r4, r0
	bne _08079D40
	mov r0, r8
	ldrb r4, [r0, #0x12]
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	bl sub_080002B4
	adds r1, r5, #0
	bl sub_08007DD6
	cmp r4, r0
	bne _08079D40
	ldrb r4, [r7, #0x12]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r6, #0
	movs r2, #0
	bl sub_080002B4
	adds r1, r5, #0
	bl sub_08007DD6
	cmp r4, r0
	bne _08079D40
_08079D36:
	movs r0, #1
	b _08079D42
	.align 2, 0
_08079D3C: .4byte gUnk_08007CAC
_08079D40:
	movs r0, #0
_08079D42:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08079D48
sub_08079D48: @ 0x08079D48
	push {r4, lr}
	ldr r4, _08079D78 @ =gPlayerEntity
	adds r0, r4, #0
	bl sub_08079C30
	cmp r0, #0
	beq _08079D72
	bl sub_08008B22
	cmp r0, #0
	bne _08079D80
	adds r0, r4, #0
	bl sub_080002B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08079D7C @ =gUnk_0811C268
	bl sub_08007DD6
	cmp r0, #0
	bne _08079D80
_08079D72:
	movs r0, #1
	b _08079D82
	.align 2, 0
_08079D78: .4byte gPlayerEntity
_08079D7C: .4byte gUnk_0811C268
_08079D80:
	movs r0, #0
_08079D82:
	pop {r4, pc}

	thumb_func_start sub_08079D84
sub_08079D84: @ 0x08079D84
	push {lr}
	ldr r3, _08079DC0 @ =gPlayerEntity
	ldrb r0, [r3, #0xc]
	cmp r0, #1
	beq _08079D92
	cmp r0, #0x18
	bne _08079DBE
_08079D92:
	ldr r2, _08079DC4 @ =gPlayerState
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #0x9c
	strb r0, [r1]
	adds r1, #1
	movs r0, #2
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x3c
	strb r0, [r1]
	movs r0, #0xe
	strb r0, [r2, #0xc]
	adds r1, r3, #0
	adds r1, #0x3d
	movs r0, #0x7c
	strb r0, [r1]
	bl sub_08077B20
	ldr r0, _08079DC8 @ =0x00000193
	bl SoundReq
_08079DBE:
	pop {pc}
	.align 2, 0
_08079DC0: .4byte gPlayerEntity
_08079DC4: .4byte gPlayerState
_08079DC8: .4byte 0x00000193

	thumb_func_start sub_08079DCC
sub_08079DCC: @ 0x08079DCC
	push {lr}
	ldr r0, _08079DFC @ =gPlayerEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	bne _08079DF8
	ldr r3, _08079E00 @ =gPlayerState
	adds r1, r3, #0
	adds r1, #0x38
	movs r2, #0
	movs r0, #0xa0
	strb r0, [r1]
	adds r1, #1
	movs r0, #3
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x3a
	strb r2, [r0]
	movs r0, #0xe
	strb r0, [r3, #0xc]
	ldr r0, _08079E04 @ =0x00000193
	bl SoundReq
_08079DF8:
	pop {pc}
	.align 2, 0
_08079DFC: .4byte gPlayerEntity
_08079E00: .4byte gPlayerState
_08079E04: .4byte 0x00000193

	thumb_func_start sub_08079E08
sub_08079E08: @ 0x08079E08
	push {r4, lr}
	ldr r0, _08079E50 @ =gPlayerEntity
	ldrh r2, [r0, #0x24]
	movs r3, #0x24
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	beq _08079E2E
	ldr r0, _08079E54 @ =gPlayerState
	adds r0, #0x80
	ldrh r0, [r0]
	adds r0, r2, r0
	strh r0, [r4, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	bgt _08079E2E
	movs r0, #0x20
	strh r0, [r4, #0x24]
_08079E2E:
	adds r2, r4, #0
	ldrb r1, [r2, #0x15]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08079E40
	ldrb r0, [r2, #0x15]
	bl sub_08079E90
_08079E40:
	adds r0, r4, #0
	bl sub_0800857C
	ldrb r0, [r4, #0x15]
	bl sub_0807A5B8
	pop {r4, pc}
	.align 2, 0
_08079E50: .4byte gPlayerEntity
_08079E54: .4byte gPlayerState

	thumb_func_start sub_08079E58
sub_08079E58: @ 0x08079E58
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r5, _08079E8C @ =gPlayerEntity
	ldrb r1, [r5, #0x15]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08079E70
	adds r0, r4, #0
	bl sub_08079E90
_08079E70:
	adds r0, r5, #0
	bl sub_080085B0
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r4, #0x18
	lsrs r2, r2, #0x18
	adds r0, r5, #0
	bl sub_080027EA
	adds r0, r4, #0
	bl sub_0807A5B8
	pop {r4, r5, r6, pc}
	.align 2, 0
_08079E8C: .4byte gPlayerEntity

	thumb_func_start sub_08079E90
sub_08079E90: @ 0x08079E90
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	ldr r1, _08079EBC @ =gPlayerEntity
	ldrb r2, [r1, #0x15]
	movs r0, #8
	ands r0, r2
	adds r7, r1, #0
	cmp r0, #0
	beq _08079ECA
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08079EC0
	ldr r0, [r7, #0x48]
	ldrb r0, [r0, #2]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	b _08079EC4
	.align 2, 0
_08079EBC: .4byte gPlayerEntity
_08079EC0:
	ldr r0, [r7, #0x48]
	ldrb r5, [r0, #2]
_08079EC4:
	ldr r0, [r7, #0x48]
	ldrb r4, [r0, #3]
	b _08079EDE
_08079ECA:
	ldr r0, [r7, #0x48]
	ldrb r5, [r0, #4]
	cmp r2, #0
	beq _08079ED6
	ldrb r4, [r0, #5]
	b _08079EDE
_08079ED6:
	ldrb r0, [r0, #5]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08079EDE:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r4, #0x10
	asrs r6, r0, #0x10
	adds r0, r7, #0
	mov r1, r8
	adds r2, r6, #0
	bl sub_080002CC
	adds r1, r0, #0
	mov r0, sb
	bl sub_08079F48
	cmp r0, #0
	bne _08079F3C
	ldrb r1, [r7, #0x15]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08079F10
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _08079F18
_08079F10:
	mov r1, r8
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08079F18:
	ldr r0, _08079F38 @ =gPlayerEntity
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	bl sub_080002CC
	adds r1, r0, #0
	mov r0, sb
	bl sub_08079F48
	cmp r0, #0
	bne _08079F3C
	movs r0, #0
	b _08079F3E
	.align 2, 0
_08079F38: .4byte gPlayerEntity
_08079F3C:
	movs r0, #1
_08079F3E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08079F48
sub_08079F48: @ 0x08079F48
	push {lr}
	ldr r3, _08079F60 @ =gUnk_0811C118
	lsrs r2, r0, #2
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, r1
	bne _08079F68
	ldr r0, _08079F64 @ =gPlayerEntity
	ldrb r1, [r0, #0x15]
	adds r1, #4
	b _08079F7C
	.align 2, 0
_08079F60: .4byte gUnk_0811C118
_08079F64: .4byte gPlayerEntity
_08079F68:
	adds r0, r2, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, r1
	beq _08079F76
	movs r0, #0
	b _08079F84
_08079F76:
	ldr r0, _08079F88 @ =gPlayerEntity
	ldrb r1, [r0, #0x15]
	subs r1, #4
_08079F7C:
	movs r2, #0x1f
	ands r1, r2
	strb r1, [r0, #0x15]
	movs r0, #1
_08079F84:
	pop {pc}
	.align 2, 0
_08079F88: .4byte gPlayerEntity

	thumb_func_start sub_08079F8C
sub_08079F8C: @ 0x08079F8C
	push {lr}
	ldr r2, _08079FB4 @ =gPlayerState
	ldr r0, [r2, #0x30]
	ldr r1, _08079FB8 @ =0x22189B75
	ands r0, r1
	cmp r0, #0
	bne _08079FB0
	adds r0, r2, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08079FB0
	ldr r0, _08079FBC @ =gPlayerEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #3
	beq _08079FB0
	cmp r0, #0xb
	bne _08079FC0
_08079FB0:
	movs r0, #0
	b _08079FC2
	.align 2, 0
_08079FB4: .4byte gPlayerState
_08079FB8: .4byte 0x22189B75
_08079FBC: .4byte gPlayerEntity
_08079FC0:
	movs r0, #1
_08079FC2:
	pop {pc}

	thumb_func_start sub_08079FC4
sub_08079FC4: @ 0x08079FC4
	push {lr}
	adds r1, r0, #0
	ldr r0, _08079FD0 @ =gPlayerEntity
	bl sub_08079FD4
	pop {pc}
	.align 2, 0
_08079FD0: .4byte gPlayerEntity

	thumb_func_start sub_08079FD4
sub_08079FD4: @ 0x08079FD4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0x2e
	ldrsh r2, [r5, r0]
	ldr r3, _0807A008 @ =gRoomControls
	ldrh r0, [r3, #6]
	subs r2, r2, r0
	asrs r2, r2, #4
	movs r4, #0x3f
	ands r2, r4
	movs r6, #0x32
	ldrsh r0, [r5, r6]
	ldrh r3, [r3, #8]
	subs r0, r0, r3
	asrs r0, r0, #4
	ands r0, r4
	lsls r0, r0, #6
	orrs r2, r0
	lsls r2, r2, #1
	ldr r6, _0807A00C @ =gUnk_02027EB4
	cmp r1, #2
	bne _0807A004
	ldr r6, _0807A010 @ =gUnk_0200D654
_0807A004:
	movs r4, #0
	b _0807A028
	.align 2, 0
_0807A008: .4byte gRoomControls
_0807A00C: .4byte gUnk_02027EB4
_0807A010: .4byte gUnk_0200D654
_0807A014:
	cmp r1, #0x23
	beq _0807A028
	cmp r1, #0x27
	beq _0807A028
	ldr r0, _0807A04C @ =gUnk_080082DC
	subs r1, #0x10
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0807A046
_0807A028:
	adds r4, #1
	adds r0, r5, #0
	mov r1, sp
	bl sub_08004202
	adds r2, r0, #0
	lsrs r0, r2, #1
	adds r0, r6, r0
	ldrb r1, [r0]
	cmp r1, #0xe
	bls _0807A046
	cmp r1, #0xf
	bls _0807A028
	cmp r1, #0x1d
	bne _0807A014
_0807A046:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807A04C: .4byte gUnk_080082DC

	thumb_func_start sub_0807A050
sub_0807A050: @ 0x0807A050
	push {lr}
	ldr r3, _0807A088 @ =gPlayerState
	ldrb r2, [r3, #0xf]
	cmp r2, #0
	beq _0807A06A
	ldr r0, _0807A08C @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0807A06A
	subs r0, r2, #1
	strb r0, [r3, #0xf]
_0807A06A:
	movs r0, #0
	bl sub_0807A094
	adds r1, r0, #0
	ldr r0, _0807A088 @ =gPlayerState
	adds r0, #0x83
	ldrb r2, [r0]
	cmp r1, r2
	beq _0807A084
	strb r1, [r0]
	ldr r0, _0807A090 @ =gPlayerEntity
	bl sub_0801D2B4
_0807A084:
	pop {pc}
	.align 2, 0
_0807A088: .4byte gPlayerState
_0807A08C: .4byte gTextBox
_0807A090: .4byte gPlayerEntity

	thumb_func_start sub_0807A094
sub_0807A094: @ 0x0807A094
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r2, #0x16
	ldr r0, _0807A0AC @ =gPlayerState
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	beq _0807A0B0
	movs r2, #0x1b
	cmp r0, #0x78
	bls _0807A104
	movs r2, #0x1a
	b _0807A104
	.align 2, 0
_0807A0AC: .4byte gPlayerState
_0807A0B0:
	ldr r0, _0807A0F0 @ =gSave
	adds r1, r0, #0
	adds r1, #0xb2
	ldrb r1, [r1]
	adds r5, r0, #0
	cmp r1, #0
	beq _0807A104
	movs r4, #1
	cmp r3, #0
	bne _0807A0D6
	adds r0, #0xc4
	ldrh r1, [r0]
	cmp r1, #0xb3
	bhi _0807A0D6
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0807A0D6
	movs r4, #0
_0807A0D6:
	cmp r4, #0
	beq _0807A104
	adds r0, r5, #0
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #0x30
	beq _0807A102
	cmp r0, #0x30
	bgt _0807A0F4
	cmp r0, #0x2f
	beq _0807A0FA
	b _0807A102
	.align 2, 0
_0807A0F0: .4byte gSave
_0807A0F4:
	cmp r0, #0x31
	beq _0807A0FE
	b _0807A102
_0807A0FA:
	movs r2, #0x18
	b _0807A104
_0807A0FE:
	movs r2, #0x17
	b _0807A104
_0807A102:
	movs r2, #0x19
_0807A104:
	adds r0, r2, #0
	pop {r4, r5, pc}

	thumb_func_start sub_0807A108
sub_0807A108: @ 0x0807A108
	push {lr}
	ldr r1, _0807A148 @ =gUnk_03004040
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r2, _0807A14C @ =gPlayerState
	ldr r0, [r2, #0x30]
	ldr r1, _0807A150 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r2, #0x30]
	ldr r0, _0807A154 @ =gPlayerEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #0x17
	bne _0807A130
	adds r0, r2, #0
	adds r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #4
	beq _0807A144
_0807A130:
	adds r1, r2, #0
	adds r1, #0xa0
	ldrb r0, [r1]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0807A144
	movs r0, #1
	strb r0, [r1]
_0807A144:
	pop {pc}
	.align 2, 0
_0807A148: .4byte gUnk_03004040
_0807A14C: .4byte gPlayerState
_0807A150: .4byte 0xFFBFFFFF
_0807A154: .4byte gPlayerEntity

	thumb_func_start sub_0807A158
sub_0807A158: @ 0x0807A158
	push {r4, lr}
	ldr r4, _0807A178 @ =gSave
	adds r0, r4, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	bl sub_0805449C
	cmp r0, #0
	bne _0807A17C
	adds r0, r4, #0
	adds r0, #0xb5
	ldrb r0, [r0]
	bl sub_0805449C
	b _0807A17E
	.align 2, 0
_0807A178: .4byte gSave
_0807A17C:
	movs r0, #1
_0807A17E:
	pop {r4, pc}

	thumb_func_start sub_0807A180
sub_0807A180: @ 0x0807A180
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x88
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r3, _0807A1B4 @ =0xFFFC0000
	mov r1, sp
	movs r2, #0
	bl PositionRelative
	mov r1, sp
	ldrb r0, [r4, #0x14]
	strb r0, [r1, #0x14]
	mov r0, sp
	adds r1, r5, #0
	adds r2, r6, #0
	mov r3, r8
	bl sub_08003FDE
	add sp, #0x88
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807A1B4: .4byte 0xFFFC0000

	thumb_func_start sub_0807A1B8
sub_0807A1B8: @ 0x0807A1B8
	push {r4, lr}
	ldr r4, _0807A1DC @ =gPlayerEntity
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_0807A1E8
	ldr r1, _0807A1E0 @ =gPlayerState
	strb r0, [r1, #0x12]
	ldr r2, _0807A1E4 @ =gUnk_0811C120
	ldrb r0, [r1, #0x12]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_0807A1DC: .4byte gPlayerEntity
_0807A1E0: .4byte gPlayerState
_0807A1E4: .4byte gUnk_0811C120

	thumb_func_start sub_0807A1E8
sub_0807A1E8: @ 0x0807A1E8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	adds r0, r0, r6
	ldr r2, _0807A288 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r1, r0, r1
	lsrs r4, r1, #4
	movs r3, #0x3f
	ands r4, r3
	movs r7, #0x32
	ldrsh r1, [r5, r7]
	add r1, r8
	ldrh r2, [r2, #8]
	subs r2, r1, r2
	asrs r2, r2, #4
	ands r2, r3
	lsls r2, r2, #6
	orrs r4, r2
	ldr r2, _0807A28C @ =gPlayerEntity
	adds r2, #0x38
	ldrb r2, [r2]
	bl GetTileTypeByPos
	adds r2, r0, #0
	ldr r1, _0807A290 @ =gPlayerState
	ldrh r0, [r1, #0x24]
	cmp r2, r0
	beq _0807A23A
	adds r3, r1, #0
	adds r3, #0x37
	movs r0, #0
	strb r0, [r3]
	ldrh r7, [r1, #0x24]
	cmp r2, r7
	bne _0807A242
_0807A23A:
	adds r3, r1, #0
	ldrh r0, [r3, #0x22]
	cmp r4, r0
	beq _0807A24E
_0807A242:
	ldr r0, _0807A290 @ =gPlayerState
	movs r1, #0
	strh r4, [r0, #0x22]
	strh r2, [r0, #0x24]
	strb r1, [r0, #0x11]
	adds r3, r0, #0
_0807A24E:
	adds r2, r3, #0
	ldrb r1, [r2, #0x11]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _0807A25C
	adds r0, r1, #1
	strb r0, [r2, #0x11]
_0807A25C:
	adds r2, #0x37
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _0807A26A
	adds r0, r1, #1
	strb r0, [r2]
_0807A26A:
	ldrb r0, [r3, #0x12]
	strb r0, [r3, #0x13]
	adds r0, r5, #0
	adds r1, r6, #0
	mov r2, r8
	bl sub_080002B4
	adds r2, r0, #0
	ldr r1, _0807A294 @ =gUnk_08007CAC
	bl sub_08007DD6
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807A288: .4byte gRoomControls
_0807A28C: .4byte gPlayerEntity
_0807A290: .4byte gPlayerState
_0807A294: .4byte gUnk_08007CAC

	thumb_func_start sub_0807A298
sub_0807A298: @ 0x0807A298
	movs r1, #0
	strb r1, [r0, #0xb]
	ldrb r1, [r0, #0x18]
	movs r2, #3
	orrs r1, r2
	strb r1, [r0, #0x18]
	ldr r2, _0807A2B4 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x30]
	bx lr
	.align 2, 0
_0807A2B4: .4byte gPlayerState

	thumb_func_start sub_0807A2B8
sub_0807A2B8: @ 0x0807A2B8
	push {lr}
	bl sub_08008B22
	cmp r0, #0
	beq _0807A2C6
	movs r0, #1
	b _0807A2EC
_0807A2C6:
	ldr r0, _0807A2F0 @ =gPlayerState
	ldrb r1, [r0, #2]
	movs r0, #0xc8
	ands r0, r1
	cmp r0, #0
	bne _0807A2EA
	ldr r1, _0807A2F4 @ =gPlayerEntity
	adds r0, r1, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	beq _0807A2EA
	adds r0, r1, #0
	movs r1, #0x44
	movs r2, #0
	movs r3, #0
	bl CreateObjectWithParent
_0807A2EA:
	movs r0, #0
_0807A2EC:
	pop {pc}
	.align 2, 0
_0807A2F0: .4byte gPlayerState
_0807A2F4: .4byte gPlayerEntity

	thumb_func_start sub_0807A2F8
sub_0807A2F8: @ 0x0807A2F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0807A364 @ =gRoomControls
	mov r8, r0
	ldrb r0, [r0, #4]
	cmp r0, #8
	bne _0807A312
	b _0807A4F2
_0807A312:
	bl sub_08079778
	orrs r0, r4
	cmp r0, #0
	bne _0807A31E
	b _0807A4F2
_0807A31E:
	ldr r7, _0807A368 @ =gPlayerEntity
	ldrb r1, [r7, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0807A36C
	movs r1, #0x2e
	ldrsh r2, [r7, r1]
	mov r6, r8
	ldrh r0, [r6, #6]
	subs r2, r2, r0
	asrs r2, r2, #4
	movs r3, #0x3f
	ands r2, r3
	movs r0, #0x32
	ldrsh r1, [r7, r0]
	ldr r0, [r7, #0x48]
	ldrb r5, [r0, #5]
	adds r0, r1, r5
	ldrh r4, [r6, #8]
	subs r0, r0, r4
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r0, r2
	lsls r7, r0, #1
	subs r1, r1, r5
	subs r1, r1, r4
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r2, r1
	lsls r6, r2, #1
	b _0807A3A2
	.align 2, 0
_0807A364: .4byte gRoomControls
_0807A368: .4byte gPlayerEntity
_0807A36C:
	movs r1, #0x2e
	ldrsh r3, [r7, r1]
	ldr r0, [r7, #0x48]
	ldrb r6, [r0, #2]
	adds r1, r3, r6
	mov r2, r8
	ldrh r5, [r2, #6]
	subs r1, r1, r5
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r2, #0x32
	ldrsh r0, [r7, r2]
	mov r7, r8
	ldrh r2, [r7, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r4
	lsls r0, r0, #6
	orrs r1, r0
	lsls r7, r1, #1
	subs r3, r3, r6
	subs r3, r3, r5
	asrs r3, r3, #4
	ands r3, r4
	orrs r3, r0
	lsls r6, r3, #1
_0807A3A2:
	movs r0, #0
	mov sb, r0
	ldr r1, _0807A3F4 @ =gPlayerEntity
	mov sl, r1
_0807A3AA:
	movs r2, #0
	mov r8, r2
	mov r0, sl
	mov r1, sp
	adds r2, r7, #0
	bl sub_08004202
	adds r7, r0, #0
	lsrs r4, r7, #1
	adds r0, r4, #0
	movs r1, #1
	bl sub_080002E0
	cmp r0, #0
	beq _0807A3FC
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	mov r1, sl
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002C8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r2, sl
	ldrb r1, [r2, #0x14]
	lsrs r1, r1, #1
	lsls r1, r1, #2
	ldr r2, _0807A3F8 @ =gUnk_0811C1D8
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_08007DD6
	cmp r0, #0
	beq _0807A468
	b _0807A400
	.align 2, 0
_0807A3F4: .4byte gPlayerEntity
_0807A3F8: .4byte gUnk_0811C1D8
_0807A3FC:
	movs r0, #1
	mov r8, r0
_0807A400:
	ldr r5, _0807A444 @ =gPlayerEntity
	adds r0, r5, #0
	mov r1, sp
	adds r2, r6, #0
	bl sub_08004202
	adds r6, r0, #0
	lsrs r4, r6, #1
	adds r0, r4, #0
	movs r1, #1
	bl sub_080002E0
	cmp r0, #0
	beq _0807A44C
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002C8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r5, #0x14]
	lsrs r1, r1, #1
	lsls r1, r1, #2
	ldr r2, _0807A448 @ =gUnk_0811C1D8
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_08007DD6
	cmp r0, #0
	beq _0807A468
	b _0807A450
	.align 2, 0
_0807A444: .4byte gPlayerEntity
_0807A448: .4byte gUnk_0811C1D8
_0807A44C:
	movs r0, #1
	add r8, r0
_0807A450:
	mov r1, r8
	cmp r1, #2
	bne _0807A45E
	mov r2, sb
	cmp r2, #0
	bne _0807A46E
	b _0807A4F2
_0807A45E:
	movs r0, #1
	add sb, r0
	mov r1, sb
	cmp r1, #1
	bls _0807A3AA
_0807A468:
	mov r2, sb
	cmp r2, #0
	beq _0807A4F2
_0807A46E:
	bl CheckIsDungeon
	cmp r0, #0
	beq _0807A4B0
	ldr r4, _0807A4AC @ =gPlayerEntity
	adds r0, r4, #0
	mov r1, sp
	adds r2, r7, #0
	bl sub_08004202
	adds r7, r0, #0
	lsrs r0, r7, #1
	movs r1, #2
	bl sub_080002E0
	cmp r0, #0
	bne _0807A4F2
	adds r0, r4, #0
	mov r1, sp
	adds r2, r6, #0
	bl sub_08004202
	adds r6, r0, #0
	lsrs r0, r6, #1
	movs r1, #2
_0807A4A0:
	bl sub_080002E0
	cmp r0, #0
	beq _0807A4EC
	b _0807A4F2
	.align 2, 0
_0807A4AC: .4byte gPlayerEntity
_0807A4B0:
	mov r0, sb
	cmp r0, #2
	bne _0807A4C2
	ldr r0, _0807A4E8 @ =gPlayerEntity
	mov r1, sp
	adds r2, r7, #0
	bl sub_08004202
	adds r7, r0, #0
_0807A4C2:
	lsrs r0, r7, #1
	movs r1, #1
	bl sub_080002E0
	cmp r0, #0
	bne _0807A4F2
	mov r1, sb
	cmp r1, #2
	bne _0807A4E0
	ldr r0, _0807A4E8 @ =gPlayerEntity
	mov r1, sp
	adds r2, r6, #0
	bl sub_08004202
	adds r6, r0, #0
_0807A4E0:
	lsrs r0, r6, #1
	movs r1, #1
	b _0807A4A0
	.align 2, 0
_0807A4E8: .4byte gPlayerEntity
_0807A4EC:
	mov r0, sb
	adds r0, #1
	b _0807A4F4
_0807A4F2:
	movs r0, #0
_0807A4F4:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0807A500
sub_0807A500: @ 0x0807A500
	push {r4, r5, r6, lr}
	ldr r6, _0807A518 @ =gPlayerEntity
	ldrb r0, [r6, #0x14]
	lsrs r0, r0, #1
	cmp r0, #1
	beq _0807A574
	cmp r0, #1
	bgt _0807A51C
	cmp r0, #0
	beq _0807A526
	b _0807A5B4
	.align 2, 0
_0807A518: .4byte gPlayerEntity
_0807A51C:
	cmp r0, #2
	beq _0807A554
	cmp r0, #3
	beq _0807A580
	b _0807A5B4
_0807A526:
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	ldr r5, _0807A550 @ =gRoomControls
	ldrh r1, [r5, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r4, #0x3f
	ands r0, r4
	movs r2, #0x32
	ldrsh r1, [r6, r2]
	ldr r3, [r6, #0x48]
	ldrb r2, [r3, #5]
	subs r1, r1, r2
	movs r2, #1
	ldrsb r2, [r3, r2]
	adds r1, r1, r2
	ldrh r2, [r5, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r4
	b _0807A5AA
	.align 2, 0
_0807A550: .4byte gRoomControls
_0807A554:
	movs r5, #0x2e
	ldrsh r0, [r6, r5]
	ldr r4, _0807A570 @ =gRoomControls
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	ldr r2, [r6, #0x48]
	movs r5, #0x32
	ldrsh r1, [r6, r5]
	ldrb r5, [r2, #5]
	adds r1, r1, r5
	b _0807A59A
	.align 2, 0
_0807A570: .4byte gRoomControls
_0807A574:
	ldr r2, [r6, #0x48]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	ldrb r5, [r2, #2]
	adds r0, r0, r5
	b _0807A58A
_0807A580:
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	ldr r2, [r6, #0x48]
	ldrb r1, [r2, #2]
	subs r0, r0, r1
_0807A58A:
	ldr r4, _0807A5B0 @ =gRoomControls
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r6, r5]
_0807A59A:
	ldrb r2, [r2, #1]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	ldrh r2, [r4, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
_0807A5AA:
	lsls r1, r1, #6
	orrs r0, r1
	b _0807A5B6
	.align 2, 0
_0807A5B0: .4byte gRoomControls
_0807A5B4:
	movs r0, #0
_0807A5B6:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0807A5B8
sub_0807A5B8: @ 0x0807A5B8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	ldr r2, _0807A5F8 @ =gPlayerState
	ldrb r3, [r2, #2]
	movs r4, #0x80
	adds r0, r4, #0
	ands r0, r3
	cmp r0, #0
	beq _0807A5D2
	b _0807A736
_0807A5D2:
	ldr r1, [r2, #0x30]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807A5DE
	b _0807A736
_0807A5DE:
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807A5EA
	b _0807A736
_0807A5EA:
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	beq _0807A600
	ldr r7, _0807A5FC @ =gUnk_0800833C
	b _0807A63A
	.align 2, 0
_0807A5F8: .4byte gPlayerState
_0807A5FC: .4byte gUnk_0800833C
_0807A600:
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r1, r0
	cmp r1, #0
	bne _0807A60E
	cmp r3, #0
	beq _0807A618
_0807A60E:
	ldr r7, _0807A614 @ =gUnk_0800845C
	b _0807A63A
	.align 2, 0
_0807A614: .4byte gUnk_0800845C
_0807A618:
	ldrb r0, [r2, #5]
	cmp r0, #0
	bne _0807A624
	ldrb r0, [r2, #0x1c]
	cmp r0, #0
	beq _0807A62C
_0807A624:
	ldr r7, _0807A628 @ =gUnk_080084BC
	b _0807A63A
	.align 2, 0
_0807A628: .4byte gUnk_080084BC
_0807A62C:
	adds r0, r2, #0
	adds r0, #0xaa
	ldrb r0, [r0]
	ldr r7, _0807A740 @ =gUnk_080082DC
	cmp r0, #0
	beq _0807A63A
	ldr r7, _0807A744 @ =gUnk_0800851C
_0807A63A:
	mov r0, sb
	cmp r0, #0
	beq _0807A6B8
	cmp r0, #0x10
	beq _0807A6B8
	ldr r6, _0807A748 @ =gPlayerEntity
	ldr r2, [r6, #0x48]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	ldrb r3, [r2, #2]
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	ldr r1, _0807A74C @ =gRoomControls
	mov r8, r1
	ldrh r1, [r1, #6]
	subs r5, r0, r1
	movs r3, #0x32
	ldrsh r0, [r6, r3]
	movs r1, #1
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	mov r2, r8
	ldrh r1, [r2, #8]
	subs r4, r0, r1
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl sub_080086B4
	cmp r0, #0
	beq _0807A688
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	movs r3, #1
	bl sub_0807A750
_0807A688:
	movs r3, #0x2e
	ldrsh r1, [r6, r3]
	ldr r2, [r6, #0x48]
	ldrb r0, [r2, #2]
	subs r1, r1, r0
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	mov r2, r8
	ldrh r0, [r2, #6]
	subs r5, r1, r0
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl sub_080086B4
	cmp r0, #0
	beq _0807A6B8
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	movs r3, #3
	bl sub_0807A750
_0807A6B8:
	mov r3, sb
	cmp r3, #8
	beq _0807A736
	cmp r3, #0x18
	beq _0807A736
	ldr r6, _0807A748 @ =gPlayerEntity
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	ldr r2, [r6, #0x48]
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	ldr r3, _0807A74C @ =gRoomControls
	mov r8, r3
	ldrh r0, [r3, #6]
	subs r5, r1, r0
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	ldrb r3, [r2, #5]
	adds r0, r0, r3
	movs r1, #1
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	mov r2, r8
	ldrh r1, [r2, #8]
	subs r4, r0, r1
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl sub_080086B4
	cmp r0, #0
	beq _0807A706
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	movs r3, #2
	bl sub_0807A750
_0807A706:
	movs r3, #0x32
	ldrsh r1, [r6, r3]
	ldr r2, [r6, #0x48]
	ldrb r0, [r2, #5]
	subs r1, r1, r0
	movs r0, #1
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	mov r2, r8
	ldrh r0, [r2, #8]
	subs r4, r1, r0
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl sub_080086B4
	cmp r0, #0
	beq _0807A736
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	movs r3, #0
	bl sub_0807A750
_0807A736:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807A740: .4byte gUnk_080082DC
_0807A744: .4byte gUnk_0800851C
_0807A748: .4byte gPlayerEntity
_0807A74C: .4byte gRoomControls

	thumb_func_start sub_0807A750
sub_0807A750: @ 0x0807A750
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	bne _0807A76C
	movs r4, #0xf
	ands r4, r6
	b _0807A770
_0807A76C:
	movs r4, #0xf
	ands r4, r7
_0807A770:
	cmp r4, #0
	bne _0807A776
	b _0807A88E
_0807A776:
	cmp r4, #0xf
	bne _0807A77C
	b _0807A88E
_0807A77C:
	lsrs r0, r7, #4
	movs r2, #0x3f
	ands r0, r2
	lsrs r1, r6, #4
	ands r1, r2
	lsls r1, r1, #6
	orrs r0, r1
	ldr r1, _0807A7A8 @ =gPlayerEntity
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002E0
	adds r1, r0, #0
	cmp r1, #0xf
	bls _0807A7AE
	cmp r1, #0xff
	beq _0807A7AC
	mov r2, r8
	adds r0, r1, r2
	subs r0, #0x10
	ldrb r1, [r0]
	b _0807A7AE
	.align 2, 0
_0807A7A8: .4byte gPlayerEntity
_0807A7AC:
	movs r1, #0xf
_0807A7AE:
	ldr r0, _0807A7D8 @ =gUnk_0800823C
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	bne _0807A824
	movs r0, #0xf
	ands r0, r7
	movs r2, #0x80
	lsls r2, r2, #8
	asrs r2, r0
	cmp r5, #0
	bne _0807A7F4
	ldr r3, _0807A7DC @ =gPlayerEntity
	cmp r4, #0xe
	bgt _0807A7F0
	lsls r0, r4, #1
	adds r1, r0, r1
	b _0807A7E8
	.align 2, 0
_0807A7D8: .4byte gUnk_0800823C
_0807A7DC: .4byte gPlayerEntity
_0807A7E0:
	adds r1, #2
	adds r4, #1
	cmp r4, #0xe
	bgt _0807A7F0
_0807A7E8:
	ldrh r0, [r1]
	ands r0, r2
	cmp r0, #0
	bne _0807A7E0
_0807A7F0:
	subs r4, #1
	b _0807A816
_0807A7F4:
	ldr r3, _0807A800 @ =gPlayerEntity
	cmp r4, #0
	ble _0807A814
	lsls r0, r4, #1
	adds r1, r0, r1
	b _0807A80C
	.align 2, 0
_0807A800: .4byte gPlayerEntity
_0807A804:
	subs r1, #2
	subs r4, #1
	cmp r4, #0
	ble _0807A814
_0807A80C:
	ldrh r0, [r1]
	ands r0, r2
	cmp r0, #0
	bne _0807A804
_0807A814:
	adds r4, #1
_0807A816:
	movs r0, #0xf
	ands r0, r6
	subs r0, r4, r0
	ldrh r1, [r3, #0x32]
	adds r0, r0, r1
	strh r0, [r3, #0x32]
	b _0807A88E
_0807A824:
	movs r3, #0xf
	ands r6, r3
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	cmp r5, #1
	bne _0807A85C
	subs r0, r3, r4
	lsrs r2, r0
	ldr r3, _0807A858 @ =gPlayerEntity
	cmp r4, #0
	ble _0807A854
	ands r5, r2
	cmp r5, #0
	beq _0807A854
	movs r1, #1
_0807A844:
	lsrs r2, r2, #1
	subs r4, #1
	cmp r4, #0
	ble _0807A854
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0807A844
_0807A854:
	adds r4, #1
	b _0807A882
	.align 2, 0
_0807A858: .4byte gPlayerEntity
_0807A85C:
	lsls r2, r4
	ldr r3, _0807A86C @ =gPlayerEntity
	cmp r4, #0xe
	bgt _0807A880
	movs r1, #0x80
	lsls r1, r1, #8
	b _0807A878
	.align 2, 0
_0807A86C: .4byte gPlayerEntity
_0807A870:
	lsls r2, r2, #1
	adds r4, #1
	cmp r4, #0xe
	bgt _0807A880
_0807A878:
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0807A870
_0807A880:
	subs r4, #1
_0807A882:
	movs r0, #0xf
	ands r0, r7
	subs r0, r4, r0
	ldrh r2, [r3, #0x2e]
	adds r0, r0, r2
	strh r0, [r3, #0x2e]
_0807A88E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0807A894
sub_0807A894: @ 0x0807A894
	push {lr}
	ldrb r1, [r0, #0x15]
	cmp r1, #8
	beq _0807A8BA
	cmp r1, #8
	bgt _0807A8A6
	cmp r1, #0
	beq _0807A8B0
	b _0807A8C8
_0807A8A6:
	cmp r1, #0x10
	beq _0807A8B6
	cmp r1, #0x18
	beq _0807A8C0
	b _0807A8C8
_0807A8B0:
	movs r2, #8
	rsbs r2, r2, #0
	b _0807A8CA
_0807A8B6:
	movs r2, #5
	b _0807A8CA
_0807A8BA:
	movs r2, #0
	movs r1, #8
	b _0807A8CC
_0807A8C0:
	movs r2, #0
	movs r1, #8
	rsbs r1, r1, #0
	b _0807A8CC
_0807A8C8:
	movs r2, #0
_0807A8CA:
	movs r1, #0
_0807A8CC:
	bl sub_080002B4
	pop {pc}
	.align 2, 0

	thumb_func_start nullsub_505
nullsub_505: @ 0x0807A8D4
	bx lr
	.align 2, 0

	thumb_func_start sub_0807A8D8
sub_0807A8D8: @ 0x0807A8D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, _0807AA5C @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807A8F0
	b _0807A9F6
_0807A8F0:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r7, _0807AA60 @ =gRoomControls
	ldrh r1, [r7, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r6, #0x3f
	ands r0, r6
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	ldrh r2, [r7, #8]
	adds r2, #1
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r6
	lsls r1, r1, #6
	orrs r0, r1
	ldr r1, _0807AA64 @ =gPlayerEntity
	adds r1, #0x38
	mov sb, r1
	ldrb r1, [r1]
	bl sub_080002EC
	adds r4, r0, #0
	movs r0, #0x20
	mov r8, r0
	ands r4, r0
	cmp r4, #0
	beq _0807A94E
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldrh r0, [r7, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	ands r1, r6
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	ldrh r2, [r7, #8]
	adds r2, #1
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r5, #0
	bl sub_0807AAF8
_0807A94E:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldrh r1, [r7, #6]
	subs r1, #2
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r6
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	ldrh r2, [r7, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r6
	lsls r1, r1, #6
	orrs r0, r1
	mov r2, sb
	ldrb r1, [r2]
	bl sub_080002EC
	adds r4, r0, #0
	mov r0, r8
	ands r4, r0
	cmp r4, #0
	beq _0807A9A2
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldrh r0, [r7, #6]
	subs r0, #2
	subs r1, r1, r0
	asrs r1, r1, #4
	ands r1, r6
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	ldrh r2, [r7, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r5, #0
	bl sub_0807AAF8
_0807A9A2:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldrh r1, [r7, #6]
	adds r1, #2
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r6
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	ldrh r2, [r7, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r6
	lsls r1, r1, #6
	orrs r0, r1
	mov r2, sb
	ldrb r1, [r2]
	bl sub_080002EC
	adds r4, r0, #0
	mov r0, r8
	ands r4, r0
	cmp r4, #0
	beq _0807A9F6
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldrh r0, [r7, #6]
	adds r0, #2
	subs r1, r1, r0
	asrs r1, r1, #4
	ands r1, r6
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	ldrh r2, [r7, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r5, #0
	bl sub_0807AAF8
_0807A9F6:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r7, _0807AA60 @ =gRoomControls
	ldrh r1, [r7, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r6, #0x3f
	ands r0, r6
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	ldrh r2, [r7, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r6
	lsls r1, r1, #6
	orrs r0, r1
	ldr r1, _0807AA64 @ =gPlayerEntity
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002EC
	adds r4, r0, #0
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _0807AA4C
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	ldrh r0, [r7, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	ands r1, r6
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	ldrh r2, [r7, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r5, #0
	bl sub_0807AAF8
_0807AA4C:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _0807AA68
	adds r0, r5, #0
	bl sub_0807AABC
	b _0807AA76
	.align 2, 0
_0807AA5C: .4byte gPlayerState
_0807AA60: .4byte gRoomControls
_0807AA64: .4byte gPlayerEntity
_0807AA68:
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _0807AA76
	adds r0, r5, #0
	bl sub_0807AA80
_0807AA76:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0807AA80
sub_0807AA80: @ 0x0807AA80
	push {lr}
	adds r3, r0, #0
	ldr r0, _0807AAB8 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0807AAB6
	adds r0, r3, #0
	adds r0, #0x38
	movs r1, #2
	strb r1, [r0]
	movs r1, #0x36
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bne _0807AAB6
	ldrb r2, [r3, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r3, #0x1b]
	ldrb r0, [r3, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x19]
_0807AAB6:
	pop {pc}
	.align 2, 0
_0807AAB8: .4byte gPlayerState

	thumb_func_start sub_0807AABC
sub_0807AABC: @ 0x0807AABC
	push {lr}
	adds r3, r0, #0
	ldr r0, _0807AAF4 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0807AAF2
	adds r0, r3, #0
	adds r0, #0x38
	movs r1, #1
	strb r1, [r0]
	movs r1, #0x36
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bne _0807AAF2
	ldrb r2, [r3, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r3, #0x1b]
	ldrb r0, [r3, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x19]
_0807AAF2:
	pop {pc}
	.align 2, 0
_0807AAF4: .4byte gPlayerState

	thumb_func_start sub_0807AAF8
sub_0807AAF8: @ 0x0807AAF8
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	movs r1, #0x36
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bne _0807AB3C
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	orrs r2, r0
	movs r3, #0
	ldr r0, _0807AB40 @ =gPlayerState
	ldr r1, [r0, #0x40]
	adds r4, r0, #0
	cmp r1, r2
	beq _0807AB32
	adds r1, r4, #0
	adds r1, #0x40
_0807AB20:
	ldr r0, [r1]
	stm r1!, {r2}
	adds r2, r0, #0
	adds r3, #1
	cmp r3, #0xe
	bhi _0807AB32
	ldr r0, [r1]
	cmp r0, r2
	bne _0807AB20
_0807AB32:
	lsls r0, r3, #2
	adds r1, r4, #0
	adds r1, #0x40
	adds r0, r0, r1
	str r2, [r0]
_0807AB3C:
	pop {r4, pc}
	.align 2, 0
_0807AB40: .4byte gPlayerState

	thumb_func_start sub_0807AB44
sub_0807AB44: @ 0x0807AB44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	adds r0, r0, r7
	ldr r2, _0807ABF0 @ =gRoomControls
	mov sb, r2
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	mov sl, r3
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r6, r5]
	add r1, r8
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	adds r1, r6, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl GetTileType
	movs r1, #0xb
	bl sub_0806FC50
	adds r5, r0, #0
	cmp r5, #0
	beq _0807AC44
	ldrh r0, [r5, #6]
	cmp r0, #0x76
	bne _0807ABF4
	movs r0, #0x2a
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0807AC44
	lsls r2, r7, #0x10
	mov r0, r8
	lsls r3, r0, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl PositionRelative
	adds r0, r4, #0
	bl sub_08004168
	ldrh r0, [r5, #6]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	mov r3, sb
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	mov r5, sl
	ands r1, r5
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	mov r5, sb
	ldrh r3, [r5, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	mov r3, sl
	ands r2, r3
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0807B7D8
	b _0807AC44
	.align 2, 0
_0807ABF0: .4byte gRoomControls
_0807ABF4:
	movs r0, #0x2a
	movs r1, #2
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0807AC44
	lsls r2, r7, #0x10
	mov r0, r8
	lsls r3, r0, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl PositionRelative
	str r5, [r4, #0x54]
	ldr r0, _0807AC50 @ =0x0000404F
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	mov r3, sb
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	mov r5, sl
	ands r1, r5
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	mov r5, sb
	ldrh r3, [r5, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	mov r3, sl
	ands r2, r3
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
_0807AC44:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807AC50: .4byte 0x0000404F

	thumb_func_start sub_0807AC54
sub_0807AC54: @ 0x0807AC54
	push {lr}
	adds r2, r0, #0
	ldr r0, _0807AC74 @ =gPlayerState
	ldrb r1, [r0, #0x11]
	adds r3, r0, #0
	cmp r1, #0
	beq _0807ACC6
	ldrb r0, [r3, #0x12]
	cmp r0, #0x2a
	beq _0807ACA8
	cmp r0, #0x2a
	bgt _0807AC78
	cmp r0, #0x1e
	beq _0807AC82
	b _0807ACC6
	.align 2, 0
_0807AC74: .4byte gPlayerState
_0807AC78:
	cmp r0, #0x2b
	beq _0807AC90
	cmp r0, #0x2c
	beq _0807ACB6
	b _0807ACC6
_0807AC82:
	ldrh r0, [r2, #0x2e]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #8
	orrs r1, r0
	strh r1, [r2, #0x2e]
_0807AC90:
	movs r0, #0
	movs r1, #0x1d
	strb r1, [r2, #0xc]
	strb r0, [r2, #0xd]
	strh r0, [r2, #0x30]
	ldr r0, _0807ACA4 @ =0x000002CF
	strh r0, [r3, #8]
	movs r0, #1
	b _0807ACC8
	.align 2, 0
_0807ACA4: .4byte 0x000002CF
_0807ACA8:
	ldrh r0, [r2, #0x2e]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #8
	orrs r1, r0
	strh r1, [r2, #0x2e]
_0807ACB6:
	movs r0, #0
	movs r1, #0x1d
	strb r1, [r2, #0xc]
	movs r1, #1
	strb r1, [r2, #0xd]
	strh r0, [r2, #0x30]
	movs r0, #1
	b _0807ACC8
_0807ACC6:
	movs r0, #0
_0807ACC8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807ACCC
sub_0807ACCC: @ 0x0807ACCC
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x72
	bl GetInventoryValue
	movs r1, #0xc0
	cmp r0, #1
	bne _0807ACF4
	adds r1, #0x40
_0807ACF4:
	movs r2, #0x24
	ldrsh r0, [r4, r2]
	cmp r1, r0
	ble _0807AD18
	strh r1, [r4, #0x24]
	ldr r0, _0807AD14 @ =gPlayerState
	ldrb r1, [r0, #0xd]
	strb r1, [r4, #0x15]
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _0807ADB4
	b _0807AD1E
	.align 2, 0
_0807AD14: .4byte gPlayerState
_0807AD18:
	ldrh r0, [r4, #0x24]
	subs r0, #4
	strh r0, [r4, #0x24]
_0807AD1E:
	ldr r2, _0807AD3C @ =gPlayerState
	adds r1, r2, #0
	adds r1, #0x89
	ldrb r0, [r1]
	cmp r0, #0
	bne _0807AD40
	adds r0, r4, #0
	bl sub_0807ADB8
	cmp r0, #0
	bne _0807AD74
	adds r0, r4, #0
	bl sub_0807AE20
	b _0807AD74
	.align 2, 0
_0807AD3C: .4byte gPlayerState
_0807AD40:
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0807AD52
	adds r0, r4, #0
	bl sub_0807ADB8
	b _0807AD74
_0807AD52:
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0807ADA0 @ =0x00000163
	bl SoundReq
_0807AD74:
	ldr r0, _0807ADA4 @ =gPlayerState
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807ADA8
	adds r2, r4, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	subs r2, #0x13
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	b _0807ADB2
	.align 2, 0
_0807ADA0: .4byte 0x00000163
_0807ADA4: .4byte gPlayerState
_0807ADA8:
	adds r2, r4, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
_0807ADB2:
	strb r0, [r2]
_0807ADB4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0807ADB8
sub_0807ADB8: @ 0x0807ADB8
	push {r4, lr}
	adds r2, r0, #0
	ldr r3, _0807ADF4 @ =gPlayerState
	adds r0, r3, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807AE1C
	movs r0, #0x26
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	movs r1, #0x80
	eors r0, r1
	mov r1, ip
	strb r0, [r1]
	movs r1, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _0807ADF8
	adds r1, r3, #0
	adds r1, #0x89
	movs r0, #0x78
	strb r0, [r1]
	b _0807AE0E
	.align 2, 0
_0807ADF4: .4byte gPlayerState
_0807ADF8:
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0x89
	strb r4, [r0]
_0807AE0E:
	ldr r0, _0807AE18 @ =0x00000163
	bl SoundReq
	movs r0, #1
	b _0807AE1E
	.align 2, 0
_0807AE18: .4byte 0x00000163
_0807AE1C:
	movs r0, #0
_0807AE1E:
	pop {r4, pc}

	thumb_func_start sub_0807AE20
sub_0807AE20: @ 0x0807AE20
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0x17
	bne _0807AE32
	ldr r0, _0807AE58 @ =gPlayerState
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	bne _0807AE74
_0807AE32:
	ldr r0, _0807AE5C @ =gRoomControls
	ldrh r0, [r0]
	cmp r0, #0
	bne _0807AE74
	ldr r0, _0807AE58 @ =gPlayerState
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0807AE74
	movs r0, #0x72
	bl GetInventoryValue
	cmp r0, #1
	bne _0807AE60
	movs r0, #0xe0
	lsls r0, r0, #1
	b _0807AE64
	.align 2, 0
_0807AE58: .4byte gPlayerState
_0807AE5C: .4byte gRoomControls
_0807AE60:
	movs r0, #0xc0
	lsls r0, r0, #1
_0807AE64:
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_08079520
	movs r0, #0xb1
	lsls r0, r0, #1
	bl SoundReq
_0807AE74:
	movs r0, #0x10
	bl sub_080793E4
	cmp r0, #0
	beq _0807AEA8
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0x14
	strb r0, [r1]
	adds r1, #5
	movs r0, #4
	strb r0, [r1]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	movs r1, #0x10
	eors r0, r1
	adds r1, r4, #0
	adds r1, #0x3e
	strb r0, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	bl ModHealth
	movs r0, #0x7a
	bl SoundReq
_0807AEA8:
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807AECC
	ldr r0, _0807AEC8 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0807AEDE
	adds r0, r4, #0
	movs r1, #4
	bl sub_080A2A84
	b _0807AEDE
	.align 2, 0
_0807AEC8: .4byte gScreenTransition
_0807AECC:
	ldr r0, _0807AEE0 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0807AEDE
	adds r0, r4, #0
	bl CreateWaterTrace
_0807AEDE:
	pop {r4, pc}
	.align 2, 0
_0807AEE0: .4byte gScreenTransition

	thumb_func_start sub_0807AEE4
sub_0807AEE4: @ 0x0807AEE4
	push {r4, lr}
	ldr r0, _0807AFE4 @ =gPlayerState
	adds r4, r0, #0
	adds r4, #0xac
	movs r0, #0
	strh r0, [r4]
	movs r0, #0x48
	bl GetInventoryValue
	cmp r0, #1
	bne _0807AF02
	ldrh r0, [r4]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4]
_0807AF02:
	movs r0, #0x49
	bl GetInventoryValue
	cmp r0, #1
	bne _0807AF14
	ldrh r0, [r4]
	movs r1, #2
	orrs r0, r1
	strh r0, [r4]
_0807AF14:
	movs r0, #0x4a
	bl GetInventoryValue
	cmp r0, #1
	bne _0807AF26
	ldrh r0, [r4]
	movs r1, #4
	orrs r0, r1
	strh r0, [r4]
_0807AF26:
	movs r0, #0x4b
	bl GetInventoryValue
	cmp r0, #1
	bne _0807AF38
	ldrh r0, [r4]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4]
_0807AF38:
	movs r0, #0x4c
	bl GetInventoryValue
	cmp r0, #1
	bne _0807AF4A
	ldrh r0, [r4]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r4]
_0807AF4A:
	movs r0, #0x4d
	bl GetInventoryValue
	cmp r0, #1
	bne _0807AF5C
	ldrh r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r4]
_0807AF5C:
	movs r0, #0x4e
	bl GetInventoryValue
	cmp r0, #1
	bne _0807AF6E
	ldrh r0, [r4]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r4]
_0807AF6E:
	movs r0, #0x4f
	bl GetInventoryValue
	cmp r0, #1
	bne _0807AF80
	ldrh r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r4]
_0807AF80:
	movs r0, #6
	bl GetInventoryValue
	cmp r0, #1
	bne _0807AF96
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
_0807AF96:
	movs r0, #0x73
	bl GetInventoryValue
	cmp r0, #1
	bne _0807AFAC
	ldrh r0, [r4]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
_0807AFAC:
	movs r0, #0x74
	bl GetInventoryValue
	cmp r0, #1
	bne _0807AFC6
	ldr r0, _0807AFE4 @ =gPlayerState
	adds r0, #0xac
	ldrh r2, [r0]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r1, r2
	strh r1, [r0]
_0807AFC6:
	movs r0, #0x75
	bl GetInventoryValue
	cmp r0, #1
	bne _0807AFE0
	ldr r0, _0807AFE4 @ =gPlayerState
	adds r0, #0xac
	ldrh r2, [r0]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r1, r2
	strh r1, [r0]
_0807AFE0:
	pop {r4, pc}
	.align 2, 0
_0807AFE4: .4byte gPlayerState

	thumb_func_start sub_0807AFE8
sub_0807AFE8: @ 0x0807AFE8
	push {lr}
	bl sub_08077B20
	ldr r0, _0807B00C @ =gPlayerEntity
	movs r1, #0x43
	movs r2, #0
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _0807B004
	ldrh r0, [r1, #0x32]
	adds r0, #1
	strh r0, [r1, #0x32]
_0807B004:
	ldr r1, _0807B010 @ =gPlayerState
	movs r0, #9
	strb r0, [r1, #0xc]
	pop {pc}
	.align 2, 0
_0807B00C: .4byte gPlayerEntity
_0807B010: .4byte gPlayerState

	thumb_func_start sub_0807B014
sub_0807B014: @ 0x0807B014
	push {lr}
	ldr r2, _0807B03C @ =gPlayerState
	adds r0, r2, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807B044
	ldr r0, _0807B040 @ =gSave
	adds r1, r0, #0
	adds r1, #0xaa
	adds r0, #0xab
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _0807B044
	movs r0, #0xf
	b _0807B066
	.align 2, 0
_0807B03C: .4byte gPlayerState
_0807B040: .4byte gSave
_0807B044:
	adds r0, r2, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807B064
	ldr r0, _0807B060 @ =gSave
	adds r0, #0xaa
	ldrb r0, [r0]
	cmp r0, #8
	bhi _0807B064
	movs r0, #0x16
	b _0807B066
	.align 2, 0
_0807B060: .4byte gSave
_0807B064:
	movs r0, #0
_0807B066:
	pop {pc}

	thumb_func_start sub_0807B068
sub_0807B068: @ 0x0807B068
	push {lr}
	ldr r2, _0807B090 @ =gPlayerState
	ldrb r1, [r2, #0x1e]
	ldrb r0, [r2, #4]
	orrs r0, r1
	cmp r0, #0
	bne _0807B0C2
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r1, [r0]
	cmp r1, #0
	beq _0807B0A4
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807B098
	ldr r0, _0807B094 @ =0x00000C1C
	strh r0, [r2, #8]
	b _0807B0C2
	.align 2, 0
_0807B090: .4byte gPlayerState
_0807B094: .4byte 0x00000C1C
_0807B098:
	ldr r0, _0807B0A0 @ =0x00000C0C
	strh r0, [r2, #8]
	b _0807B0C2
	.align 2, 0
_0807B0A0: .4byte 0x00000C0C
_0807B0A4:
	ldrb r1, [r2, #0xd]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807B0B8
	ldrh r0, [r2, #8]
	ldr r1, _0807B0B4 @ =0x00000C18
	b _0807B0BC
	.align 2, 0
_0807B0B4: .4byte 0x00000C18
_0807B0B8:
	ldrh r0, [r2, #8]
	ldr r1, _0807B0C4 @ =0x00000C04
_0807B0BC:
	cmp r0, r1
	beq _0807B0C2
	strh r1, [r2, #8]
_0807B0C2:
	pop {pc}
	.align 2, 0
_0807B0C4: .4byte 0x00000C04

	thumb_func_start sub_0807B0C8
sub_0807B0C8: @ 0x0807B0C8
	push {r4, lr}
	ldr r4, _0807B0F8 @ =gPlayerEntity
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_0806FEBC
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_0806FEBC
	adds r0, r4, #0
	movs r1, #2
	adds r2, r4, #0
	bl sub_0806FEBC
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	bl sub_0806FEBC
	pop {r4, pc}
	.align 2, 0
_0807B0F8: .4byte gPlayerEntity

	thumb_func_start sub_0807B0FC
sub_0807B0FC: @ 0x0807B0FC
	push {lr}
	ldr r2, _0807B110 @ =gUnk_0811C27C
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0807B110: .4byte gUnk_0811C27C

	thumb_func_start sub_0807B114
sub_0807B114: @ 0x0807B114
	movs r1, #1
	strb r1, [r0, #0xd]
	ldr r1, _0807B124 @ =gPlayerState
	adds r1, #0x38
	ldrb r1, [r1]
	adds r0, #0x6c
	strb r1, [r0]
	bx lr
	.align 2, 0
_0807B124: .4byte gPlayerState

	thumb_func_start sub_0807B128
sub_0807B128: @ 0x0807B128
	push {lr}
	ldr r2, _0807B140 @ =gUnk_0811C284
	adds r1, r0, #0
	adds r1, #0x6c
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0807B140: .4byte gUnk_0811C284

	thumb_func_start sub_0807B144
sub_0807B144: @ 0x0807B144
	push {lr}
	ldrb r2, [r0, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0, #0x18]
	ldrb r1, [r0, #0x14]
	lsls r1, r1, #2
	strb r1, [r0, #0x15]
	movs r1, #0xa0
	strh r1, [r0, #0x24]
	movs r1, #0x80
	lsls r1, r1, #0xb
	str r1, [r0, #0x20]
	ldr r1, _0807B170 @ =gPlayerState
	movs r0, #0x81
	strb r0, [r1, #2]
	bl sub_080791BC
	pop {pc}
	.align 2, 0
_0807B170: .4byte gPlayerState

	thumb_func_start nullsub_506
nullsub_506: @ 0x0807B174
	bx lr
	.align 2, 0

	thumb_func_start sub_0807B178
sub_0807B178: @ 0x0807B178
	push {lr}
	ldrb r2, [r0, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0, #0x18]
	movs r2, #0
	movs r1, #0x10
	strb r1, [r0, #0x15]
	strh r2, [r0, #0x24]
	movs r1, #0x80
	lsls r1, r1, #0xb
	str r1, [r0, #0x20]
	ldr r1, _0807B1A4 @ =gPlayerState
	movs r0, #0x81
	strb r0, [r1, #2]
	bl sub_080791BC
	pop {pc}
	.align 2, 0
_0807B1A4: .4byte gPlayerState

	thumb_func_start sub_0807B1A8
sub_0807B1A8: @ 0x0807B1A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0807B1D4 @ =gUnk_0811C298
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r0, _0807B1D8 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0807B1D0
	adds r0, r4, #0
	bl CreateSparkle
_0807B1D0:
	pop {r4, pc}
	.align 2, 0
_0807B1D4: .4byte gUnk_0811C298
_0807B1D8: .4byte gScreenTransition

	thumb_func_start sub_0807B1DC
sub_0807B1DC: @ 0x0807B1DC
	adds r2, r0, #0
	adds r2, #0x6e
	ldrb r1, [r2]
	adds r1, #1
	strb r1, [r2]
	movs r1, #0x1e
	strb r1, [r0, #0xe]
	bx lr

	thumb_func_start sub_0807B1EC
sub_0807B1EC: @ 0x0807B1EC
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807B212
	adds r1, r2, #0
	adds r1, #0x6e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r2, #0x20]
	ldr r1, _0807B214 @ =gPlayerState
	ldr r0, _0807B218 @ =0x000002C2
	strh r0, [r1, #8]
_0807B212:
	pop {pc}
	.align 2, 0
_0807B214: .4byte gPlayerState
_0807B218: .4byte 0x000002C2

	thumb_func_start sub_0807B21C
sub_0807B21C: @ 0x0807B21C
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bge _0807B236
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r4, #0
	bl sub_08003FC4
	b _0807B240
_0807B236:
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r4, #0
	bl sub_08003FC4
_0807B240:
	ldr r1, [r4, #0x20]
	ldr r0, _0807B260 @ =0xFFFF8000
	cmp r1, r0
	bge _0807B25E
	movs r1, #0
	movs r0, #0x78
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x6e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r4, #0x34]
	str r0, [r4, #0x68]
_0807B25E:
	pop {r4, pc}
	.align 2, 0
_0807B260: .4byte 0xFFFF8000

	thumb_func_start sub_0807B264
sub_0807B264: @ 0x0807B264
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	ldrb r0, [r4, #0xf]
	adds r0, #2
	strb r0, [r4, #0xf]
	ldr r1, _0807B2B4 @ =gSineTable
	ldrb r0, [r4, #0xf]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	asrs r1, r1, #7
	lsls r1, r1, #0x10
	ldr r0, [r4, #0x68]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807B2B0
	movs r0, #0x50
	strb r0, [r4, #0xe]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x20]
	adds r1, r4, #0
	adds r1, #0x6e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xa9
	lsls r0, r0, #1
	bl SoundReq
_0807B2B0:
	pop {r4, pc}
	.align 2, 0
_0807B2B4: .4byte gSineTable

	thumb_func_start sub_0807B2B8
sub_0807B2B8: @ 0x0807B2B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0807B2F0 @ =0xFFFFE000
	bl sub_08003FC4
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0807B2EC
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807B2EC
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0807B2F4 @ =gUnk_0813AD88
	adds r0, r0, r1
	bl DoExitTransition
_0807B2EC:
	pop {r4, pc}
	.align 2, 0
_0807B2F0: .4byte 0xFFFFE000
_0807B2F4: .4byte gUnk_0813AD88

	thumb_func_start sub_0807B2F8
sub_0807B2F8: @ 0x0807B2F8
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x6e
	ldrb r0, [r1]
	cmp r0, #0
	bne _0807B310
	adds r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_0809D738
_0807B310:
	pop {pc}
	.align 2, 0

	thumb_func_start SetTileType
SetTileType: @ 0x0807B314
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r0, _0807B3A0 @ =0x000007FF
	cmp r5, r0
	bhi _0807B410
	adds r0, r4, #0
	adds r1, r6, #0
	bl DeleteLoadedTileEntity
	adds r0, r6, #0
	bl GetLayerByIndex
	adds r2, r0, #0
	lsls r1, r5, #1
	ldr r3, _0807B3A4 @ =0x00006004
	adds r0, r2, r3
	adds r0, r0, r1
	ldrh r0, [r0]
	mov ip, r0
	lsls r1, r4, #1
	adds r0, r2, #4
	adds r0, r0, r1
	mov r1, ip
	strh r1, [r0]
	ldr r0, _0807B3A8 @ =gUnk_080B3E80
	adds r0, r5, r0
	ldrb r3, [r0]
	ldr r1, _0807B3AC @ =0x00002004
	adds r0, r2, r1
	adds r0, r0, r4
	strb r3, [r0]
	ldr r7, _0807B3B0 @ =gRoomControls
	ldrb r1, [r7, #0xf]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0807B36C
	ldr r0, _0807B3B4 @ =gUnk_02025EB0
	ldr r1, _0807B3AC @ =0x00002004
	adds r0, r0, r1
	adds r0, r4, r0
	strb r3, [r0]
_0807B36C:
	ldr r3, _0807B3B8 @ =0x0000B004
	adds r1, r2, r3
	adds r1, r1, r4
	ldr r0, _0807B3BC @ =gUnk_080B37A0
	adds r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r1, [r7, #0xf]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807B430
	movs r1, #0x3f
	ands r1, r4
	lsls r1, r1, #1
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r4
	lsls r0, r0, #2
	adds r1, r1, r0
	cmp r6, #2
	beq _0807B3C4
	lsls r1, r1, #1
	ldr r0, _0807B3C0 @ =gUnk_02019EE0
	b _0807B3C8
	.align 2, 0
_0807B3A0: .4byte 0x000007FF
_0807B3A4: .4byte 0x00006004
_0807B3A8: .4byte gUnk_080B3E80
_0807B3AC: .4byte 0x00002004
_0807B3B0: .4byte gRoomControls
_0807B3B4: .4byte gUnk_02025EB0
_0807B3B8: .4byte 0x0000B004
_0807B3BC: .4byte gUnk_080B37A0
_0807B3C0: .4byte gUnk_02019EE0
_0807B3C4:
	lsls r1, r1, #1
	ldr r0, _0807B400 @ =gMapDataTopSpecial
_0807B3C8:
	adds r3, r1, r0
	mov r1, ip
	lsls r0, r1, #3
	ldr r1, _0807B404 @ =0x00007004
	adds r0, r0, r1
	adds r0, r2, r0
	ldrh r1, [r0]
	strh r1, [r3]
	ldrh r1, [r0, #2]
	strh r1, [r3, #2]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r3, r1
	ldrh r1, [r0, #4]
	strh r1, [r2]
	movs r2, #0x81
	lsls r2, r2, #1
	adds r1, r3, r2
	ldrh r0, [r0, #6]
	strh r0, [r1]
	ldr r0, _0807B408 @ =gRoomControls
	ldrh r0, [r0]
	cmp r0, #1
	beq _0807B430
	ldr r1, _0807B40C @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	b _0807B430
	.align 2, 0
_0807B400: .4byte gMapDataTopSpecial
_0807B404: .4byte 0x00007004
_0807B408: .4byte gRoomControls
_0807B40C: .4byte gUnk_02000070
_0807B410:
	ldr r0, _0807B424 @ =0x00003FFF
	cmp r5, r0
	bls _0807B428
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl SetTile
	b _0807B430
	.align 2, 0
_0807B424: .4byte 0x00003FFF
_0807B428:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0807BA8C
_0807B430:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0807B434
sub_0807B434: @ 0x0807B434
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl GetTileType
	cmp r0, #0x37
	bhi _0807B44A
	cmp r0, #0x36
	blo _0807B44A
	movs r0, #0
	b _0807B462
_0807B44A:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	bl sub_080002C8
	adds r1, r0, #0
	movs r0, #0xd
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_0807B462:
	pop {r4, r5, pc}

	thumb_func_start sub_0807B464
sub_0807B464: @ 0x0807B464
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_080002C8
	movs r1, #0
	cmp r0, #0x56
	bne _0807B47A
	movs r1, #1
_0807B47A:
	adds r0, r1, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807B480
sub_0807B480: @ 0x0807B480
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r1, #2
	bl sub_0807B464
	cmp r0, #0
	beq _0807B558
	adds r0, r6, #0
	subs r0, #0x40
	movs r1, #2
	bl sub_0807B464
	adds r5, r0, #0
	adds r0, r6, #1
	movs r1, #2
	bl sub_0807B464
	lsls r0, r0, #1
	orrs r5, r0
	adds r4, r6, #0
	adds r4, #0x40
	adds r0, r4, #0
	movs r1, #2
	bl sub_0807B464
	lsls r0, r0, #2
	orrs r5, r0
	subs r0, r6, #1
	movs r1, #2
	bl sub_0807B464
	lsls r0, r0, #3
	orrs r5, r0
	adds r0, r6, #0
	adds r0, #0x41
	movs r1, #1
	bl sub_0807B464
	lsls r0, r0, #1
	orrs r5, r0
	adds r0, r6, #0
	adds r0, #0x3f
	movs r1, #1
	bl sub_0807B464
	lsls r0, r0, #3
	orrs r5, r0
	adds r0, r4, #0
	movs r1, #2
	bl GetTileType
	cmp r0, #0
	beq _0807B4FA
	adds r0, r6, #0
	adds r0, #0x80
	movs r1, #1
	bl sub_0807B464
	lsls r0, r0, #2
	orrs r5, r0
_0807B4FA:
	ldr r0, _0807B514 @ =gUnk_0811C2CC
	lsls r1, r5, #1
	adds r1, r1, r0
	ldrh r4, [r1]
	adds r0, r6, #0
	movs r1, #2
	bl GetTileType
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0807B518 @ =gUnk_0811C2EC
	movs r3, #0
	b _0807B51E
	.align 2, 0
_0807B514: .4byte gUnk_0811C2CC
_0807B518: .4byte gUnk_0811C2EC
_0807B51C:
	adds r2, #6
_0807B51E:
	ldrh r1, [r2]
	cmp r1, #0
	beq _0807B52A
	cmp r0, r1
	bne _0807B51C
	ldrh r3, [r2, #2]
_0807B52A:
	movs r0, #1
	lsls r0, r7
	bics r3, r0
	ldr r2, _0807B534 @ =gUnk_0811C2EC
	b _0807B53A
	.align 2, 0
_0807B534: .4byte gUnk_0811C2EC
_0807B538:
	adds r2, #6
_0807B53A:
	ldrh r0, [r2]
	cmp r0, #0
	beq _0807B54E
	ldrh r0, [r2, #2]
	cmp r3, r0
	bne _0807B538
	ldrh r0, [r2, #4]
	cmp r5, r0
	bne _0807B538
	ldrh r4, [r2]
_0807B54E:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #2
	bl SetTileType
_0807B558:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0807B55C
sub_0807B55C: @ 0x0807B55C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	bl sub_0807B464
	cmp r0, #0
	beq _0807B5AC
	adds r0, r5, #0
	subs r0, #0x40
	adds r1, r6, #0
	bl sub_0807B464
	adds r4, r0, #0
	adds r0, r5, #1
	adds r1, r6, #0
	bl sub_0807B464
	lsls r0, r0, #1
	orrs r4, r0
	adds r0, r5, #0
	adds r0, #0x40
	adds r1, r6, #0
	bl sub_0807B464
	lsls r0, r0, #2
	orrs r4, r0
	subs r0, r5, #1
	adds r1, r6, #0
	bl sub_0807B464
	lsls r0, r0, #3
	orrs r0, r4
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r2, r6, #0
	bl SetTileType
_0807B5AC:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0807B5B0
sub_0807B5B0: @ 0x0807B5B0
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	ldr r6, _0807B5F8 @ =gUnk_0811C456
	ldrb r1, [r3, #0x14]
	movs r2, #6
	ands r2, r1
	lsls r1, r2, #1
	adds r1, r1, r6
	movs r4, #0
	ldrsh r1, [r1, r4]
	adds r0, r0, r1
	ldr r5, _0807B5FC @ =gRoomControls
	ldrh r1, [r5, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r4, #0x3f
	ands r0, r4
	movs r7, #0x32
	ldrsh r1, [r3, r7]
	adds r2, #1
	lsls r2, r2, #1
	adds r2, r2, r6
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	ldrh r2, [r5, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r4
	lsls r1, r1, #6
	orrs r0, r1
	bl sub_0807B600
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807B5F8: .4byte gUnk_0811C456
_0807B5FC: .4byte gRoomControls

	thumb_func_start sub_0807B600
sub_0807B600: @ 0x0807B600
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	subs r6, #0x40
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	movs r1, #1
	bl sub_080002C8
	cmp r0, #0x56
	beq _0807B61A
	movs r0, #0
	b _0807B76E
_0807B61A:
	adds r0, r5, #0
	movs r1, #1
	bl GetTileType
	adds r1, r0, #0
	ldr r0, _0807B634 @ =0x0000026A
	cmp r1, r0
	bne _0807B638
	adds r0, r5, #0
	bl sub_0807B820
	b _0807B76C
	.align 2, 0
_0807B634: .4byte 0x0000026A
_0807B638:
	ldr r0, _0807B648 @ =0x00000267
	cmp r1, r0
	bne _0807B64C
	adds r0, r5, #0
	adds r0, #0x40
	bl sub_0807B820
	b _0807B76C
	.align 2, 0
_0807B648: .4byte 0x00000267
_0807B64C:
	ldr r0, _0807B65C @ =0x0000027A
	cmp r1, r0
	bne _0807B660
	adds r0, r5, #0
	bl sub_0807B8A8
	b _0807B76C
	.align 2, 0
_0807B65C: .4byte 0x0000027A
_0807B660:
	ldr r0, _0807B670 @ =0x00000277
	cmp r1, r0
	bne _0807B674
	adds r0, r5, #0
	adds r0, #0x40
	bl sub_0807B8A8
	b _0807B76C
	.align 2, 0
_0807B670: .4byte 0x00000277
_0807B674:
	ldr r0, _0807B684 @ =0x0000028A
	cmp r1, r0
	bne _0807B688
	adds r0, r5, #0
	bl sub_0807B930
	b _0807B76C
	.align 2, 0
_0807B684: .4byte 0x0000028A
_0807B688:
	ldr r0, _0807B698 @ =0x00000287
	cmp r1, r0
	bne _0807B69C
	adds r0, r5, #0
	adds r0, #0x40
	bl sub_0807B930
	b _0807B76C
	.align 2, 0
_0807B698: .4byte 0x00000287
_0807B69C:
	adds r0, r5, #0
	movs r1, #2
	bl GetTileType
	cmp r0, #0
	beq _0807B6EC
	ldr r0, _0807B6E8 @ =0x000002F2
	adds r1, r5, #0
	movs r2, #1
	bl SetTileType
	adds r0, r6, #0
	movs r1, #1
	bl sub_080002E0
	cmp r0, #3
	bne _0807B6CA
	movs r0, #0xbd
	lsls r0, r0, #2
	adds r1, r6, #0
	movs r2, #1
	bl SetTileType
_0807B6CA:
	adds r0, r5, #0
	adds r0, #0x40
	movs r1, #1
	bl sub_080002E0
	cmp r0, #3
	bne _0807B6F8
	movs r0, #0xbd
	lsls r0, r0, #2
	adds r1, r5, #0
	movs r2, #1
	bl SetTileType
	b _0807B6F8
	.align 2, 0
_0807B6E8: .4byte 0x000002F2
_0807B6EC:
	movs r0, #0xbd
	lsls r0, r0, #2
	adds r1, r5, #0
	movs r2, #1
	bl SetTileType
_0807B6F8:
	adds r0, r6, #0
	movs r1, #2
	bl sub_0807B464
	cmp r0, #0
	beq _0807B748
	movs r0, #0
	adds r1, r6, #0
	movs r2, #2
	bl SetTileType
	adds r0, r6, #0
	movs r1, #1
	bl GetTileType
	ldr r1, _0807B770 @ =0x000002F2
	cmp r0, r1
	bne _0807B728
	movs r0, #0xbd
	lsls r0, r0, #2
	adds r1, r6, #0
	movs r2, #1
	bl SetTileType
_0807B728:
	adds r0, r5, #1
	ldr r4, _0807B774 @ =gUnk_0811C2AC
	movs r1, #1
	adds r2, r4, #0
	bl sub_0807B55C
	subs r0, r5, #1
	movs r1, #1
	adds r2, r4, #0
	bl sub_0807B55C
	adds r0, r6, #0
	movs r1, #1
	adds r2, r4, #0
	bl sub_0807B55C
_0807B748:
	adds r0, r6, #1
	movs r1, #3
	bl sub_0807B480
	subs r0, r6, #1
	movs r1, #1
	bl sub_0807B480
	adds r0, r6, #0
	adds r0, #0x40
	movs r1, #0
	bl sub_0807B480
	adds r0, r6, #0
	subs r0, #0x40
	movs r1, #2
	bl sub_0807B480
_0807B76C:
	movs r0, #1
_0807B76E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807B770: .4byte 0x000002F2
_0807B774: .4byte gUnk_0811C2AC

	thumb_func_start sub_0807B778
sub_0807B778: @ 0x0807B778
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	bl sub_080002C8
	cmp r0, #0xd
	bne _0807B7D0
	adds r0, r5, #0
	subs r0, #0x40
	adds r1, r6, #0
	bl sub_0807B434
	adds r4, r0, #0
	adds r0, r5, #1
	adds r1, r6, #0
	bl sub_0807B434
	lsls r0, r0, #1
	orrs r4, r0
	adds r0, r5, #0
	adds r0, #0x40
	adds r1, r6, #0
	bl sub_0807B434
	lsls r0, r0, #2
	orrs r4, r0
	subs r0, r5, #1
	adds r1, r6, #0
	bl sub_0807B434
	lsls r0, r0, #3
	orrs r0, r4
	ldr r1, _0807B7D4 @ =gUnk_0811C466
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r2, r6, #0
	bl SetTileType
_0807B7D0:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807B7D4: .4byte gUnk_0811C466
