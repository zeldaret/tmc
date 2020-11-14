	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805E0FC
sub_0805E0FC: @ 0x0805E0FC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805E134 @ =gUnk_08108E28
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r0, _0805E138 @ =gRoomControls
	adds r1, r4, #0
	adds r1, #0x20
	ldrb r0, [r0, #5]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0805E12A
	ldr r0, _0805E13C @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _0805E130
_0805E12A:
	adds r0, r4, #0
	bl sub_0805E1D8
_0805E130:
	pop {r4, pc}
	.align 2, 0
_0805E134: .4byte gUnk_08108E28
_0805E138: .4byte gRoomControls
_0805E13C: .4byte gTextBox

	thumb_func_start sub_0805E140
sub_0805E140: @ 0x0805E140
	push {r4, lr}
	ldrb r2, [r0, #0x10]
	movs r1, #0x20
	orrs r1, r2
	strb r1, [r0, #0x10]
	movs r1, #1
	strb r1, [r0, #0xc]
	ldr r1, _0805E180 @ =gRoomControls
	ldrb r2, [r1, #5]
	adds r1, r0, #0
	adds r1, #0x20
	strb r2, [r1]
	movs r1, #0x78
	strb r1, [r0, #0xe]
	movs r1, #0x3c
	strb r1, [r0, #0xf]
	movs r1, #7
	bl sub_0805E3A0
	ldr r1, _0805E184 @ =gUnk_08108DE8
	ldr r0, _0805E188 @ =gArea
	ldrb r0, [r0, #1]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r4, [r0]
	bl CheckIsDungeon
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0805E1F8
	pop {r4, pc}
	.align 2, 0
_0805E180: .4byte gRoomControls
_0805E184: .4byte gUnk_08108DE8
_0805E188: .4byte gArea

	thumb_func_start sub_0805E18C
sub_0805E18C: @ 0x0805E18C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0805E1D0 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805E1CC
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0805E1BA
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0805E1BA
	strb r0, [r4, #0xb]
	ldr r0, _0805E1D4 @ =gPlayerState
	adds r0, #0x8b
	movs r1, #1
	strb r1, [r0]
	bl sub_0805E5B4
_0805E1BA:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805E1CC
	adds r0, r4, #0
	bl sub_0805E1D8
_0805E1CC:
	pop {r4, pc}
	.align 2, 0
_0805E1D0: .4byte gFadeControl
_0805E1D4: .4byte gPlayerState

	thumb_func_start sub_0805E1D8
sub_0805E1D8: @ 0x0805E1D8
	push {lr}
	ldr r0, _0805E1F0 @ =gUnk_02034DF0
	movs r1, #0x80
	bl _DmaZero
	ldr r1, _0805E1F4 @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
	bl DeleteThisEntity
	pop {pc}
	.align 2, 0
_0805E1F0: .4byte gUnk_02034DF0
_0805E1F4: .4byte gScreen

	thumb_func_start sub_0805E1F8
sub_0805E1F8: @ 0x0805E1F8
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0805E234 @ =gUnk_02034DF0
	movs r1, #0x80
	bl _DmaZero
	ldr r0, _0805E238 @ =gUnk_08108E60
	mov r1, sp
	movs r2, #9
	bl _DmaCopy
	mov r1, sp
	lsrs r0, r4, #8
	strb r0, [r1, #4]
	mov r0, sp
	strb r4, [r0, #5]
	ldr r1, _0805E23C @ =gUnk_08108E48
	cmp r5, #0
	bne _0805E224
	ldr r1, _0805E240 @ =gUnk_08108E30
_0805E224:
	mov r0, sp
	bl sub_0805F46C
	ldr r1, _0805E244 @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0805E234: .4byte gUnk_02034DF0
_0805E238: .4byte gUnk_08108E60
_0805E23C: .4byte gUnk_08108E48
_0805E240: .4byte gUnk_08108E30
_0805E244: .4byte gScreen

	thumb_func_start sub_0805E248
sub_0805E248: @ 0x0805E248
	push {r4, r5, lr}
	ldr r0, _0805E2C8 @ =gUnk_03004030
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	ldr r0, _0805E2CC @ =gRoomControls
	ldrb r0, [r0, #4]
	cmp r0, #0xa
	beq _0805E25C
	cmp r0, #0x16
	bne _0805E2E8
_0805E25C:
	movs r0, #0x9f
	lsls r0, r0, #2
	adds r4, r5, #0
	subs r4, #0x41
	adds r1, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r0, _0805E2D0 @ =0x00000283
	adds r1, r4, #0
	movs r2, #2
	bl SetTileType
	ldr r0, _0805E2D4 @ =0x0000027D
	adds r4, #1
	adds r1, r4, #0
	movs r2, #1
	bl SetTileType
	movs r0, #0xa1
	lsls r0, r0, #2
	adds r1, r4, #0
	movs r2, #2
	bl SetTileType
	ldr r0, _0805E2D8 @ =0x0000027E
	adds r4, #1
	adds r1, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r0, _0805E2DC @ =0x00000285
	adds r1, r4, #0
	movs r2, #2
	bl SetTileType
	ldr r0, _0805E2E0 @ =0x0000027F
	subs r1, r5, #1
	movs r2, #1
	bl SetTileType
	movs r0, #0xa0
	lsls r0, r0, #2
	adds r1, r5, #0
	movs r2, #1
	bl SetTileType
	ldr r0, _0805E2E4 @ =0x00000282
	adds r1, r5, #1
	movs r2, #1
	bl SetTileType
	b _0805E350
	.align 2, 0
_0805E2C8: .4byte gUnk_03004030
_0805E2CC: .4byte gRoomControls
_0805E2D0: .4byte 0x00000283
_0805E2D4: .4byte 0x0000027D
_0805E2D8: .4byte 0x0000027E
_0805E2DC: .4byte 0x00000285
_0805E2E0: .4byte 0x0000027F
_0805E2E4: .4byte 0x00000282
_0805E2E8:
	movs r0, #0x9b
	lsls r0, r0, #2
	adds r4, r5, #0
	subs r4, #0x41
	adds r1, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r0, _0805E358 @ =0x00000273
	adds r1, r4, #0
	movs r2, #2
	bl SetTileType
	ldr r0, _0805E35C @ =0x0000026D
	adds r4, #1
	adds r1, r4, #0
	movs r2, #1
	bl SetTileType
	movs r0, #0x9d
	lsls r0, r0, #2
	adds r1, r4, #0
	movs r2, #2
	bl SetTileType
	ldr r0, _0805E360 @ =0x0000026E
	adds r4, #1
	adds r1, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r0, _0805E364 @ =0x00000275
	adds r1, r4, #0
	movs r2, #2
	bl SetTileType
	ldr r0, _0805E368 @ =0x0000026F
	subs r1, r5, #1
	movs r2, #1
	bl SetTileType
	movs r0, #0x9c
	lsls r0, r0, #2
	adds r1, r5, #0
	movs r2, #1
	bl SetTileType
	ldr r0, _0805E36C @ =0x00000272
	adds r1, r5, #1
	movs r2, #1
	bl SetTileType
_0805E350:
	ldr r1, _0805E370 @ =gUnk_02000070
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5, pc}
	.align 2, 0
_0805E358: .4byte 0x00000273
_0805E35C: .4byte 0x0000026D
_0805E360: .4byte 0x0000026E
_0805E364: .4byte 0x00000275
_0805E368: .4byte 0x0000026F
_0805E36C: .4byte 0x00000272
_0805E370: .4byte gUnk_02000070
