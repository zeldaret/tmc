	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Manager1D_Main
Manager1D_Main: @ 0x0805B5C8
	push {lr}
	ldr r2, _0805B5DC @ =gUnk_08108C80
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805B5DC: .4byte gUnk_08108C80

	thumb_func_start sub_0805B5E0
sub_0805B5E0: @ 0x0805B5E0
	push {r4, r5, lr}
	movs r4, #0
	movs r1, #1
	strb r1, [r0, #0xc]
	ldr r3, _0805B618 @ =gScreen
	ldrh r2, [r3]
	movs r5, #0x80
	lsls r5, r5, #4
	adds r1, r5, #0
	orrs r1, r2
	strh r1, [r3]
	ldr r2, _0805B61C @ =gUnk_08108C88
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r3, #0x2c]
	ldr r1, _0805B620 @ =gRoomControls
	str r4, [r1, #0x2c]
	str r4, [r1, #0x28]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _0805B612
	cmp r0, #1
	beq _0805B624
_0805B612:
	strh r4, [r3, #0x30]
	strh r4, [r3, #0x2e]
	b _0805B634
	.align 2, 0
_0805B618: .4byte gScreen
_0805B61C: .4byte gUnk_08108C88
_0805B620: .4byte gRoomControls
_0805B624:
	ldrh r0, [r1, #0x2a]
	ldrh r2, [r1, #0xa]
	adds r0, r0, r2
	strh r0, [r3, #0x2e]
	ldrh r0, [r1, #0x2e]
	ldrh r1, [r1, #0xc]
	adds r0, r0, r1
	strh r0, [r3, #0x30]
_0805B634:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0805B638
sub_0805B638: @ 0x0805B638
	push {lr}
	ldrb r0, [r0, #0xa]
	cmp r0, #1
	bne _0805B65E
	ldr r1, _0805B660 @ =gRoomControls
	ldr r0, [r1, #0x28]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r0, r2
	str r0, [r1, #0x28]
	ldr r2, _0805B664 @ =gScreen
	ldrh r0, [r1, #0x2a]
	ldrh r3, [r1, #0xa]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #0x2e]
	ldrh r1, [r1, #0xc]
	adds r0, r0, r1
	strh r0, [r2, #0x30]
_0805B65E:
	pop {pc}
	.align 2, 0
_0805B660: .4byte gRoomControls
_0805B664: .4byte gScreen
