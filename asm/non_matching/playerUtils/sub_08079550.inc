	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080795A8 @ =gUnk_03004030
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _08079562
	b _080796FC
_08079562:
	ldr r2, _080795AC @ =gPlayerState
	ldrb r0, [r2, #0x1e]
	cmp r0, #0
	beq _08079576
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080795B4
_08079576:
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	ldr r1, _080795B0 @ =gPlayerEntity
	mov r8, r1
	cmp r0, #0
	bne _080795A0
	ldrb r1, [r2, #0x1b]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080795A0
	mov r3, r8
	ldrb r1, [r3, #0x15]
	ldrb r2, [r2, #0xd]
	cmp r1, r2
	bne _080795A0
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080795B4
_080795A0:
	movs r0, #0
	mov r5, r8
	strb r0, [r5, #0xf]
	b _080796FE
	.align 2, 0
_080795A8: .4byte gUnk_03004030
_080795AC: .4byte gPlayerState
_080795B0: .4byte gPlayerEntity
_080795B4:
	bl sub_08079778
	cmp r0, #0
	bne _080795BE
	b _080796FC
_080795BE:
	ldr r3, _08079610 @ =gPlayerEntity
	ldrb r2, [r3, #0x14]
	movs r0, #6
	ands r0, r2
	ldr r1, _08079614 @ =gUnk_0811C100
	adds r1, r0, r1
	movs r0, #2
	ands r0, r2
	mov r8, r3
	cmp r0, #0
	beq _0807961C
	movs r6, #0x2e
	ldrsh r2, [r3, r6]
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r2, r2, r0
	ldr r4, _08079618 @ =gRoomControls
	ldrh r0, [r4, #6]
	subs r2, r2, r0
	asrs r2, r2, #4
	movs r3, #0x3f
	ands r2, r3
	mov r0, r8
	movs r5, #0x32
	ldrsh r1, [r0, r5]
	ldr r0, [r0, #0x48]
	ldrb r5, [r0, #3]
	adds r0, r1, r5
	ldrh r4, [r4, #8]
	subs r0, r0, r4
	asrs r0, r0, #4
	ands r0, r3
	lsls r7, r0, #6
	orrs r7, r2
	subs r1, r1, r5
	subs r1, r1, r4
	asrs r1, r1, #4
	ands r1, r3
	lsls r4, r1, #6
	orrs r4, r2
	b _0807965E
	.align 2, 0
_08079610: .4byte gPlayerEntity
_08079614: .4byte gUnk_0811C100
_08079618: .4byte gRoomControls
_0807961C:
	mov r6, r8
	movs r0, #0x2e
	ldrsh r2, [r6, r0]
	ldr r0, [r6, #0x48]
	ldrb r0, [r0, #4]
	mov ip, r0
	adds r0, r2, r0
	ldr r4, _080796EC @ =gRoomControls
	ldrh r3, [r4, #6]
	mov sb, r3
	subs r0, r0, r3
	asrs r7, r0, #4
	movs r3, #0x3f
	ands r7, r3
	movs r5, #0x32
	ldrsh r0, [r6, r5]
	ldrb r1, [r1, #1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	ldrh r1, [r4, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r7, r0
	mov r6, ip
	subs r2, r2, r6
	mov r1, sb
	subs r2, r2, r1
	asrs r4, r2, #4
	ands r4, r3
	orrs r4, r0
_0807965E:
	adds r0, r7, #0
	mov r5, r8
	adds r5, #0x38
	ldrb r1, [r5]
	bl sub_080B1AE0
	adds r3, r0, #0
	ldr r6, _080796F0 @ =gUnk_0811C1E8
	mov r1, r8
	ldrb r0, [r1, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	adds r0, r3, #0
	bl sub_08007DD6
	adds r3, r0, #0
	cmp r3, #0
	beq _080796FC
	adds r0, r4, #0
	ldrb r1, [r5]
	bl sub_080B1AE0
	adds r3, r0, #0
	mov r5, r8
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	adds r0, r3, #0
	bl sub_08007DD6
	adds r3, r0, #0
	cmp r3, #0
	beq _080796FC
	ldr r1, _080796F4 @ =gPlayerState
	ldrb r2, [r1, #6]
	movs r0, #0x80
	orrs r0, r2
	strb r0, [r1, #6]
	ldrb r0, [r1, #0x1e]
	adds r4, r1, #0
	cmp r0, #0
	bne _080796C8
	ldrb r0, [r5, #0xf]
	adds r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _080796FC
_080796C8:
	ldr r0, _080796F8 @ =gPlayerEntity
	subs r1, r3, #1
	movs r2, #0
	strb r1, [r0, #0x14]
	movs r1, #4
	strb r1, [r0, #0xc]
	strb r2, [r0, #0xd]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #0x81
	strb r1, [r4, #2]
	bl DoPlayerAction
	movs r0, #1
	b _080796FE
	.align 2, 0
_080796EC: .4byte gRoomControls
_080796F0: .4byte gUnk_0811C1E8
_080796F4: .4byte gPlayerState
_080796F8: .4byte gPlayerEntity
_080796FC:
	movs r0, #0
_080796FE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
