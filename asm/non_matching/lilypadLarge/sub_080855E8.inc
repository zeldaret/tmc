	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldrb r1, [r7, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r7, #0x10]
	ldr r6, _0808564C @ =gPlayerEntity
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0x18
	bl sub_0806FC80
	adds r1, r0, #0
	cmp r1, #0
	beq _080856EE
	ldr r3, _08085650 @ =gPlayerState
	ldr r0, [r3, #0x30]
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #0x30]
	ldr r4, [r6, #0x34]
	cmp r4, #0
	beq _0808561C
	b _080857CE
_0808561C:
	adds r5, r3, #0
	adds r5, #0x26
	ldrb r0, [r5]
	cmp r0, #0
	beq _08085634
	adds r2, r6, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	strb r4, [r5]
_08085634:
	adds r0, r3, #0
	adds r0, #0x84
	str r7, [r0]
	adds r0, r7, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	bne _08085654
	adds r0, r6, #0
	bl ResetCollisionLayer
	b _0808565A
	.align 2, 0
_0808564C: .4byte gPlayerEntity
_08085650: .4byte gPlayerState
_08085654:
	adds r0, r6, #0
	bl sub_08004542
_0808565A:
	ldrb r0, [r7, #0xf]
	cmp r0, #0
	bne _0808568C
	movs r0, #4
	strb r0, [r7, #0xf]
_08085664:
	adds r0, r7, #0
	movs r1, #8
	movs r2, #0xa
	bl sub_080A2AF4
	ldrb r0, [r7, #0xf]
	subs r0, #1
	strb r0, [r7, #0xf]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08085664
	movs r0, #1
	strb r0, [r7, #0xf]
	ldrb r1, [r7, #0xe]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r7, #0xe]
	str r2, [r7, #0x70]
	str r2, [r7, #0x6c]
_0808568C:
	ldr r2, _080856B8 @ =gPlayerState
	ldrb r0, [r2, #0x1c]
	cmp r0, #3
	beq _08085696
	b _080857CE
_08085696:
	ldr r1, _080856BC @ =gUnk_08120620
	ldrb r0, [r2, #0x1d]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r0, _080856C0 @ =gPlayerEntity
	ldrb r0, [r0, #0x14]
	movs r1, #6
	ands r1, r0
	cmp r1, #2
	beq _080856DE
	cmp r1, #2
	bgt _080856C4
	cmp r1, #0
	beq _080856D6
	b _080857CE
	.align 2, 0
_080856B8: .4byte gPlayerState
_080856BC: .4byte gUnk_08120620
_080856C0: .4byte gPlayerEntity
_080856C4:
	cmp r1, #4
	beq _080856CE
	cmp r1, #6
	beq _080856E6
	b _080857CE
_080856CE:
	ldr r0, [r7, #0x70]
	subs r0, r0, r4
	str r0, [r7, #0x70]
	b _080857CE
_080856D6:
	ldr r0, [r7, #0x70]
	adds r0, r0, r4
	str r0, [r7, #0x70]
	b _080857CE
_080856DE:
	ldr r0, [r7, #0x6c]
	subs r0, r0, r4
	str r0, [r7, #0x6c]
	b _080857CE
_080856E6:
	ldr r0, [r7, #0x6c]
	adds r0, r0, r4
	str r0, [r7, #0x6c]
	b _080857CE
_080856EE:
	ldrb r0, [r7, #0xf]
	cmp r0, #0
	beq _080856FC
	strb r1, [r7, #0xf]
	movs r0, #0x83
	bl SoundReq
_080856FC:
	adds r2, r7, #0
	adds r2, #0x41
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	mov r8, r2
	cmp r0, #0x13
	bne _080857C8
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	ldr r3, _08085758 @ =gUnk_08126EE4
	ldrb r2, [r6, #0x14]
	movs r0, #0xe
	ands r0, r2
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r1, r0
	movs r0, #0x32
	ldrsh r1, [r6, r0]
	movs r0, #1
	orrs r0, r2
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r1, r0
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	movs r2, #0x32
	ldrsh r1, [r7, r2]
	adds r2, r5, #0
	bl CalculateDirectionTo
	strb r0, [r7, #0x15]
	ldr r0, _0808575C @ =gPlayerState
	ldrb r0, [r0, #0x1d]
	cmp r0, #2
	beq _0808576A
	cmp r0, #2
	bgt _08085760
	cmp r0, #1
	beq _08085770
	b _08085774
	.align 2, 0
_08085758: .4byte gUnk_08126EE4
_0808575C: .4byte gPlayerState
_08085760:
	cmp r0, #3
	bne _08085774
	movs r4, #0x80
	lsls r4, r4, #3
	b _08085774
_0808576A:
	movs r4, #0xc0
	lsls r4, r4, #2
	b _08085774
_08085770:
	movs r4, #0x80
	lsls r4, r4, #2
_08085774:
	ldr r6, _080858A8 @ =gSineTable
	ldrb r0, [r7, #0x15]
	lsls r0, r0, #4
	adds r0, r0, r6
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x18
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
	ldr r1, [r7, #0x6c]
	adds r1, r1, r0
	str r1, [r7, #0x6c]
	ldrb r0, [r7, #0x15]
	lsls r0, r0, #4
	adds r0, #0x80
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r4, #0
	bl FixedMul
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	bl FixedDiv
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r7, #0x70]
	subs r1, r1, r0
	str r1, [r7, #0x70]
_080857C8:
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
_080857CE:
	ldr r0, [r7, #0x2c]
	str r0, [r7, #0x54]
	ldr r0, [r7, #0x30]
	str r0, [r7, #0x50]
	ldr r0, [r7, #0x6c]
	cmp r0, #0
	bne _080857E4
	ldr r0, [r7, #0x70]
	cmp r0, #0
	bne _080857E4
	b _080859F4
_080857E4:
	ldr r0, [r7, #0x70]
	ldr r1, _080858AC @ =0xFFFF0000
	cmp r0, r1
	blt _080857F4
	movs r1, #0x80
	lsls r1, r1, #9
	cmp r0, r1
	ble _080857F6
_080857F4:
	str r1, [r7, #0x70]
_080857F6:
	ldr r0, [r7, #0x6c]
	ldr r1, _080858AC @ =0xFFFF0000
	cmp r0, r1
	blt _08085806
	movs r1, #0x80
	lsls r1, r1, #9
	cmp r0, r1
	ble _08085808
_08085806:
	str r1, [r7, #0x6c]
_08085808:
	ldr r0, _080858B0 @ =gRoomTransition
	ldr r0, [r0]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0808581A
	adds r0, r7, #0
	bl sub_080A2AD4
_0808581A:
	ldr r0, [r7, #0x2c]
	ldr r1, [r7, #0x6c]
	adds r5, r0, r1
	ldr r1, [r7, #0x30]
	ldr r2, [r7, #0x70]
	adds r3, r1, r2
	adds r2, r5, #0
	bl CalculateDirectionTo
	strb r0, [r7, #0x15]
	ldr r0, [r7, #0x6c]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	bl FixedMul
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r5, _080858A8 @ =gSineTable
	ldrb r1, [r7, #0x15]
	lsls r1, r1, #4
	adds r1, r1, r5
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl FixedDiv
	strh r0, [r7, #0x24]
	ldr r0, [r7, #0x70]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl FixedMul
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r1, [r7, #0x15]
	lsls r1, r1, #4
	adds r1, #0x80
	adds r1, r1, r5
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl FixedDiv
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	rsbs r4, r0, #0
	movs r1, #0x24
	ldrsh r0, [r7, r1]
	cmp r4, r0
	ble _08085884
	strh r4, [r7, #0x24]
_08085884:
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	beq _080858BC
	adds r0, r7, #0
	adds r0, #0x7e
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _080858B4 @ =0x00000FFF
	cmp r1, r0
	bgt _080858B8
	movs r0, #0x24
	ldrsh r1, [r7, r0]
	lsls r1, r1, #0xc
	ldr r0, [r7, #0x7c]
	adds r0, r0, r1
	str r0, [r7, #0x7c]
	b _080858E0
	.align 2, 0
_080858A8: .4byte gSineTable
_080858AC: .4byte 0xFFFF0000
_080858B0: .4byte gRoomTransition
_080858B4: .4byte 0x00000FFF
_080858B8:
	movs r0, #0
	b _080858DE
_080858BC:
	adds r0, r7, #0
	adds r0, #0x7e
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _080858D8 @ =0xFFFFF000
	cmp r1, r0
	ble _080858DC
	movs r0, #0x24
	ldrsh r1, [r7, r0]
	lsls r1, r1, #0xc
	ldr r0, [r7, #0x7c]
	subs r0, r0, r1
	str r0, [r7, #0x7c]
	b _080858E0
	.align 2, 0
_080858D8: .4byte 0xFFFFF000
_080858DC:
	movs r0, #1
_080858DE:
	strb r0, [r7, #0xb]
_080858E0:
	adds r0, r7, #0
	bl sub_08085EFC
	adds r0, r7, #0
	bl ProcessMovement4
	ldr r1, [r7, #0x54]
	ldr r0, [r7, #0x2c]
	cmp r1, r0
	bne _0808590C
	adds r0, r7, #0
	adds r0, #0x85
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #2
	bne _08085906
	movs r0, #0
	str r0, [r7, #0x6c]
	b _08085916
_08085906:
	adds r0, r1, #1
	strb r0, [r2]
	b _08085916
_0808590C:
	adds r1, r7, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	adds r2, r1, #0
_08085916:
	ldr r1, [r7, #0x50]
	ldr r0, [r7, #0x30]
	cmp r1, r0
	bne _0808592E
	ldrb r0, [r2]
	cmp r0, #2
	bne _0808592A
	movs r0, #0
	str r0, [r7, #0x70]
	b _08085932
_0808592A:
	adds r0, #1
	b _08085930
_0808592E:
	movs r0, #0
_08085930:
	strb r0, [r2]
_08085932:
	ldr r0, _0808595C @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08085944
	adds r0, r7, #0
	bl sub_08085F1C
_08085944:
	ldr r1, [r7, #0x6c]
	cmp r1, #0
	beq _08085998
	cmp r1, #0
	bge _0808596E
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08085960
	movs r0, #0
	b _08085964
	.align 2, 0
_0808595C: .4byte gPlayerState
_08085960:
	adds r0, r1, #0
	adds r0, #0x80
_08085964:
	str r0, [r7, #0x6c]
	ldrh r2, [r7, #0x2a]
	movs r1, #0xe0
	lsls r1, r1, #4
	b _08085982
_0808596E:
	cmp r1, #0x7f
	bhi _08085976
	movs r0, #0
	b _0808597A
_08085976:
	adds r0, r1, #0
	subs r0, #0x80
_0808597A:
	str r0, [r7, #0x6c]
	ldrh r2, [r7, #0x2a]
	movs r1, #0xe0
	lsls r1, r1, #8
_08085982:
	adds r0, r1, #0
	ands r0, r2
	cmp r0, r1
	bne _08085998
	ldr r0, [r7, #0x6c]
	cmp r0, #0
	bge _08085992
	adds r0, #3
_08085992:
	asrs r0, r0, #2
	rsbs r0, r0, #0
	str r0, [r7, #0x6c]
_08085998:
	ldr r1, [r7, #0x70]
	cmp r1, #0
	beq _080859E6
	cmp r1, #0
	bge _080859C0
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	ble _080859AE
	movs r0, #0
	b _080859B2
_080859AE:
	adds r0, r1, #0
	adds r0, #0x80
_080859B2:
	str r0, [r7, #0x70]
	ldrh r1, [r7, #0x2a]
	movs r0, #0xe
	ands r0, r1
	cmp r0, #0xe
	bne _080859E6
	b _080859D8
_080859C0:
	cmp r1, #0x7f
	bhi _080859C8
	movs r0, #0
	b _080859CC
_080859C8:
	adds r0, r1, #0
	subs r0, #0x80
_080859CC:
	str r0, [r7, #0x70]
	ldrh r1, [r7, #0x2a]
	movs r0, #0xe0
	ands r0, r1
	cmp r0, #0xe0
	bne _080859E6
_080859D8:
	ldr r0, [r7, #0x70]
	cmp r0, #0
	bge _080859E0
	adds r0, #3
_080859E0:
	asrs r0, r0, #2
	rsbs r0, r0, #0
	str r0, [r7, #0x70]
_080859E6:
	adds r0, r7, #0
	bl sub_08085D28
	adds r0, r7, #0
	bl sub_08085D60
	b _08085A0A
_080859F4:
	ldr r0, _08085A18 @ =gRoomTransition
	ldr r0, [r0]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _08085A0A
	adds r0, r7, #0
	movs r1, #8
	movs r2, #0xa
	bl sub_080A2AF4
_08085A0A:
	adds r0, r7, #0
	bl sub_08085F48
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08085A18: .4byte gRoomTransition
	.syntax divided
