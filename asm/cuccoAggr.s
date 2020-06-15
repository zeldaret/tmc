	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start CuccoAggr
CuccoAggr: @ 0x08038CA4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080012DC
	adds r1, r0, #0
	cmp r1, #0
	beq _08038CC8
	ldr r0, _08038CC4 @ =gUnk_080012C8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
	b _08038CF0
	.align 2, 0
_08038CC4: .4byte gUnk_080012C8
_08038CC8:
	ldr r4, _08038CF4 @ =gUnk_080CF778
	adds r0, r5, #0
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl SetChildOffset
	adds r0, r5, #0
	bl sub_080391B4
_08038CF0:
	pop {r4, r5, pc}
	.align 2, 0
_08038CF4: .4byte gUnk_080CF778

	thumb_func_start sub_08038CF8
sub_08038CF8: @ 0x08038CF8
	push {lr}
	ldr r2, _08038D0C @ =gUnk_080CF790
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08038D0C: .4byte gUnk_080CF790

	thumb_func_start sub_08038D10
sub_08038D10: @ 0x08038D10
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _08038D52
	adds r5, r4, #0
	adds r5, #0x7a
	ldrb r0, [r5]
	cmp r0, #0
	bne _08038D3E
	movs r0, #1
	bl CheckRoomFlag
	cmp r0, #0
	bne _08038D3E
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0xbf
	bhi _08038D46
	movs r0, #1
	strb r0, [r5]
	b _08038D46
_08038D3E:
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0xff
	strb r0, [r1]
_08038D46:
	adds r0, r4, #0
	bl sub_08039218
	adds r0, r4, #0
	bl sub_08039260
_08038D52:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038D64
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08038D64:
	ldr r1, _08038D70 @ =gUnk_080CF778
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_08038D70: .4byte gUnk_080CF778

	thumb_func_start nullsub_165
nullsub_165: @ 0x08038D74
	bx lr
	.align 2, 0

	thumb_func_start sub_08038D78
