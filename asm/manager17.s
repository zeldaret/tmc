	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Manager17_Main
Manager17_Main: @ 0x0805AD48
	push {lr}
	ldr r2, _0805AD5C @ =gUnk_08108654
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805AD5C: .4byte gUnk_08108654

	thumb_func_start sub_0805AD60
sub_0805AD60: @ 0x0805AD60
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0x3c]
	bl CheckFlags
	cmp r0, #0
	beq _0805AD76
	bl DeleteThisEntity
_0805AD76:
	adds r0, r4, #0
	bl sub_0805AD80
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805AD80
sub_0805AD80: @ 0x0805AD80
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805ADD0
	ldrb r1, [r4, #0xa]
	ldrb r2, [r4, #0xb]
	movs r0, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0805ADCC
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r0, [r0]
	strb r0, [r2, #0xe]
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	ldr r1, _0805ADD4 @ =gRoomControls
	ldrh r0, [r1, #6]
	ldrh r3, [r4, #0x38]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #8]
	ldrh r1, [r4, #0x3a]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	ldrh r1, [r4, #0x3c]
	adds r0, r2, #0
	adds r0, #0x86
	strh r1, [r0]
_0805ADCC:
	bl DeleteThisEntity
_0805ADD0:
	pop {r4, pc}
	.align 2, 0
_0805ADD4: .4byte gRoomControls
