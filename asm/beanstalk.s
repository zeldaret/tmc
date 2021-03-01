	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Beanstalk
Beanstalk: @ 0x08089D04
	push {lr}
	ldr r2, _08089D18 @ =gUnk_08120DF4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08089D18: .4byte gUnk_08120DF4

	thumb_func_start sub_08089D1C
sub_08089D1C: @ 0x08089D1C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #0x19]
	movs r4, #0x3f
	adds r0, r4, #0
	ands r0, r1
	movs r6, #0x80
	orrs r0, r6
	strb r0, [r5, #0x19]
	ldrb r1, [r5, #0x1b]
	adds r0, r4, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r5, #0x1b]
	adds r0, r5, #0
	movs r1, #4
	bl sub_0805E3A0
	ldrb r0, [r5, #0xa]
	cmp r0, #7
	bne _08089D90
	ldrb r1, [r5, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08089D54
	b _08089F06
_08089D54:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _08089D74
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _08089D74
	bl CheckLocalFlag
	cmp r0, #0
	bne _08089D6A
	b _08089F06
_08089D6A:
	ldrb r1, [r5, #0x1b]
	adds r0, r4, #0
	ands r0, r1
	orrs r0, r6
	strb r0, [r5, #0x1b]
_08089D74:
	ldr r4, _08089D8C @ =gUnk_08120E3C
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r1, [r0]
	adds r0, r5, #0
	bl InitializeAnimation
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r4
	b _08089DCE
	.align 2, 0
_08089D8C: .4byte gUnk_08120E3C
_08089D90:
	cmp r0, #0
	beq _08089DAC
	ldr r0, _08089DA8 @ =gUnk_08120E14
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r5, #0
	bl InitializeAnimation
	b _08089DC6
	.align 2, 0
_08089DA8: .4byte gUnk_08120E14
_08089DAC:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #2
	bl sub_080AE008
	ldr r0, _08089E08 @ =gUnk_08120E14
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r5, #0
	bl InitAnimationForceUpdate
_08089DC6:
	ldr r1, _08089E08 @ =gUnk_08120E14
	ldrb r0, [r5, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
_08089DCE:
	ldrb r0, [r0, #1]
	adds r3, r5, #0
	adds r3, #0x29
	movs r1, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r2, #1
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bge _08089DFC
	b _08089F00
_08089DFC:
	cmp r0, #6
	ble _08089E0C
	cmp r0, #7
	beq _08089E1C
	b _08089F00
	.align 2, 0
_08089E08: .4byte gUnk_08120E14
_08089E0C:
	adds r0, r5, #0
	adds r0, #0x60
	movs r2, #0
	movs r1, #0xe0
	lsls r1, r1, #1
	strh r1, [r0]
	strb r2, [r5, #0xe]
	b _08089F00
_08089E1C:
	ldrb r1, [r5, #0xb]
	cmp r1, #3
	bgt _08089E2C
	cmp r1, #2
	bge _08089EEC
	cmp r1, #0
	beq _08089E32
	b _08089F00
_08089E2C:
	cmp r1, #4
	beq _08089EF8
	b _08089F00
_08089E32:
	movs r0, #0x10
	str r0, [r5, #0x6c]
	strb r1, [r5, #0xe]
_08089E38:
	movs r0, #0x2c
	movs r1, #7
	movs r2, #1
	bl CreateObject
	adds r1, r0, #0
	str r1, [r5, #0x54]
	cmp r1, #0
	beq _08089EC8
	ldrh r0, [r5, #0x2e]
	strh r0, [r1, #0x2e]
	ldr r2, [r5, #0x54]
	ldr r1, [r5, #0x6c]
	ldrh r0, [r5, #0x32]
	subs r0, r0, r1
	strh r0, [r2, #0x32]
	movs r0, #3
	strb r0, [r5, #0xf]
_08089E5C:
	ldrb r0, [r5, #0xe]
	lsls r0, r0, #2
	ldr r1, _08089EE4 @ =gUnk_08120DFC
	adds r4, r0, r1
	ldrb r2, [r4]
	subs r2, #2
	movs r0, #0x2c
	movs r1, #7
	bl CreateObject
	adds r1, r0, #0
	str r1, [r5, #0x54]
	cmp r1, #0
	beq _08089EAA
	movs r0, #1
	ldrsb r0, [r4, r0]
	ldrh r2, [r5, #0x2e]
	adds r0, r0, r2
	strh r0, [r1, #0x2e]
	ldr r2, [r5, #0x54]
	ldr r1, [r5, #0x6c]
	ldrh r0, [r5, #0x32]
	subs r0, r0, r1
	movs r1, #2
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	strh r0, [r2, #0x32]
	ldr r3, [r5, #0x54]
	ldrb r2, [r4, #3]
	movs r0, #1
	ands r2, r0
	lsls r2, r2, #6
	ldrb r0, [r3, #0x18]
	movs r4, #0x41
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x18]
_08089EAA:
	ldrb r0, [r5, #0xe]
	adds r2, r0, #1
	strb r2, [r5, #0xe]
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08089E5C
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _08089EC8
	strb r1, [r5, #0xe]
_08089EC8:
	ldr r0, [r5, #0x6c]
	adds r0, #0x38
	str r0, [r5, #0x6c]
	ldrh r1, [r5, #0x32]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _08089EE8 @ =gRoomControls
	ldrh r0, [r0, #8]
	cmp r1, r0
	bge _08089E38
	movs r0, #1
	strb r0, [r5, #0xe]
	b _08089F00
	.align 2, 0
_08089EE4: .4byte gUnk_08120DFC
_08089EE8: .4byte gRoomControls
_08089EEC:
	ldrb r0, [r5, #0x19]
	movs r1, #0x3f
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r5, #0x19]
_08089EF8:
	adds r1, r5, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
_08089F00:
	adds r0, r5, #0
	bl sub_08089F08
_08089F06:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08089F08
sub_08089F08: @ 0x08089F08
	push {lr}
	ldr r2, _08089F1C @ =gUnk_08120E50
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08089F1C: .4byte gUnk_08120E50

	thumb_func_start sub_08089F20
sub_08089F20: @ 0x08089F20
	push {lr}
	ldr r2, _08089F34 @ =gUnk_08120E78
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08089F34: .4byte gUnk_08120E78

	thumb_func_start sub_08089F38
sub_08089F38: @ 0x08089F38
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08089F6C
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bhi _08089F5A
	adds r0, #1
	strb r0, [r4, #0xe]
	b _08089F6C
_08089F5A:
	adds r0, r4, #0
	movs r1, #1
	bl InitAnimationForceUpdate
	movs r0, #0x10
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
_08089F6C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08089F70
sub_08089F70: @ 0x08089F70
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08089F8E
	movs r0, #0x10
	strb r0, [r4, #0xe]
	movs r0, #0xcc
	lsls r0, r0, #1
	bl SoundReq
_08089F8E:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08089FEC
	movs r0, #0x2c
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _08089FBE
	ldrh r0, [r4, #0x2e]
	strh r0, [r1, #0x2e]
	ldr r1, [r4, #0x54]
	ldrh r0, [r4, #0x32]
	strh r0, [r1, #0x32]
_08089FBE:
	movs r0, #0x2c
	movs r1, #2
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _08089FDC
	ldrh r0, [r4, #0x2e]
	strh r0, [r1, #0x2e]
	ldr r1, [r4, #0x54]
	ldrh r0, [r4, #0x32]
	subs r0, #0x10
	strh r0, [r1, #0x32]
_08089FDC:
	ldrb r0, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r4, #0x18]
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
_08089FEC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08089FF0
sub_08089FF0: @ 0x08089FF0
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0808A00E
	movs r0, #0x10
	strb r0, [r1, #0xe]
	movs r0, #0xcc
	lsls r0, r0, #1
	bl SoundReq
_0808A00E:
	pop {pc}

	thumb_func_start sub_0808A010
sub_0808A010: @ 0x0808A010
	push {r4, r5, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808A07E
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #2
	ldr r1, _0808A0BC @ =gUnk_08120DFC
	adds r5, r0, r1
	ldrb r1, [r5]
	movs r0, #0x2c
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _0808A06C
	movs r0, #1
	ldrsb r0, [r5, r0]
	ldrh r2, [r4, #0x2e]
	adds r0, r0, r2
	strh r0, [r1, #0x2e]
	ldr r2, [r4, #0x54]
	movs r1, #2
	ldrsb r1, [r5, r1]
	ldrh r0, [r4, #0x32]
	subs r0, r0, r1
	strh r0, [r2, #0x32]
	ldr r3, [r4, #0x54]
	ldrb r1, [r5, #3]
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
_0808A06C:
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _0808A07E
	movs r0, #0
	strb r0, [r4, #0xe]
_0808A07E:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808A0BA
	movs r0, #0x2c
	movs r1, #3
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _0808A0A8
	ldrh r0, [r4, #0x2e]
	strh r0, [r1, #0x2e]
	ldr r1, [r4, #0x54]
	ldrh r0, [r4, #0x32]
	strh r0, [r1, #0x32]
_0808A0A8:
	ldrh r0, [r4, #0x32]
	subs r0, #0x38
	strh r0, [r4, #0x32]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0808A0BA
	adds r0, r4, #0
	bl DeleteEntity
_0808A0BA:
	pop {r4, r5, pc}
	.align 2, 0
_0808A0BC: .4byte gUnk_08120DFC

	thumb_func_start sub_0808A0C0
sub_0808A0C0: @ 0x0808A0C0
	push {lr}
	adds r2, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0808A0D6
	adds r0, r2, #0
	bl GetNextFrame
_0808A0D6:
	pop {pc}

	thumb_func_start nullsub_517
nullsub_517: @ 0x0808A0D8
	bx lr
	.align 2, 0

	thumb_func_start sub_0808A0DC
sub_0808A0DC: @ 0x0808A0DC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	bne _0808A0EC
	b _0808A202
_0808A0EC:
	cmp r0, #1
	bgt _0808A0F6
	cmp r0, #0
	beq _0808A120
	b _0808A202
_0808A0F6:
	cmp r0, #4
	ble _0808A0FC
	b _0808A202
_0808A0FC:
	ldr r0, _0808A118 @ =gPlayerState
	ldrb r0, [r0, #0x12]
	cmp r0, #0x1e
	bne _0808A1DA
	ldr r1, _0808A11C @ =gPlayerEntity
	adds r0, r5, #0
	movs r2, #0
	movs r3, #8
	bl sub_080041A0
	cmp r0, #0
	beq _0808A1DC
	b _0808A1B0
	.align 2, 0
_0808A118: .4byte gPlayerState
_0808A11C: .4byte gPlayerEntity
_0808A120:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _0808A202
	ldr r4, _0808A1A8 @ =gRoomControls
	ldrh r0, [r4, #8]
	str r0, [r5, #0x6c]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldrh r2, [r4, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	ldrh r2, [r4, #8]
	subs r0, r0, r2
	lsrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r5, #0
	adds r0, #0x70
	strh r1, [r0]
	adds r6, r4, #0
	mov r8, r3
	adds r4, r0, #0
	ldr r7, _0808A1AC @ =0x00004017
_0808A154:
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	ldrh r0, [r6, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	mov r2, r8
	ands r1, r2
	ldrh r2, [r6, #8]
	ldr r0, [r5, #0x6c]
	subs r0, r0, r2
	lsrs r0, r0, #4
	mov r2, r8
	ands r0, r2
	lsls r0, r0, #6
	orrs r1, r0
	strh r1, [r4]
	ldrh r1, [r4]
	adds r0, r7, #0
	movs r2, #2
	bl SetTile
	ldrh r1, [r4]
	adds r0, r7, #0
	movs r2, #1
	bl SetTile
	ldr r0, [r5, #0x6c]
	adds r2, r0, #0
	adds r2, #0x10
	str r2, [r5, #0x6c]
	ldrh r0, [r6, #8]
	ldrh r1, [r6, #0x20]
	adds r0, r0, r1
	cmp r2, r0
	bhs _0808A1A2
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	cmp r2, r0
	bls _0808A154
_0808A1A2:
	movs r0, #0
	strb r0, [r5, #0xe]
	b _0808A202
	.align 2, 0
_0808A1A8: .4byte gRoomControls
_0808A1AC: .4byte 0x00004017
_0808A1B0:
	adds r3, r5, #0
	adds r3, #0x58
	ldrb r2, [r3]
	ldrb r1, [r5, #0xb]
	subs r1, #1
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, #1
	cmp r2, r0
	bne _0808A1DE
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _0808A1DE
	movs r0, #1
	strb r0, [r5, #0xe]
	ldrb r1, [r3]
	adds r1, #1
	adds r0, r5, #0
	bl InitializeAnimation
	b _0808A1DE
_0808A1DA:
	movs r0, #0
_0808A1DC:
	strb r0, [r5, #0xe]
_0808A1DE:
	adds r0, r5, #0
	bl GetNextFrame
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808A202
	ldrb r0, [r5, #0xb]
	subs r0, #1
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r1, #1
	adds r0, r5, #0
	bl InitializeAnimation
_0808A202:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0808A208
sub_0808A208: @ 0x0808A208
	push {lr}
	ldr r2, _0808A21C @ =gUnk_08120E84
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808A21C: .4byte gUnk_08120E84

	thumb_func_start sub_0808A220
sub_0808A220: @ 0x0808A220
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x1b]
	movs r6, #0x3f
	adds r0, r6, #0
	ands r0, r1
	movs r5, #0x80
	orrs r0, r5
	strb r0, [r4, #0x1b]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _0808A2E4 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r7, #0x32
	ldrsh r0, [r4, r7]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r2, r4, #0
	adds r2, #0x70
	strh r1, [r2]
	ldr r0, _0808A2E8 @ =0x00004017
	ldrh r1, [r2]
	movs r2, #1
	bl SetTile
	movs r7, #1
	strb r7, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #0x15
	movs r2, #0
	movs r3, #0
	bl CreateObjectWithParent
	adds r3, r0, #0
	cmp r3, #0
	beq _0808A2D4
	ldrh r0, [r4, #0x32]
	adds r0, #0x38
	strh r0, [r3, #0x32]
	ldrh r0, [r4, #0x12]
	strh r0, [r3, #0x12]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x60
	strh r1, [r0]
	ldrb r1, [r4, #0x1a]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	ldrb r2, [r3, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1a]
	adds r1, r3, #0
	adds r1, #0x58
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x80
	strb r0, [r3, #0xe]
	strb r7, [r3, #0xa]
	ldrb r1, [r3, #0x19]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r5
	strb r0, [r3, #0x19]
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r3, #0x1b]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r5
	strb r0, [r3, #0x1b]
_0808A2D4:
	adds r0, r4, #0
	movs r1, #0x2c
	movs r2, #9
	movs r3, #0
	bl CreateObjectWithParent
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0808A2E4: .4byte gRoomControls
_0808A2E8: .4byte 0x00004017

	thumb_func_start nullsub_518
nullsub_518: @ 0x0808A2EC
	bx lr
	.align 2, 0

	thumb_func_start sub_0808A2F0
sub_0808A2F0: @ 0x0808A2F0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _0808A316
	movs r0, #1
	strb r0, [r5, #0xd]
	ldrh r0, [r5, #0x32]
	adds r0, #0x28
	strh r0, [r5, #0x32]
	movs r2, #0x18
	rsbs r2, r2, #0
	adds r0, r5, #0
	movs r1, #0
	bl sub_0800029C
	adds r1, r5, #0
	adds r1, #0x72
	strh r0, [r1]
_0808A316:
	ldr r3, _0808A38C @ =gPlayerEntity
	ldrb r1, [r3, #0x1b]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r5, #0x1b]
	movs r7, #0x3f
	adds r0, r7, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x1b]
	ldrb r1, [r3, #0x19]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r5, #0x19]
	adds r0, r7, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x19]
	ldr r0, _0808A390 @ =gPlayerState
	ldrb r0, [r0, #0x12]
	cmp r0, #0x1e
	bne _0808A39C
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r2, #0x18
	rsbs r2, r2, #0
	adds r0, r5, #0
	movs r1, #0
	bl sub_0800029C
	ldr r3, _0808A394 @ =0x00004014
	cmp r0, r3
	beq _0808A3EC
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	ldr r2, _0808A398 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	ands r1, r7
	movs r4, #0x32
	ldrsh r0, [r5, r4]
	ldrh r2, [r2, #8]
	adds r2, #0x18
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r7
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r3, #0
	movs r2, #1
	bl SetTile
	b _0808A3EC
	.align 2, 0
_0808A38C: .4byte gPlayerEntity
_0808A390: .4byte gPlayerState
_0808A394: .4byte 0x00004014
_0808A398: .4byte gRoomControls
_0808A39C:
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
	adds r6, r5, #0
	adds r6, #0x72
	ldrh r4, [r6]
	movs r2, #0x18
	rsbs r2, r2, #0
	adds r0, r5, #0
	movs r1, #0
	bl sub_0800029C
	cmp r4, r0
	beq _0808A3EC
	ldrh r0, [r6]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _0808A3F0 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r7
	movs r4, #0x32
	ldrsh r2, [r5, r4]
	ldrh r3, [r3, #8]
	adds r3, #0x18
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r7
	lsls r2, r2, #6
	orrs r1, r2
	movs r2, #1
	bl SetTile
_0808A3EC:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0808A3F0: .4byte gRoomControls
