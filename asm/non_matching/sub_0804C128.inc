    .syntax unified
	push {r4, r5, lr}
	movs r0, #0
	bl sub_080AF250
	ldr r0, _0804C15C @ =gRoomVars
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C13A
	b _0804C24C
_0804C13A:
	ldr r1, _0804C160 @ =gArea
	ldrb r3, [r1, #0xd]
	movs r0, #0xe
	ands r0, r3
	adds r5, r1, #0
	cmp r0, #0
	bne _0804C164
	movs r0, #0xf0
	ands r0, r3
	cmp r0, #0
	bne _0804C19C
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r3
	movs r1, #2
	orrs r0, r1
	b _0804C19A
	.align 2, 0
_0804C15C: .4byte gRoomVars
_0804C160: .4byte gArea
_0804C164:
	ldr r2, _0804C18C @ =gRoomControls
	ldr r1, _0804C190 @ =gUnk_080D9338
	lsls r4, r3, #0x1c
	lsrs r0, r4, #0x1d
	adds r0, r0, r1
	ldrb r1, [r2, #0x10]
	ldrb r0, [r0]
	cmp r1, r0
	bne _0804C194
	lsrs r0, r4, #0x1d
	adds r0, #1
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #1
	movs r1, #0xf
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r0
	strb r1, [r5, #0xd]
	b _0804C19C
	.align 2, 0
_0804C18C: .4byte gRoomControls
_0804C190: .4byte gUnk_080D9338
_0804C194:
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r3
_0804C19A:
	strb r0, [r5, #0xd]
_0804C19C:
	ldrb r3, [r5, #0xd]
	movs r0, #0xe
	ands r0, r3
	cmp r0, #0
	bne _0804C1DE
	ldr r2, _0804C1D0 @ =gRoomControls
	ldr r1, _0804C1D4 @ =gUnk_080D9340
	lsls r4, r3, #0x18
	lsrs r0, r4, #0x1c
	adds r0, r0, r1
	ldrb r1, [r2, #0x10]
	ldrb r0, [r0]
	cmp r1, r0
	bne _0804C1D8
	lsrs r0, r4, #0x1c
	adds r0, #1
	lsls r0, r0, #4
	movs r1, #0xf
	ands r1, r3
	orrs r1, r0
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r1, r0
	strb r1, [r5, #0xd]
	b _0804C1DE
	.align 2, 0
_0804C1D0: .4byte gRoomControls
_0804C1D4: .4byte gUnk_080D9340
_0804C1D8:
	movs r0, #0xf
	ands r0, r3
	strb r0, [r5, #0xd]
_0804C1DE:
	adds r4, r5, #0
	ldrb r1, [r4, #0xd]
	movs r0, #0xe
	ands r0, r1
	cmp r0, #0xc
	bne _0804C206
	movs r0, #1
	bl sub_080AF250
	movs r0, #0x62
	bl SetGlobalFlag
	bl sub_0804C290
	ldrb r1, [r4, #0xd]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0xd]
	b _0804C254
_0804C206:
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0x60
	bne _0804C250
	movs r0, #1
	bl sub_080AF250
	movs r0, #0x5c
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804C228
	ldr r1, _0804C244 @ =0x00000107
	movs r0, #0x73
	movs r2, #1
	bl SetTileType
_0804C228:
	ldr r0, _0804C248 @ =gUnk_080D9328
	bl LoadRoomTileEntities
	movs r0, #0x62
	bl SetGlobalFlag
	bl sub_0804C290
	ldrb r1, [r5, #0xd]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r5, #0xd]
	b _0804C254
	.align 2, 0
_0804C244: .4byte 0x00000107
_0804C248: .4byte gUnk_080D9328
_0804C24C:
	bl sub_0804C258
_0804C250:
	bl sub_0804C290
_0804C254:
	pop {r4, r5, pc}
	.align 2, 0
    .syntax divided
