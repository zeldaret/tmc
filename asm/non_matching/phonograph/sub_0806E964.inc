	.syntax unified

.ifdef EU
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r2, r1, #0
	ldr r4, _0806E3F8 @ =gInput
	ldrh r1, [r4, #2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806E3FC
	bl sub_08050384
	b _0806E4EA
	.align 2, 0
_0806E3F8: .4byte gInput
_0806E3FC:
	ldrb r0, [r2, #0x18]
	adds r1, r0, #0
	mov r6, r8
	adds r6, #0x6c
	cmp r1, #0
	bne _0806E414
	adds r0, #1
	strb r0, [r2, #0x18]
	strh r1, [r6]
	mov r0, r8
	bl sub_0806EABC
_0806E414:
	ldrh r2, [r4, #4]
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0
	beq _0806E466
	mov r1, r8
	adds r1, #0x68
	movs r0, #0
	ldrsh r4, [r1, r0]
	movs r0, #0x40
	ands r0, r2
	adds r7, r1, #0
	cmp r0, #0
	beq _0806E434
	adds r4, #1
	b _0806E436
_0806E434:
	subs r4, #1
_0806E436:
	cmp r4, #0
	bgt _0806E43C
	movs r4, #1
_0806E43C:
	movs r5, #0x1c
	movs r0, #0x55
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0806E44A
	movs r5, #0x34
_0806E44A:
	cmp r4, r5
	ble _0806E450
	adds r4, r5, #0
_0806E450:
	strh r4, [r7]
	mov r0, r8
	bl sub_0806EABC
	ldrh r1, [r6]
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r0, #0
	ble _0806E466
	subs r0, r1, #1
	strh r0, [r6]
_0806E466:
	ldr r0, _0806E4B4 @ =gInput
	ldrh r1, [r0, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806E4C6
	mov r5, r8
	adds r5, #0x68
	mov r7, r8
	adds r7, #0x6a
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r2, #0
	ldrsh r0, [r7, r2]
	cmp r1, r0
	bne _0806E48E
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _0806E4BC
_0806E48E:
	ldr r4, _0806E4B8 @ =gUnk_081145E4
	movs r2, #0
	ldrsh r0, [r5, r2]
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl SoundReq
	ldrh r0, [r5]
	strh r0, [r7]
	movs r2, #0
	ldrsh r0, [r5, r2]
	lsls r0, r0, #2
	adds r4, #2
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r6]
	b _0806E4C6
	.align 2, 0
_0806E4B4: .4byte gInput
_0806E4B8: .4byte gUnk_081145E4
_0806E4BC:
	ldr r0, _0806E4F0 @ =0x80010000
	bl SoundReq
	movs r0, #0
	strh r0, [r7]
_0806E4C6:
	ldrh r1, [r6]
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r0, #0
	ble _0806E4E4
	subs r0, r1, #1
	movs r1, #0
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0806E4E4
	mov r0, r8
	adds r0, #0x6a
	strh r1, [r0]
	strh r1, [r6]
_0806E4E4:
	ldr r1, _0806E4F4 @ =gActiveScriptInfo
	movs r0, #0
	strb r0, [r1, #6]
_0806E4EA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0806E4F0: .4byte 0x80010000
_0806E4F4: .4byte gActiveScriptInfo

.else
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r2, r1, #0
	ldr r0, _0806E984 @ =gInput
	mov r8, r0
	ldrh r1, [r0, #2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806E988
	bl sub_08050384
	b _0806EAAA
	.align 2, 0
_0806E984: .4byte gInput
_0806E988:
	ldrb r0, [r2, #0x18]
	adds r1, r0, #0
	mov r6, sb
	adds r6, #0x6c
	mov r7, sb
	adds r7, #0x68
	cmp r1, #0
	bne _0806E9A8
	adds r0, #1
	strb r0, [r2, #0x18]
	strh r1, [r6]
	movs r2, #0
	ldrsh r1, [r7, r2]
	mov r0, sb
	bl sub_0806EABC
_0806E9A8:
	movs r5, #0x1c
	movs r0, #0x55
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0806E9B6
	movs r5, #0x34
_0806E9B6:
	movs r0, #0
	ldrsh r4, [r7, r0]
	mov r2, r8
	ldrh r1, [r2, #2]
	movs r2, #0xc0
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0806E9E4
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806E9D4
	adds r4, #1
	b _0806E9D6
_0806E9D4:
	subs r4, #1
_0806E9D6:
	cmp r4, #0
	bgt _0806E9DC
	adds r4, r5, #0
_0806E9DC:
	cmp r4, r5
	ble _0806EA0A
	movs r4, #1
	b _0806EA0A
_0806E9E4:
	mov r0, r8
	ldrh r1, [r0, #4]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0806EA0A
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806E9FC
	adds r4, #1
	b _0806E9FE
_0806E9FC:
	subs r4, #1
_0806E9FE:
	cmp r4, #0
	bgt _0806EA04
	movs r4, #1
_0806EA04:
	cmp r4, r5
	ble _0806EA0A
	adds r4, r5, #0
_0806EA0A:
	movs r1, #0
	ldrsh r0, [r7, r1]
	cmp r4, r0
	beq _0806EA28
	mov r0, sb
	adds r1, r4, #0
	bl sub_0806EABC
	ldrh r1, [r6]
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r0, #0
	ble _0806EA28
	subs r0, r1, #1
	strh r0, [r6]
_0806EA28:
	strh r4, [r7]
	ldr r0, _0806EA74 @ =gInput
	ldrh r1, [r0, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806EA86
	mov r5, sb
	adds r5, #0x6a
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r5, r2]
	cmp r0, r1
	bne _0806EA4E
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _0806EA7C
_0806EA4E:
	ldr r4, _0806EA78 @ =gUnk_081145E4
	movs r2, #0
	ldrsh r0, [r7, r2]
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl SoundReq
	ldrh r0, [r7]
	strh r0, [r5]
	movs r2, #0
	ldrsh r0, [r7, r2]
	lsls r0, r0, #2
	adds r4, #2
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r6]
	b _0806EA86
	.align 2, 0
_0806EA74: .4byte gInput
_0806EA78: .4byte gUnk_081145E4
_0806EA7C:
	ldr r0, _0806EAB4 @ =0x80010000
	bl SoundReq
	movs r0, #0
	strh r0, [r5]
_0806EA86:
	ldrh r1, [r6]
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r0, #0
	ble _0806EAA4
	subs r0, r1, #1
	movs r1, #0
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0806EAA4
	mov r0, sb
	adds r0, #0x6a
	strh r1, [r0]
	strh r1, [r6]
_0806EAA4:
	ldr r1, _0806EAB8 @ =gActiveScriptInfo
	movs r0, #0
	strb r0, [r1, #6]
_0806EAAA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0806EAB4: .4byte 0x80010000
_0806EAB8: .4byte gActiveScriptInfo
.endif
	.syntax divided
