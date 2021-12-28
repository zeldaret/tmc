    .syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, _080735DC @ =gPlayerState
	adds r0, r2, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r5, #0x80
	adds r0, r5, #0
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	bne _080735C0
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _080735C0
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080735C0
	ldr r0, [r6, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	bne _080735E0
_080735C0:
	ldrb r0, [r6, #2]
	movs r1, #0x40
	orrs r1, r0
	strb r1, [r6, #2]
	bl sub_0807921C
	adds r0, r4, #0
	bl sub_08073904
	movs r0, #0xe6
	lsls r0, r0, #3
	strh r0, [r6, #8]
	b _08073794
	.align 2, 0
_080735DC: .4byte gPlayerState
_080735E0:
	ldr r0, _0807360C @ =gUnk_0200AF00
	adds r0, #0x2f
	movs r1, #1
	strb r1, [r0]
	movs r0, #0
	bl sub_0807A2F8
	cmp r0, #0
	beq _08073610
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x14]
	movs r0, #6
	ands r0, r1
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	b _08073794
	.align 2, 0
_0807360C: .4byte gUnk_0200AF00
_08073610:
	ldr r0, _08073620 @ =gArea
	ldrb r0, [r0, #1]
	cmp r0, #0x10
	bne _08073624
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	b _08073626
	.align 2, 0
_08073620: .4byte gArea
_08073624:
	strh r5, [r4, #0x24]
_08073626:
	ldr r3, _08073650 @ =gPlayerState
	ldrb r1, [r3, #0xd]
	movs r0, #0x80
	ands r0, r1
	adds r2, r4, #0
	adds r2, #0x80
	cmp r0, #0
	bne _0807365A
	ldrb r0, [r4, #0x15]
	cmp r0, r1
	beq _0807365A
	ldrb r1, [r3, #0xd]
	subs r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0xf
	bgt _08073654
	ldr r0, [r2]
	subs r0, #0x20
	b _08073658
	.align 2, 0
_08073650: .4byte gPlayerState
_08073654:
	ldr r0, [r2]
	adds r0, #0x20
_08073658:
	str r0, [r2]
_0807365A:
	ldr r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	bl sub_08079E08
	ldrb r2, [r4, #0x14]
	lsls r3, r2, #2
	ldrb r1, [r4, #0x15]
	cmp r2, #0
	bne _0807367C
	adds r3, #8
	movs r0, #0x1f
	ands r3, r0
	adds r1, #8
	ands r1, r0
_0807367C:
	subs r0, r3, #7
	cmp r0, r1
	bls _08073686
	subs r3, r2, #2
	b _0807368E
_08073686:
	adds r0, r3, #7
	cmp r0, r1
	bhs _08073694
	adds r3, r2, #2
_0807368E:
	movs r0, #7
	ands r3, r0
	b _08073696
_08073694:
	adds r3, r2, #0
_08073696:
	movs r0, #0x87
	adds r0, r0, r4
	mov ip, r0
	ldrb r1, [r4, #0x14]
	cmp r3, r1
	beq _080736A8
	movs r0, #0x14
	mov r2, ip
	strb r0, [r2]
_080736A8:
	strb r3, [r4, #0x14]
	movs r5, #0
	ldr r1, _080736E4 @ =gPlayerState
	ldrb r2, [r1, #0xd]
	lsrs r3, r2, #2
	mov r6, ip
	ldrb r0, [r6]
	adds r6, r1, #0
	cmp r0, #0
	beq _080736CA
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08073736
	ldrb r0, [r4, #0x14]
	cmp r0, r3
	beq _08073736
_080736CA:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _080736FA
	ldrb r2, [r4, #0x14]
	cmp r2, r3
	beq _080736FA
	movs r0, #4
	eors r0, r3
	cmp r2, r0
	bne _080736E8
	movs r5, #2
	b _080736FA
	.align 2, 0
_080736E4: .4byte gPlayerState
_080736E8:
	movs r0, #6
	ands r0, r3
	adds r0, #2
	movs r1, #7
	ands r0, r1
	movs r5, #3
	cmp r2, r0
	bne _080736FA
	movs r5, #1
_080736FA:
	ldr r1, _0807371C @ =gUnk_0811BC28
	lsls r0, r5, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r6, #8]
	cmp r0, r1
	bne _0807372C
	ldr r0, _08073720 @ =gArea
	ldrb r0, [r0, #1]
	cmp r0, #0x10
	bne _08073724
	adds r0, r4, #0
	movs r1, #2
	bl sub_080042BA
	b _0807372E
	.align 2, 0
_0807371C: .4byte gUnk_0811BC28
_08073720: .4byte gArea
_08073724:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	b _0807372E
_0807372C:
	strh r0, [r6, #8]
_0807372E:
	adds r0, r4, #0
	adds r0, #0x86
	strb r5, [r0]
	b _08073762
_08073736:
	mov r2, ip
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	ldr r1, _0807375C @ =gUnk_0811BC30
	adds r0, r4, #0
	adds r0, #0x86
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r6, #8]
	cmp r0, r1
	bne _08073760
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	b _08073762
	.align 2, 0
_0807375C: .4byte gUnk_0811BC30
_08073760:
	strh r0, [r6, #8]
_08073762:
	ldr r0, [r4, #0x7c]
	subs r1, r0, #1
	str r1, [r4, #0x7c]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08073784
	ldr r2, _08073780 @ =gPlayerState
	ldrb r1, [r2, #2]
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2, #2]
	bl sub_0807921C
	b _08073794
	.align 2, 0
_08073780: .4byte gPlayerState
_08073784:
	adds r0, r1, #0
	movs r1, #0x14
	bl __divsi3
	ldr r2, _08073798 @ =0x0000FFF8
	adds r1, r2, #0
	subs r1, r1, r0
	strh r1, [r4, #0x36]
_08073794:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08073798: .4byte 0x0000FFF8
    .syntax divided
