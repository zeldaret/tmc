	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start FourElements
FourElements: @ 0x080A01C0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080A01DC @ =gUnk_08124898
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08080CB4
	pop {r4, pc}
	.align 2, 0
_080A01DC: .4byte gUnk_08124898

	thumb_func_start sub_080A01E0
sub_080A01E0: @ 0x080A01E0
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	movs r3, #1
	strb r3, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x19]
	ldr r0, _080A027C @ =gHitbox_6
	str r0, [r4, #0x48]
	ldr r0, _080A0280 @ =0x0000FF40
	strh r0, [r4, #0x36]
	adds r1, r4, #0
	adds r1, #0x6a
	movs r0, #0x40
	strb r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #0x43
	bgt _080A0246
	cmp r0, #0x42
	bge _080A0246
	cmp r0, #0x40
	beq _080A0246
	cmp r0, #0x41
	bne _080A0246
	ldr r2, _080A0284 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _080A0288 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x38
	strb r3, [r0]
_080A0246:
	ldr r0, _080A028C @ =script_PlayerGetElement
	bl StartPlayerScript
	ldr r1, _080A0284 @ =gScreen
	adds r2, r1, #0
	adds r2, #0x66
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r2]
	adds r1, #0x68
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	bl sub_0805BC4C
	ldrb r2, [r4, #0xa]
	subs r2, #0x40
	adds r0, r4, #0
	movs r1, #0xad
	movs r3, #0
	bl CreateObjectWithParent
	cmp r0, #0
	beq _080A027A
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
_080A027A:
	pop {r4, pc}
	.align 2, 0
_080A027C: .4byte gHitbox_6
_080A0280: .4byte 0x0000FF40
_080A0284: .4byte gScreen
_080A0288: .4byte 0x0000FDFF
_080A028C: .4byte script_PlayerGetElement

	thumb_func_start sub_080A0290
sub_080A0290: @ 0x080A0290
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _080A02BC @ =gActiveScriptInfo
	ldr r0, [r5]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080A02CA
	adds r0, r4, #0
	bl sub_080A0424
	ldrh r2, [r4, #0x36]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #8
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080A02C0
	adds r0, r2, #1
	strh r0, [r4, #0x36]
	b _080A02CA
	.align 2, 0
_080A02BC: .4byte gActiveScriptInfo
_080A02C0:
	movs r1, #2
	strb r1, [r4, #0xc]
	ldr r0, [r5]
	orrs r0, r1
	str r0, [r5]
_080A02CA:
	pop {r4, r5, pc}

	thumb_func_start sub_080A02CC
sub_080A02CC: @ 0x080A02CC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080A0424
	adds r0, r4, #0
	bl sub_080A0444
	adds r0, r4, #0
	bl sub_08017850
	cmp r0, #0
	beq _080A0342
	ldr r0, [r4, #0x54]
	bl DeleteEntity
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	movs r2, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x2d
	strb r0, [r4, #0xe]
	ldr r0, _080A0344 @ =gScreen
	adds r3, r0, #0
	adds r3, #0x66
	movs r1, #0xc8
	lsls r1, r1, #3
	strh r1, [r3]
	adds r0, #0x68
	strh r2, [r0]
	ldrb r0, [r4, #0xa]
	movs r1, #0
	movs r2, #1
	bl sub_080A7C18
	adds r0, r4, #0
	movs r1, #1
	bl sub_0808C650
	movs r0, #6
	movs r1, #2
	bl SetFade
	movs r0, #0xf8
	bl SoundReq
	movs r0, #0xa4
	lsls r0, r0, #1
	bl SoundReq
	movs r0, #5
	bl SoundReq
	ldr r0, _080A0348 @ =0x80110000
	bl SoundReq
_080A0342:
	pop {r4, pc}
	.align 2, 0
_080A0344: .4byte gScreen
_080A0348: .4byte 0x80110000

	thumb_func_start sub_080A034C
sub_080A034C: @ 0x080A034C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080A0378
	adds r0, r4, #0
	bl sub_080A0424
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A038C
	ldr r0, _080A0374 @ =gPlayerEntity
	movs r1, #0
	bl SetDefaultPriority
	b _080A038C
	.align 2, 0
_080A0374: .4byte gPlayerEntity
_080A0378:
	movs r0, #0
	movs r1, #0x3c
	bl RequestPriorityDuration
	bl sub_0808C67C
	cmp r0, #0
	beq _080A038C
	movs r0, #4
	strb r0, [r4, #0xc]
_080A038C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A0390
sub_080A0390: @ 0x080A0390
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x3c
	bl RequestPriorityDuration
	ldr r0, _080A03B4 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A03B2
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x68
	movs r0, #0xd2
	lsls r0, r0, #1
	strh r0, [r1]
_080A03B2:
	pop {r4, pc}
	.align 2, 0
_080A03B4: .4byte gFadeControl

	thumb_func_start sub_080A03B8
sub_080A03B8: @ 0x080A03B8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0xa
	bl RequestPriorityDuration
	adds r1, r4, #0
	adds r1, #0x68
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A03E4
	movs r0, #6
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	bl sub_0805429C
	adds r1, r4, #0
	bl MessageNoOverlap
_080A03E4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A03E8
sub_080A03E8: @ 0x080A03E8
	push {lr}
	movs r0, #0
	movs r1, #0xa
	bl RequestPriorityDuration
	ldr r0, _080A041C @ =gMessage
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _080A041A
	movs r0, #0x5a
	bl SetPriorityTimer
	ldr r0, _080A0420 @ =gPlayerState
	adds r0, #0x8b
	movs r1, #1
	strb r1, [r0]
	bl sub_0807DF50
	movs r0, #0
	bl SetRoomFlag
	bl DeleteThisEntity
_080A041A:
	pop {pc}
	.align 2, 0
_080A041C: .4byte gMessage
_080A0420: .4byte gPlayerState

	thumb_func_start sub_080A0424
sub_080A0424: @ 0x080A0424
	push {lr}
	adds r1, r0, #0
	adds r1, #0x6a
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A0442
	movs r0, #0x40
	strb r0, [r1]
	movs r0, #0xbc
	lsls r0, r0, #1
	bl SoundReq
_080A0442:
	pop {pc}

	thumb_func_start sub_080A0444
sub_080A0444: @ 0x080A0444
	ldr r3, _080A0460 @ =gUnk_081248B4
	ldrb r1, [r0, #0xf]
	adds r2, r1, #1
	strb r2, [r0, #0xf]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1b
	movs r2, #7
	ands r1, r2
	adds r1, r1, r3
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strh r1, [r0, #0x36]
	bx lr
	.align 2, 0
_080A0460: .4byte gUnk_081248B4

	thumb_func_start sub_080A0464
sub_080A0464: @ 0x080A0464
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #6
	movs r1, #0xac
	movs r2, #6
	bl FindEntityByID
	cmp r0, #0
	beq _080A048A
	movs r1, #0x2e
	ldrsh r2, [r0, r1]
	movs r1, #0x32
	ldrsh r3, [r0, r1]
	adds r3, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0807DEDC
_080A048A:
	pop {r4, r5, pc}
