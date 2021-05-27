    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _08071654
	adds r1, r5, #0
	adds r1, #0x80
	ldr r0, [r1]
	adds r0, #0x80
	lsls r0, r0, #0x14
	lsrs r7, r0, #0x17
	adds r4, r1, #0
	b _0807166A
_08071654:
	adds r4, r5, #0
	adds r4, #0x80
	ldrb r1, [r4]
	lsrs r1, r1, #6
	movs r0, #3
	eors r1, r0
	adds r1, #1
	movs r0, #0x10
	bl __divsi3
	asrs r7, r0, #1
_0807166A:
	adds r0, r5, #0
	adds r0, #0x84
	ldr r3, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r0, #0
	cmp r3, r1
	bls _08071684
	adds r0, r3, #0
	adds r0, #0x80
	lsls r0, r0, #0x14
	lsrs r3, r0, #0x17
	b _08071694
_08071684:
	cmp r3, r1
	bne _0807168C
	movs r3, #0x10
	b _08071694
_0807168C:
	ldr r1, _080716B0 @ =gUnk_0811BABC
	lsrs r0, r3, #5
	adds r0, r0, r1
	ldrb r3, [r0]
_08071694:
	movs r0, #0x80
	lsls r0, r0, #9
	mov r8, r0
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #2
	beq _080716EA
	cmp r0, #2
	bgt _080716B4
	cmp r0, #1
	beq _080716BA
	b _08071754
	.align 2, 0
_080716B0: .4byte gUnk_0811BABC
_080716B4:
	cmp r0, #3
	beq _0807171E
	b _08071754
_080716BA:
	movs r1, #0x29
	adds r1, r1, r5
	mov ip, r1
	ldrb r1, [r1]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, ip
	strb r0, [r1]
	ldr r0, [r4]
	cmp r0, #0x80
	bls _080716D6
	subs r0, r0, r7
	str r0, [r4]
_080716D6:
	lsls r1, r3, #1
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	mov r0, r8
	lsls r1, r0, #1
	ldr r0, [r5, #0x30]
	adds r0, r0, r1
	str r0, [r5, #0x30]
	b _08071754
_080716EA:
	ldr r0, [r4]
	adds r0, r0, r7
	str r0, [r4]
	ldr r1, [r2]
	movs r6, #0x80
	lsls r6, r6, #1
	cmp r1, r6
	bls _08071710
	ldr r0, _0807170C @ =0x0000017F
	cmp r1, r0
	bhi _08071702
	lsrs r3, r3, #1
_08071702:
	subs r0, r1, r3
	cmp r0, #0xff
	bhi _08071716
	str r6, [r2]
	b _08071718
	.align 2, 0
_0807170C: .4byte 0x0000017F
_08071710:
	cmp r1, #0x80
	bls _08071718
	subs r0, r1, r3
_08071716:
	str r0, [r2]
_08071718:
	ldr r0, [r5, #0x34]
	mov r1, r8
	b _08071750
_0807171E:
	ldr r0, [r4]
	ldr r6, _08071740 @ =0x0000033F
	cmp r0, r6
	bhi _0807172A
	adds r0, r0, r7
	str r0, [r4]
_0807172A:
	ldr r1, [r2]
	cmp r1, r6
	bls _08071744
	movs r0, #8
	strb r0, [r5, #0xe]
	movs r0, #0x1e
	strb r0, [r5, #0xf]
	movs r0, #6
	strb r0, [r5, #0xd]
	b _0807174A
	.align 2, 0
_08071740: .4byte 0x0000033F
_08071744:
	lsls r0, r3, #1
	adds r0, r1, r0
	str r0, [r2]
_0807174A:
	mov r0, r8
	lsls r1, r0, #1
	ldr r0, [r5, #0x34]
_08071750:
	subs r0, r0, r1
	str r0, [r5, #0x34]
_08071754:
	ldr r1, [r4]
	ldr r2, [r2]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0805EC9C
	adds r0, r5, #0
	bl UpdateAnimationSingleFrame
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
    .syntax divided
