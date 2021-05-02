	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Manager24_Main
Manager24_Main: @ 0x0805BF18
	push {lr}
	ldr r2, _0805BF2C @ =gUnk_08108CDC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805BF2C: .4byte gUnk_08108CDC

	thumb_func_start sub_0805BF30
sub_0805BF30: @ 0x0805BF30
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r1, [r4, #0x38]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	movs r2, #0x3f
	ands r1, r2
	ldrh r0, [r4, #0x3a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ands r0, r2
	lsls r0, r0, #6
	orrs r1, r0
	strh r1, [r4, #0x3c]
	ldrh r0, [r4, #0x3c]
	adds r1, r4, #0
	adds r1, #0x35
	ldrb r1, [r1]
	bl sub_0805BFC4
	strb r0, [r4, #0xa]
	ldrh r0, [r4, #0x3e]
	bl CheckLocalFlag
	cmp r0, #0
	beq _0805BF74
	adds r0, r4, #0
	bl sub_0805C02C
	adds r0, r4, #0
	bl DeleteManager
_0805BF74:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805BF78
sub_0805BF78: @ 0x0805BF78
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3c]
	adds r1, r4, #0
	adds r1, #0x35
	ldrb r1, [r1]
	bl sub_080002C8
	cmp r0, #0x2e
	beq _0805BFA0
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x5a
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_0805C02C
	ldrh r0, [r4, #0x3e]
	bl SetLocalFlag
_0805BFA0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805BFA4
sub_0805BFA4: @ 0x0805BFA4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805BFC0
	movs r0, #0x72
	bl SoundReq
	adds r0, r4, #0
	bl DeleteManager
_0805BFC0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805BFC4
sub_0805BFC4: @ 0x0805BFC4
	push {lr}
	bl GetTileType
	adds r1, r0, #0
	cmp r1, #0xec
	beq _0805C018
	cmp r1, #0xec
	bhi _0805BFEC
	cmp r1, #0xbf
	beq _0805C024
	cmp r1, #0xbf
	bhi _0805BFE2
	cmp r1, #0xaf
	beq _0805C014
	b _0805C028
_0805BFE2:
	cmp r1, #0xcc
	beq _0805C01C
	cmp r1, #0xdf
	beq _0805C020
	b _0805C028
_0805BFEC:
	movs r0, #0x84
	lsls r0, r0, #1
	cmp r1, r0
	beq _0805C01C
	cmp r1, r0
	bhi _0805C004
	cmp r1, #0xff
	beq _0805C014
	subs r0, #3
	cmp r1, r0
	beq _0805C024
	b _0805C028
_0805C004:
	movs r0, #0x88
	lsls r0, r0, #1
	cmp r1, r0
	beq _0805C020
	adds r0, #5
	cmp r1, r0
	beq _0805C018
	b _0805C028
_0805C014:
	movs r0, #0
	b _0805C02A
_0805C018:
	movs r0, #1
	b _0805C02A
_0805C01C:
	movs r0, #2
	b _0805C02A
_0805C020:
	movs r0, #3
	b _0805C02A
_0805C024:
	movs r0, #4
	b _0805C02A
_0805C028:
	movs r0, #0xff
_0805C02A:
	pop {pc}

	thumb_func_start sub_0805C02C
sub_0805C02C: @ 0x0805C02C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	cmp r0, #0xff
	beq _0805C04A
	ldr r0, _0805C04C @ =gUnk_08108CE8
	ldrb r2, [r1, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrh r0, [r1, #0x3c]
	adds r1, #0x35
	ldrb r1, [r1]
	ldr r2, [r2]
	bl _call_via_r2
_0805C04A:
	pop {pc}
	.align 2, 0
_0805C04C: .4byte gUnk_08108CE8

	thumb_func_start sub_0805C050
sub_0805C050: @ 0x0805C050
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r5, #0
	subs r1, #0x41
	movs r0, #0xb1
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #0
	subs r1, #0x40
	movs r0, #0xb2
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #0
	subs r1, #0x3f
	movs r0, #0xb3
	adds r2, r4, #0
	bl SetTileType
	subs r1, r5, #1
	movs r0, #0xb4
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #1
	movs r0, #0xb7
	adds r2, r4, #0
	bl SetTileType
	cmp r4, #1
	bne _0805C11C
	bl sub_08052670
	cmp r0, #0
	beq _0805C0D8
	movs r0, #0x4f
	movs r1, #0xe
	movs r2, #0
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _0805C0E0
	movs r1, #0x3f
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #8
	ldr r2, _0805C0D0 @ =gRoomControls
	ldrh r1, [r2, #6]
	adds r1, r1, r0
	strh r1, [r3, #0x2e]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r5
	lsrs r0, r0, #2
	ldr r1, _0805C0D4 @ =0x0000FFF8
	adds r0, r0, r1
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	strh r0, [r3, #0x32]
	b _0805C0E0
	.align 2, 0
_0805C0D0: .4byte gRoomControls
_0805C0D4: .4byte 0x0000FFF8
_0805C0D8:
	bl CheckIsDungeon
	cmp r0, #0
	beq _0805C0EC
_0805C0E0:
	movs r0, #0xb5
	adds r1, r5, #0
	movs r2, #1
	bl SetTileType
	b _0805C0F6
_0805C0EC:
	movs r0, #0xb6
	adds r1, r5, #0
	movs r2, #1
	bl SetTileType
_0805C0F6:
	adds r1, r5, #0
	subs r1, #0x41
	movs r0, #0xb8
	movs r2, #2
	bl SetTileType
	adds r1, r5, #0
	subs r1, #0x40
	movs r0, #0xb9
	movs r2, #2
	bl SetTileType
	adds r1, r5, #0
	subs r1, #0x3f
	movs r0, #0xba
	movs r2, #2
	bl SetTileType
	b _0805C16E
_0805C11C:
	movs r0, #0xb5
	adds r1, r5, #0
	movs r2, #2
	bl SetTileType
	bl CheckIsDungeon
	cmp r0, #0
	beq _0805C16E
	bl sub_0805C608
	adds r1, r0, #0
	movs r0, #0x4f
	movs r2, #6
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _0805C16E
	movs r1, #0x3f
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #8
	ldr r2, _0805C170 @ =gRoomControls
	ldrh r1, [r2, #6]
	adds r1, r1, r0
	strh r1, [r3, #0x2e]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r5
	lsrs r0, r0, #2
	ldr r1, _0805C174 @ =0x0000FFF0
	adds r0, r0, r1
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	strh r0, [r3, #0x32]
	adds r1, r3, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
_0805C16E:
	pop {r4, r5, pc}
	.align 2, 0
_0805C170: .4byte gRoomControls
_0805C174: .4byte 0x0000FFF0

	thumb_func_start sub_0805C178
sub_0805C178: @ 0x0805C178
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r5, #0
	subs r1, #0x40
	movs r0, #0xf1
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #0
	subs r1, #0x3f
	movs r0, #0xf5
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #1
	movs r0, #0xf6
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0xf4
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #0
	adds r1, #0x41
	movs r0, #0xf7
	adds r2, r4, #0
	bl SetTileType
	cmp r4, #1
	bne _0805C23E
	bl sub_08052670
	cmp r0, #0
	beq _0805C1FC
	movs r0, #0x4f
	movs r1, #0xe
	movs r2, #1
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0805C204
	movs r1, #0x3f
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #4
	ldr r1, _0805C1F8 @ =gRoomControls
	adds r0, #0x18
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r5
	lsrs r0, r0, #2
	adds r0, #8
	ldrh r1, [r1, #8]
	adds r1, r1, r0
	strh r1, [r2, #0x32]
	b _0805C204
	.align 2, 0
_0805C1F8: .4byte gRoomControls
_0805C1FC:
	bl CheckIsDungeon
	cmp r0, #0
	beq _0805C210
_0805C204:
	movs r0, #0xf2
	adds r1, r5, #0
	movs r2, #1
	bl SetTileType
	b _0805C21A
_0805C210:
	movs r0, #0xf3
	adds r1, r5, #0
	movs r2, #1
	bl SetTileType
_0805C21A:
	adds r1, r5, #0
	subs r1, #0x3f
	movs r0, #0xf8
	movs r2, #2
	bl SetTileType
	adds r1, r5, #1
	movs r0, #0xf9
	movs r2, #2
	bl SetTileType
	adds r1, r5, #0
	adds r1, #0x41
	movs r0, #0xfa
	movs r2, #2
	bl SetTileType
	b _0805C28E
_0805C23E:
	movs r0, #0xf2
	adds r1, r5, #0
	movs r2, #2
	bl SetTileType
	bl CheckIsDungeon
	cmp r0, #0
	beq _0805C28E
	bl sub_0805C608
	adds r1, r0, #0
	movs r0, #0x4f
	movs r2, #7
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0805C28E
	movs r1, #0x3f
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #4
	ldr r1, _0805C290 @ =gRoomControls
	adds r0, #0x20
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r5
	lsrs r0, r0, #2
	adds r0, #8
	ldrh r1, [r1, #8]
	adds r1, r1, r0
	strh r1, [r2, #0x32]
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
_0805C28E:
	pop {r4, r5, pc}
	.align 2, 0
_0805C290: .4byte gRoomControls

	thumb_func_start sub_0805C294
sub_0805C294: @ 0x0805C294
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	subs r1, r5, #1
	movs r0, #0xd1
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #1
	movs r0, #0xd4
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0xd5
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0xd6
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #0
	adds r1, #0x41
	movs r0, #0xd7
	adds r2, r4, #0
	bl SetTileType
	cmp r4, #1
	bne _0805C35C
	bl sub_08052670
	cmp r0, #0
	beq _0805C318
	movs r0, #0x4f
	movs r1, #0xe
	movs r2, #2
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _0805C320
	movs r1, #0x3f
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #8
	ldr r2, _0805C314 @ =gRoomControls
	ldrh r1, [r2, #6]
	adds r1, r1, r0
	strh r1, [r3, #0x2e]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r5
	lsrs r0, r0, #2
	adds r0, #0x20
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	strh r0, [r3, #0x32]
	b _0805C320
	.align 2, 0
_0805C314: .4byte gRoomControls
_0805C318:
	bl CheckIsDungeon
	cmp r0, #0
	beq _0805C32C
_0805C320:
	movs r0, #0xd2
	adds r1, r5, #0
	movs r2, #1
	bl SetTileType
	b _0805C336
_0805C32C:
	movs r0, #0xd3
	adds r1, r5, #0
	movs r2, #1
	bl SetTileType
_0805C336:
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0xd8
	movs r2, #2
	bl SetTileType
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0xd9
	movs r2, #2
	bl SetTileType
	adds r1, r5, #0
	adds r1, #0x41
	movs r0, #0xda
	movs r2, #2
	bl SetTileType
	b _0805C3AC
_0805C35C:
	movs r0, #0xd2
	adds r1, r5, #0
	movs r2, #2
	bl SetTileType
	bl CheckIsDungeon
	cmp r0, #0
	beq _0805C3AC
	bl sub_0805C608
	adds r1, r0, #0
	movs r0, #0x4f
	movs r2, #8
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _0805C3AC
	movs r1, #0x3f
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #8
	ldr r2, _0805C3B0 @ =gRoomControls
	ldrh r1, [r2, #6]
	adds r1, r1, r0
	strh r1, [r3, #0x2e]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r5
	lsrs r0, r0, #2
	adds r0, #0x20
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	strh r0, [r3, #0x32]
	adds r1, r3, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
_0805C3AC:
	pop {r4, r5, pc}
	.align 2, 0
_0805C3B0: .4byte gRoomControls

	thumb_func_start sub_0805C3B4
sub_0805C3B4: @ 0x0805C3B4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r5, #0
	subs r1, #0x41
	movs r0, #0xe1
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #0
	subs r1, #0x40
	movs r0, #0xe4
	adds r2, r4, #0
	bl SetTileType
	subs r1, r5, #1
	movs r0, #0xe2
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0xe3
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0xe7
	adds r2, r4, #0
	bl SetTileType
	cmp r4, #1
	bne _0805C482
	bl sub_08052670
	cmp r0, #0
	beq _0805C440
	movs r0, #0x4f
	movs r1, #0xe
	movs r2, #3
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0805C448
	movs r1, #0x3f
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #4
	ldr r1, _0805C438 @ =gRoomControls
	ldr r3, _0805C43C @ =0x0000FFF0
	adds r0, r0, r3
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r5
	lsrs r0, r0, #2
	adds r0, #8
	ldrh r1, [r1, #8]
	adds r1, r1, r0
	strh r1, [r2, #0x32]
	b _0805C448
	.align 2, 0
_0805C438: .4byte gRoomControls
_0805C43C: .4byte 0x0000FFF0
_0805C440:
	bl CheckIsDungeon
	cmp r0, #0
	beq _0805C454
_0805C448:
	movs r0, #0xe5
	adds r1, r5, #0
	movs r2, #1
	bl SetTileType
	b _0805C45E
_0805C454:
	movs r0, #0xe6
	adds r1, r5, #0
	movs r2, #1
	bl SetTileType
_0805C45E:
	adds r1, r5, #0
	subs r1, #0x41
	movs r0, #0xe8
	movs r2, #2
	bl SetTileType
	subs r1, r5, #1
	movs r0, #0xe9
	movs r2, #2
	bl SetTileType
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0xea
	movs r2, #2
	bl SetTileType
	b _0805C4D4
_0805C482:
	movs r0, #0xe5
	adds r1, r5, #0
	movs r2, #2
	bl SetTileType
	bl CheckIsDungeon
	cmp r0, #0
	beq _0805C4D4
	bl sub_0805C608
	adds r1, r0, #0
	movs r0, #0x4f
	movs r2, #9
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0805C4D4
	movs r1, #0x3f
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #4
	ldr r1, _0805C4D8 @ =gRoomControls
	ldr r3, _0805C4DC @ =0x0000FFF0
	adds r0, r0, r3
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r5
	lsrs r0, r0, #2
	adds r0, #8
	ldrh r1, [r1, #8]
	adds r1, r1, r0
	strh r1, [r2, #0x32]
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
_0805C4D4:
	pop {r4, r5, pc}
	.align 2, 0
_0805C4D8: .4byte gRoomControls
_0805C4DC: .4byte 0x0000FFF0

	thumb_func_start sub_0805C4E0
sub_0805C4E0: @ 0x0805C4E0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r5, #0
	subs r1, #0x41
	movs r0, #0xc1
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #0
	subs r1, #0x40
	movs r0, #0xc2
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #0
	subs r1, #0x3f
	movs r0, #0xc3
	adds r2, r4, #0
	bl SetTileType
	subs r1, r5, #1
	movs r0, #0xc4
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #1
	movs r0, #0xc7
	adds r2, r4, #0
	bl SetTileType
	cmp r4, #1
	bne _0805C5AC
	bl sub_08052670
	cmp r0, #0
	beq _0805C568
	movs r0, #0x4f
	movs r1, #0xe
	movs r2, #0
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _0805C570
	movs r1, #0x3f
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #8
	ldr r2, _0805C560 @ =gRoomControls
	ldrh r1, [r2, #6]
	adds r1, r1, r0
	strh r1, [r3, #0x2e]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r5
	lsrs r0, r0, #2
	ldr r1, _0805C564 @ =0x0000FFF0
	adds r0, r0, r1
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	strh r0, [r3, #0x32]
	b _0805C570
	.align 2, 0
_0805C560: .4byte gRoomControls
_0805C564: .4byte 0x0000FFF0
_0805C568:
	bl CheckIsDungeon
	cmp r0, #0
	beq _0805C57C
_0805C570:
	movs r0, #0xc5
	adds r1, r5, #0
	movs r2, #1
	bl SetTileType
	b _0805C586
_0805C57C:
	movs r0, #0xc6
	adds r1, r5, #0
	movs r2, #1
	bl SetTileType
_0805C586:
	adds r1, r5, #0
	subs r1, #0x41
	movs r0, #0xc8
	movs r2, #2
	bl SetTileType
	adds r1, r5, #0
	subs r1, #0x40
	movs r0, #0xc9
	movs r2, #2
	bl SetTileType
	adds r1, r5, #0
	subs r1, #0x3f
	movs r0, #0xca
	movs r2, #2
	bl SetTileType
	b _0805C5FE
_0805C5AC:
	movs r0, #0xc5
	adds r1, r5, #0
	movs r2, #2
	bl SetTileType
	bl CheckIsDungeon
	cmp r0, #0
	beq _0805C5FE
	bl sub_0805C608
	adds r1, r0, #0
	movs r0, #0x4f
	movs r2, #6
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _0805C5FE
	movs r1, #0x3f
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #8
	ldr r2, _0805C600 @ =gRoomControls
	ldrh r1, [r2, #6]
	adds r1, r1, r0
	strh r1, [r3, #0x2e]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r5
	lsrs r0, r0, #2
	ldr r1, _0805C604 @ =0x0000FFF0
	adds r0, r0, r1
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	strh r0, [r3, #0x32]
	adds r1, r3, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
_0805C5FE:
	pop {r4, r5, pc}
	.align 2, 0
_0805C600: .4byte gRoomControls
_0805C604: .4byte 0x0000FFF0

	thumb_func_start sub_0805C608
sub_0805C608: @ 0x0805C608
	ldr r1, _0805C614 @ =gUnk_08108CFC
	ldr r0, _0805C618 @ =gArea
	ldrb r0, [r0, #3]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0805C614: .4byte gUnk_08108CFC
_0805C618: .4byte gArea
