	.include "asm/macros.inc"
	.text
	.syntax unified

	thumb_func_start GetCurrentRoomProperty
GetCurrentRoomProperty: @ 0x0804B128
	push {lr}
	adds r2, r0, #0
	ldr r0, _0804B138 @ =gUnk_02017654
	ldr r1, [r0]
	cmp r1, #0
	bne _0804B13C
	movs r0, #0
	b _0804B166
	.align 2, 0
_0804B138: .4byte gUnk_02017654
_0804B13C:
	cmp r2, #0x7f
	bls _0804B150
	ldr r0, _0804B14C @ =gRoomVars
	movs r1, #7
	ands r1, r2
	lsls r1, r1, #2
	adds r0, #0x8c
	b _0804B162
	.align 2, 0
_0804B14C: .4byte gRoomVars
_0804B150:
	cmp r2, #7
	bls _0804B15C
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	b _0804B166
_0804B15C:
	ldr r0, _0804B168 @ =gRoomVars
	lsls r1, r2, #2
	adds r0, #0x6c
_0804B162:
	adds r1, r1, r0
	ldr r0, [r1]
_0804B166:
	pop {pc}
	.align 2, 0
_0804B168: .4byte gRoomVars

	thumb_func_start sub_0804B16C
sub_0804B16C: @ 0x0804B16C
	push {r4, lr}
	ldr r4, _0804B1A4 @ =gUnk_02017660
