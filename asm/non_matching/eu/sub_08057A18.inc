.syntax unified
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	mov r8, r0
	adds r4, r1, #0
	bl SetInitializationPriority
	ldr r5, _080575E8 @ =gUnk_03004030
	ldrb r0, [r5, #9]
	strb r0, [r5, #0xa]
	ldr r3, _080575EC @ =gRoomControls
	ldrb r0, [r3, #4]
	strb r0, [r5, #9]
	ldr r1, _080575F0 @ =gScreenTransition
	ldrb r0, [r4, #4]
	strb r0, [r1, #0xc]
	ldrb r0, [r4, #5]
	strb r0, [r1, #0xd]
	ldrb r0, [r4, #4]
	strb r0, [r3, #4]
	ldrb r0, [r4, #5]
	strb r0, [r3, #5]
	str r4, [r5]
	ldr r6, _080575F4 @ =gPlayerEntity
	ldrh r1, [r6, #0x2e]
	ldrh r0, [r3, #6]
	subs r1, r1, r0
	ldrh r2, [r4]
	movs r0, #0x3f
	ands r0, r2
	lsls r0, r0, #4
	subs r1, r1, r0
	strh r1, [r5, #4]
	ldrh r1, [r6, #0x32]
	ldrh r0, [r3, #8]
	subs r1, r1, r0
	ldrh r2, [r4]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r2
	lsrs r0, r0, #2
	subs r1, r1, r0
	strh r1, [r5, #6]
	ldrb r0, [r4, #3]
	bl sub_08080930
	mov r0, r8
	bl DeleteManager
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, pc}
	.align 2, 0
_080575E8: .4byte gUnk_03004030
_080575EC: .4byte gRoomControls
_080575F0: .4byte gScreenTransition
_080575F4: .4byte gPlayerEntity
.syntax divided
