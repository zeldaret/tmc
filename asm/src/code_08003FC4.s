	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

@ r0 = Entity*
@ r1 = Gravity strength
@ returns z pos
	thumb_func_start GravityUpdate
GravityUpdate: @ 0x08003FC4

	adds r3, r0, #0
	ldr r0, [r3, #0x34]
	ldr r2, [r3, #0x20]
	subs r0, r0, r2
	bpl hitground
	subs r2, r2, r1
	str r0, [r3, #0x34]
	str r2, [r3, #0x20]
	bx lr
hitground:
	movs r0, #0
	str r0, [r3, #0x34]
	str r0, [r3, #0x20]
	bx lr

	non_word_aligned_thumb_func_start sub_08003FDE
sub_08003FDE: @ 0x08003FDE
	push {r0, lr}
	bl CheckEntityPickup
	cmp r0, #0
	pop {r2}
	beq _08003FF0
	adds r0, r2, #0
	bl sub_0806F58C
_08003FF0:
	pop {pc}

	non_word_aligned_thumb_func_start CheckEntityPickup
CheckEntityPickup: @ 0x08003FF2
	push {r4, r5, r6, r7, lr}
	ldr r4, [r1, #0x48]
	ldrb r5, [r4, #6]
	ldrb r6, [r4, #7]
	adds r2, r2, r5
	adds r3, r3, r6
	ldrh r5, [r1, #0x2e]
	movs r7, #0
	ldrsb r7, [r4, r7]
	ldrb r6, [r1, #0x18]
	lsrs r6, r6, #3
	blo _0800400C
	rsbs r7, r7, #0
_0800400C:
	adds r5, r5, r7
	ldrh r6, [r1, #0x32]
	movs r7, #1
	ldrsb r7, [r4, r7]
	adds r6, r6, r7
	movs r4, #0x38
	ldrb r7, [r0, r4]
	ldrb r4, [r1, r4]
	ands r7, r4
	movs r4, #3
	cmp r7, r4
	beq _08004048
	cmp r2, #0
	beq _08004034
	ldrh r4, [r0, #0x2e]
	subs r4, r4, r5
	adds r4, r4, r2
	lsls r2, r2, #1
	cmp r2, r4
	blo _08004048
_08004034:
	cmp r3, #0
	beq _08004044
	ldrh r4, [r0, #0x32]
	subs r4, r4, r6
	adds r4, r4, r3
	lsls r3, r3, #1
	cmp r3, r4
	blo _08004048
_08004044:
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_08004048:
	movs r0, #0
	pop {r4, r5, r6, r7, pc}

	thumb_func_start DrawEntity
DrawEntity: @ 0x0800404C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r0, #0x18]
	movs r2, #3
	ands r1, r2
	beq _0800409A
	cmp r1, #3
	beq _08004064
	bl sub_080040A2
	cmp r0, #0
	beq _0800409A
_08004064:
	ldrb r1, [r4, #0x19]
	movs r2, #0xc0
	ands r1, r2
	lsrs r1, r1, #4
	ldr r2, _08004358 @ =gUnk_081326EC
	ldr r1, [r2, r1]
	ldrb r2, [r1]
	cmp r2, #0x40
	bhs _0800407E
	adds r2, #1
	strb r2, [r1]
	lsls r2, r2, #2
	str r4, [r1, r2]
_0800407E:
	movs r2, #0
	ldr r1, _0800435C @ =gUnk_02024048
	ldrb r5, [r1]
	strb r2, [r1]
	cmp r5, #0
	beq _080040A0
	ldr r4, _08004360 @ =gUnk_02021F20
_0800408C:
	ldrh r0, [r4]
	bl SoundReq
	adds r4, #2
	subs r5, #1
	bne _0800408C
	pop {r4, r5, pc}
_0800409A:
	ldr r1, _08004364 @ =gUnk_02024048
	movs r2, #0
	strb r2, [r1]
_080040A0:
	pop {r4, r5, pc}

	non_word_aligned_thumb_func_start sub_080040A2
sub_080040A2: @ 0x080040A2
	ldrb r1, [r0, #0x18]
	lsrs r1, r1, #2
	bhs _080040D0

	thumb_func_start CheckOnScreen
CheckOnScreen: @ 0x080040A8
	ldr r1, _08004368 @ =gRoomControls
	movs r2, #0x2e
	ldrsh r2, [r0, r2]
	ldrh r3, [r1, #0xa]
	subs r2, r2, r3
	adds r2, #0x3f
	ldr r3, _0800436C @ =0x0000016E
	cmp r2, r3
	bhs _080040D4
	movs r2, #0x32
	ldrsh r2, [r0, r2]
	ldrh r3, [r1, #0xc]
	subs r2, r2, r3
	movs r3, #0x36
	ldrsh r3, [r0, r3]
	adds r2, r2, r3
	adds r2, #0x3f
	ldr r3, _08004370 @ =0x0000011E
	cmp r2, r3
	bhs _080040D4
_080040D0:
	movs r0, #1
	bx lr
_080040D4:
	movs r0, #0
	bx lr

	thumb_func_start sub_080040D8
sub_080040D8: @ 0x080040D8
	push {lr}
	bl _080040F2
	adds r0, r2, #0
	pop {pc}

	non_word_aligned_thumb_func_start sub_080040E2
sub_080040E2: @ 0x080040E2
	push {lr}
	bl sub_080040EC
	adds r0, r2, #0
	pop {pc}

	thumb_func_start sub_080040EC
sub_080040EC: @ 0x080040EC
	ldrh r2, [r0, #0x2e]
	ldrh r3, [r0, #0x32]
	b _080040F2
_080040F2:
	push {r2, r3, r4, lr}
	ldr r4, _08004374 @ =gRoomControls + 6
	ldrh r4, [r4]
	subs r2, r2, r4
	ldr r4, _08004378 @ =gRoomControls + 8
	ldrh r4, [r4]
	subs r3, r3, r4
	ldr r4, _0800437C @ =0x000003F0
	ands r2, r4
	ands r3, r4
	lsrs r2, r2, #4
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0x38
	ldrb r3, [r0, r3]
	lsls r3, r3, #2
	ldr r4, _08004380 @ =gCollisionDataPtrs
	ldr r3, [r4, r3]
	ldrb r4, [r3, r2]
	pop {r2, r3}
	cmp r4, #0x10
	bhs _0800412C
	lsrs r3, r3, #4
	bhs _08004124
	lsrs r4, r4, #2
_08004124:
	lsrs r2, r2, #4
	bhs _08004162
	lsrs r4, r4, #1
	b _08004162
_0800412C:
	cmp r4, #0xff
	beq _08004162
	subs r4, #0x10
	lsls r4, r4, #1
	ldrh r4, [r1, r4]
	movs r1, #0xf
	ands r1, r2
	cmp r1, #4
	blo _0800414C
	lsrs r4, r4, #1
	cmp r1, #8
	blo _0800414C
	lsrs r4, r4, #1
	cmp r1, #0xc
	blo _0800414C
	lsrs r4, r4, #1
_0800414C:
	movs r1, #0xf
	ands r1, r3
	cmp r1, #4
	blo _08004162
	lsrs r4, r4, #4
	cmp r1, #8
	blo _08004162
	lsrs r4, r4, #4
	cmp r1, #0xc
	blo _08004162
	lsrs r4, r4, #4
_08004162:
	movs r2, #1
	ands r2, r4
	pop {r4, pc}

	thumb_func_start SnapToTile
SnapToTile: @ 0x08004168
	ldr r3, _08004384 @ =0x000FFFFF
	ldr r1, _08004388 @ =0x00080000
	ldr r2, [r0, #0x2c] // x
	bics r2, r3 // align to grid
	adds r2, r1 // add half of a tile
	str r2, [r0, #0x2c]
	ldr r2, [r0, #0x30] // y
	bics r2, r3
	adds r2, r1
	str r2, [r0, #0x30]
	bx lr

	non_word_aligned_thumb_func_start sub_0800417E
sub_0800417E: @ 0x0800417E
	ldrb r2, [r0, #0x15]
	ldr r3, _0800438C @ =0x0000EE00
	tst r1, r3
	beq _0800418A
	movs r3, #0x20
	subs r2, r3, r2
_0800418A:
	movs r3, #0xee
	tst r1, r3
	beq _08004194
	movs r3, #0x10
	subs r2, r3, r2
_08004194:
	movs r3, #0x1f
	ands r2, r3
	strb r2, [r0, #0x15]
	bx lr

	thumb_func_start sub_0800419C
sub_0800419C: @ 0x0800419C
	push {r5, r6, lr}
	b _080041B0

	thumb_func_start EntityInRectRadius
EntityInRectRadius: @ 0x080041A0
	push {r5, r6, lr}
	movs r6, #0x38
	ldrb r5, [r0, r6]
	ldrb r6, [r1, r6]
	ands r5, r6
	movs r6, #3
	tst r5, r6
	beq _080041D8
_080041B0:
	cmp r2, #0
	beq _080041C2
	ldrh r5, [r0, #0x2e]
	ldrh r6, [r1, #0x2e]
	subs r5, r5, r6
	adds r5, r5, r2
	lsls r2, r2, #1
	cmp r2, r5
	blo _080041D8
_080041C2:
	cmp r3, #0
	beq _080041D4
	ldrh r5, [r0, #0x32]
	ldrh r6, [r1, #0x32]
	subs r5, r5, r6
	adds r5, r5, r3
	lsls r3, r3, #1
	cmp r3, r5
	blo _080041D8
_080041D4:
	movs r0, #1
	pop {r5, r6, pc}
_080041D8:
	movs r0, #0
	pop {r5, r6, pc}

	thumb_func_start sub_080041DC
sub_080041DC: @ 0x080041DC
	push {r1, r2}
	movs r2, #0x32
	ldrsh r1, [r0, r2]
	movs r3, #0x2e
	ldrsh r0, [r0, r3]
	pop {r2, r3}

	thumb_func_start sub_080041E8
sub_080041E8: @ 0x080041E8
	subs r0, r0, r2
	subs r1, r1, r3

	thumb_func_start CalcDistance
CalcDistance: @ 0x080041EC
	adds r2, r0, #0
	muls r0, r2, r0
	adds r3, r1, #0
	muls r1, r3, r1
	push {lr}
	adds r0, r0, r1
	lsls r0, r0, #8
	bl Sqrt
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_08004202
sub_08004202: @ 0x08004202
	push {r1, lr}
	ldrb r1, [r0, #0x14]
	bl sub_08004212
	pop {r0}
	str r1, [r0]
	adds r0, r2, #0
	pop {pc}

	non_word_aligned_thumb_func_start sub_08004212
sub_08004212: @ 0x08004212
	push {r4}
	adds r4, r1, #0
	movs r3, #3
	tst r4, r3
	beq _08004226
	movs r3, #2
	lsrs r4, r4, #3
	blo _08004224
	rsbs r3, r3, #0
_08004224:
	adds r2, r2, r3
_08004226:
	adds r4, r1, #0
	movs r3, #3
	ands r4, r3
	cmp r4, #2
	beq _0800423C
	movs r3, #0x80
	adds r1, #1
	lsrs r1, r1, #3
	bhs _0800423A
	rsbs r3, r3, #0
_0800423A:
	adds r2, r2, r3
_0800423C:
	ldr r3, _08004390 @ =0x00001FFF
	ands r2, r3
	movs r4, #0x38
	ldrb r4, [r0, r4]
	lsls r4, r4, #3
	ldr r3, _08004394 @ =gMapDataPtrs
	adds r3, r3, r4
	ldr r4, [r3]
	ldrh r1, [r4, r2]
	ldr r4, _08004398 @ =0x00004000
	tst r1, r4
	bne _0800425C
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x10
	ldr r4, [r3, #4]
	ldrh r1, [r4, r1]
_0800425C:
	pop {r4}
	bx lr

	thumb_func_start InitializeAnimation	@ r0 = Entity*, r1 = Frame*
InitializeAnimation: @ 0x08004260
	movs r2, #0x58			@ anim idx
	strb r1, [r0, r2]

	ldrh r3, [r0, #0x12]	@ Sprite idx
	lsls r3, r3, #4			@ *= 16

	ldr r2, _0800439C @ =gSpritePtrs

	ldr r2, [r2, r3]		@ Load AnimData
	lsls r1, r1, #2			@ *= 4

	ldr r1, [r2, r1]		@ AnimData->???
	str r1, [r0, #0x5c]
	b FrameZero

	thumb_func_start GetNextFrame
GetNextFrame: @ 0x08004274
	movs r1, #1

	non_word_aligned_thumb_func_start UpdateAnimationVariableFrames
UpdateAnimationVariableFrames: @ 0x08004276
	movs r3, #0x59
	ldrb r2, [r0, r3]	@ Decrease frame timer
	subs r2, r2, r1

	beq FrameZero		@ Frame timer is 0
	ble FrameNeg		@ Frame timer is below 0

	strb r2, [r0, r3]

	bx lr

FrameNeg:
	ldr r1, [r0, #0x5c]	@ Load frame data

_08004286:
	ldrb r3, [r1, #1]
	adds r2, r2, r3

	bgt _0800429C		@ Frame idx greater (?)

	ldrb r3, [r1, #3]
	adds r1, #4
	lsrs r3, r3, #8		@ Branch if != 0xFF

	blo _08004286

	ldrb r3, [r1]
	lsls r3, r3, #2
	subs r1, r1, r3
	b _08004286

_0800429C:
	str r1, [r0, #0x5c]

	push {r2, lr}
	bl FrameZero
	pop {r2, r3}

	movs r1, #0x59
	strb r2, [r0, r1]
	bx r3

	thumb_func_start InitAnimationForceUpdate
InitAnimationForceUpdate: @ 0x080042AC
	push {lr}
	bl InitializeAnimation
	movs r2, #0xff
	strb r2, [r0, #0x1f]
	b _080042C0

	thumb_func_start UpdateAnimationSingleFrame
UpdateAnimationSingleFrame: @ 0x080042B8
	movs r1, #1

	non_word_aligned_thumb_func_start sub_080042BA
sub_080042BA: @ 0x080042BA
	push {lr}
	bl UpdateAnimationVariableFrames

_080042C0:
	pop {r1}
	mov lr, r1

	ldrb r1, [r0, #0x1e]
	ldrb r3, [r0, #0x1f]
	strb r1, [r0, #0x1f]

	cmp r1, r3
	beq _08004328

	ldrh r2, [r0, #0x12]

	thumb_func_start sub_080042D0
sub_080042D0: @ 0x080042D0
	cmp r1, #0xff
	beq _08004328

	lsls r2, r2, #4
	lsls r3, r1, #2
	ldr r1, _080043A0 @ =gSpritePtrs
	adds r1, r1, r2
	ldr r2, [r1, #4]

	cmp r2, #0
	beq _08004328

	ldr r1, [r1, #8]
	adds r2, r2, r3
	ldrb r3, [r2]
	cmp r3, #0
	beq _08004328
	push {r4, r5}
	movs r3, #0x26
	ldrb r3, [r0, r3]
	movs r4, #0xc
	muls r3, r4, r3
	ldr r4, _080043A4 @ =gGFXSlots+4
	adds r4, r4, r3
	ldrb r3, [r4]
	movs r5, #0xf
	ands r3, r5
	cmp r3, #5
	blo _08004326
	ldrb r5, [r4, #6]
	ldrb r3, [r2]
	strb r3, [r4, #6]
	subs r5, r5, r3
	ldrh r3, [r2, #2]
	lsls r3, r3, #5
	adds r1, r1, r3
	ldr r2, [r4, #8]
	str r1, [r4, #8]
	subs r2, r2, r1
	orrs r5, r2
	beq _08004326
	movs r2, #0xf0
	ldrb r1, [r4]
	bics r1, r2
	adds r1, #0x30
	strb r1, [r4]
_08004326:
	pop {r4, r5}
_08004328:
	bx lr

FrameZero:	@ r0 = Entity*
	ldrb r3, [r0, #0x1e]	@ Get frame idx
	strb r3, [r0, #0x1f]	@ Set it to last frame idx
	
	ldr r1, [r0, #0x5c]
	ldrb r3, [r1]			@ Store new frame idx
	strb r3, [r0, #0x1e]

	ldrb r3, [r1, #1]
	movs r2, #0x59
	strb r3, [r0, r2]

	ldrb r3, [r1, #2]
	movs r2, #0x5b
	strb r3, [r0, r2]

	ldrb r3, [r1, #3]
	movs r2, #0x5a
	strb r3, [r0, r2]

	adds r1, #4
	lsrs r3, r3, #8

	blo _08004352

	ldrb r3, [r1]
	lsls r3, r3, #2
	subs r1, r1, r3

_08004352:
	str r1, [r0, #0x5c]
	bx lr
	.align 2, 0

_08004358: .4byte gUnk_081326EC
_0800435C: .4byte gUnk_02024048
_08004360: .4byte gUnk_02021F20
_08004364: .4byte gUnk_02024048
_08004368: .4byte gRoomControls
_0800436C: .4byte 0x0000016E
_08004370: .4byte 0x0000011E
_08004374: .4byte gRoomControls + 6
_08004378: .4byte gRoomControls + 8
_0800437C: .4byte 0x000003F0
_08004380: .4byte gCollisionDataPtrs
_08004384: .4byte 0x000FFFFF
_08004388: .4byte 0x00080000
_0800438C: .4byte 0x0000EE00
_08004390: .4byte 0x00001FFF
_08004394: .4byte gMapDataPtrs
_08004398: .4byte 0x00004000
_0800439C: .4byte gSpritePtrs
_080043A0: .4byte gSpritePtrs
_080043A4: .4byte gGFXSlots+4

	thumb_func_start CreateDrownFX
CreateDrownFX: @ 0x080043A8
	movs r1, #0xb // FX_WATER_SPLASH
	b create_fx

	thumb_func_start CreateLavaDrownFX
CreateLavaDrownFX: @ 0x080043AC
	movs r1, #0xc // FX_LAVA_SPLASH
	b create_fx

	thumb_func_start CreateSwampDrownFX
CreateSwampDrownFX: @ 0x080043AC
	movs r1, #0x52 // FX_GREEN_SPLASH
	b create_fx

	thumb_func_start CreatePitFallFX
CreatePitFallFX: @ 0x080043B4
	movs r1, #0 // FX_FALL_DOWN

create_fx:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xf
	movs r2, #0
	bl CreateObject

	cmp r0, #0
	beq _080043E0

	movs r1, #0x48
	ldr r1, [r4, r1] // load hitbox (unused)

	ldrh r3, [r4, #0x2e]
	strh r3, [r0, #0x2e]

	ldrh r3, [r4, #0x32]
	strh r3, [r0, #0x32]

	ldrh r3, [r4, #0x36]
	strh r3, [r0, #0x36]

	ldrb r3, [r4, #8]
	
	cmp r3, #3 // is parent entity an enemy?
	bne _080043E0
	
	movs r1, #1
	strb r1, [r0, #0xb] // copy entity.type2

_080043E0:
	adds r0, r4, #0
	bl DeleteEntity
	
	pop {r4, pc}
