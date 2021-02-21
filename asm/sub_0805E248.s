	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

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
