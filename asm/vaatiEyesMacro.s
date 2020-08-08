	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start VaatiEyesMacro
VaatiEyesMacro: @ 0x0802EC6C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0802EC94 @ =gUnk_080CDE34
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl SetChildOffset
	pop {r4, r5, pc}
	.align 2, 0
_0802EC94: .4byte gUnk_080CDE34

	thumb_func_start sub_0802EC98
sub_0802EC98: @ 0x0802EC98
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0802ECBC @ =gUnk_080CDE4C
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bhi _0802ECB8
	adds r0, r4, #0
	bl sub_0802EF90
_0802ECB8:
	pop {r4, pc}
	.align 2, 0
_0802ECBC: .4byte gUnk_080CDE4C

	thumb_func_start sub_0802ECC0
sub_0802ECC0: @ 0x0802ECC0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0802ED2A
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r5, r0, #0
	ldr r3, _0802ED00 @ =gScreenTransition
	cmp r1, #0
	bne _0802ECEE
	adds r2, r3, #0
	adds r2, #0x39
	adds r0, r3, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	adds r0, #2
	movs r1, #1
	lsls r1, r0
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
_0802ECEE:
	ldr r0, _0802ED04 @ =gRoomControls
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _0802ED08
	ldrb r1, [r5]
	adds r0, r3, #0
	adds r0, #0x3a
	b _0802ED0E
	.align 2, 0
_0802ED00: .4byte gScreenTransition
_0802ED04: .4byte gRoomControls
_0802ED08:
	ldrb r1, [r5]
	adds r0, r3, #0
	adds r0, #0x3b
_0802ED0E:
	strb r1, [r0]
	adds r6, r4, #0
	adds r6, #0x79
	ldrb r0, [r6]
	ldrb r1, [r5]
	cmp r0, r1
	beq _0802ED24
	movs r0, #0xbd
	lsls r0, r0, #1
	bl sub_08004488
_0802ED24:
	ldrb r0, [r5]
	strb r0, [r6]
	b _0802ED52
_0802ED2A:
	cmp r0, #1
	bne _0802ED52
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _0802ED3E
	rsbs r0, r0, #0
	strb r0, [r1]
_0802ED3E:
	adds r5, r4, #0
	adds r5, #0x45
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _0802ED4E
	movs r0, #0xe5
	bl sub_08004488
_0802ED4E:
	movs r0, #0xff
	strb r0, [r5]
_0802ED52:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802ED64
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0802ED64:
	ldr r1, _0802ED70 @ =gUnk_080CDE34
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, r6, pc}
	.align 2, 0
_0802ED70: .4byte gUnk_080CDE34

	thumb_func_start sub_0802ED74
sub_0802ED74: @ 0x0802ED74
	push {lr}
	ldr r2, _0802ED88 @ =gUnk_080CDE5C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802ED88: .4byte gUnk_080CDE5C

	thumb_func_start sub_0802ED8C
