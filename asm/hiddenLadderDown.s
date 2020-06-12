	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08091EF4
sub_08091EF4: @ 0x08091EF4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #1
	bhi _08091F0E
	ldr r0, _08091F10 @ =gUnk_08122604
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
_08091F0E:
	pop {pc}
	.align 2, 0
_08091F10: .4byte gUnk_08122604

	thumb_func_start sub_08091F14
sub_08091F14: @ 0x08091F14
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r2, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r0, [r3]
	movs r1, #7
	orrs r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x58
	strb r2, [r0]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _08091FEC @ =gRoomControls
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
	adds r5, r4, #0
	adds r5, #0x70
	strh r1, [r5]
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _08091FEA
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0xd1
	lsls r0, r0, #1
	ldrh r1, [r5]
	subs r1, #0x41
	adds r4, #0x38
	ldrb r2, [r4]
	bl SetTileType
	ldr r0, _08091FF0 @ =0x000001A3
	ldrh r1, [r5]
	subs r1, #0x40
	ldrb r2, [r4]
	bl SetTileType
	movs r0, #0xd2
	lsls r0, r0, #1
	ldrh r1, [r5]
	subs r1, #0x3f
	ldrb r2, [r4]
	bl SetTileType
	ldr r0, _08091FF4 @ =0x000001A5
	ldrh r1, [r5]
	subs r1, #1
	ldrb r2, [r4]
	bl SetTileType
	movs r0, #0xd3
	lsls r0, r0, #1
	ldrh r1, [r5]
	ldrb r2, [r4]
	bl SetTileType
	ldr r0, _08091FF8 @ =0x000001A7
	ldrh r1, [r5]
	adds r1, #1
	ldrb r2, [r4]
	bl SetTileType
	movs r0, #0xd4
	lsls r0, r0, #1
	ldrh r1, [r5]
	adds r1, #0x3f
	ldrb r2, [r4]
	bl SetTileType
	ldr r0, _08091FFC @ =0x000001A9
	ldrh r1, [r5]
	adds r1, #0x40
	ldrb r2, [r4]
	bl SetTileType
	movs r0, #0xd5
	lsls r0, r0, #1
	ldrh r1, [r5]
	adds r1, #0x41
	ldrb r2, [r4]
	bl SetTileType
_08091FEA:
	pop {r4, r5, pc}
	.align 2, 0
_08091FEC: .4byte gRoomControls
_08091FF0: .4byte 0x000001A3
_08091FF4: .4byte 0x000001A5
_08091FF8: .4byte 0x000001A7
_08091FFC: .4byte 0x000001A9

	thumb_func_start sub_08092000
sub_08092000: @ 0x08092000
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x70
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl GetTileType
	movs r1, #0xd3
	lsls r1, r1, #1
	cmp r0, r1
	bne _08092034
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl SetFlag
_08092034:
	pop {r4, pc}
	.align 2, 0
