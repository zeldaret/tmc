	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_080682B0
sub_080682B0: @ 0x080682B0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r2, r0, #0
	cmp r2, #0
	bne _080682F4
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #4
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x68
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	movs r1, #0
	bl LoadAnimation
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806854C
_080682F4:
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0806830A
	adds r0, r4, #0
	bl sub_08068318
	b _08068314
_0806830A:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_08068314:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08068318
sub_08068318: @ 0x08068318
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	ldr r4, _08068414 @ =gLinkEntity
	ldrh r1, [r4, #0x2e]
	ldr r3, _08068418 @ =0xFFFF0000
	adds r0, r3, #0
	ands r0, r6
	orrs r0, r1
	ldrh r1, [r4, #0x32]
	lsls r1, r1, #0x10
	ldr r2, _0806841C @ =0x0000FFFF
	ands r0, r2
	adds r6, r0, #0
	orrs r6, r1
	ldrh r0, [r4, #0x36]
	ands r3, r7
	orrs r3, r0
	adds r7, r3, #0
	ldr r0, _08068420 @ =gLinkState
	adds r0, #0xa8
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	ldr r2, _08068424 @ =0xFF00FFFF
	ands r2, r3
	orrs r2, r0
	adds r7, r2, #0
	ldrb r1, [r4, #0x14]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #0x18
	ldr r0, _08068428 @ =0xC0FFFFFF
	ands r0, r2
	orrs r0, r1
	adds r7, r0, #0
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	lsls r1, r1, #0x1e
	ldr r2, _0806842C @ =0x3FFFFFFF
	ands r0, r2
	adds r7, r0, #0
	orrs r7, r1
	mov r0, r8
	ldr r5, [r0, #0x64]
	ldrb r1, [r5, #6]
	cmp r1, #0xa
	bne _08068386
	lsrs r0, r7, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bne _08068394
_08068386:
	cmp r1, #0x16
	bne _080683B4
	lsrs r0, r7, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x16
	beq _080683B4
_08068394:
	ldrh r0, [r4, #0x2e]
	mov r1, r8
	strh r0, [r1, #0x2e]
	ldrh r0, [r4, #0x32]
	strh r0, [r1, #0x32]
	ldrb r1, [r1, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	mov r2, r8
	strb r0, [r2, #0x18]
	mov r0, r8
	bl sub_08068578
_080683B4:
	movs r3, #0
	mov sb, r3
	ldr r0, [r5]
	cmp r6, r0
	bne _080683D0
	ldr r0, [r5, #4]
	cmp r7, r0
	bne _080683D0
	lsls r1, r7, #8
	lsrs r0, r1, #0x18
	cmp r0, #0x16
	beq _080683D0
	cmp r0, #0xa
	bne _08068430
_080683D0:
	mov r0, r8
	ldr r5, [r0, #0x64]
	adds r5, #0x90
	mov r4, r8
	adds r4, #0x69
	mov r3, r8
	adds r3, #0x38
	movs r1, #0x58
	add r1, r8
	mov ip, r1
	movs r2, #0x12
_080683E6:
	ldr r0, [r5]
	ldr r1, [r5, #4]
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	subs r5, #8
	subs r2, #1
	cmp r2, #0
	bge _080683E6
	mov r2, r8
	ldr r5, [r2, #0x64]
	str r6, [r5]
	str r7, [r5, #4]
	movs r0, #4
	mov sb, r0
	ldrb r1, [r4]
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _080684A8
	subs r0, r1, #1
	strb r0, [r4]
	b _080684A8
	.align 2, 0
_08068414: .4byte gLinkEntity
_08068418: .4byte 0xFFFF0000
_0806841C: .4byte 0x0000FFFF
_08068420: .4byte gLinkState
_08068424: .4byte 0xFF00FFFF
_08068428: .4byte 0xC0FFFFFF
_0806842C: .4byte 0x3FFFFFFF
_08068430:
	adds r5, #0x98
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _08068466
	mov r2, r8
	ldr r5, [r2, #0x64]
	adds r5, #0x90
	mov r4, r8
	adds r4, #0x69
	mov r3, r8
	adds r3, #0x38
	movs r0, #0x58
	add r0, r8
	mov ip, r0
	movs r2, #0x12
_08068450:
	ldr r0, [r5]
	ldr r1, [r5, #4]
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	subs r5, #8
	subs r2, #1
	cmp r2, #0
	bge _08068450
	movs r1, #4
	mov sb, r1
	b _080684A8
_08068466:
	ldr r1, _0806851C @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r0, [r1, r2]
	movs r3, #0x32
	ldrsh r1, [r1, r3]
	ldrh r2, [r5]
	ldrh r3, [r5, #2]
	bl sub_080041E8
	lsrs r0, r0, #4
	mov r4, r8
	adds r4, #0x69
	mov r3, r8
	adds r3, #0x38
	movs r1, #0x58
	add r1, r8
	mov ip, r1
	cmp r0, #0x18
	ble _080684A8
	mov r2, r8
	ldr r5, [r2, #0x64]
	adds r5, #0x90
	movs r2, #0x12
_08068494:
	ldr r0, [r5]
	ldr r1, [r5, #4]
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	subs r5, #8
	subs r2, #1
	cmp r2, #0
	bge _08068494
	movs r0, #4
	mov sb, r0
_080684A8:
	mov r1, r8
	ldr r5, [r1, #0x64]
	adds r5, #0x98
	ldrh r0, [r5]
	strh r0, [r1, #0x2e]
	ldrh r0, [r5, #2]
	strh r0, [r1, #0x32]
	ldrh r0, [r5, #4]
	strh r0, [r1, #0x36]
	ldrb r0, [r5, #7]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	strb r0, [r1, #0x14]
	ldrb r0, [r5, #7]
	lsrs r0, r0, #6
	strb r0, [r3]
	ldrb r0, [r5, #6]
	cmp r0, #0x16
	beq _080684D2
	cmp r0, #0xa
	bne _080684DE
_080684D2:
	mov r2, r8
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
_080684DE:
	adds r1, r4, #0
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _080684EE
	subs r0, r2, #1
	strb r0, [r1]
_080684EE:
	mov r2, sb
	mov r3, r8
	ldrb r0, [r3, #0x14]
	lsrs r0, r0, #1
	add sb, r0
	mov r0, ip
	ldrb r0, [r0]
	cmp sb, r0
	beq _08068520
	cmp r2, #0
	bne _0806850C
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bgt _08068520
_0806850C:
	mov r0, r8
	mov r1, sb
	bl LoadAnimation
	movs r0, #0x1e
	strb r0, [r4]
	b _08068526
	.align 2, 0
_0806851C: .4byte gLinkEntity
_08068520:
	mov r0, r8
	bl sub_080042B8
_08068526:
	mov r0, r8
	bl sub_0800451C
	mov r1, r8
	movs r2, #0x36
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _08068542
	movs r2, #0xc
	rsbs r2, r2, #0
	mov r0, r8
	movs r1, #0
	bl sub_0806F854
_08068542:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0806854C
sub_0806854C: @ 0x0806854C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xa0
	bl sub_0801D8E0
	str r0, [r5, #0x64]
	cmp r0, #0
	beq _08068574
	adds r0, r5, #0
	adds r0, #0x68
	movs r4, #0
	movs r1, #1
	strb r1, [r0]
	adds r0, r5, #0
	bl sub_080788E0
	str r4, [r5, #0x48]
	adds r0, r5, #0
	bl sub_08068578
_08068574:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08068578
sub_08068578: @ 0x08068578
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r4, _08068664 @ =gLinkEntity
	ldrh r1, [r4, #0x2e]
	ldr r3, _08068668 @ =0xFFFF0000
	adds r0, r3, #0
	ands r0, r5
	orrs r0, r1
	ldrh r1, [r4, #0x32]
	lsls r1, r1, #0x10
	ldr r2, _0806866C @ =0x0000FFFF
	ands r0, r2
	adds r5, r0, #0
	orrs r5, r1
	ldrh r0, [r4, #0x36]
	ands r3, r6
	orrs r3, r0
	ldr r0, _08068670 @ =gLinkState
	adds r0, #0xa8
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	ldr r2, _08068674 @ =0xFF00FFFF
	ands r2, r3
	orrs r2, r0
	ldrb r1, [r4, #0x14]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #0x18
	ldr r0, _08068678 @ =0xC0FFFFFF
	ands r0, r2
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	lsls r1, r1, #0x1e
	ldr r2, _0806867C @ =0x3FFFFFFF
	ands r0, r2
	adds r6, r0, #0
	orrs r6, r1
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r2, #0x2e
	ldrsh r0, [r7, r2]
	subs r1, r1, r0
	mov sl, r1
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	movs r2, #0x32
	ldrsh r0, [r7, r2]
	subs r1, r1, r0
	mov r8, r1
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x14
	bl sub_0806FA04
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x14
	bl sub_0806FA04
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	ldr r3, [r7, #0x64]
	movs r0, #0
	mov sb, r0
	mov ip, r0
	movs r4, #0x13
_08068614:
	mov r1, ip
	asrs r0, r1, #8
	subs r0, r5, r0
	strh r0, [r3]
	lsrs r0, r5, #0x10
	mov r2, sb
	asrs r1, r2, #8
	subs r0, r0, r1
	strh r0, [r3, #2]
	strh r6, [r3, #4]
	lsrs r0, r6, #0x10
	strb r0, [r3, #6]
	ldrb r0, [r7, #0x14]
	movs r1, #0x3f
	ands r1, r0
	ldrb r2, [r3, #7]
	movs r0, #0x40
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #7]
	adds r1, r7, #0
	adds r1, #0x38
	ldrb r1, [r1]
	lsls r1, r1, #6
	movs r2, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #7]
	adds r3, #8
	add sb, r8
	add ip, sl
	subs r4, #1
	cmp r4, #0
	bge _08068614
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08068664: .4byte gLinkEntity
_08068668: .4byte 0xFFFF0000
_0806866C: .4byte 0x0000FFFF
_08068670: .4byte gLinkState
_08068674: .4byte 0xFF00FFFF
_08068678: .4byte 0xC0FFFFFF
_0806867C: .4byte 0x3FFFFFFF

	thumb_func_start sub_08068680
sub_08068680: @ 0x08068680
	adds r2, r1, #0
	adds r2, #0x68
	movs r0, #0
	strb r0, [r2]
	ldrb r2, [r1, #0x18]
	subs r0, #4
	ands r0, r2
	strb r0, [r1, #0x18]
	bx lr
	.align 2, 0

	thumb_func_start sub_08068694
sub_08068694: @ 0x08068694
	push {r4, lr}
	adds r4, r1, #0
	adds r2, r4, #0
	adds r2, #0x68
	movs r3, #1
	movs r1, #1
	strb r1, [r2]
	ldrb r2, [r4, #0x18]
	subs r1, #5
	ands r1, r2
	orrs r1, r3
	strb r1, [r4, #0x18]
	ldrb r0, [r0, #0x14]
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08068578
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
	adds r0, r4, #0
	bl LoadAnimation
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080686C4
sub_080686C4: @ 0x080686C4
	push {lr}
	adds r0, r1, #0
	ldrh r1, [r0, #0x32]
	subs r1, #0x10
	strh r1, [r0, #0x32]
	bl sub_08068578
	pop {pc}
