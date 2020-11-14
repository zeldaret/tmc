	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Dog
Dog: @ 0x08069B1C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08069B40 @ =gUnk_08111D88
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
	adds r0, r4, #0
	bl sub_08069FE8
	pop {r4, pc}
	.align 2, 0
_08069B40: .4byte gUnk_08111D88

	thumb_func_start sub_08069B44
sub_08069B44: @ 0x08069B44
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_08069EF0
	cmp r0, #0
	beq _08069C30
	adds r0, r5, #0
	bl sub_0805ACC0
	cmp r0, #0
	bne _08069B64
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r2, #0x32
	ldrsh r4, [r5, r2]
	b _08069B68
_08069B64:
	lsrs r1, r0, #0x10
	adds r4, r0, #0
_08069B68:
	ldrb r0, [r5, #0xe]
	movs r3, #0x20
	cmp r0, #0
	beq _08069B72
	adds r3, r0, #0
_08069B72:
	subs r0, r1, r3
	adds r2, r5, #0
	adds r2, #0x6e
	strh r0, [r2]
	adds r1, r1, r3
	adds r0, r5, #0
	adds r0, #0x6c
	strh r1, [r0]
	adds r1, r4, #0
	subs r1, #8
	adds r0, #4
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #8
	adds r2, #4
	strh r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	movs r0, #0x1e
	strb r0, [r5, #0xe]
	movs r4, #2
	strb r4, [r5, #0x14]
	adds r1, r5, #0
	adds r1, #0x6a
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0801E99C
	adds r1, r5, #0
	adds r1, #0x74
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r5, #0
	movs r1, #0xa
	bl InitAnimationForceUpdate
	ldrb r0, [r5, #0x10]
	ands r4, r0
	cmp r4, #0
	beq _08069BD2
	adds r0, r5, #0
	bl sub_0807DD50
_08069BD2:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _08069BF2
	ldr r0, _08069C34 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08069BF2
	movs r0, #0x36
	bl GetInventoryValue
	cmp r0, #2
	beq _08069BF2
	movs r0, #4
	strb r0, [r5, #0xc]
_08069BF2:
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bne _08069C30
	movs r0, #0xcf
	bl CheckLocalFlag
	cmp r0, #0
	bne _08069C30
	ldr r0, _08069C38 @ =0x00004072
	movs r6, #0x2e
	ldrsh r1, [r5, r6]
	ldr r3, _08069C3C @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	adds r3, #8
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
_08069C30:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08069C34: .4byte gPlayerState
_08069C38: .4byte 0x00004072
_08069C3C: .4byte gRoomControls

	thumb_func_start sub_08069C40
sub_08069C40: @ 0x08069C40
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	bl sub_08069F90
	cmp r0, #0
	beq _08069C80
	ldr r0, _08069C68 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08069C6C
	adds r0, r4, #0
	bl sub_08069CB8
	b _08069C7A
	.align 2, 0
_08069C68: .4byte gPlayerState
_08069C6C:
	adds r0, r4, #0
	bl GetAnimationState
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08069D00
_08069C7A:
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	b _08069CB2
_08069C80:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08069CB2
	movs r0, #2
	strb r0, [r4, #0xc]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x1e
	strb r0, [r4, #0xe]
	bl Random
	ldr r2, _08069CB4 @ =gUnk_08111DA8
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08069F6C
_08069CB2:
	pop {r4, pc}
	.align 2, 0
_08069CB4: .4byte gUnk_08111DA8

	thumb_func_start sub_08069CB8
sub_08069CB8: @ 0x08069CB8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08069CF8 @ =gPlayerEntity
	bl GetFacingDirection
	ldr r2, _08069CFC @ =gUnk_08111DB0
	ldrb r1, [r4, #0x14]
	lsls r1, r1, #5
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r1, [r0]
	lsrs r0, r1, #6
	strb r0, [r4, #0x14]
	movs r0, #0x3f
	ands r1, r0
	adds r5, r4, #0
	adds r5, #0x6b
	strb r1, [r5]
	adds r0, r4, #0
	bl sub_0806A028
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	ldrb r1, [r5]
	cmp r0, r1
	beq _08069CF6
	ldrb r1, [r5]
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_08069CF6:
	pop {r4, r5, pc}
	.align 2, 0
_08069CF8: .4byte gPlayerEntity
_08069CFC: .4byte gUnk_08111DB0

	thumb_func_start sub_08069D00
sub_08069D00: @ 0x08069D00
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x6b
	movs r7, #8
	strb r7, [r5]
	bl sub_0806A028
	adds r6, r4, #0
	adds r6, #0x58
	ldrb r0, [r6]
	cmp r0, #0x1f
	bls _08069D2A
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08069D4E
	strb r7, [r5]
_08069D2A:
	bl Random
	ldr r1, _08069D50 @ =0x000001FF
	ands r1, r0
	cmp r1, #2
	bhi _08069D3C
	adds r0, r4, #0
	bl sub_08069FBC
_08069D3C:
	ldrb r2, [r6]
	ldrb r1, [r5]
	ldrb r0, [r4, #0x14]
	adds r1, r1, r0
	cmp r2, r1
	beq _08069D4E
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_08069D4E:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08069D50: .4byte 0x000001FF

	thumb_func_start sub_08069D54
sub_08069D54: @ 0x08069D54
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08069F90
	cmp r0, #0
	bne _08069DD8
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08069DD8
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	bl ProcessMovement
	ldrh r1, [r4, #0x2a]
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r2, r0
	bge _08069D92
	adds r0, #1
	strh r0, [r4, #0x2e]
	movs r1, #0xe0
	lsls r1, r1, #4
	b _08069DA4
_08069D92:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	cmp r2, r0
	ble _08069DA4
	subs r0, #1
	strh r0, [r4, #0x2e]
	movs r1, #0xe0
	lsls r1, r1, #8
_08069DA4:
	movs r0, #0x32
	ldrsh r2, [r4, r0]
	adds r0, r4, #0
	adds r0, #0x70
	ldrh r0, [r0]
	cmp r2, r0
	bge _08069DBA
	adds r0, #1
	strh r0, [r4, #0x32]
	movs r1, #0xe
	b _08069DCA
_08069DBA:
	adds r0, r4, #0
	adds r0, #0x72
	ldrh r0, [r0]
	cmp r2, r0
	ble _08069DCA
	subs r0, #1
	strh r0, [r4, #0x32]
	movs r1, #0xe0
_08069DCA:
	adds r0, r4, #0
	bl sub_0800417E
	adds r0, r4, #0
	bl sub_08069F6C
	b _08069DF6
_08069DD8:
	adds r0, r4, #0
	bl sub_08069F90
	cmp r0, #0
	beq _08069DE6
	movs r0, #1
	b _08069DE8
_08069DE6:
	movs r0, #3
_08069DE8:
	strb r0, [r4, #0xc]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x1e
	strb r0, [r4, #0xe]
_08069DF6:
	pop {r4, pc}

	thumb_func_start sub_08069DF8
sub_08069DF8: @ 0x08069DF8
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	bl sub_08069F90
	cmp r0, #0
	beq _08069E0E
	movs r0, #1
	b _08069E34
_08069E0E:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08069E22
	adds r0, r4, #0
	bl sub_08069D00
	b _08069E42
_08069E22:
	bl Random
	movs r1, #0xff
	ands r1, r0
	cmp r1, #0x2f
	bhi _08069E32
	movs r0, #2
	b _08069E34
_08069E32:
	movs r0, #3
_08069E34:
	strb r0, [r4, #0xc]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x1e
	strb r0, [r4, #0xe]
_08069E42:
	pop {r4, pc}

	thumb_func_start sub_08069E44
sub_08069E44: @ 0x08069E44
	push {lr}
	movs r1, #0
	bl sub_0807DD94
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08069E50
sub_08069E50: @ 0x08069E50
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl GetAnimationState
	strb r0, [r4, #0x14]
	adds r5, r4, #0
	adds r5, #0x6b
	movs r7, #8
	strb r7, [r5]
	adds r0, r4, #0
	bl sub_0806A028
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r6, r4, #0
	adds r6, #0x58
	ldrb r0, [r6]
	cmp r0, #0x1f
	bls _08069E88
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08069EC8
	strb r7, [r5]
_08069E88:
	adds r0, r4, #0
	bl sub_08069FBC
	ldrb r2, [r6]
	ldrb r1, [r5]
	ldrb r0, [r4, #0x14]
	adds r1, r1, r0
	cmp r2, r1
	beq _08069EA0
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_08069EA0:
	movs r0, #0x36
	bl GetInventoryValue
	cmp r0, #2
	bne _08069EC8
	movs r0, #7
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x29
	bl InitAnimationForceUpdate
	adds r0, r4, #0
	bl sub_080788E0
	movs r0, #0xd1
	bl EnqueueSFX
	movs r0, #0xcd
	bl EnqueueSFX
_08069EC8:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08069ECC
sub_08069ECC: @ 0x08069ECC
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _08069EDC
	movs r0, #1
	strb r0, [r4, #0xc]
_08069EDC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08069EE0
sub_08069EE0: @ 0x08069EE0
	push {lr}
	bl UpdateAnimationSingleFrame
	pop {pc}

	thumb_func_start sub_08069EE8
sub_08069EE8: @ 0x08069EE8
	movs r1, #5
	strb r1, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_08069EF0
sub_08069EF0: @ 0x08069EF0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08069F20 @ =gUnk_08111D58
	adds r1, r1, r0
	adds r0, r4, #0
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _08069F28
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r1, _08069F24 @ =gUnk_08111E30
	ldrb r0, [r4, #0xa]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x68
	strh r1, [r0]
	movs r0, #1
	b _08069F2A
	.align 2, 0
_08069F20: .4byte gUnk_08111D58
_08069F24: .4byte gUnk_08111E30
_08069F28:
	movs r0, #0
_08069F2A:
	pop {r4, pc}

	thumb_func_start Dog_Head
Dog_Head: @ 0x08069F2C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r2, [r0]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r2, r0
	cmp r2, #0
	beq _08069F46
	adds r0, r4, #0
	adds r0, #0x68
	ldrh r0, [r0]
	adds r2, r2, r0
_08069F46:
	subs r2, #1
	adds r0, r4, #0
	movs r1, #0
	bl SetExtraSpriteFrame
	ldrb r2, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #1
	bl SetExtraSpriteFrame
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl SetSpriteSubEntryOffsetData1
	adds r0, r4, #0
	bl sub_0807000C
	pop {r4, pc}

	thumb_func_start sub_08069F6C
sub_08069F6C: @ 0x08069F6C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x15]
	bl sub_0806F5A4
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x14]
	adds r1, r0, #4
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r1, r0
	beq _08069F8C
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_08069F8C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08069F90
sub_08069F90: @ 0x08069F90
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _08069FA8
	movs r0, #0xcf
	bl CheckLocalFlag
	cmp r0, #0
	bne _08069FA8
	movs r0, #1
	b _08069FB4
_08069FA8:
	ldr r1, _08069FB8 @ =gPlayerEntity
	adds r0, r4, #0
	movs r2, #0x14
	movs r3, #0x14
	bl sub_080041A0
_08069FB4:
	pop {r4, pc}
	.align 2, 0
_08069FB8: .4byte gPlayerEntity

	thumb_func_start sub_08069FBC
sub_08069FBC: @ 0x08069FBC
	push {lr}
	adds r2, r0, #0
	ldr r0, _08069FE4 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	movs r1, #0x20
	cmp r0, #0
	beq _08069FD0
	movs r1, #0x24
_08069FD0:
	ldrb r0, [r2, #0x14]
	cmp r0, #1
	beq _08069FDA
	cmp r0, #3
	bne _08069FE0
_08069FDA:
	adds r0, r2, #0
	adds r0, #0x6b
	strb r1, [r0]
_08069FE0:
	pop {pc}
	.align 2, 0
_08069FE4: .4byte gPlayerState

	thumb_func_start sub_08069FE8
sub_08069FE8: @ 0x08069FE8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0806A010 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	rsbs r0, r0, #0
	lsrs r5, r0, #0x1f
	adds r0, r4, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	cmp r5, r0
	beq _0806A020
	cmp r5, #0
	bne _0806A014
	adds r0, r4, #0
	bl sub_08078778
	b _0806A020
	.align 2, 0
_0806A010: .4byte gPlayerState
_0806A014:
	adds r0, r4, #0
	adds r0, #0x74
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_080787A8
_0806A020:
	adds r0, r4, #0
	adds r0, #0x6a
	strb r5, [r0]
	pop {r4, r5, pc}
	
	thumb_func_start sub_0806A028
sub_0806A028: @ 0x0806A028
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x39
	movs r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #0
	beq _0806A07E
	ldr r0, _0806A054 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806A060
	cmp r2, #2
	bne _0806A058
	movs r0, #6
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0806F118
	b _0806A076
	.align 2, 0
_0806A054: .4byte gPlayerState
_0806A058:
	adds r0, r4, #0
	bl sub_0806A080
	b _0806A076
_0806A060:
	adds r0, r4, #0
	bl sub_08069FBC
	adds r0, r4, #0
	bl sub_0806A080
	movs r0, #0xd1
	bl PlaySFX
	bl sub_080791D0
_0806A076:
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	strb r0, [r1]
_0806A07E:
	pop {r4, pc}
	
	thumb_func_start sub_0806A080
sub_0806A080: @ 0x0806A080
	push {lr}
	ldrb r2, [r0, #0xb]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	ldr r2, _0806A09C @ =gUnk_02002A40
	ldrb r2, [r2, #8]
	lsls r2, r2, #3
	ldr r3, _0806A0A0 @ =gUnk_08111E34
	adds r2, r2, r3
	adds r1, r1, r2
	bl ShowNPCDialogue
	pop {pc}
	.align 2, 0
_0806A09C: .4byte gUnk_02002A40
_0806A0A0: .4byte gUnk_08111E34

	thumb_func_start sub_0806A0A4
sub_0806A0A4: @ 0x0806A0A4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _0806A0F8 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806A100
	movs r5, #4
	movs r0, #0xcf
	bl CheckLocalFlag
	cmp r0, #0
	bne _0806A120
	movs r5, #3
	movs r0, #0xcf
	bl SetLocalFlag
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _0806A0FC @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r6, #0x32
	ldrsh r1, [r4, r6]
	ldrh r2, [r2, #8]
	adds r2, #8
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_0807BA8C
	b _0806A120
	.align 2, 0
_0806A0F8: .4byte gPlayerState
_0806A0FC: .4byte gRoomControls
_0806A100:
	movs r5, #2
	movs r0, #0xcf
	bl CheckLocalFlag
	cmp r0, #0
	bne _0806A120
	movs r5, #1
	movs r0, #0xdb
	bl CheckLocalFlag
	cmp r0, #0
	bne _0806A120
	movs r5, #0
	movs r0, #0xdb
	bl SetLocalFlag
_0806A120:
	ldr r2, _0806A13C @ =gUnk_08111F74
	ldr r0, _0806A140 @ =gUnk_02002A40
	ldrb r1, [r0, #8]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r4, #0
	bl TextboxNoOverlap
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806A13C: .4byte gUnk_08111F74
_0806A140: .4byte gUnk_02002A40

	thumb_func_start sub_0806A144
sub_0806A144: @ 0x0806A144
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #4
	ldr r0, _0806A18C @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806A17A
	movs r4, #3
	movs r0, #0x46
	bl GetInventoryValue
	cmp r0, #0
	bne _0806A17A
	movs r0, #0x29
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0806A17A
	movs r0, #0x85
	bl CheckLocalFlag
	movs r4, #2
	cmp r0, #0
	bne _0806A17A
	movs r4, #1
_0806A17A:
	ldr r0, _0806A190 @ =gUnk_08111FD8
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r5, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_0806A18C: .4byte gPlayerState
_0806A190: .4byte gUnk_08111FD8

	thumb_func_start Dog_Fusion
Dog_Fusion: @ 0x0806A194
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806A1CE
	adds r0, r4, #0
	bl sub_08069EF0
	cmp r0, #0
	beq _0806A1D4
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	movs r1, #0x23
	bl InitializeAnimation
	b _0806A1D4
_0806A1CE:
	adds r0, r4, #0
	bl GetNextFrame
_0806A1D4:
	pop {r4, pc}
	.align 2, 0
