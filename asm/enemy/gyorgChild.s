	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start GyorgChild
GyorgChild: @ 0x08048640
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0804867C @ =gRoomTransition
	adds r0, #0x39
	ldrb r2, [r0]
	cmp r2, #0
	bne _08048664
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	adds r0, r5, #0
	adds r0, #0x45
	strb r2, [r0]
	adds r1, r5, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
_08048664:
	ldr r4, _08048680 @ =gUnk_080D1E6C
	adds r0, r5, #0
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_0804867C: .4byte gRoomTransition
_08048680: .4byte gUnk_080D1E6C

	thumb_func_start sub_08048684
sub_08048684: @ 0x08048684
	push {lr}
	ldr r2, _08048698 @ =gUnk_080D1E84
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08048698: .4byte gUnk_080D1E84

	thumb_func_start sub_0804869C
sub_0804869C: @ 0x0804869C
	push {lr}
	ldr r1, _080486A8 @ =gUnk_080D1E6C
	bl sub_0804AA30
	pop {pc}
	.align 2, 0
_080486A8: .4byte gUnk_080D1E6C

	thumb_func_start sub_080486AC
sub_080486AC: @ 0x080486AC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	beq _080486C8
	ldr r0, _080486CC @ =gUnk_080D1E94
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_080486C8:
	pop {r4, pc}
	.align 2, 0
_080486CC: .4byte gUnk_080D1E94

	thumb_func_start sub_080486D0
sub_080486D0: @ 0x080486D0
	movs r1, #2
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start sub_080486D8
sub_080486D8: @ 0x080486D8
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_080486E0
sub_080486E0: @ 0x080486E0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _080486F2
	adds r0, r4, #0
	bl sub_0804A7D4
_080486F2:
	pop {r4, pc}

	thumb_func_start sub_080486F4
sub_080486F4: @ 0x080486F4
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #1
	strb r5, [r4, #0x1c]
	ldrb r0, [r4, #0x1b]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0804876C
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl InitializeAnimation
	strb r5, [r4, #0xc]
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	bl Random
	movs r1, #0xb
	bl __modsi3
	ldrb r1, [r4, #0x15]
	adds r1, r1, r0
	subs r1, #5
	movs r2, #0x1f
	ands r1, r2
	strb r1, [r4, #0x15]
	lsls r0, r0, #1
	ldr r2, _08048768 @ =gUnk_080D1EA0
	adds r1, r0, r2
	ldrb r1, [r1]
	strb r1, [r4, #0xe]
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x7b
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	b _0804877A
	.align 2, 0
_08048768: .4byte gUnk_080D1EA0
_0804876C:
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r5, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	strb r0, [r4, #0x18]
_0804877A:
	pop {r4, r5, pc}

	thumb_func_start sub_0804877C
sub_0804877C: @ 0x0804877C
	push {r4, lr}
	adds r4, r0, #0
	bl LinearMoveUpdate
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080487AA
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	ands r0, r1
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080487AA
	adds r0, r4, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	ldrb r1, [r4, #0x15]
	adds r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
_080487AA:
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	cmp r0, #1
	beq _080487D4
	cmp r0, #1
	bgt _080487BC
	cmp r0, #0
	beq _080487C2
	b _08048804
_080487BC:
	cmp r0, #2
	beq _080487EC
	b _08048804
_080487C2:
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	ldr r0, _080487D0 @ =gRoomControls
	movs r2, #0xc
	ldrsh r0, [r0, r2]
	b _0804880E
	.align 2, 0
_080487D0: .4byte gRoomControls
_080487D4:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r0, _080487E8 @ =gRoomControls
	movs r2, #0xa
	ldrsh r0, [r0, r2]
	movs r2, #0x84
	lsls r2, r2, #1
	adds r0, r0, r2
	b _080487F8
	.align 2, 0
_080487E8: .4byte gRoomControls
_080487EC:
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	ldr r0, _08048800 @ =gRoomControls
	movs r2, #0xc
	ldrsh r0, [r0, r2]
	adds r0, #0xb8
_080487F8:
	cmp r1, r0
	blt _08048824
	b _08048814
	.align 2, 0
_08048800: .4byte gRoomControls
_08048804:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r0, _08048828 @ =gRoomControls
	movs r2, #0xa
	ldrsh r0, [r0, r2]
_0804880E:
	subs r0, #0x18
	cmp r1, r0
	bgt _08048824
_08048814:
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x5a
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0x5e
	ands r0, r1
	strb r0, [r4, #0x18]
_08048824:
	pop {r4, pc}
	.align 2, 0
_08048828: .4byte gRoomControls

	thumb_func_start sub_0804882C
sub_0804882C: @ 0x0804882C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080488FA
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	bl Random
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	adds r0, r4, #0
	adds r0, #0x7a
	ldrb r0, [r0]
	strb r0, [r4, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1a
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl InitializeAnimation
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	cmp r0, #1
	beq _080488D0
	cmp r0, #1
	bgt _080488AA
	cmp r0, #0
	beq _080488AE
	b _080488D0
_080488AA:
	cmp r0, #2
	bne _080488D0
_080488AE:
	ldr r1, _080488C8 @ =gPlayerEntity
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r0, [r0]
	ldrh r1, [r1, #0x2e]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	ldr r1, _080488CC @ =gRoomControls
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	ldrh r1, [r1, #0xc]
	b _080488E8
	.align 2, 0
_080488C8: .4byte gPlayerEntity
_080488CC: .4byte gRoomControls
_080488D0:
	ldr r1, _080488FC @ =gRoomControls
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r0, [r0]
	ldrh r1, [r1, #0xa]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	ldr r1, _08048900 @ =gPlayerEntity
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	ldrh r1, [r1, #0x32]
_080488E8:
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080488FA
	movs r0, #0xcc
	lsls r0, r0, #1
	bl SoundReq
_080488FA:
	pop {r4, pc}
	.align 2, 0
_080488FC: .4byte gRoomControls
_08048900: .4byte gPlayerEntity

	thumb_func_start sub_08048904
sub_08048904: @ 0x08048904
	push {r4, lr}
	adds r4, r0, #0
	bl LinearMoveUpdate
	adds r0, r4, #0
	bl GetNextFrame
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	cmp r0, #1
	beq _0804893C
	cmp r0, #1
	bgt _08048924
	cmp r0, #0
	beq _0804892A
	b _0804896C
_08048924:
	cmp r0, #2
	beq _08048954
	b _0804896C
_0804892A:
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	ldr r0, _08048938 @ =gRoomControls
	movs r2, #0xc
	ldrsh r0, [r0, r2]
	b _08048976
	.align 2, 0
_08048938: .4byte gRoomControls
_0804893C:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r0, _08048950 @ =gRoomControls
	movs r2, #0xa
	ldrsh r0, [r0, r2]
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r0, r0, r2
	b _08048960
	.align 2, 0
_08048950: .4byte gRoomControls
_08048954:
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	ldr r0, _08048968 @ =gRoomControls
	movs r2, #0xc
	ldrsh r0, [r0, r2]
	adds r0, #0xc8
_08048960:
	cmp r1, r0
	blt _08048980
	b _0804897C
	.align 2, 0
_08048968: .4byte gRoomControls
_0804896C:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r0, _08048984 @ =gRoomControls
	movs r2, #0xa
	ldrsh r0, [r0, r2]
_08048976:
	subs r0, #0x28
	cmp r1, r0
	bgt _08048980
_0804897C:
	bl DeleteThisEntity
_08048980:
	pop {r4, pc}
	.align 2, 0
_08048984: .4byte gRoomControls
