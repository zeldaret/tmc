	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #7
	bls _0809C5D0
	b _0809C7DE
_0809C5D0:
	lsls r0, r0, #2
	ldr r1, _0809C5DC @ =_0809C5E0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809C5DC: .4byte _0809C5E0
_0809C5E0: @ jump table
	.4byte _0809C738 @ case 0
	.4byte _0809C600 @ case 1
	.4byte _0809C600 @ case 2
	.4byte _0809C600 @ case 3
	.4byte _0809C600 @ case 4
	.4byte _0809C6B8 @ case 5
	.4byte _0809C7B4 @ case 6
	.4byte _0809C7D2 @ case 7
_0809C600:
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl SortEntityBelow
	ldr r0, [r5, #0x50]
	ldrb r0, [r0, #0xd]
	adds r6, r5, #0
	adds r6, #0x84
	cmp r0, #6
	bne _0809C630
	movs r0, #0xf
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bge _0809C624
	ldr r0, [r6]
	ldrb r0, [r0]
	rsbs r0, r0, #0
	b _0809C628
_0809C624:
	ldr r0, [r6]
	ldrb r0, [r0]
_0809C628:
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	bl sub_0809CBE4
_0809C630:
	ldr r4, [r5, #0x50]
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	bl __divsi3
	adds r3, r0, #0
	lsls r0, r3, #0xd
	lsrs r3, r0, #8
	ldr r0, _0809C660 @ =0xFFFFE000
	adds r3, r3, r0
	ldr r0, [r6]
	ldr r0, [r0, #8]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #1
	bne _0809C664
	movs r1, #0x88
	lsls r1, r1, #6
	adds r3, r3, r1
	b _0809C66C
	.align 2, 0
_0809C660: .4byte 0xFFFFE000
_0809C664:
	lsrs r0, r3, #1
	movs r1, #0x88
	lsls r1, r1, #6
	adds r3, r0, r1
_0809C66C:
	adds r2, r4, #0
	adds r2, #0x7b
	ldr r1, _0809C6B0 @ =gUnk_08123E18
	ldrb r0, [r5, #0xa]
	subs r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	ldrb r2, [r2]
	adds r0, r0, r2
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r0, r5, #0
	adds r2, r3, #0
	bl sub_0809CB70
	ldr r2, [r5, #0x50]
	adds r2, #0x7b
	ldr r1, _0809C6B4 @ =gUnk_08123E1C
	ldrb r0, [r5, #0xa]
	subs r0, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	ldrb r2, [r2]
	adds r1, r1, r2
	adds r0, r5, #0
	adds r0, #0x79
	ldrb r0, [r0]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x7b
	strb r0, [r1]
	b _0809C7BC
	.align 2, 0
_0809C6B0: .4byte gUnk_08123E18
_0809C6B4: .4byte gUnk_08123E1C
_0809C6B8:
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl SortEntityBelow
	ldr r0, [r5, #0x50]
	ldrb r0, [r0, #0xd]
	adds r6, r5, #0
	adds r6, #0x79
	adds r7, r5, #0
	adds r7, #0x76
	cmp r0, #4
	beq _0809C6F6
	adds r0, r5, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #1
	beq _0809C6F6
	ldrb r0, [r6]
	cmp r0, #0x1c
	bls _0809C6E4
	subs r0, #1
	strb r0, [r6]
_0809C6E4:
	ldrh r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bls _0809C6F4
	subs r0, #1
	strh r0, [r7]
	b _0809C6F6
_0809C6F4:
	strh r1, [r7]
_0809C6F6:
	ldr r4, [r5, #0x50]
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	bl __divsi3
	adds r3, r0, #0
	ldrb r0, [r6]
	lsls r0, r0, #8
	muls r0, r3, r0
	lsrs r3, r0, #8
	adds r4, #0x7b
	ldrb r0, [r4]
	adds r0, #0x80
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r0, r5, #0
	adds r2, r3, #0
	bl sub_0809CB70
	ldr r0, [r5, #0x50]
	adds r0, #0x7b
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x7b
	strb r0, [r1]
	ldrh r1, [r7]
	adds r0, r5, #0
	adds r0, #0x74
	b _0809C7C4
_0809C738:
	movs r0, #0x37
	bl CheckFlags
	cmp r0, #0
	beq _0809C74A
	adds r0, r5, #0
	movs r1, #0x1e
	bl RequestPriorityDuration
_0809C74A:
	ldr r1, _0809C7A8 @ =FrozenOctorok_Action1SubActions
	ldrb r0, [r5, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq _0809C7BC
	ldr r0, _0809C7AC @ =gRoomTransition
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0809C772
	ldr r0, [r5, #0x54]
	bl CreateSparkle
_0809C772:
	adds r3, r5, #0
	adds r3, #0x7e
	ldrh r0, [r3]
	cmp r0, #0
	beq _0809C7BC
	ldr r2, [r5, #0x54]
	movs r1, #0
	ldrsh r0, [r3, r1]
	ldr r1, [r2, #0x20]
	subs r1, r1, r0
	str r1, [r2, #0x20]
	ldr r0, [r2, #0x34]
	adds r0, r0, r1
	str r0, [r2, #0x34]
	ldr r0, [r5, #0x54]
	ldr r1, [r0, #0x20]
	movs r0, #0xc0
	lsls r0, r0, #6
	cmp r1, r0
	beq _0809C7A0
	ldr r0, _0809C7B0 @ =0xFFFFD000
	cmp r1, r0
	bne _0809C7BC
_0809C7A0:
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
	b _0809C7BC
	.align 2, 0
_0809C7A8: .4byte FrozenOctorok_Action1SubActions
_0809C7AC: .4byte gRoomTransition
_0809C7B0: .4byte 0xFFFFD000
_0809C7B4:
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl CopyPosition
_0809C7BC:
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r1, [r0]
	subs r0, #2
_0809C7C4:
	ldrh r2, [r0]
	adds r0, #6
	ldrh r3, [r0]
	adds r0, r5, #0
	bl sub_0805EC9C
	b _0809C7DE
_0809C7D2:
	ldr r0, _0809C7E0 @ =gRoomControls
	ldr r0, [r0, #0x30]
	cmp r0, r5
	beq _0809C7DE
	bl DeleteThisEntity
_0809C7DE:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809C7E0: .4byte gRoomControls
	.syntax divided
