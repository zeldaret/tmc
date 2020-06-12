	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0809E500
sub_0809E500: @ 0x0809E500
	push {lr}
	ldr r2, _0809E514 @ =gUnk_081242C8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809E514: .4byte gUnk_081242C8

	thumb_func_start sub_0809E518
sub_0809E518: @ 0x0809E518
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #1
	strb r1, [r6, #0xc]
	ldrb r2, [r6, #0xa]
	adds r0, r2, #0
	cmp r0, #0xff
	bne _0809E52E
	ldrb r0, [r6, #0xb]
	strb r0, [r6, #0x1e]
	b _0809E5CA
_0809E52E:
	ands r1, r2
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r5, r0, #0x1f
	movs r0, #4
	ands r5, r0
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0809E5A4
	ldr r0, _0809E5A0 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x44
	bhi _0809E5B4
	strb r5, [r6, #0x1e]
	adds r5, #1
	movs r0, #0x9a
	movs r1, #0xff
	adds r2, r5, #0
	bl CreateObject
	adds r4, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl CopyPosition
	adds r5, #1
	movs r0, #0x9a
	movs r1, #0xff
	adds r2, r5, #0
	bl CreateObject
	adds r4, r0, #0
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #0xff
	strb r0, [r1]
	adds r5, #1
	movs r0, #0x9a
	movs r1, #0xff
	adds r2, r5, #0
	bl CreateObject
	adds r4, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl CopyPosition
	b _0809E5C4
	.align 2, 0
_0809E5A0: .4byte gUnk_03003DBC
_0809E5A4:
	adds r2, r5, #1
	movs r0, #0x9a
	movs r1, #0xff
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	bne _0809E5BA
_0809E5B4:
	bl DeleteThisEntity
	b _0809E5C4
_0809E5BA:
	strb r5, [r6, #0x1e]
	adds r0, r6, #0
	adds r1, r4, #0
	bl CopyPosition
_0809E5C4:
	adds r0, r6, #0
	bl sub_0809E5F0
_0809E5CA:
	ldrb r1, [r6, #0x1e]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0809E5E8
	ldrb r0, [r6, #0x19]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r6, #0x19]
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
_0809E5E8:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start nullsub_125
nullsub_125: @ 0x0809E5EC
	bx lr
	.align 2, 0

	thumb_func_start sub_0809E5F0
sub_0809E5F0: @ 0x0809E5F0
	push {r4, r5, lr}
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	ldr r4, _0809E628 @ =gRoomControls
	ldrh r2, [r4, #6]
	subs r1, r1, r2
	asrs r5, r1, #4
	movs r3, #0x3f
	ands r5, r3
	movs r2, #0x32
	ldrsh r1, [r0, r2]
	ldrh r2, [r4, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r5, r1
	adds r1, r0, #0
	adds r1, #0x80
	strh r5, [r1]
	ldrb r0, [r0, #0xa]
	cmp r0, #1
	beq _0809E708
	cmp r0, #1
	bgt _0809E62C
	cmp r0, #0
	beq _0809E64E
	b _0809E792
	.align 2, 0
_0809E628: .4byte gRoomControls
_0809E62C:
	cmp r0, #2
	beq _0809E636
	cmp r0, #3
	beq _0809E6F0
	b _0809E792
_0809E636:
	ldr r0, _0809E6DC @ =0x00004022
	adds r1, r5, #0
	subs r1, #0x3d
	movs r2, #1
	bl SetTile
	ldr r0, _0809E6E0 @ =0x0000406D
	adds r1, r5, #0
	subs r1, #0x3c
	movs r2, #1
	bl SetTile
_0809E64E:
	ldr r0, _0809E6E4 @ =0x0000406C
	adds r1, r5, #0
	subs r1, #0x42
	movs r2, #1
	bl SetTile
	ldr r4, _0809E6DC @ =0x00004022
	adds r1, r5, #0
	subs r1, #0x41
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	adds r1, r5, #0
	subs r1, #0x40
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	adds r1, r5, #0
	subs r1, #0x3f
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	subs r1, r5, #2
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	subs r1, r5, #1
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl SetTile
	adds r1, r5, #1
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	ldr r0, _0809E6E8 @ =0x0000406E
	adds r1, r5, #0
	adds r1, #0x3e
	movs r2, #1
	bl SetTile
	adds r1, r5, #0
	adds r1, #0x3f
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	adds r1, r5, #0
	adds r1, #0x40
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	ldr r0, _0809E6EC @ =0x0000406F
	adds r1, r5, #0
	adds r1, #0x41
	movs r2, #1
	bl SetTile
	b _0809E792
	.align 2, 0
_0809E6DC: .4byte 0x00004022
_0809E6E0: .4byte 0x0000406D
_0809E6E4: .4byte 0x0000406C
_0809E6E8: .4byte 0x0000406E
_0809E6EC: .4byte 0x0000406F
_0809E6F0:
	ldr r0, _0809E794 @ =0x00004022
	adds r1, r5, #0
	subs r1, #0x44
	movs r2, #1
	bl SetTile
	ldr r0, _0809E798 @ =0x0000406C
	adds r1, r5, #0
	subs r1, #0x45
	movs r2, #1
	bl SetTile
_0809E708:
	ldr r4, _0809E794 @ =0x00004022
	adds r1, r5, #0
	subs r1, #0x42
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	adds r1, r5, #0
	subs r1, #0x41
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	adds r1, r5, #0
	subs r1, #0x40
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	ldr r0, _0809E79C @ =0x0000406D
	adds r1, r5, #0
	subs r1, #0x3f
	movs r2, #1
	bl SetTile
	subs r1, r5, #2
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	subs r1, r5, #1
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl SetTile
	adds r1, r5, #1
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	ldr r0, _0809E7A0 @ =0x0000406E
	adds r1, r5, #0
	adds r1, #0x3e
	movs r2, #1
	bl SetTile
	adds r1, r5, #0
	adds r1, #0x3f
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	adds r1, r5, #0
	adds r1, #0x40
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	ldr r0, _0809E7A4 @ =0x0000406F
	adds r1, r5, #0
	adds r1, #0x41
	movs r2, #1
	bl SetTile
_0809E792:
	pop {r4, r5, pc}
	.align 2, 0
_0809E794: .4byte 0x00004022
_0809E798: .4byte 0x0000406C
_0809E79C: .4byte 0x0000406D
_0809E7A0: .4byte 0x0000406E
_0809E7A4: .4byte 0x0000406F
