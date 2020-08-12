	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805B030
sub_0805B030: @ 0x0805B030
	push {lr}
	ldr r2, _0805B044 @ =gUnk_08108668
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805B044: .4byte gUnk_08108668

	thumb_func_start sub_0805B048
sub_0805B048: @ 0x0805B048
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #6
	bl sub_0805E3A0
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #0x20
	bl _DmaZero
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r2, _0805B08C @ =gRoomControls
	ldrb r0, [r2, #5]
	adds r1, r4, #0
	adds r1, #0x3f
	strb r0, [r1]
	ldrb r1, [r4, #0xa]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805B090 @ =gUnk_08108764
	adds r5, r0, r1
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _0805B094
	ldrh r0, [r2, #6]
	strh r0, [r4, #0x20]
	ldrh r0, [r2, #8]
	strh r0, [r4, #0x22]
	ldrh r0, [r2, #0x1e]
	strh r0, [r4, #0x24]
	ldrh r0, [r2, #0x20]
	b _0805B0B2
	.align 2, 0
_0805B08C: .4byte gRoomControls
_0805B090: .4byte gUnk_08108764
_0805B094:
	ldrb r0, [r5, #8]
	lsls r0, r0, #4
	ldrh r1, [r2, #6]
	adds r0, r0, r1
	strh r0, [r4, #0x20]
	ldrb r0, [r5, #9]
	lsls r0, r0, #4
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	strh r0, [r4, #0x22]
	ldrb r0, [r5, #0xa]
	lsls r0, r0, #4
	strh r0, [r4, #0x24]
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #4
_0805B0B2:
	strh r0, [r4, #0x26]
	ldr r1, [r5, #0xc]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	strb r0, [r4, #0xb]
	cmp r0, #0
	beq _0805B0FC
	ldrb r0, [r4, #0x10]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	ldrh r0, [r0, #4]
	strh r0, [r4, #0x34]
	ldr r0, [r5, #0xc]
	ldrh r0, [r0, #6]
	strh r0, [r4, #0x36]
	ldr r0, [r5, #0xc]
	ldrh r0, [r0, #8]
	strh r0, [r4, #0x30]
	ldr r0, [r5, #0xc]
	ldrh r0, [r0, #0xa]
	strh r0, [r4, #0x32]
	bl sub_0805BC4C
	adds r0, r4, #0
	bl sub_0805B2B0
	adds r0, r4, #0
	bl sub_0805B328
	ldr r1, _0805B160 @ =sub_0805B328
	adds r0, r4, #0
	movs r2, #0
	bl sub_08052D74
_0805B0FC:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0805B15E
	ldrb r1, [r0]
	ldrb r2, [r0, #1]
	movs r0, #0x28
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _0805B128
	ldr r1, [r5, #0x10]
	ldr r2, _0805B164 @ =gRoomControls
	ldrh r0, [r2, #6]
	ldrh r1, [r1, #4]
	adds r0, r0, r1
	strh r0, [r3, #0x2e]
	ldr r1, [r5, #0x10]
	ldrh r0, [r2, #8]
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	strh r0, [r3, #0x32]
_0805B128:
	ldrb r0, [r4, #0xa]
	cmp r0, #0xa
	bne _0805B15E
	movs r0, #0x4b
	bl CheckLocalFlag
	cmp r0, #0
	bne _0805B15E
	movs r0, #0x28
	movs r1, #3
	movs r2, #3
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _0805B15E
	ldr r1, [r5, #0x10]
	ldr r2, _0805B164 @ =gRoomControls
	ldrh r0, [r2, #6]
	ldrh r1, [r1, #4]
	adds r0, r0, r1
	strh r0, [r3, #0x2e]
	ldr r1, [r5, #0x10]
	ldrh r0, [r2, #8]
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	strh r0, [r3, #0x32]
_0805B15E:
	pop {r4, r5, pc}
	.align 2, 0
_0805B160: .4byte sub_0805B328
_0805B164: .4byte gRoomControls

	thumb_func_start sub_0805B168
sub_0805B168: @ 0x0805B168
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0805B1CC
	adds r5, r0, #0
	cmp r5, #0
	beq _0805B182
	adds r0, r4, #0
	bl sub_0805B210
	bl DeleteThisEntity
	b _0805B1C0
_0805B182:
	adds r0, r4, #0
	bl sub_0805B2B0
	ldr r1, _0805B194 @ =gRoomControls
	ldrh r0, [r1]
	cmp r0, #1
	bne _0805B198
	strb r0, [r4, #0xd]
	b _0805B1C0
	.align 2, 0
_0805B194: .4byte gRoomControls
_0805B198:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0805B1C0
	strb r5, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	ldrb r1, [r1, #5]
	cmp r0, r1
	beq _0805B1C0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0805B1BC
	ldr r2, _0805B1C4 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805B1C8 @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2]
_0805B1BC:
	bl DeleteThisEntity
_0805B1C0:
	pop {r4, r5, pc}
	.align 2, 0
_0805B1C4: .4byte gScreen
_0805B1C8: .4byte 0x0000F7FF

	thumb_func_start sub_0805B1CC
sub_0805B1CC: @ 0x0805B1CC
	push {r4, r5, lr}
	movs r5, #0
	movs r1, #0x20
	ldrsh r4, [r0, r1]
	movs r2, #0x22
	ldrsh r1, [r0, r2]
	ldrh r2, [r0, #0x24]
	ldrh r3, [r0, #0x26]
	adds r0, r4, #0
	bl sub_0806FBFC
	cmp r0, #0
	beq _0805B20C
	ldr r2, _0805B1FC @ =gPlayerState
	ldr r1, [r2, #0x30]
	movs r0, #5
	ands r0, r1
	cmp r0, #5
	bne _0805B200
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r2, #0x30]
	b _0805B20C
	.align 2, 0
_0805B1FC: .4byte gPlayerState
_0805B200:
	movs r0, #0x80
	lsls r0, r0, #8
	ands r1, r0
	cmp r1, #0
	beq _0805B20C
	movs r5, #1
_0805B20C:
	adds r0, r5, #0
	pop {r4, r5, pc}

	thumb_func_start sub_0805B210
sub_0805B210: @ 0x0805B210
	push {r4, r5, lr}
	ldr r2, _0805B248 @ =gScreenTransition
	movs r1, #1
	strb r1, [r2, #8]
	strb r1, [r2, #9]
	movs r1, #4
	strb r1, [r2, #0xe]
	ldrb r1, [r0, #0xa]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805B24C @ =gUnk_08108764
	adds r4, r0, r1
	ldrb r0, [r4, #1]
	strb r0, [r2, #0xc]
	ldrb r0, [r4, #2]
	strb r0, [r2, #0xd]
	ldrb r0, [r4, #3]
	strb r0, [r2, #0x14]
	ldr r0, _0805B250 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _0805B254
	movs r0, #6
	b _0805B256
	.align 2, 0
_0805B248: .4byte gScreenTransition
_0805B24C: .4byte gUnk_08108764
_0805B250: .4byte gPlayerState
_0805B254:
	movs r0, #2
_0805B256:
	strb r0, [r5, #0xf]
	ldrb r0, [r4]
	cmp r0, #1
	beq _0805B278
	cmp r0, #1
	bgt _0805B268
	cmp r0, #0
	beq _0805B26E
	b _0805B2AC
_0805B268:
	cmp r0, #2
	beq _0805B2A0
	b _0805B2AC
_0805B26E:
	ldrh r0, [r4, #4]
	strh r0, [r5, #0x10]
	ldrh r0, [r4, #6]
	strh r0, [r5, #0x12]
	b _0805B2AC
_0805B278:
	ldr r2, _0805B298 @ =gPlayerEntity
	ldr r3, _0805B29C @ =gRoomControls
	ldrh r0, [r2, #0x2e]
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	strh r0, [r5, #0x10]
	ldrh r0, [r2, #0x32]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	ldrh r4, [r4, #6]
	adds r0, r0, r4
	strh r0, [r5, #0x12]
	b _0805B2AC
	.align 2, 0
_0805B298: .4byte gPlayerEntity
_0805B29C: .4byte gRoomControls
_0805B2A0:
	ldrh r0, [r4, #4]
	strh r0, [r5, #0x10]
	ldrh r0, [r4, #6]
	strh r0, [r5, #0x12]
	movs r0, #6
	strb r0, [r5, #0xf]
_0805B2AC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0805B2B0
sub_0805B2B0: @ 0x0805B2B0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _0805B31E
	ldrh r1, [r5, #0x30]
	ldr r6, _0805B320 @ =gRoomControls
	movs r2, #0xa
	ldrsh r0, [r6, r2]
	subs r1, r1, r0
	cmp r1, #0
	bge _0805B2CA
	adds r1, #3
_0805B2CA:
	asrs r4, r1, #2
	ldrh r1, [r5, #0x32]
	movs r7, #0xc
	ldrsh r0, [r6, r7]
	subs r1, r1, r0
	cmp r1, #0
	bge _0805B2DA
	adds r1, #3
_0805B2DA:
	asrs r3, r1, #2
	movs r0, #0xc
	rsbs r0, r0, #0
	cmp r4, r0
	bge _0805B2E6
	adds r4, r0, #0
_0805B2E6:
	cmp r4, #0xc
	ble _0805B2EC
	movs r4, #0xc
_0805B2EC:
	cmp r3, r0
	bge _0805B2F2
	adds r3, r0, #0
_0805B2F2:
	cmp r3, #0xc
	ble _0805B2F8
	movs r3, #0xc
_0805B2F8:
	ldr r2, _0805B324 @ =gScreen
	ldrh r1, [r2]
	movs r7, #0x80
	lsls r7, r7, #4
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r2]
	ldrh r0, [r5, #0x34]
	ldrh r1, [r6, #0xa]
	adds r0, r0, r1
	adds r0, r0, r4
	strh r0, [r6, #0x2a]
	strh r0, [r2, #0x2e]
	ldrh r0, [r5, #0x36]
	ldrh r7, [r6, #0xc]
	adds r0, r0, r7
	adds r0, r0, r3
	strh r0, [r6, #0x2e]
	strh r0, [r2, #0x30]
_0805B31E:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805B320: .4byte gRoomControls
_0805B324: .4byte gScreen

	thumb_func_start sub_0805B328
sub_0805B328: @ 0x0805B328
	push {r4, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xb]
	cmp r0, #0
	beq _0805B372
	ldrb r1, [r1, #0xa]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805B374 @ =gUnk_08108764
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	ldr r0, [r0]
	ldr r1, _0805B378 @ =gGlobalPalettes
	adds r0, r0, r1
	ldr r1, _0805B37C @ =0x0600F000
	movs r4, #0x80
	lsls r4, r4, #4
	adds r2, r4, #0
	bl LoadAssetAsync
	ldr r1, _0805B380 @ =gScreen
	ldr r0, _0805B384 @ =0x00001E07
	strh r0, [r1, #0x2c]
	ldrh r0, [r1]
	orrs r4, r0
	strh r4, [r1]
	ldr r2, _0805B388 @ =gRoomControls
	ldrh r0, [r2, #0x2a]
	strh r0, [r1, #0x2e]
	ldrh r0, [r2, #0x2e]
	strh r0, [r1, #0x30]
	adds r1, #0x66
	ldrh r2, [r1]
	ldr r0, _0805B38C @ =0x0000FFF7
	ands r0, r2
	strh r0, [r1]
_0805B372:
	pop {r4, pc}
	.align 2, 0
_0805B374: .4byte gUnk_08108764
_0805B378: .4byte gGlobalPalettes
_0805B37C: .4byte 0x0600F000
_0805B380: .4byte gScreen
_0805B384: .4byte 0x00001E07
_0805B388: .4byte gRoomControls
_0805B38C: .4byte 0x0000FFF7

	thumb_func_start sub_0805B390
sub_0805B390: @ 0x0805B390
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0805E8D4
	adds r1, r0, #0
	cmp r1, #0
	beq _0805B3B0
	movs r0, #9
	strb r0, [r1, #8]
	movs r0, #0x1a
	strb r0, [r1, #9]
	strb r4, [r1, #0xa]
	adds r0, r1, #0
	movs r1, #6
	bl sub_0805EA2C
_0805B3B0:
	pop {r4, pc}
	.align 2, 0
