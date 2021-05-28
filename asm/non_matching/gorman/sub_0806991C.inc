	.syntax unified
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl Random
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	adds r1, r5, #0
	adds r1, #0x68
	movs r3, #0
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x69
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	ldr r0, _0806999C @ =gUnk_08111C5C
	adds r1, r1, r0
	ldr r2, _080699A0 @ =gRoomControls
	ldrh r0, [r1]
	ldrh r6, [r2, #6]
	adds r0, r0, r6
	strh r0, [r4, #0x1e]
	ldrh r0, [r1, #2]
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	strh r0, [r4, #0x22]
	movs r0, #8
	strb r0, [r4, #0x19]
	ldr r0, [r4, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	str r3, [r4, #0x14]
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	subs r0, r0, r1
	movs r3, #0x22
	ldrsh r1, [r4, r3]
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	subs r1, r1, r2
	bl sub_080045DA
	strb r0, [r5, #0x15]
	ldrb r2, [r5, #0x14]
	movs r1, #0x80
	ands r1, r2
	ldr r2, _080699A4 @ =gUnk_08111C74
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	adds r0, r0, r2
	ldrb r0, [r0]
	orrs r1, r0
	strb r1, [r5, #0x14]
	ldr r2, _080699A8 @ =gActiveScriptInfo
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806999C: .4byte gUnk_08111C5C
_080699A0: .4byte gRoomControls
_080699A4: .4byte gUnk_08111C74
_080699A8: .4byte gActiveScriptInfo
	.syntax divided
