	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start FrozenWaterElement
FrozenWaterElement: @ 0x0809BEB4
	push {lr}
	ldr r2, _0809BEC8 @ =gUnk_08123DB4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809BEC8: .4byte gUnk_08123DB4

	thumb_func_start sub_0809BECC
sub_0809BECC: @ 0x0809BECC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x9b
	bl CheckFlags
	cmp r0, #0
	beq _0809BEDE
	bl DeleteThisEntity
_0809BEDE:
	movs r0, #0x91
	movs r1, #0
	movs r2, #0
	bl CreateObject
	str r0, [r4, #0x54]
	cmp r0, #0
	beq _0809BF1A
	movs r2, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x11]
	subs r0, #0x11
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x11]
	strb r2, [r4, #0x1e]
	ldrb r0, [r4, #0x19]
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r4, #0
	bl sub_0809C0A8
	adds r0, r4, #0
	movs r1, #0xcc
	movs r2, #0xcc
	movs r3, #0
	bl sub_0805EC9C
_0809BF1A:
	pop {r4, pc}

	thumb_func_start sub_0809BF1C
sub_0809BF1C: @ 0x0809BF1C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xcc
	movs r2, #0xcc
	movs r3, #0
	bl sub_0805EC9C
	movs r0, #0x37
	bl CheckFlags
	cmp r0, #0
	beq _0809BF6C
	movs r0, #0x90
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _0809BF6C
	ldr r0, _0809BF70 @ =gRoomControls
	str r1, [r0, #0x30]
	ldr r0, [r4, #0x54]
	str r1, [r0, #0x54]
	movs r3, #0x80
	lsls r3, r3, #0xb
	adds r0, r4, #0
	movs r2, #0
	bl PositionRelative
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x74
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, #0x73
	bl sub_08004488
_0809BF6C:
	pop {r4, pc}
	.align 2, 0
_0809BF70: .4byte gRoomControls

	thumb_func_start sub_0809BF74
sub_0809BF74: @ 0x0809BF74
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r7, #0
	adds r5, #0x74
	ldrh r0, [r5]
	subs r1, r0, #1
	strh r1, [r5]
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _0809BFA0
	ldr r1, [r7, #0x54]
	movs r0, #1
	strb r0, [r1, #0xf]
	adds r0, r7, #0
	bl sub_0809C23C
	movs r0, #0x9b
	bl CheckFlags
	bl DeleteThisEntity
	b _0809C09A
_0809BFA0:
	movs r0, #0x1f
	ands r1, r0
	cmp r1, #0
	bne _0809BFAE
	ldr r0, _0809C09C @ =0x000001B3
	bl sub_08004488
_0809BFAE:
	ldrh r0, [r5]
	cmp r0, #0x77
	bhi _0809BFE0
	movs r1, #0x78
	subs r1, r1, r0
	lsls r4, r1, #5
	adds r4, #0xcc
	lsls r1, r1, #4
	adds r1, #0xcc
	adds r0, r7, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_0805EC9C
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #8
	movs r3, #0
	bl sub_0806FCF4
	adds r1, r7, #0
	adds r1, #0x63
	ldrb r0, [r1]
	adds r0, #8
	strb r0, [r1]
_0809BFE0:
	ldr r1, _0809C0A0 @ =gUnk_08123DC0
	ldrh r0, [r5]
	lsrs r0, r0, #5
	adds r0, r0, r1
	ldrb r6, [r0]
	movs r0, #0xf
	movs r1, #0x11
	movs r2, #0x40
	bl CreateObject
	adds r5, r0, #0
	cmp r5, #0
	beq _0809C044
	bl Random
	adds r4, r0, #0
	asrs r0, r4, #0x10
	ands r0, r6
	adds r2, r6, #1
	lsrs r1, r2, #1
	subs r0, r0, r1
	mov ip, r0
	lsrs r0, r6, #1
	ands r0, r4
	lsrs r2, r2, #2
	subs r4, r0, r2
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x80
	ldr r2, _0809C0A4 @ =gRoomControls
	ldrh r0, [r2, #6]
	ldrh r1, [r1]
	adds r0, r0, r1
	add r0, ip
	strh r0, [r5, #0x2e]
	adds r1, r7, #0
	adds r1, #0x82
	ldrh r0, [r2, #8]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r0, r0, r4
	strh r0, [r5, #0x32]
_0809C044:
	movs r0, #0xf
	movs r1, #2
	movs r2, #0x40
	bl CreateObject
	adds r5, r0, #0
	cmp r5, #0
	beq _0809C09A
	bl Random
	adds r4, r0, #0
	asrs r1, r4, #0x10
	ands r1, r6
	adds r0, r6, #1
	lsrs r0, r0, #1
	subs r1, r1, r0
	mov ip, r1
	lsrs r3, r6, #1
	ands r3, r4
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x80
	ldr r2, _0809C0A4 @ =gRoomControls
	ldrh r0, [r2, #6]
	ldrh r1, [r1]
	adds r0, r0, r1
	add r0, ip
	strh r0, [r5, #0x2e]
	adds r1, r7, #0
	adds r1, #0x82
	ldrh r0, [r2, #8]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r0, r0, r3
	strh r0, [r5, #0x32]
_0809C09A:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809C09C: .4byte 0x000001B3
_0809C0A0: .4byte gUnk_08123DC0
_0809C0A4: .4byte gRoomControls

	thumb_func_start sub_0809C0A8
sub_0809C0A8: @ 0x0809C0A8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r3, _0809C214 @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r6, r0, #4
	movs r2, #0x3f
	ands r6, r2
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r6, r0
	ldr r5, _0809C218 @ =0x00004022
	adds r1, r6, #0
	subs r1, #0x41
	adds r4, #0x38
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	adds r1, r6, #0
	subs r1, #0x40
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	adds r1, r6, #0
	subs r1, #0x3f
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	subs r1, r6, #2
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	subs r1, r6, #1
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	ldrb r2, [r4]
	adds r0, r5, #0
	adds r1, r6, #0
	bl SetTile
	adds r1, r6, #1
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	adds r1, r6, #2
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	adds r1, r6, #0
	adds r1, #0x3e
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	adds r1, r6, #0
	adds r1, #0x3f
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	adds r1, r6, #0
	adds r1, #0x40
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	adds r1, r6, #0
	adds r1, #0x41
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	adds r1, r6, #0
	adds r1, #0x42
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	adds r1, r6, #0
	adds r1, #0x7f
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	adds r1, r6, #0
	adds r1, #0x80
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	adds r1, r6, #0
	adds r1, #0x81
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	ldr r0, _0809C21C @ =0x0000013F
	adds r1, r6, r0
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r1, r6, r0
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	ldr r0, _0809C220 @ =0x00000141
	adds r1, r6, r0
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	ldr r0, _0809C224 @ =0x0000017F
	adds r1, r6, r0
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	ldr r0, _0809C228 @ =0x00000181
	adds r1, r6, r0
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	ldr r0, _0809C22C @ =0x000001BD
	adds r1, r6, r0
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	movs r0, #0xdf
	lsls r0, r0, #1
	adds r1, r6, r0
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	ldr r0, _0809C230 @ =0x000001BF
	adds r1, r6, r0
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	ldr r0, _0809C234 @ =0x000001C1
	adds r1, r6, r0
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	movs r0, #0xe1
	lsls r0, r0, #1
	adds r1, r6, r0
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	ldr r0, _0809C238 @ =0x000001C3
	adds r1, r6, r0
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	pop {r4, r5, r6, pc}
	.align 2, 0
_0809C214: .4byte gRoomControls
_0809C218: .4byte 0x00004022
_0809C21C: .4byte 0x0000013F
_0809C220: .4byte 0x00000141
_0809C224: .4byte 0x0000017F
_0809C228: .4byte 0x00000181
_0809C22C: .4byte 0x000001BD
_0809C230: .4byte 0x000001BF
_0809C234: .4byte 0x000001C1
_0809C238: .4byte 0x000001C3

	thumb_func_start sub_0809C23C
sub_0809C23C: @ 0x0809C23C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r3, _0809C370 @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r5, r0, #4
	movs r2, #0x3f
	ands r5, r2
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r5, r0
	adds r0, r5, #0
	subs r0, #0x41
	adds r4, #0x38
	ldrb r1, [r4]
	bl sub_0807BA8C
	adds r0, r5, #0
	subs r0, #0x40
	ldrb r1, [r4]
	bl sub_0807BA8C
	adds r0, r5, #0
	subs r0, #0x3f
	ldrb r1, [r4]
	bl sub_0807BA8C
	subs r0, r5, #2
	ldrb r1, [r4]
	bl sub_0807BA8C
	subs r0, r5, #1
	ldrb r1, [r4]
	bl sub_0807BA8C
	ldrb r1, [r4]
	adds r0, r5, #0
	bl sub_0807BA8C
	adds r0, r5, #1
	ldrb r1, [r4]
	bl sub_0807BA8C
	adds r0, r5, #2
	ldrb r1, [r4]
	bl sub_0807BA8C
	adds r0, r5, #0
	adds r0, #0x3e
	ldrb r1, [r4]
	bl sub_0807BA8C
	adds r0, r5, #0
	adds r0, #0x3f
	ldrb r1, [r4]
	bl sub_0807BA8C
	adds r0, r5, #0
	adds r0, #0x40
	ldrb r1, [r4]
	bl sub_0807BA8C
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r1, [r4]
	bl sub_0807BA8C
	adds r0, r5, #0
	adds r0, #0x42
	ldrb r1, [r4]
	bl sub_0807BA8C
	adds r0, r5, #0
	adds r0, #0x7f
	ldrb r1, [r4]
	bl sub_0807BA8C
	adds r0, r5, #0
	adds r0, #0x80
	ldrb r1, [r4]
	bl sub_0807BA8C
	adds r0, r5, #0
	adds r0, #0x81
	ldrb r1, [r4]
	bl sub_0807BA8C
	ldr r1, _0809C374 @ =0x0000013F
	adds r0, r5, r1
	ldrb r1, [r4]
	bl sub_0807BA8C
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r1, [r4]
	bl sub_0807BA8C
	ldr r1, _0809C378 @ =0x00000141
	adds r0, r5, r1
	ldrb r1, [r4]
	bl sub_0807BA8C
	ldr r1, _0809C37C @ =0x0000017F
	adds r0, r5, r1
	ldrb r1, [r4]
	bl sub_0807BA8C
	ldr r1, _0809C380 @ =0x00000181
	adds r0, r5, r1
	ldrb r1, [r4]
	bl sub_0807BA8C
	ldr r1, _0809C384 @ =0x000001BD
	adds r0, r5, r1
	ldrb r1, [r4]
	bl sub_0807BA8C
	movs r1, #0xdf
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r1, [r4]
	bl sub_0807BA8C
	ldr r1, _0809C388 @ =0x000001BF
	adds r0, r5, r1
	ldrb r1, [r4]
	bl sub_0807BA8C
	ldr r1, _0809C38C @ =0x000001C1
	adds r0, r5, r1
	ldrb r1, [r4]
	bl sub_0807BA8C
	movs r1, #0xe1
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r1, [r4]
	bl sub_0807BA8C
	ldr r1, _0809C390 @ =0x000001C3
	adds r0, r5, r1
	ldrb r1, [r4]
	bl sub_0807BA8C
	pop {r4, r5, pc}
	.align 2, 0
_0809C370: .4byte gRoomControls
_0809C374: .4byte 0x0000013F
_0809C378: .4byte 0x00000141
_0809C37C: .4byte 0x0000017F
_0809C380: .4byte 0x00000181
_0809C384: .4byte 0x000001BD
_0809C388: .4byte 0x000001BF
_0809C38C: .4byte 0x000001C1
_0809C390: .4byte 0x000001C3
