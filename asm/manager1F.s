	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Manager1F_Main
Manager1F_Main: @ 0x0805B6F4
	push {lr}
	ldr r2, _0805B708 @ =gUnk_08108C94
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805B708: .4byte gUnk_08108C94

	thumb_func_start sub_0805B70C
sub_0805B70C: @ 0x0805B70C
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805B71E
	movs r0, #1
	strb r0, [r4, #0xb]
_0805B71E:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r1, [r4, #0x38]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	movs r2, #0x3f
	ands r1, r2
	ldrh r0, [r4, #0x3a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ands r0, r2
	lsls r0, r0, #6
	orrs r1, r0
	strh r1, [r4, #0x38]
	adds r0, r4, #0
	bl sub_0805B778
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805B744
sub_0805B744: @ 0x0805B744
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	adds r1, r0, #0
	cmp r1, #0
	beq _0805B766
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0805B774
	movs r0, #1
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	bl sub_0805B778
	b _0805B774
_0805B766:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bne _0805B774
	strb r1, [r4, #0xb]
	adds r0, r4, #0
	bl sub_0805B778
_0805B774:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805B778
sub_0805B778: @ 0x0805B778
	push {lr}
	ldr r2, _0805B79C @ =gUnk_08108C9C
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #1
	ldrb r3, [r0, #0xb]
	adds r1, r1, r3
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r3, [r1]
	movs r2, #0x38
	ldrsh r1, [r0, r2]
	adds r0, #0x36
	ldrb r2, [r0]
	adds r0, r3, #0
	bl SetTileType
	pop {pc}
	.align 2, 0
_0805B79C: .4byte gUnk_08108C9C
