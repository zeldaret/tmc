	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805D1FC
sub_0805D1FC: @ 0x0805D1FC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0805D240 @ =0x00004014
	ldr r1, _0805D244 @ =0x000005C3
	movs r2, #1
	bl SetTile
	ldr r3, _0805D248 @ =gRoomControls
	ldrh r0, [r3, #8]
	adds r0, #0xc8
	ldr r2, _0805D24C @ =gLinkEntity
	movs r5, #0x32
	ldrsh r1, [r2, r5]
	cmp r0, r1
	bge _0805D236
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	subs r0, #0x30
	cmp r0, #0x10
	bhi _0805D236
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	adds r0, r2, #0
	bl UpdateSpriteForCollisionLayer
_0805D236:
	adds r0, r4, #0
	bl sub_0805E900
	pop {r4, r5, pc}
	.align 2, 0
_0805D240: .4byte 0x00004014
_0805D244: .4byte 0x000005C3
_0805D248: .4byte gRoomControls
_0805D24C: .4byte gLinkEntity
