	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0809F4C4
sub_0809F4C4: @ 0x0809F4C4
	push {lr}
	ldr r2, _0809F4D8 @ =gUnk_08124798
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809F4D8: .4byte gUnk_08124798

	thumb_func_start sub_0809F4DC
sub_0809F4DC: @ 0x0809F4DC
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xb]
	cmp r0, #0
	bne _0809F4FC
	ldr r0, _0809F4F8 @ =gUnk_081247A0
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
	b _0809F50C
	.align 2, 0
_0809F4F8: .4byte gUnk_081247A0
_0809F4FC:
	ldr r0, _0809F510 @ =gUnk_081247AC
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
_0809F50C:
	pop {pc}
	.align 2, 0
_0809F510: .4byte gUnk_081247AC

	thumb_func_start sub_0809F514
sub_0809F514: @ 0x0809F514
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0x78
	strb r1, [r0, #0xe]
	ldrb r2, [r0, #0x18]
	subs r1, #0x7c
	ands r1, r2
	strb r1, [r0, #0x18]
	adds r2, r0, #0
	adds r2, #0x68
	movs r1, #0xc
	strb r1, [r2]
	ldr r1, _0809F540 @ =gRoomControls
	str r0, [r1, #0x30]
	ldr r2, _0809F544 @ =gUnk_02034490
	movs r1, #0xff
	strb r1, [r2]
	bl sub_0809F7BC
	pop {pc}
	.align 2, 0
_0809F540: .4byte gRoomControls
_0809F544: .4byte gUnk_02034490

	thumb_func_start sub_0809F548
sub_0809F548: @ 0x0809F548
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809F590
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x5a
	strb r0, [r4, #0xe]
	adds r0, #0xc3
	bl PlaySFX
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _0809F58C @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	bl sub_0809F814
	b _0809F5A8
	.align 2, 0
_0809F58C: .4byte gRoomControls
_0809F590:
	ldr r0, _0809F5AC @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0809F5A2
	adds r0, r4, #0
	bl sub_0809F7BC
_0809F5A2:
	adds r0, r4, #0
	bl sub_0809F7F4
_0809F5A8:
	pop {r4, r5, pc}
	.align 2, 0
_0809F5AC: .4byte gUnk_030010A0

	thumb_func_start sub_0809F5B0
sub_0809F5B0: @ 0x0809F5B0
	push {lr}
	ldrb r1, [r0, #0xe]
	subs r1, #1
	strb r1, [r0, #0xe]
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _0809F5D4
	movs r0, #0x73
	bl PlaySFX
	movs r0, #0x24
	bl SetGlobalFlag
	ldr r0, _0809F5D8 @ =gUnk_080DD750
	bl LoadRoomEntityList
	bl sub_0805E780
_0809F5D4:
	pop {pc}
	.align 2, 0
_0809F5D8: .4byte gUnk_080DD750

	thumb_func_start sub_0809F5DC
sub_0809F5DC: @ 0x0809F5DC
	movs r1, #1
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	subs r1, #5
	ands r1, r2
	strb r1, [r0, #0x18]
	adds r0, #0x68
	movs r1, #0xc
	strb r1, [r0]
	bx lr

	thumb_func_start sub_0809F5F0
sub_0809F5F0: @ 0x0809F5F0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	bl CheckRoomFlag
	cmp r0, #0
	beq _0809F614
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	movs r0, #3
	bl sub_08078A90
	bl sub_08078B48
	ldr r0, _0809F618 @ =gRoomControls
	str r4, [r0, #0x30]
_0809F614:
	pop {r4, pc}
	.align 2, 0
_0809F618: .4byte gRoomControls

	thumb_func_start sub_0809F61C
sub_0809F61C: @ 0x0809F61C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0809F678 @ =gRoomControls
	ldrb r1, [r5, #0xf]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0809F694
	ldrb r0, [r4, #0xe]
	cmp r0, #0x1e
	bne _0809F638
	ldrb r0, [r4, #0xb]
	bl SetLocalFlag
_0809F638:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809F67C
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	adds r0, #0xa5
	bl PlaySFX
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldrh r1, [r5, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	ldrh r2, [r5, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	bl sub_0809F814
	b _0809F694
	.align 2, 0
_0809F678: .4byte gRoomControls
_0809F67C:
	ldr r0, _0809F698 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0809F68E
	adds r0, r4, #0
	bl sub_0809F7BC
_0809F68E:
	adds r0, r4, #0
	bl sub_0809F7F4
_0809F694:
	pop {r4, r5, pc}
	.align 2, 0
_0809F698: .4byte gUnk_030010A0

	thumb_func_start sub_0809F69C
sub_0809F69C: @ 0x0809F69C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809F6C0
	movs r0, #0x1e
	strb r0, [r1, #0xe]
	movs r0, #4
	strb r0, [r1, #0xc]
	ldr r1, _0809F6C4 @ =gRoomControls
	ldr r0, _0809F6C8 @ =gLinkEntity
	str r0, [r1, #0x30]
	movs r0, #0x73
	bl PlaySFX
_0809F6C0:
	pop {pc}
	.align 2, 0
_0809F6C4: .4byte gRoomControls
_0809F6C8: .4byte gLinkEntity

	thumb_func_start sub_0809F6CC
sub_0809F6CC: @ 0x0809F6CC
	push {lr}
	adds r2, r0, #0
	ldr r0, _0809F6F8 @ =gRoomControls
	ldrb r1, [r0, #0xf]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0809F6F4
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809F6F4
	ldr r0, _0809F6FC @ =gLinkState
	adds r0, #0x8b
	movs r1, #1
	strb r1, [r0]
	bl sub_0805E780
_0809F6F4:
	pop {pc}
	.align 2, 0
_0809F6F8: .4byte gRoomControls
_0809F6FC: .4byte gLinkState

	thumb_func_start sub_0809F700
sub_0809F700: @ 0x0809F700
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0809F722
	movs r0, #1
	strb r0, [r4, #0xc]
	bl Random
	movs r1, #0x1e
	ands r0, r1
	adds r0, #8
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0xc
	orrs r0, r1
	strb r0, [r4, #0x10]
_0809F722:
	ldr r0, _0809F768 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0809F750
	bl Random
	ldr r3, _0809F76C @ =gUnk_081247C0
	movs r2, #7
	adds r1, r0, #0
	ands r1, r2
	adds r1, r1, r3
	ldrb r1, [r1]
	movs r5, #0x62
	strb r1, [r5, r4]
	lsrs r0, r0, #4
	ands r0, r2
	adds r0, r0, r3
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x63
	strb r0, [r1]
_0809F750:
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809F766
	bl sub_0805E780
_0809F766:
	pop {r4, r5, pc}
	.align 2, 0
_0809F768: .4byte gUnk_030010A0
_0809F76C: .4byte gUnk_081247C0

	thumb_func_start sub_0809F770
sub_0809F770: @ 0x0809F770
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xa3
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0809F7B6
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA30
	bl Random
	ldrh r2, [r4, #0x2e]
	subs r2, #0x10
	movs r3, #0x1f
	adds r1, r0, #0
	ands r1, r3
	adds r2, r2, r1
	strh r2, [r4, #0x2e]
	ldrh r2, [r4, #0x32]
	subs r2, #0x10
	asrs r1, r0, #8
	ands r1, r3
	adds r2, r2, r1
	strh r2, [r4, #0x32]
	asrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #0x1e]
	movs r0, #0xff
	strb r0, [r4, #0x15]
_0809F7B6:
	adds r0, r4, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0809F7BC
sub_0809F7BC: @ 0x0809F7BC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r5, #0
	ldr r7, _0809F7F0 @ =gUnk_081247C8
_0809F7C4:
	adds r0, r6, #0
	bl sub_0809F770
	adds r4, r0, #0
	cmp r4, #0
	beq _0809F7E8
	bl Random
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r1, [r1]
	strh r1, [r4, #0x24]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
_0809F7E8:
	adds r5, #1
	cmp r5, #7
	bls _0809F7C4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809F7F0: .4byte gUnk_081247C8

	thumb_func_start sub_0809F7F4
sub_0809F7F4: @ 0x0809F7F4
	push {lr}
	adds r1, r0, #0
	adds r1, #0x68
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809F812
	movs r0, #0xc
	strb r0, [r1]
	movs r0, #0xc2
	lsls r0, r0, #1
	bl PlaySFX
_0809F812:
	pop {pc}

	thumb_func_start sub_0809F814
sub_0809F814: @ 0x0809F814
	push {lr}
	adds r1, r0, #0
	ldr r0, _0809F824 @ =gUnk_081247D0
	movs r2, #1
	bl sub_0807BB68
	pop {pc}
	.align 2, 0
_0809F824: .4byte gUnk_081247D0
