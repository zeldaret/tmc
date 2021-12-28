	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start WaterfallOpening
WaterfallOpening: @ 0x0809FF68
.ifdef EU
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	bne _0809F802
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	ldrb r0, [r4, #0x19]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0809F824 @ =gUnk_08124868
	ldrb r0, [r4, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0x1e]
	adds r1, r4, #0
	adds r1, #0x68
	movs r0, #0x78
	strh r0, [r1]
_0809F802:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0809F8BC
	movs r0, #0xff
	bl CheckRoomFlag
	cmp r0, #0
	beq _0809F8FE
	ldrb r2, [r4, #0xd]
	cmp r2, #1
	beq _0809F85A
	cmp r2, #1
	bgt _0809F828
	cmp r2, #0
	beq _0809F82E
	b _0809F8AE
	.align 2, 0
_0809F824: .4byte gUnk_08124868
_0809F828:
	cmp r2, #2
	beq _0809F88C
	b _0809F8AE
_0809F82E:
	adds r1, r4, #0
	adds r1, #0x68
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0809F8AE
	movs r0, #0x20
	strh r0, [r1]
	movs r1, #1
	strb r1, [r4, #0xe]
	movs r0, #0
	strb r0, [r4, #0xf]
	strb r1, [r4, #0xd]
	strb r1, [r4, #0xa]
	adds r0, r4, #0
	bl sub_080AE068
	movs r1, #0xc6
	lsls r1, r1, #1
	b _0809F87E
_0809F85A:
	adds r1, r4, #0
	adds r1, #0x68
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0809F8AE
	movs r0, #0x2d
	strh r0, [r1]
	strb r2, [r4, #0xe]
	movs r0, #2
	strb r0, [r4, #0xd]
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	bl sub_080AE068
	ldr r1, _0809F888 @ =0x0000018D
_0809F87E:
	adds r0, r4, #0
	bl LoadFixedGFX
	b _0809F8AE
	.align 2, 0
_0809F888: .4byte 0x0000018D
_0809F88C:
	adds r1, r4, #0
	adds r1, #0x68
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0809F8AE
	movs r0, #3
	strb r0, [r4, #0xd]
	ldr r1, _0809F8B8 @ =gChooseFileState
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	movs r0, #0x73
	bl SoundReq
_0809F8AE:
	adds r0, r4, #0
	bl sub_080A00B0
	b _0809F8FE
	.align 2, 0
_0809F8B8: .4byte gChooseFileState
_0809F8BC:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0809F8F8
	cmp r0, #2
	bne _0809F8F8
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0809F8F8
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _0809F900 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	movs r0, #0x39
	movs r2, #1
	bl SetTileType
_0809F8F8:
	adds r0, r4, #0
	bl sub_080A00B0
_0809F8FE:
	pop {r4, r5, pc}
	.align 2, 0
_0809F900: .4byte gRoomControls

.else
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	bne _0809FFA2
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	ldrb r0, [r4, #0x19]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0809FFC4 @ =gUnk_08124868
	ldrb r0, [r4, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0x1e]
	adds r1, r4, #0
	adds r1, #0x68
	movs r0, #0x78
	strh r0, [r1]
_0809FFA2:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080A0068
	movs r0, #0xff
	bl CheckRoomFlag
	cmp r0, #0
	beq _080A00AA
	ldrb r2, [r4, #0xd]
	cmp r2, #1
	beq _080A0006
	cmp r2, #1
	bgt _0809FFC8
	cmp r2, #0
	beq _0809FFCE
	b _080A005A
	.align 2, 0
_0809FFC4: .4byte gUnk_08124868
_0809FFC8:
	cmp r2, #2
	beq _080A0038
	b _080A005A
_0809FFCE:
	adds r1, r4, #0
	adds r1, #0x68
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A005A
	movs r0, #0x20
	strh r0, [r1]
	movs r1, #1
	strb r1, [r4, #0xe]
	movs r0, #0
	strb r0, [r4, #0xf]
	strb r1, [r4, #0xd]
	strb r1, [r4, #0xa]
	adds r0, r4, #0
	bl sub_080AE068
	movs r1, #0xc6
	lsls r1, r1, #1
	adds r0, r4, #0
	bl LoadFixedGFX
	movs r0, #0xf6
	bl SoundReq
	b _080A005A
_080A0006:
	adds r1, r4, #0
	adds r1, #0x68
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A005A
	movs r0, #0x2d
	strh r0, [r1]
	strb r2, [r4, #0xe]
	movs r0, #2
	strb r0, [r4, #0xd]
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	bl sub_080AE068
	ldr r1, _080A0034 @ =0x0000018D
	adds r0, r4, #0
	bl LoadFixedGFX
	b _080A005A
	.align 2, 0
_080A0034: .4byte 0x0000018D
_080A0038:
	adds r1, r4, #0
	adds r1, #0x68
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A005A
	movs r0, #3
	strb r0, [r4, #0xd]
	ldr r1, _080A0064 @ =gMenu
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	movs r0, #0x73
	bl SoundReq
_080A005A:
	adds r0, r4, #0
	bl sub_080A00B0
	b _080A00AA
	.align 2, 0
_080A0064: .4byte gMenu
_080A0068:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080A00A4
	cmp r0, #2
	bne _080A00A4
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080A00A4
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _080A00AC @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	movs r0, #0x39
	movs r2, #1
	bl SetTileType
_080A00A4:
	adds r0, r4, #0
	bl sub_080A00B0
_080A00AA:
	pop {r4, r5, pc}
	.align 2, 0
_080A00AC: .4byte gRoomControls
.endif

	thumb_func_start sub_080A00B0
sub_080A00B0: @ 0x080A00B0
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A00DA
	movs r0, #8
	strb r0, [r2, #0xe]
	ldr r1, _080A00DC @ =gUnk_08124868
	ldrb r0, [r2, #0xa]
	adds r0, r0, r1
	ldrb r1, [r2, #0xf]
	ldrb r0, [r0]
	adds r0, r1, r0
	strb r0, [r2, #0x1e]
	adds r1, #1
	movs r0, #3
	ands r1, r0
	strb r1, [r2, #0xf]
_080A00DA:
	pop {pc}
	.align 2, 0
_080A00DC: .4byte gUnk_08124868
