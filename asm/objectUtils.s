	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080A2A84
sub_080A2A84: @ 0x080A2A84
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	bl CreateWaterTrace
	adds r6, r0, #0
	cmp r6, #0
	beq _080A2AD2
	bl Random
	adds r4, r0, #0
	adds r5, #1
	adds r1, r5, #0
	bl __modsi3
	adds r1, r0, #0
	lsrs r4, r4, #8
	movs r7, #1
	adds r0, r4, #0
	ands r0, r7
	cmp r0, #0
	beq _080A2AB0
	rsbs r1, r1, #0
_080A2AB0:
	ldrh r0, [r6, #0x2e]
	adds r0, r0, r1
	strh r0, [r6, #0x2e]
	lsrs r4, r4, #8
	adds r0, r4, #0
	adds r1, r5, #0
	bl __modsi3
	adds r1, r0, #0
	lsrs r4, r4, #8
	ands r4, r7
	cmp r4, #0
	beq _080A2ACC
	rsbs r1, r1, #0
_080A2ACC:
	ldrh r0, [r6, #0x32]
	adds r0, r0, r1
	strh r0, [r6, #0x32]
_080A2AD2:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080A2AD4
sub_080A2AD4: @ 0x080A2AD4
	push {lr}
	movs r1, #0x21
	movs r2, #0
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _080A2AF0
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r0, [r3]
	movs r1, #7
	orrs r0, r1
	strb r0, [r3]
_080A2AF0:
	adds r0, r2, #0
	pop {pc}

	thumb_func_start sub_080A2AF4
sub_080A2AF4: @ 0x080A2AF4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r1, #0
	adds r4, r2, #0
	bl sub_080A2AD4
	adds r6, r0, #0
	cmp r6, #0
	beq _080A2B74
	bl Random
	adds r7, r0, #0
	subs r1, r4, r5
	adds r1, #1
	bl __modsi3
	adds r4, r0, #0
	adds r4, r4, r5
	asrs r7, r7, #0x10
	movs r0, #0xff
	ands r7, r0
	ldr r0, _080A2B7C @ =gSineTable
	mov r8, r0
	lsls r0, r7, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x10
	adds r1, r4, #0
	bl FixedMul
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r5, #0
	bl FixedDiv
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r6, #0x2c]
	adds r1, r1, r0
	str r1, [r6, #0x2c]
	adds r0, r7, #0
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r4, #0
	bl FixedMul
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	bl FixedDiv
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r6, #0x30]
	subs r1, r1, r0
	str r1, [r6, #0x30]
_080A2B74:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A2B7C: .4byte gSineTable

	thumb_func_start CreateSparkle
CreateSparkle: @ 0x080A2B80
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xf
	movs r1, #0x26
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _080A2BE0
	bl Random
	adds r3, r0, #0
	movs r1, #0xf
	adds r2, r3, #0
	ands r2, r1
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _080A2BAA
	rsbs r2, r2, #0
_080A2BAA:
	lsrs r0, r3, #8
	ands r0, r1
	cmp r0, #4
	ble _080A2BB4
	rsbs r0, r0, #0
_080A2BB4:
	lsls r2, r2, #0x10
	lsls r3, r0, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl PositionRelative
	adds r0, r5, #0
	adds r1, r4, #0
	bl ResolveEntityOnTop
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x62
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x63
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x63
	strb r1, [r0]
_080A2BE0:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A2BE4
sub_080A2BE4: @ 0x080A2BE4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080A2CBA
	lsrs r0, r1, #3
	cmp r0, #1
	beq _080A2C3C
	cmp r0, #1
	bgt _080A2C04
	cmp r0, #0
	beq _080A2C0E
	b _080A2CBA
_080A2C04:
	cmp r0, #2
	beq _080A2C68
	cmp r0, #3
	beq _080A2C94
	b _080A2CBA
_080A2C0E:
	ldrh r5, [r4, #0x32]
	adds r0, r4, #0
	bl LinearMoveUpdate
	ldrh r1, [r4, #0x32]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080A2CBA
	cmp r6, #0
	beq _080A2CBA
	ldr r0, _080A2C38 @ =gPlayerEntity
	lsls r1, r1, #8
	movs r2, #0
	bl sub_080044AE
	b _080A2CBA
	.align 2, 0
_080A2C38: .4byte gPlayerEntity
_080A2C3C:
	ldrh r5, [r4, #0x2e]
	adds r0, r4, #0
	bl LinearMoveUpdate
	ldrh r1, [r4, #0x2e]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	beq _080A2CBA
	cmp r6, #0
	beq _080A2CBA
	ldr r0, _080A2C64 @ =gPlayerEntity
	lsls r1, r1, #8
	movs r2, #8
	bl sub_080044AE
	b _080A2CBA
	.align 2, 0
_080A2C64: .4byte gPlayerEntity
_080A2C68:
	ldrh r5, [r4, #0x32]
	adds r0, r4, #0
	bl LinearMoveUpdate
	ldrh r1, [r4, #0x32]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	beq _080A2CBA
	cmp r6, #0
	beq _080A2CBA
	ldr r0, _080A2C90 @ =gPlayerEntity
	lsls r1, r1, #8
	movs r2, #0x10
	bl sub_080044AE
	b _080A2CBA
	.align 2, 0
_080A2C90: .4byte gPlayerEntity
_080A2C94:
	ldrh r5, [r4, #0x2e]
	adds r0, r4, #0
	bl LinearMoveUpdate
	ldrh r1, [r4, #0x2e]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080A2CBA
	cmp r6, #0
	beq _080A2CBA
	ldr r0, _080A2CBC @ =gPlayerEntity
	lsls r1, r1, #8
	movs r2, #0x18
	bl sub_080044AE
_080A2CBA:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A2CBC: .4byte gPlayerEntity

	thumb_func_start sub_080A2CC0
sub_080A2CC0: @ 0x080A2CC0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r3, [r5]
	cmp r3, #0
	beq _080A2CF8
	ldrh r0, [r3]
	cmp r0, #0xfe
	bne _080A2CDC
	ldrh r1, [r3, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r3, r3, r0
_080A2CDC:
	ldrh r0, [r3]
	cmp r0, #0xff
	bne _080A2CEA
	movs r0, #0xff
	strb r0, [r4, #0x15]
	movs r0, #0
	b _080A2CEE
_080A2CEA:
	strb r0, [r4, #0x15]
	ldrh r0, [r3, #4]
_080A2CEE:
	strh r0, [r4, #0x24]
	ldrh r0, [r3, #2]
	strh r0, [r2]
	adds r0, r3, #6
	str r0, [r5]
_080A2CF8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start CreateSpeechBubbleExclamationMark
CreateSpeechBubbleExclamationMark: @ 0x080A2CFC
	push {r4, lr}
	adds r4, r1, #0
	adds r3, r2, #0
	movs r1, #0
	adds r2, r4, #0
	bl CreateSpeechBubble
	pop {r4, pc}

	thumb_func_start CreateSpeechBubbleQuestionMark
CreateSpeechBubbleQuestionMark: @ 0x080A2D0C
	push {r4, lr}
	adds r4, r1, #0
	adds r3, r2, #0
	movs r1, #1
	adds r2, r4, #0
	bl CreateSpeechBubble
	pop {r4, pc}

	thumb_func_start CreateSpeechBubbleSleep
CreateSpeechBubbleSleep: @ 0x080A2D1C
	push {r4, lr}
	adds r4, r1, #0
	adds r3, r2, #0
	movs r1, #2
	adds r2, r4, #0
	bl CreateSpeechBubble
	pop {r4, pc}

	thumb_func_start CreateSpeechBubble
CreateSpeechBubble: @ 0x080A2D2C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	movs r0, #0x56
	movs r1, #0
	adds r2, r4, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _080A2D6E
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r5, #0
	adds r1, r4, #0
	bl ResolveEntityOnTop
	str r5, [r4, #0x50]
	adds r0, r4, #0
	adds r0, #0x62
	strb r6, [r0]
	adds r0, #1
	strb r7, [r0]
	ldrb r1, [r5, #0x11]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	adds r0, r4, #0
	bl SetDefaultPriority
_080A2D6E:
	adds r0, r4, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

