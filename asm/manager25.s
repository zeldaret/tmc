	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Manager25_Main
Manager25_Main: @ 0x0805C61C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805C674
	movs r0, #0x38
	ldrsh r1, [r4, r0]
	ldr r2, _0805C668 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x3a
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	strh r1, [r4, #0x38]
	movs r1, #0x38
	ldrsh r0, [r4, r1]
	movs r1, #2
	bl GetTileType
	cmp r0, #0x75
	bne _0805C670
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _0805C66C @ =0x0000406A
	movs r2, #0x38
	ldrsh r1, [r4, r2]
	movs r2, #1
	bl SetTile
	b _0805C674
	.align 2, 0
_0805C668: .4byte gRoomControls
_0805C66C: .4byte 0x0000406A
_0805C670:
	bl DeleteThisEntity
_0805C674:
	movs r5, #0x38
	ldrsh r0, [r4, r5]
	movs r1, #1
	bl GetTileType
	ldr r5, _0805C6B4 @ =0x0000406B
	cmp r0, r5
	bne _0805C694
	movs r0, #0x38
	ldrsh r1, [r4, r0]
	movs r0, #0x76
	movs r2, #2
	bl sub_0807B7D8
	bl DeleteThisEntity
_0805C694:
	movs r1, #0x38
	ldrsh r0, [r4, r1]
	movs r1, #2
	bl GetTileType
	cmp r0, #0x76
	bne _0805C6B2
	movs r2, #0x38
	ldrsh r1, [r4, r2]
	adds r0, r5, #0
	movs r2, #1
	bl SetTile
	bl DeleteThisEntity
_0805C6B2:
	pop {r4, r5, pc}
	.align 2, 0
_0805C6B4: .4byte 0x0000406B
