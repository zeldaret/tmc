	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r6, r1, #0
	bl sub_08077EFC
	cmp r0, #0
	bne _08076978
	b _08076A70
_08076978:
	ldr r0, _080769C4 @ =gPlayerEntity
	ldr r7, [r0, #0x34]
	cmp r7, #0
	bne _08076A70
	ldr r5, _080769C8 @ =gPlayerState
	ldrb r0, [r5, #0x1e]
	cmp r0, #0
	beq _08076A70
	adds r0, r4, #0
	bl UpdateItemAnim
	ldr r0, [r5, #0x30]
	movs r1, #0x80
	mov r8, r1
	ands r0, r1
	cmp r0, #0
	bne _080769A0
	adds r0, r4, #0
	bl UpdateItemAnim
_080769A0:
	ldrb r0, [r5, #0x1e]
	adds r0, #1
	strb r0, [r5, #0x1e]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bne _08076A7E
	ldr r0, [r5, #0x30]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080769CC
	strb r7, [r5, #0x1e]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077E78
	b _08076A7E
	.align 2, 0
_080769C4: .4byte gPlayerEntity
_080769C8: .4byte gPlayerState
_080769CC:
	movs r0, #0x40
	strb r0, [r5, #0x1e]
	movs r1, #8
	asrs r1, r6
	ldrb r0, [r5, #0xa]
	bics r0, r1
	strb r0, [r5, #0xa]
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	bl sub_0807A158
	cmp r0, #0
	beq _08076A46
	ldr r0, [r5, #0x30]
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _08076A60
	adds r0, r5, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08076A46
	adds r0, r5, #0
	adds r0, #0xab
	movs r1, #3
	strb r1, [r0]
	movs r1, #0xa6
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_08077DF4
	adds r0, r4, #0
	movs r1, #0xc
	bl CreatePlayerBomb
	adds r5, r0, #0
	cmp r5, #0
	beq _08076A70
	ldr r6, _08076A34 @ =gSave
	adds r4, r6, #0
	adds r4, #0xb4
	ldrb r0, [r4]
	bl ItemIsSword
	cmp r0, #0
	beq _08076A38
	ldrb r1, [r4]
	b _08076A3E
	.align 2, 0
_08076A34: .4byte gSave
_08076A38:
	adds r0, r6, #0
	adds r0, #0xb5
	ldrb r1, [r0]
_08076A3E:
	adds r0, r5, #0
	adds r0, #0x68
	strb r1, [r0]
	b _08076A7E
_08076A46:
	ldr r0, _08076A5C @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08076A60
	adds r1, #0x84
	adds r0, r4, #0
	bl sub_08077DF4
	b _08076A7E
	.align 2, 0
_08076A5C: .4byte gPlayerState
_08076A60:
	ldr r1, _08076A6C @ =gPlayerState
	movs r0, #0xc1
	lsls r0, r0, #4
	strh r0, [r1, #8]
	b _08076A7E
	.align 2, 0
_08076A6C: .4byte gPlayerState
_08076A70:
	ldr r1, _08076A84 @ =gPlayerState
	movs r0, #0
	strb r0, [r1, #0x1e]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077E78
_08076A7E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08076A84: .4byte gPlayerState
	.syntax divided
