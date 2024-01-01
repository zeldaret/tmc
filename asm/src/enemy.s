	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start EnemyUpdate
EnemyUpdate: @ 0x080011C4
	mov r3, lr
	push {r3, r4}
	adds r4, r0, #0
	ldrb r2, [r0, #0xc]
	cmp r2, #0
	bne _080011DC
	bl EnemyInit
	cmp r0, #0
	bne _080011EA
	bl DeleteThisEntity
_080011DC:
	bl EntityDisabled
	cmp r0, #0
	bne _0800120A
	adds r0, r4, #0
	bl sub_080028E0
_080011EA:
	adds r0, r4, #0
	movs r1, #0x6d
	ldrb r1, [r0, r1]
	lsrs r1, r1, #5
	bhs _0800120A
	ldrb r1, [r0, #9]
	lsls r1, r1, #2
	ldr r2, _08001358 @ =gEnemyFunctions
	ldr r1, [r2, r1]
	bl _call_via_r1
	movs r1, #0x41
	movs r3, #0x7f
	ldrb r2, [r4, r1]
	ands r2, r3
	strb r2, [r4, r1]
_0800120A:
	adds r0, r4, #0
	bl DrawEntity
	pop {r3, r4}
	bx r3

	thumb_func_start sub_08001214
sub_08001214: @ 0x08001214
	movs r3, #0x3a
	ldrb r1, [r0, r3]
	movs r2, #1
	tst r1, r2
	bne _08001230
	orrs r1, r2
	strb r2, [r0, r3]
	movs r1, #1
	movs r2, #0x5a
	ldrb r2, [r0, r2]
	lsrs r2, r2, #7
	blo _0800122E
	movs r1, #0x20
_0800122E:
	strb r1, [r0, #0xe]
_08001230:
	ldrb r1, [r0, #0xe]
	subs r1, #1
	beq _0800123E
	strb r1, [r0, #0xe]
	movs r1, #4
	ldr r3, _0800135C @ =UpdateAnimationVariableFrames
	bx r3
_0800123E:
	ldr r3, _08001360 @ =CreatePitFallFX
	bx r3

	non_word_aligned_thumb_func_start GenericConfused
GenericConfused: @ 0x08001242
	push {lr}
	movs r1, #0x43
	ldrb r2, [r0, r1]
	subs r2, #1
	strb r2, [r0, r1]
	cmp r2, #0x3c
	bhs _08001282
	movs r3, #3
	ands r3, r2
	add r1, pc, #0x34
	ldrsb r1, [r1, r3]
	movs r3, #0x62
	strb r1, [r0, r3]
	cmp r2, #0
	bne _08001282
	movs r1, #0x68
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _08001282
	ldrb r2, [r1, #8]
	cmp r2, #6
	bne _08001282
	ldrb r2, [r1, #9]
	cmp r2, #0xf
	bne _08001282
	ldrb r2, [r1, #0xa]
	cmp r2, #0x1c
	bne _08001282
	push {r0}
	bl EnemyDetachFX
	pop {r0}
_08001282:
	ldr r1, _08001364 @ =0x00001800
	bl GravityUpdate
	pop {pc}
	.align 2, 0
_0800128C:
	.byte 0x00, 0x01, 0x00, 0xFF

	thumb_func_start sub_08001290
sub_08001290: @ 0x08001290
	cmp r1, #0
	beq _0800129C
	ldr r2, _08001368 @ =gUnk_080012C8
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	bx r1
_0800129C:
	bx lr

	@ r0: Entity*
	@ r1: Function* array
	non_word_aligned_thumb_func_start EnemyFunctionHandler
EnemyFunctionHandler: @ 0x0800129E
	mov r3, lr
	push {r3, r4, r5}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_080012DC
	cmp r0, #0
	beq _080012B2
	ldr r1, _0800136C @ =gUnk_080012C8
	b _080012BA
_080012B2:
	adds r0, r4, #0
	bl GetNextFunction
	adds r1, r5, #0
_080012BA:
	lsls r0, r0, #2
	ldr r1, [r1, r0]
	adds r0, r4, #0
	pop {r3, r4, r5}
	mov lr, r3
	bx r1
	.align 2, 0

gUnk_080012C8::
	.4byte 0x00000000
_080012CC: .4byte sub_08001214
_080012D0: .4byte CreateDrownFX
_080012D4: .4byte CreateLavaDrownFX
_080012D8: .4byte CreateSwampDrownFX

	thumb_func_start sub_080012DC
sub_080012DC: @ 0x080012DC
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0x3a
	ldrb r1, [r4, r5] // gust jar state
	lsrs r1, r1, #3
	bhs _08001302
	bl GetTileHazardType
	cmp r0, #4
	beq _08001302
	cmp r0, #0
	bne _08001306
	ldrb r1, [r4, r5]
	lsrs r1, r1, #1
	blo _08001302
	ldrb r1, [r4, #0x10]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r4, #0x10]
_08001302:
	movs r0, #0
	pop {r4, r5, pc}
_08001306:
	cmp r0, #1
	beq _08001316
	movs r1, #1
	strb r1, [r4, #0xe]
	ldrb r2, [r4, r5]
	movs r1, #1
	orrs r1, r2
	strb r1, [r4, r5]
_08001316:
	pop {r4, r5, pc}

	thumb_func_start sub_08001318
sub_08001318: @ 0x08001318
	movs r1, #0x36
	ldrsh r1, [r0, r1]
	cmp r1, #0
	bpl GenericKnockback
	movs r2, #0xff
	strb r2, [r0, #0x15]

	thumb_func_start GenericKnockback
GenericKnockback: @ 0x08001324
	ldr r3, _08001370 @ =Knockback1
	bx r3

	thumb_func_start GenericKnockback2
GenericKnockback2: @ 0x08001328
	ldr r3, _08001374 @ =Knockback2
	bx r3

	thumb_func_start sub_0800132C
sub_0800132C: @ 0x0800132C
	movs r2, #0x38
	ldrb r3, [r1, r2]
	ldrb r2, [r0, r2]
	ands r2, r3
	beq _08001352
	ldrh r2, [r0, #0x2e]
	ldrh r3, [r1, #0x2e]
	subs r2, r2, r3
	adds r2, #8
	cmp r2, #0x11
	bhs _0800134E
	ldrh r2, [r0, #0x32]
	ldrh r3, [r1, #0x32]
	subs r2, r2, r3
	adds r2, #8
	cmp r2, #0x11
	blo _08001352
_0800134E:
	ldr r3, _08001378 @ =GetFacingDirection
	bx r3
_08001352:
	movs r0, #0xff
	bx lr
	.align 2, 0
_08001358: .4byte gEnemyFunctions
_0800135C: .4byte UpdateAnimationVariableFrames
_08001360: .4byte CreatePitFallFX
_08001364: .4byte 0x00001800
_08001368: .4byte gUnk_080012C8
_0800136C: .4byte gUnk_080012C8
_08001370: .4byte Knockback1
_08001374: .4byte Knockback2
_08001378: .4byte GetFacingDirection
