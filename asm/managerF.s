	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08058ECC
sub_08058ECC: @ 0x08058ECC
	push {lr}
	ldr r2, _08058EE0 @ =gUnk_08108314
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08058EE0: .4byte gUnk_08108314

	thumb_func_start sub_08058EE4
sub_08058EE4: @ 0x08058EE4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _08058EF2
	movs r0, #1
	strb r0, [r6, #0xc]
_08058EF2:
	ldrb r0, [r6, #0xb]
	bl CheckRoomFlag
	cmp r0, #0
	beq _08058F40
	movs r5, #0x94
	lsls r5, r5, #1
	ldrb r2, [r6, #0xb]
	adds r2, #1
	adds r0, r5, #0
	movs r1, #0x68
	bl sub_08058F44
	movs r4, #0xac
	lsls r4, r4, #1
	ldrb r2, [r6, #0xb]
	adds r2, #2
	adds r0, r4, #0
	movs r1, #0x68
	bl sub_08058F44
	ldrb r2, [r6, #0xb]
	adds r2, #3
	adds r0, r5, #0
	movs r1, #0x98
	bl sub_08058F44
	ldrb r2, [r6, #0xb]
	adds r2, #4
	adds r0, r4, #0
	movs r1, #0x98
	bl sub_08058F44
	movs r0, #0x92
	lsls r0, r0, #1
	bl SoundReq
	bl DeleteThisEntity
_08058F40:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08058F44
sub_08058F44: @ 0x08058F44
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, r2, #0
	bl CheckRoomFlag
	cmp r0, #0
	bne _08058F80
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl sub_080002A8
	cmp r0, #0x61
	bne _08058F80
	lsrs r1, r4, #4
	movs r2, #0x3f
	ands r1, r2
	lsrs r0, r5, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r1, r0
	movs r0, #0x26
	movs r2, #1
	bl SetTileType
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08058F84
_08058F80:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08058F84
sub_08058F84: @ 0x08058F84
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0x21
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _08058FA8
	ldr r0, _08058FAC @ =gRoomControls
	ldrh r1, [r0, #6]
	adds r1, r1, r4
	strh r1, [r2, #0x2e]
	ldrh r0, [r0, #8]
	adds r0, r0, r5
	strh r0, [r2, #0x32]
_08058FA8:
	pop {r4, r5, pc}
	.align 2, 0
_08058FAC: .4byte gRoomControls

	thumb_func_start sub_08058FB0
sub_08058FB0: @ 0x08058FB0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _08058FF6
	cmp r0, #1
	bgt _08058FC4
	cmp r0, #0
	beq _08058FCA
	b _08059050
_08058FC4:
	cmp r0, #2
	beq _08059018
	b _08059050
_08058FCA:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _08058FDC
	movs r0, #7
	strb r0, [r4, #0xd]
	movs r0, #6
	b _08058FE2
_08058FDC:
	movs r0, #8
	strb r0, [r4, #0xd]
	movs r0, #2
_08058FE2:
	strb r0, [r4, #0xf]
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _08059060
	adds r0, r4, #0
	bl DeleteManager
	b _08059060
_08058FF6:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _08059060
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0xf0
	bl sub_0805E4E0
	adds r0, r4, #0
	bl sub_08059064
	b _08059060
_08059018:
	ldrb r0, [r4, #0xe]
	cmp r0, #0x5a
	bne _08059028
	movs r0, #2
	bl sub_08078A90
	bl sub_08077B20
_08059028:
	ldrb r2, [r4, #0xe]
	cmp r2, #0x3c
	bne _08059034
	ldr r1, _0805904C @ =gPlayerEntity
	ldrb r0, [r4, #0xf]
	strb r0, [r1, #0x14]
_08059034:
	subs r0, r2, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08059060
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xd]
	movs r0, #5
	bl MenuFadeIn
	b _08059060
	.align 2, 0
_0805904C: .4byte gPlayerEntity
_08059050:
	ldrh r0, [r4, #0x3e]
	bl SetFlag
	movs r0, #1
	bl sub_08078A90
	bl DeleteThisEntity
_08059060:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08059064
sub_08059064: @ 0x08059064
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x53
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0805908E
	movs r0, #2
	strb r0, [r2, #0xe]
	ldr r1, _08059090 @ =gRoomControls
	ldrh r0, [r1, #6]
	ldrh r3, [r4, #0x38]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #8]
	ldrh r4, [r4, #0x3a]
	adds r0, r0, r4
	strh r0, [r2, #0x32]
_0805908E:
	pop {r4, pc}
	.align 2, 0
_08059090: .4byte gRoomControls

	thumb_func_start sub_08059094
sub_08059094: @ 0x08059094
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080590B6
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x60
	bl CheckLocalFlag
	cmp r0, #0
	bne _080590CC
	movs r0, #0x5f
	bl SetLocalFlag
	b _080590C8
_080590B6:
	movs r0, #0x60
	bl CheckLocalFlag
	cmp r0, #0
	beq _080590C8
	movs r0, #0x5f
	bl ClearLocalFlag
	movs r5, #1
_080590C8:
	cmp r5, #0
	beq _080590D8
_080590CC:
	ldr r0, _080590DC @ =gUnk_080F4B88
	bl LoadRoomEntityList
	adds r0, r4, #0
	bl DeleteManager
_080590D8:
	pop {r4, r5, pc}
	.align 2, 0
_080590DC: .4byte gUnk_080F4B88

	thumb_func_start sub_080590E0
sub_080590E0: @ 0x080590E0
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	bne _080590F6
	movs r0, #1
	strb r0, [r1, #0xc]
	adds r0, r1, #0
	movs r1, #6
	bl sub_0805E3A0
_080590F6:
	movs r0, #0x6c
	bl CheckLocalFlag
	cmp r0, #0
	beq _0805911A
	movs r0, #0x4b
	bl CheckLocalFlag
	cmp r0, #0
	beq _08059112
	movs r0, #0x4a
	bl SetLocalFlag
	b _08059120
_08059112:
	movs r0, #0x4a
	bl ClearLocalFlag
	b _08059120
_0805911A:
	movs r0, #0x4a
	bl ClearLocalFlag
_08059120:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08059124
sub_08059124: @ 0x08059124
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _08059174
	cmp r0, #1
	beq _080591AC
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080591C8
	movs r1, #0x38
	ldrsh r0, [r4, r1]
	movs r2, #0x3a
	ldrsh r1, [r4, r2]
	ldrb r2, [r4, #0xb]
	bl CreateDustAt
	ldrh r0, [r4, #0x38]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	movs r2, #0x3f
	ands r0, r2
	ldrh r1, [r4, #0x3a]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	ands r1, r2
	lsls r1, r1, #6
	orrs r0, r1
	ldrb r1, [r4, #0xb]
	bl sub_0807BA8C
	movs r0, #0xcd
	bl SoundReq
	bl DeleteThisEntity
	b _080591C8
_08059174:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _08059182
	bl DeleteThisEntity
_08059182:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _080591A8 @ =0x00000365
	ldrh r1, [r4, #0x38]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	movs r3, #0x3f
	ands r1, r3
	ldrh r2, [r4, #0x3a]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	ands r2, r3
	lsls r2, r2, #6
	orrs r1, r2
	ldrb r2, [r4, #0xb]
	bl SetTileType
	b _080591C8
	.align 2, 0
_080591A8: .4byte 0x00000365
_080591AC:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _080591C8
	adds r0, r4, #0
	movs r1, #0x4b
	bl sub_0805E4E0
	movs r0, #0x2d
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_080591C8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080591CC
sub_080591CC: @ 0x080591CC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080591F4
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	strb r0, [r4, #0xb]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08059214
	ldr r1, _080591F0 @ =gRoomVars
	ldrh r0, [r4, #0x3a]
	b _08059218
	.align 2, 0
_080591F0: .4byte gRoomVars
_080591F4:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	adds r1, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, r1
	beq _0805921A
	strb r1, [r4, #0xb]
	cmp r1, #0
	beq _08059214
	ldr r1, _08059210 @ =gRoomVars
	ldrh r0, [r4, #0x3a]
	b _08059218
	.align 2, 0
_08059210: .4byte gRoomVars
_08059214:
	ldr r1, _0805921C @ =gRoomVars
	ldrh r0, [r4, #0x38]
_08059218:
	strh r0, [r1, #0xc]
_0805921A:
	pop {r4, pc}
	.align 2, 0
_0805921C: .4byte gRoomVars

	thumb_func_start sub_08059220
sub_08059220: @ 0x08059220
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r2, _08059268 @ =gRoomVars
	movs r0, #0
	strh r0, [r2, #0xc]
	ldr r4, _0805926C @ =gUnk_08108354
	ldrh r0, [r4]
	ldr r1, _08059270 @ =0x0000FFFF
	cmp r0, r1
	beq _08059254
	adds r7, r2, #0
	adds r6, r1, #0
_08059238:
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	ldrh r2, [r4, #4]
	ldrh r3, [r4, #6]
	bl CheckPlayerInRegion
	cmp r0, #0
	beq _0805924C
	ldrh r0, [r4, #8]
	strh r0, [r7, #0xc]
_0805924C:
	adds r4, #0xa
	ldrh r0, [r4]
	cmp r0, r6
	bne _08059238
_08059254:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _08059266
	movs r0, #1
	strb r0, [r5, #0xc]
	ldr r1, _08059274 @ =gArea
	ldr r0, _08059268 @ =gRoomVars
	ldrh r0, [r0, #0xc]
	strh r0, [r1, #0xa]
_08059266:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08059268: .4byte gRoomVars
_0805926C: .4byte gUnk_08108354
_08059270: .4byte 0x0000FFFF
_08059274: .4byte gArea

	thumb_func_start sub_08059278
sub_08059278: @ 0x08059278
	push {lr}
	movs r0, #9
	movs r1, #0xf
	movs r2, #6
	bl FindEntityByID
	cmp r0, #0
	beq _0805928C
	bl sub_08058ECC
_0805928C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08059290
sub_08059290: @ 0x08059290
	movs r1, #1
	strb r1, [r0, #0xc]
	ldr r1, _0805929C @ =gRoomControls
	ldr r0, _080592A0 @ =gPlayerEntity
	str r0, [r1, #0x30]
	bx lr
	.align 2, 0
_0805929C: .4byte gRoomControls
_080592A0: .4byte gPlayerEntity

	thumb_func_start sub_080592A4
sub_080592A4: @ 0x080592A4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080592C8
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _080592EA
	adds r0, r4, #0
	bl sub_080592EC
	bl DeleteThisEntity
	b _080592EA
_080592C8:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _080592EA
	adds r0, r4, #0
	bl sub_080592EC
	adds r0, r4, #0
	bl sub_0805930C
	movs r0, #0xb7
	lsls r0, r0, #1
	bl SoundReq
	bl DeleteThisEntity
_080592EA:
	pop {r4, pc}

	thumb_func_start sub_080592EC
sub_080592EC: @ 0x080592EC
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x38]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	movs r2, #0x3f
	ands r0, r2
	ldrh r1, [r1, #0x3a]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	ands r1, r2
	lsls r1, r1, #6
	orrs r0, r1
	bl SetDirtTile
	pop {pc}

	thumb_func_start sub_0805930C
sub_0805930C: @ 0x0805930C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xf
	movs r1, #0x43
	movs r2, #0x40
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0805933A
	ldr r1, _0805933C @ =gRoomControls
	ldrh r0, [r1, #6]
	ldrh r3, [r4, #0x38]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #8]
	ldrh r4, [r4, #0x3a]
	adds r0, r0, r4
	strh r0, [r2, #0x32]
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
_0805933A:
	pop {r4, pc}
	.align 2, 0
_0805933C: .4byte gRoomControls

	thumb_func_start SetDirtTile
SetDirtTile: @ 0x08059340
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x1d
	adds r1, r4, #0
	movs r2, #1
	bl SetTileType
	movs r0, #0
	adds r1, r4, #0
	movs r2, #2
	bl SetTileType
	subs r4, #0x40
	movs r0, #0
	adds r1, r4, #0
	movs r2, #2
	bl SetTileType
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08059368
sub_08059368: @ 0x08059368
	push {lr}
	adds r2, r0, #0
	movs r0, #1
	strb r0, [r2, #0xc]
	ldr r1, _08059388 @ =gCurrentTextBox
	ldrh r0, [r2, #0x3c]
	ldrh r1, [r1, #0x28]
	cmp r0, r1
	bne _08059384
	ldrh r0, [r2, #0x3e]
	bl SetFlag
	bl DeleteThisEntity
_08059384:
	pop {pc}
	.align 2, 0
_08059388: .4byte gCurrentTextBox

	thumb_func_start sub_0805938C
sub_0805938C: @ 0x0805938C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080593CC
	cmp r0, #0
	beq _080593C8
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _080593CA
	movs r1, #0x38
	ldrsh r0, [r4, r1]
	ldr r2, _080593C4 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	movs r3, #0x3a
	ldrsh r1, [r4, r3]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	movs r2, #0xff
	movs r3, #0xa
	bl sub_080806BC
	b _080593CA
	.align 2, 0
_080593C4: .4byte gRoomControls
_080593C8:
	strb r0, [r4, #0xe]
_080593CA:
	pop {r4, pc}

	thumb_func_start sub_080593CC
sub_080593CC: @ 0x080593CC
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, _08059418 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08059420
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _08059420
	ldr r4, _0805941C @ =gPlayerEntity
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _08059420
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r0, r1
	bne _08059420
	movs r0, #0x38
	ldrsh r1, [r3, r0]
	movs r0, #0x3a
	ldrsh r2, [r3, r0]
	adds r2, #0xc
	adds r0, r4, #0
	movs r3, #6
	bl sub_0806FCB8
	b _08059422
	.align 2, 0
_08059418: .4byte gPlayerState
_0805941C: .4byte gPlayerEntity
_08059420:
	movs r0, #0
_08059422:
	pop {r4, pc}

	thumb_func_start sub_08059424
sub_08059424: @ 0x08059424
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _08059436
	bl DeleteThisEntity
_08059436:
	ldrh r0, [r4, #0x3c]
	bl CheckFlags
	cmp r0, #0
	beq _08059476
	movs r0, #0xf
	movs r1, #0x35
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _08059476
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	ldr r1, _08059478 @ =gRoomControls
	ldrh r0, [r1, #6]
	ldrh r3, [r4, #0x38]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #8]
	ldrh r4, [r4, #0x3a]
	adds r0, r0, r4
	strh r0, [r2, #0x32]
	movs r0, #0xd8
	lsls r0, r0, #1
	bl EnqueueSFX
	bl DeleteThisEntity
_08059476:
	pop {r4, pc}
	.align 2, 0
_08059478: .4byte gRoomControls

	thumb_func_start sub_0805947C
sub_0805947C: @ 0x0805947C
	push {lr}
	ldrh r0, [r0, #0x3e]
	bl CheckFlags
	cmp r0, #0
	bne _080594CE
	movs r0, #3
	bl sub_08078A90
	ldr r1, _080594B0 @ =gRoomControls
	ldrh r0, [r1]
	cmp r0, #0
	bne _080594D2
	ldr r0, _080594B4 @ =gRoomVars
	ldrb r0, [r0]
	cmp r0, #0
	beq _080594BC
	ldr r0, _080594B8 @ =gUnk_08108380
	ldrb r1, [r1, #0x10]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl StartPlayerScript
	b _080594CE
	.align 2, 0
_080594B0: .4byte gRoomControls
_080594B4: .4byte gRoomVars
_080594B8: .4byte gUnk_08108380
_080594BC:
	ldr r1, _080594D4 @ =gUnk_08108380
	ldr r0, _080594D8 @ =gPlayerEntity
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl StartPlayerScript
_080594CE:
	bl DeleteThisEntity
_080594D2:
	pop {pc}
	.align 2, 0
_080594D4: .4byte gUnk_08108380
_080594D8: .4byte gPlayerEntity

	thumb_func_start sub_080594DC
sub_080594DC: @ 0x080594DC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _080594F2
	cmp r0, #1
	bgt _0805951C
	cmp r0, #0
	bne _0805951C
	movs r0, #1
	strb r0, [r4, #0xc]
_080594F2:
	movs r0, #6
	bl GetInventoryValue
	cmp r0, #0
	beq _08059540
	movs r0, #0x8c
	lsls r0, r0, #4
	movs r1, #0x85
	bl CheckLocalFlagByOffset
	cmp r0, #0
	bne _08059540
	movs r0, #2
	strb r0, [r4, #0xc]
	ldr r0, _08059518 @ =0x00000B0F
	bl sub_080186C0
	b _08059540
	.align 2, 0
_08059518: .4byte 0x00000B0F
_0805951C:
	ldr r0, _08059544 @ =gArea
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _0805952A
	bl DeleteThisEntity
_0805952A:
	movs r0, #0x8c
	lsls r0, r0, #4
	movs r1, #0x85
	bl CheckLocalFlagByOffset
	cmp r0, #0
	beq _08059540
	bl sub_0801855C
	bl DeleteThisEntity
_08059540:
	pop {r4, pc}
	.align 2, 0
_08059544: .4byte gArea

	thumb_func_start sub_08059548
sub_08059548: @ 0x08059548
	push {lr}
	movs r1, #6
	bl sub_0805E3A0
	ldr r0, _08059568 @ =gPlayerEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #0x16
	bne _0805955C
	bl DeleteThisEntity
_0805955C:
	ldr r2, _0805956C @ =gInput
	ldrh r1, [r2]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2]
	pop {pc}
	.align 2, 0
_08059568: .4byte gPlayerEntity
_0805956C: .4byte gInput
