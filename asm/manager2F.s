	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Manager2F_Main
Manager2F_Main: @ 0x0805D3C8
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0
	bne _0805D3F4
	ldr r0, _0805D3E8 @ =gArea
	ldr r1, _0805D3EC @ =0x0000088C
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0805D3F0 @ =sub_0805D470
	cmp r0, r1
	beq _0805D45E
	movs r0, #0
	bl _call_via_r1
	b _0805D45E
	.align 2, 0
_0805D3E8: .4byte gArea
_0805D3EC: .4byte 0x0000088C
_0805D3F0: .4byte sub_0805D470
_0805D3F4:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805D43A
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	ldr r0, _0805D428 @ =gArea
	ldr r2, _0805D42C @ =0x0000088C
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _0805D434
	ldr r1, _0805D430 @ =sub_0805D470
	adds r0, r4, #0
	movs r2, #0
	bl sub_08052D74
	b _0805D45E
	.align 2, 0
_0805D428: .4byte gArea
_0805D42C: .4byte 0x0000088C
_0805D430: .4byte sub_0805D470
_0805D434:
	bl DeleteThisEntity
	b _0805D45E
_0805D43A:
	ldr r1, _0805D460 @ =gRoomControls
	ldr r0, [r1, #0x28]
	ldr r3, _0805D464 @ =0xFFFFC000
	adds r0, r0, r3
	str r0, [r1, #0x28]
	ldr r0, [r1, #0x2c]
	ldr r2, _0805D468 @ =0xFFFFE000
	adds r0, r0, r2
	str r0, [r1, #0x2c]
	ldr r2, _0805D46C @ =gScreen
	ldrh r0, [r1, #0x2a]
	ldrh r3, [r1, #0xa]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #0x2e]
	ldrh r1, [r1, #0xc]
	adds r0, r0, r1
	strh r0, [r2, #0x30]
_0805D45E:
	pop {r4, pc}
	.align 2, 0
_0805D460: .4byte gRoomControls
_0805D464: .4byte 0xFFFFC000
_0805D468: .4byte 0xFFFFE000
_0805D46C: .4byte gScreen

	thumb_func_start sub_0805D470
sub_0805D470: @ 0x0805D470
	push {lr}
	movs r0, #0x4c
	bl LoadGfxGroup
	ldr r2, _0805D4A0 @ =gScreen
	ldr r0, _0805D4A4 @ =0x00001E07
	strh r0, [r2, #0x2c]
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0805D4A8 @ =gRoomControls
	ldrh r0, [r1, #0x2a]
	ldrh r3, [r1, #0xa]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #0x2e]
	ldrh r1, [r1, #0xc]
	adds r0, r0, r1
	strh r0, [r2, #0x30]
	pop {pc}
	.align 2, 0
_0805D4A0: .4byte gScreen
_0805D4A4: .4byte 0x00001E07
_0805D4A8: .4byte gRoomControls
