	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0807F0D8
sub_0807F0D8: @ 0x0807F0D8
	ldr r0, _0807F0E8 @ =gInput
	ldrh r2, [r0, #2]
	rsbs r0, r2, #0
	orrs r0, r2
	lsrs r0, r0, #0x1f
	str r0, [r1, #0x14]
	bx lr
	.align 2, 0
_0807F0E8: .4byte gInput

	thumb_func_start sub_0807F0EC
sub_0807F0EC: @ 0x0807F0EC
	push {r4, lr}
	adds r4, r1, #0
	bl Random
	ldr r1, [r4, #4]
	bl __modsi3
	str r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0807F100
sub_0807F100: @ 0x0807F100
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl Random
	movs r2, #6
	adds r1, r0, #0
	ands r1, r2
	strb r1, [r4, #0x14]
	ldr r2, _0807F124 @ =gUnk_0811E750
	lsrs r0, r0, #8
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r5, #0x1a]
	pop {r4, r5, pc}
	.align 2, 0
_0807F124: .4byte gUnk_0811E750

	thumb_func_start sub_0807F128
sub_0807F128: @ 0x0807F128
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl Random
	ldr r2, _0807F150 @ =gUnk_0811E758
	movs r3, #7
	adds r1, r0, #0
	ands r1, r3
	adds r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r4, #0x14]
	ldr r1, _0807F154 @ =gUnk_0811E760
	lsrs r0, r0, #8
	ands r0, r3
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #0x1a]
	pop {r4, r5, pc}
	.align 2, 0
_0807F150: .4byte gUnk_0811E758
_0807F154: .4byte gUnk_0811E760

	thumb_func_start sub_0807F158
sub_0807F158: @ 0x0807F158
	push {lr}
	adds r2, r0, #0
	adds r2, #0x38
	movs r1, #1
	strb r1, [r2]
	bl UpdateSpriteForCollisionLayer
	pop {pc}

	thumb_func_start sub_0807F168
sub_0807F168: @ 0x0807F168
	push {lr}
	ldr r0, _0807F17C @ =gPlayerEntity
	adds r2, r0, #0
	adds r2, #0x38
	movs r1, #1
	strb r1, [r2]
	bl UpdateSpriteForCollisionLayer
	pop {pc}
	.align 2, 0
_0807F17C: .4byte gPlayerEntity

	thumb_func_start sub_0807F180
sub_0807F180: @ 0x0807F180
	push {lr}
	adds r2, r0, #0
	adds r2, #0x38
	movs r1, #2
	strb r1, [r2]
	bl UpdateSpriteForCollisionLayer
	pop {pc}

	thumb_func_start sub_0807F190
sub_0807F190: @ 0x0807F190
	push {lr}
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #4
	bl DoFade
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807F1A0
sub_0807F1A0: @ 0x0807F1A0
	push {r4, lr}
	ldr r3, _0807F1BC @ =gPlayerEntity
	movs r4, #0x2e
	ldrsh r2, [r3, r4]
	movs r4, #0x32
	ldrsh r3, [r3, r4]
	bl sub_0807DEDC
	ldr r2, _0807F1C0 @ =gActiveScriptInfo
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, pc}
	.align 2, 0
_0807F1BC: .4byte gPlayerEntity
_0807F1C0: .4byte gActiveScriptInfo

	thumb_func_start sub_0807F1C4
sub_0807F1C4: @ 0x0807F1C4
	push {lr}
	ldr r2, _0807F1D8 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0807F1E0
	ldr r0, _0807F1DC @ =0x00000459
	b _0807F1E4
	.align 2, 0
_0807F1D8: .4byte gPlayerState
_0807F1DC: .4byte 0x00000459
_0807F1E0:
	movs r0, #0xde
	lsls r0, r0, #1
_0807F1E4:
	strh r0, [r2, #8]
	pop {pc}

	thumb_func_start sub_0807F1E8
sub_0807F1E8: @ 0x0807F1E8
	push {lr}
	ldr r2, _0807F1FC @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0807F204
	ldr r0, _0807F200 @ =0x0000045A
	b _0807F206
	.align 2, 0
_0807F1FC: .4byte gPlayerState
_0807F200: .4byte 0x0000045A
_0807F204:
	ldr r0, _0807F20C @ =0x000002BD
_0807F206:
	strh r0, [r2, #8]
	pop {pc}
	.align 2, 0
_0807F20C: .4byte 0x000002BD

	thumb_func_start sub_0807F210
sub_0807F210: @ 0x0807F210
	push {lr}
	ldr r2, _0807F224 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0807F22C
	ldr r0, _0807F228 @ =0x0000041C
	b _0807F22E
	.align 2, 0
_0807F224: .4byte gPlayerState
_0807F228: .4byte 0x0000041C
_0807F22C:
	ldr r0, _0807F234 @ =0x0000080C
_0807F22E:
	strh r0, [r2, #8]
	pop {pc}
	.align 2, 0
_0807F234: .4byte 0x0000080C

	thumb_func_start sub_0807F238
sub_0807F238: @ 0x0807F238
	ldr r2, _0807F240 @ =gPlayerState
	ldr r0, [r1, #4]
	strh r0, [r2, #8]
	bx lr
	.align 2, 0
_0807F240: .4byte gPlayerState

	thumb_func_start sub_0807F244
sub_0807F244: @ 0x0807F244
	push {r4, r5, lr}
	ldr r0, [r1, #4]
	ldr r4, _0807F298 @ =0x0000FFFF
	lsrs r5, r0, #0x10
	ands r4, r0
	cmp r4, #1
	blo _0807F28C
	cmp r4, #4
	bls _0807F25A
	cmp r4, #6
	bne _0807F28C
_0807F25A:
	movs r4, #1
	movs r0, #2
	bl GetInventoryValue
	cmp r0, #0
	beq _0807F268
	movs r4, #2
_0807F268:
	movs r0, #3
	bl GetInventoryValue
	cmp r0, #0
	beq _0807F274
	movs r4, #3
_0807F274:
	movs r0, #4
	bl GetInventoryValue
	cmp r0, #0
	beq _0807F280
	movs r4, #4
_0807F280:
	movs r0, #6
	bl GetInventoryValue
	cmp r0, #0
	beq _0807F28C
	movs r4, #6
_0807F28C:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ForceEquipItem
	pop {r4, r5, pc}
	.align 2, 0
_0807F298: .4byte 0x0000FFFF

	thumb_func_start sub_0807F29C
sub_0807F29C: @ 0x0807F29C
	push {lr}
	ldr r0, [r1, #4]
	bl sub_0805ED14
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807F2A8
sub_0807F2A8: @ 0x0807F2A8
	push {lr}
	ldr r0, _0807F2C0 @ =gPlayerState
	adds r0, #0x9c
	ldr r0, [r0]
	cmp r0, #0
	bne _0807F2C8
	ldr r2, _0807F2C4 @ =gActiveScriptInfo
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	b _0807F2CE
	.align 2, 0
_0807F2C0: .4byte gPlayerState
_0807F2C4: .4byte gActiveScriptInfo
_0807F2C8:
	ldr r1, _0807F2D0 @ =gActiveScriptInfo
	movs r0, #0
	strb r0, [r1, #6]
_0807F2CE:
	pop {pc}
	.align 2, 0
_0807F2D0: .4byte gActiveScriptInfo

	thumb_func_start sub_0807F2D4
sub_0807F2D4: @ 0x0807F2D4
	push {lr}
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0807F2F8
	ldr r2, _0807F2F4 @ =gActiveScriptInfo
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	b _0807F2FC
	.align 2, 0
_0807F2F4: .4byte gActiveScriptInfo
_0807F2F8:
	ldr r0, _0807F300 @ =gActiveScriptInfo
	strb r1, [r0, #6]
_0807F2FC:
	pop {pc}
	.align 2, 0
_0807F300: .4byte gActiveScriptInfo

	thumb_func_start sub_0807F304
sub_0807F304: @ 0x0807F304
	push {lr}
	ldr r0, _0807F324 @ =gPlayerEntity
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0807F32C
	ldr r2, _0807F328 @ =gActiveScriptInfo
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	b _0807F330
	.align 2, 0
_0807F324: .4byte gPlayerEntity
_0807F328: .4byte gActiveScriptInfo
_0807F32C:
	ldr r0, _0807F334 @ =gActiveScriptInfo
	strb r1, [r0, #6]
_0807F330:
	pop {pc}
	.align 2, 0
_0807F334: .4byte gActiveScriptInfo

	thumb_func_start sub_0807F338
sub_0807F338: @ 0x0807F338
	movs r1, #0
	str r1, [r0, #0x48]
	ldrb r2, [r0, #0x17]
	movs r1, #0xfe
	ands r1, r2
	strb r1, [r0, #0x17]
	bx lr
	.align 2, 0

	thumb_func_start sub_0807F348
sub_0807F348: @ 0x0807F348
	push {lr}
	movs r1, #2
	bl sub_0805E3A0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807F354
sub_0807F354: @ 0x0807F354
	push {lr}
	movs r1, #6
	bl sub_0805E3A0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807F360
sub_0807F360: @ 0x0807F360
	push {lr}
	movs r1, #3
	bl sub_0805E3A0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807F36C
sub_0807F36C: @ 0x0807F36C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0x41
	movs r2, #0
	bl CreateFx
	adds r4, r0, #0
	cmp r4, #0
	beq _0807F3C2
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r3, _0807F3C4 @ =0xFFF80000
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	bl Random
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	beq _0807F3B0
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x18]
_0807F3B0:
	bl Random
	ands r0, r5
	cmp r0, #0
	beq _0807F3C2
	ldrb r0, [r4, #0x18]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x18]
_0807F3C2:
	pop {r4, r5, pc}
	.align 2, 0
_0807F3C4: .4byte 0xFFF80000

	thumb_func_start sub_0807F3C8
sub_0807F3C8: @ 0x0807F3C8
	push {lr}
	bl sub_0807F36C
	movs r0, #0xe5
	bl SoundReq
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807F3D8
sub_0807F3D8: @ 0x0807F3D8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	ldr r1, [r1, #4]
	adds r1, r1, r0
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r4, #0x80
	strh r0, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0807F3F8
sub_0807F3F8: @ 0x0807F3F8
	push {lr}
	ldr r0, _0807F408 @ =gPlayerEntity
	movs r2, #0x18
	rsbs r2, r2, #0
	movs r1, #8
	bl CreateSpeechBubbleExclamationMark
	pop {pc}
	.align 2, 0
_0807F408: .4byte gPlayerEntity

	thumb_func_start sub_0807F40C
sub_0807F40C: @ 0x0807F40C
	push {lr}
	ldr r0, _0807F41C @ =gPlayerEntity
	movs r2, #0x18
	rsbs r2, r2, #0
	movs r1, #8
	bl CreateSpeechBubbleQuestionMark
	pop {pc}
	.align 2, 0
_0807F41C: .4byte gPlayerEntity

	thumb_func_start sub_0807F420
sub_0807F420: @ 0x0807F420
	push {lr}
	ldr r2, [r1, #4]
	ldrb r0, [r1, #4]
	lsrs r2, r2, #8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r1, r2, #0
	bl MenuFadeIn
	pop {pc}

	thumb_func_start sub_0807F434
sub_0807F434: @ 0x0807F434
	push {lr}
	adds r3, r0, #0
	adds r3, #0x39
	movs r2, #0
	ldrsb r2, [r3, r2]
	cmp r2, #1
	beq _0807F44C
	cmp r2, #2
	beq _0807F44C
	movs r0, #0
	str r0, [r1, #4]
	b _0807F452
_0807F44C:
	movs r0, #0
	strb r0, [r3]
	str r2, [r1, #4]
_0807F452:
	ldr r2, _0807F460 @ =gActiveScriptInfo
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {pc}
	.align 2, 0
_0807F460: .4byte gActiveScriptInfo

	thumb_func_start sub_0807F464
sub_0807F464: @ 0x0807F464
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	bne _0807F4BC
	adds r0, #1
	movs r3, #0
	strb r0, [r5, #0x18]
	ldr r0, [r5, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #8]
	ldr r2, [r5, #4]
	ldr r1, _0807F4A8 @ =gRoomControls
	ldrh r0, [r1, #6]
	adds r0, r0, r2
	strh r0, [r5, #0x1e]
	ldrh r0, [r4, #0x32]
	strh r0, [r5, #0x22]
	movs r6, #0x2e
	ldrsh r0, [r4, r6]
	ldrh r1, [r1, #6]
	subs r0, r0, r1
	cmp r2, r0
	ble _0807F4AC
	movs r0, #0x40
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	movs r0, #0x80
	ands r0, r1
	movs r1, #2
	b _0807F4B8
	.align 2, 0
_0807F4A8: .4byte gRoomControls
_0807F4AC:
	movs r0, #0xc0
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	movs r0, #0x80
	ands r0, r1
	movs r1, #6
_0807F4B8:
	orrs r0, r1
	strb r0, [r4, #0x14]
_0807F4BC:
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F62C
	movs r2, #0x1e
	ldrsh r1, [r5, r2]
	movs r6, #0x2e
	ldrsh r0, [r4, r6]
	subs r1, r1, r0
	ldrb r2, [r4, #0x15]
	movs r0, #0x80
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r0, r0, #0x18
	eors r1, r0
	cmp r1, #0
	bge _0807F4EA
	ldrh r0, [r5, #0x1e]
	strh r0, [r4, #0x2e]
	b _0807F4F0
_0807F4EA:
	ldr r1, _0807F4F4 @ =gActiveScriptInfo
	movs r0, #0
	strb r0, [r1, #6]
_0807F4F0:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807F4F4: .4byte gActiveScriptInfo

	thumb_func_start sub_0807F4F8
sub_0807F4F8: @ 0x0807F4F8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	bne _0807F548
	adds r0, #1
	strb r0, [r5, #0x18]
	ldr r0, [r5, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #8]
	ldr r2, [r5, #4]
	ldrh r0, [r4, #0x2e]
	strh r0, [r5, #0x1e]
	ldr r1, _0807F538 @ =gRoomControls
	ldrh r0, [r1, #8]
	adds r0, r0, r2
	strh r0, [r5, #0x22]
	movs r3, #0x32
	ldrsh r0, [r4, r3]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	cmp r2, r0
	ble _0807F53C
	movs r0, #0x80
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	b _0807F546
	.align 2, 0
_0807F538: .4byte gRoomControls
_0807F53C:
	movs r0, #0
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	movs r0, #0x80
	ands r0, r1
_0807F546:
	strb r0, [r4, #0x14]
_0807F548:
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F62C
	movs r2, #0x22
	ldrsh r1, [r5, r2]
	movs r3, #0x32
	ldrsh r0, [r4, r3]
	subs r1, r1, r0
	ldrb r2, [r4, #0x15]
	movs r0, #0x80
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r0, r0, #0x18
	eors r1, r0
	cmp r1, #0
	blt _0807F576
	ldrh r0, [r5, #0x22]
	strh r0, [r4, #0x32]
	b _0807F57C
_0807F576:
	ldr r1, _0807F580 @ =gActiveScriptInfo
	movs r0, #0
	strb r0, [r1, #6]
_0807F57C:
	pop {r4, r5, pc}
	.align 2, 0
_0807F580: .4byte gActiveScriptInfo

	thumb_func_start sub_0807F584
sub_0807F584: @ 0x0807F584
	ldr r0, _0807F590 @ =gPlayerEntity
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #1
	str r0, [r1, #4]
	bx lr
	.align 2, 0
_0807F590: .4byte gPlayerEntity

	thumb_func_start sub_0807F594
sub_0807F594: @ 0x0807F594
	push {lr}
	ldr r0, _0807F5A8 @ =gPlayerState
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807F5A6
	ldr r1, _0807F5AC @ =gActiveScriptInfo
	movs r0, #0
	strb r0, [r1, #6]
_0807F5A6:
	pop {pc}
	.align 2, 0
_0807F5A8: .4byte gPlayerState
_0807F5AC: .4byte gActiveScriptInfo

	thumb_func_start sub_0807F5B0
sub_0807F5B0: @ 0x0807F5B0
	ldr r0, _0807F5BC @ =gPlayerState
	ldr r1, [r1, #4]
	adds r0, #0x27
	strb r1, [r0]
	bx lr
	.align 2, 0
_0807F5BC: .4byte gPlayerState

	thumb_func_start sub_0807F5C0
sub_0807F5C0: @ 0x0807F5C0
	push {r4, lr}
	ldr r4, _0807F620 @ =gRoomControls
	ldr r1, [r4, #0x30]
	cmp r1, #0
	beq _0807F62E
	movs r2, #0x2e
	ldrsh r0, [r1, r2]
	adds r2, r0, #0
	subs r2, #0x78
	movs r3, #0x32
	ldrsh r0, [r1, r3]
	adds r3, r0, #0
	subs r3, #0x50
	ldrh r1, [r4, #6]
	cmp r2, r1
	bge _0807F5E2
	adds r2, r1, #0
_0807F5E2:
	ldrh r0, [r4, #0x1e]
	adds r0, r1, r0
	subs r0, #0xf0
	cmp r2, r0
	ble _0807F5EE
	adds r2, r0, #0
_0807F5EE:
	ldrh r1, [r4, #8]
	cmp r3, r1
	bge _0807F5F6
	adds r3, r1, #0
_0807F5F6:
	ldrh r0, [r4, #0x20]
	adds r0, r1, r0
	subs r0, #0xa0
	cmp r3, r0
	ble _0807F602
	adds r3, r0, #0
_0807F602:
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r2, r0
	bne _0807F628
	movs r2, #0xc
	ldrsh r0, [r4, r2]
	cmp r3, r0
	bne _0807F628
	ldr r2, _0807F624 @ =gActiveScriptInfo
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	b _0807F62E
	.align 2, 0
_0807F620: .4byte gRoomControls
_0807F624: .4byte gActiveScriptInfo
_0807F628:
	ldr r1, _0807F630 @ =gActiveScriptInfo
	movs r0, #0
	strb r0, [r1, #6]
_0807F62E:
	pop {r4, pc}
	.align 2, 0
_0807F630: .4byte gActiveScriptInfo

	thumb_func_start sub_0807F634
sub_0807F634: @ 0x0807F634
	push {lr}
	ldr r3, [r1, #4]
	ldrh r1, [r3]
	ldrh r2, [r3, #2]
	ldrh r3, [r3, #4]
	bl sub_0801DFB4
	ldr r0, _0807F64C @ =gPlayerState
	adds r0, #0x8b
	movs r1, #3
	strb r1, [r0]
	pop {pc}
	.align 2, 0
_0807F64C: .4byte gPlayerState

	thumb_func_start sub_0807F650
sub_0807F650: @ 0x0807F650
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08002632
	ldr r1, _0807F678 @ =gUnk_08001A7C
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldrh r3, [r0, #4]
	adds r0, r4, #0
	bl sub_0801DFB4
	ldr r0, _0807F67C @ =gPlayerState
	adds r0, #0x8b
	movs r1, #3
	strb r1, [r0]
	pop {r4, pc}
	.align 2, 0
_0807F678: .4byte gUnk_08001A7C
_0807F67C: .4byte gPlayerState

	thumb_func_start sub_0807F680
sub_0807F680: @ 0x0807F680
	push {lr}
	adds r2, r1, #0
	movs r3, #0
	ldr r0, _0807F6A8 @ =gPlayerEntity
	movs r1, #0x2e
	ldrsh r0, [r0, r1]
	ldr r1, _0807F6AC @ =gRoomControls
	ldrh r1, [r1, #6]
	subs r0, r0, r1
	ldrh r1, [r2, #4]
	cmp r0, r1
	ble _0807F69A
	movs r3, #1
_0807F69A:
	str r3, [r2, #0x14]
	ldr r2, _0807F6B0 @ =gActiveScriptInfo
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {pc}
	.align 2, 0
_0807F6A8: .4byte gPlayerEntity
_0807F6AC: .4byte gRoomControls
_0807F6B0: .4byte gActiveScriptInfo

	thumb_func_start sub_0807F6B4
sub_0807F6B4: @ 0x0807F6B4
	push {lr}
	adds r2, r1, #0
	movs r3, #0
	ldr r0, _0807F6DC @ =gPlayerEntity
	movs r1, #0x32
	ldrsh r0, [r0, r1]
	ldr r1, _0807F6E0 @ =gRoomControls
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	ldrh r1, [r2, #4]
	cmp r0, r1
	ble _0807F6CE
	movs r3, #1
_0807F6CE:
	str r3, [r2, #0x14]
	ldr r2, _0807F6E4 @ =gActiveScriptInfo
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {pc}
	.align 2, 0
_0807F6DC: .4byte gPlayerEntity
_0807F6E0: .4byte gRoomControls
_0807F6E4: .4byte gActiveScriptInfo

	thumb_func_start sub_0807F6E8
sub_0807F6E8: @ 0x0807F6E8
	ldr r2, _0807F6F4 @ =gPlayerState
	ldr r0, [r2, #0x30]
	ldr r1, [r1, #4]
	orrs r0, r1
	str r0, [r2, #0x30]
	bx lr
	.align 2, 0
_0807F6F4: .4byte gPlayerState

	thumb_func_start sub_0807F6F8
sub_0807F6F8: @ 0x0807F6F8
	ldr r2, _0807F704 @ =gPlayerState
	ldr r1, [r1, #4]
	ldr r0, [r2, #0x30]
	bics r0, r1
	str r0, [r2, #0x30]
	bx lr
	.align 2, 0
_0807F704: .4byte gPlayerState

	thumb_func_start sub_0807F708
sub_0807F708: @ 0x0807F708
	push {lr}
	ldr r1, [r1, #4]
	bl ShowNPCDialogue
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807F714
sub_0807F714: @ 0x0807F714
	push {lr}
	adds r1, r0, #0
	ldr r2, _0807F734 @ =gUnk_08114F30
	ldrb r3, [r1, #0x19]
	lsrs r0, r3, #6
	adds r0, r0, r2
	ldrb r2, [r0]
	lsls r2, r2, #6
	movs r0, #0x3f
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #0x19]
	adds r0, r1, #0
	bl ResolveEntityOnTop
	pop {pc}
	.align 2, 0
_0807F734: .4byte gUnk_08114F30

	thumb_func_start sub_0807F738
sub_0807F738: @ 0x0807F738
	push {lr}
	adds r1, r0, #0
	ldr r2, _0807F758 @ =gUnk_08114F34
	ldrb r3, [r1, #0x19]
	lsrs r0, r3, #6
	adds r0, r0, r2
	ldrb r2, [r0]
	lsls r2, r2, #6
	movs r0, #0x3f
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #0x19]
	adds r0, r1, #0
	bl sub_0806FAD8
	pop {pc}
	.align 2, 0
_0807F758: .4byte gUnk_08114F34

	thumb_func_start sub_0807F75C
sub_0807F75C: @ 0x0807F75C
	push {r4, lr}
	ldr r2, [r1, #4]
	ldr r3, _0807F774 @ =gPlayerEntity
	ldr r1, _0807F778 @ =gRoomControls
	asrs r0, r2, #0x10
	ldrh r4, [r1, #6]
	adds r0, r0, r4
	strh r0, [r3, #0x2e]
	ldrh r0, [r1, #8]
	adds r0, r0, r2
	strh r0, [r3, #0x32]
	pop {r4, pc}
	.align 2, 0
_0807F774: .4byte gPlayerEntity
_0807F778: .4byte gRoomControls

	thumb_func_start sub_0807F77C
sub_0807F77C: @ 0x0807F77C
	push {lr}
	ldr r0, [r1, #0x14]
	cmp r0, #0
	beq _0807F786
	movs r0, #1
_0807F786:
	str r0, [r1, #4]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807F78C
sub_0807F78C: @ 0x0807F78C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, [r1, #4]
	cmp r5, #0
	bne _0807F79A
	ldr r0, _0807F7BC @ =gRoomVars
	ldrb r5, [r0, #6]
_0807F79A:
	adds r0, r5, #0
	bl GetSaleItemConfirmMessageID
	adds r4, r0, #0
	adds r0, r5, #0
	bl GetItemPrice
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl TextboxNoOverlap
	ldr r0, _0807F7C0 @ =gTextBox
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [r0, #0x10]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807F7BC: .4byte gRoomVars
_0807F7C0: .4byte gTextBox

	thumb_func_start sub_0807F7C4
sub_0807F7C4: @ 0x0807F7C4
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0807F7D2
	ldr r0, _0807F7F4 @ =gRoomVars
	ldrb r0, [r0, #6]
_0807F7D2:
	bl GetItemPrice
	movs r2, #0
	ldr r1, _0807F7F8 @ =gSave
	adds r1, #0xc0
	ldrh r1, [r1]
	cmp r0, r1
	bgt _0807F7E4
	movs r2, #1
_0807F7E4:
	str r2, [r4, #0x14]
	ldr r2, _0807F7FC @ =gActiveScriptInfo
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, pc}
	.align 2, 0
_0807F7F4: .4byte gRoomVars
_0807F7F8: .4byte gSave
_0807F7FC: .4byte gActiveScriptInfo

	thumb_func_start sub_0807F800
sub_0807F800: @ 0x0807F800
	push {r4, lr}
	ldr r4, [r1, #4]
	cmp r4, #0
	bne _0807F80C
	ldr r0, _0807F834 @ =gRoomVars
	ldrb r4, [r0, #6]
_0807F80C:
	adds r0, r4, #0
	bl GetItemPrice
	rsbs r0, r0, #0
	bl ModRupees
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_080A7C18
	ldr r1, _0807F834 @ =gRoomVars
	movs r0, #0
	strb r0, [r1, #6]
	ldr r2, _0807F838 @ =gActiveScriptInfo
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, pc}
	.align 2, 0
_0807F834: .4byte gRoomVars
_0807F838: .4byte gActiveScriptInfo

	thumb_func_start sub_0807F83C
sub_0807F83C: @ 0x0807F83C
	push {lr}
	bl sub_08079184
	pop {pc}

	thumb_func_start sub_0807F844
sub_0807F844: @ 0x0807F844
	push {lr}
	ldr r1, _0807F850 @ =gRoomControls
	str r0, [r1, #0x30]
	bl sub_080809D4
	pop {pc}
	.align 2, 0
_0807F850: .4byte gRoomControls

	thumb_func_start sub_0807F854
sub_0807F854: @ 0x0807F854
	push {lr}
	ldr r1, [r1, #4]
	lsrs r2, r1, #0x10
	movs r0, #3
	ands r2, r0
	ldr r3, _0807F870 @ =0x0000FFFF
	ands r3, r1
	cmp r2, #4
	bhi _0807F8B4
	lsls r0, r2, #2
	ldr r1, _0807F874 @ =_0807F878
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807F870: .4byte 0x0000FFFF
_0807F874: .4byte _0807F878
_0807F878: @ jump table
	.4byte _0807F88C @ case 0
	.4byte _0807F88C @ case 1
	.4byte _0807F898 @ case 2
	.4byte _0807F8A4 @ case 3
	.4byte _0807F8B0 @ case 4
_0807F88C:
	ldr r0, _0807F894 @ =gTextBox
	str r3, [r0, #0x10]
	b _0807F8B4
	.align 2, 0
_0807F894: .4byte gTextBox
_0807F898:
	ldr r0, _0807F8A0 @ =gTextBox
	str r3, [r0, #0x14]
	b _0807F8B4
	.align 2, 0
_0807F8A0: .4byte gTextBox
_0807F8A4:
	ldr r0, _0807F8AC @ =gTextBox
	str r3, [r0, #0x18]
	b _0807F8B4
	.align 2, 0
_0807F8AC: .4byte gTextBox
_0807F8B0:
	ldr r0, _0807F8B8 @ =gTextBox
	str r3, [r0, #0x1c]
_0807F8B4:
	pop {pc}
	.align 2, 0
_0807F8B8: .4byte gTextBox

	thumb_func_start sub_0807F8BC
sub_0807F8BC: @ 0x0807F8BC
	push {r4, lr}
	adds r4, r1, #0
	bl sub_080040A8
	cmp r0, #0
	beq _0807F8CA
	movs r0, #1
_0807F8CA:
	str r0, [r4, #0x14]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0807F8D0
sub_0807F8D0: @ 0x0807F8D0
	push {lr}
	ldr r1, [r1, #4]
	bl sub_08003FC4
	ldr r2, _0807F8E4 @ =gActiveScriptInfo
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {pc}
	.align 2, 0
_0807F8E4: .4byte gActiveScriptInfo

	thumb_func_start sub_0807F8E8
sub_0807F8E8: @ 0x0807F8E8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0xa6
	movs r2, #0
	movs r3, #0
	bl CreateObjectWithParent
	adds r2, r0, #0
	cmp r2, #0
	beq _0807F912
	str r4, [r2, #0x50]
	ldr r0, [r5, #4]
	ldr r1, _0807F914 @ =0x000003FF
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #8
	adds r1, r3, #0
	adds r2, #0x86
	orrs r0, r1
	strh r0, [r2]
_0807F912:
	pop {r4, r5, pc}
	.align 2, 0
_0807F914: .4byte 0x000003FF

	thumb_func_start sub_0807F918
sub_0807F918: @ 0x0807F918
	push {lr}
	ldr r0, [r1, #4]
	bl PutItemOnSlot
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807F924
sub_0807F924: @ 0x0807F924
	push {lr}
	bl sub_0807879C
	pop {pc}

	thumb_func_start sub_0807F92C
sub_0807F92C: @ 0x0807F92C
	push {lr}
	bl sub_080787C0
	pop {pc}

	thumb_func_start sub_0807F934
sub_0807F934: @ 0x0807F934
	push {lr}
	bl sub_080787B4
	pop {pc}

	thumb_func_start sub_0807F93C
sub_0807F93C: @ 0x0807F93C
	push {lr}
	ldr r2, [r1, #4]
	lsrs r1, r2, #8
	movs r3, #0xff
	ands r1, r3
	ands r2, r3
	bl CreateSpeechBubbleSleep
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807F950
sub_0807F950: @ 0x0807F950
	push {lr}
	sub sp, #4
	movs r0, #2
	str r0, [sp]
	movs r0, #6
	movs r1, #0x56
	movs r2, #6
	movs r3, #0
	bl FindEntity
	cmp r0, #0
	beq _0807F96C
	bl DeleteEntity
_0807F96C:
	add sp, #4
	pop {pc}

	thumb_func_start sub_0807F970
sub_0807F970: @ 0x0807F970
	push {lr}
	adds r2, r1, #0
	movs r3, #0
	ldr r1, _0807F988 @ =gCurrentTextBox
	ldr r0, [r2, #4]
	ldrh r1, [r1, #0x28]
	cmp r0, r1
	bne _0807F982
	movs r3, #1
_0807F982:
	str r3, [r2, #0x14]
	pop {pc}
	.align 2, 0
_0807F988: .4byte gCurrentTextBox

	thumb_func_start sub_0807F98C
sub_0807F98C: @ 0x0807F98C
	ldr r1, [r1, #4]
	str r1, [r0, #0x34]
	bx lr
	.align 2, 0

	thumb_func_start sub_0807F994
sub_0807F994: @ 0x0807F994
	ldr r2, [r1, #4]
	asrs r1, r2, #0x10
	adds r3, r0, #0
	adds r3, #0x62
	strb r1, [r3]
	adds r0, #0x63
	strb r2, [r0]
	bx lr

	thumb_func_start sub_0807F9A4
sub_0807F9A4: @ 0x0807F9A4
	push {lr}
	ldr r0, _0807F9BC @ =gPlayerState
	adds r0, #0xa8
	ldrb r0, [r0]
	subs r0, #5
	cmp r0, #0x17
	bhi _0807FA30
	lsls r0, r0, #2
	ldr r1, _0807F9C0 @ =_0807F9C4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807F9BC: .4byte gPlayerState
_0807F9C0: .4byte _0807F9C4
_0807F9C4: @ jump table
	.4byte _0807FA24 @ case 0
	.4byte _0807FA30 @ case 1
	.4byte _0807FA24 @ case 2
	.4byte _0807FA24 @ case 3
	.4byte _0807FA30 @ case 4
	.4byte _0807FA24 @ case 5
	.4byte _0807FA24 @ case 6
	.4byte _0807FA24 @ case 7
	.4byte _0807FA24 @ case 8
	.4byte _0807FA24 @ case 9
	.4byte _0807FA24 @ case 10
	.4byte _0807FA24 @ case 11
	.4byte _0807FA24 @ case 12
	.4byte _0807FA24 @ case 13
	.4byte _0807FA24 @ case 14
	.4byte _0807FA24 @ case 15
	.4byte _0807FA24 @ case 16
	.4byte _0807FA24 @ case 17
	.4byte _0807FA24 @ case 18
	.4byte _0807FA24 @ case 19
	.4byte _0807FA30 @ case 20
	.4byte _0807FA30 @ case 21
	.4byte _0807FA24 @ case 22
	.4byte _0807FA24 @ case 23
_0807FA24:
	ldr r1, _0807FA2C @ =gActiveScriptInfo
	movs r0, #0
	strb r0, [r1, #6]
	b _0807FA3A
	.align 2, 0
_0807FA2C: .4byte gActiveScriptInfo
_0807FA30:
	ldr r2, _0807FA3C @ =gActiveScriptInfo
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
_0807FA3A:
	pop {pc}
	.align 2, 0
_0807FA3C: .4byte gActiveScriptInfo

	thumb_func_start sub_0807FA40
sub_0807FA40: @ 0x0807FA40
	push {lr}
	ldr r0, _0807FA58 @ =gPlayerState
	adds r0, #0xa8
	ldrb r0, [r0]
	subs r0, #5
	cmp r0, #0x17
	bhi _0807FACC
	lsls r0, r0, #2
	ldr r1, _0807FA5C @ =_0807FA60
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807FA58: .4byte gPlayerState
_0807FA5C: .4byte _0807FA60
_0807FA60: @ jump table
	.4byte _0807FAC0 @ case 0
	.4byte _0807FACC @ case 1
	.4byte _0807FAC0 @ case 2
	.4byte _0807FAC0 @ case 3
	.4byte _0807FACC @ case 4
	.4byte _0807FAC0 @ case 5
	.4byte _0807FAC0 @ case 6
	.4byte _0807FAC0 @ case 7
	.4byte _0807FAC0 @ case 8
	.4byte _0807FAC0 @ case 9
	.4byte _0807FAC0 @ case 10
	.4byte _0807FAC0 @ case 11
	.4byte _0807FAC0 @ case 12
	.4byte _0807FAC0 @ case 13
	.4byte _0807FACC @ case 14
	.4byte _0807FAC0 @ case 15
	.4byte _0807FAC0 @ case 16
	.4byte _0807FAC0 @ case 17
	.4byte _0807FAC0 @ case 18
	.4byte _0807FAC0 @ case 19
	.4byte _0807FACC @ case 20
	.4byte _0807FACC @ case 21
	.4byte _0807FAC0 @ case 22
	.4byte _0807FAC0 @ case 23
_0807FAC0:
	ldr r1, _0807FAC8 @ =gActiveScriptInfo
	movs r0, #0
	strb r0, [r1, #6]
	b _0807FAD6
	.align 2, 0
_0807FAC8: .4byte gActiveScriptInfo
_0807FACC:
	ldr r2, _0807FAD8 @ =gActiveScriptInfo
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
_0807FAD6:
	pop {pc}
	.align 2, 0
_0807FAD8: .4byte gActiveScriptInfo

	thumb_func_start sub_0807FADC
sub_0807FADC: @ 0x0807FADC
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldrb r0, [r4, #0x18]
	cmp r0, #1
	beq _0807FB06
	cmp r0, #1
	bgt _0807FAF2
	cmp r0, #0
	beq _0807FAF8
	b _0807FB1C
_0807FAF2:
	cmp r0, #2
	beq _0807FB16
	b _0807FB1C
_0807FAF8:
	movs r0, #1
	strb r0, [r4, #0x18]
	ldr r1, [r4, #4]
	adds r0, r2, #0
	bl sub_0808C650
	b _0807FB1C
_0807FB06:
	bl sub_0808C67C
	cmp r0, #0
	beq _0807FB1C
	ldrb r0, [r4, #0x18]
	adds r0, #1
	strb r0, [r4, #0x18]
	b _0807FB1C
_0807FB16:
	bl sub_0808C688
	b _0807FB22
_0807FB1C:
	ldr r1, _0807FB24 @ =gActiveScriptInfo
	movs r0, #0
	strb r0, [r1, #6]
_0807FB22:
	pop {r4, pc}
	.align 2, 0
_0807FB24: .4byte gActiveScriptInfo

	thumb_func_start sub_0807FB28
sub_0807FB28: @ 0x0807FB28
	push {r4, lr}
	adds r4, r1, #0
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	bne _0807FB3A
	ldr r0, _0807FB54 @ =0x00007FFF
	movs r1, #1
	bl sub_0801D7BC
_0807FB3A:
	ldrb r0, [r4, #0x18]
	adds r0, #1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x18]
	ldr r0, [r4, #4]
	cmp r1, r0
	blo _0807FB58
	movs r0, #0
	movs r1, #0
	bl sub_0801D7BC
	b _0807FB5E
	.align 2, 0
_0807FB54: .4byte 0x00007FFF
_0807FB58:
	ldr r1, _0807FB60 @ =gActiveScriptInfo
	movs r0, #0
	strb r0, [r1, #6]
_0807FB5E:
	pop {r4, pc}
	.align 2, 0
_0807FB60: .4byte gActiveScriptInfo

	thumb_func_start sub_0807FB64
sub_0807FB64: @ 0x0807FB64
	ldr r0, _0807FB70 @ =gPlayerEntity
	ldr r1, [r1, #4]
	adds r0, #0x3d
	strb r1, [r0]
	bx lr
	.align 2, 0
_0807FB70: .4byte gPlayerEntity

	thumb_func_start sub_0807FB74
sub_0807FB74: @ 0x0807FB74
	ldr r0, _0807FB8C @ =gPlayerState
	adds r0, #0x26
	movs r1, #0
	strb r1, [r0]
	ldr r1, _0807FB90 @ =gPlayerEntity
	adds r1, #0x3c
	ldrb r2, [r1]
	movs r0, #0xfb
	ands r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0
_0807FB8C: .4byte gPlayerState
_0807FB90: .4byte gPlayerEntity

	thumb_func_start sub_0807FB94
sub_0807FB94: @ 0x0807FB94
	push {lr}
	movs r0, #4
	bl InitScreen
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807FBA0
sub_0807FBA0: @ 0x0807FBA0
	ldr r2, _0807FBB0 @ =gRoomControls
	ldrh r1, [r2, #0xa]
	adds r1, #0x78
	strh r1, [r0, #0x2e]
	ldrh r1, [r2, #0xc]
	adds r1, #0x50
	strh r1, [r0, #0x32]
	bx lr
	.align 2, 0
_0807FBB0: .4byte gRoomControls

	thumb_func_start sub_0807FBB4
sub_0807FBB4: @ 0x0807FBB4
	ldr r2, _0807FBC0 @ =gPlayerState
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x1a]
	bx lr
	.align 2, 0
_0807FBC0: .4byte gPlayerState

	thumb_func_start sub_0807FBC4
sub_0807FBC4: @ 0x0807FBC4
	push {lr}
	bl sub_0805E4A0
	pop {pc}

	thumb_func_start sub_0807FBCC
sub_0807FBCC: @ 0x0807FBCC
	push {lr}
	bl sub_0805E4CC
	pop {pc}

	thumb_func_start sub_0807FBD4
sub_0807FBD4: @ 0x0807FBD4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F62C
	adds r0, r4, #0
	bl sub_080040A8
	cmp r0, #0
	beq _0807FBF4
	ldr r1, _0807FBF8 @ =gActiveScriptInfo
	movs r0, #0
	strb r0, [r1, #6]
_0807FBF4:
	pop {r4, pc}
	.align 2, 0
_0807FBF8: .4byte gActiveScriptInfo

	thumb_func_start sub_0807FBFC
sub_0807FBFC: @ 0x0807FBFC
	ldr r3, _0807FC20 @ =gSave
	adds r0, r3, #0
	adds r0, #0xb2
	movs r1, #0
	strb r1, [r0]
	adds r0, #0x12
	movs r2, #0
	strh r1, [r0]
	subs r0, #0x11
	strb r2, [r0]
	adds r0, #0x13
	strh r1, [r0]
	subs r0, #0xc
	strb r2, [r0]
	adds r0, #0xe
	strh r1, [r0]
	bx lr
	.align 2, 0
_0807FC20: .4byte gSave

	thumb_func_start sub_0807FC24
sub_0807FC24: @ 0x0807FC24
	push {lr}
	ldr r0, _0807FC3C @ =gRoomControls
	ldrb r0, [r0, #5]
	movs r1, #0xd1
	cmp r0, #1
	bne _0807FC32
	movs r1, #0xcf
_0807FC32:
	adds r0, r1, #0
	bl SetLocalFlag
	pop {pc}
	.align 2, 0
_0807FC3C: .4byte gRoomControls

	thumb_func_start UpdateScroll
UpdateScroll: @ 0xUpdateScroll
	push {lr}
	ldr r0, _0807FC5C @ =gRoomControls
	ldrb r2, [r0, #0xf]
	movs r1, #0xfb
	ands r1, r2
	strb r1, [r0, #0xf]
	ldr r2, _0807FC60 @ =gUnk_0811E768
	ldrb r1, [r0, #2]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0807FC5C: .4byte gRoomControls
_0807FC60: .4byte gUnk_0811E768

	thumb_func_start sub_0807FC64
sub_0807FC64: @ 0x0807FC64
	push {lr}
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #2]
	strh r2, [r0]
	movs r1, #4
	strb r1, [r0, #0xe]
	bl sub_0807FC7C
	bl sub_080805F8
	pop {pc}

	thumb_func_start sub_0807FC7C
sub_0807FC7C: @ 0x0807FC7C
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x30]
	cmp r0, #0
	bne _0807FC88
	b _0807FDA6
_0807FC88:
	movs r1, #0xa
	ldrsh r4, [r2, r1]
	movs r1, #0x2e
	ldrsh r0, [r0, r1]
	subs r0, #0x78
	subs r3, r4, r0
	cmp r3, #0
	beq _0807FD16
	ldrh r6, [r2, #0xa]
	movs r7, #7
	ands r7, r6
	mov ip, r6
	cmp r3, #0
	ble _0807FCDC
	ldrh r0, [r2, #6]
	adds r5, r0, #0
	cmp r5, r4
	bge _0807FD16
	ldrb r0, [r2, #0xe]
	cmp r0, r3
	bgt _0807FCBC
	adds r3, r0, #0
	ldrb r1, [r2, #0xf]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2, #0xf]
_0807FCBC:
	mov r1, ip
	subs r0, r1, r3
	strh r0, [r2, #0xa]
	subs r0, r7, r3
	cmp r0, #0
	bgt _0807FCCE
	ldr r1, _0807FCD8 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
_0807FCCE:
	movs r1, #0xa
	ldrsh r0, [r2, r1]
	cmp r5, r0
	blt _0807FD16
	b _0807FD14
	.align 2, 0
_0807FCD8: .4byte gUnk_02000070
_0807FCDC:
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #0x1e]
	adds r0, r0, r1
	adds r5, r0, #0
	subs r5, #0xf0
	cmp r4, r5
	bge _0807FD16
	ldrb r0, [r2, #0xe]
	rsbs r0, r0, #0
	cmp r0, r3
	blt _0807FCFC
	adds r3, r0, #0
	ldrb r1, [r2, #0xf]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2, #0xf]
_0807FCFC:
	subs r0, r6, r3
	strh r0, [r2, #0xa]
	subs r0, r7, r3
	cmp r0, #7
	ble _0807FD0C
	ldr r1, _0807FD68 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
_0807FD0C:
	movs r1, #0xa
	ldrsh r0, [r2, r1]
	cmp r0, r5
	blt _0807FD16
_0807FD14:
	strh r5, [r2, #0xa]
_0807FD16:
	movs r0, #0xc
	ldrsh r4, [r2, r0]
	ldr r0, [r2, #0x30]
	movs r1, #0x32
	ldrsh r0, [r0, r1]
	subs r0, #0x50
	subs r3, r4, r0
	cmp r3, #0
	beq _0807FDA6
	ldrh r6, [r2, #0xc]
	movs r7, #7
	ands r7, r6
	mov ip, r6
	cmp r3, #0
	ble _0807FD6C
	ldrh r0, [r2, #8]
	adds r5, r0, #0
	cmp r5, r4
	bge _0807FDA6
	ldrb r0, [r2, #0xe]
	cmp r0, r3
	bgt _0807FD4C
	adds r3, r0, #0
	ldrb r1, [r2, #0xf]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2, #0xf]
_0807FD4C:
	mov r1, ip
	subs r0, r1, r3
	strh r0, [r2, #0xc]
	subs r0, r7, r3
	cmp r0, #0
	bgt _0807FD5E
	ldr r1, _0807FD68 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
_0807FD5E:
	movs r1, #0xc
	ldrsh r0, [r2, r1]
	cmp r5, r0
	blt _0807FDA6
	b _0807FDA4
	.align 2, 0
_0807FD68: .4byte gUnk_02000070
_0807FD6C:
	ldrh r0, [r2, #8]
	ldrh r1, [r2, #0x20]
	adds r0, r0, r1
	adds r5, r0, #0
	subs r5, #0xa0
	cmp r4, r5
	bge _0807FDA6
	ldrb r0, [r2, #0xe]
	rsbs r0, r0, #0
	cmp r0, r3
	blt _0807FD8C
	adds r3, r0, #0
	ldrb r1, [r2, #0xf]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2, #0xf]
_0807FD8C:
	subs r0, r6, r3
	strh r0, [r2, #0xc]
	subs r0, r7, r3
	cmp r0, #7
	ble _0807FD9C
	ldr r1, _0807FDAC @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
_0807FD9C:
	movs r1, #0xc
	ldrsh r0, [r2, r1]
	cmp r0, r5
	blt _0807FDA6
_0807FDA4:
	strh r5, [r2, #0xc]
_0807FDA6:
	bl sub_08080BC4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807FDAC: .4byte gUnk_02000070

	thumb_func_start sub_0807FDB0
sub_0807FDB0: @ 0x0807FDB0
	push {lr}
	ldr r2, _0807FDC4 @ =gUnk_0811E780
	ldrb r1, [r0, #3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0807FDC4: .4byte gUnk_0811E780

	thumb_func_start sub_0807FDC8
sub_0807FDC8: @ 0x0807FDC8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0807FDE0 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r4]
	bl sub_08000108
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #3]
	strb r1, [r4]
	pop {r4, r5, pc}
	.align 2, 0
_0807FDE0: .4byte gUnk_02000070

	thumb_func_start sub_0807FDE4
sub_0807FDE4: @ 0x0807FDE4
	movs r2, #0
	movs r1, #2
	strb r1, [r0, #3]
	strh r2, [r0, #0x18]
	ldr r0, _0807FDF4 @ =gUnk_02000070
	strb r1, [r0]
	bx lr
	.align 2, 0
_0807FDF4: .4byte gUnk_02000070

	thumb_func_start sub_0807FDF8
sub_0807FDF8: @ 0x0807FDF8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0807FE18 @ =gUnk_02000070
	movs r0, #2
	strb r0, [r1]
	ldrh r0, [r4, #0x18]
	adds r0, #1
	strh r0, [r4, #0x18]
	ldrb r0, [r4, #0x10]
	cmp r0, #1
	beq _0807FE44
	cmp r0, #1
	bgt _0807FE1C
	cmp r0, #0
	beq _0807FE26
	b _0807FEB6
	.align 2, 0
_0807FE18: .4byte gUnk_02000070
_0807FE1C:
	cmp r0, #2
	beq _0807FE68
	cmp r0, #3
	beq _0807FE94
	b _0807FEB6
_0807FE26:
	ldrh r0, [r4, #0xc]
	subs r0, #4
	strh r0, [r4, #0xc]
	ldr r1, [r4, #0x30]
	ldr r0, _0807FE3C @ =gPlayerEntity
	cmp r1, r0
	bne _0807FE80
	ldr r0, [r1, #0x30]
	ldr r2, _0807FE40 @ =0xFFFFA000
	b _0807FE7C
	.align 2, 0
_0807FE3C: .4byte gPlayerEntity
_0807FE40: .4byte 0xFFFFA000
_0807FE44:
	ldrh r0, [r4, #0xa]
	adds r0, #4
	strh r0, [r4, #0xa]
	ldr r1, [r4, #0x30]
	ldr r0, _0807FE64 @ =gPlayerEntity
	cmp r1, r0
	bne _0807FE5C
	ldr r0, [r1, #0x2c]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
	str r0, [r1, #0x2c]
_0807FE5C:
	ldrh r0, [r4, #0x18]
	cmp r0, #0x3c
	bne _0807FEB6
	b _0807FE86
	.align 2, 0
_0807FE64: .4byte gPlayerEntity
_0807FE68:
	ldrh r0, [r4, #0xc]
	adds r0, #4
	strh r0, [r4, #0xc]
	ldr r1, [r4, #0x30]
	ldr r0, _0807FE90 @ =gPlayerEntity
	cmp r1, r0
	bne _0807FE80
	ldr r0, [r1, #0x30]
	movs r2, #0xc0
	lsls r2, r2, #7
_0807FE7C:
	adds r0, r0, r2
	str r0, [r1, #0x30]
_0807FE80:
	ldrh r0, [r4, #0x18]
	cmp r0, #0x28
	bne _0807FEB6
_0807FE86:
	adds r0, r4, #0
	bl sub_0807FEC8
	b _0807FEB6
	.align 2, 0
_0807FE90: .4byte gPlayerEntity
_0807FE94:
	ldrh r0, [r4, #0xa]
	subs r0, #4
	strh r0, [r4, #0xa]
	ldr r1, [r4, #0x30]
	ldr r0, _0807FEC0 @ =gPlayerEntity
	cmp r1, r0
	bne _0807FEAA
	ldr r0, [r1, #0x2c]
	ldr r2, _0807FEC4 @ =0xFFFFC000
	adds r0, r0, r2
	str r0, [r1, #0x2c]
_0807FEAA:
	ldrh r0, [r4, #0x18]
	cmp r0, #0x3c
	bne _0807FEB6
	adds r0, r4, #0
	bl sub_0807FEC8
_0807FEB6:
	movs r0, #0
	strh r0, [r4, #0x16]
	bl sub_08080BC4
	pop {r4, pc}
	.align 2, 0
_0807FEC0: .4byte gPlayerEntity
_0807FEC4: .4byte 0xFFFFC000

	thumb_func_start sub_0807FEC8
sub_0807FEC8: @ 0x0807FEC8
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0
	strb r0, [r5, #2]
	subs r0, #1
	ldr r4, _0807FEEC @ =gUnk_03003FC0
	adds r1, r4, #0
	movs r2, #0x40
	bl MemFill32
	subs r4, #0x40
	ldr r1, [r5, #0x30]
	ldrh r0, [r1, #0x2e]
	strh r0, [r4, #0x16]
	ldrh r0, [r1, #0x32]
	strh r0, [r4, #0x18]
	pop {r4, r5, pc}
	.align 2, 0
_0807FEEC: .4byte gUnk_03003FC0

	thumb_func_start sub_0807FEF0
sub_0807FEF0: @ 0x0807FEF0
	push {lr}
	ldr r2, _0807FF04 @ =gUnk_0811E78C
	ldrb r1, [r0, #3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0807FF04: .4byte gUnk_0811E78C

	thumb_func_start sub_0807FF08
sub_0807FF08: @ 0x0807FF08
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #3]
	strh r2, [r0, #0x18]
	ldr r1, _0807FF18 @ =gUnk_02000070
	movs r0, #3
	strb r0, [r1]
	bx lr
	.align 2, 0
_0807FF18: .4byte gUnk_02000070

	thumb_func_start sub_0807FF1C
sub_0807FF1C: @ 0x0807FF1C
	push {lr}
	adds r2, r0, #0
	ldr r0, _0807FF4C @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807FF48
	ldr r1, _0807FF50 @ =gUnk_02000070
	movs r0, #3
	strb r0, [r1]
	ldrh r0, [r2, #0x18]
	adds r0, #1
	strh r0, [r2, #0x18]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x13
	bls _0807FF48
	movs r0, #0
	strb r0, [r2, #2]
	bl sub_0805E5B4
_0807FF48:
	pop {pc}
	.align 2, 0
_0807FF4C: .4byte gScreenTransition
_0807FF50: .4byte gUnk_02000070

	thumb_func_start sub_0807FF54
sub_0807FF54: @ 0x0807FF54
	push {lr}
	ldr r2, _0807FF68 @ =gUnk_0811E794
	ldrb r1, [r0, #3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0807FF68: .4byte gUnk_0811E794

	thumb_func_start sub_0807FF6C
sub_0807FF6C: @ 0x0807FF6C
	push {r4, lr}
	movs r1, #1
	strb r1, [r0, #3]
	ldr r3, _0807FFC8 @ =gScreen
	ldrh r1, [r3]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3]
	adds r2, r3, #0
	adds r2, #0x60
	ldrb r0, [r2]
	movs r4, #0xb8
	lsls r4, r4, #5
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrh r1, [r2]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	movs r1, #7
	movs r4, #0
	orrs r0, r1
	strh r0, [r2]
	adds r0, r3, #0
	adds r0, #0x5a
	movs r1, #0xf0
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	bl ResetPlayer
	bl sub_080791D0
	ldr r0, _0807FFCC @ =gUnk_03004030
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _0807FFD4
	ldr r1, _0807FFD0 @ =gPlayerEntity
	movs r0, #4
	strb r0, [r1, #0x14]
	b _0807FFD8
	.align 2, 0
_0807FFC8: .4byte gScreen
_0807FFCC: .4byte gUnk_03004030
_0807FFD0: .4byte gPlayerEntity
_0807FFD4:
	ldr r0, _0807FFE0 @ =gPlayerEntity
	strb r4, [r0, #0x14]
_0807FFD8:
	bl sub_080809D4
	pop {r4, pc}
	.align 2, 0
_0807FFE0: .4byte gPlayerEntity

	thumb_func_start sub_0807FFE4
sub_0807FFE4: @ 0x0807FFE4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #2
	strb r0, [r5, #3]
	bl sub_080803D0
	adds r0, #6
	strh r0, [r5, #0x18]
	ldr r4, _0808002C @ =gUnk_0200B640
	bl sub_08080278
	strh r0, [r4]
	ldr r1, _08080030 @ =gUnk_08109194
	ldr r0, _08080034 @ =gUnk_03004030
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0]
	bl sub_080197D4
	ldr r4, _08080038 @ =gMapDataTop
	ldrh r1, [r5, #0x1e]
	lsrs r1, r1, #4
	ldrh r2, [r5, #0x20]
	lsrs r2, r2, #4
	adds r0, r4, #0
	bl sub_0807C8B0
	ldr r0, _0808003C @ =gMapDataTopSpecial
	subs r4, #4
	adds r1, r4, #0
	bl sub_0801AB08
	pop {r4, r5, pc}
	.align 2, 0
_0808002C: .4byte gUnk_0200B640
_08080030: .4byte gUnk_08109194
_08080034: .4byte gUnk_03004030
_08080038: .4byte gMapDataTop
_0808003C: .4byte gMapDataTopSpecial

	thumb_func_start sub_08080040
sub_08080040: @ 0x08080040
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r4, [r5, #0x18]
	subs r4, #6
	strh r4, [r5, #0x18]
	ldrh r0, [r5, #0x18]
	lsls r0, r0, #1
	movs r1, #3
	bl __divsi3
	strh r0, [r5, #0x1a]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r4, #0x2a
	bls _080800C6
	ldr r3, [r5, #0x30]
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	movs r2, #0xa
	ldrsh r1, [r5, r2]
	subs r2, r0, r1
	ldrh r1, [r5, #0x18]
	subs r0, r2, r1
	adds r7, r0, #0
	adds r7, #8
	cmp r7, #0
	bge _08080078
	movs r7, #0
_08080078:
	adds r0, r2, r1
	adds r6, r0, #0
	subs r6, #8
	cmp r6, #0xf0
	ble _08080084
	movs r6, #0xf0
_08080084:
	movs r1, #0x32
	ldrsh r0, [r3, r1]
	movs r2, #0xc
	ldrsh r1, [r5, r2]
	subs r2, r0, r1
	ldrh r1, [r5, #0x1a]
	subs r0, r2, r1
	adds r4, r0, #0
	adds r4, #8
	cmp r4, #0
	bge _0808009C
	movs r4, #0
_0808009C:
	adds r0, r2, r1
	adds r3, r0, #0
	subs r3, #8
	cmp r3, #0xa0
	ble _080800A8
	movs r3, #0xa0
_080800A8:
	ldr r2, _080800F0 @ =gScreen
	movs r1, #0xff
	ands r7, r1
	lsls r0, r7, #8
	ands r6, r1
	orrs r0, r6
	adds r6, r2, #0
	adds r6, #0x5a
	strh r0, [r6]
	ands r4, r1
	lsls r0, r4, #8
	ands r3, r1
	orrs r0, r3
	adds r2, #0x5e
	strh r0, [r2]
_080800C6:
	ldrh r0, [r5, #0x18]
	cmp r0, #0
	bne _080800FC
	movs r0, #3
	strb r0, [r5, #3]
	bl sub_0805E9F4
	bl sub_0807C810
	ldr r1, _080800F4 @ =gUnk_08109194
	ldr r0, _080800F8 @ =gUnk_03004030
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl sub_08080C80
	b _08080102
	.align 2, 0
_080800F0: .4byte gScreen
_080800F4: .4byte gUnk_08109194
_080800F8: .4byte gUnk_03004030
_080800FC:
	ldr r1, _08080104 @ =gUnk_02000070
	movs r0, #4
	strb r0, [r1]
_08080102:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08080104: .4byte gUnk_02000070

	thumb_func_start sub_08080108
sub_08080108: @ 0x08080108
	push {r4, r5, r6, lr}
	movs r1, #4
	strb r1, [r0, #3]
	ldr r5, _08080178 @ =gMapDataBottom
	movs r0, #0xc0
	lsls r0, r0, #6
	adds r1, r5, r0
	movs r6, #0x80
	lsls r6, r6, #6
	adds r0, r5, #0
	adds r2, r6, #0
	bl MemCopy
	ldr r4, _0808017C @ =gMapDataTop
	movs r0, #0xc0
	lsls r0, r0, #6
	adds r1, r4, r0
	adds r0, r4, #0
	adds r2, r6, #0
	bl MemCopy
	bl sub_08080368
	ldr r1, _08080180 @ =gUnk_02034480
	ldr r0, _08080184 @ =gUnk_0200B640
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _08080188 @ =gUnk_02022830
	ldr r1, _0808018C @ =gUnk_020246B0
	movs r2, #0xc0
	lsls r2, r2, #5
	bl MemCopy
	subs r5, #4
	adds r0, r5, #0
	bl sub_08080B60
	subs r4, #4
	adds r0, r4, #0
	bl sub_08080B60
	bl sub_0807BBE4
	bl sub_0807BC84
	bl sub_0805E248
	ldr r0, _08080190 @ =gUnk_02019EE0
	adds r1, r5, #0
	bl sub_0801AB08
	ldr r0, _08080194 @ =gMapDataTopSpecial
	adds r1, r4, #0
	bl sub_0801AB08
	pop {r4, r5, r6, pc}
	.align 2, 0
_08080178: .4byte gMapDataBottom
_0808017C: .4byte gMapDataTop
_08080180: .4byte gUnk_02034480
_08080184: .4byte gUnk_0200B640
_08080188: .4byte gUnk_02022830
_0808018C: .4byte gUnk_020246B0
_08080190: .4byte gUnk_02019EE0
_08080194: .4byte gMapDataTopSpecial

	thumb_func_start sub_08080198
sub_08080198: @ 0x08080198
	push {r4, lr}
	movs r1, #5
	strb r1, [r0, #3]
	movs r4, #0
	movs r1, #0xff
	strh r1, [r0, #0x1c]
	bl LoadRoom
	bl sub_0804AFF4
	ldr r0, _080801B8 @ =gUnk_02000070
	strb r4, [r0]
	bl sub_080805F8
	pop {r4, pc}
	.align 2, 0
_080801B8: .4byte gUnk_02000070

	thumb_func_start sub_080801BC
sub_080801BC: @ 0x080801BC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r4, [r5, #0x18]
	adds r4, #6
	strh r4, [r5, #0x18]
	ldrh r0, [r5, #0x18]
	lsls r0, r0, #1
	movs r1, #3
	bl __divsi3
	strh r0, [r5, #0x1a]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r4, #0x1e
	bls _08080232
	ldr r2, [r5, #0x30]
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	movs r3, #0xa
	ldrsh r0, [r5, r3]
	subs r0, r1, r0
	ldrh r1, [r5, #0x18]
	subs r7, r0, r1
	cmp r7, #0
	bge _080801F0
	movs r7, #0
_080801F0:
	adds r6, r0, r1
	cmp r6, #0xf0
	ble _080801F8
	movs r6, #0xf0
_080801F8:
	movs r0, #0x32
	ldrsh r1, [r2, r0]
	movs r2, #0xc
	ldrsh r0, [r5, r2]
	subs r0, r1, r0
	ldrh r1, [r5, #0x1a]
	subs r4, r0, r1
	cmp r4, #0
	bge _0808020C
	movs r4, #0
_0808020C:
	adds r3, r0, r1
	cmp r3, #0xa0
	ble _08080214
	movs r3, #0xa0
_08080214:
	ldr r2, _08080260 @ =gScreen
	movs r1, #0xff
	ands r7, r1
	lsls r0, r7, #8
	ands r6, r1
	orrs r0, r6
	adds r6, r2, #0
	adds r6, #0x5a
	strh r0, [r6]
	ands r4, r1
	lsls r0, r4, #8
	ands r3, r1
	orrs r0, r3
	adds r2, #0x5e
	strh r0, [r2]
_08080232:
	ldrh r0, [r5, #0x1c]
	cmp r0, #0
	bne _08080268
	strb r0, [r5, #2]
	strh r0, [r5]
	bl sub_0805E5B4
	ldr r1, _08080260 @ =gScreen
	ldrh r2, [r1]
	ldr r0, _08080264 @ =0x0000BFFF
	ands r0, r2
	strh r0, [r1]
	adds r2, r1, #0
	adds r2, #0x60
	ldrb r0, [r2]
	strh r0, [r2]
	adds r1, #0x62
	ldrh r2, [r1]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r2
	strh r0, [r1]
	b _08080272
	.align 2, 0
_08080260: .4byte gScreen
_08080264: .4byte 0x0000BFFF
_08080268:
	ldr r0, _08080274 @ =gUnk_02000070
	movs r1, #4
	strb r1, [r0]
	movs r0, #0
	strh r0, [r5, #0x1c]
_08080272:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08080274: .4byte gUnk_02000070

	thumb_func_start sub_08080278
sub_08080278: @ 0x08080278
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08080344 @ =gUnk_02022830
	mov ip, r0
	ldr r1, _08080348 @ =gRoomControls
	ldrh r0, [r1, #0x1e]
	lsrs r0, r0, #4
	str r0, [sp]
	ldrh r0, [r1, #0x20]
	lsrs r0, r0, #4
	lsls r0, r0, #6
	str r0, [sp, #4]
	movs r5, #0
	mov sl, r5
	cmp r5, r0
	bhs _08080336
	mov sb, r5
_080802A2:
	movs r1, #0
	mov r8, r1
	ldr r0, [sp]
	cmp r8, r0
	bhs _08080328
	ldr r4, _0808034C @ =gMapDataTop
	add r4, sb
	ldr r7, _08080350 @ =gUnk_0200E654
	add r7, sb
	ldr r3, _08080354 @ =gMapDataBottom
	add r3, sb
	ldr r6, _08080358 @ =gUnk_02028EB4
	add r6, sb
_080802BC:
	mov r2, sl
	add r2, r8
	ldrh r0, [r6]
	ldrh r1, [r3]
	cmp r0, r1
	beq _080802EA
	ldr r0, _0808035C @ =0x00003FFF
	cmp r1, r0
	bhi _080802EA
	adds r0, #1
	adds r1, r0, #0
	adds r0, r2, #0
	orrs r0, r1
	mov r1, ip
	strh r0, [r1]
	ldrh r0, [r3]
	strh r0, [r1, #2]
	movs r0, #4
	add ip, r0
	adds r5, #1
	ldr r0, _08080360 @ =0x000005FF
	cmp r5, r0
	bhi _08080336
_080802EA:
	ldrh r0, [r7]
	ldrh r1, [r4]
	cmp r0, r1
	beq _08080316
	ldr r0, _0808035C @ =0x00003FFF
	cmp r1, r0
	bhi _08080316
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	orrs r2, r0
	mov r0, ip
	strh r2, [r0]
	ldrh r0, [r4]
	mov r1, ip
	strh r0, [r1, #2]
	movs r0, #4
	add ip, r0
	adds r5, #1
	ldr r0, _08080364 @ =0x000007FF
	cmp r5, r0
	bhi _08080336
_08080316:
	adds r4, #2
	adds r7, #2
	adds r3, #2
	adds r6, #2
	movs r1, #1
	add r8, r1
	ldr r0, [sp]
	cmp r8, r0
	blo _080802BC
_08080328:
	movs r1, #0x80
	add sb, r1
	movs r0, #0x40
	add sl, r0
	ldr r1, [sp, #4]
	cmp sl, r1
	blo _080802A2
_08080336:
	adds r0, r5, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08080344: .4byte gUnk_02022830
_08080348: .4byte gRoomControls
_0808034C: .4byte gMapDataTop
_08080350: .4byte gUnk_0200E654
_08080354: .4byte gMapDataBottom
_08080358: .4byte gUnk_02028EB4
_0808035C: .4byte 0x00003FFF
_08080360: .4byte 0x000005FF
_08080364: .4byte 0x000007FF

	thumb_func_start sub_08080368
sub_08080368: @ 0x08080368
	push {r4, r5, r6, r7, lr}
	ldr r0, _08080384 @ =gUnk_03004030
	ldr r1, _08080388 @ =gRoomControls
	ldrb r0, [r0, #0xa]
	ldrb r1, [r1, #4]
	cmp r0, r1
	beq _08080390
	cmp r0, #0xff
	beq _08080390
	ldr r1, _0808038C @ =gUnk_02034480
	movs r0, #0
	strh r0, [r1]
	b _080803BE
	.align 2, 0
_08080384: .4byte gUnk_03004030
_08080388: .4byte gRoomControls
_0808038C: .4byte gUnk_02034480
_08080390:
	ldr r5, _080803C0 @ =gUnk_020246B0
	ldr r0, _080803C4 @ =gUnk_02034480
	ldrh r0, [r0]
	lsls r6, r0, #1
	movs r4, #0
	cmp r4, r6
	bhs _080803B8
	ldr r0, _080803C8 @ =0x00000FFF
	adds r7, r0, #0
_080803A2:
	ldrh r0, [r5, #2]
	ldrh r2, [r5]
	adds r1, r7, #0
	ands r1, r2
	lsrs r2, r2, #0xe
	bl sub_0807B9B8
	adds r5, #4
	adds r4, #2
	cmp r4, r6
	blo _080803A2
_080803B8:
	ldr r1, _080803CC @ =gUnk_02000070
	movs r0, #0
	strb r0, [r1]
_080803BE:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080803C0: .4byte gUnk_020246B0
_080803C4: .4byte gUnk_02034480
_080803C8: .4byte 0x00000FFF
_080803CC: .4byte gUnk_02000070

	thumb_func_start sub_080803D0
sub_080803D0: @ 0x080803D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	ldr r1, _080804F0 @ =gRoomControls
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	ldrh r2, [r1, #6]
	subs r0, r0, r2
	str r0, [sp, #0x18]
	ldr r3, [r1, #0x30]
	movs r4, #0x2e
	ldrsh r0, [r3, r4]
	subs r0, r0, r2
	str r0, [sp, #0x10]
	movs r2, #0xc
	ldrsh r0, [r1, r2]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	str r0, [sp, #0x1c]
	movs r4, #0x32
	ldrsh r0, [r3, r4]
	subs r0, r0, r1
	str r0, [sp, #0x14]
	movs r0, #0x3c
	str r0, [sp, #8]
_08080408:
	movs r7, #0
	ldr r1, [sp, #8]
	adds r1, #6
	str r1, [sp, #8]
	adds r2, r1, #0
	muls r2, r1, r2
	mov sl, r2
	lsls r4, r1, #1
	adds r0, r4, #0
	movs r1, #3
	bl __divsi3
	str r0, [sp, #0xc]
	adds r1, r0, #0
	muls r1, r0, r1
	mov sb, r1
	movs r2, #0
	str r2, [sp, #4]
	rsbs r4, r4, #0
	adds r4, #1
	mov r0, sb
	muls r0, r4, r0
	mov r4, sl
	lsls r5, r4, #1
	adds r4, r0, r5
	ldr r0, [sp, #8]
	mov r6, sb
	muls r6, r0, r6
	adds r0, r6, #0
	mov r1, sl
	bl __divsi3
	adds r2, r0, #0
	cmp r7, r2
	bgt _08080506
	ldr r1, [sp, #0x18]
	adds r1, #0xf8
	str r1, [sp, #0x20]
	mov r1, sl
	adds r0, r5, r1
	lsls r3, r0, #1
	str r6, [sp, #0x2c]
	ldr r0, [sp, #8]
	lsls r1, r0, #2
	rsbs r1, r1, #0
	adds r1, #4
	mov r8, r1
	rsbs r0, r0, #0
	adds r0, #8
	ldr r1, [sp, #0x10]
	adds r6, r0, r1
	ldr r0, [sp, #8]
	adds r5, r0, r1
	mov r0, r8
	mov r1, sb
	muls r1, r0, r1
	mov r8, r1
_0808047A:
	ldr r1, [sp, #0x1c]
	adds r1, #0xa8
	mov ip, r1
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #4]
	adds r0, r0, r1
	str r0, [sp, #0x34]
	cmp ip, r0
	ble _080804A0
	ldr r0, [sp, #0x20]
	cmp r0, r5
	ble _08080496
	movs r0, #1
	orrs r7, r0
_08080496:
	ldr r1, [sp, #0x18]
	cmp r1, r6
	bge _080804A0
	movs r0, #2
	orrs r7, r0
_080804A0:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #4]
	subs r0, r0, r1
	mov ip, r0
	adds r0, #8
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	bge _080804C4
	ldr r0, [sp, #0x20]
	cmp r0, r5
	ble _080804BA
	movs r0, #4
	orrs r7, r0
_080804BA:
	ldr r1, [sp, #0x18]
	cmp r1, r6
	bge _080804C4
	movs r0, #8
	orrs r7, r0
_080804C4:
	cmp r4, #0
	ble _080804F4
	mov r2, r8
	adds r0, r2, r3
	adds r4, r4, r0
	ldr r0, [sp, #0x2c]
	mov r1, sb
	subs r0, r0, r1
	str r0, [sp, #0x2c]
	lsls r0, r1, #2
	add r8, r0
	adds r6, #1
	subs r5, #1
	ldr r0, [sp, #0x2c]
	mov r1, sl
	str r3, [sp, #0x30]
	bl __divsi3
	adds r2, r0, #0
	ldr r3, [sp, #0x30]
	b _080804F6
	.align 2, 0
_080804F0: .4byte gRoomControls
_080804F4:
	adds r4, r4, r3
_080804F6:
	mov r1, sl
	lsls r0, r1, #2
	adds r3, r3, r0
	ldr r0, [sp, #4]
	adds r0, #1
	str r0, [sp, #4]
	cmp r0, r2
	ble _0808047A
_08080506:
	movs r1, #0
	str r1, [sp]
	ldr r2, [sp, #0xc]
	str r2, [sp, #4]
	mov r4, sb
	lsls r6, r4, #1
	lsls r0, r2, #1
	rsbs r0, r0, #0
	adds r0, #1
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	adds r4, r6, r0
	mov r5, sl
	muls r5, r2, r5
	adds r0, r5, #0
	mov r1, sb
	bl __divsi3
	adds r2, r0, #0
	ldr r0, [sp]
	cmp r0, r2
	bgt _080805E4
	ldr r1, [sp, #0x18]
	adds r1, #0xf8
	str r1, [sp, #0x24]
	mov r1, sb
	adds r0, r6, r1
	lsls r0, r0, #1
	mov r8, r0
	ldr r3, [sp, #0x10]
	adds r3, #8
	ldr r6, [sp, #0x10]
	str r5, [sp, #0x28]
	ldr r1, [sp, #4]
	lsls r0, r1, #2
	rsbs r0, r0, #0
	adds r0, #4
	mov r5, sl
	muls r5, r0, r5
_08080556:
	ldr r0, [sp, #0x1c]
	adds r0, #0xa8
	mov ip, r0
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	adds r1, r1, r0
	str r1, [sp, #0x34]
	cmp ip, r1
	ble _0808057C
	ldr r1, [sp, #0x24]
	cmp r1, r6
	ble _08080572
	movs r0, #0x10
	orrs r7, r0
_08080572:
	ldr r0, [sp, #0x18]
	cmp r0, r3
	bge _0808057C
	movs r0, #0x20
	orrs r7, r0
_0808057C:
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	subs r1, r1, r0
	mov ip, r1
	mov r0, ip
	adds r0, #8
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	bge _080805A2
	ldr r0, [sp, #0x24]
	cmp r0, r6
	ble _08080598
	movs r0, #0x40
	orrs r7, r0
_08080598:
	ldr r1, [sp, #0x18]
	cmp r1, r3
	bge _080805A2
	movs r0, #0x80
	orrs r7, r0
_080805A2:
	cmp r4, #0
	ble _080805CE
	mov r2, r8
	adds r0, r2, r5
	adds r4, r4, r0
	ldr r0, [sp, #0x28]
	mov r1, sl
	subs r0, r0, r1
	str r0, [sp, #0x28]
	lsls r0, r1, #2
	adds r5, r5, r0
	ldr r2, [sp, #4]
	subs r2, #1
	str r2, [sp, #4]
	ldr r0, [sp, #0x28]
	mov r1, sb
	str r3, [sp, #0x30]
	bl __divsi3
	adds r2, r0, #0
	ldr r3, [sp, #0x30]
	b _080805D0
_080805CE:
	add r4, r8
_080805D0:
	mov r1, sb
	lsls r0, r1, #2
	add r8, r0
	subs r3, #1
	adds r6, #1
	ldr r0, [sp]
	adds r0, #1
	str r0, [sp]
	cmp r0, r2
	ble _08080556
_080805E4:
	cmp r7, #0
	beq _080805EA
	b _08080408
_080805EA:
	ldr r0, [sp, #8]
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080805F8
sub_080805F8: @ 0x080805F8
	push {lr}
	ldr r0, _08080610 @ =gRoomControls
	ldrb r0, [r0, #4]
	subs r0, #0xc
	cmp r0, #0xd
	bhi _0808065C
	lsls r0, r0, #2
	ldr r1, _08080614 @ =_08080618
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08080610: .4byte gRoomControls
_08080614: .4byte _08080618
_08080618: @ jump table
	.4byte _08080650 @ case 0
	.4byte _0808065C @ case 1
	.4byte _0808065C @ case 2
	.4byte _08080650 @ case 3
	.4byte _0808065C @ case 4
	.4byte _0808065C @ case 5
	.4byte _0808065C @ case 6
	.4byte _08080650 @ case 7
	.4byte _08080650 @ case 8
	.4byte _0808065C @ case 9
	.4byte _08080650 @ case 10
	.4byte _08080650 @ case 11
	.4byte _0808065C @ case 12
	.4byte _08080650 @ case 13
_08080650:
	ldr r1, _08080658 @ =gUnk_03004030
	movs r0, #1
	b _08080660
	.align 2, 0
_08080658: .4byte gUnk_03004030
_0808065C:
	ldr r1, _08080664 @ =gUnk_03004030
	movs r0, #0
_08080660:
	strb r0, [r1, #8]
	pop {pc}
	.align 2, 0
_08080664: .4byte gUnk_03004030

	thumb_func_start sub_08080668
sub_08080668: @ 0x08080668
	push {r4, r5, lr}
	ldr r5, _080806A4 @ =gRoomControls
	adds r0, r5, #0
	movs r1, #0x38
	bl MemClear
	ldr r4, _080806A8 @ =gUnk_03004030
	adds r0, r4, #0
	movs r1, #0xc
	bl MemClear
	ldr r0, _080806AC @ =0x0000FFFF
	strh r0, [r5, #0x22]
	movs r0, #0xff
	strb r0, [r4, #0xa]
	ldr r1, _080806B0 @ =gUnk_02034480
	movs r0, #0
	strh r0, [r1]
	ldr r0, _080806B4 @ =gUnk_02019EE0
	movs r4, #0x80
	lsls r4, r4, #8
	adds r1, r4, #0
	bl MemClear
	ldr r0, _080806B8 @ =gMapDataTopSpecial
	adds r1, r4, #0
	bl MemClear
	pop {r4, r5, pc}
	.align 2, 0
_080806A4: .4byte gRoomControls
_080806A8: .4byte gUnk_03004030
_080806AC: .4byte 0x0000FFFF
_080806B0: .4byte gUnk_02034480
_080806B4: .4byte gUnk_02019EE0
_080806B8: .4byte gMapDataTopSpecial

	thumb_func_start sub_080806BC
sub_080806BC: @ 0x080806BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov r8, r1
	adds r7, r2, #0
	adds r6, r3, #0
	ldr r0, _08080710 @ =gArea
	ldr r1, _08080714 @ =0x0000085C
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r5, [r0, #0x18]
	ldrh r0, [r5]
	ldr r1, _08080718 @ =0x0000FFFF
	cmp r0, r1
	beq _08080728
	mov sl, r1
_080806E2:
	ldrh r2, [r5]
	movs r0, #1
	lsls r0, r2
	ands r0, r6
	cmp r0, #0
	beq _08080720
	ldr r1, _0808071C @ =gUnk_0811E7AC
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r5, #0
	mov r1, sb
	mov r2, r8
	adds r3, r7, #0
	bl _call_via_r4
	cmp r0, #0
	beq _08080720
	adds r0, r5, #0
	bl DoExitTransition
	movs r0, #1
	b _0808072A
	.align 2, 0
_08080710: .4byte gArea
_08080714: .4byte 0x0000085C
_08080718: .4byte 0x0000FFFF
_0808071C: .4byte gUnk_0811E7AC
_08080720:
	adds r5, #0x14
	ldrh r0, [r5]
	cmp r0, sl
	bne _080806E2
_08080728:
	movs r0, #0
_0808072A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08080734
sub_08080734: @ 0x08080734
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r0, _08080778 @ =gArea
	ldr r1, _0808077C @ =0x0000085C
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r4, [r0, #0x18]
	movs r0, #0xa
	mov r8, r0
	ldrh r0, [r4]
	ldr r1, _08080780 @ =0x0000FFFF
	cmp r0, r1
	beq _0808078C
	adds r7, r1, #0
_08080756:
	movs r0, #1
	ldrh r1, [r4]
	lsls r0, r1
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _08080784
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_08080808
	cmp r0, #0
	beq _08080784
	adds r0, r4, #0
	b _0808078E
	.align 2, 0
_08080778: .4byte gArea
_0808077C: .4byte 0x0000085C
_08080780: .4byte 0x0000FFFF
_08080784:
	adds r4, #0x14
	ldrh r0, [r4]
	cmp r0, r7
	bne _08080756
_0808078C:
	movs r0, #0
_0808078E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08080794
sub_08080794: @ 0x08080794
	push {r4, lr}
	adds r4, r0, #0
	cmp r3, #1
	beq _080807C0
	cmp r3, #1
	blo _080807AC
	cmp r3, #2
	beq _080807D4
	cmp r3, #3
	beq _080807E8
_080807A8:
	movs r0, #0
	b _08080800
_080807AC:
	ldr r0, _080807BC @ =gRoomControls
	ldrh r0, [r0, #0x1e]
	lsrs r0, r0, #1
	movs r3, #1
	cmp r0, r1
	bhs _080807F6
	movs r3, #2
	b _080807F6
	.align 2, 0
_080807BC: .4byte gRoomControls
_080807C0:
	ldr r0, _080807D0 @ =gRoomControls
	ldrh r0, [r0, #0x20]
	lsrs r0, r0, #1
	movs r3, #4
	cmp r0, r2
	bhs _080807F6
	movs r3, #8
	b _080807F6
	.align 2, 0
_080807D0: .4byte gRoomControls
_080807D4:
	ldr r0, _080807E4 @ =gRoomControls
	ldrh r0, [r0, #0x1e]
	lsrs r0, r0, #1
	movs r3, #0x10
	cmp r0, r1
	bhs _080807F6
	movs r3, #0x20
	b _080807F6
	.align 2, 0
_080807E4: .4byte gRoomControls
_080807E8:
	ldr r0, _08080804 @ =gRoomControls
	ldrh r0, [r0, #0x20]
	lsrs r0, r0, #1
	movs r3, #0x40
	cmp r0, r2
	bhs _080807F6
	movs r3, #0x80
_080807F6:
	ldrb r0, [r4, #0xa]
	ands r0, r3
	cmp r0, #0
	beq _080807A8
	movs r0, #1
_08080800:
	pop {r4, pc}
	.align 2, 0
_08080804: .4byte gRoomControls

	thumb_func_start sub_08080808
sub_08080808: @ 0x08080808
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r2, #0
	ldrb r0, [r3, #0xa]
	lsls r0, r0, #1
	ldr r2, _08080838 @ =gUnk_0811E7BC
	adds r4, r0, r2
	ldrb r0, [r4]
	ldrh r2, [r3, #2]
	subs r1, r1, r2
	adds r1, r1, r0
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0808083C
	ldrb r1, [r4, #1]
	ldrh r0, [r3, #4]
	subs r0, r5, r0
	adds r0, r0, r1
	lsls r1, r1, #1
	cmp r0, r1
	bhi _0808083C
	movs r0, #1
	b _0808083E
	.align 2, 0
_08080838: .4byte gUnk_0811E7BC
_0808083C:
	movs r0, #0
_0808083E:
	pop {r4, r5, pc}

	thumb_func_start DoExitTransition
DoExitTransition: @ 0x08080840
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0808085C @ =gScreenTransition
	movs r1, #1
	strb r1, [r0, #8]
	adds r2, r0, #0
	adds r2, #0xc
	ldrh r1, [r4, #6]
	ldr r0, _08080860 @ =0x000003FF
	cmp r1, r0
	bhi _08080864
	strh r1, [r2, #4]
	b _08080872
	.align 2, 0
_0808085C: .4byte gScreenTransition
_08080860: .4byte 0x000003FF
_08080864:
	ldr r0, _08080880 @ =gRoomControls
	ldr r0, [r0, #0x30]
	ldrh r1, [r0, #0x2e]
	ldr r3, _08080884 @ =0xFFFF8000
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #4]
_08080872:
	ldrh r1, [r4, #8]
	ldr r0, _08080888 @ =0x000003FF
	cmp r1, r0
	bhi _0808088C
	strh r1, [r2, #6]
	b _0808089A
	.align 2, 0
_08080880: .4byte gRoomControls
_08080884: .4byte 0xFFFF8000
_08080888: .4byte 0x000003FF
_0808088C:
	ldr r0, _080808CC @ =gRoomControls
	ldr r0, [r0, #0x30]
	ldrh r1, [r0, #0x32]
	ldr r3, _080808D0 @ =0xFFFF8000
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #6]
_0808089A:
	ldrb r0, [r4, #0xb]
	strb r0, [r2]
	ldrb r0, [r4, #0xc]
	strb r0, [r2, #1]
	ldrb r0, [r4, #0xd]
	strb r0, [r2, #8]
	ldrb r0, [r4, #0xe]
	strb r0, [r2, #3]
	ldrb r0, [r4, #0xf]
	strb r0, [r2, #2]
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _080808B8
	bl SoundReq
_080808B8:
	ldr r0, _080808D4 @ =gUnk_0811E7C4
	ldrh r1, [r4]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r4, #0xa]
	ldr r1, [r1]
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080808CC: .4byte gRoomControls
_080808D0: .4byte 0xFFFF8000
_080808D4: .4byte gUnk_0811E7C4
