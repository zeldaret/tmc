	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805B7A0
sub_0805B7A0: @ 0x0805B7A0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	ldrb r1, [r5, #0xa]
	ldrb r2, [r5, #0xb]
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0805B81A
	ldrh r0, [r5, #0x3e]
	adds r1, r4, #0
	adds r1, #0x86
	strh r0, [r1]
	ldrh r0, [r5, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805B7EC
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r1, [r0]
	adds r0, #1
	ldrb r2, [r0]
	movs r0, #0xf
	ands r0, r2
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r4, #0x2e]
	ldrh r1, [r5, #0x3c]
	ldr r0, _0805B7E8 @ =0x00000FFF
	ands r0, r1
	strh r0, [r4, #0x32]
	ldrh r0, [r5, #0x3c]
	lsrs r0, r0, #0xc
	b _0805B7FC
	.align 2, 0
_0805B7E8: .4byte 0x00000FFF
_0805B7EC:
	ldrh r0, [r5, #0x38]
	strh r0, [r4, #0x2e]
	ldrh r0, [r5, #0x3a]
	strh r0, [r4, #0x32]
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r0, [r0]
	lsrs r0, r0, #4
_0805B7FC:
	adds r1, r4, #0
	adds r1, #0x38
	strb r0, [r1]
	ldr r0, _0805B81C @ =gRoomControls
	ldrh r1, [r0, #6]
	ldrh r2, [r4, #0x2e]
	adds r1, r1, r2
	strh r1, [r4, #0x2e]
	ldrh r0, [r0, #8]
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	adds r0, r5, #0
	bl sub_0805E900
_0805B81A:
	pop {r4, r5, pc}
	.align 2, 0
_0805B81C: .4byte gRoomControls
