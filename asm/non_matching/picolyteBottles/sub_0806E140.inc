	.syntax unified
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r1, #0
	ldrb r1, [r3, #0xb]
	cmp r1, #0
	beq _0806E1AC
	movs r0, #1
	str r0, [r5, #0x14]
	adds r1, r3, #0
	adds r1, #0x74
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r1, #2
	ldrh r2, [r1]
	adds r0, r3, #0
	adds r0, #0x44
	ldrb r0, [r0]
	adds r4, r1, #0
	cmp r0, #0
	bne _0806E16E
	lsls r0, r2, #1
	b _0806E172
_0806E16E:
	lsls r0, r2, #1
	adds r0, r0, r2
_0806E172:
	strh r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0806E18C @ =0x000003E7
	cmp r0, r1
	bls _0806E194
	strh r1, [r4]
	movs r0, #0
	str r0, [r5, #0x14]
	ldr r0, _0806E190 @ =0x0000421B
	bl MessageFromTarget
	b _0806E1C0
	.align 2, 0
_0806E18C: .4byte 0x000003E7
_0806E190: .4byte 0x0000421B
_0806E194:
	ldr r0, _0806E1A4 @ =0x00004218
	bl MessageFromTarget
	ldr r1, _0806E1A8 @ =gMessage
	ldrh r0, [r4]
	str r0, [r1, #0x10]
	b _0806E1C0
	.align 2, 0
_0806E1A4: .4byte 0x00004218
_0806E1A8: .4byte gMessage
_0806E1AC:
	str r1, [r5, #0x14]
	adds r0, r3, #0
	adds r0, #0x74
	strh r1, [r0]
	adds r4, r3, #0
	adds r4, #0x76
	strh r1, [r4]
	ldr r0, _0806E1D4 @ =0x0000421C
	bl MessageFromTarget
_0806E1C0:
	ldr r1, _0806E1D8 @ =gScreenTransition
	ldrh r0, [r4]
	strh r0, [r1, #6]
	ldr r2, _0806E1DC @ =gActiveScriptInfo
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, r5, pc}
	.align 2, 0
_0806E1D4: .4byte 0x0000421C
_0806E1D8: .4byte gScreenTransition
_0806E1DC: .4byte gActiveScriptInfo
	.syntax divided
