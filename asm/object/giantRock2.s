	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start GiantRock2
GiantRock2: @ 0x08090FF8
	push {lr}
	ldr r2, _0809100C @ =gUnk_08122278
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809100C: .4byte gUnk_08122278

	thumb_func_start sub_08091010
sub_08091010: @ 0x08091010
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _08091094 @ =gRoomControls
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
	adds r3, r4, #0
	adds r3, #0x74
	strh r1, [r3]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r5, [r0]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r3]
	subs r0, #0x80
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r6, _08091098 @ =0x00004022
	movs r7, #4
_0809105C:
	subs r1, r4, #2
	adds r0, r6, #0
	adds r2, r5, #0
	bl SetTile
	subs r1, r4, #1
	adds r0, r6, #0
	adds r2, r5, #0
	bl SetTile
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl SetTile
	adds r1, r4, #1
	adds r0, r6, #0
	adds r2, r5, #0
	bl SetTile
	adds r0, r4, #0
	adds r0, #0x40
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	subs r7, #1
	cmp r7, #0
	bge _0809105C
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08091094: .4byte gRoomControls
_08091098: .4byte 0x00004022

	thumb_func_start nullsub_523
nullsub_523: @ 0x0809109C
	bx lr
	.align 2, 0
