	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	movs r6, #0
	ldr r0, [r0, #0x64]
	str r0, [sp, #4]
	mov r4, sb
	adds r4, #0x70
	ldr r0, _080A12F8 @ =gRoomControls
	movs r2, #0xd8
	lsls r2, r2, #2
	adds r1, r2, #0
	ldrh r3, [r0, #6]
	adds r1, r1, r3
	movs r7, #0xd4
	lsls r7, r7, #2
	adds r2, r7, #0
	ldrh r0, [r0, #8]
	adds r2, r2, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	movs r0, #9
	mov sl, r0
	movs r1, #1
	rsbs r1, r1, #0
	adds r5, r1, #0
_080A12B2:
	ldr r7, [sp, #4]
	ldr r2, [r7]
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _080A1300
	ldr r0, [r2, #4]
	cmp r0, #0
	beq _080A132C
	cmp r2, #0
	beq _080A132C
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	cmp r8, r0
	bgt _080A132E
	movs r7, #0x32
	ldrsh r0, [r2, r7]
	cmp r3, r0
	bgt _080A132E
	ldrb r0, [r2, #0xa]
	adds r0, #1
	strb r0, [r4]
	movs r0, #1
	strb r0, [r2, #0xb]
	adds r6, #1
	ldr r1, _080A12FC @ =CuccoMinigame_Sounds
	ldrb r0, [r2, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	str r3, [sp]
	bl SoundReq
	ldr r3, [sp]
	b _080A132E
	.align 2, 0
_080A12F8: .4byte gRoomControls
_080A12FC: .4byte CuccoMinigame_Sounds
_080A1300:
	cmp r0, #0
	ble _080A132E
	adds r6, #1
	ldr r0, [r2, #4]
	cmp r0, #0
	beq _080A132C
	cmp r2, #0
	beq _080A132C
	mov r1, r8
	adds r1, #4
	movs r7, #0x2e
	ldrsh r0, [r2, r7]
	cmp r1, r0
	ble _080A131E
	strh r1, [r2, #0x2e]
_080A131E:
	adds r1, r3, #4
	movs r7, #0x32
	ldrsh r0, [r2, r7]
	cmp r1, r0
	ble _080A132E
	strh r1, [r2, #0x32]
	b _080A132E
_080A132C:
	strb r5, [r4]
_080A132E:
	movs r0, #1
	rsbs r0, r0, #0
	add sl, r0
	adds r4, #1
	ldr r1, [sp, #4]
	adds r1, #4
	str r1, [sp, #4]
	mov r2, sl
	cmp r2, #0
	bge _080A12B2
	mov r0, sb
	adds r0, #0x6a
	strh r6, [r0]
	ldr r0, _080A136C @ =gPlayerState
	adds r0, #0x27
	movs r1, #0xff
	strb r1, [r0]
	mov r1, sb
	adds r1, #0x68
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080A1370
	movs r0, #0xe2
	bl SoundReq
	bl sub_08050384
	b _080A1376
	.align 2, 0
_080A136C: .4byte gPlayerState
_080A1370:
	ldr r1, _080A1384 @ =gActiveScriptInfo
	movs r0, #0
	strb r0, [r1, #6]
_080A1376:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	_080A1384: .4byte gActiveScriptInfo
	.syntax divided
