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
	bl sub_0806F69C
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
	bl sub_0806F69C
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
	bl sub_0806F69C
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
	bl sub_0806F69C
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
	bl sub_0805E3A0
_080A2D6E:
	adds r0, r4, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080A2D74
sub_080A2D74: @ 0x080A2D74
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x6c]
	cmp r0, #0
	beq _080A2D82
	subs r0, #1
	str r0, [r2, #0x6c]
_080A2D82:
	ldr r0, _080A2D94 @ =gUnk_081271D4
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A2D94: .4byte gUnk_081271D4

	thumb_func_start sub_080A2D98
sub_080A2D98: @ 0x080A2D98
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080A2DD0 @ =gPlayerState
	str r4, [r0, #0x2c]
	movs r2, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x11]
	subs r0, #0x11
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r4, #0x11]
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _080A2DD8
	movs r0, #0x27
	str r0, [r4, #0x70]
	ldr r1, _080A2DD4 @ =gUnk_081271DC
	ldrb r0, [r1, #1]
	str r0, [r4, #0x78]
	str r2, [r4, #0x74]
	str r1, [r4, #0x7c]
	b _080A2DDA
	.align 2, 0
_080A2DD0: .4byte gPlayerState
_080A2DD4: .4byte gUnk_081271DC
_080A2DD8:
	str r2, [r4, #0x70]
_080A2DDA:
	ldr r0, _080A2DFC @ =gPlayerEntity
	ldrb r1, [r0, #0x14]
	movs r0, #0xe
	ands r0, r1
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08079BD8
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AE008
	adds r0, r4, #0
	bl sub_080A2E00
	pop {r4, pc}
	.align 2, 0
_080A2DFC: .4byte gPlayerEntity

	thumb_func_start sub_080A2E00
sub_080A2E00: @ 0x080A2E00
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _080A2E90 @ =gPlayerEntity
	mov ip, r0
	mov r1, ip
	adds r1, #0x3d
	ldrb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080A2E1A
	lsrs r0, r0, #0x18
	cmp r0, #0x81
	bne _080A2E40
_080A2E1A:
	adds r5, r4, #0
	adds r5, #0x3d
	ldrb r0, [r5]
	movs r2, #0
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #0x3e
	strb r0, [r1]
	adds r3, r4, #0
	adds r3, #0x42
	ldrb r1, [r3]
	mov r0, ip
	adds r0, #0x42
	strb r1, [r0]
	strb r2, [r3]
	strb r2, [r5]
_080A2E40:
	ldr r0, _080A2E94 @ =gPlayerState
	ldrb r3, [r0, #3]
	adds r7, r0, #0
	cmp r3, #0
	beq _080A2F20
	ldr r0, [r7, #0x2c]
	cmp r4, r0
	bne _080A2F20
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _080A2E9C
	ldr r1, _080A2E98 @ =gUnk_08127240
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x48]
	ldr r0, _080A2E90 @ =gPlayerEntity
	adds r0, #0x3c
	ldrb r0, [r0]
	adds r0, #1
	movs r1, #0x20
	adds r2, r4, #0
	adds r2, #0x3c
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r3
	strb r0, [r7, #3]
	adds r0, r4, #0
	bl sub_080176E4
	b _080A2F30
	.align 2, 0
_080A2E90: .4byte gPlayerEntity
_080A2E94: .4byte gPlayerState
_080A2E98: .4byte gUnk_08127240
_080A2E9C:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080A2F30
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x42
	bne _080A2F06
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0xe
	bne _080A2F06
	movs r0, #0x40
	ands r0, r3
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _080A2F06
	ldrb r3, [r5]
	movs r0, #0x15
	movs r1, #0
	movs r2, #0
	bl CreatePlayerItem
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _080A2EF4
	movs r0, #1
	strb r0, [r1, #0xf]
	ldr r2, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r1, #0x10
	eors r0, r1
	strb r0, [r2, #0x15]
	ldr r0, [r4, #0x54]
	str r4, [r0, #0x50]
_080A2EF4:
	ldr r1, _080A2F1C @ =gUnk_08127220
	ldrb r0, [r1, #1]
	str r0, [r4, #0x78]
	str r6, [r4, #0x74]
	str r1, [r4, #0x7c]
	ldrb r0, [r7, #3]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r7, #3]
_080A2F06:
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	bne _080A2F30
	movs r0, #0x8c
	lsls r0, r0, #1
	bl SoundReq
	movs r0, #8
	str r0, [r4, #0x6c]
	b _080A2F30
	.align 2, 0
_080A2F1C: .4byte gUnk_08127220
_080A2F20:
	movs r1, #0
	strb r1, [r7, #3]
	ldr r0, [r7, #0x2c]
	cmp r0, r4
	bne _080A2F2C
	str r1, [r7, #0x2c]
_080A2F2C:
	bl DeleteThisEntity
_080A2F30:
	ldr r6, _080A301C @ =gPlayerEntity
	ldrh r0, [r6, #0x12]
	cmp r0, #1
	beq _080A2F3E
	cmp r0, #4
	beq _080A2F3E
	b _080A3064
_080A2F3E:
	ldrb r0, [r6, #0x1e]
	subs r0, #0x25
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3e
	bls _080A2F4C
	b _080A3064
_080A2F4C:
	ldrb r2, [r6, #0x18]
	movs r1, #0x40
	ands r1, r2
	ldrb r3, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	lsrs r2, r2, #7
	lsls r2, r2, #7
	movs r3, #0x7f
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r2, [r6, #0x1e]
	ldr r1, [r4, #0x70]
	adds r0, r1, #0
	subs r0, #0x25
	adds r0, r2, r0
	adds r5, r4, #0
	adds r5, #0x68
	ldrb r7, [r4, #0x1e]
	cmp r0, r7
	beq _080A2FA2
	adds r0, r1, #0
	adds r0, #0xdb
	adds r0, r2, r0
	strb r0, [r4, #0x1e]
	ldrb r0, [r5]
	cmp r0, #0xe
	bne _080A2F98
	adds r0, r6, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _080A2FA2
_080A2F98:
	ldrb r1, [r4, #0x1e]
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
_080A2FA2:
	ldrb r0, [r5]
	cmp r0, #0xe
	bne _080A303E
	ldr r0, _080A301C @ =gPlayerEntity
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _080A303E
	ldr r0, [r4, #0x78]
	subs r3, r0, #1
	str r3, [r4, #0x78]
	cmp r3, #0
	bne _080A303E
	ldr r0, [r4, #0x74]
	adds r0, #1
	str r0, [r4, #0x74]
	lsls r0, r0, #2
	ldr r1, [r4, #0x7c]
	adds r2, r1, r0
	ldrb r0, [r2]
	ldr r7, _080A3020 @ =gPlayerState
	cmp r0, #0xff
	bne _080A2FEC
	ldrb r1, [r7, #3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A2FE8
	ldr r0, _080A3024 @ =gUnk_081271DC
	str r0, [r4, #0x7c]
	movs r0, #0xbf
	ands r0, r1
	strb r0, [r7, #3]
_080A2FE8:
	str r3, [r4, #0x74]
	ldr r1, [r4, #0x7c]
_080A2FEC:
	ldr r0, [r4, #0x74]
	lsls r0, r0, #2
	adds r2, r1, r0
	ldrb r0, [r2, #1]
	str r0, [r4, #0x78]
	ldrb r1, [r7, #3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A3028
	ldr r0, _080A301C @ =gPlayerEntity
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	adds r1, #8
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
	b _080A303E
	.align 2, 0
_080A301C: .4byte gPlayerEntity
_080A3020: .4byte gPlayerState
_080A3024: .4byte gUnk_081271DC
_080A3028:
	ldr r0, _080A3060 @ =gPlayerEntity
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
_080A303E:
	ldr r1, _080A3060 @ =gPlayerEntity
	adds r0, r1, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	adds r2, r4, #0
	adds r2, #0x5a
	strb r0, [r2]
	adds r0, r1, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	adds r2, #1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_08078E84
	b _080A3068
	.align 2, 0
_080A3060: .4byte gPlayerEntity
_080A3064:
	movs r0, #0xff
	strb r0, [r4, #0x1e]
_080A3068:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080A306C
sub_080A306C: @ 0x080A306C
	push {lr}
	ldr r2, _080A3080 @ =gUnk_08127270
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A3080: .4byte gUnk_08127270

	thumb_func_start sub_080A3084
sub_080A3084: @ 0x080A3084
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r5, #1
	strb r5, [r4, #0xc]
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080A30F8
	ldr r0, _080A30EC @ =gPlayerEntity
	adds r0, #0x3c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x3c
	strb r0, [r1]
	ldr r0, _080A30F0 @ =gUnk_08127278
	str r0, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #2
	bne _080A30CC
	strb r5, [r4, #0xb]
_080A30CC:
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	movs r0, #0x3c
	str r0, [r4, #0x6c]
	adds r0, r4, #0
	bl sub_0801766C
	adds r0, r4, #0
	bl sub_0806F69C
	ldr r0, _080A30F4 @ =0x0000013F
	bl SoundReq
	b _080A30FC
	.align 2, 0
_080A30EC: .4byte gPlayerEntity
_080A30F0: .4byte gUnk_08127278
_080A30F4: .4byte 0x0000013F
_080A30F8:
	movs r0, #6
	strb r0, [r4, #0xe]
_080A30FC:
	adds r0, r4, #0
	movs r1, #0x18
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_080A310C
	pop {r4, r5, pc}

	thumb_func_start sub_080A310C
sub_080A310C: @ 0x080A310C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080A312A
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080A3200
	bl DeleteThisEntity
	b _080A3200
_080A312A:
	adds r0, r4, #0
	bl GetNextFrame
	ldr r0, [r4, #0x6c]
	subs r0, #1
	str r0, [r4, #0x6c]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080A31FC
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080A315C
	adds r0, r4, #0
	bl sub_0800451C
_080A315C:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _080A31F0 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	ldr r1, _080A31F4 @ =gPlayerEntity
	adds r1, #0x38
	ldrb r1, [r1]
	movs r2, #0x80
	bl sub_080002F0
	cmp r0, #0
	bne _080A31AE
	ldr r1, _080A31F8 @ =gUnk_08003E44
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	movs r5, #0x32
	ldrsh r3, [r4, r5]
	adds r0, r4, #0
	bl sub_080040D8
	cmp r0, #0
	beq _080A31AE
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_080A31AE:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A31C6
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_080A31C6:
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_08008790
	cmp r0, #0
	beq _080A31D6
	bl DeleteThisEntity
_080A31D6:
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r3, [r0]
	movs r0, #0x15
	movs r1, #1
	movs r2, #0
	bl CreatePlayerItem
	str r0, [r4, #0x54]
	cmp r0, #0
	beq _080A3200
	str r4, [r0, #0x50]
	b _080A3200
	.align 2, 0
_080A31F0: .4byte gRoomControls
_080A31F4: .4byte gPlayerEntity
_080A31F8: .4byte gUnk_08003E44
_080A31FC:
	bl DeleteThisEntity
_080A3200:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start InitSound
InitSound: @ 0xInitSound
	push {lr}
	bl sub_080A3210
	bl m4aSoundInit
	pop {pc}

	thumb_func_start sub_080A3210
sub_080A3210: @ 0x080A3210
	push {r4, lr}
	ldr r4, _080A3230 @ =gUnk_02021EE0
	adds r0, r4, #0
	movs r1, #0x18
	bl MemClear
	bl sub_080A35C8
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x12]
	strh r0, [r4, #4]
	bl m4aMPlayAllStop
	pop {r4, pc}
	.align 2, 0
_080A3230: .4byte gUnk_02021EE0

	thumb_func_start sub_080A3234
sub_080A3234: @ 0x080A3234
	push {lr}
	ldr r1, _080A3244 @ =gUnk_02021EE0
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0x14]
	bl sub_080A353C
	pop {pc}
	.align 2, 0
_080A3244: .4byte gUnk_02021EE0

	thumb_func_start sub_080A3248
sub_080A3248: @ 0x080A3248
	push {lr}
	ldr r1, _080A3258 @ =gUnk_02021EE0
	strh r0, [r1, #0x10]
	strh r0, [r1, #0xe]
	ldrh r0, [r1, #0x14]
	bl sub_080A353C
	pop {pc}
	.align 2, 0
_080A3258: .4byte gUnk_02021EE0

	thumb_func_start sub_080A325C
sub_080A325C: @ 0x080A325C
	ldr r1, _080A3264 @ =gUnk_02021EE0
	strh r0, [r1, #0x12]
	bx lr
	.align 2, 0
_080A3264: .4byte gUnk_02021EE0