sub_0802ED8C: @ 0x0802ED8C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0802EDD0 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x46
	bhi _0802EE0A
	bl sub_0805E8D4
	adds r1, r0, #0
	cmp r1, #0
	beq _0802EE0A
	movs r0, #9
	strb r0, [r1, #8]
	movs r0, #0x34
	strb r0, [r1, #9]
	str r4, [r1, #0x14]
	adds r0, r1, #0
	movs r1, #8
	bl sub_0805EA2C
	movs r0, #0x25
	movs r1, #2
	bl CreateEnemy
	str r4, [r0, #0x50]
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _0802EDD4 @ =gRoomControls
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _0802EDDC
	ldr r0, _0802EDD8 @ =gScreenTransition
	adds r0, #0x3a
	b _0802EDE0
	.align 2, 0
_0802EDD0: .4byte gUnk_03003DBC
_0802EDD4: .4byte gRoomControls
_0802EDD8: .4byte gScreenTransition
_0802EDDC:
	ldr r0, _0802EE0C @ =gScreenTransition
	adds r0, #0x3b
_0802EDE0:
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x45
	strb r0, [r1]
	adds r1, #0x34
	strb r0, [r1]
	bl Random
	adds r1, r4, #0
	adds r1, #0x78
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0802EFB8
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_0802EF58
_0802EE0A:
	pop {r4, pc}
	.align 2, 0
_0802EE0C: .4byte gScreenTransition

	thumb_func_start sub_0802EE10
sub_0802EE10: @ 0x0802EE10
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802F04C
	adds r0, r4, #0
	bl GetNextFrame
	pop {r4, pc}

	thumb_func_start sub_0802EE20
sub_0802EE20: @ 0x0802EE20
	push {lr}
	ldr r2, _0802EE34 @ =gUnk_080CDE64
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802EE34: .4byte gUnk_080CDE64

	thumb_func_start sub_0802EE38
sub_0802EE38: @ 0x0802EE38
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0802EE84 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x46
	bhi _0802EE82
	movs r0, #0x25
	movs r1, #3
	bl CreateEnemy
	str r5, [r0, #0x50]
	movs r0, #1
	strb r0, [r5, #0xc]
	bl Random
	adds r4, r0, #0
	movs r1, #3
	ands r0, r1
	adds r0, #1
	strb r0, [r5, #0xe]
	bl Random
	lsrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0x78
	strb r0, [r1]
	ldr r1, _0802EE88 @ =gUnk_080CDE6C
	lsrs r4, r4, #0x10
	movs r0, #3
	ands r4, r0
	adds r4, r4, r1
	ldrb r0, [r4]
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	movs r1, #1
	bl InitializeAnimation
_0802EE82:
	pop {r4, r5, pc}
	.align 2, 0
_0802EE84: .4byte gUnk_03003DBC
_0802EE88: .4byte gUnk_080CDE6C

	thumb_func_start sub_0802EE8C
sub_0802EE8C: @ 0x0802EE8C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r2, [r0, #4]
	cmp r2, #0
	bne _0802EEA8
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x45
	strb r2, [r0]
	b _0802EEB4
_0802EEA8:
	adds r0, r4, #0
	bl sub_0802F04C
	adds r0, r4, #0
	bl GetNextFrame
_0802EEB4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802EEB8
sub_0802EEB8: @ 0x0802EEB8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0802EEC8
	bl DeleteThisEntity
_0802EEC8:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0802EED6
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xff
	strb r0, [r4, #0x14]
_0802EED6:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPositionAndSpriteOffset
	ldr r1, _0802EF14 @ =gPlayerEntity
	adds r0, r4, #0
	bl GetFacingDirection
	adds r0, #1
	movs r1, #0x1e
	ands r0, r1
	ldr r1, _0802EF18 @ =gUnk_080CDE70
	adds r0, r0, r1
	ldrb r2, [r0]
	ldrb r1, [r4, #0x1e]
	cmp r2, r1
	beq _0802EF00
	ldrb r0, [r0, #1]
	cmp r0, r1
	beq _0802EF00
	strb r2, [r4, #0x1e]
_0802EF00:
	ldrh r0, [r4, #0x32]
	adds r0, #1
	strh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x63
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	pop {r4, pc}
	.align 2, 0
_0802EF14: .4byte gPlayerEntity
_0802EF18: .4byte gUnk_080CDE70

	thumb_func_start sub_0802EF1C
sub_0802EF1C: @ 0x0802EF1C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0802EF2C
	bl DeleteThisEntity
_0802EF2C:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0802EF4A
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x11
	strb r0, [r4, #0x1e]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x19
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
_0802EF4A:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPositionAndSpriteOffset
	movs r0, #0
	strh r0, [r4, #0x36]
	pop {r4, pc}

	thumb_func_start sub_0802EF58
sub_0802EF58: @ 0x0802EF58
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
_0802EF5E:
	movs r0, #0x25
	movs r1, #1
	bl CreateEnemy
	adds r4, r0, #0
	cmp r4, #0
	beq _0802EF86
	strb r5, [r4, #0xb]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	str r6, [r4, #0x50]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	adds r0, r6, #0
	adds r1, r4, #0
	bl CopyPosition
_0802EF86:
	adds r5, #1
	cmp r5, #6
	bls _0802EF5E
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802EF90
sub_0802EF90: @ 0x0802EF90
	push {r4, lr}
	ldr r4, _0802EFB4 @ =gUnk_080CDE90
	adds r3, r0, #0
	adds r3, #0x78
	ldrb r1, [r3]
	adds r2, r1, #1
	strb r2, [r3]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1b
	movs r2, #7
	ands r1, r2
	adds r1, r1, r4
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strh r1, [r0, #0x36]
	pop {r4, pc}
	.align 2, 0
_0802EFB4: .4byte gUnk_080CDE90

	thumb_func_start sub_0802EFB8
sub_0802EFB8: @ 0x0802EFB8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl Random
	adds r6, r0, #0
	lsrs r0, r6, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0802EFD2
	movs r5, #0x18
	ands r5, r6
	b _0802EFE0
_0802EFD2:
	ldr r0, _0802F01C @ =gPlayerEntity
	adds r1, r4, #0
	bl GetFacingDirection
	adds r5, r0, #4
	movs r0, #0x18
	ands r5, r0
_0802EFE0:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _0802F020 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r7, #0x32
	ldrsh r1, [r4, r7]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	ldr r2, _0802F024 @ =gUnk_080B4488
	lsrs r1, r5, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r0, r0, r1
	movs r1, #1
	bl sub_080002E0
	cmp r0, #0
	beq _0802F028
	movs r0, #0xff
	strb r0, [r4, #0x15]
	b _0802F044
	.align 2, 0
_0802F01C: .4byte gPlayerEntity
_0802F020: .4byte gRoomControls
_0802F024: .4byte gUnk_080B4488
_0802F028:
	movs r1, #3
	adds r0, r6, #0
	ands r0, r1
	adds r0, #1
	strb r0, [r4, #0xe]
	strb r5, [r4, #0x15]
	ldr r2, _0802F048 @ =gUnk_080CDE98
	lsrs r0, r6, #0x18
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4, #0x24]
_0802F044:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0802F048: .4byte gUnk_080CDE98

	thumb_func_start sub_0802F04C
sub_0802F04C: @ 0x0802F04C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x2e
	ldrsh r5, [r4, r0]
	movs r1, #0x32
	ldrsh r6, [r4, r1]
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _0802F06A
	adds r0, r4, #0
	bl sub_0802EFB8
	b _0802F112
_0802F06A:
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #3
	cmp r0, #1
	beq _0802F098
	cmp r0, #1
	bgt _0802F07C
	cmp r0, #0
	beq _0802F082
	b _0802F0DC
_0802F07C:
	cmp r0, #2
	beq _0802F0AE
	b _0802F0DC
_0802F082:
	movs r2, #0xf
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #8
	ble _0802F102
	ldrh r1, [r4, #0x32]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #8
	bgt _0802F102
	b _0802F0C2
_0802F098:
	movs r2, #0xf
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #7
	bgt _0802F102
	ldrh r1, [r4, #0x2e]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #7
	ble _0802F102
	b _0802F0F0
_0802F0AE:
	movs r2, #0xf
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #7
	bgt _0802F102
	ldrh r1, [r4, #0x32]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #7
	ble _0802F102
_0802F0C2:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldr r1, _0802F0D8 @ =0x0000FFF0
	ands r0, r1
	adds r6, r0, #0
	adds r6, #8
	b _0802F102
	.align 2, 0
_0802F0D8: .4byte 0x0000FFF0
_0802F0DC:
	movs r2, #0xf
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #8
	ble _0802F102
	ldrh r1, [r4, #0x2e]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #8
	bgt _0802F102
_0802F0F0:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r1, _0802F114 @ =0x0000FFF0
	ands r0, r1
	adds r5, r0, #0
	adds r5, #8
_0802F102:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _0802F112
	strh r5, [r4, #0x2e]
	strh r6, [r4, #0x32]
	adds r0, r4, #0
	bl sub_0802EFB8
_0802F112:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0802F114: .4byte 0x0000FFF0