sub_08038D78: @ 0x08038D78
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _08038D96
	movs r0, #0
	strb r0, [r4, #0xb]
	movs r0, #0x30
	strb r0, [r4, #0x16]
	adds r0, r4, #0
	bl sub_08039120
	b _08038D9C
_08038D96:
	adds r0, r4, #0
	bl sub_08039140
_08038D9C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08038DA0
sub_08038DA0: @ 0x08038DA0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08038DB6
	adds r0, r4, #0
	bl sub_0803901C
_08038DB6:
	adds r0, r4, #0
	bl sub_08039298
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08038DC0
sub_08038DC0: @ 0x08038DC0
	push {lr}
	ldr r2, _08038DD4 @ =gUnk_080CF7AC
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08038DD4: .4byte gUnk_080CF7AC

	thumb_func_start sub_08038DD8
sub_08038DD8: @ 0x08038DD8
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x10
	strb r1, [r0, #0xe]
	ldr r2, _08038E10 @ =gUnk_080CF7BC
	ldrb r1, [r0, #0xa]
	adds r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r0, #0xf]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	adds r3, r0, #0
	adds r3, #0x29
	ldrb r2, [r3]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r3]
	movs r1, #4
	bl InitializeAnimation
	ldr r0, _08038E14 @ =0x000001D9
	bl sub_08004488
	pop {pc}
	.align 2, 0
_08038E10: .4byte gUnk_080CF7BC
_08038E14: .4byte 0x000001D9

	thumb_func_start sub_08038E18
sub_08038E18: @ 0x08038E18
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08038E70
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08038E70
	bl sub_08079184
	adds r0, r4, #0
	bl sub_08039218
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
_08038E70:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08038EA2
	movs r0, #0x10
	strb r0, [r4, #0xe]
	bl Random
	ldrb r3, [r4, #0x18]
	lsls r2, r3, #0x19
	lsrs r2, r2, #0x1f
	movs r1, #1
	ands r1, r0
	eors r2, r1
	lsls r2, r2, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_08039260
_08038EA2:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08038EAC
sub_08038EAC: @ 0x08038EAC
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_080390F8
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_08038ED0
sub_08038ED0: @ 0x08038ED0
	push {lr}
	ldrb r2, [r0, #0x10]
	movs r1, #0x80
	orrs r1, r2
	strb r1, [r0, #0x10]
	bl sub_08039218
	pop {pc}

	thumb_func_start sub_08038EE0
sub_08038EE0: @ 0x08038EE0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_08039298
	movs r1, #0xe0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08038F1C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08038F16
	adds r0, r4, #0
	bl sub_0803901C
	b _08038F1C
_08038F16:
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x20]
_08038F1C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08038F20
sub_08038F20: @ 0x08038F20
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08039298
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08038F42
	adds r0, r4, #0
	bl sub_0803901C
_08038F42:
	pop {r4, pc}

	thumb_func_start sub_08038F44
sub_08038F44: @ 0x08038F44
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08038F8C @ =gLinkEntity
	adds r1, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080390F8
	adds r0, r4, #0
	bl sub_080AEF88
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_080044EC
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_08039298
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r2, r0, #1
	strh r2, [r1]
	lsls r0, r2, #0x10
	cmp r0, #0
	bne _08038F90
	adds r0, r4, #0
	bl sub_08039120
	b _08038F9E
	.align 2, 0
_08038F8C: .4byte gLinkEntity
_08038F90:
	movs r0, #0x1f
	ands r2, r0
	cmp r2, #0
	bne _08038F9E
	adds r0, r4, #0
	bl sub_08039260
_08038F9E:
	pop {r4, pc}

	thumb_func_start sub_08038FA0
sub_08038FA0: @ 0x08038FA0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xe]
	adds r0, r1, #1
	strb r0, [r4, #0xe]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _08038FB8
	adds r0, r4, #0
	bl sub_08039260
_08038FB8:
	adds r2, r4, #0
	adds r2, #0x78
	ldrh r1, [r2]
	cmp r1, #0
	beq _08038FFC
	ldr r3, _08038FF4 @ =0x0000FFFF
	adds r0, r1, r3
	strh r0, [r2]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08038FE0
	ldr r1, _08038FF8 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
_08038FE0:
	adds r0, r4, #0
	bl sub_080390F8
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_08004274
	b _08039018
	.align 2, 0
_08038FF4: .4byte 0x0000FFFF
_08038FF8: .4byte gLinkEntity
_08038FFC:
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0803917C
	cmp r0, #0
	beq _08039018
	adds r0, r4, #0
	bl DeleteEntity
_08039018:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803901C
sub_0803901C: @ 0x0803901C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Random
	adds r3, r0, #0
	movs r5, #3
	ands r5, r3
	cmp r3, #3
	bne _08039042
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	beq _0803903C
	cmp r0, #4
	beq _08039040
	movs r5, #0
	b _08039042
_0803903C:
	movs r5, #1
	b _08039042
_08039040:
	movs r5, #2
_08039042:
	cmp r5, #1
	beq _0803906C
	cmp r5, #2
	beq _080390AA
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r2, _08039068 @ =gUnk_080CF7BE
	lsrs r0, r3, #0x10
	movs r1, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	b _080390BC
	.align 2, 0
_08039068: .4byte gUnk_080CF7BE
_0803906C:
	movs r1, #3
	movs r0, #3
	strb r0, [r4, #0xc]
	lsrs r0, r3, #8
	ands r0, r1
	adds r0, #2
	strb r0, [r4, #0xe]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl sub_080390C0
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
	bl Random
	ands r0, r5
	cmp r0, #0
	beq _080390BC
	bl Random
	ands r5, r0
	movs r1, #0xeb
	lsls r1, r1, #1
	adds r0, r5, r1
	bl sub_08004488
	b _080390BC
_080390AA:
	movs r0, #4
	strb r0, [r4, #0xc]
	lsrs r1, r3, #0x10
	movs r0, #1
	ands r1, r0
	adds r1, #2
	adds r0, r4, #0
	bl InitializeAnimation
_080390BC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080390C0
sub_080390C0: @ 0x080390C0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Random
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _080390E0
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _080390E0
	lsrs r0, r5, #0x10
	b _080390E8
_080390E0:
	adds r0, r4, #0
	bl sub_08049EE4
	adds r0, #2
_080390E8:
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080390F8
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080390F8
sub_080390F8: @ 0x080390F8
	push {lr}
	adds r3, r0, #0
	ldrb r1, [r3, #0x15]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0803911C
	lsrs r1, r1, #4
	movs r0, #1
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
_0803911C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08039120
sub_08039120: @ 0x08039120
	push {lr}
	ldr r2, _0803913C @ =gUnk_080CF7C2
	ldrb r1, [r0, #0xa]
	adds r1, r1, r2
	ldrb r1, [r1]
	movs r2, #0
	strh r1, [r0, #0x24]
	adds r1, r0, #0
	adds r1, #0x7a
	strb r2, [r1]
	bl sub_0803901C
	pop {pc}
	.align 2, 0
_0803913C: .4byte gUnk_080CF7C2

	thumb_func_start sub_08039140
sub_08039140: @ 0x08039140
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #6
	strb r0, [r4, #0xc]
	bl Random
	strb r0, [r4, #0xe]
	ldr r1, _08039174 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	ldr r0, _08039178 @ =0x0000FFFC
	strh r0, [r4, #0x36]
	adds r1, r4, #0
	adds r1, #0x78
	movs r0, #0xb4
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_080390F8
	adds r0, r4, #0
	movs r1, #4
	bl InitializeAnimation
	pop {r4, pc}
	.align 2, 0
_08039174: .4byte gLinkEntity
_08039178: .4byte 0x0000FFFC

	thumb_func_start sub_0803917C
sub_0803917C: @ 0x0803917C
	push {r4, lr}
	adds r2, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	ldr r3, _080391AC @ =gRoomControls
	movs r4, #0xa
	ldrsh r1, [r3, r4]
	adds r1, #0xc
	subs r0, r0, r1
	movs r1, #0x84
	lsls r1, r1, #1
	cmp r0, r1
	bhi _080391B0
	movs r0, #0x32
	ldrsh r1, [r2, r0]
	movs r2, #0xc
	ldrsh r0, [r3, r2]
	adds r0, #0xc
	subs r1, r1, r0
	cmp r1, #0xb8
	bhi _080391B0
	movs r0, #0
	b _080391B2
	.align 2, 0
_080391AC: .4byte gRoomControls
_080391B0:
	movs r0, #1
_080391B2:
	pop {r4, pc}

	thumb_func_start sub_080391B4
sub_080391B4: @ 0x080391B4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x7a
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803920C
	adds r2, r5, #0
	adds r2, #0x7b
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0803920C
	movs r0, #0x41
	movs r1, #2
	bl CreateEnemy
	adds r4, r0, #0
	cmp r4, #0
	beq _0803920C
	bl Random
	movs r1, #0x17
	ands r1, r0
	lsls r1, r1, #2
	ldr r0, _08039210 @ =gUnk_080CF7C4
	adds r1, r1, r0
	ldr r2, _08039214 @ =gRoomControls
	ldrh r0, [r1]
	ldrh r3, [r2, #0xa]
	adds r0, r0, r3
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #2]
	ldrh r2, [r2, #0xc]
	adds r0, r0, r2
	strh r0, [r4, #0x32]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
_0803920C:
	pop {r4, r5, pc}
	.align 2, 0
_08039210: .4byte gUnk_080CF7C4
_08039214: .4byte gRoomControls

	thumb_func_start sub_08039218
sub_08039218: @ 0x08039218
	push {lr}
	adds r2, r0, #0
	movs r0, #5
	strb r0, [r2, #0xc]
	ldr r1, _08039254 @ =gUnk_080CF824
	ldrb r0, [r2, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x24]
	ldr r1, _08039258 @ =gUnk_080CF828
	ldrb r0, [r2, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x78
	strh r1, [r0]
	subs r0, #0x20
	ldrb r0, [r0]
	cmp r0, #4
	beq _0803924C
	adds r0, r2, #0
	movs r1, #4
	bl InitializeAnimation
_0803924C:
	ldr r0, _0803925C @ =0x000001D9
	bl sub_08004488
	pop {pc}
	.align 2, 0
_08039254: .4byte gUnk_080CF824
_08039258: .4byte gUnk_080CF828
_0803925C: .4byte 0x000001D9

	thumb_func_start sub_08039260
sub_08039260: @ 0x08039260
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08039290 @ =gUnk_080CF82E
	ldrb r1, [r4, #0xa]
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r4, #0
	movs r2, #0
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _0803928E
	ldr r0, _08039294 @ =gUnk_080CF82C
	ldrb r1, [r4, #0x18]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r1, [r2, #0x2e]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
_0803928E:
	pop {r4, pc}
	.align 2, 0
_08039290: .4byte gUnk_080CF82E
_08039294: .4byte gUnk_080CF82C

	thumb_func_start sub_08039298
sub_08039298: @ 0x08039298
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xb]
	cmp r0, #0
	bne _080392A8
	adds r0, r1, #0
	bl sub_08078930
_080392A8:
	pop {pc}
	.align 2, 0
