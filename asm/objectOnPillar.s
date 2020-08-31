	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start ObjectOnPillar
ObjectOnPillar: @ 0x08096E10
	push {lr}
	ldr r2, _08096E24 @ =gUnk_08123250
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08096E24: .4byte gUnk_08123250

	thumb_func_start sub_08096E28
sub_08096E28: @ 0x08096E28
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	adds r5, r0, #0
	cmp r5, #0
	bne _08096EBC
	movs r2, #1
	movs r3, #1
	strb r3, [r4, #0xc]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	ldrb r1, [r4, #0x11]
	subs r0, #0x90
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x11]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0x18]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #4
	strb r0, [r1]
	ldr r0, _08096EB4 @ =gUnk_080FD1F4
	str r0, [r4, #0x48]
	strb r3, [r4, #0x16]
	adds r0, r4, #0
	adds r0, #0x72
	strh r5, [r0]
	adds r0, #0xb
	ldrb r0, [r0]
	lsrs r0, r0, #4
	subs r1, #0x2b
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	adds r0, r4, #0
	bl sub_080970F4
	ldr r1, _08096EB8 @ =gUnk_08123264
	ldrb r0, [r4, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0x1e]
	b _08096F04
	.align 2, 0
_08096EB4: .4byte gUnk_080FD1F4
_08096EB8: .4byte gUnk_08123264
_08096EBC:
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r2, [r0]
	adds r0, #1
	ldrb r3, [r0]
	movs r1, #0xf
	adds r0, r1, #0
	ands r0, r3
	lsls r0, r0, #8
	ldr r3, _08096F08 @ =gRoomControls
	orrs r2, r0
	ldrh r0, [r3, #6]
	adds r2, r2, r0
	strh r2, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x7e
	ldrb r0, [r0]
	movs r2, #0x7f
	adds r2, r2, r4
	mov ip, r2
	ldrb r2, [r2]
	ands r1, r2
	lsls r1, r1, #8
	orrs r0, r1
	ldrh r3, [r3, #8]
	adds r0, r0, r3
	strh r0, [r4, #0x32]
	mov r5, ip
	ldrb r0, [r5]
	lsrs r0, r0, #4
	adds r1, r4, #0
	adds r1, #0x38
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080971E0
_08096F04:
	pop {r4, r5, pc}
	.align 2, 0
_08096F08: .4byte gRoomControls

	thumb_func_start sub_08096F0C
sub_08096F0C: @ 0x08096F0C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08097194
	cmp r0, #0
	bne _08096F2E
	adds r0, r4, #0
	bl sub_08097008
	cmp r0, #0
	beq _08096F28
	movs r0, #3
	strb r0, [r4, #0xc]
	b _08096F2E
_08096F28:
	adds r0, r4, #0
	bl sub_08078930
_08096F2E:
	pop {r4, pc}

	thumb_func_start sub_08096F30
sub_08096F30: @ 0x08096F30
	push {lr}
	adds r2, r0, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _08096F44
	adds r0, r2, #0
	bl sub_08097144
	b _08096F62
_08096F44:
	ldr r0, _08096F64 @ =gPlayerState
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _08096F50
	movs r0, #6
	strb r0, [r2, #0xd]
_08096F50:
	ldr r0, _08096F68 @ =gUnk_0812326C
	ldrb r1, [r2, #0xd]
	subs r1, #5
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
_08096F62:
	pop {pc}
	.align 2, 0
_08096F64: .4byte gPlayerState
_08096F68: .4byte gUnk_0812326C

	thumb_func_start sub_08096F6C
sub_08096F6C: @ 0x08096F6C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x72
	ldrh r0, [r1]
	cmp r0, #0
	bne _08096F98
	movs r0, #1
	strh r0, [r1]
	ldr r1, _08096FD8 @ =gPlayerEntity
	ldrb r0, [r1, #0x14]
	ldr r2, _08096FDC @ =gUnk_08123274
	adds r0, r0, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r0, r3]
	lsls r3, r3, #0x10
	adds r0, r4, #0
	bl PositionRelative
_08096F98:
	adds r0, r4, #0
	bl sub_08097008
	bl sub_080896B0
	cmp r0, #0
	beq _08096FD4
	ldr r2, _08096FE0 @ =gPlayerState
	movs r3, #0
	movs r0, #0x10
	strb r0, [r2, #0xc]
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #0x20
	strb r0, [r1]
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	ldr r0, _08096FD8 @ =gPlayerEntity
	strh r3, [r0, #0x2c]
	strh r3, [r0, #0x30]
	ldrb r0, [r0, #0x14]
	movs r1, #4
	eors r0, r1
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08097098
_08096FD4:
	pop {r4, pc}
	.align 2, 0
_08096FD8: .4byte gPlayerEntity
_08096FDC: .4byte gUnk_08123274
_08096FE0: .4byte gPlayerState

	thumb_func_start sub_08096FE4
sub_08096FE4: @ 0x08096FE4
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #0xc]
	adds r0, #0x72
	strh r2, [r0]
	bx lr

	thumb_func_start sub_08096FF0
sub_08096FF0: @ 0x08096FF0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08097144
	cmp r0, #0
	beq _08097000
	movs r0, #1
	strb r0, [r4, #0xc]
_08097000:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_122
nullsub_122: @ 0x08097004
	bx lr
	.align 2, 0

	thumb_func_start sub_08097008
sub_08097008: @ 0x08097008
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x74
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl GetTileType
	adds r4, r0, #0
	ldr r0, _08097048 @ =0x00004036
	cmp r4, r0
	beq _08097070
	adds r0, r4, #0
	bl sub_08097074
	cmp r0, #1
	beq _0809704C
	cmp r0, #2
	beq _08097062
	movs r0, #0xf
	movs r1, #4
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _0809706A
	adds r0, r5, #0
	bl CopyPosition
	b _0809706A
	.align 2, 0
_08097048: .4byte 0x00004036
_0809704C:
	adds r0, r4, #0
	subs r0, #0x37
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #3
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_08097098
	movs r0, #1
	b _08097072
_08097062:
	adds r0, r5, #0
	adds r0, #0x70
	strh r4, [r0]
	b _08097070
_0809706A:
	adds r0, r5, #0
	bl DeleteEntity
_08097070:
	movs r0, #0
_08097072:
	pop {r4, r5, pc}

	thumb_func_start sub_08097074
sub_08097074: @ 0x08097074
	push {lr}
	adds r2, r0, #0
	ldr r1, _0809707C @ =gUnk_0812327C
	b _0809708C
	.align 2, 0
_0809707C: .4byte gUnk_0812327C
_08097080:
	ldrh r0, [r1]
	cmp r0, r2
	bne _0809708A
	ldrh r0, [r1, #2]
	b _08097094
_0809708A:
	adds r1, #4
_0809708C:
	ldrh r0, [r1]
	cmp r0, #0
	bne _08097080
	movs r0, #0
_08097094:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08097098
sub_08097098: @ 0x08097098
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r1, r6, #0
	adds r1, #0x76
	movs r0, #0x20
	strh r0, [r1]
	adds r0, #0xef
	bl EnqueSFX
	adds r0, r6, #0
	adds r0, #0x70
	ldrh r0, [r0]
	adds r5, r6, #0
	adds r5, #0x74
	ldrh r1, [r5]
	adds r4, r6, #0
	adds r4, #0x38
	ldrb r2, [r4]
	bl SetTile
	ldr r1, _080970F0 @ =gUnk_080B4488
	ldrb r0, [r6, #0x15]
	lsrs r0, r0, #3
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldrh r5, [r5]
	adds r0, r0, r5
	ldrb r1, [r4]
	bl GetTileType
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x79
	beq _080970E4
	cmp r0, #0x77
	bne _080970EC
_080970E4:
	adds r1, r6, #0
	adds r1, #0x63
	movs r0, #2
	strb r0, [r1]
_080970EC:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080970F0: .4byte gUnk_080B4488

	thumb_func_start sub_080970F4
sub_080970F4: @ 0x080970F4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	ldr r2, _0809713C @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r4, #0x32
	ldrsh r0, [r6, r4]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r4, r6, #0
	adds r4, #0x74
	strh r1, [r4]
	ldrh r0, [r4]
	adds r5, r6, #0
	adds r5, #0x38
	ldrb r1, [r5]
	bl sub_080001DA
	adds r1, r6, #0
	adds r1, #0x70
	strh r0, [r1]
	ldr r0, _08097140 @ =0x00004036
	ldrh r1, [r4]
	ldrb r2, [r5]
	bl SetTile
	pop {r4, r5, r6, pc}
	.align 2, 0
_0809713C: .4byte gRoomControls
_08097140: .4byte 0x00004036

	thumb_func_start sub_08097144
sub_08097144: @ 0x08097144
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_0800445C
	adds r0, r4, #0
	bl sub_080002B8
	cmp r0, #0x19
	bne _08097164
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #2
	strb r0, [r1]
_08097164:
	adds r1, r4, #0
	adds r1, #0x76
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08097190
	adds r0, r4, #0
	bl sub_08097194
	cmp r0, #0
	bne _08097190
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #4
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080970F4
	movs r0, #1
	b _08097192
_08097190:
	movs r0, #0
_08097192:
	pop {r4, pc}

	thumb_func_start sub_08097194
sub_08097194: @ 0x08097194
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800442E
	cmp r0, #0
	beq _080971A4
	movs r0, #1
	b _080971DE
_080971A4:
	adds r0, r4, #0
	bl GetTileTypeByEntity
	adds r1, r0, #0
	subs r0, #0x71
	cmp r0, #1
	bls _080971B8
	ldr r0, _080971D4 @ =0x00004020
	cmp r1, r0
	bne _080971DC
_080971B8:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl SetFlag
	ldr r0, _080971D8 @ =0x0000010B
	bl EnqueSFX
	adds r0, r4, #0
	bl sub_080971E0
	movs r0, #1
	b _080971DE
	.align 2, 0
_080971D4: .4byte 0x00004020
_080971D8: .4byte 0x0000010B
_080971DC:
	movs r0, #0
_080971DE:
	pop {r4, pc}

	thumb_func_start sub_080971E0
sub_080971E0: @ 0x080971E0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xf
	movs r1, #0x11
	movs r2, #0x40
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08097202
	ldr r2, _0809727C @ =0xFFF80000
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r0, r5, #0
	adds r1, r4, #0
	bl PositionRelative
_08097202:
	movs r0, #0xf
	movs r1, #0x11
	movs r2, #0x40
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08097222
	movs r2, #0x80
	lsls r2, r2, #0xc
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r0, r5, #0
	adds r1, r4, #0
	bl PositionRelative
_08097222:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _08097284
	cmp r0, #1
	ble _08097234
	cmp r0, #2
	beq _080972C4
	cmp r0, #3
	beq _08097304
_08097234:
	movs r0, #4
	strb r0, [r5, #0xc]
	movs r0, #1
	strb r0, [r5, #0x1e]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	ldr r2, _08097280 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r4, #0x32
	ldrsh r0, [r5, r4]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r2, [r0]
	movs r0, #0
	bl SetTile
_08097274:
	bl DeleteThisEntity
	b _08097346
	.align 2, 0
_0809727C: .4byte 0xFFF80000
_08097280: .4byte gRoomControls
_08097284:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r3, _080972C0 @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r4, r0, #4
	movs r2, #0x3f
	ands r4, r2
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	adds r0, r4, #0
	bl sub_08097348
	cmp r0, #0
	bne _08097274
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r2, [r0]
	movs r0, #0x73
	adds r1, r4, #0
	bl SetTileType
	b _08097274
	.align 2, 0
_080972C0: .4byte gRoomControls
_080972C4:
	movs r0, #0x2f
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08097274
	ldrh r2, [r5, #0x2e]
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	adds r0, #8
	strh r0, [r4, #0x2e]
	ldrh r0, [r5, #0x32]
	ands r1, r0
	adds r1, #8
	strh r1, [r4, #0x32]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x84
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x86
	strh r1, [r0]
	b _08097274
_08097304:
	movs r0, #0x2f
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08097342
	ldrh r2, [r5, #0x2e]
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	adds r0, #8
	strh r0, [r4, #0x2e]
	ldrh r0, [r5, #0x32]
	ands r1, r0
	adds r1, #8
	strh r1, [r4, #0x32]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x84
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x86
	strh r1, [r0]
_08097342:
	bl DeleteThisEntity
_08097346:
	pop {r4, r5, pc}

	thumb_func_start sub_08097348
sub_08097348: @ 0x08097348
	push {lr}
	adds r3, r0, #0
	ldr r1, _08097360 @ =gUnk_02017660
	movs r2, #0
_08097350:
	ldrh r0, [r1, #4]
	cmp r0, r3
	bne _08097364
	ldrb r0, [r1, #1]
	bl CheckLocalFlag
	b _0809736E
	.align 2, 0
_08097360: .4byte gUnk_02017660
_08097364:
	adds r2, #1
	adds r1, #8
	cmp r2, #7
	bls _08097350
	movs r0, #0
_0809736E:
	pop {pc}
