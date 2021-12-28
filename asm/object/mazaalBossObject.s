	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start MazaalBossObject
MazaalBossObject: @ 0x0809AAEC
	push {lr}
	ldr r2, _0809AB00 @ =gUnk_08123D28
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809AB00: .4byte gUnk_08123D28

	thumb_func_start sub_0809AB04
sub_0809AB04: @ 0x0809AB04
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x31
	bl CheckFlags
	cmp r0, #0
	beq _0809AB22
	adds r0, r5, #0
	bl sub_0809AD68
	adds r0, r5, #0
	bl sub_0809AD8C
	bl DeleteThisEntity
_0809AB22:
	movs r0, #0x36
	movs r1, #0
	bl CreateEnemy
	adds r4, r0, #0
	cmp r4, #0
	beq _0809AB9C
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	str r4, [r5, #0x54]
	ldr r2, _0809AB68 @ =gScreenTransition
	adds r0, r2, #0
	adds r0, #0x38
	ldrb r1, [r0]
	cmp r1, #0
	beq _0809AB70
	adds r0, #1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809AB52
	bl DeleteThisEntity
_0809AB52:
	movs r0, #7
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	subs r0, #0xb
	ands r0, r1
	strb r0, [r5, #0x18]
	ldr r0, _0809AB6C @ =gRoomControls
	str r5, [r0, #0x30]
	bl sub_080809D4
	b _0809AB9C
	.align 2, 0
_0809AB68: .4byte gScreenTransition
_0809AB6C: .4byte gRoomControls
_0809AB70:
	movs r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0x1e
	strb r0, [r5, #0xe]
	strb r1, [r5, #0x1e]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x63
	movs r0, #0x20
	strb r0, [r1]
	ldr r1, _0809ABA0 @ =script_Object89Mazaal
	adds r0, r5, #0
	bl StartCutscene
	adds r1, r5, #0
	adds r1, #0x84
	str r0, [r1]
_0809AB9C:
	pop {r4, r5, pc}
	.align 2, 0
_0809ABA0: .4byte script_Object89Mazaal

	thumb_func_start sub_0809ABA4
sub_0809ABA4: @ 0x0809ABA4
	push {lr}
	movs r1, #0
	bl ExecuteScriptForEntity
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0809ABB0
sub_0809ABB0: @ 0x0809ABB0
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809ABCE
	movs r0, #3
	strb r0, [r2, #0xc]
	movs r0, #0x78
	strb r0, [r2, #0xe]
	ldr r1, _0809ABD0 @ =gRoomControls
	ldr r0, [r2, #0x54]
	str r0, [r1, #0x30]
_0809ABCE:
	pop {pc}
	.align 2, 0
_0809ABD0: .4byte gRoomControls

	thumb_func_start sub_0809ABD4
sub_0809ABD4: @ 0x0809ABD4
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809ABF2
	movs r0, #4
	strb r0, [r1, #0xc]
	movs r0, #0x5a
	strb r0, [r1, #0xe]
	ldr r1, [r1, #0x54]
	movs r0, #1
	strb r0, [r1, #0xd]
_0809ABF2:
	pop {pc}

	thumb_func_start sub_0809ABF4
sub_0809ABF4: @ 0x0809ABF4
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x54]
	ldrb r0, [r0, #0xd]
	cmp r0, #2
	bls _0809AC36
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0809AC36
	movs r0, #5
	strb r0, [r2, #0xc]
	movs r0, #8
	strb r0, [r2, #0xe]
	strb r1, [r2, #0xf]
	ldrb r1, [r2, #0x19]
	subs r0, #0x15
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2, #0x19]
	ldr r1, _0809AC38 @ =gScreen
	adds r2, r1, #0
	adds r2, #0x66
	movs r0, #0xf4
	lsls r0, r0, #4
	strh r0, [r2]
	adds r1, #0x68
	movs r0, #0x10
	strh r0, [r1]
_0809AC36:
	pop {pc}
	.align 2, 0
_0809AC38: .4byte gScreen

	thumb_func_start sub_0809AC3C
sub_0809AC3C: @ 0x0809AC3C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r3, #0xff
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _0809AC9A
	movs r0, #8
	strb r0, [r4, #0xe]
	ldrb r2, [r4, #0xf]
	adds r2, #1
	strb r2, [r4, #0xf]
	adds r1, r2, #0
	ands r1, r3
	ldr r6, _0809AC9C @ =gScreen
	lsls r3, r1, #8
	movs r0, #0x10
	subs r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	orrs r3, r0
	adds r0, r6, #0
	adds r0, #0x68
	strh r3, [r0]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #0xf
	bls _0809AC9A
	ldrb r1, [r4, #0x19]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x19]
	adds r0, r6, #0
	adds r0, #0x66
	strh r5, [r0]
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0xf
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0x13
	ands r0, r1
	strb r0, [r4, #0x18]
_0809AC9A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0809AC9C: .4byte gScreen

	thumb_func_start sub_0809ACA0
sub_0809ACA0: @ 0x0809ACA0
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809ACC4
	ldr r1, [r2, #0x54]
	movs r0, #6
	strb r0, [r1, #0xd]
	ldr r0, _0809ACC8 @ =gScreenTransition
	adds r0, #0x38
	movs r1, #0xf1
	strb r1, [r0]
	adds r0, r2, #0
	bl DeleteEntity
_0809ACC4:
	pop {pc}
	.align 2, 0
_0809ACC8: .4byte gScreenTransition

	thumb_func_start sub_0809ACCC
sub_0809ACCC: @ 0x0809ACCC
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x54]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bne _0809ACE4
	movs r0, #0
	movs r1, #8
	strb r1, [r2, #0xc]
	strb r0, [r2, #0xd]
	movs r0, #0xb4
	strb r0, [r2, #0xe]
_0809ACE4:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0809ACE8
sub_0809ACE8: @ 0x0809ACE8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	beq _0809AD1E
	cmp r0, #2
	beq _0809AD3A
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809AD58
	movs r0, #0x5a
	strb r0, [r4, #0xe]
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x73
	bl SoundReq
	movs r0, #0x31
	bl SetFlag
	adds r0, r4, #0
	bl sub_0809AD8C
	b _0809AD58
_0809AD1E:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809AD58
	movs r0, #0x78
	strb r0, [r4, #0xe]
	movs r0, #2
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	bl sub_0809AD68
	b _0809AD58
_0809AD3A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809AD58
	ldr r1, _0809AD5C @ =gRoomControls
	ldr r0, _0809AD60 @ =gPlayerEntity
	str r0, [r1, #0x30]
	ldr r0, _0809AD64 @ =gPlayerState
	adds r0, #0x8b
	movs r1, #1
	strb r1, [r0]
	bl DeleteThisEntity
_0809AD58:
	pop {r4, pc}
	.align 2, 0
_0809AD5C: .4byte gRoomControls
_0809AD60: .4byte gPlayerEntity
_0809AD64: .4byte gPlayerState

	thumb_func_start sub_0809AD68
sub_0809AD68: @ 0x0809AD68
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	bl GetCurrentRoomProperty
	bl LoadRoomEntityList
	movs r0, #0x17
	bl GetInventoryValue
	cmp r0, #0
	beq _0809AD8A
	ldrb r0, [r4, #0xb]
	bl GetCurrentRoomProperty
	bl LoadRoomEntityList
_0809AD8A:
	pop {r4, pc}

	thumb_func_start sub_0809AD8C
sub_0809AD8C: @ 0x0809AD8C
	push {lr}
	movs r0, #0x4f
	movs r1, #0x22
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0809ADAC
	ldr r0, _0809ADB0 @ =gRoomControls
	ldrh r1, [r0, #6]
	adds r1, #0xb8
	strh r1, [r2, #0x2e]
	ldrh r0, [r0, #8]
	adds r0, #8
	strh r0, [r2, #0x32]
_0809ADAC:
	pop {pc}
	.align 2, 0
_0809ADB0: .4byte gRoomControls
