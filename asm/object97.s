	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object97
Object97: @ 0x0809D9A8
	push {lr}
	ldr r2, _0809D9BC @ =gUnk_081240C0
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809D9BC: .4byte gUnk_081240C0

	thumb_func_start sub_0809D9C0
sub_0809D9C0: @ 0x0809D9C0
	push {lr}
	ldr r2, _0809D9D4 @ =gUnk_081240D8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809D9D4: .4byte gUnk_081240D8

	thumb_func_start sub_0809D9D8
sub_0809D9D8: @ 0x0809D9D8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r0, #1
	movs r2, #0
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	strb r2, [r4, #0xf]
	ldrb r1, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x19]
	strh r2, [r4, #0x24]
	movs r0, #0x18
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #1
	bl InitAnimationForceUpdate
	adds r0, r4, #0
	movs r1, #6
	bl FindNextEntityOfSameSubtype
	cmp r0, #0
	beq _0809DA1E
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
	b _0809DA28
_0809DA1E:
	movs r0, #0x20
	bl SetGlobalFlag
	bl DeleteThisEntity
_0809DA28:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809DA2C
sub_0809DA2C: @ 0x0809DA2C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809DA5C
	ldrb r0, [r1, #0xc]
	adds r0, #1
	strb r0, [r1, #0xc]
	ldr r0, [r1, #0x30]
	movs r2, #0x80
	lsls r2, r2, #0xd
	adds r0, r0, r2
	str r0, [r1, #0x30]
	ldr r0, [r1, #0x34]
	ldr r2, _0809DA60 @ =0xFFF00000
	adds r0, r0, r2
	str r0, [r1, #0x34]
	adds r0, r1, #0
	movs r1, #3
	bl InitAnimationForceUpdate
_0809DA5C:
	pop {pc}
	.align 2, 0
_0809DA60: .4byte 0xFFF00000

	thumb_func_start sub_0809DA64
sub_0809DA64: @ 0x0809DA64
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x54]
	adds r1, r4, #0
	bl GetFacingDirection
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_0809E1C8
	adds r0, r5, #0
	bl sub_0809E1F0
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r0, #0x32
	ldrsh r2, [r4, r0]
	adds r0, r5, #0
	bl sub_080041DC
	lsls r0, r0, #4
	movs r2, #0x24
	ldrsh r1, [r5, r2]
	cmp r0, r1
	bge _0809DAAC
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0x10
	strb r0, [r5, #0xe]
	movs r0, #1
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	movs r1, #2
	bl InitAnimationForceUpdate
_0809DAAC:
	adds r0, r5, #0
	bl UpdateAnimationSingleFrame
	pop {r4, r5, pc}

	thumb_func_start sub_0809DAB4
sub_0809DAB4: @ 0x0809DAB4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0809DB10 @ =gRoomControls
	ldrh r1, [r5, #6]
	adds r1, #0x78
	ldrh r2, [r5, #8]
	adds r2, #0xa8
	bl sub_080045B4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0809E1C8
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0809DADE
	subs r0, #1
	strb r0, [r4, #0xe]
	ldrh r0, [r4, #0x24]
	subs r0, #0x80
	strh r0, [r4, #0x24]
_0809DADE:
	adds r0, r4, #0
	bl sub_0809E1F0
	ldrh r1, [r5, #6]
	adds r1, #0x78
	ldrh r2, [r5, #8]
	adds r2, #0xa8
	adds r0, r4, #0
	bl sub_080041DC
	lsls r0, r0, #4
	movs r2, #0x24
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bge _0809DB02
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_0809DB02:
	adds r0, r4, #0
	bl sub_0809E210
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, r5, pc}
	.align 2, 0
_0809DB10: .4byte gRoomControls

	thumb_func_start sub_0809DB14
sub_0809DB14: @ 0x0809DB14
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0809E1F0
	adds r0, r4, #0
	bl sub_080040A8
	adds r5, r0, #0
	cmp r5, #0
	bne _0809DB36
	movs r0, #0x20
	bl SetGlobalFlag
	ldr r0, [r4, #0x54]
	str r5, [r0, #0x50]
	bl DeleteThisEntity
_0809DB36:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0809DB40
sub_0809DB40: @ 0x0809DB40
	push {lr}
	ldr r2, _0809DB54 @ =gUnk_081240EC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809DB54: .4byte gUnk_081240EC

	thumb_func_start sub_0809DB58
sub_0809DB58: @ 0x0809DB58
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	ldrb r1, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	adds r0, r4, #0
	movs r1, #0x3c
	bl InitAnimationForceUpdate
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809DB88
sub_0809DB88: @ 0x0809DB88
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x50]
	cmp r4, #0
	beq _0809DBC4
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0809DB9C
	bl DeleteThisEntity
_0809DB9C:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0809DBB0
	movs r3, #0x80
	lsls r3, r3, #0xc
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl PositionRelative
_0809DBB0:
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	ldrb r2, [r5, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x18]
	b _0809DBC8
_0809DBC4:
	bl DeleteThisEntity
_0809DBC8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0809DBCC
sub_0809DBCC: @ 0x0809DBCC
	push {lr}
	ldr r2, _0809DBE0 @ =gUnk_081240F4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809DBE0: .4byte gUnk_081240F4

	thumb_func_start sub_0809DBE4
sub_0809DBE4: @ 0x0809DBE4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0809DB58
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0x18
	strb r0, [r4, #0x15]
	adds r0, #0xe8
	strh r0, [r4, #0x24]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	movs r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0x6e
	bl SoundReq
	pop {r4, pc}

	thumb_func_start sub_0809DC14
sub_0809DC14: @ 0x0809DC14
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #1
	bhi _0809DC5A
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0809DC3C
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	b _0809DC54
_0809DC3C:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _0809DC64 @ =gPlayerEntity
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
_0809DC54:
	movs r0, #0x6e
	bl SoundReq
_0809DC5A:
	adds r0, r4, #0
	bl sub_0809DB88
	pop {r4, pc}
	.align 2, 0
_0809DC64: .4byte gPlayerEntity

	thumb_func_start sub_0809DC68
sub_0809DC68: @ 0x0809DC68
	push {lr}
	ldr r2, _0809DC7C @ =gUnk_08124100
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809DC7C: .4byte gUnk_08124100

	thumb_func_start sub_0809DC80
sub_0809DC80: @ 0x0809DC80
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r0, #1
	movs r3, #0
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #1
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x19]
	movs r2, #0
	strh r3, [r4, #0x24]
	movs r0, #0x18
	strb r0, [r4, #0x15]
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r0, r1
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x34]
	ldr r1, _0809DCFC @ =0xFFF00000
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x68
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x6a
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x6c
	strh r3, [r0]
	adds r0, #2
	strb r2, [r0]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	adds r0, r4, #0
	movs r1, #3
	bl InitAnimationForceUpdate
	adds r0, r4, #0
	movs r1, #6
	bl FindNextEntityOfSameSubtype
	cmp r0, #0
	beq _0809DD00
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
	b _0809DD0A
	.align 2, 0
_0809DCFC: .4byte 0xFFF00000
_0809DD00:
	movs r0, #0x20
	bl SetGlobalFlag
	bl DeleteThisEntity
_0809DD0A:
	pop {r4, pc}

	thumb_func_start sub_0809DD0C
sub_0809DD0C: @ 0x0809DD0C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809DD2A
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xa3
	lsls r0, r0, #1
	bl SoundReq
_0809DD2A:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809DD34
sub_0809DD34: @ 0x0809DD34
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x6e
	ldrb r0, [r1]
	adds r0, #8
	strb r0, [r1]
	subs r1, #2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bls _0809DD64
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x20
	strh r0, [r1]
	movs r0, #0xa3
	lsls r0, r0, #1
	bl SoundReq
_0809DD64:
	adds r0, r4, #0
	bl sub_0809E238
	adds r0, r4, #0
	bl sub_0809E29C
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, pc}

	thumb_func_start sub_0809DD78
sub_0809DD78: @ 0x0809DD78
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x6e
	ldrb r0, [r1]
	adds r0, #8
	strb r0, [r1]
	subs r1, #2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0809DDA8
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0x5f
	ands r0, r1
	strb r0, [r4, #0x18]
	b _0809DDB4
_0809DDA8:
	adds r0, r4, #0
	bl sub_0809E238
	adds r0, r4, #0
	bl sub_0809E29C
_0809DDB4:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, pc}

	thumb_func_start sub_0809DDBC
sub_0809DDBC: @ 0x0809DDBC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809DDD8
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _0809DDE0 @ =0x0000015B
	bl SoundReq
_0809DDD8:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, pc}
	.align 2, 0
_0809DDE0: .4byte 0x0000015B

	thumb_func_start sub_0809DDE4
sub_0809DDE4: @ 0x0809DDE4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0809DE34 @ =gRoomControls
	ldrh r1, [r0, #6]
	adds r1, #0x40
	ldrh r2, [r0, #8]
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r2, r2, r0
	adds r0, r4, #0
	bl sub_080045B4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0809E1C8
	adds r0, r4, #0
	bl sub_0809E1F0
	adds r0, r4, #0
	bl sub_0809E210
	adds r0, r4, #0
	bl sub_080040A8
	adds r5, r0, #0
	cmp r5, #0
	bne _0809DE2A
	movs r0, #0x20
	bl SetGlobalFlag
	ldr r0, [r4, #0x54]
	str r5, [r0, #0x50]
	bl DeleteThisEntity
_0809DE2A:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, r5, pc}
	.align 2, 0
_0809DE34: .4byte gRoomControls

	thumb_func_start sub_0809DE38
sub_0809DE38: @ 0x0809DE38
	push {lr}
	ldr r2, _0809DE4C @ =gUnk_08124118
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809DE4C: .4byte gUnk_08124118

	thumb_func_start sub_0809DE50
sub_0809DE50: @ 0x0809DE50
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r0, #1
	movs r2, #0
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	movs r0, #0xa
	strb r0, [r4, #0xe]
	strb r2, [r4, #0xf]
	ldrb r1, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x19]
	strh r2, [r4, #0x24]
	ldr r1, _0809DEEC @ =gUnk_0812412D
	ldrb r0, [r4, #0xb]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0xb]
	lsls r1, r1, #2
	ldr r0, _0809DEF0 @ =gUnk_08124132
	adds r1, r1, r0
	ldr r2, _0809DEF4 @ =gRoomControls
	ldrh r0, [r1]
	ldrh r3, [r2, #6]
	adds r0, r0, r3
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #2]
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	adds r0, #0x40
	strh r0, [r4, #0x32]
	ldr r0, _0809DEF8 @ =0x0000FFC0
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	ldr r1, _0809DEFC @ =gUnk_08124128
	ldrb r0, [r4, #0xb]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	movs r0, #0x97
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r5, r0, #0
	cmp r5, #0
	beq _0809DEE8
	str r4, [r5, #0x50]
	str r5, [r4, #0x54]
	movs r3, #0x80
	lsls r3, r3, #0xc
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl PositionRelative
	movs r1, #0x10
	ldrb r0, [r4, #0x15]
	cmp r0, #0x18
	bne _0809DEE2
	rsbs r1, r1, #0
_0809DEE2:
	ldrh r0, [r5, #0x2e]
	adds r0, r0, r1
	strh r0, [r5, #0x2e]
_0809DEE8:
	pop {r4, r5, pc}
	.align 2, 0
_0809DEEC: .4byte gUnk_0812412D
_0809DEF0: .4byte gUnk_08124132
_0809DEF4: .4byte gRoomControls
_0809DEF8: .4byte 0x0000FFC0
_0809DEFC: .4byte gUnk_08124128

	thumb_func_start sub_0809DF00
sub_0809DF00: @ 0x0809DF00
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xb]
	bl sub_0809E2C4
	cmp r0, #1
	beq _0809DF16
	cmp r0, #2
	beq _0809DF64
	movs r0, #0xa
	b _0809DF96
_0809DF16:
	ldrb r0, [r4, #0xc]
	adds r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0xff
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	adds r1, #2
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	ldr r0, _0809DF60 @ =0x00000123
	bl SoundReq
	ldr r5, [r4, #0x54]
	cmp r5, #0
	beq _0809DF98
	ldrb r1, [r4, #0xb]
	adds r1, #2
	movs r0, #0x96
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _0809DF52
	adds r0, r5, #0
	bl CopyPosition
_0809DF52:
	adds r0, r5, #0
	bl DeleteEntityAny
	movs r0, #0
	str r0, [r4, #0x54]
	b _0809DF98
	.align 2, 0
_0809DF60: .4byte 0x00000123
_0809DF64:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _0809DF94
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	adds r1, #2
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	ldr r0, _0809DF8C @ =0x00000123
	bl SoundReq
	ldr r0, _0809DF90 @ =0x000001F3
	bl SoundReq
	b _0809DF98
	.align 2, 0
_0809DF8C: .4byte 0x00000123
_0809DF90: .4byte 0x000001F3
_0809DF94:
	subs r0, #1
_0809DF96:
	strb r0, [r4, #0xe]
_0809DF98:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, r5, pc}

	thumb_func_start sub_0809DFA0
sub_0809DFA0: @ 0x0809DFA0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _0809DFD6
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	subs r1, r1, r0
	ldrb r0, [r4, #0x15]
	lsls r0, r0, #0xb
	eors r1, r0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r1, r0
	cmp r1, #0
	beq _0809DFD6
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xf]
	movs r0, #0x81
	lsls r0, r0, #1
	bl SoundReq
_0809DFD6:
	adds r0, r4, #0
	bl sub_0809DFE0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809DFE0
sub_0809DFE0: @ 0x0809DFE0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080040A8
	cmp r0, #0
	bne _0809E028
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _0809DFF4
	str r0, [r1, #0x50]
_0809DFF4:
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0809E008
	bl DeleteThisEntity
	b _0809E034
_0809E008:
	strb r0, [r4, #0xc]
	bl Random
	ldr r2, _0809E024 @ =gUnk_08124146
	movs r1, #1
	ands r1, r0
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #0xb]
	b _0809E034
	.align 2, 0
_0809E024: .4byte gUnk_08124146
_0809E028:
	adds r0, r4, #0
	bl sub_0809E1F0
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
_0809E034:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809E038
sub_0809E038: @ 0x0809E038
	push {lr}
	ldr r2, _0809E04C @ =gUnk_08124150
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809E04C: .4byte gUnk_08124150

	thumb_func_start sub_0809E050
sub_0809E050: @ 0x0809E050
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	ldrb r1, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x19]
	ldr r0, _0809E084 @ =0x0000FFF0
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_0807DD64
	adds r0, r4, #0
	movs r1, #1
	bl InitAnimationForceUpdate
	pop {r4, pc}
	.align 2, 0
_0809E084: .4byte 0x0000FFF0

	thumb_func_start sub_0809E088
sub_0809E088: @ 0x0809E088
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, pc}

	thumb_func_start sub_0809E0A0
sub_0809E0A0: @ 0x0809E0A0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x97
	movs r1, #5
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0809E0C8
	str r5, [r4, #0x50]
	str r4, [r5, #0x54]
	movs r0, #0
	strb r0, [r5, #0xf]
	ldr r0, _0809E0CC @ =gPlayerEntity
	adds r1, r4, #0
	bl CopyPosition
	ldr r0, _0809E0D0 @ =0x0000FFF8
	strh r0, [r4, #0x36]
_0809E0C8:
	pop {r4, r5, pc}
	.align 2, 0
_0809E0CC: .4byte gPlayerEntity
_0809E0D0: .4byte 0x0000FFF8

	thumb_func_start sub_0809E0D4
sub_0809E0D4: @ 0x0809E0D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	ldrb r2, [r6, #0x18]
	cmp r2, #0
	bne _0809E130
	ldr r1, [r5, #0x54]
	cmp r1, #0
	beq _0809E0FC
	ldrb r0, [r1, #0xc]
	cmp r0, #1
	bhi _0809E0FE
	ldr r0, _0809E0F8 @ =gUnk_02033280
	strb r2, [r0, #6]
	b _0809E1BC
	.align 2, 0
_0809E0F8: .4byte gUnk_02033280
_0809E0FC:
	ldr r1, _0809E124 @ =gPlayerEntity
_0809E0FE:
	ldrb r0, [r6, #0x18]
	adds r0, #1
	movs r4, #0
	strb r0, [r6, #0x18]
	movs r0, #0x2e
	ldrsh r2, [r1, r0]
	movs r0, #0x32
	ldrsh r3, [r1, r0]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0807DEDC
	ldr r0, _0809E128 @ =0x00000123
	bl SoundReq
	ldr r0, _0809E12C @ =gUnk_02033280
	strb r4, [r0, #6]
	b _0809E1BC
	.align 2, 0
_0809E124: .4byte gPlayerEntity
_0809E128: .4byte 0x00000123
_0809E12C: .4byte gUnk_02033280
_0809E130:
	ldr r1, [r5, #0x54]
	cmp r1, #0
	beq _0809E142
	movs r0, #0x2e
	ldrsh r2, [r1, r0]
	mov r8, r2
	movs r2, #0x32
	ldrsh r7, [r1, r2]
	b _0809E14C
_0809E142:
	movs r1, #0x1e
	ldrsh r0, [r6, r1]
	mov r8, r0
	movs r2, #0x22
	ldrsh r7, [r6, r2]
_0809E14C:
	ldrb r0, [r6, #0x19]
	subs r0, #1
	strb r0, [r6, #0x19]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809E170
	movs r0, #8
	strb r0, [r6, #0x19]
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	mov r2, r8
	subs r0, r2, r0
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	subs r1, r7, r1
	bl sub_080045DA
	strb r0, [r5, #0x15]
_0809E170:
	movs r0, #0x2e
	ldrsh r4, [r5, r0]
	mov r1, r8
	subs r4, r4, r1
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	subs r6, r0, r7
	movs r0, #0x24
	ldrsh r1, [r5, r0]
	ldrb r2, [r5, #0x15]
	adds r0, r5, #0
	bl sub_0806F62C
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	mov r2, r8
	subs r0, r0, r2
	muls r4, r0, r4
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	subs r0, r0, r7
	muls r6, r0, r6
	cmp r4, #0
	bgt _0809E1B6
	cmp r6, #0
	bgt _0809E1B6
	strh r2, [r5, #0x2e]
	strh r7, [r5, #0x32]
	movs r0, #1
	strb r0, [r5, #0xf]
	movs r0, #0x81
	lsls r0, r0, #1
	bl SoundReq
	b _0809E1BC
_0809E1B6:
	ldr r1, _0809E1C4 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_0809E1BC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809E1C4: .4byte gUnk_02033280

	thumb_func_start sub_0809E1C8
sub_0809E1C8: @ 0x0809E1C8
	push {lr}
	adds r3, r0, #0
	adds r1, #0x20
	ldrb r2, [r3, #0x15]
	subs r1, r1, r2
	movs r0, #0x1f
	ands r1, r0
	cmp r1, #0
	beq _0809E1E6
	cmp r1, #0xf
	bhi _0809E1E2
	adds r0, r2, #1
	b _0809E1E4
_0809E1E2:
	subs r0, r2, #1
_0809E1E4:
	strb r0, [r3, #0x15]
_0809E1E6:
	ldrb r1, [r3, #0x15]
	movs r0, #0x1f
	ands r0, r1
	strb r0, [r3, #0x15]
	pop {pc}

	thumb_func_start sub_0809E1F0
sub_0809E1F0: @ 0x0809E1F0
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x24]
	adds r0, #0x40
	strh r0, [r1, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #3
	cmp r0, r2
	ble _0809E208
	strh r2, [r1, #0x24]
_0809E208:
	adds r0, r1, #0
	bl sub_0806F69C
	pop {pc}

	thumb_func_start sub_0809E210
sub_0809E210: @ 0x0809E210
	push {r4, lr}
	adds r1, r0, #0
	ldr r4, _0809E230 @ =gPlayerEntity
	adds r0, r4, #0
	bl GetFacingDirection
	bl sub_0806F5B0
	movs r1, #0xfe
	ands r0, r1
	strb r0, [r4, #0x14]
	ldr r1, _0809E234 @ =gPlayerState
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #8]
	pop {r4, pc}
	.align 2, 0
_0809E230: .4byte gPlayerEntity
_0809E234: .4byte gPlayerState

	thumb_func_start sub_0809E238
sub_0809E238: @ 0x0809E238
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r6, _0809E298 @ =gSineTable
	movs r0, #0x6e
	adds r0, r0, r7
	mov r8, r0
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r5, r7, #0
	adds r5, #0x6c
	movs r2, #0
	ldrsh r1, [r5, r2]
	bl sub_0806F9EC
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r1, r8
	ldrb r0, [r1]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r2, #0
	ldrsh r1, [r5, r2]
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x68
	ldrh r1, [r1]
	adds r1, r1, r4
	strh r1, [r7, #0x2e]
	adds r1, r7, #0
	adds r1, #0x6a
	ldrh r1, [r1]
	subs r1, r1, r0
	strh r1, [r7, #0x32]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809E298: .4byte gSineTable

	thumb_func_start sub_0809E29C
sub_0809E29C: @ 0x0809E29C
	push {lr}
	adds r2, r0, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	adds r0, #0x40
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809E2B8
	ldrb r1, [r2, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _0809E2BE
_0809E2B8:
	ldrb r0, [r2, #0x18]
	movs r1, #0x40
	orrs r0, r1
_0809E2BE:
	strb r0, [r2, #0x18]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0809E2C4
sub_0809E2C4: @ 0x0809E2C4
	push {r4, r5, r6, r7, lr}
	lsls r1, r1, #2
	ldr r0, _0809E328 @ =gUnk_08124178
	adds r1, r1, r0
	ldr r3, _0809E32C @ =gPlayerEntity
	movs r0, #0x2e
	ldrsh r5, [r3, r0]
	ldr r4, _0809E330 @ =gRoomControls
	ldrh r0, [r4, #6]
	ldrh r2, [r1]
	adds r0, r0, r2
	subs r6, r5, r0
	movs r0, #0x32
	ldrsh r2, [r3, r0]
	ldrh r0, [r4, #8]
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	subs r5, r2, r0
	ldr r4, _0809E334 @ =gUnk_08124158
	movs r2, #0
	adds r7, r3, #0
_0809E2EE:
	movs r1, #0
	ldrsh r0, [r4, r1]
	subs r0, r6, r0
	ldrb r1, [r4, #4]
	adds r0, r0, r1
	lsls r1, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	ble _0809E33C
	movs r1, #2
	ldrsh r0, [r4, r1]
	subs r0, r5, r0
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r1, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	ble _0809E33C
	ldrb r0, [r4, #6]
	ldrb r7, [r7, #0x14]
	cmp r0, r7
	bne _0809E338
	ldrb r0, [r3, #0xc]
	cmp r0, #6
	bne _0809E338
	movs r0, #1
	b _0809E346
	.align 2, 0
_0809E328: .4byte gUnk_08124178
_0809E32C: .4byte gPlayerEntity
_0809E330: .4byte gRoomControls
_0809E334: .4byte gUnk_08124158
_0809E338:
	movs r0, #2
	b _0809E346
_0809E33C:
	adds r2, #1
	adds r4, #8
	cmp r2, #3
	ble _0809E2EE
	movs r0, #0
_0809E346:
	pop {r4, r5, r6, r7, pc}
