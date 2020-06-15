	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start PalaceArchway
PalaceArchway: @ 0x0809F288
	push {lr}
	ldr r2, _0809F29C @ =gUnk_081246EC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809F29C: .4byte gUnk_081246EC

	thumb_func_start sub_0809F2A0
sub_0809F2A0: @ 0x0809F2A0
	push {r4, r5, r6, lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	ldrb r1, [r0, #0xb]
	strb r1, [r0, #0x1e]
	ldrb r1, [r0, #0x19]
	movs r2, #0xc0
	orrs r1, r2
	strb r1, [r0, #0x19]
	adds r3, r0, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r2, #7
	orrs r1, r2
	strb r1, [r3]
	ldr r5, _0809F2EC @ =0x00004069
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	ldr r3, _0809F2F0 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r0, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r5, #0
	bl SetTile
	pop {r4, r5, r6, pc}
	.align 2, 0
_0809F2EC: .4byte 0x00004069
_0809F2F0: .4byte gRoomControls

	thumb_func_start nullsub_537
nullsub_537: @ 0x0809F2F4
	bx lr
	.align 2, 0
