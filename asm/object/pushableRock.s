	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start PushableRock
PushableRock: @ 0x0808A4F4
	push {lr}
	ldr r2, _0808A508 @ =gUnk_08121078
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808A508: .4byte gUnk_08121078

	thumb_func_start sub_0808A50C
sub_0808A50C: @ 0x0808A50C
	push {lr}
	ldrb r2, [r0, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0, #0x18]
	ldrb r1, [r0, #0xc]
	adds r1, #1
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x19]
	movs r1, #0x3f
	ands r1, r2
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0, #0x19]
	adds r3, r0, #0
	adds r3, #0x29
	ldrb r2, [r3]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #4
	orrs r1, r2
	movs r2, #0x39
	rsbs r2, r2, #0
	ands r1, r2
	movs r2, #0x18
	orrs r1, r2
	strb r1, [r3]
	bl sub_0808A644
	pop {pc}

	thumb_func_start sub_0808A550
sub_0808A550: @ 0x0808A550
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x74
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl GetTileType
	adds r1, r0, #0
	ldr r0, _0808A58C @ =0x0000401F
	cmp r1, r0
	bhi _0808A5CC
	subs r0, #3
	cmp r1, r0
	blo _0808A5CC
	adds r0, r1, #0
	subs r0, #0x1c
	lsls r1, r0, #1
	strb r1, [r4, #0x14]
	lsls r1, r0, #3
	strb r1, [r4, #0x15]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _0808A590
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	b _0808A598
	.align 2, 0
_0808A58C: .4byte 0x0000401F
_0808A590:
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
_0808A598:
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x70
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x74
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
	adds r1, #1
	adds r0, r4, #0
	bl InitializeAnimation
	ldr r0, _0808A5C8 @ =0x0000010F
	bl EnqueueSFX
	b _0808A5DE
	.align 2, 0
_0808A5C8: .4byte 0x0000010F
_0808A5CC:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808A5DE
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
_0808A5DE:
	pop {r4, pc}

	thumb_func_start sub_0808A5E0
sub_0808A5E0: @ 0x0808A5E0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0800445C
	ldr r2, _0808A618 @ =gUnk_08121088
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	movs r0, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl LinearMoveUpdate
	adds r0, r4, #0
	bl GetNextFrame
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808A616
	movs r0, #0
	strb r0, [r4, #0xc]
_0808A616:
	pop {r4, r5, pc}
	.align 2, 0
_0808A618: .4byte gUnk_08121088

	thumb_func_start sub_0808A61C
sub_0808A61C: @ 0x0808A61C
	push {lr}
	adds r2, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0808A634
	adds r0, r2, #0
	bl GetNextFrame
	b _0808A640
_0808A634:
	adds r0, r2, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r2, #7
	orrs r1, r2
	strb r1, [r0]
_0808A640:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0808A644
sub_0808A644: @ 0x0808A644
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _0808A6D0 @ =gRoomControls
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
	adds r5, #0x74
	strh r1, [r5]
	ldrh r0, [r5]
	adds r6, r4, #0
	adds r6, #0x38
	ldrb r1, [r6]
	bl sub_080001DA
	adds r1, r4, #0
	adds r1, #0x70
	strh r0, [r1]
	ldrh r0, [r5]
	ldrb r1, [r6]
	bl sub_080002E0
	adds r1, r4, #0
	adds r1, #0x72
	strb r0, [r1]
	ldrh r0, [r5]
	ldrb r1, [r6]
	bl sub_080002C8
	cmp r0, #0x19
	beq _0808A69E
	cmp r0, #0xf0
	bne _0808A6E2
_0808A69E:
	ldr r0, _0808A6D4 @ =0x00004015
	ldrh r1, [r5]
	ldrb r2, [r6]
	bl SetTile
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r5, r4, #0
	adds r5, #0x86
	ldrh r0, [r5]
	bl CheckFlags
	cmp r0, #0
	bne _0808A6D8
	ldrh r0, [r5]
	bl SetFlag
	movs r0, #0xcd
	bl SoundReq
	adds r0, r4, #0
	movs r1, #5
	bl InitializeAnimation
	b _0808A6EC
	.align 2, 0
_0808A6D0: .4byte gRoomControls
_0808A6D4: .4byte 0x00004015
_0808A6D8:
	adds r0, r4, #0
	movs r1, #6
	bl InitializeAnimation
	b _0808A6EC
_0808A6E2:
	ldr r0, _0808A6F0 @ =0x0000401B
	ldrh r1, [r5]
	ldrb r2, [r6]
	bl SetTile
_0808A6EC:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0808A6F0: .4byte 0x0000401B