_0804B170:
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _0804B198
	ldrb r0, [r4, #1]
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804B198
	ldrh r3, [r4, #4]
	ldrb r1, [r4, #6]
	movs r0, #1
	ands r0, r1
	movs r2, #1
	cmp r0, #0
	beq _0804B190
	movs r2, #2
_0804B190:
	movs r0, #0x74
	adds r1, r3, #0
	bl SetTileType
_0804B198:
	adds r4, #8
	ldr r0, _0804B1A8 @ =gPaletteBuffer
	cmp r4, r0
	blo _0804B170
	pop {r4, pc}
	.align 2, 0
_0804B1A4: .4byte gUnk_02017660
_0804B1A8: .4byte gPaletteBuffer

	thumb_func_start LoadRoomTileEntities
LoadRoomTileEntities: @ 0x0804B1AC
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0
	beq _0804B25A
	b _0804B254
_0804B1B6:
	ldrb r0, [r4]
	subs r0, #1
	cmp r0, #0xc
	bhi _0804B252
	lsls r0, r0, #2
	ldr r1, _0804B1C8 @ =_0804B1CC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804B1C8: .4byte _0804B1CC
_0804B1CC: @ jump table
	.4byte _0804B200 @ case 0
	.4byte _0804B208 @ case 1
	.4byte _0804B252 @ case 2
	.4byte _0804B210 @ case 3
	.4byte _0804B252 @ case 4
	.4byte _0804B252 @ case 5
	.4byte _0804B218 @ case 6
	.4byte _0804B252 @ case 7
	.4byte _0804B22C @ case 8
	.4byte _0804B234 @ case 9
	.4byte _0804B23C @ case 10
	.4byte _0804B244 @ case 11
	.4byte _0804B24C @ case 12
_0804B200:
	adds r0, r4, #0
	bl sub_0804B290
	b _0804B252
_0804B208:
	adds r0, r4, #0
	bl sub_0804B29C
	b _0804B252
_0804B210:
	adds r0, r4, #0
	bl sub_0804B300
	b _0804B252
_0804B218:
	ldr r0, _0804B224 @ =gArea
	ldr r1, _0804B228 @ =0x00000864
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	str r1, [r0]
	b _0804B252
	.align 2, 0
_0804B224: .4byte gArea
_0804B228: .4byte 0x00000864
_0804B22C:
	adds r0, r4, #0
	bl sub_0804B334
	b _0804B252
_0804B234:
	adds r0, r4, #0
	bl sub_0804B340
	b _0804B252
_0804B23C:
	adds r0, r4, #0
	bl sub_0804B260
	b _0804B252
_0804B244:
	adds r0, r4, #0
	bl sub_0804B27C
	b _0804B252
_0804B24C:
	ldr r1, _0804B25C @ =gRoomVars
	ldrb r0, [r4, #3]
	strb r0, [r1, #9]
_0804B252:
	adds r4, #8
_0804B254:
	ldrb r0, [r4]
	cmp r0, #0
	bne _0804B1B6
_0804B25A:
	pop {r4, pc}
	.align 2, 0
_0804B25C: .4byte gRoomVars

	thumb_func_start sub_0804B260
sub_0804B260: @ 0x0804B260
	push {lr}
	ldrb r0, [r0, #1]
	lsls r0, r0, #5
	ldr r1, _0804B274 @ =gUnk_080015BC
	adds r0, r0, r1
	ldr r1, _0804B278 @ =gUnk_02034398
	movs r2, #0x20
	bl sub_0801D66C
	pop {pc}
	.align 2, 0
_0804B274: .4byte gUnk_080015BC
_0804B278: .4byte gUnk_02034398

	thumb_func_start sub_0804B27C
sub_0804B27C: @ 0x0804B27C
	push {lr}
	ldr r1, _0804B28C @ =gArea
	ldrb r0, [r0, #1]
	strb r0, [r1, #1]
	bl sub_08054524
	pop {pc}
	.align 2, 0
_0804B28C: .4byte gArea

	thumb_func_start sub_0804B290
sub_0804B290: @ 0x0804B290
	push {lr}
	ldrb r0, [r0, #1]
	bl SetLocalFlag
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804B29C
sub_0804B29C: @ 0x0804B29C
	push {r4, lr}
	adds r2, r0, #0
	ldr r4, _0804B2EC @ =gUnk_02017660
	movs r1, #0
_0804B2A4:
	ldrh r0, [r4, #4]
	cmp r0, #0
	bne _0804B2F4
	adds r0, r2, #0
	adds r1, r4, #0
	movs r2, #8
	bl sub_0801D66C
	ldrb r1, [r4, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804B2FC
	ldr r0, _0804B2F0 @ =gRoomControls
	ldrb r1, [r0, #0xf]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804B2FC
	ldrb r0, [r4, #1]
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804B2FC
	ldrb r1, [r4, #1]
	movs r0, #0x52
	movs r2, #0
	bl CreateObject
	cmp r0, #0
	beq _0804B2FC
	ldrh r1, [r4, #4]
	bl sub_0806F704
	b _0804B2FC
	.align 2, 0
_0804B2EC: .4byte gUnk_02017660
_0804B2F0: .4byte gRoomControls
_0804B2F4:
	adds r1, #1
	adds r4, #8
	cmp r1, #7
	bls _0804B2A4
_0804B2FC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0804B300
sub_0804B300: @ 0x0804B300
	push {r4, lr}
	adds r4, r0, #0
	bl GetEmptyManager
	adds r1, r0, #0
	cmp r1, #0
	beq _0804B332
	movs r0, #9
	strb r0, [r1, #8]
	movs r0, #0x24
	strb r0, [r1, #9]
	ldrh r0, [r4, #4]
	strh r0, [r1, #0x38]
	ldrh r0, [r4, #6]
	strh r0, [r1, #0x3a]
	ldrb r0, [r4, #2]
	adds r2, r1, #0
	adds r2, #0x35
	strb r0, [r2]
	ldrb r0, [r4, #1]
	strh r0, [r1, #0x3e]
	adds r0, r1, #0
	movs r1, #6
	bl AppendEntityToList
_0804B332:
	pop {r4, pc}

	thumb_func_start sub_0804B334
sub_0804B334: @ 0x0804B334
	push {lr}
	ldrb r0, [r0, #3]
	movs r1, #1
	bl sub_0805BB00
	pop {pc}

	thumb_func_start sub_0804B340
sub_0804B340: @ 0x0804B340
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #2]
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804B35A
	ldrh r0, [r4, #6]
	ldrh r1, [r4, #4]
	ldrb r2, [r4, #1]
	bl SetTileType
	b _0804B380
_0804B35A:
	ldr r1, _0804B384 @ =gRoomVars
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne _0804B380
	movs r0, #1
	strb r0, [r1, #1]
	bl GetEmptyManager
	adds r1, r0, #0
	cmp r1, #0
	beq _0804B380
	movs r0, #9
	strb r0, [r1, #8]
	movs r0, #0x2a
	strb r0, [r1, #9]
	adds r0, r1, #0
	movs r1, #6
	bl AppendEntityToList
_0804B380:
	pop {r4, pc}
	.align 2, 0
_0804B384: .4byte gRoomVars

	thumb_func_start sub_0804B388
sub_0804B388: @ 0x0804B388
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0x34
	cmp r4, #1
	bne _0804B396
	movs r0, #0x26
_0804B396:
	adds r1, r5, #0
	adds r2, r4, #0
	bl SetTileType
	movs r0, #0xf
	movs r1, #2
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _0804B3BA
	adds r0, #0x38
	strb r4, [r0]
	adds r0, r1, #0
	adds r1, r5, #0
	bl sub_0806F704
_0804B3BA:
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_080526F8
	pop {r4, r5, pc}
