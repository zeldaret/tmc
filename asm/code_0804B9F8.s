	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0804EB54
sub_0804EB54: @ 0x0804EB54
	ldr r2, _0804EB64 @ =gArea
	ldrb r1, [r2]
	movs r0, #0x48
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	bx lr
	.align 2, 0
_0804EB64: .4byte gArea

	thumb_func_start nullsub_391
nullsub_391: @ 0x0804EB68
	bx lr
	.align 2, 0

	thumb_func_start sub_0804EB6C
sub_0804EB6C: @ 0x0804EB6C
	ldr r2, _0804EB7C @ =gArea
	ldrb r1, [r2]
	movs r0, #0x48
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	bx lr
	.align 2, 0
_0804EB7C: .4byte gArea

	thumb_func_start nullsub_392
nullsub_392: @ 0x0804EB80
	bx lr
	.align 2, 0

	thumb_func_start sub_0804EB84
sub_0804EB84: @ 0x0804EB84
	ldr r2, _0804EB94 @ =gArea
	ldrb r1, [r2]
	movs r0, #0x48
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	bx lr
	.align 2, 0
_0804EB94: .4byte gArea

	thumb_func_start nullsub_393
nullsub_393: @ 0x0804EB98
	bx lr
	.align 2, 0

	thumb_func_start sub_0804EB9C
sub_0804EB9C: @ 0x0804EB9C
	push {lr}
	movs r0, #0x58
	movs r1, #5
	bl sub_0801DD58
	ldr r2, _0804EBB4 @ =gArea
	ldrb r1, [r2]
	movs r0, #0x48
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	pop {pc}
	.align 2, 0
_0804EBB4: .4byte gArea

	thumb_func_start nullsub_394
nullsub_394: @ 0x0804EBB8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804EBBC
sub_0804EBBC: @ 0x0804EBBC
	push {lr}
	movs r0, #0x58
	movs r1, #6
	bl sub_0801DD58
	ldr r2, _0804EBD4 @ =gArea
	ldrb r1, [r2]
	movs r0, #0x48
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	pop {pc}
	.align 2, 0
_0804EBD4: .4byte gArea

	thumb_func_start nullsub_395
