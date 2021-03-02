	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805D014
sub_0805D014: @ 0x0805D014
	push {lr}
	ldr r2, _0805D028 @ =gUnk_08108D30
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805D028: .4byte gUnk_08108D30

	thumb_func_start sub_0805D02C
sub_0805D02C: @ 0x0805D02C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldrh r0, [r6, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805D046
	bl DeleteThisEntity
_0805D046:
	ldr r0, _0805D0BC @ =gEntCount
	ldrb r0, [r0]
	cmp r0, #0x43
	bhi _0805D0B0
	ldrb r0, [r6, #0xa]
	bl GetCurrentRoomProperty
	adds r5, r0, #0
	movs r7, #0
	movs r0, #0x36
	adds r0, r0, r6
	mov sl, r0
	ldr r1, _0805D0C0 @ =gRoomControls
	mov r8, r1
	movs r0, #0x20
	adds r0, r0, r6
	mov sb, r0
_0805D068:
	ldrh r1, [r5, #4]
	movs r0, #0xa0
	adds r2, r7, #0
	bl CreateObject
	adds r4, r0, #0
	mov r1, r8
	ldrh r0, [r1, #6]
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	mov r1, r8
	ldrh r0, [r1, #8]
	ldrh r1, [r5, #2]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	str r6, [r4, #0x50]
	adds r0, r4, #0
	bl sub_08016A30
	mov r0, sb
	adds r0, #4
	mov sb, r0
	subs r0, #4
	stm r0!, {r4}
	adds r7, #1
	adds r5, #6
	cmp r7, #3
	bls _0805D068
	movs r0, #0
	movs r1, #1
	strb r1, [r6, #0xc]
	movs r1, #0x3c
	strb r1, [r6, #0xf]
	mov r1, sl
	strb r0, [r1]
_0805D0B0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805D0BC: .4byte gEntCount
_0805D0C0: .4byte gRoomControls

	thumb_func_start sub_0805D0C4
sub_0805D0C4: @ 0x0805D0C4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805D0D8
	movs r0, #0xb4
	strb r0, [r4, #0xf]
_0805D0D8:
	adds r5, r4, #0
	adds r5, #0x36
	ldrb r0, [r5]
	cmp r0, #0xf
	bne _0805D0F6
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
	movs r0, #0x72
	bl SoundReq
	adds r0, r4, #0
	bl sub_0805D11C
_0805D0F6:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5, pc}

	thumb_func_start sub_0805D0FC
sub_0805D0FC: @ 0x0805D0FC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805D118
	ldrh r0, [r4, #0x3e]
	bl SetFlag
	adds r0, r4, #0
	bl DeleteManager
_0805D118:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805D11C
sub_0805D11C: @ 0x0805D11C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	ldr r1, _0805D170 @ =gRoomControls
	mov r8, r1
	movs r7, #0x3f
	adds r5, r0, #0
	adds r5, #0x20
_0805D12E:
	ldr r4, [r5]
	movs r0, #0
	stm r5!, {r0}
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	mov r3, r8
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r7
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	ldrh r2, [r3, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r7
	lsls r1, r1, #6
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_0807BA8C
	adds r0, r4, #0
	bl DeleteEntity
	adds r6, #1
	cmp r6, #3
	bls _0805D12E
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805D170: .4byte gRoomControls
