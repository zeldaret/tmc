	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_080351BC
sub_080351BC: @ 0x080351BC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080351D4 @ =gUnk_080CF040
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080351D4: .4byte gUnk_080CF040

	thumb_func_start sub_080351D8
sub_080351D8: @ 0x080351D8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xa]
	cmp r1, #0
	bne _08035204
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x42
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080368D8
	adds r0, r4, #0
	bl sub_0803520C
	b _08035208
_08035204:
	bl DeleteThisEntity
_08035208:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803520C
sub_0803520C: @ 0x0803520C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08035238
	ldrb r0, [r4, #0xd]
	cmp r0, #3
	beq _0803524C
	ldr r2, _08035234 @ =gRoomControls
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	str r0, [r2, #0x30]
	movs r0, #0x5a
	strb r0, [r1, #7]
	bl sub_08078B48
	b _0803524C
	.align 2, 0
_08035234: .4byte gRoomControls
_08035238:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #7]
	cmp r0, #0
	beq _0803524C
	subs r0, #1
	strb r0, [r1, #7]
	bl sub_08078B48
_0803524C:
	ldr r1, _08035284 @ =gUnk_080CF054
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xd]
	cmp r0, #3
	bls _08035266
	bl sub_08078B48
_08035266:
	adds r0, r4, #0
	bl sub_0800445C
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r1, [r0]
	subs r0, #2
	ldrh r2, [r0]
	adds r0, #6
	ldrh r3, [r0]
	adds r0, r4, #0
	bl sub_0805EC9C
	pop {r4, pc}
	.align 2, 0
_08035284: .4byte gUnk_080CF054

	thumb_func_start sub_08035288
sub_08035288: @ 0x08035288
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0x76
	movs r4, #0
	movs r1, #0xa0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r3, r2, #0
	adds r3, #0x84
	ldr r0, [r3]
	strb r4, [r0, #6]
	adds r0, r2, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	adds r0, r1, #0
	cmp r0, #4
	bne _080352C8
	strb r0, [r2, #0xd]
	ldr r0, _080352C4 @ =gUnk_02034490
	movs r1, #1
	strb r1, [r0]
	bl sub_08078B48
	movs r0, #0x94
	lsls r0, r0, #1
	bl PlaySFX
	b _080352FA
	.align 2, 0
_080352C4: .4byte gUnk_02034490
_080352C8:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080352DA
	strb r4, [r2, #0xb]
	adds r1, r2, #0
	adds r1, #0x79
	movs r0, #0x3c
	b _080352F4
_080352DA:
	ldr r1, [r3]
	ldrb r0, [r1, #1]
	cmp r0, #3
	bls _080352E6
	subs r0, #1
	strb r0, [r1, #1]
_080352E6:
	ldr r0, [r3]
	ldr r0, [r0, #0xc]
	adds r0, #0x7d
	strb r4, [r0]
	adds r1, r2, #0
	adds r1, #0x79
	movs r0, #0x78
_080352F4:
	strb r0, [r1]
	movs r0, #1
	strb r0, [r2, #0xd]
_080352FA:
	pop {r4, pc}

	thumb_func_start sub_080352FC
sub_080352FC: @ 0x080352FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	movs r6, #1
	adds r4, r6, #0
	ands r4, r0
	cmp r4, #0
	bne _080353EC
	adds r0, r5, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	adds r1, #0x7d
	ldrb r2, [r1]
	mov sb, r0
	cmp r2, #0
	beq _0803532C
	subs r0, r2, #1
	strb r0, [r1]
_0803532C:
	ldr r3, _0803538C @ =gRoomControls
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r0, #0
	ldrh r2, [r3, #6]
	adds r1, r1, r2
	ldrh r0, [r5, #0x2e]
	subs r1, r1, r0
	adds r1, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r3, #8]
	ldrh r2, [r5, #0x32]
	subs r0, r0, r2
	adds r0, #0x8c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, #8
	bhi _08035356
	cmp r0, #8
	bls _08035394
_08035356:
	mov r1, sb
	ldr r0, [r1]
	strb r6, [r0, #2]
	ldrh r0, [r3, #6]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r2, _08035390 @ =0xFFFFFEF8
	adds r1, r1, r2
	subs r0, r0, r1
	ldrh r1, [r3, #8]
	movs r3, #0x32
	ldrsh r2, [r5, r3]
	subs r2, #0x88
	subs r1, r1, r2
	bl sub_080045DA
	asrs r0, r0, #3
	strb r0, [r5, #0x15]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	bl sub_080AEF88
	adds r7, r5, #0
	adds r7, #0x79
	b _08035456
	.align 2, 0
_0803538C: .4byte gRoomControls
_08035390: .4byte 0xFFFFFEF8
_08035394:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _080353D8
	adds r0, r5, #0
	movs r1, #0x87
	movs r2, #5
	movs r3, #0
	bl CreateObjectWithParent
	adds r0, r5, #0
	movs r1, #0x87
	movs r2, #5
	movs r3, #1
	bl CreateObjectWithParent
	adds r0, r5, #0
	movs r1, #0x87
	movs r2, #5
	movs r3, #2
	bl CreateObjectWithParent
	adds r0, r5, #0
	movs r1, #0x87
	movs r2, #5
	movs r3, #3
	bl CreateObjectWithParent
	adds r0, r5, #0
	movs r1, #0x87
	movs r2, #5
	movs r3, #4
	bl CreateObjectWithParent
	strb r6, [r5, #0xb]
_080353D8:
	mov r1, sb
	ldr r0, [r1]
	strb r4, [r0, #2]
	adds r1, r5, #0
	adds r1, #0x79
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	adds r7, r1, #0
	b _08035456
_080353EC:
	adds r0, r5, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r1, [r1, #1]
	subs r4, r1, #1
	mov sb, r0
	adds r7, r5, #0
	adds r7, #0x79
	cmp r4, #0
	beq _08035438
	mov ip, sb
	movs r2, #1
	mov sl, r2
	lsls r0, r4, #2
	subs r6, r0, #4
	movs r3, #3
	mov r8, r3
_0803540E:
	mov r1, ip
	ldr r0, [r1]
	adds r0, #0xc
	adds r0, r0, r6
	ldr r3, [r0]
	ldrb r2, [r3, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	mov r0, sl
	orrs r1, r0
	mov r0, r8
	ands r1, r0
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
	subs r6, #4
	subs r4, #1
	cmp r4, #0
	bne _0803540E
_08035438:
	ldr r1, _080354AC @ =gUnk_030010A0
	ldr r0, [r1]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08035450
	adds r0, r5, #0
	movs r1, #0x87
	movs r2, #6
	movs r3, #0
	bl CreateObjectWithParent
_08035450:
	ldrb r0, [r7]
	subs r0, #1
	strb r0, [r7]
_08035456:
	ldrb r0, [r7]
	cmp r0, #0
	bne _080354E8
	movs r0, #2
	strb r0, [r5, #0xd]
	adds r4, r5, #0
	adds r4, #0x7c
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_080AE068
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080354B0
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0x5f
	strb r0, [r1]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080ADF80
	adds r0, r5, #0
	movs r1, #0xef
	bl sub_0801D2B4
	adds r0, r5, #0
	movs r1, #0xef
	bl sub_08036F14
	mov r2, sb
	ldr r0, [r2]
	ldr r0, [r0, #0xc]
	movs r1, #1
	bl LoadAnimation
	b _080354DC
	.align 2, 0
_080354AC: .4byte gUnk_030010A0
_080354B0:
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0x61
	strb r0, [r1]
	ldr r1, _080354F4 @ =0x00000109
	adds r0, r5, #0
	bl sub_080ADF80
	adds r0, r5, #0
	movs r1, #0xf0
	bl sub_0801D2B4
	adds r0, r5, #0
	movs r1, #0xf3
	bl sub_08036F14
	mov r3, sb
	ldr r0, [r3]
	ldr r0, [r0, #0xc]
	movs r1, #2
	bl LoadAnimation
_080354DC:
	adds r0, r5, #0
	movs r1, #0x87
	movs r2, #8
	movs r3, #0
	bl CreateObjectWithParent
_080354E8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080354F4: .4byte 0x00000109

	thumb_func_start sub_080354F8
sub_080354F8: @ 0x080354F8
	push {lr}
	adds r1, r0, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	adds r2, r0, #0
	adds r2, #0x7d
	ldrb r0, [r2]
	cmp r0, #0x80
	beq _08035512
	adds r0, #1
	strb r0, [r2]
	b _08035522
_08035512:
	movs r0, #3
	strb r0, [r1, #0xd]
	adds r1, #0x79
	movs r0, #0x96
	strb r0, [r1]
	ldr r1, _08035524 @ =gRoomControls
	ldr r0, _08035528 @ =gLinkEntity
	str r0, [r1, #0x30]
_08035522:
	pop {pc}
	.align 2, 0
_08035524: .4byte gRoomControls
_08035528: .4byte gLinkEntity

	thumb_func_start sub_0803552C
sub_0803552C: @ 0x0803552C
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x79
	ldrb r0, [r1]
	subs r0, #1
	movs r3, #0
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08035570
	ldr r1, _08035574 @ =gUnk_080CF070
	adds r0, r2, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r2, #0
	adds r1, #0x45
	strb r0, [r1]
	ldrb r0, [r2, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	movs r0, #1
	strb r0, [r2, #0xc]
	strb r3, [r2, #0xd]
	adds r0, r2, #0
	adds r0, #0x7e
	strb r3, [r0]
	adds r0, r2, #0
	bl sub_08036DA0
_08035570:
	pop {pc}
	.align 2, 0
_08035574: .4byte gUnk_080CF070

	thumb_func_start sub_08035578
sub_08035578: @ 0x08035578
	push {lr}
	movs r1, #5
	strb r1, [r0, #0xd]
	movs r1, #0x87
	movs r2, #9
	movs r3, #0
	bl CreateObjectWithParent
	adds r1, r0, #0
	cmp r1, #0
	beq _08035592
	ldr r0, _08035594 @ =gRoomControls
	str r1, [r0, #0x30]
_08035592:
	pop {pc}
	.align 2, 0
_08035594: .4byte gRoomControls

	thumb_func_start sub_08035598
sub_08035598: @ 0x08035598
	adds r2, r0, #0
	movs r1, #0
	movs r0, #6
	strb r0, [r2, #0xd]
	adds r3, r2, #0
	adds r3, #0x79
	movs r0, #0x78
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x80
	strb r1, [r0]
	adds r0, #2
	strb r1, [r0]
	bx lr

	thumb_func_start sub_080355B4
sub_080355B4: @ 0x080355B4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r1, r7, #0
	adds r1, #0x7b
	ldrb r0, [r1]
	subs r0, #4
	strb r0, [r1]
	adds r1, #6
	ldrb r0, [r1]
	adds r0, #8
	strb r0, [r1]
	adds r4, r7, #0
	adds r4, #0x80
	ldrb r1, [r4]
	movs r5, #0x80
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080355FA
	bl Random
	movs r1, #3
	ands r0, r1
	ldrb r1, [r4]
	subs r1, r1, r0
	strb r1, [r4]
	ands r1, r5
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0
	bne _08035616
	b _08035614
_080355FA:
	bl Random
	movs r1, #3
	ands r0, r1
	ldrb r2, [r4]
	adds r1, r0, r2
	strb r1, [r4]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x18
	bls _08035616
	movs r0, #0x80
	orrs r1, r0
_08035614:
	strb r1, [r4]
_08035616:
	ldr r0, _080356E4 @ =gUnk_080C9160
	mov r8, r0
	movs r1, #0x81
	adds r1, r1, r7
	mov sb, r1
	ldrb r0, [r1]
	lsls r0, r0, #1
	add r0, r8
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r6, r7, #0
	adds r6, #0x80
	ldrb r2, [r6]
	movs r4, #0x7f
	adds r1, r4, #0
	ands r1, r2
	lsls r1, r1, #8
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r5, #0
	bl sub_0806FA04
	lsrs r0, r0, #8
	adds r1, r7, #0
	adds r1, #0x62
	strb r0, [r1]
	mov r1, sb
	ldrb r0, [r1]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldrb r1, [r6]
	ands r4, r1
	lsls r4, r4, #8
	adds r1, r4, #0
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	bl sub_0806FA04
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x63
	strb r0, [r1]
	adds r1, #0x16
	ldrb r0, [r1]
	cmp r0, #0
	bne _080356EC
	ldr r0, _080356E8 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080356B2
	adds r0, r7, #0
	movs r1, #0x48
	movs r2, #0
	bl CreateFx
	adds r0, r7, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	movs r1, #0x48
	movs r2, #0
	bl CreateFx
_080356B2:
	adds r1, r7, #0
	adds r1, #0x82
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x79
	bne _080356F0
	adds r0, r7, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldr r0, [r0, #8]
	adds r0, #0x45
	movs r1, #1
	strb r1, [r0]
	movs r0, #0x94
	lsls r0, r0, #1
	bl PlaySFX
	adds r0, r7, #0
	bl sub_0804A7D4
	b _080356F0
	.align 2, 0
_080356E4: .4byte gUnk_080C9160
_080356E8: .4byte gUnk_030010A0
_080356EC:
	subs r0, #1
	strb r0, [r1]
_080356F0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080356F8
sub_080356F8: @ 0x080356F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08035718 @ =gUnk_080CF078
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0x19]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x19]
	pop {r4, pc}
	.align 2, 0
_08035718: .4byte gUnk_080CF078

	thumb_func_start sub_0803571C
sub_0803571C: @ 0x0803571C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bls _0803573A
	b _08035974
_0803573A:
	lsls r0, r0, #2
	ldr r1, _08035744 @ =_08035748
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08035744: .4byte _08035748
_08035748: @ jump table
	.4byte _08035764 @ case 0
	.4byte _080358D8 @ case 1
	.4byte _080358D8 @ case 2
	.4byte _080358D8 @ case 3
	.4byte _080358D8 @ case 4
	.4byte _08035920 @ case 5
	.4byte _08035940 @ case 6
_08035764:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x7c
	movs r5, #0
	strb r5, [r0]
	movs r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0x30
	bl sub_0801D8E0
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0x84
	str r2, [r0]
	mov r8, r0
	cmp r2, #0
	bne _0803579E
	adds r0, r4, #0
	bl sub_0804A7D4
	b _080359A6
_0803579E:
	str r2, [r4, #0x64]
	mov r1, r8
	ldr r0, [r1]
	strb r5, [r0, #6]
	ldr r1, [r1]
	movs r0, #2
	strb r0, [r1]
	mov r2, r8
	ldr r0, [r2]
	strb r5, [r0, #2]
	ldr r1, [r2]
	movs r0, #5
	strb r0, [r1, #1]
	ldrb r0, [r4, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r2, r4, #0
	adds r2, #0x6d
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x76
	movs r1, #0xa0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r0, #6
	strh r5, [r0]
	movs r5, #0
	movs r0, #0x79
	adds r0, r0, r4
	mov sb, r0
	mov r7, r8
_080357E6:
	adds r6, r5, #1
	movs r0, #0x39
	adds r1, r6, #0
	bl CreateEnemy
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _08035816
	adds r0, r4, #0
	bl CopyPosition
	ldr r0, [r4, #0x54]
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	adds r0, #0x84
	ldr r1, [r7]
	str r1, [r0]
	ldr r1, [r7]
	lsls r0, r5, #2
	adds r1, #0x20
	adds r1, r1, r0
	ldr r0, [r4, #0x54]
	str r0, [r1]
_08035816:
	adds r5, r6, #0
	cmp r5, #3
	bls _080357E6
	movs r0, #0x39
	movs r1, #5
	bl CreateEnemy
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _08035840
	adds r0, r4, #0
	bl CopyPosition
	ldr r0, [r4, #0x54]
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	adds r0, #0x84
	mov r2, r8
	ldr r1, [r2]
	str r1, [r0]
_08035840:
	movs r0, #0x39
	movs r1, #6
	bl CreateEnemy
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _0803586A
	adds r0, r4, #0
	bl CopyPosition
	ldr r0, [r4, #0x54]
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	adds r0, #0x84
	mov r2, r8
	ldr r1, [r2]
	str r1, [r0]
	ldr r1, [r2]
	ldr r0, [r4, #0x54]
	str r0, [r1, #0xc]
_0803586A:
	movs r5, #0
	mov r7, r8
_0803586E:
	movs r0, #0x39
	movs r1, #7
	bl CreateEnemy
	str r0, [r4, #0x54]
	adds r6, r5, #1
	cmp r0, #0
	beq _080358A0
	strb r5, [r0, #0xb]
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	bl CopyPosition
	ldr r0, [r4, #0x54]
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	adds r0, #0x84
	ldr r1, [r7]
	str r1, [r0]
	ldr r1, [r7]
	lsls r0, r6, #2
	adds r1, #0xc
	adds r1, r1, r0
	ldr r0, [r4, #0x54]
	str r0, [r1]
_080358A0:
	adds r5, r6, #0
	cmp r5, #3
	bls _0803586E
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r0, #0x3c
	mov r1, sb
	strb r0, [r1]
	ldr r1, _080358D0 @ =gLinkEntity
	ldrb r2, [r1, #0x18]
	subs r0, #0x40
	ands r0, r2
	strb r0, [r1, #0x18]
	ldrh r0, [r4, #0x2e]
	strh r0, [r1, #0x2e]
	ldrh r0, [r4, #0x32]
	subs r0, #0xa0
	strh r0, [r1, #0x32]
	ldr r0, _080358D4 @ =gRoomControls
	str r4, [r0, #0x30]
	b _08035974
	.align 2, 0
_080358D0: .4byte gLinkEntity
_080358D4: .4byte gRoomControls
_080358D8:
	movs r1, #0
	movs r0, #0x10
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x79
	strb r1, [r0]
	ldrb r1, [r4, #0xa]
	movs r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080358F4
	strb r2, [r4, #0xf]
	b _080358F8
_080358F4:
	movs r0, #0xfe
	strb r0, [r4, #0xf]
_080358F8:
	adds r0, r4, #0
	adds r0, #0x74
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r0]
	ldrb r1, [r4, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08035918
	adds r1, r4, #0
	adds r1, #0x76
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	b _08035974
_08035918:
	adds r0, r4, #0
	adds r0, #0x76
	strh r2, [r0]
	b _08035974
_08035920:
	adds r0, r4, #0
	adds r0, #0x76
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #0x1c
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	str r4, [r0, #8]
	b _08035974
_08035940:
	adds r0, r4, #0
	adds r0, #0x76
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x79
	strb r2, [r0]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	movs r0, #1
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x7d
	movs r0, #0x80
	strb r0, [r1]
_08035974:
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	beq _08035990
	ldr r0, _0803598C @ =gUnk_080CF08C
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r4, #0
	bl InitializeAnimation
	b _080359A0
	.align 2, 0
_0803598C: .4byte gUnk_080CF08C
_08035990:
	ldr r0, _080359B0 @ =gUnk_080CF08C
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r4, #0
	bl LoadAnimation
_080359A0:
	adds r0, r4, #0
	bl sub_08035B94
_080359A6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080359B0: .4byte gUnk_080CF08C

	thumb_func_start sub_080359B4
sub_080359B4: @ 0x080359B4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08078B48
	ldr r1, _080359F0 @ =gUnk_02034490
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08036F60
	ldr r1, _080359F4 @ =gUnk_080CF0AC
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r1, [r0]
	subs r0, #2
	ldrh r2, [r0]
	adds r0, #6
	ldrh r3, [r0]
	adds r0, r4, #0
	bl sub_0805EC9C
	pop {r4, pc}
	.align 2, 0
_080359F0: .4byte gUnk_02034490
_080359F4: .4byte gUnk_080CF0AC

	thumb_func_start sub_080359F8
sub_080359F8: @ 0x080359F8
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x79
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08035A22
	movs r0, #1
	strb r0, [r2, #0xd]
	adds r1, #9
	adds r0, #0xff
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x84
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1]
_08035A22:
	pop {pc}

	thumb_func_start sub_08035A24
sub_08035A24: @ 0x08035A24
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _08035A54
	adds r2, r4, #0
	adds r2, #0x79
	movs r1, #0
	movs r0, #0x3c
	strb r0, [r2]
	movs r0, #2
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	strb r1, [r0]
	ldr r0, _08035A50 @ =0x00000159
	bl PlaySFX
	b _08035A64
	.align 2, 0
_08035A50: .4byte 0x00000159
_08035A54:
	adds r1, r4, #0
	adds r1, #0x7a
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
_08035A64:
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_08036FAC
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08035A70
sub_08035A70: @ 0x08035A70
	push {r4, lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x79
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08035AA8
	movs r0, #3
	strb r0, [r2, #0xd]
	movs r0, #0x3c
	strb r0, [r1]
	ldr r2, _08035AAC @ =gLinkEntity
	ldrb r3, [r2, #0x18]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1e
	movs r4, #1
	orrs r1, r4
	subs r0, #0x40
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x18]
	ldr r0, _08035AB0 @ =gRoomControls
	str r2, [r0, #0x30]
	strb r4, [r0, #0xe]
_08035AA8:
	pop {r4, pc}
	.align 2, 0
_08035AAC: .4byte gLinkEntity
_08035AB0: .4byte gRoomControls

	thumb_func_start sub_08035AB4
sub_08035AB4: @ 0x08035AB4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x79
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08035AE4
	ldr r1, _08035AE8 @ =gLinkEntity
	movs r0, #0x10
	strb r0, [r1, #0x15]
	movs r4, #4
	strb r4, [r1, #0x14]
	movs r0, #0x1e
	movs r1, #0
	movs r2, #0
	bl sub_08078AC0
	movs r0, #0x3c
	strb r0, [r5]
	strb r4, [r6, #0xd]
_08035AE4:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08035AE8: .4byte gLinkEntity

	thumb_func_start sub_08035AEC
sub_08035AEC: @ 0x08035AEC
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x79
	ldrb r0, [r2]
	subs r1, r0, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08035B18
	movs r0, #5
	strb r0, [r3, #0xd]
	movs r0, #0x2d
	strb r0, [r2]
	ldr r1, _08035B14 @ =gLinkEntity
	movs r0, #0
	strb r0, [r1, #0x14]
	b _08035B2C
	.align 2, 0
_08035B14: .4byte gLinkEntity
_08035B18:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bne _08035B2C
	ldr r0, _08035B30 @ =gLinkEntity
	movs r2, #0x18
	rsbs r2, r2, #0
	movs r1, #0xc
	bl sub_080A2CFC
_08035B2C:
	pop {pc}
	.align 2, 0
_08035B30: .4byte gLinkEntity

	thumb_func_start sub_08035B34
sub_08035B34: @ 0x08035B34
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r2, _08035B70 @ =gLinkEntity
	ldrb r5, [r2, #0x14]
	cmp r5, #4
	bne _08035B7C
	adds r2, r3, #0
	adds r2, #0x79
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _08035B92
	movs r4, #0
	movs r0, #1
	strb r0, [r3, #0xc]
	strb r4, [r3, #0xd]
	ldr r0, _08035B74 @ =gRoomControls
	strb r5, [r0, #0xe]
	adds r0, r3, #0
	bl sub_08036C90
	ldr r0, _08035B78 @ =gUnk_02034490
	strb r4, [r0]
	movs r0, #0x2e
	bl PlaySFX
	b _08035B92
	.align 2, 0
_08035B70: .4byte gLinkEntity
_08035B74: .4byte gRoomControls
_08035B78: .4byte gUnk_02034490
_08035B7C:
	adds r1, r3, #0
	adds r1, #0x79
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08035B92
	movs r0, #4
	strb r0, [r2, #0x14]
_08035B92:
	pop {r4, r5, pc}

	thumb_func_start sub_08035B94
sub_08035B94: @ 0x08035B94
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _08035BAE
	ldr r0, [r5, #0x50]
	adds r0, #0x3d
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x3d
	strb r0, [r1]
_08035BAE:
	ldrb r0, [r5, #0xa]
	cmp r0, #7
	bls _08035BB6
	b _08035F6C
_08035BB6:
	lsls r0, r0, #2
	ldr r1, _08035BC0 @ =_08035BC4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08035BC0: .4byte _08035BC4
_08035BC4: @ jump table
	.4byte _08035F16 @ case 0
	.4byte _08035BE4 @ case 1
	.4byte _08035BE4 @ case 2
	.4byte _08035BE4 @ case 3
	.4byte _08035BE4 @ case 4
	.4byte _08035E78 @ case 5
	.4byte _08035DB0 @ case 6
	.4byte _08035D14 @ case 7
_08035BE4:
	ldr r0, [r5, #0x50]
	adds r0, #0x6d
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08035BF6
	bl DeleteThisEntity
_08035BF6:
	adds r1, r5, #0
	adds r1, #0x84
	ldr r0, [r1]
	ldr r0, [r0, #8]
	adds r0, #0x45
	ldrb r0, [r0]
	adds r6, r1, #0
	adds r7, r5, #0
	adds r7, #0x76
	movs r1, #0x74
	adds r1, r1, r5
	mov r8, r1
	cmp r0, #1
	bne _08035C42
	ldrh r1, [r7]
	movs r2, #0
	ldrsh r0, [r7, r2]
	cmp r0, #0
	bge _08035C20
	subs r0, r1, #4
	b _08035C22
_08035C20:
	adds r0, r1, #4
_08035C22:
	strh r0, [r7]
	adds r0, r5, #0
	adds r0, #0x74
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	mov r8, r0
	cmp r1, #0
	bge _08035C3C
	subs r0, r2, #4
	mov r1, r8
	strh r0, [r1]
	b _08035C42
_08035C3C:
	adds r0, r2, #4
	mov r2, r8
	strh r0, [r2]
_08035C42:
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl sub_0806FAD8
	ldr r0, [r6]
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _08035C66
	ldr r1, [r5, #0x50]
	ldrb r0, [r1, #0xc]
	cmp r0, #3
	beq _08035C66
	ldrb r0, [r1, #0xd]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08035C82
_08035C66:
	movs r0, #0xf
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bge _08035C76
	ldr r0, [r6]
	ldrb r0, [r0]
	rsbs r0, r0, #0
	b _08035C7A
_08035C76:
	ldr r0, [r6]
	ldrb r0, [r0]
_08035C7A:
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	bl sub_08036998
_08035C82:
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
	ldr r0, _08035CB0 @ =0xFFFFE000
	adds r3, r3, r0
	ldr r0, [r6]
	ldr r0, [r0, #8]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #1
	bne _08035CB4
	movs r1, #0x88
	lsls r1, r1, #6
	adds r3, r3, r1
	b _08035CBC
	.align 2, 0
_08035CB0: .4byte 0xFFFFE000
_08035CB4:
	lsrs r0, r3, #1
	movs r2, #0x88
	lsls r2, r2, #6
	adds r3, r0, r2
_08035CBC:
	adds r2, r4, #0
	adds r2, #0x7b
	ldr r1, _08035D0C @ =gUnk_080CF0D8
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
	bl sub_08036914
	ldr r2, [r5, #0x50]
	adds r2, #0x7b
	ldr r1, _08035D10 @ =gUnk_080CF0DC
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
	ldrh r1, [r7]
	mov r3, r8
	ldrh r2, [r3]
	adds r0, r5, #0
	adds r0, #0x7a
	ldrh r3, [r0]
	b _08035E70
	.align 2, 0
_08035D0C: .4byte gUnk_080CF0D8
_08035D10: .4byte gUnk_080CF0DC
_08035D14:
	adds r4, r5, #0
	adds r4, #0x84
	ldr r0, [r4]
	ldr r0, [r0, #8]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #1
	bhi _08035D28
	bl DeleteThisEntity
_08035D28:
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	subs r0, #2
	ldrb r1, [r5, #0xb]
	cmp r0, r1
	bge _08035D38
	bl DeleteThisEntity
_08035D38:
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl sub_0806FAB0
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	subs r0, #2
	ldrb r2, [r5, #0xb]
	cmp r0, r2
	bne _08035D8A
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl sub_0806FAB0
	ldr r4, [r5, #0x50]
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	bl __divsi3
	adds r3, r0, #0
	lsls r0, r3, #0xd
	lsrs r3, r0, #8
	adds r4, #0x7b
	ldrb r0, [r4]
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r0, r5, #0
	adds r2, r3, #0
	bl sub_08036914
	ldr r0, [r5, #0x50]
	adds r0, #0x7b
	ldrb r0, [r0]
	rsbs r0, r0, #0
	adds r1, r5, #0
	adds r1, #0x7b
	strb r0, [r1]
_08035D8A:
	ldr r0, [r5, #0x50]
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08035D9C
	b _08035F6C
_08035D9C:
	ldrb r2, [r5, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	orrs r1, r3
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x18]
	b _08035F6C
_08035DB0:
	adds r6, r5, #0
	adds r6, #0x84
	ldr r0, [r6]
	ldr r0, [r0, #8]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #1
	bhi _08035DC4
	bl DeleteThisEntity
_08035DC4:
	adds r0, r5, #0
	bl sub_080042B8
	ldr r0, [r5, #0x50]
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08035E24
	adds r0, r5, #0
	adds r0, #0x7d
	ldrb r1, [r0]
	adds r0, r5, #0
	movs r2, #0x10
	bl sub_08036AF0
	adds r2, r5, #0
	adds r2, #0x41
	ldrb r1, [r2]
	movs r3, #0x7f
	adds r0, r3, #0
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #7
	bne _08035E56
	ldrb r1, [r5, #0x10]
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r5, #0x10]
	adds r0, r5, #0
	movs r1, #0x87
	movs r2, #0
	movs r3, #0
	bl CreateObjectWithParent
	adds r1, r0, #0
	str r1, [r5, #0x54]
	cmp r1, #0
	beq _08035E56
	ldr r0, [r5, #0x50]
	str r0, [r1, #0x50]
	ldr r0, [r5, #0x54]
	adds r0, #0x84
	ldr r1, [r6]
	str r1, [r0]
	b _08035E56
_08035E24:
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	ldrb r2, [r5, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	orrs r1, r3
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x18]
	adds r0, r5, #0
	bl sub_08036998
	adds r0, r5, #0
	adds r0, #0x7d
	ldrb r1, [r0]
	adds r0, r5, #0
	movs r2, #4
	bl sub_080369D0
	adds r4, r5, #0
	adds r4, #0x41
_08035E56:
	movs r0, #0
	strb r0, [r4]
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r1, [r0]
	subs r0, #2
	ldrh r2, [r0]
	adds r0, #6
	ldrh r3, [r0]
	rsbs r3, r3, #0
	movs r0, #0x80
	lsls r0, r0, #8
	eors r3, r0
_08035E70:
	adds r0, r5, #0
	bl sub_0805EC9C
	b _08035F6C
_08035E78:
	adds r4, r5, #0
	adds r4, #0x45
	ldrb r0, [r4]
	cmp r0, #1
	bne _08035E88
	movs r0, #0
	strb r0, [r4]
	b _08035F6C
_08035E88:
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl sub_0806FAD8
	ldr r0, [r5, #0x50]
	ldrb r0, [r0, #0xd]
	adds r7, r5, #0
	adds r7, #0x76
	adds r6, r5, #0
	adds r6, #0x79
	cmp r0, #4
	beq _08035EC2
	ldrb r0, [r4]
	cmp r0, #1
	beq _08035EC2
	ldrb r0, [r6]
	cmp r0, #0x1c
	bls _08035EB0
	subs r0, #1
	strb r0, [r6]
_08035EB0:
	ldrh r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bls _08035EC0
	subs r0, #1
	strh r0, [r7]
	b _08035EC2
_08035EC0:
	strh r1, [r7]
_08035EC2:
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
	bl sub_08036914
	ldr r0, [r5, #0x50]
	adds r0, #0x7b
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x7b
	strb r0, [r1]
	ldrh r1, [r7]
	adds r0, r5, #0
	adds r0, #0x74
	ldrh r2, [r0]
	adds r0, #6
	ldrh r3, [r0]
	adds r0, r5, #0
	bl sub_0805EC9C
	adds r0, r5, #0
	bl sub_0800445C
	b _08035F6C
_08035F16:
	adds r0, r5, #0
	bl sub_0800445C
	adds r0, r5, #0
	bl sub_08036F60
	adds r0, r5, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _08035F48
	subs r0, #1
	strb r0, [r1, #6]
	ldr r0, _08035F74 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08035F48
	adds r0, r5, #0
	movs r1, #0xf
	movs r2, #3
	bl sub_0804A98C
_08035F48:
	ldr r1, _08035F78 @ =gUnk_080CF0C4
	ldrb r0, [r5, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r1, [r0]
	subs r0, #2
	ldrh r2, [r0]
	adds r0, #6
	ldrh r3, [r0]
	adds r0, r5, #0
	bl sub_0805EC9C
_08035F6C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08035F74: .4byte gUnk_030010A0
_08035F78: .4byte gUnk_080CF0C4

	thumb_func_start sub_08035F7C
sub_08035F7C: @ 0x08035F7C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _08035FD0 @ =gLinkEntity
	ldr r0, [r2, #0x2c]
	ldr r1, [r4, #0x2c]
	subs r0, r0, r1
	ldr r1, [r2, #0x30]
	ldr r2, [r4, #0x30]
	subs r1, r1, r2
	bl sub_080045DA
	adds r1, r4, #0
	adds r1, #0x7b
	ldrb r1, [r1]
	rsbs r1, r1, #0
	movs r2, #0x80
	eors r1, r2
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	movs r1, #0x20
	cmp r0, #0
	bne _08035FB6
	movs r1, #8
_08035FB6:
	cmn r2, r1
	ble _08035FEE
	cmp r2, r1
	bge _08035FEE
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _08035FD4
	adds r0, r4, #0
	bl sub_08036C90
	b _08036074
	.align 2, 0
_08035FD0: .4byte gLinkEntity
_08035FD4:
	adds r0, r4, #0
	adds r0, #0x78
	ldrb r0, [r0]
	cmp r0, #0
	bne _08035FE6
	adds r0, r4, #0
	bl sub_08036E00
	b _08036028
_08035FE6:
	adds r0, r4, #0
	bl sub_08036D70
	b _08036028
_08035FEE:
	cmp r2, #0x80
	bls _0803600E
	adds r2, r4, #0
	adds r2, #0x7a
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r0, [r0]
	ldrh r1, [r2]
	adds r0, r0, r1
	movs r1, #0
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	strb r1, [r0, #4]
	b _08036028
_0803600E:
	adds r2, r4, #0
	adds r2, #0x7a
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r0, [r2]
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #4]
_08036028:
	adds r0, r4, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	rsbs r0, r0, #0
	movs r1, #0x80
	eors r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1b
	strb r0, [r4, #0x15]
	adds r5, r4, #0
	adds r5, #0x7c
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803606C
	adds r3, r4, #0
	adds r3, #0x82
	ldrh r2, [r3]
	ldr r0, _08036060 @ =0x0000027F
	cmp r2, r0
	bhi _0803606C
	ldrb r1, [r5]
	cmp r1, #1
	beq _08036064
	cmp r1, #3
	beq _08036068
	b _0803606C
	.align 2, 0
_08036060: .4byte 0x0000027F
_08036064:
	adds r0, r2, #1
	b _0803606A
_08036068:
	adds r0, r2, #2
_0803606A:
	strh r0, [r3]
_0803606C:
	adds r0, r4, #0
	movs r1, #0x1f
	bl sub_08036FAC
_08036074:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08036078
sub_08036078: @ 0x08036078
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x79
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080360A0
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	cmp r1, #0
	beq _080360A0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080360B2
_080360A0:
	adds r1, r4, #0
	adds r1, #0x78
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08036D4C
	b _080360BE
_080360B2:
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _080360BE
	strb r0, [r5]
_080360BE:
	adds r0, r4, #0
	movs r1, #0x1f
	bl sub_08036FAC
	pop {r4, r5, pc}

	thumb_func_start sub_080360C8
sub_080360C8: @ 0x080360C8
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x79
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080360E4
	adds r0, r2, #0
	bl sub_08036DA0
_080360E4:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080360E8
sub_080360E8: @ 0x080360E8
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x79
	ldrb r0, [r1]
	cmp r0, #0
	bne _08036178
	adds r0, r4, #0
	bl sub_080AEF88
	movs r2, #0
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	beq _08036116
	cmp r0, #0x10
	beq _08036116
	ldrh r0, [r4, #0x2a]
	movs r1, #0xee
	lsls r1, r1, #8
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r2, r0, #0x1f
_08036116:
	ldrb r0, [r4, #0x15]
	cmp r0, #0x18
	beq _0803612C
	cmp r0, #8
	beq _0803612C
	ldrh r1, [r4, #0x2a]
	movs r0, #0xee
	ands r0, r1
	cmp r0, #0
	beq _0803612C
	movs r2, #1
_0803612C:
	cmp r2, #0
	beq _0803617C
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0x20
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	ldrb r0, [r4, #0x15]
	movs r1, #0x10
	eors r0, r1
	adds r1, r4, #0
	adds r1, #0x3e
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #6]
	adds r0, #0x3c
	strb r0, [r1, #6]
	adds r0, r4, #0
	bl sub_08036C90
	movs r0, #0x3c
	movs r1, #0
	bl sub_08080964
	movs r0, #0xac
	lsls r0, r0, #1
	bl PlaySFX
	movs r0, #0xa6
	lsls r0, r0, #1
	bl PlaySFX
	b _0803617C
_08036178:
	subs r0, #1
	strb r0, [r1]
_0803617C:
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_08036FAC
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08036188
sub_08036188: @ 0x08036188
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _080361EC @ =gUnk_080CF0E0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	adds r0, r5, #0
	bl sub_08036FE4
	adds r0, r5, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	beq _080361EA
	ldr r4, _080361F0 @ =gLinkEntity
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	bl sub_08078B48
	bl sub_08077B20
	str r5, [r4, #0x50]
	adds r0, r5, #0
	adds r0, #0x7b
	ldrb r1, [r0]
	adds r1, #0x80
	rsbs r1, r1, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xe0
	lsls r2, r2, #6
	adds r0, r4, #0
	bl sub_08036914
_080361EA:
	pop {r4, r5, pc}
	.align 2, 0
_080361EC: .4byte gUnk_080CF0E0
_080361F0: .4byte gLinkEntity

	thumb_func_start sub_080361F4
sub_080361F4: @ 0x080361F4
	push {lr}
	adds r2, r0, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	cmp r0, #4
	bne _08036208
	adds r0, r2, #0
	bl sub_08036D4C
	b _08036236
_08036208:
	adds r1, r2, #0
	adds r1, #0x82
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	movs r0, #1
	strb r0, [r2, #0xb]
	subs r1, #6
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08036228
	adds r1, r2, #0
	adds r1, #0x79
	movs r0, #0x16
	b _0803622E
_08036228:
	adds r1, r2, #0
	adds r1, #0x79
	movs r0, #0
_0803622E:
	strb r0, [r1]
	ldr r0, _08036238 @ =0x00000155
	bl PlaySFX
_08036236:
	pop {pc}
	.align 2, 0
_08036238: .4byte 0x00000155

	thumb_func_start sub_0803623C
sub_0803623C: @ 0x0803623C
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x74
	ldrh r0, [r1]
	cmp r0, #0xbf
	bhi _08036250
	adds r0, #1
	strh r0, [r1]
	b _080362A0
_08036250:
	adds r3, r2, #0
	adds r3, #0x79
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080362A0
	adds r0, r2, #0
	adds r0, #0x7d
	ldrb r1, [r0]
	cmp r1, #1
	bne _08036292
	movs r0, #3
	strb r0, [r2, #0xb]
	adds r0, r2, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08036280
	movs r0, #0x3c
	b _08036282
_08036280:
	movs r0, #0x78
_08036282:
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x84
	ldr r1, [r0]
	subs r0, #9
	ldrb r0, [r0]
	strb r0, [r1, #3]
	b _0803629A
_08036292:
	movs r0, #2
	strb r0, [r2, #0xb]
	movs r0, #0x2d
	strb r0, [r3]
_0803629A:
	ldr r0, _080362A4 @ =0x00000155
	bl PlaySFX
_080362A0:
	pop {pc}
	.align 2, 0
_080362A4: .4byte 0x00000155

	thumb_func_start sub_080362A8
sub_080362A8: @ 0x080362A8
	push {r4, lr}
	adds r2, r0, #0
	movs r0, #0x79
	adds r0, r0, r2
	mov ip, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080362FA
	adds r4, r2, #0
	adds r4, #0x76
	adds r1, r2, #0
	adds r1, #0x74
	ldrh r3, [r1]
	ldrh r0, [r4]
	cmp r0, r3
	bhs _080362D0
	adds r0, r3, #0
	subs r0, #8
	strh r0, [r1]
	b _08036300
_080362D0:
	movs r0, #3
	strb r0, [r2, #0xb]
	ldrh r0, [r4]
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	cmp r0, #2
	beq _080362E6
	movs r0, #0x3c
	b _080362FC
_080362E6:
	movs r0, #0
	mov r1, ip
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x87
	movs r2, #4
	movs r3, #0
	bl CreateObjectWithParent
	b _08036300
_080362FA:
	subs r0, #1
_080362FC:
	mov r1, ip
	strb r0, [r1]
_08036300:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08036304
sub_08036304: @ 0x08036304
	push {lr}
	mov ip, r0
	ldr r0, _08036328 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0803632C
	mov r2, ip
	adds r2, #0x84
	ldr r0, [r2]
	ldr r1, [r0, #8]
	adds r1, #0x76
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	b _08036350
	.align 2, 0
_08036328: .4byte gUnk_030010A0
_0803632C:
	mov r2, ip
	adds r2, #0x84
	ldr r0, [r2]
	ldr r1, [r0, #8]
	adds r1, #0x76
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	ldr r0, [r2]
	ldr r0, [r0, #8]
	adds r3, r0, #0
	adds r3, #0x76
	ldrh r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	bls _08036350
	strh r1, [r3]
_08036350:
	mov r0, ip
	adds r0, #0x7d
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #1
	beq _0803637A
	ldr r0, [r2]
	ldr r0, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x79
	ldrb r0, [r1]
	cmp r0, #0x1f
	bhi _0803637A
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r2]
	ldr r1, [r0, #8]
	adds r1, #0x76
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
_0803637A:
	ldr r0, _0803638C @ =gUnk_080CF0F0
	ldrb r1, [r3]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	mov r0, ip
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0803638C: .4byte gUnk_080CF0F0

	thumb_func_start sub_08036390
sub_08036390: @ 0x08036390
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xf
	movs r2, #0
	bl sub_0804A98C
	str r0, [r4, #0x54]
	cmp r0, #0
	beq _080363B4
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x7b
	ldrb r1, [r1]
	rsbs r1, r1, #0
	movs r2, #0x80
	eors r1, r2
	strb r1, [r0, #0x15]
_080363B4:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldr r1, [r0, #8]
	adds r1, #0x79
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08036C90
	pop {r4, pc}

	thumb_func_start sub_080363CC
sub_080363CC: @ 0x080363CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r7, r4, #0
	adds r7, #0x80
	ldrb r2, [r7]
	cmp r2, #0
	bne _080364CC
	ldr r5, _08036498 @ =gLinkEntity
	ldr r0, [r5, #0x2c]
	ldr r1, [r4, #0x2c]
	subs r0, r0, r1
	ldr r1, [r5, #0x30]
	ldr r2, [r4, #0x30]
	subs r1, r1, r2
	bl sub_080045DA
	strb r0, [r4, #0x15]
	adds r2, r4, #0
	adds r2, #0x7b
	ldrb r0, [r2]
	adds r0, #0x80
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r4, #0x15]
	subs r3, r0, r1
	mov r8, r2
	cmp r3, #0
	bge _0803640C
	rsbs r3, r3, #0
_0803640C:
	adds r6, r4, #0
	adds r6, #0x79
	cmp r3, #0xf
	bgt _080364AA
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xf0
	bl sub_0806FC80
	cmp r0, #0
	beq _080364AA
	ldr r2, _0803649C @ =gLinkState
	ldr r1, [r2, #0x30]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080364A4
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080364AA
	movs r1, #0xa0
	lsls r1, r1, #2
	mov r0, r8
	ldrb r2, [r0]
	rsbs r2, r2, #0
	adds r0, r5, #0
	bl sub_0806F62C
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x48
	bl sub_0806FC80
	cmp r0, #0
	beq _080364AA
	movs r0, #1
	strb r0, [r7]
	movs r0, #2
	strb r0, [r6]
	ldr r2, _080364A0 @ =gRoomControls
	ldrh r0, [r2, #6]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	ldr r1, [r4, #0x2c]
	subs r0, r0, r1
	ldrh r1, [r2, #8]
	adds r1, #0x88
	lsls r1, r1, #0x10
	ldr r2, [r4, #0x30]
	subs r1, r1, r2
	bl sub_080045DA
	adds r2, r4, #0
	adds r2, #0x84
	ldr r1, [r2]
	strb r0, [r1, #3]
	ldr r1, [r2]
	ldrb r0, [r1, #3]
	adds r0, #0x80
	rsbs r0, r0, #0
	strb r0, [r1, #3]
	movs r0, #0xed
	bl PlaySFX
	b _080364AA
	.align 2, 0
_08036498: .4byte gLinkEntity
_0803649C: .4byte gLinkState
_080364A0: .4byte gRoomControls
_080364A4:
	ldr r0, _080364C4 @ =0xFFFFF7FF
	ands r1, r0
	str r1, [r2, #0x30]
_080364AA:
	ldr r0, _080364C8 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0803657A
	adds r0, r4, #0
	movs r1, #0x87
	movs r2, #2
	movs r3, #0
	bl CreateObjectWithParent
	b _0803657A
	.align 2, 0
_080364C4: .4byte 0xFFFFF7FF
_080364C8: .4byte gUnk_030010A0
_080364CC:
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	adds r3, r4, #0
	adds r3, #0x84
	cmp r0, #0
	bne _080364F0
	ldr r0, [r3]
	adds r1, r4, #0
	adds r1, #0x7b
	ldrb r0, [r0, #3]
	mov r8, r1
	ldrb r6, [r1]
	cmp r0, r6
	bne _08036570
_080364F0:
	cmp r2, #1
	bne _08036510
	movs r0, #2
	strb r0, [r7]
	strb r0, [r4, #0xb]
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #0x2d
	strb r0, [r1]
	adds r1, #9
	movs r2, #0
	adds r0, #0xd3
	strh r0, [r1]
	ldr r0, [r3]
	strb r2, [r0, #2]
	b _08036652
_08036510:
	movs r0, #0
	strb r0, [r7]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r0, [r3]
	ldr r1, [r0, #8]
	adds r1, #0x79
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _0803656C @ =gLinkEntity
	ldrb r2, [r1, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	movs r2, #1
	orrs r0, r2
	strb r0, [r1, #0x18]
	ldrb r2, [r1, #0x10]
	movs r0, #0x7f
	ands r0, r2
	strb r0, [r1, #0x10]
	adds r1, #0x38
	strb r5, [r1]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r4, #0
	adds r1, #0x7b
	ldrb r1, [r1]
	adds r1, #0x80
	rsbs r1, r1, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1b
	movs r2, #0x30
	bl sub_080792BC
	adds r0, r4, #0
	bl sub_08036C90
	movs r0, #0xef
	bl PlaySFX
	b _08036652
	.align 2, 0
_0803656C: .4byte gLinkEntity
_08036570:
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #2
	strb r0, [r1]
	adds r6, r1, #0
_0803657A:
	ldrb r0, [r6]
	cmp r0, #0
	bne _08036598
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x74
	movs r2, #0
	strh r0, [r1]
	strb r2, [r4, #0xb]
	adds r0, r4, #0
	bl sub_08036C90
	b _08036652
_08036598:
	subs r2, r0, #1
	strb r2, [r6]
	ldr r0, _080365E4 @ =gLinkState
	ldr r1, [r0, #0x30]
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r1, r0
	bne _080365F8
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bne _080365F8
	ldr r2, _080365E8 @ =gLinkEntity
	ldr r0, [r2, #0x2c]
	ldr r1, [r4, #0x2c]
	subs r0, r0, r1
	ldr r1, [r2, #0x30]
	ldr r2, [r4, #0x30]
	subs r1, r1, r2
	bl sub_080045DA
	adds r3, r0, #0
	mov r7, r8
	ldrb r2, [r7]
	rsbs r0, r2, #0
	movs r1, #0x80
	eors r0, r1
	subs r0, r3, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x80
	bls _080365EC
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	adds r0, r2, #0
	adds r0, #0x30
	b _080365F6
	.align 2, 0
_080365E4: .4byte gLinkState
_080365E8: .4byte gLinkEntity
_080365EC:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	adds r0, r2, #0
	subs r0, #0x30
_080365F6:
	strb r0, [r1, #3]
_080365F8:
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	movs r5, #1
	adds r2, r5, #0
	ands r2, r0
	cmp r2, #0
	bne _08036652
	adds r3, r4, #0
	adds r3, #0x84
	ldr r1, [r3]
	ldrb r0, [r1, #3]
	mov r6, r8
	ldrb r6, [r6]
	cmp r0, r6
	beq _08036650
	strb r5, [r1, #2]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	mov r7, r8
	ldrb r1, [r7]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x80
	bls _0803663E
	adds r2, r4, #0
	adds r2, #0x7a
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r1, [r2]
	ldrh r0, [r0]
	subs r1, r1, r0
	strh r1, [r2]
	b _08036652
_0803663E:
	adds r1, r4, #0
	adds r1, #0x7a
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	b _08036652
_08036650:
	strb r2, [r1, #2]
_08036652:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08036658
sub_08036658: @ 0x08036658
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x79
	ldrb r1, [r4]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _08036678
	movs r0, #0
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	bl sub_08036C90
	movs r0, #0x78
	strb r0, [r4]
	b _080366AC
_08036678:
	adds r0, r1, #1
	strb r0, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_0805308C
	ldr r0, _080366B0 @ =gUnk_030010A0
	ldr r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080366AC
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _080366A0
	movs r0, #0x92
	lsls r0, r0, #1
	bl PlaySFX
_080366A0:
	adds r0, r5, #0
	movs r1, #0x87
	movs r2, #3
	movs r3, #0
	bl CreateObjectWithParent
_080366AC:
	pop {r4, r5, pc}
	.align 2, 0
_080366B0: .4byte gUnk_030010A0

	thumb_func_start sub_080366B4
sub_080366B4: @ 0x080366B4
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x79
	ldrb r0, [r2]
	adds r1, r0, #0
	cmp r1, #0
	bne _080366D4
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	strb r1, [r0, #2]
	adds r0, r4, #0
	bl sub_08036C90
	b _08036706
_080366D4:
	subs r0, #1
	strb r0, [r2]
	ldr r0, _08036708 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08036706
	adds r0, r4, #0
	movs r1, #0xf
	movs r2, #2
	bl sub_0804A98C
	str r0, [r4, #0x54]
	cmp r0, #0
	beq _08036706
	str r4, [r0, #0x50]
	ldr r2, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	rsbs r0, r0, #0
	movs r1, #0x80
	eors r0, r1
	strb r0, [r2, #0x15]
_08036706:
	pop {r4, pc}
	.align 2, 0
_08036708: .4byte gUnk_030010A0

	thumb_func_start sub_0803670C
sub_0803670C: @ 0x0803670C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0803675C @ =gUnk_080CF100
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _08036746
	subs r0, #1
	strb r0, [r1, #6]
	ldr r0, _08036760 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08036746
	adds r0, r4, #0
	movs r1, #0xf
	movs r2, #3
	bl sub_0804A98C
_08036746:
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r1, [r0]
	subs r0, #2
	ldrh r2, [r0]
	adds r0, #6
	ldrh r3, [r0]
	adds r0, r4, #0
	bl sub_0805EC9C
	pop {r4, pc}
	.align 2, 0
_0803675C: .4byte gUnk_080CF100
_08036760: .4byte gUnk_030010A0

	thumb_func_start sub_08036764
sub_08036764: @ 0x08036764
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	strh r1, [r4, #0x2a]
	adds r0, r4, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	rsbs r0, r0, #0
	movs r1, #0x80
	eors r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1b
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #0x78
	strb r0, [r1]
	adds r1, #9
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	movs r0, #4
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080368D8
	adds r0, r4, #0
	bl sub_080367B0
	pop {r4, pc}

	thumb_func_start sub_080367B0
sub_080367B0: @ 0x080367B0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080AEF88
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _0803683A
	movs r0, #2
	strb r0, [r4, #0xd]
	adds r3, r4, #0
	adds r3, #0x84
	ldr r1, [r3]
	adds r0, r4, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	strb r0, [r1, #3]
	ldrh r1, [r4, #0x2a]
	movs r0, #0xee
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080367E4
	ldr r1, [r3]
	ldrb r0, [r1, #3]
	rsbs r0, r0, #0
	strb r0, [r1, #3]
_080367E4:
	ldrh r1, [r4, #0x2a]
	movs r0, #0xee
	ands r0, r1
	cmp r0, #0
	beq _080367FE
	ldr r0, [r3]
	ldrb r1, [r0, #3]
	rsbs r1, r1, #0
	movs r5, #0x80
	rsbs r5, r5, #0
	adds r2, r5, #0
	eors r1, r2
	strb r1, [r0, #3]
_080367FE:
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0x18
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	ldrb r0, [r4, #0x15]
	movs r1, #0x10
	eors r0, r1
	adds r1, r4, #0
	adds r1, #0x3e
	strb r0, [r1]
	ldr r1, [r3]
	ldrb r0, [r1, #6]
	adds r0, #0x1e
	strb r0, [r1, #6]
	movs r0, #0x1e
	movs r1, #0
	bl sub_08080964
	movs r0, #0xac
	lsls r0, r0, #1
	bl PlaySFX
	movs r0, #0xa6
	lsls r0, r0, #1
	bl PlaySFX
_0803683A:
	adds r1, r4, #0
	adds r1, #0x79
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08036852
	subs r1, #0x34
	movs r0, #0
	strb r0, [r1]
_08036852:
	ldr r0, _08036868 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _08036864
	ldr r0, _0803686C @ =0x00000159
	bl PlaySFX
_08036864:
	pop {r4, r5, pc}
	.align 2, 0
_08036868: .4byte gUnk_030010A0
_0803686C: .4byte 0x00000159

	thumb_func_start sub_08036870
sub_08036870: @ 0x08036870
	push {lr}
	adds r3, r0, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldrb r1, [r0, #3]
	movs r0, #0x7b
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	subs r1, r1, r0
	adds r0, r1, #7
	cmp r0, #0xe
	bhi _080368AA
	movs r2, #0
	movs r0, #1
	strb r0, [r3, #0xd]
	mov r1, ip
	ldrb r0, [r1]
	rsbs r0, r0, #0
	movs r1, #0x80
	eors r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1b
	strb r0, [r3, #0x15]
	strh r2, [r3, #0x2a]
	adds r0, r3, #0
	bl sub_080AEF88
	b _080368D4
_080368AA:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x80
	bls _080368C4
	adds r2, r3, #0
	adds r2, #0x7a
	adds r0, r3, #0
	adds r0, #0x82
	ldrh r1, [r2]
	ldrh r0, [r0]
	subs r1, r1, r0
	strh r1, [r2]
	b _080368D4
_080368C4:
	adds r1, r3, #0
	adds r1, #0x7a
	adds r0, r3, #0
	adds r0, #0x82
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
_080368D4:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080368D8
sub_080368D8: @ 0x080368D8
	push {lr}
	adds r3, r0, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	beq _08036902
	ldr r2, _08036910 @ =gLinkEntity
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	adds r2, #0x38
	movs r0, #1
	strb r0, [r2]
_08036902:
	adds r0, r3, #0
	adds r0, #0x76
	movs r1, #0xa0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	pop {pc}
	.align 2, 0
_08036910: .4byte gLinkEntity

	thumb_func_start sub_08036914
sub_08036914: @ 0x08036914
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r0, _08036994 @ =gUnk_080C9160
	mov sb, r0
	lsls r0, r4, #1
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	adds r1, r6, #0
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	mov r8, r1
	bl sub_0806FA04
	ldr r1, [r5, #0x50]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r1, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x2c]
	adds r4, #0x40
	lsls r4, r4, #1
	add r4, sb
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r1, r6, #0
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	bl sub_0806FA04
	ldr r2, [r5, #0x50]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r2, #0x30]
	subs r1, r1, r0
	str r1, [r5, #0x30]
	adds r2, #0x62
	ldrb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x62
	strb r0, [r1]
	ldr r0, [r5, #0x50]
	adds r0, #0x63
	ldrb r0, [r0]
	adds r5, #0x63
	strb r0, [r5]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, pc}
	.align 2, 0
_08036994: .4byte gUnk_080C9160

	thumb_func_start sub_08036998
sub_08036998: @ 0x08036998
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x79
	ldrb r0, [r2, #0xf]
	ldrb r4, [r3]
	adds r1, r0, r4
	strb r1, [r3]
	ldrb r4, [r2, #0xf]
	movs r0, #0xf
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _080369BE
	ldrb r0, [r2, #0xe]
	lsls r1, r1, #0x18
	lsls r0, r0, #0x18
	cmn r1, r0
	bge _080369CC
	b _080369C8
_080369BE:
	movs r0, #0
	ldrsb r0, [r3, r0]
	ldrb r1, [r2, #0xe]
	cmp r0, r1
	ble _080369CC
_080369C8:
	rsbs r0, r4, #0
	strb r0, [r2, #0xf]
_080369CC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080369D0
sub_080369D0: @ 0x080369D0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r1
	adds r6, r2, #0
	adds r1, r0, #0
	adds r1, #0x84
	ldr r4, [r1]
	ldr r2, [r4, #0xc]
	ldrb r1, [r4, #1]
	subs r1, #1
	lsls r1, r1, #2
	adds r3, r4, #0
	adds r3, #0xc
	adds r1, r3, r1
	ldr r1, [r1]
	adds r1, #0x7b
	adds r0, #0x79
	ldrb r0, [r0]
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r2, #0x7b
	strb r0, [r2]
	ldrb r0, [r4, #1]
	movs r2, #0
	cmp r0, #1
	beq _08036A58
	adds r5, r3, #0
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	rsbs r0, r6, #0
	lsls r0, r0, #0x18
	asrs r7, r0, #0x18
_08036A16:
	lsls r0, r2, #2
	adds r0, r5, r0
	ldr r1, [r0]
	adds r1, #0x7b
	adds r2, #1
	lsls r0, r2, #2
	adds r0, r5, r0
	ldr r0, [r0]
	adds r3, r0, #0
	adds r3, #0x7b
	ldrb r1, [r1]
	ldrb r0, [r3]
	cmp r1, r0
	beq _08036A4C
	subs r0, r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08036A44
	cmp r0, r8
	ble _08036A4C
	adds r0, r1, r6
	b _08036A4A
_08036A44:
	cmp r0, r7
	bge _08036A4C
	subs r0, r1, r6
_08036A4A:
	strb r0, [r3]
_08036A4C:
	ldrb r0, [r4, #1]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r2, r0
	blo _08036A16
_08036A58:
	ldrb r0, [r4, #1]
	subs r2, r0, #1
	cmp r2, #0
	beq _08036AE4
	ldr r0, _08036AEC @ =gUnk_080C9160
	mov sb, r0
	movs r1, #0x80
	mov r8, r1
	mov r1, ip
	lsls r0, r1, #0x14
	asrs r6, r0, #0x10
	lsls r0, r2, #2
	adds r0, #8
	adds r5, r0, r4
	movs r7, #0x80
	lsls r7, r7, #1
_08036A78:
	subs r4, r2, #1
	ldr r0, [r5]
	adds r0, #0x7b
	ldrb r0, [r0]
	mov r1, r8
	eors r0, r1
	lsls r0, r0, #1
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r6, #0
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	bl sub_0806FA04
	ldr r2, [r5]
	ldr r1, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r1, #0x2c]
	adds r1, r1, r0
	str r1, [r2, #0x2c]
	ldr r0, [r5]
	adds r0, #0x7b
	ldrb r0, [r0]
	mov r1, r8
	eors r0, r1
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r6, #0
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	bl sub_0806FA04
	ldr r2, [r5]
	ldr r1, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r1, #0x30]
	subs r1, r1, r0
	str r1, [r2, #0x30]
	subs r5, #4
	adds r2, r4, #0
	cmp r2, #0
	bne _08036A78
_08036AE4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08036AEC: .4byte gUnk_080C9160

	thumb_func_start sub_08036AF0
sub_08036AF0: @ 0x08036AF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r1, [sp]
	mov r8, r2
	adds r0, #0x84
	ldr r0, [r0]
	str r0, [sp, #4]
	ldrb r0, [r0, #1]
	subs r4, r0, #1
	cmp r4, #0
	bne _08036B10
	b _08036C80
_08036B10:
	ldr r0, [sp, #4]
	adds r0, #0xc
	str r0, [sp, #8]
	lsls r0, r1, #0x14
	asrs r0, r0, #0x10
	mov sl, r0
_08036B1C:
	mov r1, r8
	cmp r1, #0
	bne _08036BC0
	lsls r0, r4, #2
	ldr r2, [sp, #8]
	adds r6, r2, r0
	ldr r0, [r6]
	subs r4, #1
	lsls r1, r4, #2
	adds r5, r2, r1
	ldr r2, [r5]
	movs r3, #0x2e
	ldrsh r1, [r2, r3]
	movs r3, #0x32
	ldrsh r2, [r2, r3]
	bl sub_080041DC
	mov sb, r4
	ldr r1, [sp]
	cmp r1, r0
	blo _08036B48
	b _08036C78
_08036B48:
	ldr r2, [r5]
	ldr r3, [r6]
	ldr r0, [r2, #0x2c]
	ldr r1, [r3, #0x2c]
	subs r0, r0, r1
	ldr r1, [r2, #0x30]
	ldr r2, [r3, #0x30]
	subs r1, r1, r2
	bl sub_080045DA
	ldr r1, [r5]
	adds r1, #0x7b
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, #0x7b
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r2, _08036BBC @ =gUnk_080C9160
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r1, sl
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_0806FA04
	ldr r2, [r5]
	ldr r1, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r1, #0x2c]
	adds r1, r1, r0
	str r1, [r2, #0x2c]
	ldr r0, [r5]
	adds r0, #0x7b
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _08036BBC @ =gUnk_080C9160
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r1, sl
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_0806FA04
	ldr r2, [r5]
	ldr r1, [r6]
	b _08036C6E
	.align 2, 0
_08036BBC: .4byte gUnk_080C9160
_08036BC0:
	subs r2, r4, #1
	lsls r0, r2, #2
	ldr r3, [sp, #8]
	adds r0, r3, r0
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0x7b
	lsls r1, r4, #2
	adds r0, r3, r1
	ldr r0, [r0]
	adds r0, #0x7b
	ldrb r4, [r5]
	ldrb r3, [r0]
	adds r7, r1, #0
	ldr r6, [sp, #4]
	adds r6, #0xc
	mov sb, r2
	cmp r4, r3
	beq _08036C0E
	subs r0, r3, r4
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0
	ble _08036BFE
	mov r2, r8
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	ble _08036C0E
	subs r0, r3, r2
	b _08036C0C
_08036BFE:
	mov r2, r8
	rsbs r0, r2, #0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bge _08036C0E
	adds r0, r3, r2
_08036C0C:
	strb r0, [r5]
_08036C0E:
	mov r3, sb
	lsls r4, r3, #2
	adds r4, r6, r4
	ldr r0, [r4]
	adds r0, #0x7b
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r1, _08036C8C @ =gUnk_080C9160
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r1, sl
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_0806FA04
	ldr r2, [r4]
	adds r5, r6, r7
	ldr r1, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r1, #0x2c]
	adds r1, r1, r0
	str r1, [r2, #0x2c]
	ldr r0, [r4]
	adds r0, #0x7b
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r3, _08036C8C @ =gUnk_080C9160
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r1, sl
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_0806FA04
	ldr r2, [r4]
	ldr r1, [r5]
_08036C6E:
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r1, #0x30]
	subs r1, r1, r0
	str r1, [r2, #0x30]
_08036C78:
	mov r4, sb
	cmp r4, #0
	beq _08036C80
	b _08036B1C
_08036C80:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08036C8C: .4byte gUnk_080C9160

	thumb_func_start sub_08036C90
sub_08036C90: @ 0x08036C90
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7c
	ldrb r2, [r0]
	cmp r2, #4
	bne _08036CDC
	adds r3, r4, #0
	adds r3, #0x81
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _08036CDC
	movs r1, #0
	strb r2, [r4, #0xd]
	strb r1, [r4, #0xb]
	adds r0, r4, #0
	adds r0, #0x80
	strb r1, [r0]
	ldr r1, _08036CFC @ =gUnk_080CF124
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r2, r4, #0
	adds r2, #0x7e
	ldrb r1, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x7d
	strb r0, [r1]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldrb r0, [r1]
	cmp r0, #5
	bne _08036D42
	movs r0, #0xff
	strb r0, [r3]
_08036CDC:
	movs r0, #3
	strb r0, [r4, #0xd]
	adds r2, r4, #0
	adds r2, #0x7c
	ldrb r1, [r2]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08036D14
	ldrb r1, [r2]
	cmp r1, #1
	beq _08036D00
	cmp r1, #3
	beq _08036D0A
	b _08036D42
	.align 2, 0
_08036CFC: .4byte gUnk_080CF124
_08036D00:
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #0x1e
	strb r0, [r1]
	b _08036D42
_08036D0A:
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #0xa
	strb r0, [r1]
	b _08036D42
_08036D14:
	ldr r0, _08036D2C @ =gRoomVars
	movs r2, #0xc
	ldrsh r1, [r0, r2]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08036D30
	adds r0, r4, #0
	adds r0, #0x79
	strb r3, [r0]
	b _08036D42
	.align 2, 0
_08036D2C: .4byte gRoomVars
_08036D30:
	ldr r0, _08036D44 @ =gUnk_080CF10C
	bl sub_080028F4
	ldr r1, _08036D48 @ =gUnk_080CF110
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x79
	strb r1, [r0]
_08036D42:
	pop {r4, pc}
	.align 2, 0
_08036D44: .4byte gUnk_080CF10C
_08036D48: .4byte gUnk_080CF110

	thumb_func_start sub_08036D4C
sub_08036D4C: @ 0x08036D4C
	mov ip, r0
	mov r1, ip
	adds r1, #0x82
	movs r3, #0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	mov r2, ip
	adds r2, #0x84
	ldr r1, [r2]
	movs r0, #2
	strb r0, [r1]
	ldr r1, [r2]
	movs r0, #0xff
	strb r0, [r1, #4]
	mov r0, ip
	strb r3, [r0, #0xd]
	bx lr

	thumb_func_start sub_08036D70
sub_08036D70: @ 0x08036D70
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	strb r1, [r4, #0xd]
	movs r0, #0xc0
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	strb r1, [r0]
	ldr r0, _08036D98 @ =gUnk_080CF134
	bl sub_080028F4
	ldr r1, _08036D9C @ =gUnk_080CF138
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r4, #0x79
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_08036D98: .4byte gUnk_080CF134
_08036D9C: .4byte gUnk_080CF138

	thumb_func_start sub_08036DA0
sub_08036DA0: @ 0x08036DA0
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	movs r2, #1
	ands r2, r0
	cmp r2, #0
	bne _08036DF0
	ldr r0, _08036DD0 @ =gRoomVars
	movs r3, #0xc
	ldrsh r1, [r0, r3]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08036DD4
	adds r0, r4, #0
	adds r0, #0x78
	strb r2, [r0]
	b _08036DF8
	.align 2, 0
_08036DD0: .4byte gRoomVars
_08036DD4:
	ldr r0, _08036DE8 @ =gUnk_080CF13C
	bl sub_080028F4
	ldr r1, _08036DEC @ =gUnk_080CF13F
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x78
	strb r1, [r0]
	b _08036DF8
	.align 2, 0
_08036DE8: .4byte gUnk_080CF13C
_08036DEC: .4byte gUnk_080CF13F
_08036DF0:
	adds r1, r4, #0
	adds r1, #0x78
	movs r0, #0
	strb r0, [r1]
_08036DF8:
	adds r0, r4, #0
	bl sub_08036D4C
	pop {r4, pc}

	thumb_func_start sub_08036E00
sub_08036E00: @ 0x08036E00
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r0, #0
	movs r2, #0
	movs r0, #4
	strb r0, [r4, #0xd]
	strb r2, [r4, #0xb]
	adds r7, r4, #0
	adds r7, #0x81
	movs r0, #0xff
	strb r0, [r7]
	adds r0, r4, #0
	adds r0, #0x80
	strb r2, [r0]
	adds r6, r4, #0
	adds r6, #0x84
	ldr r0, [r6]
	strb r2, [r0, #2]
	movs r0, #0x7c
	adds r0, r0, r4
	mov r8, r0
	ldrb r5, [r0]
	cmp r5, #0
	bne _08036E3E
	adds r0, r4, #0
	adds r0, #0x7d
	strb r2, [r0]
	b _08036F00
_08036E3E:
	cmp r5, #4
	bne _08036ECC
	str r2, [sp]
	bl Random
	movs r1, #3
	mov sb, r1
	ands r0, r1
	ldr r2, [sp]
	cmp r0, #0
	beq _08036E62
	ldr r0, _08036E84 @ =gRoomVars
	movs r3, #0xc
	ldrsh r1, [r0, r3]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08036E8C
_08036E62:
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #0x3c
	strb r0, [r1]
	strh r2, [r4, #0x2a]
	ldr r0, [r6]
	strb r5, [r0]
	ldr r0, _08036E88 @ =0x00000159
	bl PlaySFX
	b _08036F00
	.align 2, 0
_08036E84: .4byte gRoomVars
_08036E88: .4byte 0x00000159
_08036E8C:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #4
	bne _08036ECC
	adds r0, r4, #0
	adds r0, #0x7e
	strb r2, [r0]
	bl Random
	adds r1, r0, #0
	mov r3, sb
	ands r1, r3
	ldr r0, [r6]
	ldrb r0, [r0, #5]
	cmp r0, r1
	beq _08036EB0
	strb r1, [r7]
	b _08036EB8
_08036EB0:
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r7]
_08036EB8:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	subs r0, #3
	ldrb r0, [r0]
	strb r0, [r1, #5]
	adds r0, r4, #0
	bl sub_08036C90
	b _08036F00
_08036ECC:
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	ldr r1, _08036F0C @ =gUnk_080CF147
	cmp r0, #0
	bne _08036EDE
	ldr r1, _08036F10 @ =gUnk_080CF142
_08036EDE:
	adds r2, r4, #0
	adds r2, #0x7e
	ldrb r0, [r2]
	adds r0, r1, r0
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x7d
	strb r1, [r0]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08036F00
	movs r0, #0
	strb r0, [r2]
_08036F00:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08036F0C: .4byte gUnk_080CF147
_08036F10: .4byte gUnk_080CF142

	thumb_func_start sub_08036F14
sub_08036F14: @ 0x08036F14
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r4, #0x84
	ldr r0, [r4]
	ldr r0, [r0, #8]
	bl sub_0801D2B4
	movs r5, #0
	adds r7, r4, #0
_08036F28:
	ldr r0, [r7]
	lsls r1, r5, #2
	adds r0, #0x20
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r6, #0
	bl sub_0801D2B4
	adds r5, #1
	cmp r5, #3
	bls _08036F28
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	subs r5, r0, #1
	cmp r5, #0
	beq _08036F5E
_08036F48:
	ldr r0, [r4]
	lsls r1, r5, #2
	adds r0, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r6, #0
	bl sub_0801D2B4
	subs r5, #1
	cmp r5, #0
	bne _08036F48
_08036F5E:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08036F60
sub_08036F60: @ 0x08036F60
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xd]
	cmp r0, #4
	beq _08036FA8
	adds r0, r2, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _08036FA8
	adds r3, r2, #0
	adds r3, #0x76
	movs r0, #0xe
	ldrsb r0, [r2, r0]
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	adds r1, r2, #0
	adds r1, #0x74
	movs r0, #0xe
	ldrsb r0, [r2, r0]
	ldrh r5, [r1]
	adds r0, r0, r5
	strh r0, [r1]
	ldrh r0, [r3]
	cmp r0, #0x9b
	bhi _08036FA0
	strb r4, [r2, #0xe]
	b _08036FA8
_08036FA0:
	cmp r0, #0xa4
	bls _08036FA8
	movs r0, #0xff
	strb r0, [r2, #0xe]
_08036FA8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08036FAC
sub_08036FAC: @ 0x08036FAC
	push {lr}
	adds r2, r0, #0
	ldr r0, _08036FD0 @ =gUnk_030010A0
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _08036FDE
	adds r0, r2, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08036FD8
	ldr r0, _08036FD4 @ =0x00000163
	bl PlaySFX
	b _08036FDE
	.align 2, 0
_08036FD0: .4byte gUnk_030010A0
_08036FD4: .4byte 0x00000163
_08036FD8:
	ldr r0, _08036FE0 @ =0x000001B1
	bl PlaySFX
_08036FDE:
	pop {pc}
	.align 2, 0
_08036FE0: .4byte 0x000001B1

	thumb_func_start sub_08036FE4
sub_08036FE4: @ 0x08036FE4
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08037048
	adds r0, r2, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _08037048
	adds r0, r2, #0
	adds r0, #0x82
	ldrh r3, [r0]
	adds r4, r0, #0
	cmp r3, #0
	beq _08037048
	adds r0, #2
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	cmp r0, #0xff
	beq _0803702C
	cmp r0, #0
	bne _08037022
	adds r1, r2, #0
	adds r1, #0x7a
	ldrh r5, [r1]
	adds r0, r3, r5
	b _0803702A
_08037022:
	adds r1, r2, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	subs r0, r0, r3
_0803702A:
	strh r0, [r1]
_0803702C:
	adds r0, r2, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #1
	beq _0803703C
	cmp r0, #3
	beq _08037042
	b _08037048
_0803703C:
	ldrh r0, [r4]
	subs r0, #1
	b _08037046
_08037042:
	ldrh r0, [r4]
	subs r0, #2
_08037046:
	strh r0, [r4]
_08037048:
	pop {r4, r5, pc}
	.align 2, 0
