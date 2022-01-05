	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object8E
Object8E: @ 0x0809B840
	push {lr}
	ldr r2, _0809B854 @ =gUnk_08123DA0
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809B854: .4byte gUnk_08123DA0

	thumb_func_start sub_0809B858
sub_0809B858: @ 0x0809B858
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x1e
	bl RequestPriorityDuration
	ldrb r3, [r4, #0xc]
	cmp r3, #1
	beq _0809B8CC
	cmp r3, #1
	bgt _0809B872
	cmp r3, #0
	beq _0809B878
	b _0809B972
_0809B872:
	cmp r3, #2
	beq _0809B948
	b _0809B972
_0809B878:
	movs r1, #1
	strb r1, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	strb r3, [r4, #0xf]
	ldr r0, _0809B8BC @ =gRoomControls
	str r4, [r0, #0x30]
	strb r1, [r0, #0xe]
	ldr r5, _0809B8C0 @ =gPlayerEntity
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	movs r2, #6
	cmp r1, r0
	ble _0809B89A
	movs r2, #2
_0809B89A:
	strb r2, [r5, #0x14]
	ldr r2, _0809B8C4 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0809B8C8 @ =0x0000BFFF
	ands r0, r1
	movs r4, #0xa0
	lsls r4, r4, #6
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	adds r0, r2, #0
	adds r0, #0x58
	strh r3, [r0]
	adds r2, #0x5c
	movs r0, #0xa0
	strh r0, [r2]
	b _0809B972
	.align 2, 0
_0809B8BC: .4byte gRoomControls
_0809B8C0: .4byte gPlayerEntity
_0809B8C4: .4byte gScreen
_0809B8C8: .4byte 0x0000BFFF
_0809B8CC:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0809B8D8
	subs r0, #1
	strb r0, [r4, #0xe]
	b _0809B972
_0809B8D8:
	ldrb r0, [r4, #0xf]
	cmp r0, #0x1f
	bhi _0809B914
	ldr r5, _0809B90C @ =gRoomTransition
	ldr r0, [r5]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0809B8F0
	ldr r0, _0809B910 @ =0x00000133
	bl SoundReq
_0809B8F0:
	ldr r0, [r5]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0809B972
	ldrb r1, [r4, #0xf]
	adds r1, #1
	strb r1, [r4, #0xf]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_0809B97C
	b _0809B972
	.align 2, 0
_0809B90C: .4byte gRoomTransition
_0809B910: .4byte 0x00000133
_0809B914:
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldr r2, _0809B938 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0809B93C @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0809B940 @ =gRoomControls
	ldr r0, _0809B944 @ =gPlayerEntity
	str r0, [r1, #0x30]
	movs r0, #0x9a
	lsls r0, r0, #1
	bl SoundReq
	b _0809B972
	.align 2, 0
_0809B938: .4byte gScreen
_0809B93C: .4byte 0x0000DFFF
_0809B940: .4byte gRoomControls
_0809B944: .4byte gPlayerEntity
_0809B948:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809B972
	ldr r2, _0809B974 @ =gScreen
	ldrh r1, [r2]
	movs r3, #0x90
	lsls r3, r3, #7
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0809B978 @ =gRoomControls
	movs r0, #4
	strb r0, [r1, #0xe]
	ldr r1, [r4, #0x50]
	movs r0, #1
	strb r0, [r1, #0xd]
	bl DeleteThisEntity
_0809B972:
	pop {r4, r5, pc}
	.align 2, 0
_0809B974: .4byte gScreen
_0809B978: .4byte gRoomControls

	thumb_func_start sub_0809B97C
sub_0809B97C: @ 0x0809B97C
	push {lr}
	movs r3, #0x2e
	ldrsh r2, [r0, r3]
	ldr r0, _0809B9B4 @ =gRoomControls
	movs r3, #0xa
	ldrsh r0, [r0, r3]
	subs r2, r2, r0
	subs r0, r2, r1
	adds r2, r2, r1
	cmp r0, #0
	bge _0809B994
	movs r0, #0
_0809B994:
	cmp r0, #0xf0
	ble _0809B99A
	movs r0, #0xf0
_0809B99A:
	cmp r2, #0
	bge _0809B9A0
	movs r2, #0
_0809B9A0:
	cmp r2, #0xf0
	ble _0809B9A6
	movs r2, #0xf0
_0809B9A6:
	ldr r1, _0809B9B8 @ =gScreen
	lsls r0, r0, #8
	orrs r0, r2
	adds r1, #0x58
	strh r0, [r1]
	pop {pc}
	.align 2, 0
_0809B9B4: .4byte gRoomControls
_0809B9B8: .4byte gScreen

	thumb_func_start sub_0809B9BC
sub_0809B9BC: @ 0x0809B9BC
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x1e
	bl RequestPriorityDuration
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0809BA34
	cmp r0, #1
	bgt _0809B9D6
	cmp r0, #0
	beq _0809B9DC
	b _0809BAC2
_0809B9D6:
	cmp r0, #2
	beq _0809BA9C
	b _0809BAC2
_0809B9DC:
	movs r1, #1
	strb r1, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	movs r0, #0x20
	strb r0, [r4, #0xf]
	ldr r0, _0809BA24 @ =gRoomControls
	str r4, [r0, #0x30]
	strb r1, [r0, #0xe]
	ldr r3, _0809BA28 @ =gPlayerEntity
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r2, #0x2e
	ldrsh r0, [r3, r2]
	movs r2, #6
	cmp r1, r0
	ble _0809BA00
	movs r2, #2
_0809BA00:
	strb r2, [r3, #0x14]
	ldr r2, _0809BA2C @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0809BA30 @ =0x0000BFFF
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	adds r1, r2, #0
	adds r1, #0x58
	movs r0, #0xf0
	strh r0, [r1]
	adds r2, #0x5c
	movs r0, #0xa0
	strh r0, [r2]
	b _0809BAC2
	.align 2, 0
_0809BA24: .4byte gRoomControls
_0809BA28: .4byte gPlayerEntity
_0809BA2C: .4byte gScreen
_0809BA30: .4byte 0x0000BFFF
_0809BA34:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0809BA40
	subs r0, #1
	strb r0, [r4, #0xe]
	b _0809BAC2
_0809BA40:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0809BA7C
	ldr r5, _0809BA74 @ =gRoomTransition
	ldr r0, [r5]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0809BA58
	ldr r0, _0809BA78 @ =0x00000133
	bl SoundReq
_0809BA58:
	ldr r0, [r5]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0809BAC2
	ldrb r1, [r4, #0xf]
	subs r1, #1
	strb r1, [r4, #0xf]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_0809B97C
	b _0809BAC2
	.align 2, 0
_0809BA74: .4byte gRoomTransition
_0809BA78: .4byte 0x00000133
_0809BA7C:
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldr r1, _0809BA94 @ =gRoomControls
	ldr r0, _0809BA98 @ =gPlayerEntity
	str r0, [r1, #0x30]
	movs r0, #0x9a
	lsls r0, r0, #1
	bl SoundReq
	b _0809BAC2
	.align 2, 0
_0809BA94: .4byte gRoomControls
_0809BA98: .4byte gPlayerEntity
_0809BA9C:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809BAC2
	ldr r1, _0809BAC4 @ =gRoomControls
	movs r0, #4
	strb r0, [r1, #0xe]
	ldr r2, _0809BAC8 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0809BACC @ =0x0000D7FF
	ands r0, r1
	strh r0, [r2]
	ldr r1, [r4, #0x50]
	movs r0, #1
	strb r0, [r1, #0xd]
	bl DeleteThisEntity
_0809BAC2:
	pop {r4, r5, pc}
	.align 2, 0
_0809BAC4: .4byte gRoomControls
_0809BAC8: .4byte gScreen
_0809BACC: .4byte 0x0000D7FF

	thumb_func_start sub_0809BAD0
sub_0809BAD0: @ 0x0809BAD0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0xa
	bl RequestPriorityDuration
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	bls _0809BAE2
	b _0809BC68
_0809BAE2:
	lsls r0, r0, #2
	ldr r1, _0809BAEC @ =_0809BAF0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809BAEC: .4byte _0809BAF0
_0809BAF0: @ jump table
	.4byte _0809BB04 @ case 0
	.4byte _0809BB4C @ case 1
	.4byte _0809BBF8 @ case 2
	.4byte _0809BC24 @ case 3
	.4byte _0809BC48 @ case 4
_0809BB04:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	ldr r1, _0809BB40 @ =gRoomControls
	str r4, [r1, #0x30]
	movs r0, #1
	strb r0, [r1, #0xe]
	ldr r3, _0809BB44 @ =gPlayerEntity
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r2, #0x2e
	ldrsh r0, [r3, r2]
	movs r2, #6
	cmp r1, r0
	ble _0809BB2C
	movs r2, #2
_0809BB2C:
	strb r2, [r3, #0x14]
	ldr r1, _0809BB48 @ =gScreen
	adds r2, r1, #0
	adds r2, #0x58
	movs r0, #0x60
	strh r0, [r2]
	adds r1, #0x5c
	movs r0, #0xa0
	strh r0, [r1]
	b _0809BC68
	.align 2, 0
_0809BB40: .4byte gRoomControls
_0809BB44: .4byte gPlayerEntity
_0809BB48: .4byte gScreen
_0809BB4C:
	adds r0, r4, #0
	bl sub_0809BE78
	cmp r0, #0
	bne _0809BB58
	b _0809BC68
_0809BB58:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0809BB88
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0809BB6A
	b _0809BC68
_0809BB6A:
	ldr r2, _0809BB80 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0809BB84 @ =0x0000BFFF
	ands r0, r1
	movs r3, #0xa0
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	b _0809BC68
	.align 2, 0
_0809BB80: .4byte gScreen
_0809BB84: .4byte 0x0000BFFF
_0809BB88:
	ldr r2, _0809BBB8 @ =gScreen
	adds r5, r2, #0
	adds r5, #0x58
	ldrh r0, [r5]
	cmp r0, #0xdf
	bhi _0809BBC4
	ldr r4, _0809BBBC @ =gRoomTransition
	ldr r0, [r4]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0809BBA6
	ldr r0, _0809BBC0 @ =0x00000133
	bl SoundReq
_0809BBA6:
	ldr r0, [r4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809BC68
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	b _0809BC68
	.align 2, 0
_0809BBB8: .4byte gScreen
_0809BBBC: .4byte gRoomTransition
_0809BBC0: .4byte 0x00000133
_0809BBC4:
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	ldrh r1, [r2]
	ldr r0, _0809BBF4 @ =0x0000DFFF
	ands r0, r1
	movs r3, #0x90
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldrh r0, [r4, #0x2e]
	adds r0, #0x68
	strh r0, [r4, #0x2e]
	ldrh r0, [r4, #0x32]
	adds r0, #0x28
	strh r0, [r4, #0x32]
	movs r0, #0x9a
	lsls r0, r0, #1
	bl SoundReq
	b _0809BC68
	.align 2, 0
_0809BBF4: .4byte 0x0000DFFF
_0809BBF8:
	adds r0, r4, #0
	bl sub_0809BE78
	cmp r0, #0
	beq _0809BC68
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809BC68
	movs r0, #0x78
	strb r0, [r4, #0xe]
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x35
	bl SetLocalFlag
	movs r0, #0x72
	bl SoundReq
	b _0809BC68
_0809BC24:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809BC68
	movs r0, #4
	strb r0, [r4, #0xc]
	ldr r1, _0809BC40 @ =gRoomControls
	ldr r0, _0809BC44 @ =gPlayerEntity
	str r0, [r1, #0x30]
	movs r0, #2
	strb r0, [r1, #0xe]
	b _0809BC68
	.align 2, 0
_0809BC40: .4byte gRoomControls
_0809BC44: .4byte gPlayerEntity
_0809BC48:
	adds r0, r4, #0
	bl sub_0809BE78
	cmp r0, #0
	beq _0809BC68
	ldr r1, _0809BC6C @ =gRoomControls
	movs r0, #4
	strb r0, [r1, #0xe]
	ldr r1, [r4, #0x50]
	movs r0, #1
	strb r0, [r1, #0xd]
	movs r0, #0x64
	bl SetRoomFlag
	bl DeleteThisEntity
_0809BC68:
	pop {r4, r5, pc}
	.align 2, 0
_0809BC6C: .4byte gRoomControls

	thumb_func_start sub_0809BC70
sub_0809BC70: @ 0x0809BC70
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #0x1e
	bl RequestPriorityDuration
	ldrb r5, [r4, #0xc]
	cmp r5, #1
	beq _0809BCDC
	cmp r5, #1
	bgt _0809BC8A
	cmp r5, #0
	beq _0809BC92
	b _0809BDAE
_0809BC8A:
	cmp r5, #2
	bne _0809BC90
	b _0809BD98
_0809BC90:
	b _0809BDAE
_0809BC92:
	movs r1, #1
	strb r1, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	strb r5, [r4, #0xf]
	ldr r0, _0809BCCC @ =gRoomControls
	str r4, [r0, #0x30]
	strb r1, [r0, #0xe]
	ldr r3, _0809BCD0 @ =gPlayerEntity
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r2, #0x2e
	ldrsh r0, [r3, r2]
	movs r2, #6
	cmp r1, r0
	ble _0809BCB4
	movs r2, #2
_0809BCB4:
	strb r2, [r3, #0x14]
	ldr r1, _0809BCD4 @ =gScreen
	adds r2, r1, #0
	adds r2, #0x58
	ldr r0, _0809BCD8 @ =0x000080F0
	strh r0, [r2]
	adds r1, #0x5c
	movs r0, #0xa0
	strh r0, [r1]
	movs r0, #0x80
	strb r0, [r4, #0xd]
	b _0809BDAE
	.align 2, 0
_0809BCCC: .4byte gRoomControls
_0809BCD0: .4byte gPlayerEntity
_0809BCD4: .4byte gScreen
_0809BCD8: .4byte 0x000080F0
_0809BCDC:
	adds r0, r4, #0
	bl sub_0809BE78
	cmp r0, #0
	beq _0809BDAE
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0809BD20
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809BDAE
	movs r0, #6
	movs r1, #8
	bl DoFade
	movs r0, #3
	bl sub_0805AAF0
	ldr r2, _0809BD18 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0809BD1C @ =0x0000BFFF
	ands r0, r1
	movs r3, #0xa0
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	b _0809BDAE
	.align 2, 0
_0809BD18: .4byte gScreen
_0809BD1C: .4byte 0x0000BFFF
_0809BD20:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0809BD64
	ldr r6, _0809BD58 @ =gRoomTransition
	ldr r0, [r6]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0809BD38
	ldr r0, _0809BD5C @ =0x00000133
	bl SoundReq
_0809BD38:
	ldr r0, [r6]
	ands r0, r5
	cmp r0, #0
	bne _0809BDAE
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	ldr r1, _0809BD60 @ =gScreen
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #8
	movs r2, #0xf0
	adds r1, #0x58
	orrs r0, r2
	strh r0, [r1]
	b _0809BDAE
	.align 2, 0
_0809BD58: .4byte gRoomTransition
_0809BD5C: .4byte 0x00000133
_0809BD60: .4byte gScreen
_0809BD64:
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	ldr r2, _0809BD90 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0809BD94 @ =0x0000DFFF
	ands r0, r1
	movs r3, #0x90
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x37
	bl SetLocalFlag
	movs r0, #0x9a
	lsls r0, r0, #1
	bl SoundReq
	b _0809BDAE
	.align 2, 0
_0809BD90: .4byte gScreen
_0809BD94: .4byte 0x0000DFFF
_0809BD98:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809BDAE
	ldr r1, [r4, #0x50]
	movs r0, #1
	strb r0, [r1, #0xd]
	bl DeleteThisEntity
_0809BDAE:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0809BDB0
sub_0809BDB0: @ 0x0809BDB0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x1e
	bl RequestPriorityDuration
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0809BE00
	cmp r0, #1
	bgt _0809BDCA
	cmp r0, #0
	beq _0809BDD0
	b _0809BE70
_0809BDCA:
	cmp r0, #2
	beq _0809BE54
	b _0809BE70
_0809BDD0:
	movs r1, #1
	strb r1, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	movs r0, #0x80
	strb r0, [r4, #0xf]
	ldr r0, _0809BDF8 @ =gRoomControls
	str r4, [r0, #0x30]
	strb r1, [r0, #0xe]
	ldr r3, _0809BDFC @ =gPlayerEntity
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r2, #0x2e
	ldrsh r0, [r3, r2]
	movs r2, #6
	cmp r1, r0
	ble _0809BDF4
	movs r2, #2
_0809BDF4:
	strb r2, [r3, #0x14]
	b _0809BE70
	.align 2, 0
_0809BDF8: .4byte gRoomControls
_0809BDFC: .4byte gPlayerEntity
_0809BE00:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0809BE0C
	subs r0, #1
	strb r0, [r4, #0xe]
	b _0809BE70
_0809BE0C:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0809BE34
	ldr r0, _0809BE2C @ =gRoomTransition
	ldr r0, [r0]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0809BE70
	ldr r0, _0809BE30 @ =0x00000133
	bl SoundReq
	b _0809BE70
	.align 2, 0
_0809BE2C: .4byte gRoomTransition
_0809BE30: .4byte 0x00000133
_0809BE34:
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldr r1, _0809BE4C @ =gRoomControls
	ldr r0, _0809BE50 @ =gPlayerEntity
	str r0, [r1, #0x30]
	movs r0, #0x9a
	lsls r0, r0, #1
	bl SoundReq
	b _0809BE70
	.align 2, 0
_0809BE4C: .4byte gRoomControls
_0809BE50: .4byte gPlayerEntity
_0809BE54:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809BE70
	ldr r1, _0809BE74 @ =gRoomControls
	movs r0, #4
	strb r0, [r1, #0xe]
	ldr r1, [r4, #0x50]
	movs r0, #1
	strb r0, [r1, #0xd]
	bl DeleteThisEntity
_0809BE70:
	pop {r4, pc}
	.align 2, 0
_0809BE74: .4byte gRoomControls

	thumb_func_start sub_0809BE78
sub_0809BE78: @ 0x0809BE78
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r5, #0
	adds r0, #0x68
	ldrh r2, [r0]
	ldr r0, _0809BEB0 @ =gRoomControls
	movs r4, #0xa
	ldrsh r1, [r0, r4]
	adds r4, r0, #0
	cmp r2, r1
	bne _0809BE9E
	adds r0, r3, #0
	adds r0, #0x6a
	ldrh r1, [r0]
	movs r2, #0xc
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bne _0809BE9E
	movs r5, #1
_0809BE9E:
	ldrh r1, [r4, #0xa]
	adds r0, r3, #0
	adds r0, #0x68
	strh r1, [r0]
	ldrh r1, [r4, #0xc]
	adds r0, #2
	strh r1, [r0]
	adds r0, r5, #0
	pop {r4, r5, pc}
	.align 2, 0
_0809BEB0: .4byte gRoomControls
