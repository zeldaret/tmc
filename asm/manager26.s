	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805C6B8
sub_0805C6B8: @ 0x0805C6B8
	push {lr}
	ldr r2, _0805C6CC @ =gUnk_08108D04
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805C6CC: .4byte gUnk_08108D04

	thumb_func_start sub_0805C6D0
sub_0805C6D0: @ 0x0805C6D0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	bl sub_0804B128
	adds r4, r0, #0
	cmp r4, #0
	bne _0805C6EA
	adds r0, r5, #0
	bl sub_0805E900
	b _0805C79A
_0805C6EA:
	ldr r3, _0805C784 @ =gRoomControls
	ldrh r0, [r3, #8]
	ldrb r1, [r5, #0xe]
	adds r0, r0, r1
	movs r1, #0
	strh r0, [r5, #0x2a]
	strb r1, [r5, #0xe]
	adds r0, r5, #0
	adds r0, #0x28
	strb r1, [r0]
	adds r2, r5, #0
	adds r2, #0x29
	strb r1, [r2]
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _0805C778
	ldrb r0, [r5, #0xe]
	cmp r0, #0x1f
	bhi _0805C778
	adds r7, r3, #0
	movs r3, #1
	adds r6, r2, #0
_0805C716:
	ldrb r1, [r4, #1]
	ldrb r2, [r4, #2]
	movs r0, #0x4c
	str r3, [sp]
	bl CreateObject
	adds r2, r0, #0
	ldr r3, [sp]
	cmp r2, #0
	beq _0805C762
	ldrb r0, [r4, #3]
	strb r0, [r2, #0xe]
	ldrh r0, [r4, #4]
	ldrh r1, [r7, #6]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
	ldrh r0, [r4, #6]
	ldrh r1, [r7, #8]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	str r5, [r2, #0x50]
	adds r0, r2, #0
	adds r0, #0x38
	strb r3, [r0]
	ldrb r0, [r5, #0xe]
	adds r1, r2, #0
	adds r1, #0x83
	strb r0, [r1]
	ldrb r1, [r4]
	adds r0, r2, #0
	adds r0, #0x82
	strb r1, [r0]
	adds r0, r3, #0
	ldrb r1, [r5, #0xe]
	lsls r0, r1
	ldrb r1, [r6]
	orrs r0, r1
	strb r0, [r6]
_0805C762:
	adds r4, #8
	ldrb r0, [r5, #0xe]
	adds r1, r0, #1
	strb r1, [r5, #0xe]
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _0805C778
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1f
	bls _0805C716
_0805C778:
	ldrb r0, [r5, #0xb]
	cmp r0, #0xff
	bne _0805C788
	movs r0, #2
	b _0805C798
	.align 2, 0
_0805C784: .4byte gRoomControls
_0805C788:
	ldrb r0, [r5, #0xb]
	bl CheckLocalFlag
	cmp r0, #0
	beq _0805C796
	movs r0, #2
	b _0805C798
_0805C796:
	movs r0, #1
_0805C798:
	strb r0, [r5, #0xc]
_0805C79A:
	add sp, #4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0805C7A0
sub_0805C7A0: @ 0x0805C7A0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x28
	adds r1, r4, #0
	adds r1, #0x29
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0805C7BC
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xb]
	bl SetLocalFlag
_0805C7BC:
	adds r0, r4, #0
	bl sub_0805C7CC
	pop {r4, pc}

	thumb_func_start sub_0805C7C4
sub_0805C7C4: @ 0x0805C7C4
	push {lr}
	bl sub_0805C7CC
	pop {pc}

	thumb_func_start sub_0805C7CC
sub_0805C7CC: @ 0x0805C7CC
	push {lr}
	adds r2, r0, #0
	ldr r0, _0805C7F0 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0805C7FC
	ldr r0, _0805C7F4 @ =gLinkEntity
	movs r3, #0x32
	ldrsh r1, [r0, r3]
	ldrh r0, [r2, #0x2a]
	adds r0, #0x10
	cmp r1, r0
	bge _0805C7F8
	movs r0, #1
	b _0805C816
	.align 2, 0
_0805C7F0: .4byte gLinkState
_0805C7F4: .4byte gLinkEntity
_0805C7F8:
	movs r0, #0
	b _0805C816
_0805C7FC:
	ldr r0, _0805C810 @ =gLinkEntity
	movs r3, #0x32
	ldrsh r1, [r0, r3]
	ldrh r0, [r2, #0x2a]
	adds r0, #0x28
	cmp r1, r0
	bge _0805C814
	movs r0, #3
	b _0805C816
	.align 2, 0
_0805C810: .4byte gLinkEntity
_0805C814:
	movs r0, #2
_0805C816:
	strb r0, [r2, #0xd]
	pop {pc}
	.align 2, 0
