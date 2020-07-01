	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start WarpPoint
WarpPoint: @ 0x0808B448
	push {lr}
	adds r2, r0, #0
	adds r0, #0x70
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808B46C
	ldr r0, _0808B468 @ =gUnk_08121368
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
	b _0808B472
	.align 2, 0
_0808B468: .4byte gUnk_08121368
_0808B46C:
	adds r0, r2, #0
	bl sub_0808B73C
_0808B472:
	pop {pc}

	thumb_func_start sub_0808B474
sub_0808B474: @ 0x0808B474
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xf]
	ldr r1, _0808B4D8 @ =gUnk_08121380
	ldrb r0, [r4, #0xa]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0xf
	ands r1, r0
	ldrb r3, [r4, #0x1a]
	movs r2, #0x10
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x1a]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _0808B4DC @ =gUnk_080FD168
	str r0, [r4, #0x48]
	ldrb r0, [r4, #0x11]
	ands r2, r0
	movs r0, #3
	orrs r2, r0
	strb r2, [r4, #0x11]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _0808B4E0
	adds r0, r4, #0
	bl sub_0808B830
	b _0808B4F8
	.align 2, 0
_0808B4D8: .4byte gUnk_08121380
_0808B4DC: .4byte gUnk_080FD168
_0808B4E0:
	bl CheckIsDungeon
	cmp r0, #0
	beq _0808B4F8
	ldrb r0, [r4, #0xa]
	bl sub_0807CAEC
	cmp r0, #0
	beq _0808B4F8
	adds r0, r4, #0
	bl sub_0808B830
_0808B4F8:
	adds r0, r4, #0
	bl sub_0808B7C8
	cmp r0, #0
	beq _0808B528
	movs r2, #4
	strb r2, [r4, #0xc]
	movs r0, #0x60
	strb r0, [r4, #0xf]
	ldr r1, _0808B52C @ =gLinkEntity
	ldrh r0, [r4, #0x2e]
	strh r0, [r1, #0x2e]
	ldrh r0, [r4, #0x32]
	strh r0, [r1, #0x32]
	strb r2, [r1, #0x14]
	movs r0, #0x89
	lsls r0, r0, #1
	bl sub_08004488
	ldrb r1, [r4, #0xf]
	adds r1, #0x10
	adds r0, r4, #0
	bl sub_0805E4E0
_0808B528:
	pop {r4, pc}
	.align 2, 0
_0808B52C: .4byte gLinkEntity

	thumb_func_start sub_0808B530
sub_0808B530: @ 0x0808B530
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _0808B562
	adds r0, r4, #0
	bl sub_0808B830
	bl CheckIsDungeon
	cmp r0, #0
	beq _0808B554
	ldrb r0, [r4, #0xa]
	bl sub_0807CAC8
_0808B554:
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xf]
	adds r0, #0xd6
	bl sub_08004488
_0808B562:
	pop {r4, pc}

	thumb_func_start sub_0808B564
sub_0808B564: @ 0x0808B564
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xf]
	subs r1, r0, #1
	strb r1, [r3, #0xf]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0808B57A
	movs r0, #3
	strb r0, [r3, #0xc]
	b _0808B58E
_0808B57A:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x19
	movs r1, #1
	bics r1, r0
	ldrb r2, [r3, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
_0808B58E:
	pop {pc}

	thumb_func_start sub_0808B590
sub_0808B590: @ 0x0808B590
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_0808B7C8
	cmp r0, #0
	beq _0808B5E4
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _0808B5E6
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #0x60
	strb r0, [r4, #0xf]
	bl sub_08077B20
	ldr r1, _0808B5DC @ =gLinkEntity
	ldrh r0, [r4, #0x2e]
	strh r0, [r1, #0x2e]
	ldrh r0, [r4, #0x32]
	strh r0, [r1, #0x32]
	movs r0, #4
	strb r0, [r1, #0x14]
	ldrb r2, [r1, #0x10]
	movs r0, #0x7f
	ands r0, r2
	strb r0, [r1, #0x10]
	ldrb r1, [r4, #0xf]
	adds r1, #0x10
	adds r0, r4, #0
	bl sub_0805E4E0
	ldr r0, _0808B5E0 @ =0x00000113
	bl PlaySFX
	b _0808B5E6
	.align 2, 0
_0808B5DC: .4byte gLinkEntity
_0808B5E0: .4byte 0x00000113
_0808B5E4:
	strb r0, [r4, #0xe]
_0808B5E6:
	pop {r4, pc}

	thumb_func_start sub_0808B5E8
sub_0808B5E8: @ 0x0808B5E8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	subs r1, r0, #1
	strb r1, [r4, #0xf]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0808B610
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xe]
	ldr r1, _0808B60C @ =gLinkEntity
	movs r0, #4
	strb r0, [r1, #0x14]
	movs r0, #0x10
	strb r0, [r1, #0x15]
	b _0808B67E
	.align 2, 0
_0808B60C: .4byte gLinkEntity
_0808B610:
	movs r5, #0
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x20
	beq _0808B644
	cmp r0, #0x20
	bgt _0808B624
	cmp r0, #0
	beq _0808B64E
	b _0808B66E
_0808B624:
	cmp r0, #0x40
	bne _0808B66E
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x58
	bne _0808B638
	movs r0, #0x8a
	lsls r0, r0, #1
	bl PlaySFX
_0808B638:
	ldrb r1, [r4, #0xf]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0808B66E
	b _0808B672
_0808B644:
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	bne _0808B66E
	b _0808B672
_0808B64E:
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0808B66E
	ldr r0, _0808B668 @ =gLinkEntity
	ldrb r0, [r0, #0x14]
	cmp r0, #4
	bne _0808B66C
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x18
	bls _0808B66E
	b _0808B672
	.align 2, 0
_0808B668: .4byte gLinkEntity
_0808B66C:
	movs r5, #1
_0808B66E:
	cmp r5, #0
	beq _0808B67E
_0808B672:
	ldr r0, _0808B680 @ =gLinkEntity
	ldrb r1, [r0, #0x14]
	adds r1, #2
	movs r2, #6
	ands r1, r2
	strb r1, [r0, #0x14]
_0808B67E:
	pop {r4, r5, pc}
	.align 2, 0
_0808B680: .4byte gLinkEntity

	thumb_func_start sub_0808B684
sub_0808B684: @ 0x0808B684
	push {lr}
	mov ip, r0
	ldrb r0, [r0, #0xf]
	subs r1, r0, #1
	mov r0, ip
	strb r1, [r0, #0xf]
	lsls r0, r1, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _0808B6E8
	ldr r3, _0808B6E4 @ =gUnk_030010A0
	movs r0, #1
	strb r0, [r3, #8]
	strb r2, [r3, #9]
	mov r0, ip
	adds r0, #0x7c
	ldrb r0, [r0]
	strb r0, [r3, #0xc]
	mov r0, ip
	adds r0, #0x7d
	ldrb r0, [r0]
	strb r0, [r3, #0xd]
	mov r0, ip
	adds r0, #0x84
	ldrh r1, [r0]
	movs r0, #0x3f
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #8
	movs r2, #0
	strh r0, [r3, #0x10]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r1
	lsrs r0, r0, #2
	adds r0, #8
	strh r0, [r3, #0x12]
	strb r2, [r3, #0x14]
	movs r0, #4
	strb r0, [r3, #0xe]
	strb r2, [r3, #0xf]
	mov r1, ip
	ldrb r0, [r1, #0xa]
	cmp r0, #2
	bne _0808B736
	strb r0, [r3, #9]
	b _0808B736
	.align 2, 0
_0808B6E4: .4byte gUnk_030010A0
_0808B6E8:
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x20
	beq _0808B702
	cmp r0, #0x20
	bgt _0808B6FA
	cmp r0, #0
	beq _0808B706
	b _0808B724
_0808B6FA:
	cmp r0, #0x40
	bne _0808B724
	movs r0, #7
	b _0808B710
_0808B702:
	movs r0, #3
	b _0808B710
_0808B706:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bls _0808B718
	movs r0, #1
_0808B710:
	ands r1, r0
	cmp r1, #0
	bne _0808B724
	b _0808B72A
_0808B718:
	ldr r2, _0808B738 @ =gLinkEntity
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
_0808B724:
	movs r0, #0
	cmp r0, #0
	beq _0808B736
_0808B72A:
	ldr r0, _0808B738 @ =gLinkEntity
	ldrb r1, [r0, #0x14]
	adds r1, #2
	movs r2, #6
	ands r1, r2
	strb r1, [r0, #0x14]
_0808B736:
	pop {pc}
	.align 2, 0
_0808B738: .4byte gLinkEntity

	thumb_func_start sub_0808B73C
sub_0808B73C: @ 0x0808B73C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0808B766
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, [r4, #0x50]
	ldrb r1, [r0, #0x1a]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	ldrb r2, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1a]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
_0808B766:
	ldr r5, _0808B78C @ =gLinkEntity
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	movs r3, #0x28
	bl sub_0806FCB8
	cmp r0, #0
	beq _0808B790
	ldrb r0, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #0x18]
	b _0808B7C0
	.align 2, 0
_0808B78C: .4byte gLinkEntity
_0808B790:
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	movs r3, #0x2e
	bl sub_0806FCB8
	cmp r0, #0
	beq _0808B7B6
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	b _0808B7BE
_0808B7B6:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
_0808B7BE:
	strb r0, [r4, #0x18]
_0808B7C0:
	adds r0, r4, #0
	bl GetNextFrame
	pop {r4, r5, pc}

	thumb_func_start sub_0808B7C8
sub_0808B7C8: @ 0x0808B7C8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _0808B824 @ =gLinkState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0808B82C
	adds r0, r2, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _0808B82C
	ldr r4, _0808B828 @ =gLinkEntity
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808B82C
	bl sub_08079F8C
	cmp r0, #0
	beq _0808B82C
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #5
	movs r3, #5
	bl sub_080041A0
	cmp r0, #0
	beq _0808B82C
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0808B82C
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _0808B81E
	ldrb r0, [r4, #0xc]
	cmp r0, #0x1b
	bne _0808B81E
	bl sub_080791D0
_0808B81E:
	movs r0, #1
	b _0808B82E
	.align 2, 0
_0808B824: .4byte gLinkState
_0808B828: .4byte gLinkEntity
_0808B82C:
	movs r0, #0
_0808B82E:
	pop {r4, r5, pc}

	thumb_func_start sub_0808B830
sub_0808B830: @ 0x0808B830
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #7
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0x34
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0808B86A
	adds r1, r2, #0
	adds r1, #0x70
	movs r0, #1
	strb r0, [r1]
	str r4, [r2, #0x50]
	adds r0, r4, #0
	adds r1, r2, #0
	bl CopyPosition
_0808B86A:
	pop {r4, pc}
