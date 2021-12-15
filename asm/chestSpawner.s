	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08083E4C
sub_08083E4C: @ 0x08083E4C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08083E80 @ =gUnk_0811F8B0
	str r0, [r4, #0x48]
	ldrb r0, [r4, #0xb]
	bl CheckLocalFlag
	cmp r0, #0
	beq _08083E84
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080842D8
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
	b _08083EAC
	.align 2, 0
_08083E80: .4byte gUnk_0811F8B0
_08083E84:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	bne _08083E98
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _08083EA0
_08083E98:
	adds r0, r4, #0
	bl sub_08083E20
	b _08083EA4
_08083EA0:
	movs r0, #1
	strb r0, [r4, #0xc]
_08083EA4:
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
_08083EAC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08083EB0
sub_08083EB0: @ 0x08083EB0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _08083F0A
	ldr r1, _08083F0C @ =gScreen
	adds r2, r1, #0
	adds r2, #0x66
	movs r3, #0
	movs r0, #0xf4
	lsls r0, r0, #4
	strh r0, [r2]
	adds r1, #0x68
	adds r0, #0xc0
	strh r0, [r1]
	ldr r1, _08083F10 @ =gUnk_02034490
	movs r2, #1
	movs r0, #1
	strb r0, [r1]
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r3, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0x18]
	subs r0, #0x22
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x19]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r4, #0
	movs r1, #0x1e
	bl RequestPriorityDuration
	bl sub_0805BC4C
_08083F0A:
	pop {r4, pc}
	.align 2, 0
_08083F0C: .4byte gScreen
_08083F10: .4byte gUnk_02034490

	thumb_func_start sub_08083F14
sub_08083F14: @ 0x08083F14
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x1e
	bl SetPriorityTimer
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _08083F78
	cmp r0, #1
	beq _08083FA4
	adds r0, r4, #0
	bl sub_0800445C
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	movs r2, #2
	bl CreateMagicSparkles
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r2, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08083FE6
	movs r0, #8
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	ands r2, r0
	ldr r3, _08083F74 @ =gScreen
	movs r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #8
	movs r5, #0xff
	lsls r5, r5, #8
	adds r1, r5, #0
	ands r0, r1
	orrs r0, r2
	adds r1, r3, #0
	adds r1, #0x68
	strh r0, [r1]
	cmp r0, #0x10
	bne _08083FE6
	b _08083FCC
	.align 2, 0
_08083F74: .4byte gScreen
_08083F78:
	ldr r5, _08083FA0 @ =gPlayerEntity
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x10
	movs r3, #8
	bl EntityInRectRadius
	cmp r0, #0
	beq _08083F98
	movs r0, #0x10
	movs r1, #0
	movs r2, #0
	bl sub_08078AC0
	movs r0, #0x10
	strb r0, [r5, #0x15]
_08083F98:
	movs r0, #1
	strb r0, [r4, #0xd]
	b _08083FE6
	.align 2, 0
_08083FA0: .4byte gPlayerEntity
_08083FA4:
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	beq _08083FB2
	ldr r0, _08083FC8 @ =gPlayerEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	bne _08083FE6
_08083FB2:
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #8
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	movs r0, #0xa5
	lsls r0, r0, #1
	bl SoundReq
	b _08083FE6
	.align 2, 0
_08083FC8: .4byte gPlayerEntity
_08083FCC:
	ldr r1, _08083FE8 @ =gUnk_02034490
	movs r0, #0
	strb r0, [r1]
	adds r1, r3, #0
	adds r1, #0x66
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08083E20
	movs r0, #0x73
	bl SoundReq
_08083FE6:
	pop {r4, r5, pc}
	.align 2, 0
_08083FE8: .4byte gUnk_02034490

	thumb_func_start sub_08083FEC
sub_08083FEC: @ 0x08083FEC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800445C
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0808401E
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_080788E0
	adds r0, r4, #0
	movs r1, #0x3c
	bl RequestPriorityDuration
	ldr r0, _08084020 @ =0x0000011B
	bl SoundReq
_0808401E:
	pop {r4, pc}
	.align 2, 0
_08084020: .4byte 0x0000011B

	thumb_func_start sub_08084024
sub_08084024: @ 0x08084024
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800445C
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08084070
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808406A
	ldrb r0, [r4, #0xe]
	cmp r0, #0x18
	bne _08084060
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
	movs r0, #0x10
	strb r0, [r4, #0xf]
	b _0808406A
_08084060:
	movs r0, #5
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xb]
	bl sub_08084074
_0808406A:
	ldrb r0, [r4, #0xb]
	bl SetLocalFlag
_08084070:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08084074
sub_08084074: @ 0x08084074
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #3
	bl GetCurrentRoomProperty
	adds r1, r0, #0
	cmp r1, #0
	beq _080840A4
	b _0808409E
_08084086:
	cmp r0, #3
	bne _0808409C
	ldrb r0, [r1, #1]
	cmp r4, r0
	bne _0808409C
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	movs r2, #0
	bl CreateItemEntity
	b _080840A4
_0808409C:
	adds r1, #8
_0808409E:
	ldrb r0, [r1]
	cmp r0, #0
	bne _08084086
_080840A4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080840A8
sub_080840A8: @ 0x080840A8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r4, _0808413C @ =gUnk_0811F838
	bl Random
	movs r1, #7
	ands r1, r0
	adds r1, r1, r4
	ldrb r1, [r1]
	movs r0, #0
	movs r2, #0
	bl CreateObject
	adds r5, r0, #0
	cmp r5, #0
	beq _08084138
	movs r0, #6
	strb r0, [r5, #0xe]
	bl Random
	movs r1, #7
	ands r0, r1
	adds r0, #0xc
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x15]
	bl Random
	movs r1, #0xf
	ands r1, r0
	lsls r1, r1, #1
	adds r1, #0x20
	strh r1, [r5, #0x24]
	bl Random
	ldr r1, _08084140 @ =gUnk_0811F840
	movs r4, #3
	ands r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r5, #0x20]
	bl Random
	ldr r1, _08084144 @ =gUnk_0811F850
	ands r0, r4
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r6
	strh r0, [r5, #0x2e]
	adds r0, r7, #1
	strh r0, [r5, #0x32]
	ldr r0, _08084148 @ =0x0000FFF8
	strh r0, [r5, #0x36]
	adds r0, r5, #0
	bl sub_08016A30
	adds r0, r5, #0
	movs r1, #0x11
	movs r2, #0
	bl CreateFx
	adds r5, r0, #0
	cmp r5, #0
	beq _08084138
	movs r0, #0x92
	lsls r0, r0, #1
	bl SoundReq
_08084138:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0808413C: .4byte gUnk_0811F838
_08084140: .4byte gUnk_0811F840
_08084144: .4byte gUnk_0811F850
_08084148: .4byte 0x0000FFF8

	thumb_func_start sub_0808414C
sub_0808414C: @ 0x0808414C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	movs r2, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08084180
	movs r0, #8
	strb r0, [r1, #0xe]
	ldrb r0, [r1, #0xf]
	subs r0, #1
	strb r0, [r1, #0xf]
	ands r0, r2
	cmp r0, #0
	beq _0808417C
	movs r2, #0x2e
	ldrsh r0, [r1, r2]
	movs r2, #0x32
	ldrsh r1, [r1, r2]
	bl sub_080840A8
	b _08084180
_0808417C:
	movs r0, #5
	strb r0, [r1, #0xc]
_08084180:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08084184
sub_08084184: @ 0x08084184
	push {lr}
	bl sub_0800445C
	pop {pc}

	thumb_func_start nullsub_114
nullsub_114: @ 0x0808418C
	bx lr
	.align 2, 0

	thumb_func_start sub_08084190
sub_08084190: @ 0x08084190
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _08084204 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r5, r4, #0
	adds r5, #0x70
	strh r1, [r5]
	ldr r0, _08084208 @ =gUnk_0811F8A8
	str r0, [r4, #0x48]
	adds r0, r4, #0
	bl GetTileTypeByEntity
	cmp r0, #0x74
	bne _080841D2
	bl DeleteThisEntity
_080841D2:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _08084200
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrh r1, [r5]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r2, [r0]
	movs r0, #0x73
	bl sub_0807B7D8
	ldrb r1, [r4, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08084200
	bl DeleteThisEntity
_08084200:
	pop {r4, r5, pc}
	.align 2, 0
_08084204: .4byte gRoomControls
_08084208: .4byte gUnk_0811F8A8

	thumb_func_start sub_0808420C
sub_0808420C: @ 0x0808420C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _08084220
	movs r0, #2
	strb r0, [r4, #0xc]
_08084220:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08084224
sub_08084224: @ 0x08084224
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x70
	ldrh r1, [r0]
	subs r0, #0x38
	ldrb r2, [r0]
	movs r0, #0x73
	bl sub_0807B7D8
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bgt _0808424C
	cmp r0, #6
	blt _0808424C
	ldr r0, _08084248 @ =0x00000215
	bl SoundReq
	b _08084258
	.align 2, 0
_08084248: .4byte 0x00000215
_0808424C:
	movs r0, #0x72
	bl SoundReq
	adds r0, r4, #0
	bl CreateDust
_08084258:
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xe]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x72
	strh r0, [r1]
	ldrb r1, [r4, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08084278
	bl DeleteThisEntity
_08084278:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0808427C
sub_0808427C: @ 0x0808427C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0808428A
	cmp r0, #7
	bne _080842D4
_0808428A:
	adds r0, r4, #0
	bl GetTileTypeByEntity
	cmp r0, #0x74
	bne _0808429C
	adds r0, r4, #0
	bl DeleteEntity
	b _080842D4
_0808429C:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	bne _080842D4
	adds r1, r4, #0
	adds r1, #0x72
	ldrh r0, [r1]
	cmp r0, #0
	beq _080842BA
	subs r0, #1
	strh r0, [r1]
	b _080842D4
_080842BA:
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x70
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_0807BA8C
	adds r0, r4, #0
	bl CreateDust
_080842D4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080842D8
sub_080842D8: @ 0x080842D8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrh r2, [r5, #0x2e]
	movs r1, #8
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r2, r0, #0x1f
	ldrh r0, [r5, #0x32]
	ands r1, r0
	cmp r1, #0
	beq _080842F6
	adds r2, #2
_080842F6:
	ldr r1, _0808432C @ =gUnk_0811F898
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _08084330 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0801AF18
	pop {r4, r5, r6, pc}
	.align 2, 0
_0808432C: .4byte gUnk_0811F898
_08084330: .4byte gRoomControls
