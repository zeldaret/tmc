	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805AF60
sub_0805AF60: @ 0x0805AF60
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0
	bne _0805AF8C
	ldr r0, _0805AF80 @ =gArea
	ldr r1, _0805AF84 @ =0x0000088C
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0805AF88 @ =sub_0805AFFC
	cmp r0, r1
	beq _0805AFEE
	movs r0, #0
	bl _call_via_r1
	b _0805AFEE
	.align 2, 0
_0805AF80: .4byte gArea
_0805AF84: .4byte 0x0000088C
_0805AF88: .4byte sub_0805AFFC
_0805AF8C:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805AFD2
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	ldr r0, _0805AFC0 @ =gArea
	ldr r2, _0805AFC4 @ =0x0000088C
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _0805AFCC
	ldr r1, _0805AFC8 @ =sub_0805AFFC
	adds r0, r4, #0
	movs r2, #0
	bl sub_08052D74
	b _0805AFEE
	.align 2, 0
_0805AFC0: .4byte gArea
_0805AFC4: .4byte 0x0000088C
_0805AFC8: .4byte sub_0805AFFC
_0805AFCC:
	bl DeleteThisEntity
	b _0805AFEE
_0805AFD2:
	ldr r1, _0805AFF0 @ =gRoomControls
	ldr r0, [r1, #0x28]
	ldr r3, _0805AFF4 @ =0xFFFFE000
	adds r0, r0, r3
	str r0, [r1, #0x28]
	ldr r2, _0805AFF8 @ =gScreen
	ldrh r0, [r1, #0x2a]
	ldrh r3, [r1, #0xa]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #0x2e]
	ldrh r1, [r1, #0xc]
	adds r0, r0, r1
	strh r0, [r2, #0x30]
_0805AFEE:
	pop {r4, pc}
	.align 2, 0
_0805AFF0: .4byte gRoomControls
_0805AFF4: .4byte 0xFFFFE000
_0805AFF8: .4byte gScreen

	thumb_func_start sub_0805AFFC
sub_0805AFFC: @ 0x0805AFFC
	ldr r2, _0805B024 @ =gScreen
	ldr r0, _0805B028 @ =0x00001E03
	strh r0, [r2, #0x2c]
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0805B02C @ =gRoomControls
	ldrh r0, [r1, #0x2a]
	ldrh r3, [r1, #0xa]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #0x2e]
	ldrh r1, [r1, #0xc]
	adds r0, r0, r1
	strh r0, [r2, #0x30]
	bx lr
	.align 2, 0
_0805B024: .4byte gScreen
_0805B028: .4byte 0x00001E03
_0805B02C: .4byte gRoomControls
