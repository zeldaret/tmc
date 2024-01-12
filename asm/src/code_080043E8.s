	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	.macro hazard_tile tile:req, hazard_type:req
	.short \tile
	.short \hazard_type
	.endm

	thumb_func_start GetTileHazardType
GetTileHazardType: @ 0x080043E8
	push {r4, lr}
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq no_hazard // action == 0
	adds r4, r0, #0
	bl UpdateCollisionLayer
	movs r3, #0x36
	ldrsh r2, [r4, r3]
	cmp r2, #0
	bmi no_hazard // collisionLayer is negative
	cmp r0, #0    // are we on a tile?
	beq no_hazard
	adr r3, hazard_list-4
loop:
	adds r3, #4
	ldrh r1, [r3]
	cmp r1, #0
	beq no_hazard
	cmp r0, r1
	bne loop
	ldrh r0, [r3, #2]
	pop {r4, pc}
no_hazard:
	movs r0, #0
	pop {r4, pc}

hazard_list:
	hazard_tile 0xD, 0x1
	hazard_tile 0x10, 0x2
	hazard_tile 0x11, 0x2
	hazard_tile 0x5A, 0x3
	hazard_tile 0x13, 0x4
	.short 0x0000

	non_word_aligned_thumb_func_start sub_0800442E
sub_0800442E: @ 0x0800442E
	push {r0, lr}
	bl GetTileHazardType
	cmp r0, #0
	beq not_hazard
	lsls r0, #2
	adr r1, _0800444C - 4
	ldr r1, [r1, r0]
	pop {r0}
	bl _call_via_r1
	movs r0, #1
	pop {pc}
not_hazard:
	movs r0, #0
	pop {r1, pc}
_0800444C: .4byte CreatePitFallFX
_08004450: .4byte CreateDrownFX
_08004454: .4byte CreateLavaDrownFX
_08004458: .4byte CreateSwampDrownFX

	thumb_func_start sub_0800445C
sub_0800445C: @ 0x0800445C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl PlayerCanBeMoved
	cmp r0, #0
	beq _08004482
	ldr r5, _080044D8 @ =gPlayerEntity
	adds r0, r4, #0
	adds r1, r5, #0
	bl CalcCollisionStaticEntity
	cmp r0, #0
	beq _08004482
	ldrb r0, [r5, #0xc]
	cmp r0, #2
	bne _08004480
	movs r0, #3
	strb r0, [r5, #0xd]
_08004480:
	movs r0, #1
_08004482:
	pop {r4, r5, pc}

	thumb_func_start CalcCollisionStaticEntity
CalcCollisionStaticEntity: @ 0x08004484
	ldr r2, _080044DC @ =ram_sub_080B227C
	bx r2

	thumb_func_start EnqueueSFX
EnqueueSFX: @ 0x08004488
	ldr r1, _080044E0 @ =gUnk_02024048
	ldrb r2, [r1]
	cmp r2, #8
	bhs _0800449A
	adds r3, r2, #1
	strb r3, [r1]
	ldr r1, _080044E4 @ =gUnk_02021F20
	lsls r2, r2, #1
	strh r0, [r1, r2]
_0800449A:
	bx lr

	thumb_func_start SoundReqClipped
SoundReqClipped: @ 0x0800449C
	push {r1, lr}
	bl CheckOnScreen
	cmp r0, #0
	pop {r0}
	beq _080044AC
	bl SoundReq
_080044AC:
	pop {pc}

	non_word_aligned_thumb_func_start sub_080044AE
sub_080044AE: @ 0x080044AE
	push {lr}
	ldr r3, _080044E8 @ =gPlayerEntity
	cmp r0, r3
	beq _080044CC
	push {r0, r1, r2}
	adds r1, r2, #0
	movs r2, #2
	bl CalculateEntityTileCollisions
	pop {r0, r1, r2}
	movs r3, #2
	bl ProcessMovementInternal
_080044C8:
	pop {r3}
	bx r3
_080044CC:
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08079E58
	b _080044C8
	.align 2, 0
_080044D8: .4byte gPlayerEntity
_080044DC: .4byte ram_sub_080B227C
_080044E0: .4byte gUnk_02024048
_080044E4: .4byte gUnk_02021F20
_080044E8: .4byte gPlayerEntity

	// BounceUpdate
	// assumes initial velocity is set
	// r0: entity*
	// r1: acceleration
	thumb_func_start BounceUpdate
BounceUpdate: @ 0x080044EC
	ldr r2, [r0, #0x34]
	ldr r3, [r0, #0x20]
	subs r2, r3
	bpl grounded // if z is positive, entity is grounded
	str r2, [r0, #0x34] // entity.z = entity.z - entity.zVelocity
	subs r3, r1
	str r3, [r0, #0x20] // entity.zVelocity = entity.zVelocity - acceleration
	movs r0, #2 // return 2
	bx lr
grounded:
	movs r2, #1
	str r2, [r0, #0x34] // entity.z = 1 (note: player cant do certain actions at z!=0)
	subs r3, r1
	negs r3, r3
	lsrs r3, #1
	lsrs r1, r3, #2
	adds r3, r1 // calc next bounce velocity
	lsrs r1, r3, #0xc
	cmp r1, #0xc
	bhs _08004516 // return 1 if bouncing
	movs r2, #0 // return 0 if not bouncing
	movs r3, #0 // set velocity to 0
_08004516:
	str r3, [r0, #0x20]
	adds r0, r2, #0
	bx lr

	// r0 = Entity*
	thumb_func_start sub_0800451C
sub_0800451C: @ 0x0800451C
	push {r0, lr}
	bl GetActTileAtEntity
	adds r1, r0, #0
	pop {r0, r3}
	mov lr, r3
	cmp r1, #0xc
	beq sub_08004542
	cmp r1, #0xb
	beq sub_08004542
	cmp r1, #0xa
	beq ResetCollisionLayer
	cmp r1, #9
	beq ResetCollisionLayer
	cmp r1, #0x26
	beq _0800457A
	cmp r1, #0x27
	beq _0800457A
	bx lr

	non_word_aligned_thumb_func_start sub_08004542
sub_08004542: @ 0x08004542
	movs r1, #0x38
	movs r2, #2
	strb r2, [r0, r1] // entity->collisionLayer = 2
	movs r2, #0xc0
	ldrb r1, [r0, #0x1b]
	bics r1, r2
	adds r1, #0x40
	strb r1, [r0, #0x1b] // update spriteOrientation
	movs r2, #0xc0
	ldrb r1, [r0, #0x19]
	bics r1, r2
	adds r1, #0x40
	strb r1, [r0, #0x19] // update spriteRendering
	bx lr

	non_word_aligned_thumb_func_start ResetCollisionLayer
ResetCollisionLayer: @ 0x0800455E
	movs r1, #0x38
	movs r2, #1
	strb r2, [r0, r1]
	movs r2, #0xc0
	ldrb r1, [r0, #0x1b]
	bics r1, r2
	adds r1, #0x80
	strb r1, [r0, #0x1b]
	movs r2, #0xc0
	ldrb r1, [r0, #0x19]
	bics r1, r2
	adds r1, #0x80
	strb r1, [r0, #0x19]
	bx lr
_0800457A:
	movs r1, #0x38
	movs r2, #3
	strb r2, [r0, r1]
	movs r2, #0xc0
	ldrb r1, [r0, #0x1b]
	bics r1, r2
	adds r1, #0x40
	strb r1, [r0, #0x1b]
	movs r2, #0xc0
	ldrb r1, [r0, #0x19]
	bics r1, r2
	adds r1, #0x40
	strb r1, [r0, #0x19]
	bx lr

	non_word_aligned_thumb_func_start sub_08004596
sub_08004596: @ 0x08004596
	movs r2, #0x1f
	ldrb r3, [r0, #0x15]
	cmp r3, #0x20
	bhs _080045AE
	subs r1, r1, r3
	beq _080045B2
	ands r1, r2
	cmp r1, #0x10
	movs r1, #1
	blo _080045AC
	rsbs r1, r1, #0
_080045AC:
	adds r1, r3, r1
_080045AE:
	ands r1, r2
	strb r1, [r0, #0x15]
_080045B2:
	bx lr

	thumb_func_start sub_080045B4
sub_080045B4: @ 0x080045B4
	mov ip, r2
	adds r2, r1, #0
	movs r3, #0x32
	ldrsh r1, [r0, r3]
	movs r3, #0x2e
	ldrsh r0, [r0, r3]
	ldr r3, _08004690 @ =ram_CalcCollisionDirection
	bx r3

	thumb_func_start GetFacingDirection
GetFacingDirection: @ 0x080045C4
	push {r4, r5}
	movs r4, #0x32
	movs r5, #0x2e
	ldrsh r3, [r1, r4]
	ldrsh r2, [r1, r5]
	ldrsh r1, [r0, r4]
	ldrsh r0, [r0, r5]
	pop {r4, r5}

	thumb_func_start CalculateDirectionTo
CalculateDirectionTo: @ 0x080045D4
	mov ip, r3
	ldr r3, _08004694 @ =ram_CalcCollisionDirection
	bx r3

	non_word_aligned_thumb_func_start CalculateDirectionFromOffsets
CalculateDirectionFromOffsets: @ 0x080045DA
	push {r0, r1, r4, r5, r6, lr}
	movs r6, #0x40
	cmp r0, #0
	beq _08004632
	ldr r5, _08004698 @ =gUnk_080C93E0
	lsls r2, r1, #8
	adds r1, r0, #0
	adds r0, r2, #0
	bl Div
	ldr r1, _0800469C @ =0x00000106
	cmp r3, r1
	bhs _08004608
	movs r1, #0x6e
	cmp r3, r1
	bhs _08004602
	movs r6, #0
	movs r1, #0
	movs r2, #0x20
	b _08004618
_08004602:
	movs r1, #0x20
	movs r2, #0x40
	b _08004618
_08004608:
	ldr r1, _080046A0 @ =0x00000280
	cmp r3, r1
	bhs _08004614
	movs r1, #0x40
	movs r2, #0x60
	b _08004618
_08004614:
	movs r1, #0x60
	movs r2, #0x7e
_08004618:
	adds r0, r1, r5
	ldrh r4, [r0]
	cmp r3, r4
	blo _0800462C
	ldrh r4, [r0, #2]
	cmp r3, r4
	bhs _0800462C
	lsrs r6, r1, #1
	adds r6, #1
	b _08004632
_0800462C:
	adds r1, #2
	cmp r1, r2
	blo _08004618
_08004632:
	adds r2, r6, #0
	pop {r0, r1, r4, r5, r6}
	cmp r0, #0
	bmi _08004644
	movs r0, #0x40
	cmp r1, #0
	bmi _0800464A
_08004640:
	adds r0, r0, r2
	pop {pc}
_08004644:
	movs r0, #0xc0
	cmp r1, #0
	bmi _08004640
_0800464A:
	subs r0, r0, r2
	pop {pc}

gUnk_0800464E::
	.byte 0x00, 0x01
	.byte 0x02, 0x03, 0x04, 0x00, 0x00, 0x00, 0x08, 0x07, 0x06, 0x05, 0x04, 0x00, 0x00, 0x00, 0x10, 0x0F
	.byte 0x0E, 0x0D, 0x0C, 0x00, 0x00, 0x00, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x1F
	.byte 0x1E, 0x1D, 0x1C, 0x00, 0x00, 0x00, 0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x00, 0x00, 0x00, 0x10, 0x11
	.byte 0x12, 0x13, 0x14, 0x00, 0x00, 0x00, 0x18, 0x17, 0x16, 0x15, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00

_08004690: .4byte ram_CalcCollisionDirection
_08004694: .4byte ram_CalcCollisionDirection
_08004698: .4byte gUnk_080C93E0
_0800469C: .4byte 0x00000106
_080046A0: .4byte 0x00000280