nullsub_395: @ 0x0804EBD8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804EBDC
sub_0804EBDC: @ 0x0804EBDC
	push {lr}
	movs r0, #0x51
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804EBF2
	ldr r0, _0804EBF8 @ =gRoomVars
	ldr r1, _0804EBFC @ =gUnk_080F4EB0
	str r1, [r0, #0x6c]
	movs r1, #0
	str r1, [r0, #0x74]
_0804EBF2:
	movs r0, #1
	pop {pc}
	.align 2, 0
_0804EBF8: .4byte gRoomVars
_0804EBFC: .4byte gUnk_080F4EB0

	thumb_func_start sub_0804EC00
sub_0804EC00: @ 0x0804EC00
	push {lr}
	movs r0, #0x51
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804EC1A
	ldr r0, _0804EC48 @ =gArea
	ldr r2, _0804EC4C @ =0x00000864
	adds r1, r0, r2
	subs r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
_0804EC1A:
	movs r0, #0x14
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804EC2A
	ldr r0, _0804EC50 @ =gUnk_080F4D50
	bl LoadRoomEntityList
_0804EC2A:
	movs r0, #0x3e
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804EC64
	movs r0, #0x3b
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804EC58
	ldr r0, _0804EC54 @ =gUnk_080F4DB0
	bl LoadRoomEntityList
	b _0804EC5E
	.align 2, 0
_0804EC48: .4byte gArea
_0804EC4C: .4byte 0x00000864
_0804EC50: .4byte gUnk_080F4D50
_0804EC54: .4byte gUnk_080F4DB0
_0804EC58:
	ldr r0, _0804EC84 @ =gUnk_080F4DD0
	bl LoadRoomEntityList
_0804EC5E:
	ldr r0, _0804EC88 @ =gUnk_080F4DF0
	bl LoadRoomEntityList
_0804EC64:
	movs r0, #0x4e
	bl CheckKinstoneFused
	cmp r0, #0
	beq _0804EC74
	ldr r0, _0804EC8C @ =gUnk_080F4F10
	bl LoadRoomEntityList
_0804EC74:
	ldr r0, _0804EC90 @ =gUnk_02002A40
	ldr r0, [r0, #0x40]
	cmp r0, #0
	blt _0804EC82
	ldr r0, _0804EC94 @ =gUnk_080F4E10
	bl LoadRoomEntityList
_0804EC82:
	pop {pc}
	.align 2, 0
_0804EC84: .4byte gUnk_080F4DD0
_0804EC88: .4byte gUnk_080F4DF0
_0804EC8C: .4byte gUnk_080F4F10
_0804EC90: .4byte gUnk_02002A40
_0804EC94: .4byte gUnk_080F4E10

	thumb_func_start sub_0804EC98
sub_0804EC98: @ 0x0804EC98
	push {lr}
	ldr r0, _0804ECAC @ =gUnk_02002A40
	ldr r0, [r0, #0x40]
	cmp r0, #0
	blt _0804ECA8
	ldr r0, _0804ECB0 @ =gUnk_080F4E10
	bl LoadRoomEntityList
_0804ECA8:
	pop {pc}
	.align 2, 0
_0804ECAC: .4byte gUnk_02002A40
_0804ECB0: .4byte gUnk_080F4E10

	thumb_func_start sub_0804ECB4
sub_0804ECB4: @ 0x0804ECB4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_396
nullsub_396: @ 0x0804ECB8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804ECBC
sub_0804ECBC: @ 0x0804ECBC
	push {lr}
	movs r0, #0x51
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804ECDA
	ldr r1, _0804ECE0 @ =gRoomVars
	ldr r0, _0804ECE4 @ =gUnk_080F5348
	str r0, [r1, #0x6c]
	adds r2, r1, #0
	adds r2, #0x88
	ldr r0, _0804ECE8 @ =sub_0804ED18
	str r0, [r2]
	movs r0, #0
	str r0, [r1, #0x74]
_0804ECDA:
	movs r0, #1
	pop {pc}
	.align 2, 0
_0804ECE0: .4byte gRoomVars
_0804ECE4: .4byte gUnk_080F5348
_0804ECE8: .4byte sub_0804ED18

	thumb_func_start sub_0804ECEC
sub_0804ECEC: @ 0x0804ECEC
	push {lr}
	movs r0, #2
	bl GetInventoryValue
	cmp r0, #0
	beq _0804ED0E
	ldr r0, _0804ED10 @ =gUnk_080F5328
	bl LoadRoomEntityList
	movs r0, #0x14
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804ED0E
	ldr r0, _0804ED14 @ =gUnk_080F5308
	bl LoadRoomEntityList
_0804ED0E:
	pop {pc}
	.align 2, 0
_0804ED10: .4byte gUnk_080F5328
_0804ED14: .4byte gUnk_080F5308

	thumb_func_start sub_0804ED18
sub_0804ED18: @ 0x0804ED18
	ldr r0, _0804ED28 @ =gArea
	ldr r2, _0804ED2C @ =0x00000864
	adds r1, r0, r2
	subs r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	bx lr
	.align 2, 0
_0804ED28: .4byte gArea
_0804ED2C: .4byte 0x00000864

	thumb_func_start sub_0804ED30
sub_0804ED30: @ 0x0804ED30
	movs r0, #1
	bx lr

	thumb_func_start sub_0804ED34
sub_0804ED34: @ 0x0804ED34
	push {lr}
	bl sub_080AF2E4
	movs r0, #0x5d
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804ED4E
	ldr r0, _0804ED50 @ =gArea
	ldr r1, _0804ED54 @ =0x00000864
	adds r0, r0, r1
	movs r1, #0x31
	str r1, [r0]
_0804ED4E:
	pop {pc}
	.align 2, 0
_0804ED50: .4byte gArea
_0804ED54: .4byte 0x00000864

	thumb_func_start sub_0804ED58
sub_0804ED58: @ 0x0804ED58
	movs r0, #1
	bx lr

	thumb_func_start sub_0804ED5C
sub_0804ED5C: @ 0x0804ED5C
	push {lr}
	movs r0, #0x79
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804ED6E
	ldr r0, _0804EDA8 @ =gUnk_080F54E8
	bl LoadRoomEntityList
_0804ED6E:
	movs r0, #0x7a
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804EDB0
	movs r0, #2
	bl GetInventoryValue
	cmp r0, #0
	beq _0804EE16
	movs r0, #3
	bl GetInventoryValue
	cmp r0, #0
	bne _0804EE16
	movs r0, #0x40
	bl GetInventoryValue
	cmp r0, #0
	beq _0804EE16
	movs r0, #0x41
	bl GetInventoryValue
	cmp r0, #0
	beq _0804EE16
	ldr r0, _0804EDAC @ =gUnk_080F5508
	bl LoadRoomEntityList
	b _0804EE16
	.align 2, 0
_0804EDA8: .4byte gUnk_080F54E8
_0804EDAC: .4byte gUnk_080F5508
_0804EDB0:
	movs r0, #0x7b
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804EDE4
	movs r0, #3
	bl GetInventoryValue
	cmp r0, #0
	beq _0804EE16
	movs r0, #4
	bl GetInventoryValue
	cmp r0, #0
	bne _0804EE16
	movs r0, #0x42
	bl GetInventoryValue
	cmp r0, #0
	beq _0804EE16
	ldr r0, _0804EDE0 @ =gUnk_080F5558
	bl LoadRoomEntityList
	b _0804EE16
	.align 2, 0
_0804EDE0: .4byte gUnk_080F5558
_0804EDE4:
	movs r0, #0x7c
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804EE10
	movs r0, #6
	bl GetInventoryValue
	cmp r0, #0
	bne _0804EE16
	movs r0, #0x43
	bl GetInventoryValue
	cmp r0, #0
	beq _0804EE16
	ldr r0, _0804EE0C @ =gUnk_080F5598
	bl LoadRoomEntityList
	b _0804EE16
	.align 2, 0
_0804EE0C: .4byte gUnk_080F5598
_0804EE10:
	ldr r0, _0804EE5C @ =gUnk_080F55D8
	bl LoadRoomEntityList
_0804EE16:
	movs r0, #0x7a
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804EE26
	ldr r0, _0804EE60 @ =gUnk_080F5528
	bl LoadRoomEntityList
_0804EE26:
	movs r0, #0x7b
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804EE36
	ldr r0, _0804EE64 @ =gUnk_080F5578
	bl LoadRoomEntityList
_0804EE36:
	movs r0, #0x7c
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804EE46
	ldr r0, _0804EE68 @ =gUnk_080F55B8
	bl LoadRoomEntityList
_0804EE46:
	movs r0, #0x5d
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804EE5A
	ldr r0, _0804EE6C @ =gArea
	ldr r1, _0804EE70 @ =0x00000864
	adds r0, r0, r1
	movs r1, #0x31
	str r1, [r0]
_0804EE5A:
	pop {pc}
	.align 2, 0
_0804EE5C: .4byte gUnk_080F55D8
_0804EE60: .4byte gUnk_080F5528
_0804EE64: .4byte gUnk_080F5578
_0804EE68: .4byte gUnk_080F55B8
_0804EE6C: .4byte gArea
_0804EE70: .4byte 0x00000864

	thumb_func_start sub_0804EE74
sub_0804EE74: @ 0x0804EE74
	movs r0, #1
	bx lr

	thumb_func_start sub_0804EE78
sub_0804EE78: @ 0x0804EE78
	push {lr}
	movs r0, #0x78
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804EE94
	movs r0, #0x7c
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804EE94
	ldr r0, _0804EEAC @ =gUnk_080F5660
	bl LoadRoomEntityList
_0804EE94:
	movs r0, #0x5d
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804EEA8
	ldr r0, _0804EEB0 @ =gArea
	ldr r1, _0804EEB4 @ =0x00000864
	adds r0, r0, r1
	movs r1, #0x31
	str r1, [r0]
_0804EEA8:
	pop {pc}
	.align 2, 0
_0804EEAC: .4byte gUnk_080F5660
_0804EEB0: .4byte gArea
_0804EEB4: .4byte 0x00000864

	thumb_func_start sub_0804EEB8
sub_0804EEB8: @ 0x0804EEB8
	movs r0, #1
	bx lr

	thumb_func_start sub_0804EEBC
sub_0804EEBC: @ 0x0804EEBC
	push {lr}
	ldr r0, _0804EEF4 @ =gUnk_080F5758
	bl LoadRoomEntityList
	movs r0, #0x36
	bl GetInventoryValue
	cmp r0, #0
	bne _0804EEE2
	movs r0, #0x80
	lsls r0, r0, #2
	movs r1, #0x8f
	bl CheckLocalFlagByOffset
	cmp r0, #0
	beq _0804EEE2
	ldr r0, _0804EEF8 @ =gUnk_080F57E8
	bl LoadRoomEntityList
_0804EEE2:
	movs r0, #0x55
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804EF00
	ldr r0, _0804EEFC @ =gUnk_080F57A8
	bl LoadRoomEntityList
	b _0804EF54
	.align 2, 0
_0804EEF4: .4byte gUnk_080F5758
_0804EEF8: .4byte gUnk_080F57E8
_0804EEFC: .4byte gUnk_080F57A8
_0804EF00:
	ldr r1, _0804EF34 @ =gBombBagSizes
	ldr r0, _0804EF38 @ =gUnk_02002A40
	adds r0, #0xae
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0x1d
	bls _0804EF16
	ldr r0, _0804EF3C @ =gUnk_080F57C8
	bl LoadRoomEntityList
_0804EF16:
	movs r0, #0xb
	bl GetInventoryValue
	cmp r0, #0
	bne _0804EF44
	movs r0, #0xc
	bl GetInventoryValue
	cmp r0, #0
	bne _0804EF44
	ldr r0, _0804EF40 @ =gUnk_080F5888
	bl LoadRoomEntityList
	b _0804EF54
	.align 2, 0
_0804EF34: .4byte gBombBagSizes
_0804EF38: .4byte gUnk_02002A40
_0804EF3C: .4byte gUnk_080F57C8
_0804EF40: .4byte gUnk_080F5888
_0804EF44:
	movs r0, #0xcd
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804EF54
	ldr r0, _0804EF80 @ =gUnk_080F58A8
	bl LoadRoomEntityList
_0804EF54:
	movs r0, #9
	bl GetInventoryValue
	cmp r0, #0
	bne _0804EF68
	movs r0, #4
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804EF92
_0804EF68:
	ldr r0, _0804EF84 @ =gUnk_080F5868
	bl LoadRoomEntityList
	movs r0, #0x56
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804EF8C
	ldr r0, _0804EF88 @ =gUnk_080F5828
	bl LoadRoomEntityList
	b _0804EF92
	.align 2, 0
_0804EF80: .4byte gUnk_080F58A8
_0804EF84: .4byte gUnk_080F5868
_0804EF88: .4byte gUnk_080F5828
_0804EF8C:
	ldr r0, _0804EFA4 @ =gUnk_080F5848
	bl LoadRoomEntityList
_0804EF92:
	ldr r0, _0804EFA8 @ =gUnk_02002A40
	adds r0, #0xbb
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804EFA2
	ldr r0, _0804EFAC @ =gUnk_080F5788
	bl LoadRoomEntityList
_0804EFA2:
	pop {pc}
	.align 2, 0
_0804EFA4: .4byte gUnk_080F5848
_0804EFA8: .4byte gUnk_02002A40
_0804EFAC: .4byte gUnk_080F5788

	thumb_func_start sub_0804EFB0
sub_0804EFB0: @ 0x0804EFB0
	movs r0, #1
	bx lr

	thumb_func_start nullsub_397
nullsub_397: @ 0x0804EFB4
	bx lr
	.align 2, 0

	thumb_func_start sub_0804EFB8
sub_0804EFB8: @ 0x0804EFB8
	movs r0, #1
	bx lr

	thumb_func_start sub_0804EFBC
sub_0804EFBC: @ 0x0804EFBC
	push {lr}
	movs r0, #0x38
	bl GetInventoryValue
	cmp r0, #1
	bne _0804EFCE
	ldr r0, _0804EFD0 @ =gUnk_080F5B3C
	bl LoadRoomEntityList
_0804EFCE:
	pop {pc}
	.align 2, 0
_0804EFD0: .4byte gUnk_080F5B3C

	thumb_func_start sub_0804EFD4
sub_0804EFD4: @ 0x0804EFD4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_398
nullsub_398: @ 0x0804EFD8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804EFDC
sub_0804EFDC: @ 0x0804EFDC
	push {lr}
	movs r0, #0x50
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804EFEE
	ldr r1, _0804EFF4 @ =gUnk_030010A0
	movs r0, #5
	strb r0, [r1, #0xf]
_0804EFEE:
	movs r0, #1
	pop {pc}
	.align 2, 0
_0804EFF4: .4byte gUnk_030010A0

	thumb_func_start sub_0804EFF8
sub_0804EFF8: @ 0x0804EFF8
	push {lr}
	ldr r0, _0804F020 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	cmp r0, #7
	bls _0804F008
	ldr r0, _0804F024 @ =gUnk_080F5DD0
	bl LoadRoomEntityList
_0804F008:
	movs r0, #0x50
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804F01C
	ldr r2, _0804F028 @ =gUnk_08011C50
	movs r0, #1
	movs r1, #2
	bl sub_080751E8
_0804F01C:
	pop {pc}
	.align 2, 0
_0804F020: .4byte gUnk_02002A40
_0804F024: .4byte gUnk_080F5DD0
_0804F028: .4byte gUnk_08011C50

	thumb_func_start sub_0804F02C
sub_0804F02C: @ 0x0804F02C
	movs r0, #1
	bx lr

	thumb_func_start sub_0804F030
sub_0804F030: @ 0x0804F030
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0xd1
	bl CheckLocalFlagByOffset
	cmp r0, #0
	bne _0804F046
	ldr r0, _0804F048 @ =gUnk_080F5E68
	bl LoadRoomEntityList
_0804F046:
	pop {pc}
	.align 2, 0
_0804F048: .4byte gUnk_080F5E68

	thumb_func_start sub_0804F04C
sub_0804F04C: @ 0x0804F04C
	movs r0, #1
	bx lr

	thumb_func_start sub_0804F050
sub_0804F050: @ 0x0804F050
	push {lr}
	ldr r0, _0804F074 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	cmp r0, #4
	bls _0804F060
	ldr r0, _0804F078 @ =gUnk_080F5F38
	bl LoadRoomEntityList
_0804F060:
	movs r0, #0x92
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804F080
	ldr r0, _0804F07C @ =gUnk_080F5F58
	bl LoadRoomEntityList
	b _0804F086
	.align 2, 0
_0804F074: .4byte gUnk_02002A40
_0804F078: .4byte gUnk_080F5F38
_0804F07C: .4byte gUnk_080F5F58
_0804F080:
	ldr r0, _0804F088 @ =gUnk_080F5F78
	bl LoadRoomEntityList
_0804F086:
	pop {pc}
	.align 2, 0
_0804F088: .4byte gUnk_080F5F78

	thumb_func_start sub_0804F08C
sub_0804F08C: @ 0x0804F08C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_399
nullsub_399: @ 0x0804F090
	bx lr
	.align 2, 0

	thumb_func_start sub_0804F094
sub_0804F094: @ 0x0804F094
	movs r0, #1
	bx lr

	thumb_func_start nullsub_400
nullsub_400: @ 0x0804F098
	bx lr
	.align 2, 0

	thumb_func_start sub_0804F09C
sub_0804F09C: @ 0x0804F09C
	push {lr}
	movs r0, #0x24
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804F0BC
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0xdc
	bl CheckLocalFlagByOffset
	cmp r0, #0
	beq _0804F0BC
	movs r0, #0x58
	bl SetGlobalFlag
_0804F0BC:
	movs r0, #1
	pop {pc}

	thumb_func_start sub_0804F0C0
sub_0804F0C0: @ 0x0804F0C0
	push {r4, lr}
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0xdc
	bl CheckLocalFlagByOffset
	cmp r0, #0
	beq _0804F0D6
	movs r0, #0x90
	bl SetLocalFlag
_0804F0D6:
	movs r0, #0xf
	bl CheckKinstoneFused
	cmp r0, #0
	beq _0804F0E6
	ldr r0, _0804F118 @ =gUnk_080F61BC
	bl LoadRoomEntityList
_0804F0E6:
	movs r0, #0x58
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804F106
	ldr r4, _0804F11C @ =0x00004072
	ldr r1, _0804F120 @ =0x000004C7
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F124 @ =0x00000507
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
_0804F106:
	movs r2, #0xf4
	lsls r2, r2, #1
	movs r3, #0xac
	lsls r3, r3, #1
	movs r0, #8
	movs r1, #0
	bl sub_08052CA4
	pop {r4, pc}
	.align 2, 0
_0804F118: .4byte gUnk_080F61BC
_0804F11C: .4byte 0x00004072
_0804F120: .4byte 0x000004C7
_0804F124: .4byte 0x00000507

	thumb_func_start sub_0804F128
sub_0804F128: @ 0x0804F128
	movs r0, #1
	bx lr

	thumb_func_start sub_0804F12C
sub_0804F12C: @ 0x0804F12C
	push {lr}
	movs r0, #0x58
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804F144
	ldr r0, _0804F140 @ =gUnk_080F62E4
	bl LoadRoomEntityList
	b _0804F154
	.align 2, 0
_0804F140: .4byte gUnk_080F62E4
_0804F144:
	movs r0, #0x63
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804F154
	ldr r0, _0804F158 @ =gUnk_080F6324
	bl LoadRoomEntityList
_0804F154:
	pop {pc}
	.align 2, 0
_0804F158: .4byte gUnk_080F6324

	thumb_func_start sub_0804F15C
sub_0804F15C: @ 0x0804F15C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_401
nullsub_401: @ 0x0804F160
	bx lr
	.align 2, 0

	thumb_func_start sub_0804F164
sub_0804F164: @ 0x0804F164
	movs r0, #1
	bx lr

	thumb_func_start sub_0804F168
sub_0804F168: @ 0x0804F168
	push {lr}
	movs r0, #0xb1
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804F180
	ldr r0, _0804F17C @ =gUnk_080F6564
	bl LoadRoomEntityList
	b _0804F186
	.align 2, 0
_0804F17C: .4byte gUnk_080F6564
_0804F180:
	ldr r0, _0804F188 @ =gUnk_080F6584
	bl LoadRoomEntityList
_0804F186:
	pop {pc}
	.align 2, 0
_0804F188: .4byte gUnk_080F6584

	thumb_func_start sub_0804F18C
sub_0804F18C: @ 0x0804F18C
	movs r0, #1
	bx lr

	thumb_func_start sub_0804F190
sub_0804F190: @ 0x0804F190
	push {lr}
	movs r0, #5
	bl sub_0805B4D0
	movs r0, #6
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804F1B6
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #5
	bl CheckLocalFlagByOffset
	cmp r0, #0
	bne _0804F1B6
	ldr r0, _0804F1D4 @ =gUnk_080F66AC
	bl LoadRoomEntityList
_0804F1B6:
	movs r2, #0xf4
	lsls r2, r2, #1
	movs r3, #0xac
	lsls r3, r3, #1
	movs r0, #8
	movs r1, #0
	bl sub_08052CA4
	ldr r2, _0804F1D8 @ =gArea
	ldrb r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
	pop {pc}
	.align 2, 0
_0804F1D4: .4byte gUnk_080F66AC
_0804F1D8: .4byte gArea

	thumb_func_start sub_0804F1DC
sub_0804F1DC: @ 0x0804F1DC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_402
nullsub_402: @ 0x0804F1E0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804F1E4
sub_0804F1E4: @ 0x0804F1E4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_403
nullsub_403: @ 0x0804F1E8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804F1EC
sub_0804F1EC: @ 0x0804F1EC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_404
nullsub_404: @ 0x0804F1F0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804F1F4
sub_0804F1F4: @ 0x0804F1F4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_405
nullsub_405: @ 0x0804F1F8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804F1FC
sub_0804F1FC: @ 0x0804F1FC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_406
nullsub_406: @ 0x0804F200
	bx lr
	.align 2, 0

	thumb_func_start sub_0804F204
sub_0804F204: @ 0x0804F204
	movs r0, #1
	bx lr

	thumb_func_start nullsub_407
nullsub_407: @ 0x0804F208
	bx lr
	.align 2, 0

	thumb_func_start sub_0804F20C
sub_0804F20C: @ 0x0804F20C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_408
nullsub_408: @ 0x0804F210
	bx lr
	.align 2, 0

	thumb_func_start sub_0804F214
sub_0804F214: @ 0x0804F214
	movs r0, #1
	bx lr

	thumb_func_start nullsub_409
nullsub_409: @ 0x0804F218
	bx lr
	.align 2, 0

	thumb_func_start sub_0804F21C
sub_0804F21C: @ 0x0804F21C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_410
nullsub_410: @ 0x0804F220
	bx lr
	.align 2, 0

	thumb_func_start sub_0804F224
sub_0804F224: @ 0x0804F224
	movs r0, #1
	bx lr

	thumb_func_start nullsub_411
nullsub_411: @ 0x0804F228
	bx lr
	.align 2, 0

	thumb_func_start sub_0804F22C
sub_0804F22C: @ 0x0804F22C
	movs r0, #1
	bx lr

	thumb_func_start sub_0804F230
sub_0804F230: @ 0x0804F230
	push {lr}
	movs r0, #0
	bl sub_0805ADD8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804F23C
sub_0804F23C: @ 0x0804F23C
	push {lr}
	movs r0, #0x6d
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804F252
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #7
	bl DoFade
_0804F252:
	movs r0, #0x49
	bl SetGlobalFlag
	movs r0, #1
	pop {pc}

	thumb_func_start sub_0804F25C
sub_0804F25C: @ 0x0804F25C
	push {r4, lr}
	movs r0, #0
	bl sub_0805ADD8
	movs r0, #0x6d
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804F27A
	ldr r0, _0804F2B0 @ =gUnk_080F70A8
	bl LoadRoomEntityList
	movs r0, #0x1c
	bl ClearGlobalFlag
_0804F27A:
	movs r0, #0x15
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804F28E
	ldr r0, _0804F2B4 @ =gArea
	ldr r1, _0804F2B8 @ =0x00000864
	adds r0, r0, r1
	movs r1, #0x10
	str r1, [r0]
_0804F28E:
	ldr r4, _0804F2BC @ =gUnk_02002A40
	ldr r0, [r4, #0x40]
	movs r1, #0x80
	lsls r1, r1, #0x17
	ands r0, r1
	cmp r0, #0
	bne _0804F2A2
	ldr r0, _0804F2C0 @ =gUnk_080F70D8
	bl LoadRoomEntityList
_0804F2A2:
	ldrb r0, [r4, #8]
	cmp r0, #3
	bls _0804F2AE
	ldr r0, _0804F2C4 @ =gUnk_080F7088
	bl LoadRoomEntityList
_0804F2AE:
	pop {r4, pc}
	.align 2, 0
_0804F2B0: .4byte gUnk_080F70A8
_0804F2B4: .4byte gArea
_0804F2B8: .4byte 0x00000864
_0804F2BC: .4byte gUnk_02002A40
_0804F2C0: .4byte gUnk_080F70D8
_0804F2C4: .4byte gUnk_080F7088

	thumb_func_start sub_0804F2C8
sub_0804F2C8: @ 0x0804F2C8
	push {lr}
	ldr r0, _0804F2E0 @ =gUnk_02002A40
	ldr r0, [r0, #0x40]
	movs r1, #0x80
	lsls r1, r1, #0x17
	ands r0, r1
	cmp r0, #0
	bne _0804F2DE
	ldr r0, _0804F2E4 @ =gUnk_080F70D8
	bl LoadRoomEntityList
_0804F2DE:
	pop {pc}
	.align 2, 0
_0804F2E0: .4byte gUnk_02002A40
_0804F2E4: .4byte gUnk_080F70D8

	thumb_func_start sub_0804F2E8
sub_0804F2E8: @ 0x0804F2E8
	movs r0, #1
	bx lr

	thumb_func_start sub_0804F2EC
sub_0804F2EC: @ 0x0804F2EC
	push {lr}
	movs r0, #0
	bl sub_0805ADD8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804F2F8
sub_0804F2F8: @ 0x0804F2F8
	movs r0, #1
	bx lr

	thumb_func_start sub_0804F2FC
sub_0804F2FC: @ 0x0804F2FC
	push {lr}
	movs r0, #0
	bl sub_0805ADD8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804F308
sub_0804F308: @ 0x0804F308
	push {lr}
	movs r0, #0x11
	bl GetInventoryValue
	cmp r0, #0
	beq _0804F324
	movs r0, #0x12
	bl GetInventoryValue
	cmp r0, #0
	bne _0804F324
	ldr r1, _0804F328 @ =gRoomVars
	ldr r0, _0804F32C @ =gUnk_080F7680
	str r0, [r1, #0x74]
_0804F324:
	movs r0, #1
	pop {pc}
	.align 2, 0
_0804F328: .4byte gRoomVars
_0804F32C: .4byte gUnk_080F7680

	thumb_func_start sub_0804F330
sub_0804F330: @ 0x0804F330
	push {r4, lr}
	movs r0, #0
	bl sub_0805ADD8
	ldr r0, _0804F38C @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	cmp r0, #3
	bls _0804F346
	ldr r0, _0804F390 @ =gUnk_080F7500
	bl LoadRoomEntityList
_0804F346:
	movs r0, #0x11
	bl GetInventoryValue
	cmp r0, #0
	beq _0804F38A
	movs r0, #0x12
	bl GetInventoryValue
	cmp r0, #0
	bne _0804F38A
	ldr r0, _0804F394 @ =gUnk_080F7550
	bl LoadRoomEntityList
	ldr r4, _0804F398 @ =0x00004072
	ldr r1, _0804F39C @ =0x00000311
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F3A0 @ =0x00000351
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F3A4 @ =0x000003D9
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F3A8 @ =0x00000419
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
_0804F38A:
	pop {r4, pc}
	.align 2, 0
_0804F38C: .4byte gUnk_02002A40
_0804F390: .4byte gUnk_080F7500
_0804F394: .4byte gUnk_080F7550
_0804F398: .4byte 0x00004072
_0804F39C: .4byte 0x00000311
_0804F3A0: .4byte 0x00000351
_0804F3A4: .4byte 0x000003D9
_0804F3A8: .4byte 0x00000419

	thumb_func_start sub_0804F3AC
sub_0804F3AC: @ 0x0804F3AC
	movs r0, #1
	bx lr

	thumb_func_start sub_0804F3B0
sub_0804F3B0: @ 0x0804F3B0
	push {lr}
	movs r0, #0
	bl sub_0805ADD8
	movs r0, #0x80
	lsls r0, r0, #2
	movs r1, #0x8f
	bl CheckLocalFlagByOffset
	cmp r0, #0
	beq _0804F3DC
	movs r0, #0x1d
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804F3EC
	ldr r0, _0804F3D8 @ =gUnk_080F77C0
	bl LoadRoomEntityList
	b _0804F3EC
	.align 2, 0
_0804F3D8: .4byte gUnk_080F77C0
_0804F3DC:
	movs r0, #0x40
	bl GetInventoryValue
	cmp r0, #0
	beq _0804F3EC
	ldr r0, _0804F444 @ =gUnk_080F77F0
	bl LoadRoomEntityList
_0804F3EC:
	movs r0, #0x15
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804F406
	movs r0, #0x40
	bl GetInventoryValue
	cmp r0, #0
	bne _0804F406
	ldr r0, _0804F448 @ =gUnk_080F7810
	bl LoadRoomEntityList
_0804F406:
	movs r0, #0x29
	bl CheckKinstoneFused
	cmp r0, #0
	bne _0804F42A
	ldr r0, _0804F44C @ =gUnk_080F7860
	bl LoadRoomEntityList
	ldr r0, _0804F450 @ =0x00004072
	ldr r1, _0804F454 @ =0x00000D88
	movs r2, #1
	bl SetTile
	ldr r0, _0804F458 @ =0x00004096
	ldr r1, _0804F45C @ =0x00000DC8
	movs r2, #1
	bl SetTile
_0804F42A:
	ldr r0, _0804F460 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	cmp r0, #3
	bls _0804F442
	movs r0, #0x5c
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804F442
	ldr r0, _0804F464 @ =gUnk_080F78A0
	bl LoadRoomEntityList
_0804F442:
	pop {pc}
	.align 2, 0
_0804F444: .4byte gUnk_080F77F0
_0804F448: .4byte gUnk_080F7810
_0804F44C: .4byte gUnk_080F7860
_0804F450: .4byte 0x00004072
_0804F454: .4byte 0x00000D88
_0804F458: .4byte 0x00004096
_0804F45C: .4byte 0x00000DC8
_0804F460: .4byte gUnk_02002A40
_0804F464: .4byte gUnk_080F78A0

	thumb_func_start sub_0804F468
sub_0804F468: @ 0x0804F468
	push {lr}
	movs r0, #0x15
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804F48A
	movs r0, #0x11
	bl GetInventoryValue
	cmp r0, #0
	bne _0804F48A
	ldr r0, _0804F4D0 @ =gRoomVars
	ldr r1, _0804F4D4 @ =gUnk_080F7CD0
	str r1, [r0, #0x6c]
	adds r0, #0x88
	ldr r1, _0804F4D8 @ =sub_0804F5E8
	str r1, [r0]
_0804F48A:
	movs r0, #3
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804F4BA
	movs r0, #3
	bl GetInventoryValue
	cmp r0, #0
	beq _0804F4BA
	movs r0, #0x8c
	bl CheckLocalFlag
	adds r3, r0, #0
	cmp r3, #0
	bne _0804F4BA
	ldr r1, _0804F4D0 @ =gRoomVars
	ldr r0, _0804F4DC @ =gUnk_080F7C80
	str r0, [r1, #0x6c]
	adds r2, r1, #0
	adds r2, #0x88
	ldr r0, _0804F4E0 @ =sub_0804F4E4
	str r0, [r2]
	str r3, [r1, #0x74]
_0804F4BA:
	movs r0, #0x15
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804F4CA
	movs r0, #0x64
	bl ClearGlobalFlag
_0804F4CA:
	movs r0, #1
	pop {pc}
	.align 2, 0
_0804F4D0: .4byte gRoomVars
_0804F4D4: .4byte gUnk_080F7CD0
_0804F4D8: .4byte sub_0804F5E8
_0804F4DC: .4byte gUnk_080F7C80
_0804F4E0: .4byte sub_0804F4E4

	thumb_func_start sub_0804F4E4
sub_0804F4E4: @ 0x0804F4E4
	push {lr}
	movs r0, #0
	bl sub_0805ADD8
	bl sub_0804F578
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804F4F4
sub_0804F4F4: @ 0x0804F4F4
	push {r4, lr}
	bl sub_0804F4E4
	movs r0, #0x8b
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804F540
	ldr r0, _0804F558 @ =gUnk_080F7D70
	bl LoadRoomEntityList
	movs r4, #0xba
	lsls r4, r4, #1
	ldr r1, _0804F55C @ =0x000007A2
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F560 @ =0x000007A3
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F564 @ =0x000007A5
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F568 @ =0x000007A6
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F56C @ =0x000007A7
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
_0804F540:
	movs r0, #0x15
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804F554
	ldr r0, _0804F570 @ =gArea
	ldr r1, _0804F574 @ =0x00000864
	adds r0, r0, r1
	movs r1, #0x13
	str r1, [r0]
_0804F554:
	pop {r4, pc}
	.align 2, 0
_0804F558: .4byte gUnk_080F7D70
_0804F55C: .4byte 0x000007A2
_0804F560: .4byte 0x000007A3
_0804F564: .4byte 0x000007A5
_0804F568: .4byte 0x000007A6
_0804F56C: .4byte 0x000007A7
_0804F570: .4byte gArea
_0804F574: .4byte 0x00000864

	thumb_func_start sub_0804F578
sub_0804F578: @ 0x0804F578
	push {lr}
	movs r0, #0x8e
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804F590
	ldr r0, _0804F58C @ =gUnk_080F7DC0
	bl LoadRoomEntityList
	b _0804F5CC
	.align 2, 0
_0804F58C: .4byte gUnk_080F7DC0
_0804F590:
	ldr r1, _0804F5D0 @ =0x0000094A
	movs r0, #0x37
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F5D4 @ =0x0000094B
	movs r0, #0x37
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F5D8 @ =0x0000094C
	movs r0, #0x37
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F5DC @ =0x0000098A
	movs r0, #0x37
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F5E0 @ =0x0000098B
	movs r0, #0x37
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F5E4 @ =0x0000098C
	movs r0, #0x37
	movs r2, #1
	bl SetTileType
_0804F5CC:
	pop {pc}
	.align 2, 0
_0804F5D0: .4byte 0x0000094A
_0804F5D4: .4byte 0x0000094B
_0804F5D8: .4byte 0x0000094C
_0804F5DC: .4byte 0x0000098A
_0804F5E0: .4byte 0x0000098B
_0804F5E4: .4byte 0x0000098C

	thumb_func_start sub_0804F5E8
sub_0804F5E8: @ 0x0804F5E8
	push {r4, lr}
	bl sub_0804F4E4
	ldr r0, _0804F654 @ =0x000001D3
	ldr r1, _0804F658 @ =0x00000BDE
	movs r2, #1
	bl SetTileType
	movs r4, #0xeb
	lsls r4, r4, #1
	ldr r1, _0804F65C @ =0x00000BE2
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	movs r0, #0xea
	lsls r0, r0, #1
	ldr r1, _0804F660 @ =0x00000C1F
	movs r2, #1
	bl SetTileType
	ldr r0, _0804F664 @ =0x000001D5
	movs r1, #0xc2
	lsls r1, r1, #4
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F668 @ =0x00000C5E
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r4, _0804F66C @ =0x00004072
	ldr r1, _0804F670 @ =0x00000B9B
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F674 @ =0x00000BDB
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F678 @ =0x00000AA4
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F67C @ =0x00000AE4
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	pop {r4, pc}
	.align 2, 0
_0804F654: .4byte 0x000001D3
_0804F658: .4byte 0x00000BDE
_0804F65C: .4byte 0x00000BE2
_0804F660: .4byte 0x00000C1F
_0804F664: .4byte 0x000001D5
_0804F668: .4byte 0x00000C5E
_0804F66C: .4byte 0x00004072
_0804F670: .4byte 0x00000B9B
_0804F674: .4byte 0x00000BDB
_0804F678: .4byte 0x00000AA4
_0804F67C: .4byte 0x00000AE4

	thumb_func_start sub_0804F680
sub_0804F680: @ 0x0804F680
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _0804F6A2
	ldr r0, _0804F6A4 @ =gRoomControls
	ldrh r1, [r0, #6]
	adds r1, r1, r4
	strh r1, [r2, #0x2e]
	ldrh r0, [r0, #8]
	adds r0, r0, r5
	strh r0, [r2, #0x32]
_0804F6A2:
	pop {r4, r5, pc}
	.align 2, 0
_0804F6A4: .4byte gRoomControls

	thumb_func_start sub_0804F6A8
sub_0804F6A8: @ 0x0804F6A8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xec
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #1
	bl sub_0804F680
	movs r1, #0x86
	lsls r1, r1, #2
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r0, r4, #0
	bl sub_0804F680
	pop {r4, pc}

	thumb_func_start sub_0804F6C8
sub_0804F6C8: @ 0x0804F6C8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xf4
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #1
	bl sub_0804F680
	movs r1, #0x82
	lsls r1, r1, #2
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r0, r4, #0
	bl sub_0804F680
	pop {r4, pc}

	thumb_func_start sub_0804F6E8
sub_0804F6E8: @ 0x0804F6E8
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0xfc
	lsls r5, r5, #1
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r5, #0
	bl sub_0804F680
	movs r1, #0x96
	lsls r1, r1, #2
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r0, r4, #0
	bl sub_0804F680
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0804F680
	movs r1, #0xcc
	lsls r1, r1, #1
	movs r2, #0xac
	lsls r2, r2, #1
	adds r0, r4, #0
	bl sub_0804F680
	pop {r4, r5, pc}

	thumb_func_start sub_0804F724
sub_0804F724: @ 0x0804F724
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x82
	lsls r1, r1, #2
	movs r2, #0x84
	lsls r2, r2, #1
	bl sub_0804F680
	movs r1, #0x96
	lsls r1, r1, #2
	movs r5, #0xa4
	lsls r5, r5, #1
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0804F680
	movs r1, #0xf4
	lsls r1, r1, #1
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r0, r4, #0
	bl sub_0804F680
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0804F680
	pop {r4, r5, pc}

	thumb_func_start sub_0804F760
sub_0804F760: @ 0x0804F760
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x86
	lsls r1, r1, #2
	movs r2, #0x84
	lsls r2, r2, #1
	bl sub_0804F680
	movs r1, #0x96
	lsls r1, r1, #2
	movs r2, #0xac
	lsls r2, r2, #1
	adds r0, r4, #0
	bl sub_0804F680
	movs r1, #0xec
	lsls r1, r1, #1
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r0, r4, #0
	bl sub_0804F680
	movs r1, #0xcc
	lsls r1, r1, #1
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r0, r4, #0
	bl sub_0804F680
	pop {r4, pc}

	thumb_func_start sub_0804F79C
sub_0804F79C: @ 0x0804F79C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x35
	movs r2, #0
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _0804F7D0
	ldrb r1, [r2, #0x19]
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r2, #0x19]
	ldr r1, _0804F804 @ =gRoomControls
	movs r3, #0xdc
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
_0804F7D0:
	adds r0, r4, #0
	movs r1, #0x35
	movs r2, #0
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _0804F802
	ldrb r1, [r2, #0x19]
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r2, #0x19]
	ldr r1, _0804F804 @ =gRoomControls
	movs r3, #0x8e
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
_0804F802:
	pop {r4, pc}
	.align 2, 0
_0804F804: .4byte gRoomControls

	thumb_func_start sub_0804F808
sub_0804F808: @ 0x0804F808
	push {r4, lr}
	ldr r4, _0804F824 @ =0x000001D3
	ldr r1, _0804F828 @ =0x0000041D
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F82C @ =0x00000621
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	pop {r4, pc}
	.align 2, 0
_0804F824: .4byte 0x000001D3
_0804F828: .4byte 0x0000041D
_0804F82C: .4byte 0x00000621

	thumb_func_start sub_0804F830
sub_0804F830: @ 0x0804F830
	push {r4, lr}
	movs r4, #0xea
	lsls r4, r4, #1
	ldr r1, _0804F850 @ =0x0000041E
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	movs r1, #0xc4
	lsls r1, r1, #3
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	pop {r4, pc}
	.align 2, 0
_0804F850: .4byte 0x0000041E

	thumb_func_start sub_0804F854
sub_0804F854: @ 0x0804F854
	push {r4, r5, lr}
	ldr r5, _0804F888 @ =0x000001D5
	ldr r1, _0804F88C @ =0x0000041F
	adds r0, r5, #0
	movs r2, #1
	bl SetTileType
	movs r4, #0xea
	lsls r4, r4, #1
	ldr r1, _0804F890 @ =0x000004E5
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F894 @ =0x0000061F
	adds r0, r5, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F898 @ =0x00000559
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	pop {r4, r5, pc}
	.align 2, 0
_0804F888: .4byte 0x000001D5
_0804F88C: .4byte 0x0000041F
_0804F890: .4byte 0x000004E5
_0804F894: .4byte 0x0000061F
_0804F898: .4byte 0x00000559

	thumb_func_start sub_0804F89C
sub_0804F89C: @ 0x0804F89C
	push {r4, r5, lr}
	movs r5, #0xeb
	lsls r5, r5, #1
	movs r1, #0x84
	lsls r1, r1, #3
	adds r0, r5, #0
	movs r2, #1
	bl SetTileType
	ldr r4, _0804F8D0 @ =0x000001D5
	ldr r1, _0804F8D4 @ =0x00000525
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F8D8 @ =0x0000061E
	adds r0, r5, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F8DC @ =0x00000519
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	pop {r4, r5, pc}
	.align 2, 0
_0804F8D0: .4byte 0x000001D5
_0804F8D4: .4byte 0x00000525
_0804F8D8: .4byte 0x0000061E
_0804F8DC: .4byte 0x00000519

	thumb_func_start sub_0804F8E0
sub_0804F8E0: @ 0x0804F8E0
	push {r4, r5, lr}
	ldr r5, _0804F914 @ =0x000001D3
	ldr r1, _0804F918 @ =0x00000421
	adds r0, r5, #0
	movs r2, #1
	bl SetTileType
	movs r4, #0xeb
	lsls r4, r4, #1
	ldr r1, _0804F91C @ =0x00000565
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F920 @ =0x0000061D
	adds r0, r5, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F924 @ =0x000004D9
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	pop {r4, r5, pc}
	.align 2, 0
_0804F914: .4byte 0x000001D3
_0804F918: .4byte 0x00000421
_0804F91C: .4byte 0x00000565
_0804F920: .4byte 0x0000061D
_0804F924: .4byte 0x000004D9

	thumb_func_start sub_0804F928
sub_0804F928: @ 0x0804F928
	push {lr}
	ldr r0, _0804F93C @ =0x0000041D
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _0804F940 @ =0x00000621
	movs r1, #1
	bl sub_0807BA8C
	pop {pc}
	.align 2, 0
_0804F93C: .4byte 0x0000041D
_0804F940: .4byte 0x00000621

	thumb_func_start sub_0804F944
sub_0804F944: @ 0x0804F944
	push {lr}
	ldr r0, _0804F95C @ =0x0000041E
	movs r1, #1
	bl sub_0807BA8C
	movs r0, #0xc4
	lsls r0, r0, #3
	movs r1, #1
	bl sub_0807BA8C
	pop {pc}
	.align 2, 0
_0804F95C: .4byte 0x0000041E

	thumb_func_start sub_0804F960
sub_0804F960: @ 0x0804F960
	push {lr}
	ldr r0, _0804F984 @ =0x0000041F
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _0804F988 @ =0x000004E5
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _0804F98C @ =0x0000061F
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _0804F990 @ =0x00000559
	movs r1, #1
	bl sub_0807BA8C
	pop {pc}
	.align 2, 0
_0804F984: .4byte 0x0000041F
_0804F988: .4byte 0x000004E5
_0804F98C: .4byte 0x0000061F
_0804F990: .4byte 0x00000559

	thumb_func_start sub_0804F994
sub_0804F994: @ 0x0804F994
	push {lr}
	movs r0, #0x84
	lsls r0, r0, #3
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _0804F9BC @ =0x00000525
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _0804F9C0 @ =0x0000061E
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _0804F9C4 @ =0x00000519
	movs r1, #1
	bl sub_0807BA8C
	pop {pc}
	.align 2, 0
_0804F9BC: .4byte 0x00000525
_0804F9C0: .4byte 0x0000061E
_0804F9C4: .4byte 0x00000519

	thumb_func_start sub_0804F9C8
sub_0804F9C8: @ 0x0804F9C8
	push {lr}
	ldr r0, _0804F9EC @ =0x00000421
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _0804F9F0 @ =0x00000565
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _0804F9F4 @ =0x0000061D
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _0804F9F8 @ =0x000004D9
	movs r1, #1
	bl sub_0807BA8C
	pop {pc}
	.align 2, 0
_0804F9EC: .4byte 0x00000421
_0804F9F0: .4byte 0x00000565
_0804F9F4: .4byte 0x0000061D
_0804F9F8: .4byte 0x000004D9

	thumb_func_start sub_0804F9FC
sub_0804F9FC: @ 0x0804F9FC
	movs r0, #1
	bx lr

	thumb_func_start sub_0804FA00
sub_0804FA00: @ 0x0804FA00
	push {lr}
	movs r0, #0
	bl sub_0805ADD8
	ldr r0, _0804FA24 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	cmp r0, #3
	bls _0804FA20
	movs r0, #0x5c
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804FA20
	ldr r0, _0804FA28 @ =gUnk_080F806C
	bl LoadRoomEntityList
_0804FA20:
	pop {pc}
	.align 2, 0
_0804FA24: .4byte gUnk_02002A40
_0804FA28: .4byte gUnk_080F806C

	thumb_func_start sub_0804FA2C
sub_0804FA2C: @ 0x0804FA2C
	movs r0, #1
	bx lr

	thumb_func_start sub_0804FA30
sub_0804FA30: @ 0x0804FA30
	push {lr}
	movs r0, #0
	bl sub_0805ADD8
	movs r0, #3
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804FA5C
	movs r0, #3
	bl GetInventoryValue
	cmp r0, #0
	beq _0804FA5C
	movs r0, #0x9c
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804FA5C
	ldr r0, _0804FA60 @ =gUnk_080F82E0
	bl LoadRoomEntityList
_0804FA5C:
	pop {pc}
	.align 2, 0
_0804FA60: .4byte gUnk_080F82E0

	thumb_func_start sub_0804FA64
sub_0804FA64: @ 0x0804FA64
	movs r0, #1
	bx lr

	thumb_func_start sub_0804FA68
sub_0804FA68: @ 0x0804FA68
	push {lr}
	movs r0, #0
	bl sub_0805ADD8
	movs r0, #0x21
	bl CheckKinstoneFused
	cmp r0, #0
	beq _0804FA8E
	movs r0, #0x80
	lsls r0, r0, #2
	movs r1, #0x42
	bl CheckLocalFlagByOffset
	cmp r0, #0
	bne _0804FA8E
	ldr r0, _0804FA90 @ =gUnk_080F8430
	bl LoadRoomEntityList
_0804FA8E:
	pop {pc}
	.align 2, 0
_0804FA90: .4byte gUnk_080F8430

	thumb_func_start sub_0804FA94
sub_0804FA94: @ 0x0804FA94
	movs r0, #1
	bx lr

	thumb_func_start sub_0804FA98
sub_0804FA98: @ 0x0804FA98
	push {lr}
	movs r0, #0x57
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804FAB0
	ldr r0, _0804FAAC @ =gUnk_080F85D8
	bl LoadRoomEntityList
	b _0804FAB6
	.align 2, 0
_0804FAAC: .4byte gUnk_080F85D8
_0804FAB0:
	ldr r0, _0804FAC8 @ =gUnk_080F85F8
	bl LoadRoomEntityList
_0804FAB6:
	movs r0, #0xc
	bl GetInventoryValue
	cmp r0, #0
	bne _0804FAC6
	movs r0, #8
	bl ClearLocalFlag
_0804FAC6:
	pop {pc}
	.align 2, 0
_0804FAC8: .4byte gUnk_080F85F8

	thumb_func_start sub_0804FACC
sub_0804FACC: @ 0x0804FACC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_412
nullsub_412: @ 0x0804FAD0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FAD4
sub_0804FAD4: @ 0x0804FAD4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_413
nullsub_413: @ 0x0804FAD8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FADC
sub_0804FADC: @ 0x0804FADC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_414
nullsub_414: @ 0x0804FAE0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FAE4
sub_0804FAE4: @ 0x0804FAE4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_415
nullsub_415: @ 0x0804FAE8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FAEC
sub_0804FAEC: @ 0x0804FAEC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_416
nullsub_416: @ 0x0804FAF0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FAF4
sub_0804FAF4: @ 0x0804FAF4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_417
nullsub_417: @ 0x0804FAF8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FAFC
sub_0804FAFC: @ 0x0804FAFC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_418
nullsub_418: @ 0x0804FB00
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FB04
sub_0804FB04: @ 0x0804FB04
	movs r0, #1
	bx lr

	thumb_func_start nullsub_419
nullsub_419: @ 0x0804FB08
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FB0C
sub_0804FB0C: @ 0x0804FB0C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_420
nullsub_420: @ 0x0804FB10
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FB14
sub_0804FB14: @ 0x0804FB14
	movs r0, #1
	bx lr

	thumb_func_start nullsub_421
nullsub_421: @ 0x0804FB18
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FB1C
sub_0804FB1C: @ 0x0804FB1C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_422
nullsub_422: @ 0x0804FB20
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FB24
sub_0804FB24: @ 0x0804FB24
	movs r0, #1
	bx lr

	thumb_func_start nullsub_423
nullsub_423: @ 0x0804FB28
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FB2C
sub_0804FB2C: @ 0x0804FB2C
	movs r0, #1
	bx lr

	thumb_func_start sub_0804FB30
sub_0804FB30: @ 0x0804FB30
	push {lr}
	movs r0, #0x11
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804FB64
	movs r0, #0
	bl SetRoomFlag
	movs r0, #1
	bl SetRoomFlag
	movs r0, #0x80
	lsls r0, r0, #1
	bl sub_0805308C
	movs r0, #0x12
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804FB64
	movs r0, #0x73
	movs r1, #0xcb
	movs r2, #1
	bl SetTileType
_0804FB64:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804FB68
sub_0804FB68: @ 0x0804FB68
	movs r0, #1
	bx lr

	thumb_func_start nullsub_089
nullsub_089: @ 0x0804FB6C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FB70
sub_0804FB70: @ 0x0804FB70
	movs r0, #1
	bx lr

	thumb_func_start nullsub_90
nullsub_90: @ 0x0804FB74
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FB78
sub_0804FB78: @ 0x0804FB78
	movs r0, #1
	bx lr

	thumb_func_start nullsub_91
nullsub_91: @ 0x0804FB7C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FB80
sub_0804FB80: @ 0x0804FB80
	movs r0, #1
	bx lr

	thumb_func_start nullsub_92
nullsub_92: @ 0x0804FB84
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FB88
sub_0804FB88: @ 0x0804FB88
	movs r0, #1
	bx lr

	thumb_func_start nullsub_93
nullsub_93: @ 0x0804FB8C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FB90
sub_0804FB90: @ 0x0804FB90
	movs r0, #1
	bx lr

	thumb_func_start nullsub_94
nullsub_94: @ 0x0804FB94
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FB98
sub_0804FB98: @ 0x0804FB98
	movs r0, #1
	bx lr

	thumb_func_start nullsub_95
nullsub_95: @ 0x0804FB9C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FBA0
sub_0804FBA0: @ 0x0804FBA0
	movs r0, #1
	bx lr

	thumb_func_start nullsub_96
nullsub_96: @ 0x0804FBA4
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FBA8
sub_0804FBA8: @ 0x0804FBA8
	movs r0, #1
	bx lr

	thumb_func_start nullsub_97
nullsub_97: @ 0x0804FBAC
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FBB0
sub_0804FBB0: @ 0x0804FBB0
	movs r0, #1
	bx lr

	thumb_func_start nullsub_98
nullsub_98: @ 0x0804FBB4
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FBB8
sub_0804FBB8: @ 0x0804FBB8
	movs r0, #1
	bx lr

	thumb_func_start sub_0804FBBC
sub_0804FBBC: @ 0x0804FBBC
	push {lr}
	ldr r0, _0804FBD4 @ =gUnk_02002A40
	ldr r0, [r0, #0x40]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	bne _0804FBD2
	ldr r0, _0804FBD8 @ =gUnk_080F9304
	bl LoadRoomEntityList
_0804FBD2:
	pop {pc}
	.align 2, 0
_0804FBD4: .4byte gUnk_02002A40
_0804FBD8: .4byte gUnk_080F9304

	thumb_func_start sub_0804FBDC
sub_0804FBDC: @ 0x0804FBDC
	push {lr}
	ldr r0, _0804FBF4 @ =gUnk_02002A40
	ldr r0, [r0, #0x40]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	bne _0804FBF2
	ldr r0, _0804FBF8 @ =gUnk_080F9304
	bl LoadRoomEntityList
_0804FBF2:
	pop {pc}
	.align 2, 0
_0804FBF4: .4byte gUnk_02002A40
_0804FBF8: .4byte gUnk_080F9304

	thumb_func_start sub_0804FBFC
sub_0804FBFC: @ 0x0804FBFC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_424
nullsub_424: @ 0x0804FC00
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FC04
sub_0804FC04: @ 0x0804FC04
	movs r0, #1
	bx lr

	thumb_func_start nullsub_425
nullsub_425: @ 0x0804FC08
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FC0C
sub_0804FC0C: @ 0x0804FC0C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_426
nullsub_426: @ 0x0804FC10
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FC14
sub_0804FC14: @ 0x0804FC14
	movs r0, #1
	bx lr

	thumb_func_start nullsub_427
nullsub_427: @ 0x0804FC18
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FC1C
sub_0804FC1C: @ 0x0804FC1C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_428
nullsub_428: @ 0x0804FC20
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FC24
sub_0804FC24: @ 0x0804FC24
	movs r0, #1
	bx lr

	thumb_func_start nullsub_429
nullsub_429: @ 0x0804FC28
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FC2C
sub_0804FC2C: @ 0x0804FC2C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_430
nullsub_430: @ 0x0804FC30
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FC34
sub_0804FC34: @ 0x0804FC34
	movs r0, #1
	bx lr

	thumb_func_start nullsub_431
nullsub_431: @ 0x0804FC38
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FC3C
sub_0804FC3C: @ 0x0804FC3C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_432
nullsub_432: @ 0x0804FC40
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FC44
sub_0804FC44: @ 0x0804FC44
	movs r0, #1
	bx lr

	thumb_func_start nullsub_433
nullsub_433: @ 0x0804FC48
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FC4C
sub_0804FC4C: @ 0x0804FC4C
	push {lr}
	movs r0, #0xe
	bl CheckKinstoneFused
	cmp r0, #0
	bne _0804FC5E
	ldr r1, _0804FC64 @ =gRoomVars
	ldr r0, _0804FC68 @ =gUnk_080F9BF8
	str r0, [r1, #0x6c]
_0804FC5E:
	movs r0, #1
	pop {pc}
	.align 2, 0
_0804FC64: .4byte gRoomVars
_0804FC68: .4byte gUnk_080F9BF8

	thumb_func_start sub_0804FC6C
sub_0804FC6C: @ 0x0804FC6C
	push {lr}
	movs r0, #2
	bl sub_0805B4D0
	movs r0, #0
	bl sub_0806D0B0
	pop {pc}

	thumb_func_start sub_0804FC7C
sub_0804FC7C: @ 0x0804FC7C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_99
nullsub_99: @ 0x0804FC80
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FC84
sub_0804FC84: @ 0x0804FC84
	movs r0, #1
	bx lr

	thumb_func_start nullsub_100
nullsub_100: @ 0x0804FC88
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FC8C
sub_0804FC8C: @ 0x0804FC8C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_101
nullsub_101: @ 0x0804FC90
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FC94
sub_0804FC94: @ 0x0804FC94
	movs r0, #1
	bx lr

	thumb_func_start nullsub_102
nullsub_102: @ 0x0804FC98
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FC9C
sub_0804FC9C: @ 0x0804FC9C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_103
nullsub_103: @ 0x0804FCA0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FCA4
sub_0804FCA4: @ 0x0804FCA4
	movs r0, #1
	bx lr

	thumb_func_start sub_0804FCA8
sub_0804FCA8: @ 0x0804FCA8
	push {lr}
	movs r0, #0x14
	bl CheckKinstoneFused
	cmp r0, #0
	beq _0804FCBA
	ldr r0, _0804FCCC @ =gUnk_080F9FA8
	bl LoadRoomEntityList
_0804FCBA:
	movs r0, #0x38
	bl GetInventoryValue
	cmp r0, #0
	bne _0804FCCA
	ldr r0, _0804FCD0 @ =gUnk_080F9F88
	bl LoadRoomEntityList
_0804FCCA:
	pop {pc}
	.align 2, 0
_0804FCCC: .4byte gUnk_080F9FA8
_0804FCD0: .4byte gUnk_080F9F88

	thumb_func_start sub_0804FCD4
sub_0804FCD4: @ 0x0804FCD4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_434
nullsub_434: @ 0x0804FCD8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FCDC
sub_0804FCDC: @ 0x0804FCDC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_435
nullsub_435: @ 0x0804FCE0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FCE4
sub_0804FCE4: @ 0x0804FCE4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_436
nullsub_436: @ 0x0804FCE8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FCEC
sub_0804FCEC: @ 0x0804FCEC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_437
nullsub_437: @ 0x0804FCF0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FCF4
sub_0804FCF4: @ 0x0804FCF4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_438
nullsub_438: @ 0x0804FCF8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FCFC
sub_0804FCFC: @ 0x0804FCFC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_439
nullsub_439: @ 0x0804FD00
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD04
sub_0804FD04: @ 0x0804FD04
	movs r0, #1
	bx lr

	thumb_func_start nullsub_440
nullsub_440: @ 0x0804FD08
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD0C
sub_0804FD0C: @ 0x0804FD0C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_441
nullsub_441: @ 0x0804FD10
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD14
sub_0804FD14: @ 0x0804FD14
	movs r0, #1
	bx lr

	thumb_func_start nullsub_442
nullsub_442: @ 0x0804FD18
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD1C
sub_0804FD1C: @ 0x0804FD1C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_443
nullsub_443: @ 0x0804FD20
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD24
sub_0804FD24: @ 0x0804FD24
	movs r0, #1
	bx lr

	thumb_func_start nullsub_444
nullsub_444: @ 0x0804FD28
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD2C
sub_0804FD2C: @ 0x0804FD2C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_445
nullsub_445: @ 0x0804FD30
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD34
sub_0804FD34: @ 0x0804FD34
	movs r0, #1
	bx lr

	thumb_func_start nullsub_446
nullsub_446: @ 0x0804FD38
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD3C
sub_0804FD3C: @ 0x0804FD3C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_447
nullsub_447: @ 0x0804FD40
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD44
sub_0804FD44: @ 0x0804FD44
	movs r0, #1
	bx lr

	thumb_func_start nullsub_448
nullsub_448: @ 0x0804FD48
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD4C
sub_0804FD4C: @ 0x0804FD4C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_449
nullsub_449: @ 0x0804FD50
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD54
sub_0804FD54: @ 0x0804FD54
	movs r0, #1
	bx lr

	thumb_func_start sub_0804FD58
sub_0804FD58: @ 0x0804FD58
	push {lr}
	movs r0, #0x21
	bl CheckKinstoneFused
	cmp r0, #0
	bne _0804FD6A
	ldr r0, _0804FD6C @ =gUnk_080FA5D0
	bl LoadRoomEntityList
_0804FD6A:
	pop {pc}
	.align 2, 0
_0804FD6C: .4byte gUnk_080FA5D0

	thumb_func_start sub_0804FD70
sub_0804FD70: @ 0x0804FD70
	movs r0, #1
	bx lr

	thumb_func_start nullsub_450
nullsub_450: @ 0x0804FD74
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD78
sub_0804FD78: @ 0x0804FD78
	movs r0, #1
	bx lr

	thumb_func_start nullsub_451
nullsub_451: @ 0x0804FD7C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD80
sub_0804FD80: @ 0x0804FD80
	movs r0, #1
	bx lr

	thumb_func_start nullsub_452
nullsub_452: @ 0x0804FD84
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD88
sub_0804FD88: @ 0x0804FD88
	movs r0, #1
	bx lr

	thumb_func_start nullsub_453
nullsub_453: @ 0x0804FD8C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD90
sub_0804FD90: @ 0x0804FD90
	movs r0, #1
	bx lr

	thumb_func_start nullsub_454
nullsub_454: @ 0x0804FD94
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD98
sub_0804FD98: @ 0x0804FD98
	movs r0, #1
	bx lr

	thumb_func_start nullsub_455
nullsub_455: @ 0x0804FD9C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FDA0
sub_0804FDA0: @ 0x0804FDA0
	movs r0, #1
	bx lr

	thumb_func_start nullsub_456
nullsub_456: @ 0x0804FDA4
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FDA8
sub_0804FDA8: @ 0x0804FDA8
	movs r0, #1
	bx lr

	thumb_func_start nullsub_457
nullsub_457: @ 0x0804FDAC
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FDB0
sub_0804FDB0: @ 0x0804FDB0
	movs r0, #1
	bx lr

	thumb_func_start nullsub_458
nullsub_458: @ 0x0804FDB4
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FDB8
sub_0804FDB8: @ 0x0804FDB8
	movs r0, #1
	bx lr

	thumb_func_start nullsub_459
nullsub_459: @ 0x0804FDBC
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FDC0
sub_0804FDC0: @ 0x0804FDC0
	movs r0, #1
	bx lr

	thumb_func_start nullsub_460
nullsub_460: @ 0x0804FDC4
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FDC8
sub_0804FDC8: @ 0x0804FDC8
	movs r0, #1
	bx lr

	thumb_func_start nullsub_461
nullsub_461: @ 0x0804FDCC
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FDD0
sub_0804FDD0: @ 0x0804FDD0
	movs r0, #1
	bx lr

	thumb_func_start nullsub_462
nullsub_462: @ 0x0804FDD4
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FDD8
sub_0804FDD8: @ 0x0804FDD8
	movs r0, #1
	bx lr

	thumb_func_start nullsub_463
nullsub_463: @ 0x0804FDDC
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FDE0
sub_0804FDE0: @ 0x0804FDE0
	push {lr}
	movs r0, #0x51
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804FDF6
	ldr r0, _0804FDFC @ =gRoomVars
	ldr r1, _0804FE00 @ =gUnk_080FAD48
	str r1, [r0, #0x6c]
	movs r1, #0
	str r1, [r0, #0x74]
_0804FDF6:
	movs r0, #1
	pop {pc}
	.align 2, 0
_0804FDFC: .4byte gRoomVars
_0804FE00: .4byte gUnk_080FAD48

	thumb_func_start sub_0804FE04
sub_0804FE04: @ 0x0804FE04
	push {lr}
	movs r0, #0x51
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804FE28
	ldr r0, _0804FE20 @ =gArea
	ldr r2, _0804FE24 @ =0x00000864
	adds r1, r0, r2
	subs r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	b _0804FE2E
	.align 2, 0
_0804FE20: .4byte gArea
_0804FE24: .4byte 0x00000864
_0804FE28:
	ldr r0, _0804FE3C @ =gUnk_080FACB8
	bl LoadRoomEntityList
_0804FE2E:
	movs r0, #0
	bl sub_0805B4D0
	bl sub_08059994
	pop {pc}
	.align 2, 0
_0804FE3C: .4byte gUnk_080FACB8

	thumb_func_start sub_0804FE40
sub_0804FE40: @ 0x0804FE40
	push {lr}
	movs r0, #0
	bl sub_0805B4D0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804FE4C
sub_0804FE4C: @ 0x0804FE4C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_104
nullsub_104: @ 0x0804FE50
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FE54
sub_0804FE54: @ 0x0804FE54
	movs r0, #1
	bx lr

	thumb_func_start sub_0804FE58
sub_0804FE58: @ 0x0804FE58
	push {lr}
	movs r0, #1
	bl sub_0805B4D0
	movs r0, #3
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804FE7A
	movs r0, #2
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804FE7A
	ldr r0, _0804FEA0 @ =gUnk_080FAFE4
	bl LoadRoomEntityList
_0804FE7A:
	ldr r0, _0804FEA4 @ =gUnk_02002A40
	ldr r0, [r0, #0x40]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	bne _0804FE8E
	ldr r0, _0804FEA8 @ =gUnk_080FB004
	bl LoadRoomEntityList
_0804FE8E:
	movs r0, #2
	bl GetInventoryValue
	cmp r0, #0
	beq _0804FE9E
	movs r0, #0x56
	bl SetGlobalFlag
_0804FE9E:
	pop {pc}
	.align 2, 0
_0804FEA0: .4byte gUnk_080FAFE4
_0804FEA4: .4byte gUnk_02002A40
_0804FEA8: .4byte gUnk_080FB004

	thumb_func_start sub_0804FEAC
sub_0804FEAC: @ 0x0804FEAC
	push {lr}
	ldr r0, _0804FEC4 @ =gUnk_02002A40
	ldr r0, [r0, #0x40]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	bne _0804FEC2
	ldr r0, _0804FEC8 @ =gUnk_080FB004
	bl LoadRoomEntityList
_0804FEC2:
	pop {pc}
	.align 2, 0
_0804FEC4: .4byte gUnk_02002A40
_0804FEC8: .4byte gUnk_080FB004

	thumb_func_start sub_0804FECC
sub_0804FECC: @ 0x0804FECC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_464
nullsub_464: @ 0x0804FED0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FED4
sub_0804FED4: @ 0x0804FED4
	movs r0, #1
	bx lr

	thumb_func_start sub_0804FED8
sub_0804FED8: @ 0x0804FED8
	push {lr}
	movs r0, #0xbb
	lsls r0, r0, #1
	ldr r1, _0804FEE8 @ =0x0000066F
	movs r2, #1
	bl SetTileType
	pop {pc}
	.align 2, 0
_0804FEE8: .4byte 0x0000066F

	thumb_func_start sub_0804FEEC
sub_0804FEEC: @ 0x0804FEEC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_465
nullsub_465: @ 0x0804FEF0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FEF4
sub_0804FEF4: @ 0x0804FEF4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_466
nullsub_466: @ 0x0804FEF8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FEFC
sub_0804FEFC: @ 0x0804FEFC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_467
nullsub_467: @ 0x0804FF00
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FF04
sub_0804FF04: @ 0x0804FF04
	movs r0, #1
	bx lr

	thumb_func_start nullsub_468
nullsub_468: @ 0x0804FF08
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FF0C
sub_0804FF0C: @ 0x0804FF0C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_469
nullsub_469: @ 0x0804FF10
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FF14
sub_0804FF14: @ 0x0804FF14
	movs r0, #1
	bx lr

	thumb_func_start nullsub_470
nullsub_470: @ 0x0804FF18
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FF1C
sub_0804FF1C: @ 0x0804FF1C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_471
nullsub_471: @ 0x0804FF20
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FF24
sub_0804FF24: @ 0x0804FF24
	movs r0, #1
	bx lr

	thumb_func_start nullsub_472
nullsub_472: @ 0x0804FF28
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FF2C
sub_0804FF2C: @ 0x0804FF2C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_473
nullsub_473: @ 0x0804FF30
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FF34
sub_0804FF34: @ 0x0804FF34
	movs r0, #1
	bx lr

	thumb_func_start nullsub_474
nullsub_474: @ 0x0804FF38
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FF3C
sub_0804FF3C: @ 0x0804FF3C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_475
nullsub_475: @ 0x0804FF40
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FF44
sub_0804FF44: @ 0x0804FF44
	movs r0, #1
	bx lr

	thumb_func_start nullsub_476
nullsub_476: @ 0x0804FF48
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FF4C
sub_0804FF4C: @ 0x0804FF4C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_477
nullsub_477: @ 0x0804FF50
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FF54
sub_0804FF54: @ 0x0804FF54
	movs r0, #1
	bx lr

	thumb_func_start nullsub_478
nullsub_478: @ 0x0804FF58
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FF5C
sub_0804FF5C: @ 0x0804FF5C
	movs r0, #1
	bx lr

	thumb_func_start sub_0804FF60
sub_0804FF60: @ 0x0804FF60
	push {lr}
	movs r0, #0x70
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804FF72
	movs r0, #0x70
	bl SetLocalFlag
_0804FF72:
	pop {pc}

	thumb_func_start sub_0804FF74
sub_0804FF74: @ 0x0804FF74
	movs r0, #1
	bx lr

	thumb_func_start nullsub_105
nullsub_105: @ 0x0804FF78
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FF7C
sub_0804FF7C: @ 0x0804FF7C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_106
nullsub_106: @ 0x0804FF80
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FF84
sub_0804FF84: @ 0x0804FF84
	movs r1, #0x80
	lsls r1, r1, #0x12
	strb r0, [r1, #6]
	ldr r1, _0804FF94 @ =gUnk_0200B644
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_0804FF94: .4byte gUnk_0200B644

	thumb_func_start sub_0804FF98
sub_0804FF98: @ 0x0804FF98
	push {r4, r5, r6, r7, lr}
	ldr r6, _0804FFD4 @ =gUnk_020354C0
	ldr r1, _0804FFD8 @ =gUnk_0200B644
	ldr r4, [r1]
	movs r0, #0
	str r0, [r1]
	movs r5, #0
	cmp r4, #0
	beq _0804FFD0
	ldr r7, _0804FFDC @ =gUnk_03005E98
_0804FFAC:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0804FFC6
	ldr r0, _0804FFE0 @ =gUnk_020176A0
	adds r0, r5, r0
	movs r2, #0xa0
	lsls r2, r2, #0x13
	adds r1, r5, r2
	ldrh r2, [r6, #2]
	ldrb r3, [r6, #1]
	bl _call_via_r7
_0804FFC6:
	adds r5, #0x20
	adds r6, #4
	lsrs r4, r4, #1
	cmp r4, #0
	bne _0804FFAC
_0804FFD0:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0804FFD4: .4byte gUnk_020354C0
_0804FFD8: .4byte gUnk_0200B644
_0804FFDC: .4byte gUnk_03005E98
_0804FFE0: .4byte gUnk_020176A0

	thumb_func_start sub_0804FFE4
sub_0804FFE4: @ 0x0804FFE4
	push {r4, lr}
	ldr r4, _08050000 @ =gUnk_03000FD0
	adds r0, r4, #0
	movs r1, #0x1c
	bl _DmaZero
	ldr r0, _08050004 @ =gUnk_020354C0
	movs r1, #0x80
	bl _DmaZero
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
_08050000: .4byte gUnk_03000FD0
_08050004: .4byte gUnk_020354C0
