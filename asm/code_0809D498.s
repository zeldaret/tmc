	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0809D498
sub_0809D498: @ 0x0809D498
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _0809D548
	movs r2, #1
	movs r3, #1
	strb r3, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	ldr r0, _0809D534 @ =0xFFFD8000
	str r0, [r5, #0x20]
	ldr r0, _0809D538 @ =0xFFB4C000
	str r0, [r5, #0x34]
	adds r4, r5, #0
	adds r4, #0x68
	movs r0, #0xf0
	lsls r0, r0, #8
	strh r0, [r4]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r5, #0x24]
	movs r0, #8
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	adds r0, #0x38
	strb r3, [r0]
	adds r6, r5, #0
	adds r6, #0x29
	ldrb r1, [r6]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6]
	ldrb r2, [r5, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r5, #0x19]
	ldrb r0, [r5, #0x1b]
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r5, #0x1b]
	adds r0, r5, #0
	movs r1, #6
	bl sub_0805E3A0
	ldr r0, _0809D53C @ =gRoomControls
	ldrh r0, [r0, #0xa]
	strh r0, [r5, #0x2e]
	ldr r0, _0809D540 @ =gLinkEntity
	ldrh r0, [r0, #0x32]
	strh r0, [r5, #0x32]
	ldr r0, _0809D544 @ =0x00000123
	bl PlaySFX
	ldrb r1, [r6]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6]
	adds r0, r5, #0
	movs r1, #0
	bl sub_080042AC
	bl sub_08078B48
	adds r7, r4, #0
	b _0809D62E
	.align 2, 0
_0809D534: .4byte 0xFFFD8000
_0809D538: .4byte 0xFFB4C000
_0809D53C: .4byte gRoomControls
_0809D540: .4byte gLinkEntity
_0809D544: .4byte 0x00000123
_0809D548:
	adds r7, r5, #0
	adds r7, #0x68
	cmp r0, #1
	bne _0809D62E
	ldr r6, _0809D658 @ =gLinkEntity
	ldrb r1, [r6, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	mov r8, r0
	ands r0, r1
	strb r0, [r6, #0x18]
	ldr r4, [r5, #0x54]
	cmp r4, #0
	beq _0809D5B0
	ldr r2, _0809D65C @ =0xFFF80000
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0
	bl PositionRelative
	ldrh r0, [r4, #0x36]
	adds r0, #0x18
	strh r0, [r4, #0x36]
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	adds r3, r4, #0
	adds r3, #0x29
	lsrs r1, r1, #0x1d
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r2, [r5, #0x19]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r5, #0x1b]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r4, #0x1b]
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x1b]
_0809D5B0:
	bl sub_08078B48
	ldr r3, _0809D660 @ =gRoomControls
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	adds r0, #0x78
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	cmp r0, r1
	bge _0809D62E
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	cmp r4, #0
	beq _0809D5E6
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_0809D5E6:
	str r6, [r3, #0x30]
	ldrb r1, [r6, #0x18]
	mov r0, r8
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r6, #0x18]
	bl sub_080791D0
	bl sub_0805E564
	ldr r1, _0809D664 @ =gUnk_02034490
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x52
	bl GetProgressFlag
	cmp r0, #0
	bne _0809D62E
	movs r0, #0x69
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0809D62E
	ldr r1, _0809D668 @ =gUnk_0800B0AC
	bl sub_0807DAD0
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
	movs r0, #0x52
	bl sub_0807CD04
_0809D62E:
	adds r0, r5, #0
	bl sub_0806F69C
	movs r0, #0
	ldrsh r1, [r7, r0]
	adds r0, r5, #0
	bl sub_08003FC4
	adds r0, r5, #0
	bl sub_080042B8
	adds r0, r5, #0
	bl sub_080040A8
	cmp r0, #0
	bne _0809D652
	bl sub_0805E780
_0809D652:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809D658: .4byte gLinkEntity
_0809D65C: .4byte 0xFFF80000
_0809D660: .4byte gRoomControls
_0809D664: .4byte gUnk_02034490
_0809D668: .4byte gUnk_0800B0AC

	thumb_func_start sub_0809D66C
sub_0809D66C: @ 0x0809D66C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0809D694 @ =gLinkEntity
	ldrb r1, [r0, #0x1a]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	ldrb r2, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1a]
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0809D6EC
	cmp r0, #1
	bgt _0809D698
	cmp r0, #0
	beq _0809D6A2
	b _0809D6FE
	.align 2, 0
_0809D694: .4byte gLinkEntity
_0809D698:
	cmp r0, #2
	beq _0809D6F4
	cmp r0, #3
	beq _0809D6FA
	b _0809D6FE
_0809D6A2:
	movs r3, #1
	movs r2, #1
	strb r2, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x38
	strb r2, [r0]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4, #0x1b]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	adds r0, r4, #0
	movs r1, #0xe0
	bl sub_080042AC
_0809D6EC:
	adds r0, r4, #0
	bl sub_080042B8
	b _0809D6FE
_0809D6F4:
	movs r0, #3
	strb r0, [r4, #0xc]
	b _0809D6FE
_0809D6FA:
	bl sub_0805E780
_0809D6FE:
	pop {r4, pc}

	thumb_func_start sub_0809D700
sub_0809D700: @ 0x0809D700
	push {r4, lr}
	sub sp, #4
	bl sub_08052654
	cmp r0, #0
	beq _0809D732
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	movs r1, #0x95
	movs r2, #6
	movs r3, #8
	bl sub_0805EB2C
	adds r4, r0, #0
	cmp r4, #0
	bne _0809D732
	movs r0, #0x95
	movs r1, #8
	movs r2, #0
	bl CreateObject
	cmp r0, #0
	beq _0809D732
	strb r4, [r0, #0xe]
_0809D732:
	add sp, #4
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809D738
sub_0809D738: @ 0x0809D738
	push {r4, lr}
	movs r0, #0x95
	movs r1, #9
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0809D77C
	ldr r1, _0809D774 @ =gRoomControls
	movs r0, #0
	str r0, [r1, #0x30]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	bl sub_0805E544
	movs r0, #0x95
	movs r1, #0xa
	movs r2, #0
	bl CreateObject
	cmp r0, #0
	beq _0809D76C
	str r0, [r4, #0x54]
_0809D76C:
	ldr r1, _0809D778 @ =gUnk_02034490
	movs r0, #1
	strb r0, [r1]
	b _0809D780
	.align 2, 0
_0809D774: .4byte gRoomControls
_0809D778: .4byte gUnk_02034490
_0809D77C:
	bl sub_080791D0
_0809D780:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809D784
sub_0809D784: @ 0x0809D784
	push {lr}
	ldr r1, _0809D7A0 @ =gUnk_081240B0
	ldrb r3, [r0, #0xc]
	lsls r3, r3, #2
	adds r3, r3, r1
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #5
	ldr r2, _0809D7A4 @ =gUnk_08123FB0
	adds r1, r1, r2
	ldr r2, [r3]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_0809D7A0: .4byte gUnk_081240B0
_0809D7A4: .4byte gUnk_08123FB0

	thumb_func_start sub_0809D7A8
sub_0809D7A8: @ 0x0809D7A8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	adds r0, #1
	movs r4, #0
	strb r0, [r5, #0xc]
	adds r2, r5, #0
	adds r2, #0x38
	movs r0, #2
	strb r0, [r2]
	ldrb r2, [r5, #0x19]
	movs r0, #0x3f
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r5, #0x19]
	ldr r0, [r1, #0x10]
	str r0, [r5, #0x20]
	ldrb r3, [r1, #0xf]
	strb r3, [r5, #0x15]
	ldrh r0, [r1, #0x18]
	strh r0, [r5, #0x24]
	ldrh r0, [r5, #0x32]
	ldrh r2, [r1, #0x1a]
	subs r0, r0, r2
	strh r0, [r5, #0x32]
	str r4, [r5, #0x34]
	ldrb r0, [r1, #0x1e]
	strb r0, [r5, #0xe]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _0809D80C
	ldrb r0, [r5, #0x15]
	cmp r0, #0x81
	bne _0809D80C
	bl sub_08000E50
	ldr r1, _0809D820 @ =gLinkEntity
	ldrb r1, [r1, #0x14]
	lsls r1, r1, #2
	movs r2, #3
	ands r0, r2
	adds r1, r1, r0
	subs r1, #2
	movs r0, #0x1f
	ands r1, r0
	movs r0, #0x10
	eors r1, r0
	strb r1, [r5, #0x15]
_0809D80C:
	adds r0, r5, #0
	bl UpdateSpriteOrderAndFlip
	ldrb r4, [r5, #0xa]
	adds r0, r5, #0
	bl sub_08080CB4
	strb r4, [r5, #0xa]
	pop {r4, r5, pc}
	.align 2, 0
_0809D820: .4byte gLinkEntity

	thumb_func_start sub_0809D824
sub_0809D824: @ 0x0809D824
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #1
	ldr r2, [r6, #4]
	cmp r2, #0
	beq _0809D838
	adds r0, r5, #0
	bl _call_via_r2
_0809D838:
	cmp r0, #0
	beq _0809D850
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	ldrh r1, [r6, #0x1a]
	ldrh r2, [r5, #0x32]
	adds r0, r1, r2
	strh r0, [r5, #0x32]
	ldrh r0, [r5, #0x36]
	subs r0, r0, r1
	strh r0, [r5, #0x36]
_0809D850:
	ldrb r4, [r5, #0xa]
	ldrb r0, [r6, #0xd]
	strb r0, [r5, #0xa]
	adds r0, r5, #0
	bl sub_08080CB4
	strb r4, [r5, #0xa]
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0809D860
sub_0809D860: @ 0x0809D860
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	bl sub_0806F69C
	ldr r1, [r6, #0x14]
	adds r0, r5, #0
	bl sub_080044EC
	cmp r0, #1
	bhi _0809D8B2
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _0809D888
	subs r0, #1
	strb r0, [r5, #0xe]
	ldr r0, [r6, #0x14]
	lsls r0, r0, #3
	str r0, [r5, #0x20]
	b _0809D8AC
_0809D888:
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	ldr r0, _0809D8C4 @ =gLinkEntity
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, r5, #0
	bl UpdateSpriteOrderAndFlip
	ldr r1, [r6]
	cmp r1, #0
	beq _0809D8AC
	adds r0, r5, #0
	bl _call_via_r1
_0809D8AC:
	movs r0, #0x6e
	bl PlaySFX
_0809D8B2:
	ldrb r4, [r5, #0xa]
	ldrb r0, [r6, #0xd]
	strb r0, [r5, #0xa]
	adds r0, r5, #0
	bl sub_08080CB4
	strb r4, [r5, #0xa]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0809D8C4: .4byte gLinkEntity

	thumb_func_start sub_0809D8C8
sub_0809D8C8: @ 0x0809D8C8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _0809D8E4 @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809D8E8
	adds r0, r5, #0
	bl sub_0800445C
	b _0809D90A
	.align 2, 0
_0809D8E4: .4byte gUnk_03003F80
_0809D8E8:
	adds r0, r5, #0
	bl sub_08017850
	cmp r0, #0
	beq _0809D90A
	ldrb r0, [r6, #0xd]
	ldrb r1, [r5, #0xb]
	movs r2, #0
	bl sub_080A7C00
	ldrh r0, [r6, #0x1c]
	cmp r0, #0
	beq _0809D906
	bl sub_0807CCC8
_0809D906:
	bl sub_0805E780
_0809D90A:
	ldrb r4, [r5, #0xa]
	ldrb r0, [r6, #0xd]
	strb r0, [r5, #0xa]
	adds r0, r5, #0
	bl sub_08080CB4
	strb r4, [r5, #0xa]
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0809D91C
sub_0809D91C: @ 0x0809D91C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x11
	movs r2, #0
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _0809D934
	adds r0, r4, #0
	bl sub_0806FAD8
_0809D934:
	movs r0, #0x72
	bl PlaySFX
	pop {r4, pc}

	thumb_func_start sub_0809D93C
sub_0809D93C: @ 0x0809D93C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldr r2, _0809D9A0 @ =gLinkEntity
	ldrb r0, [r2, #0xc]
	cmp r0, #6
	bne _0809D9A4
	ldrb r0, [r3, #0xc]
	ldrb r1, [r2, #0x14]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809D9A4
	movs r5, #0x2e
	ldrsh r0, [r2, r5]
	movs r5, #0x2e
	ldrsh r1, [r4, r5]
	subs r0, r0, r1
	movs r1, #8
	ldrsb r1, [r3, r1]
	adds r0, r0, r1
	ldrb r1, [r3, #0xa]
	adds r0, r0, r1
	lsls r1, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	ble _0809D9A4
	movs r0, #0x32
	ldrsh r2, [r2, r0]
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	movs r4, #0x1a
	ldrsh r1, [r3, r4]
	adds r0, r0, r1
	subs r2, r2, r0
	movs r0, #9
	ldrsb r0, [r3, r0]
	adds r2, r2, r0
	ldrb r1, [r3, #0xb]
	adds r0, r2, r1
	lsls r1, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	ble _0809D9A4
	movs r0, #1
	b _0809D9A6
	.align 2, 0
_0809D9A0: .4byte gLinkEntity
_0809D9A4:
	movs r0, #0
_0809D9A6:
	pop {r4, r5, pc}

	thumb_func_start sub_0809D9A8
sub_0809D9A8: @ 0x0809D9A8
	push {lr}
	ldr r2, _0809D9BC @ =gUnk_081240C0
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809D9BC: .4byte gUnk_081240C0

	thumb_func_start sub_0809D9C0
sub_0809D9C0: @ 0x0809D9C0
	push {lr}
	ldr r2, _0809D9D4 @ =gUnk_081240D8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809D9D4: .4byte gUnk_081240D8

	thumb_func_start sub_0809D9D8
sub_0809D9D8: @ 0x0809D9D8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r0, #1
	movs r2, #0
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	strb r2, [r4, #0xf]
	ldrb r1, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x19]
	strh r2, [r4, #0x24]
	movs r0, #0x18
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #1
	bl sub_080042AC
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805EB64
	cmp r0, #0
	beq _0809DA1E
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
	b _0809DA28
_0809DA1E:
	movs r0, #0x20
	bl sub_0807CD04
	bl sub_0805E780
_0809DA28:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809DA2C
sub_0809DA2C: @ 0x0809DA2C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809DA5C
	ldrb r0, [r1, #0xc]
	adds r0, #1
	strb r0, [r1, #0xc]
	ldr r0, [r1, #0x30]
	movs r2, #0x80
	lsls r2, r2, #0xd
	adds r0, r0, r2
	str r0, [r1, #0x30]
	ldr r0, [r1, #0x34]
	ldr r2, _0809DA60 @ =0xFFF00000
	adds r0, r0, r2
	str r0, [r1, #0x34]
	adds r0, r1, #0
	movs r1, #3
	bl sub_080042AC
_0809DA5C:
	pop {pc}
	.align 2, 0
_0809DA60: .4byte 0xFFF00000

	thumb_func_start sub_0809DA64
sub_0809DA64: @ 0x0809DA64
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x54]
	adds r1, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_0809E1C8
	adds r0, r5, #0
	bl sub_0809E1F0
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r0, #0x32
	ldrsh r2, [r4, r0]
	adds r0, r5, #0
	bl sub_080041DC
	lsls r0, r0, #4
	movs r2, #0x24
	ldrsh r1, [r5, r2]
	cmp r0, r1
	bge _0809DAAC
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0x10
	strb r0, [r5, #0xe]
	movs r0, #1
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	movs r1, #2
	bl sub_080042AC
_0809DAAC:
	adds r0, r5, #0
	bl sub_080042B8
	pop {r4, r5, pc}

	thumb_func_start sub_0809DAB4
sub_0809DAB4: @ 0x0809DAB4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0809DB10 @ =gRoomControls
	ldrh r1, [r5, #6]
	adds r1, #0x78
	ldrh r2, [r5, #8]
	adds r2, #0xa8
	bl sub_080045B4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0809E1C8
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0809DADE
	subs r0, #1
	strb r0, [r4, #0xe]
	ldrh r0, [r4, #0x24]
	subs r0, #0x80
	strh r0, [r4, #0x24]
_0809DADE:
	adds r0, r4, #0
	bl sub_0809E1F0
	ldrh r1, [r5, #6]
	adds r1, #0x78
	ldrh r2, [r5, #8]
	adds r2, #0xa8
	adds r0, r4, #0
	bl sub_080041DC
	lsls r0, r0, #4
	movs r2, #0x24
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bge _0809DB02
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_0809DB02:
	adds r0, r4, #0
	bl sub_0809E210
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, r5, pc}
	.align 2, 0
_0809DB10: .4byte gRoomControls

	thumb_func_start sub_0809DB14
sub_0809DB14: @ 0x0809DB14
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0809E1F0
	adds r0, r4, #0
	bl sub_080040A8
	adds r5, r0, #0
	cmp r5, #0
	bne _0809DB36
	movs r0, #0x20
	bl sub_0807CD04
	ldr r0, [r4, #0x54]
	str r5, [r0, #0x50]
	bl sub_0805E780
_0809DB36:
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0809DB40
sub_0809DB40: @ 0x0809DB40
	push {lr}
	ldr r2, _0809DB54 @ =gUnk_081240EC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809DB54: .4byte gUnk_081240EC

	thumb_func_start sub_0809DB58
sub_0809DB58: @ 0x0809DB58
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	ldrb r1, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	adds r0, r4, #0
	movs r1, #0x3c
	bl sub_080042AC
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809DB88
sub_0809DB88: @ 0x0809DB88
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x50]
	cmp r4, #0
	beq _0809DBC4
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0809DB9C
	bl sub_0805E780
_0809DB9C:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0809DBB0
	movs r3, #0x80
	lsls r3, r3, #0xc
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl PositionRelative
_0809DBB0:
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	ldrb r2, [r5, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x18]
	b _0809DBC8
_0809DBC4:
	bl sub_0805E780
_0809DBC8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0809DBCC
sub_0809DBCC: @ 0x0809DBCC
	push {lr}
	ldr r2, _0809DBE0 @ =gUnk_081240F4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809DBE0: .4byte gUnk_081240F4

	thumb_func_start sub_0809DBE4
sub_0809DBE4: @ 0x0809DBE4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0809DB58
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0x18
	strb r0, [r4, #0x15]
	adds r0, #0xe8
	strh r0, [r4, #0x24]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	movs r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0x6e
	bl PlaySFX
	pop {r4, pc}

	thumb_func_start sub_0809DC14
sub_0809DC14: @ 0x0809DC14
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #1
	bhi _0809DC5A
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0809DC3C
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	b _0809DC54
_0809DC3C:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _0809DC64 @ =gLinkEntity
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
_0809DC54:
	movs r0, #0x6e
	bl PlaySFX
_0809DC5A:
	adds r0, r4, #0
	bl sub_0809DB88
	pop {r4, pc}
	.align 2, 0
_0809DC64: .4byte gLinkEntity

	thumb_func_start sub_0809DC68
sub_0809DC68: @ 0x0809DC68
	push {lr}
	ldr r2, _0809DC7C @ =gUnk_08124100
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809DC7C: .4byte gUnk_08124100

	thumb_func_start sub_0809DC80
sub_0809DC80: @ 0x0809DC80
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r0, #1
	movs r3, #0
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #1
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x19]
	movs r2, #0
	strh r3, [r4, #0x24]
	movs r0, #0x18
	strb r0, [r4, #0x15]
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r0, r1
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x34]
	ldr r1, _0809DCFC @ =0xFFF00000
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x68
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x6a
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x6c
	strh r3, [r0]
	adds r0, #2
	strb r2, [r0]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	adds r0, r4, #0
	movs r1, #3
	bl sub_080042AC
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805EB64
	cmp r0, #0
	beq _0809DD00
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
	b _0809DD0A
	.align 2, 0
_0809DCFC: .4byte 0xFFF00000
_0809DD00:
	movs r0, #0x20
	bl sub_0807CD04
	bl sub_0805E780
_0809DD0A:
	pop {r4, pc}

	thumb_func_start sub_0809DD0C
sub_0809DD0C: @ 0x0809DD0C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809DD2A
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xa3
	lsls r0, r0, #1
	bl PlaySFX
_0809DD2A:
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809DD34
sub_0809DD34: @ 0x0809DD34
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x6e
	ldrb r0, [r1]
	adds r0, #8
	strb r0, [r1]
	subs r1, #2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bls _0809DD64
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x20
	strh r0, [r1]
	movs r0, #0xa3
	lsls r0, r0, #1
	bl PlaySFX
_0809DD64:
	adds r0, r4, #0
	bl sub_0809E238
	adds r0, r4, #0
	bl sub_0809E29C
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}

	thumb_func_start sub_0809DD78
sub_0809DD78: @ 0x0809DD78
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x6e
	ldrb r0, [r1]
	adds r0, #8
	strb r0, [r1]
	subs r1, #2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0809DDA8
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0x5f
	ands r0, r1
	strb r0, [r4, #0x18]
	b _0809DDB4
_0809DDA8:
	adds r0, r4, #0
	bl sub_0809E238
	adds r0, r4, #0
	bl sub_0809E29C
_0809DDB4:
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}

	thumb_func_start sub_0809DDBC
sub_0809DDBC: @ 0x0809DDBC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809DDD8
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _0809DDE0 @ =0x0000015B
	bl PlaySFX
_0809DDD8:
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}
	.align 2, 0
_0809DDE0: .4byte 0x0000015B

	thumb_func_start sub_0809DDE4
sub_0809DDE4: @ 0x0809DDE4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0809DE34 @ =gRoomControls
	ldrh r1, [r0, #6]
	adds r1, #0x40
	ldrh r2, [r0, #8]
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r2, r2, r0
	adds r0, r4, #0
	bl sub_080045B4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0809E1C8
	adds r0, r4, #0
	bl sub_0809E1F0
	adds r0, r4, #0
	bl sub_0809E210
	adds r0, r4, #0
	bl sub_080040A8
	adds r5, r0, #0
	cmp r5, #0
	bne _0809DE2A
	movs r0, #0x20
	bl sub_0807CD04
	ldr r0, [r4, #0x54]
	str r5, [r0, #0x50]
	bl sub_0805E780
_0809DE2A:
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, r5, pc}
	.align 2, 0
_0809DE34: .4byte gRoomControls

	thumb_func_start sub_0809DE38
sub_0809DE38: @ 0x0809DE38
	push {lr}
	ldr r2, _0809DE4C @ =gUnk_08124118
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809DE4C: .4byte gUnk_08124118

	thumb_func_start sub_0809DE50
sub_0809DE50: @ 0x0809DE50
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r0, #1
	movs r2, #0
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	movs r0, #0xa
	strb r0, [r4, #0xe]
	strb r2, [r4, #0xf]
	ldrb r1, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x19]
	strh r2, [r4, #0x24]
	ldr r1, _0809DEEC @ =gUnk_0812412D
	ldrb r0, [r4, #0xb]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0xb]
	lsls r1, r1, #2
	ldr r0, _0809DEF0 @ =gUnk_08124132
	adds r1, r1, r0
	ldr r2, _0809DEF4 @ =gRoomControls
	ldrh r0, [r1]
	ldrh r3, [r2, #6]
	adds r0, r0, r3
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #2]
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	adds r0, #0x40
	strh r0, [r4, #0x32]
	ldr r0, _0809DEF8 @ =0x0000FFC0
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	ldr r1, _0809DEFC @ =gUnk_08124128
	ldrb r0, [r4, #0xb]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_080042AC
	movs r0, #0x97
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r5, r0, #0
	cmp r5, #0
	beq _0809DEE8
	str r4, [r5, #0x50]
	str r5, [r4, #0x54]
	movs r3, #0x80
	lsls r3, r3, #0xc
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl PositionRelative
	movs r1, #0x10
	ldrb r0, [r4, #0x15]
	cmp r0, #0x18
	bne _0809DEE2
	rsbs r1, r1, #0
_0809DEE2:
	ldrh r0, [r5, #0x2e]
	adds r0, r0, r1
	strh r0, [r5, #0x2e]
_0809DEE8:
	pop {r4, r5, pc}
	.align 2, 0
_0809DEEC: .4byte gUnk_0812412D
_0809DEF0: .4byte gUnk_08124132
_0809DEF4: .4byte gRoomControls
_0809DEF8: .4byte 0x0000FFC0
_0809DEFC: .4byte gUnk_08124128

	thumb_func_start sub_0809DF00
sub_0809DF00: @ 0x0809DF00
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xb]
	bl sub_0809E2C4
	cmp r0, #1
	beq _0809DF16
	cmp r0, #2
	beq _0809DF64
	movs r0, #0xa
	b _0809DF96
_0809DF16:
	ldrb r0, [r4, #0xc]
	adds r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0xff
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	adds r1, #2
	adds r0, r4, #0
	bl sub_080042AC
	ldr r0, _0809DF60 @ =0x00000123
	bl PlaySFX
	ldr r5, [r4, #0x54]
	cmp r5, #0
	beq _0809DF98
	ldrb r1, [r4, #0xb]
	adds r1, #2
	movs r0, #0x96
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _0809DF52
	adds r0, r5, #0
	bl sub_0806FA24
_0809DF52:
	adds r0, r5, #0
	bl sub_0805E79C
	movs r0, #0
	str r0, [r4, #0x54]
	b _0809DF98
	.align 2, 0
_0809DF60: .4byte 0x00000123
_0809DF64:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _0809DF94
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	adds r1, #2
	adds r0, r4, #0
	bl sub_080042AC
	ldr r0, _0809DF8C @ =0x00000123
	bl PlaySFX
	ldr r0, _0809DF90 @ =0x000001F3
	bl PlaySFX
	b _0809DF98
	.align 2, 0
_0809DF8C: .4byte 0x00000123
_0809DF90: .4byte 0x000001F3
_0809DF94:
	subs r0, #1
_0809DF96:
	strb r0, [r4, #0xe]
_0809DF98:
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, r5, pc}

	thumb_func_start sub_0809DFA0
sub_0809DFA0: @ 0x0809DFA0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _0809DFD6
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	subs r1, r1, r0
	ldrb r0, [r4, #0x15]
	lsls r0, r0, #0xb
	eors r1, r0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r1, r0
	cmp r1, #0
	beq _0809DFD6
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xf]
	movs r0, #0x81
	lsls r0, r0, #1
	bl PlaySFX
_0809DFD6:
	adds r0, r4, #0
	bl sub_0809DFE0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809DFE0
sub_0809DFE0: @ 0x0809DFE0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080040A8
	cmp r0, #0
	bne _0809E028
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _0809DFF4
	str r0, [r1, #0x50]
_0809DFF4:
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0809E008
	bl sub_0805E780
	b _0809E034
_0809E008:
	strb r0, [r4, #0xc]
	bl sub_08000E50
	ldr r2, _0809E024 @ =gUnk_08124146
	movs r1, #1
	ands r1, r0
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #0xb]
	b _0809E034
	.align 2, 0
_0809E024: .4byte gUnk_08124146
_0809E028:
	adds r0, r4, #0
	bl sub_0809E1F0
	adds r0, r4, #0
	bl sub_080042B8
_0809E034:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809E038
sub_0809E038: @ 0x0809E038
	push {lr}
	ldr r2, _0809E04C @ =gUnk_08124150
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809E04C: .4byte gUnk_08124150

	thumb_func_start sub_0809E050
sub_0809E050: @ 0x0809E050
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	ldrb r1, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x19]
	ldr r0, _0809E084 @ =0x0000FFF0
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_0807DD64
	adds r0, r4, #0
	movs r1, #1
	bl sub_080042AC
	pop {r4, pc}
	.align 2, 0
_0809E084: .4byte 0x0000FFF0

	thumb_func_start sub_0809E088
sub_0809E088: @ 0x0809E088
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}

	thumb_func_start sub_0809E0A0
sub_0809E0A0: @ 0x0809E0A0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x97
	movs r1, #5
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0809E0C8
	str r5, [r4, #0x50]
	str r4, [r5, #0x54]
	movs r0, #0
	strb r0, [r5, #0xf]
	ldr r0, _0809E0CC @ =gLinkEntity
	adds r1, r4, #0
	bl sub_0806FA24
	ldr r0, _0809E0D0 @ =0x0000FFF8
	strh r0, [r4, #0x36]
_0809E0C8:
	pop {r4, r5, pc}
	.align 2, 0
_0809E0CC: .4byte gLinkEntity
_0809E0D0: .4byte 0x0000FFF8

	thumb_func_start sub_0809E0D4
sub_0809E0D4: @ 0x0809E0D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	ldrb r2, [r6, #0x18]
	cmp r2, #0
	bne _0809E130
	ldr r1, [r5, #0x54]
	cmp r1, #0
	beq _0809E0FC
	ldrb r0, [r1, #0xc]
	cmp r0, #1
	bhi _0809E0FE
	ldr r0, _0809E0F8 @ =gUnk_02033280
	strb r2, [r0, #6]
	b _0809E1BC
	.align 2, 0
_0809E0F8: .4byte gUnk_02033280
_0809E0FC:
	ldr r1, _0809E124 @ =gLinkEntity
_0809E0FE:
	ldrb r0, [r6, #0x18]
	adds r0, #1
	movs r4, #0
	strb r0, [r6, #0x18]
	movs r0, #0x2e
	ldrsh r2, [r1, r0]
	movs r0, #0x32
	ldrsh r3, [r1, r0]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0807DEDC
	ldr r0, _0809E128 @ =0x00000123
	bl PlaySFX
	ldr r0, _0809E12C @ =gUnk_02033280
	strb r4, [r0, #6]
	b _0809E1BC
	.align 2, 0
_0809E124: .4byte gLinkEntity
_0809E128: .4byte 0x00000123
_0809E12C: .4byte gUnk_02033280
_0809E130:
	ldr r1, [r5, #0x54]
	cmp r1, #0
	beq _0809E142
	movs r0, #0x2e
	ldrsh r2, [r1, r0]
	mov r8, r2
	movs r2, #0x32
	ldrsh r7, [r1, r2]
	b _0809E14C
_0809E142:
	movs r1, #0x1e
	ldrsh r0, [r6, r1]
	mov r8, r0
	movs r2, #0x22
	ldrsh r7, [r6, r2]
_0809E14C:
	ldrb r0, [r6, #0x19]
	subs r0, #1
	strb r0, [r6, #0x19]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809E170
	movs r0, #8
	strb r0, [r6, #0x19]
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	mov r2, r8
	subs r0, r2, r0
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	subs r1, r7, r1
	bl sub_080045DA
	strb r0, [r5, #0x15]
_0809E170:
	movs r0, #0x2e
	ldrsh r4, [r5, r0]
	mov r1, r8
	subs r4, r4, r1
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	subs r6, r0, r7
	movs r0, #0x24
	ldrsh r1, [r5, r0]
	ldrb r2, [r5, #0x15]
	adds r0, r5, #0
	bl sub_0806F62C
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	mov r2, r8
	subs r0, r0, r2
	muls r4, r0, r4
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	subs r0, r0, r7
	muls r6, r0, r6
	cmp r4, #0
	bgt _0809E1B6
	cmp r6, #0
	bgt _0809E1B6
	strh r2, [r5, #0x2e]
	strh r7, [r5, #0x32]
	movs r0, #1
	strb r0, [r5, #0xf]
	movs r0, #0x81
	lsls r0, r0, #1
	bl PlaySFX
	b _0809E1BC
_0809E1B6:
	ldr r1, _0809E1C4 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_0809E1BC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809E1C4: .4byte gUnk_02033280

	thumb_func_start sub_0809E1C8
sub_0809E1C8: @ 0x0809E1C8
	push {lr}
	adds r3, r0, #0
	adds r1, #0x20
	ldrb r2, [r3, #0x15]
	subs r1, r1, r2
	movs r0, #0x1f
	ands r1, r0
	cmp r1, #0
	beq _0809E1E6
	cmp r1, #0xf
	bhi _0809E1E2
	adds r0, r2, #1
	b _0809E1E4
_0809E1E2:
	subs r0, r2, #1
_0809E1E4:
	strb r0, [r3, #0x15]
_0809E1E6:
	ldrb r1, [r3, #0x15]
	movs r0, #0x1f
	ands r0, r1
	strb r0, [r3, #0x15]
	pop {pc}

	thumb_func_start sub_0809E1F0
sub_0809E1F0: @ 0x0809E1F0
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x24]
	adds r0, #0x40
	strh r0, [r1, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #3
	cmp r0, r2
	ble _0809E208
	strh r2, [r1, #0x24]
_0809E208:
	adds r0, r1, #0
	bl sub_0806F69C
	pop {pc}

	thumb_func_start sub_0809E210
sub_0809E210: @ 0x0809E210
	push {r4, lr}
	adds r1, r0, #0
	ldr r4, _0809E230 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5B0
	movs r1, #0xfe
	ands r0, r1
	strb r0, [r4, #0x14]
	ldr r1, _0809E234 @ =gUnk_03003F80
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #8]
	pop {r4, pc}
	.align 2, 0
_0809E230: .4byte gLinkEntity
_0809E234: .4byte gUnk_03003F80

	thumb_func_start sub_0809E238
sub_0809E238: @ 0x0809E238
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r6, _0809E298 @ =gUnk_080C9160
	movs r0, #0x6e
	adds r0, r0, r7
	mov r8, r0
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r5, r7, #0
	adds r5, #0x6c
	movs r2, #0
	ldrsh r1, [r5, r2]
	bl sub_0806F9EC
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r1, r8
	ldrb r0, [r1]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r2, #0
	ldrsh r1, [r5, r2]
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x68
	ldrh r1, [r1]
	adds r1, r1, r4
	strh r1, [r7, #0x2e]
	adds r1, r7, #0
	adds r1, #0x6a
	ldrh r1, [r1]
	subs r1, r1, r0
	strh r1, [r7, #0x32]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809E298: .4byte gUnk_080C9160

	thumb_func_start sub_0809E29C
sub_0809E29C: @ 0x0809E29C
	push {lr}
	adds r2, r0, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	adds r0, #0x40
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809E2B8
	ldrb r1, [r2, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _0809E2BE
_0809E2B8:
	ldrb r0, [r2, #0x18]
	movs r1, #0x40
	orrs r0, r1
_0809E2BE:
	strb r0, [r2, #0x18]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0809E2C4
sub_0809E2C4: @ 0x0809E2C4
	push {r4, r5, r6, r7, lr}
	lsls r1, r1, #2
	ldr r0, _0809E328 @ =gUnk_08124178
	adds r1, r1, r0
	ldr r3, _0809E32C @ =gLinkEntity
	movs r0, #0x2e
	ldrsh r5, [r3, r0]
	ldr r4, _0809E330 @ =gRoomControls
	ldrh r0, [r4, #6]
	ldrh r2, [r1]
	adds r0, r0, r2
	subs r6, r5, r0
	movs r0, #0x32
	ldrsh r2, [r3, r0]
	ldrh r0, [r4, #8]
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	subs r5, r2, r0
	ldr r4, _0809E334 @ =gUnk_08124158
	movs r2, #0
	adds r7, r3, #0
_0809E2EE:
	movs r1, #0
	ldrsh r0, [r4, r1]
	subs r0, r6, r0
	ldrb r1, [r4, #4]
	adds r0, r0, r1
	lsls r1, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	ble _0809E33C
	movs r1, #2
	ldrsh r0, [r4, r1]
	subs r0, r5, r0
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	lsls r1, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	ble _0809E33C
	ldrb r0, [r4, #6]
	ldrb r7, [r7, #0x14]
	cmp r0, r7
	bne _0809E338
	ldrb r0, [r3, #0xc]
	cmp r0, #6
	bne _0809E338
	movs r0, #1
	b _0809E346
	.align 2, 0
_0809E328: .4byte gUnk_08124178
_0809E32C: .4byte gLinkEntity
_0809E330: .4byte gRoomControls
_0809E334: .4byte gUnk_08124158
_0809E338:
	movs r0, #2
	b _0809E346
_0809E33C:
	adds r2, #1
	adds r4, #8
	cmp r2, #3
	ble _0809E2EE
	movs r0, #0
_0809E346:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0809E348
sub_0809E348: @ 0x0809E348
	push {lr}
	ldr r2, _0809E35C @ =gUnk_0812418C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809E35C: .4byte gUnk_0812418C

	thumb_func_start sub_0809E360
sub_0809E360: @ 0x0809E360
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #8
	bls _0809E372
	movs r0, #8
	strb r0, [r4, #0xe]
_0809E372:
	ldrb r2, [r4, #0xe]
	movs r0, #0x48
	subs r0, r0, r2
	ldr r1, _0809E3E0 @ =gUnk_03003DBC
	ldrb r1, [r1]
	cmp r0, r1
	ble _0809E3D8
	movs r5, #0
	adds r7, r4, #0
	adds r7, #0x7e
	movs r0, #0x76
	adds r0, r0, r4
	mov r8, r0
	cmp r5, r2
	bhs _0809E3A6
	movs r6, #0xe
_0809E392:
	movs r0, #0x17
	bl sub_080A7EE0
	strb r6, [r0, #0xe]
	str r4, [r0, #0x50]
	adds r6, #0xc
	adds r5, #1
	ldrb r2, [r4, #0xe]
	cmp r5, r2
	blo _0809E392
_0809E3A6:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r7]
	lsls r1, r0, #8
	mov r2, r8
	strh r1, [r2]
	lsls r0, r0, #6
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0805E3A0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0809E3D8
	bl sub_0804B128
	str r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x54
	adds r2, r4, #0
	adds r2, #0x74
	adds r0, r4, #0
	bl sub_080A2CC0
_0809E3D8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809E3E0: .4byte gUnk_03003DBC

	thumb_func_start sub_0809E3E4
sub_0809E3E4: @ 0x0809E3E4
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x76
	ldrb r0, [r4, #0xb]
	ldrh r1, [r2]
	adds r1, r1, r0
	strh r1, [r2]
	lsrs r1, r1, #2
	strb r1, [r4, #0x14]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0809E428
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0809E40E
	adds r0, r4, #0
	bl sub_0806F69C
_0809E40E:
	adds r2, r4, #0
	adds r2, #0x74
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0809E428
	adds r1, r4, #0
	adds r1, #0x54
	adds r0, r4, #0
	bl sub_080A2CC0
_0809E428:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809E42C
sub_0809E42C: @ 0x0809E42C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	ldr r6, [r4, #0x50]
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _0809E444
	bl sub_0805E780
_0809E444:
	ldrb r0, [r4, #0xc]
	movs r1, #0x76
	adds r1, r1, r4
	mov r8, r1
	adds r7, r4, #0
	adds r7, #0x62
	movs r2, #0x74
	adds r2, r2, r4
	mov sb, r2
	adds r5, r4, #0
	adds r5, #0x63
	movs r1, #0x75
	adds r1, r1, r4
	mov sl, r1
	cmp r0, #0
	bne _0809E482
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r6, #0x14]
	mov r2, r8
	strb r0, [r2]
	ldrb r0, [r7]
	mov r1, sb
	strb r0, [r1]
	ldrb r0, [r5]
	mov r2, sl
	strb r0, [r2]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
_0809E482:
	ldrb r0, [r6, #0x14]
	mov r1, r8
	ldrb r1, [r1]
	cmp r0, r1
	beq _0809E490
	bl sub_0805E780
_0809E490:
	ldrb r1, [r6, #0x18]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	ldrb r2, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0806FA6C
	mov r2, sb
	ldrb r0, [r2]
	ldrb r1, [r7]
	adds r0, r0, r1
	strb r0, [r7]
	mov r2, sl
	ldrb r0, [r2]
	ldrb r1, [r5]
	adds r0, r0, r1
	strb r0, [r5]
	ldrb r0, [r4, #0x14]
	cmp r0, #2
	beq _0809E4D0
	ldrh r0, [r4, #0x32]
	adds r0, #1
	strh r0, [r4, #0x32]
	ldrb r0, [r5]
	subs r0, #1
	b _0809E4DA
_0809E4D0:
	ldrh r0, [r4, #0x32]
	subs r0, #1
	strh r0, [r4, #0x32]
	ldrb r0, [r5]
	adds r0, #1
_0809E4DA:
	strb r0, [r5]
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809E4F4
	bl sub_0805E780
_0809E4F4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0809E500
sub_0809E500: @ 0x0809E500
	push {lr}
	ldr r2, _0809E514 @ =gUnk_081242C8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809E514: .4byte gUnk_081242C8

	thumb_func_start sub_0809E518
sub_0809E518: @ 0x0809E518
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #1
	strb r1, [r6, #0xc]
	ldrb r2, [r6, #0xa]
	adds r0, r2, #0
	cmp r0, #0xff
	bne _0809E52E
	ldrb r0, [r6, #0xb]
	strb r0, [r6, #0x1e]
	b _0809E5CA
_0809E52E:
	ands r1, r2
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r5, r0, #0x1f
	movs r0, #4
	ands r5, r0
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0809E5A4
	ldr r0, _0809E5A0 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x44
	bhi _0809E5B4
	strb r5, [r6, #0x1e]
	adds r5, #1
	movs r0, #0x9a
	movs r1, #0xff
	adds r2, r5, #0
	bl CreateObject
	adds r4, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0806FA24
	adds r5, #1
	movs r0, #0x9a
	movs r1, #0xff
	adds r2, r5, #0
	bl CreateObject
	adds r4, r0, #0
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #0xff
	strb r0, [r1]
	adds r5, #1
	movs r0, #0x9a
	movs r1, #0xff
	adds r2, r5, #0
	bl CreateObject
	adds r4, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0806FA24
	b _0809E5C4
	.align 2, 0
_0809E5A0: .4byte gUnk_03003DBC
_0809E5A4:
	adds r2, r5, #1
	movs r0, #0x9a
	movs r1, #0xff
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	bne _0809E5BA
_0809E5B4:
	bl sub_0805E780
	b _0809E5C4
_0809E5BA:
	strb r5, [r6, #0x1e]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0806FA24
_0809E5C4:
	adds r0, r6, #0
	bl sub_0809E5F0
_0809E5CA:
	ldrb r1, [r6, #0x1e]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0809E5E8
	ldrb r0, [r6, #0x19]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r6, #0x19]
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
_0809E5E8:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start nullsub_125
nullsub_125: @ 0x0809E5EC
	bx lr
	.align 2, 0

	thumb_func_start sub_0809E5F0
sub_0809E5F0: @ 0x0809E5F0
	push {r4, r5, lr}
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	ldr r4, _0809E628 @ =gRoomControls
	ldrh r2, [r4, #6]
	subs r1, r1, r2
	asrs r5, r1, #4
	movs r3, #0x3f
	ands r5, r3
	movs r2, #0x32
	ldrsh r1, [r0, r2]
	ldrh r2, [r4, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r5, r1
	adds r1, r0, #0
	adds r1, #0x80
	strh r5, [r1]
	ldrb r0, [r0, #0xa]
	cmp r0, #1
	beq _0809E708
	cmp r0, #1
	bgt _0809E62C
	cmp r0, #0
	beq _0809E64E
	b _0809E792
	.align 2, 0
_0809E628: .4byte gRoomControls
_0809E62C:
	cmp r0, #2
	beq _0809E636
	cmp r0, #3
	beq _0809E6F0
	b _0809E792
_0809E636:
	ldr r0, _0809E6DC @ =0x00004022
	adds r1, r5, #0
	subs r1, #0x3d
	movs r2, #1
	bl sub_0800015E
	ldr r0, _0809E6E0 @ =0x0000406D
	adds r1, r5, #0
	subs r1, #0x3c
	movs r2, #1
	bl sub_0800015E
_0809E64E:
	ldr r0, _0809E6E4 @ =0x0000406C
	adds r1, r5, #0
	subs r1, #0x42
	movs r2, #1
	bl sub_0800015E
	ldr r4, _0809E6DC @ =0x00004022
	adds r1, r5, #0
	subs r1, #0x41
	adds r0, r4, #0
	movs r2, #1
	bl sub_0800015E
	adds r1, r5, #0
	subs r1, #0x40
	adds r0, r4, #0
	movs r2, #1
	bl sub_0800015E
	adds r1, r5, #0
	subs r1, #0x3f
	adds r0, r4, #0
	movs r2, #1
	bl sub_0800015E
	subs r1, r5, #2
	adds r0, r4, #0
	movs r2, #1
	bl sub_0800015E
	subs r1, r5, #1
	adds r0, r4, #0
	movs r2, #1
	bl sub_0800015E
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl sub_0800015E
	adds r1, r5, #1
	adds r0, r4, #0
	movs r2, #1
	bl sub_0800015E
	ldr r0, _0809E6E8 @ =0x0000406E
	adds r1, r5, #0
	adds r1, #0x3e
	movs r2, #1
	bl sub_0800015E
	adds r1, r5, #0
	adds r1, #0x3f
	adds r0, r4, #0
	movs r2, #1
	bl sub_0800015E
	adds r1, r5, #0
	adds r1, #0x40
	adds r0, r4, #0
	movs r2, #1
	bl sub_0800015E
	ldr r0, _0809E6EC @ =0x0000406F
	adds r1, r5, #0
	adds r1, #0x41
	movs r2, #1
	bl sub_0800015E
	b _0809E792
	.align 2, 0
_0809E6DC: .4byte 0x00004022
_0809E6E0: .4byte 0x0000406D
_0809E6E4: .4byte 0x0000406C
_0809E6E8: .4byte 0x0000406E
_0809E6EC: .4byte 0x0000406F
_0809E6F0:
	ldr r0, _0809E794 @ =0x00004022
	adds r1, r5, #0
	subs r1, #0x44
	movs r2, #1
	bl sub_0800015E
	ldr r0, _0809E798 @ =0x0000406C
	adds r1, r5, #0
	subs r1, #0x45
	movs r2, #1
	bl sub_0800015E
_0809E708:
	ldr r4, _0809E794 @ =0x00004022
	adds r1, r5, #0
	subs r1, #0x42
	adds r0, r4, #0
	movs r2, #1
	bl sub_0800015E
	adds r1, r5, #0
	subs r1, #0x41
	adds r0, r4, #0
	movs r2, #1
	bl sub_0800015E
	adds r1, r5, #0
	subs r1, #0x40
	adds r0, r4, #0
	movs r2, #1
	bl sub_0800015E
	ldr r0, _0809E79C @ =0x0000406D
	adds r1, r5, #0
	subs r1, #0x3f
	movs r2, #1
	bl sub_0800015E
	subs r1, r5, #2
	adds r0, r4, #0
	movs r2, #1
	bl sub_0800015E
	subs r1, r5, #1
	adds r0, r4, #0
	movs r2, #1
	bl sub_0800015E
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl sub_0800015E
	adds r1, r5, #1
	adds r0, r4, #0
	movs r2, #1
	bl sub_0800015E
	ldr r0, _0809E7A0 @ =0x0000406E
	adds r1, r5, #0
	adds r1, #0x3e
	movs r2, #1
	bl sub_0800015E
	adds r1, r5, #0
	adds r1, #0x3f
	adds r0, r4, #0
	movs r2, #1
	bl sub_0800015E
	adds r1, r5, #0
	adds r1, #0x40
	adds r0, r4, #0
	movs r2, #1
	bl sub_0800015E
	ldr r0, _0809E7A4 @ =0x0000406F
	adds r1, r5, #0
	adds r1, #0x41
	movs r2, #1
	bl sub_0800015E
_0809E792:
	pop {r4, r5, pc}
	.align 2, 0
_0809E794: .4byte 0x00004022
_0809E798: .4byte 0x0000406C
_0809E79C: .4byte 0x0000406D
_0809E7A0: .4byte 0x0000406E
_0809E7A4: .4byte 0x0000406F

	thumb_func_start sub_0809E7A8
sub_0809E7A8: @ 0x0809E7A8
	push {lr}
	ldr r2, _0809E7BC @ =gUnk_081242D0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809E7BC: .4byte gUnk_081242D0

	thumb_func_start sub_0809E7C0
sub_0809E7C0: @ 0x0809E7C0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xb]
	cmp r0, #0xff
	beq _0809E7D4
	adds r0, r4, #0
	bl sub_0809E7FC
_0809E7D4:
	ldrb r1, [r4, #0xa]
	adds r0, r4, #0
	bl sub_08004260
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809E7E0
sub_0809E7E0: @ 0x0809E7E0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809E7F8
	bl sub_0805E780
_0809E7F8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809E7FC
sub_0809E7FC: @ 0x0809E7FC
	push {lr}
	adds r1, r0, #0
	ldrb r3, [r1, #0xb]
	lsls r3, r3, #1
	ldr r0, _0809E820 @ =gUnk_081242D8
	adds r3, r3, r0
	ldr r0, [r1, #0x50]
	movs r2, #0
	ldrsb r2, [r3, r2]
	lsls r2, r2, #0x10
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x10
	bl PositionRelative
	pop {pc}
	.align 2, 0
_0809E820: .4byte gUnk_081242D8

	thumb_func_start sub_0809E824
sub_0809E824: @ 0x0809E824
	push {lr}
	ldr r2, _0809E838 @ =gUnk_08124354
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809E838: .4byte gUnk_08124354

	thumb_func_start sub_0809E83C
sub_0809E83C: @ 0x0809E83C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	beq _0809E856
	adds r0, r4, #0
	bl sub_0809E96C
	bl sub_0805E780
_0809E856:
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809E86C
sub_0809E86C: @ 0x0809E86C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0809E8B4 @ =gLinkEntity
	movs r2, #0x30
	movs r3, #0x30
	bl sub_0800419C
	cmp r0, #0
	beq _0809E89A
	movs r0, #0x14
	bl GetProgressFlag
	cmp r0, #0
	beq _0809E89A
	ldr r0, _0809E8B8 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0809E89A
	adds r0, r4, #0
	bl sub_080A2B80
_0809E89A:
	bl sub_0809E9A0
	cmp r0, #0x54
	bne _0809E8B0
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0xf
	strb r0, [r4, #0xe]
	movs r0, #1
	bl sub_08078A90
_0809E8B0:
	pop {r4, pc}
	.align 2, 0
_0809E8B4: .4byte gLinkEntity
_0809E8B8: .4byte gUnk_030010A0

	thumb_func_start sub_0809E8BC
sub_0809E8BC: @ 0x0809E8BC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809E8E8
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0x40
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0809E96C
	adds r0, r4, #0
	bl sub_0809E918
_0809E8E8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809E8EC
sub_0809E8EC: @ 0x0809E8EC
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809E916
	adds r0, r1, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CCC8
	movs r0, #0
	bl sub_08078A90
	movs r0, #0x73
	bl PlaySFX
	bl sub_0805E780
_0809E916:
	pop {pc}

	thumb_func_start sub_0809E918
sub_0809E918: @ 0x0809E918
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, _0809E964 @ =gUnk_08124364
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r1, _0809E968 @ =0xFFFFFC18
	cmp r0, r1
	beq _0809E962
	adds r6, r1, #0
_0809E92A:
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	bl CreateFX
	adds r2, r0, #0
	cmp r2, #0
	beq _0809E958
	ldrh r0, [r4]
	ldrh r1, [r2, #0x2e]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
	ldrh r0, [r4, #2]
	ldrh r1, [r2, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r2, #0
	bl UpdateSpriteOrderAndFlip
_0809E958:
	adds r4, #4
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, r6
	bne _0809E92A
_0809E962:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0809E964: .4byte gUnk_08124364
_0809E968: .4byte 0xFFFFFC18

	thumb_func_start sub_0809E96C
sub_0809E96C: @ 0x0809E96C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _0809E99C @ =gRoomControls
	ldrh r1, [r2, #6]
	adds r1, #0x20
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	ldrh r2, [r2, #8]
	adds r2, #8
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	bl sub_08018C1C
	pop {r4, r5, pc}
	.align 2, 0
_0809E99C: .4byte gRoomControls

	thumb_func_start sub_0809E9A0
sub_0809E9A0: @ 0x0809E9A0
	push {r4, r5, r6, lr}
	ldr r5, _0809E9B0 @ =gLinkEntity
	ldrb r2, [r5, #0xc]
	cmp r2, #6
	beq _0809E9B4
	movs r0, #0
	b _0809E9F0
	.align 2, 0
_0809E9B0: .4byte gLinkEntity
_0809E9B4:
	ldrb r0, [r5, #0x14]
	ands r2, r0
	lsls r2, r2, #1
	ldr r0, _0809E9F4 @ =gUnk_080B4468
	adds r2, r2, r0
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r4, _0809E9F8 @ =gRoomControls
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r6, #0x32
	ldrsh r1, [r5, r6]
	movs r5, #2
	ldrsh r2, [r2, r5]
	adds r1, r1, r2
	ldrh r2, [r4, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	movs r1, #1
	bl sub_080002C8
_0809E9F0:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0809E9F4: .4byte gUnk_080B4468
_0809E9F8: .4byte gRoomControls

	thumb_func_start sub_0809E9FC
sub_0809E9FC: @ 0x0809E9FC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0809EA18 @ =gUnk_081243B4
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0809EB30
	pop {r4, pc}
	.align 2, 0
_0809EA18: .4byte gUnk_081243B4

	thumb_func_start sub_0809EA1C
sub_0809EA1C: @ 0x0809EA1C
	push {lr}
	ldr r2, _0809EA30 @ =gUnk_081243BC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809EA30: .4byte gUnk_081243BC

	thumb_func_start sub_0809EA34
sub_0809EA34: @ 0x0809EA34
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	strb r2, [r4, #0x1e]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x48
	strb r0, [r1]
	subs r1, #1
	movs r0, #0x28
	strb r0, [r1]
	subs r1, #4
	movs r0, #0xa
	strb r0, [r1]
	ldr r0, _0809EA7C @ =gUnk_080FD150
	str r0, [r4, #0x48]
	adds r0, r4, #0
	bl sub_0809EAD8
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	adds r0, r4, #0
	bl sub_0809EABC
	pop {r4, pc}
	.align 2, 0
_0809EA7C: .4byte gUnk_080FD150

	thumb_func_start sub_0809EA80
sub_0809EA80: @ 0x0809EA80
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809EAB4
	adds r4, r5, #0
	adds r4, #0x86
	ldrh r0, [r4]
	bl sub_0807CBE4
	cmp r0, #0
	beq _0809EAA6
	ldrh r0, [r4]
	bl sub_0807CD48
	b _0809EAAC
_0809EAA6:
	ldrh r0, [r4]
	bl sub_0807CCC8
_0809EAAC:
	movs r0, #0x88
	lsls r0, r0, #1
	bl sub_08004488
_0809EAB4:
	adds r0, r5, #0
	bl sub_0809EABC
	pop {r4, r5, pc}

	thumb_func_start sub_0809EABC
sub_0809EABC: @ 0x0809EABC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	ldrb r0, [r4, #0x1e]
	cmp r0, r1
	beq _0809EAD6
	strb r1, [r4, #0x1e]
_0809EAD6:
	pop {r4, pc}

	thumb_func_start sub_0809EAD8
sub_0809EAD8: @ 0x0809EAD8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _0809EAF8
	bl sub_0804B128
	str r0, [r5, #0x54]
	adds r1, r5, #0
	adds r1, #0x54
	adds r2, r5, #0
	adds r2, #0x74
	adds r0, r5, #0
	bl sub_080A2CC0
	b _0809EB24
_0809EAF8:
	ldr r0, _0809EB28 @ =0x00004050
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _0809EB2C @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
_0809EB24:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0809EB28: .4byte 0x00004050
_0809EB2C: .4byte gRoomControls

	thumb_func_start sub_0809EB30
sub_0809EB30: @ 0x0809EB30
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0809EB64
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0809EB4A
	adds r0, r4, #0
	bl sub_0806F69C
_0809EB4A:
	adds r2, r4, #0
	adds r2, #0x74
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0809EB64
	adds r1, r4, #0
	adds r1, #0x54
	adds r0, r4, #0
	bl sub_080A2CC0
_0809EB64:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809EB68
sub_0809EB68: @ 0x0809EB68
	push {lr}
	ldr r2, _0809EB7C @ =gUnk_081243C4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809EB7C: .4byte gUnk_081243C4

	thumb_func_start sub_0809EB80
sub_0809EB80: @ 0x0809EB80
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r5, #3
	strb r5, [r4, #0x1e]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x48
	strb r0, [r1]
	subs r1, #1
	movs r0, #0x28
	strb r0, [r1]
	subs r1, #4
	movs r0, #0xa
	strb r0, [r1]
	ldr r0, _0809EBD4 @ =gUnk_080FD150
	str r0, [r4, #0x48]
	adds r0, r4, #0
	bl sub_0809EAD8
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	adds r0, r4, #0
	adds r0, #0x84
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	beq _0809EBD2
	strb r5, [r4, #0xc]
	movs r0, #2
	strb r0, [r4, #0x1e]
_0809EBD2:
	pop {r4, r5, pc}
	.align 2, 0
_0809EBD4: .4byte gUnk_080FD150

	thumb_func_start sub_0809EBD8
sub_0809EBD8: @ 0x0809EBD8
	push {lr}
	adds r2, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809EC04
	movs r1, #2
	strb r1, [r2, #0xc]
	movs r0, #0x10
	strb r0, [r2, #0xe]
	strb r1, [r2, #0x1e]
	adds r0, r2, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CCC8
	movs r0, #0x88
	lsls r0, r0, #1
	bl sub_08004488
_0809EC04:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0809EC08
sub_0809EC08: @ 0x0809EC08
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x84
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	beq _0809EC1E
	movs r0, #3
	strb r0, [r4, #0xc]
	b _0809EC44
_0809EC1E:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809EC44
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #3
	strb r0, [r4, #0x1e]
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CD48
	movs r0, #0x88
	lsls r0, r0, #1
	bl sub_08004488
_0809EC44:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_126
nullsub_126: @ 0x0809EC48
	bx lr
	.align 2, 0

	thumb_func_start sub_0809EC4C
sub_0809EC4C: @ 0x0809EC4C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r3, [r6, #0xc]
	cmp r3, #0
	bne _0809ED14
	movs r4, #1
	strb r4, [r6, #0xc]
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	bne _0809ED04
	ldrb r0, [r6, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r6, #0x10]
	strb r4, [r6, #0x1e]
	adds r5, r6, #0
	adds r5, #0x38
	strb r4, [r5]
	adds r1, r6, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x48
	strb r0, [r1]
	subs r1, #1
	movs r0, #0x7a
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x3b
	strb r4, [r0]
	ldr r0, _0809ECF4 @ =gUnk_080FD168
	str r0, [r6, #0x48]
	movs r0, #0x2e
	ldrsh r4, [r6, r0]
	ldr r1, _0809ECF8 @ =gRoomControls
	ldrh r0, [r1, #6]
	subs r4, r4, r0
	asrs r4, r4, #4
	movs r2, #0x3f
	ands r4, r2
	movs r3, #0x32
	ldrsh r0, [r6, r3]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	ldr r0, _0809ECFC @ =0x00004066
	subs r1, r4, #1
	ldrb r2, [r5]
	bl sub_0800015E
	ldr r0, _0809ED00 @ =0x00004065
	ldrb r2, [r5]
	adds r1, r4, #0
	bl sub_0800015E
	adds r0, r6, #0
	bl UpdateSpriteOrderAndFlip
	movs r0, #0x9e
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _0809ED14
	str r1, [r6, #0x54]
	adds r0, r6, #0
	bl sub_0806FA24
	b _0809ED14
	.align 2, 0
_0809ECF4: .4byte gUnk_080FD168
_0809ECF8: .4byte gRoomControls
_0809ECFC: .4byte 0x00004066
_0809ED00: .4byte 0x00004065
_0809ED04:
	strb r3, [r6, #0x1e]
	adds r1, r6, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r6, #0
	bl UpdateSpriteOrderAndFlip
_0809ED14:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0809ED18
sub_0809ED18: @ 0x0809ED18
	push {lr}
	ldr r2, _0809ED2C @ =gUnk_081243D4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809ED2C: .4byte gUnk_081243D4

	thumb_func_start sub_0809ED30
sub_0809ED30: @ 0x0809ED30
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	movs r1, #2
	eors r0, r1
	lsls r0, r0, #3
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0809EE34
	adds r0, r4, #0
	bl sub_0809EFB0
	ldrb r1, [r4, #0xa]
	adds r0, r4, #0
	bl sub_08004260
	pop {r4, pc}

	thumb_func_start sub_0809ED54
sub_0809ED54: @ 0x0809ED54
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x84
	ldrh r0, [r1]
	cmp r0, #0
	beq _0809ED6A
	bl sub_0807CBE4
	cmp r0, #0
	beq _0809ED86
_0809ED6A:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bne _0809ED80
	adds r1, r4, #0
	adds r1, #0x74
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0809ED86
_0809ED80:
	adds r0, r4, #0
	bl sub_0809EE08
_0809ED86:
	pop {r4, pc}

	thumb_func_start sub_0809ED88
sub_0809ED88: @ 0x0809ED88
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0809F08C
	adds r0, r4, #0
	bl sub_0809EE44
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r2, [r0]
	cmp r2, #0
	beq _0809EDC6
	adds r1, r4, #0
	adds r1, #0x84
	ldrh r0, [r1]
	cmp r0, r2
	bne _0809EDB4
	bl sub_0807CBE4
	cmp r0, #0
	bne _0809EDE2
	b _0809EDBE
_0809EDB4:
	ldrh r0, [r1]
	bl sub_0807CBE4
	cmp r0, #0
	beq _0809EDE2
_0809EDBE:
	adds r0, r4, #0
	bl sub_0809EE24
	b _0809EDE2
_0809EDC6:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bne _0809EDE2
	adds r1, r4, #0
	adds r1, #0x74
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0809EDE2
	adds r0, r4, #0
	bl sub_0809EE24
_0809EDE2:
	pop {r4, pc}

	thumb_func_start sub_0809EDE4
sub_0809EDE4: @ 0x0809EDE4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0809F08C
	adds r0, r4, #0
	bl sub_0809EE44
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809EE06
	adds r0, r4, #0
	bl sub_0809EE34
_0809EE06:
	pop {r4, pc}

	thumb_func_start sub_0809EE08
sub_0809EE08: @ 0x0809EE08
	push {lr}
	movs r1, #2
	strb r1, [r0, #0xc]
	adds r1, r0, #0
	adds r1, #0x7f
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r2, r0, #0
	adds r2, #0x74
	strh r1, [r2]
	ldrb r1, [r0, #0xa]
	bl sub_08004260
	pop {pc}

	thumb_func_start sub_0809EE24
sub_0809EE24: @ 0x0809EE24
	push {lr}
	movs r1, #3
	strb r1, [r0, #0xc]
	ldrb r1, [r0, #0xa]
	adds r1, #4
	bl sub_08004260
	pop {pc}

	thumb_func_start sub_0809EE34
sub_0809EE34: @ 0x0809EE34
	movs r1, #1
	strb r1, [r0, #0xc]
	ldrb r1, [r0, #0xe]
	lsls r1, r1, #2
	adds r0, #0x74
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0809EE44
sub_0809EE44: @ 0x0809EE44
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r1, #7
	ands r1, r0
	adds r0, r5, #0
	adds r0, #0x7e
	ldrb r0, [r0]
	lsls r0, r1
	strh r0, [r5, #0x24]
	cmp r1, #0
	bne _0809EE60
	b _0809EF74
_0809EE60:
	ldr r4, _0809EEA4 @ =gLinkEntity
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0809EF78
	cmp r0, #0
	beq _0809EE80
	bl sub_08079F8C
	cmp r0, #0
	beq _0809EE80
	movs r1, #0x24
	ldrsh r0, [r5, r1]
	ldrb r1, [r5, #0x15]
	bl sub_08079E58
_0809EE80:
	ldr r6, _0809EEA8 @ =gUnk_03003D80
	ldr r4, [r6, #4]
	cmp r6, r4
	beq _0809EF74
_0809EE88:
	ldrb r0, [r4, #8]
	cmp r0, #8
	bne _0809EF6E
	movs r3, #0
	ldrb r0, [r4, #9]
	subs r0, #2
	cmp r0, #0x17
	bhi _0809EF52
	lsls r0, r0, #2
	ldr r1, _0809EEAC @ =_0809EEB0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809EEA4: .4byte gLinkEntity
_0809EEA8: .4byte gUnk_03003D80
_0809EEAC: .4byte _0809EEB0
_0809EEB0: @ jump table
	.4byte _0809EF1E @ case 0
	.4byte _0809EF26 @ case 1
	.4byte _0809EF48 @ case 2
	.4byte _0809EF52 @ case 3
	.4byte _0809EF52 @ case 4
	.4byte _0809EF52 @ case 5
	.4byte _0809EF52 @ case 6
	.4byte _0809EF52 @ case 7
	.4byte _0809EF52 @ case 8
	.4byte _0809EF52 @ case 9
	.4byte _0809EF52 @ case 10
	.4byte _0809EF52 @ case 11
	.4byte _0809EF52 @ case 12
	.4byte _0809EF52 @ case 13
	.4byte _0809EF52 @ case 14
	.4byte _0809EF50 @ case 15
	.4byte _0809EF52 @ case 16
	.4byte _0809EF10 @ case 17
	.4byte _0809EF52 @ case 18
	.4byte _0809EF52 @ case 19
	.4byte _0809EF52 @ case 20
	.4byte _0809EF52 @ case 21
	.4byte _0809EF52 @ case 22
	.4byte _0809EF50 @ case 23
_0809EF10:
	ldrb r0, [r4, #0xc]
	cmp r0, #2
	bne _0809EF56
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bls _0809EF52
	b _0809EF56
_0809EF1E:
	ldrb r0, [r4, #0xc]
	cmp r0, #2
	beq _0809EF52
	b _0809EF56
_0809EF26:
	ldr r2, _0809EF44 @ =gLinkEntity
	movs r7, #0x2e
	ldrsh r1, [r4, r7]
	movs r7, #0x2e
	ldrsh r0, [r2, r7]
	cmp r1, r0
	bne _0809EF56
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	movs r7, #0x32
	ldrsh r0, [r2, r7]
	cmp r1, r0
	beq _0809EF52
	b _0809EF56
	.align 2, 0
_0809EF44: .4byte gLinkEntity
_0809EF48:
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq _0809EF52
	b _0809EF56
_0809EF50:
	movs r3, #1
_0809EF52:
	cmp r3, #0
	beq _0809EF6E
_0809EF56:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0809EF78
	cmp r0, #0
	beq _0809EF6E
	movs r0, #0x24
	ldrsh r1, [r5, r0]
	ldrb r2, [r5, #0x15]
	adds r0, r4, #0
	bl sub_080044AE
_0809EF6E:
	ldr r4, [r4, #4]
	cmp r6, r4
	bne _0809EE88
_0809EF74:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0809EF78
sub_0809EF78: @ 0x0809EF78
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	movs r5, #0
	adds r0, #0x70
	ldrh r2, [r0]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	adds r1, r3, #0
	adds r1, #0x6c
	ldrh r1, [r1]
	subs r0, r0, r1
	cmp r2, r0
	blo _0809EFAC
	adds r0, r3, #0
	adds r0, #0x72
	ldrh r2, [r0]
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	adds r1, r3, #0
	adds r1, #0x6e
	ldrh r1, [r1]
	subs r0, r0, r1
	cmp r2, r0
	blo _0809EFAC
	movs r5, #1
_0809EFAC:
	adds r0, r5, #0
	pop {r4, r5, pc}

	thumb_func_start sub_0809EFB0
sub_0809EFB0: @ 0x0809EFB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	ldr r0, _0809F010 @ =gUnk_081243E4
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r2, r1, r0
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	mov sb, r2
	adds r1, #1
	adds r1, r1, r0
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mov r8, r1
	movs r0, #0x2e
	ldrsh r6, [r4, r0]
	movs r0, #0x32
	ldrsh r5, [r4, r0]
	ldr r0, _0809F014 @ =gUnk_02027EB4
	mov sl, r0
	movs r7, #0
_0809EFE6:
	adds r7, #1
	add r6, sb
	add r5, r8
	mov r0, sl
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #9
	bl sub_080AE4CC
	cmp r0, #0
	beq _0809EFE6
	subs r0, r7, #1
	lsls r7, r0, #4
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0809F034
	cmp r0, #1
	bgt _0809F018
	cmp r0, #0
	beq _0809F022
	b _0809F082
	.align 2, 0
_0809F010: .4byte gUnk_081243E4
_0809F014: .4byte gUnk_02027EB4
_0809F018:
	cmp r0, #2
	beq _0809F03E
	cmp r0, #3
	beq _0809F064
	b _0809F082
_0809F022:
	ldrh r0, [r4, #0x2e]
	subs r0, #0x10
	adds r1, r4, #0
	adds r1, #0x6c
	strh r0, [r1]
	ldrh r0, [r4, #0x32]
	adds r0, #8
	adds r1, #2
	b _0809F054
_0809F034:
	adds r1, r7, #0
	adds r1, #8
	ldrh r0, [r4, #0x2e]
	subs r0, r0, r1
	b _0809F068
_0809F03E:
	ldrh r0, [r4, #0x2e]
	subs r0, #0x10
	adds r1, r4, #0
	adds r1, #0x6c
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #8
	ldrh r0, [r4, #0x32]
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x6e
_0809F054:
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x20
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x72
	strh r7, [r0]
	b _0809F082
_0809F064:
	ldrh r0, [r4, #0x2e]
	adds r0, #8
_0809F068:
	adds r1, r4, #0
	adds r1, #0x6c
	strh r0, [r1]
	ldrh r0, [r4, #0x32]
	subs r0, #0x10
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x70
	strh r7, [r0]
	adds r1, #4
	movs r0, #0x20
	strh r0, [r1]
_0809F082:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0809F08C
sub_0809F08C: @ 0x0809F08C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0809F09A
	subs r0, #1
	strb r0, [r4, #0xf]
_0809F09A:
	adds r0, r4, #0
	bl sub_08004274
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0809F0C0
	movs r0, #0xdf
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x14
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_0809F0E4
	b _0809F0E0
_0809F0C0:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809F0E0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _0809F0E0
	movs r0, #0x14
	strb r0, [r4, #0xf]
	ldrb r0, [r2]
	movs r1, #0x10
	eors r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0809F0E4
_0809F0E0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809F0E4
sub_0809F0E4: @ 0x0809F0E4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0809F124 @ =0x00000183
	bl sub_08004488
	ldrb r0, [r5, #0xa]
	movs r1, #2
	eors r1, r0
	movs r0, #0xb2
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0809F120
	str r5, [r4, #0x50]
	ldrb r0, [r5, #0xa]
	lsls r0, r0, #1
	ldr r1, _0809F128 @ =gUnk_081243EC
	adds r0, r0, r1
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r0, r3]
	lsls r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl PositionRelative
_0809F120:
	pop {r4, r5, pc}
	.align 2, 0
_0809F124: .4byte 0x00000183
_0809F128: .4byte gUnk_081243EC

	thumb_func_start sub_0809F12C
sub_0809F12C: @ 0x0809F12C
	push {lr}
	ldr r2, _0809F140 @ =gUnk_08124670
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809F140: .4byte gUnk_08124670

	thumb_func_start sub_0809F144
sub_0809F144: @ 0x0809F144
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _0809F188 @ =gUnk_080FD178
	str r0, [r4, #0x48]
	ldr r0, _0809F18C @ =0x00004022
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	ldr r3, _0809F190 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r5, #0x3f
	ands r1, r5
	movs r6, #0x32
	ldrsh r2, [r4, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r5
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
	ldrb r1, [r4, #0xa]
	adds r0, r4, #0
	bl sub_08004260
	pop {r4, r5, r6, pc}
	.align 2, 0
_0809F188: .4byte gUnk_080FD178
_0809F18C: .4byte 0x00004022
_0809F190: .4byte gRoomControls

	thumb_func_start sub_0809F194
sub_0809F194: @ 0x0809F194
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x50]
	ldrb r0, [r0, #0xf]
	cmp r0, #1
	bne _0809F1AE
	movs r0, #2
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0xa]
	adds r1, #4
	adds r0, r2, #0
	bl sub_08004260
_0809F1AE:
	pop {pc}

	thumb_func_start sub_0809F1B0
sub_0809F1B0: @ 0x0809F1B0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0809F20C
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x1b
	bl sub_080A7EE0
	adds r5, r0, #0
	cmp r5, #0
	beq _0809F21E
	ldrb r0, [r4, #0xa]
	strb r0, [r5, #0xa]
	ldr r0, [r4, #0x50]
	str r0, [r5, #0x50]
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #1
	ldr r1, _0809F208 @ =gUnk_08124684
	adds r0, r0, r1
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r0, r3]
	lsls r3, r3, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl PositionRelative
	movs r0, #0xec
	bl sub_08004488
	b _0809F21E
	.align 2, 0
_0809F208: .4byte gUnk_08124684
_0809F20C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809F21E
	strb r3, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	adds r0, r4, #0
	bl sub_08004260
_0809F21E:
	pop {r4, r5, pc}

	thumb_func_start sub_0809F220
sub_0809F220: @ 0x0809F220
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809F242
	movs r0, #4
	strb r0, [r2, #0xc]
	movs r0, #0xf
	strb r0, [r2, #0xe]
	ldrb r1, [r2, #0xa]
	adds r0, r2, #0
	bl sub_08004260
	b _0809F252
_0809F242:
	ldr r0, [r2, #0x50]
	adds r0, #0x36
	movs r1, #1
	ldrb r2, [r2, #0xb]
	lsls r1, r2
	ldrb r2, [r0]
	orrs r1, r2
	strb r1, [r0]
_0809F252:
	pop {pc}

	thumb_func_start sub_0809F254
sub_0809F254: @ 0x0809F254
	push {r4, r5, lr}
	adds r3, r0, #0
	ldrb r1, [r3, #0x18]
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1e
	movs r5, #1
	eors r0, r5
	movs r4, #4
	rsbs r4, r4, #0
	adds r2, r4, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0x18]
	ldrb r0, [r3, #0xe]
	subs r0, #1
	strb r0, [r3, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809F284
	movs r0, #1
	strb r5, [r3, #0xc]
	ands r2, r4
	orrs r2, r0
	strb r2, [r3, #0x18]
_0809F284:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0809F288
sub_0809F288: @ 0x0809F288
	push {lr}
	ldr r2, _0809F29C @ =gUnk_081246EC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809F29C: .4byte gUnk_081246EC

	thumb_func_start sub_0809F2A0
sub_0809F2A0: @ 0x0809F2A0
	push {r4, r5, r6, lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	ldrb r1, [r0, #0xb]
	strb r1, [r0, #0x1e]
	ldrb r1, [r0, #0x19]
	movs r2, #0xc0
	orrs r1, r2
	strb r1, [r0, #0x19]
	adds r3, r0, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r2, #7
	orrs r1, r2
	strb r1, [r3]
	ldr r5, _0809F2EC @ =0x00004069
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	ldr r3, _0809F2F0 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r0, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r5, #0
	bl sub_0800015E
	pop {r4, r5, r6, pc}
	.align 2, 0
_0809F2EC: .4byte 0x00004069
_0809F2F0: .4byte gRoomControls

	thumb_func_start nullsub_537
nullsub_537: @ 0x0809F2F4
	bx lr
	.align 2, 0

	thumb_func_start sub_0809F2F8
sub_0809F2F8: @ 0x0809F2F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0809F314 @ =gUnk_081246F4
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0
_0809F314: .4byte gUnk_081246F4

	thumb_func_start sub_0809F318
sub_0809F318: @ 0x0809F318
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_08004260
	bl sub_08000E50
	movs r1, #0x10
	ands r1, r0
	cmp r1, #0
	beq _0809F336
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x18]
_0809F336:
	movs r0, #0x28
	strh r0, [r4, #0x2e]
	movs r0, #0x48
	strh r0, [r4, #0x32]
	ldr r0, _0809F36C @ =0x0000FFB0
	strh r0, [r4, #0x36]
	ldrb r1, [r4, #0x1b]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x1b]
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r1, _0809F370 @ =gUnk_08124704
	ldrb r0, [r4, #0xa]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_0801D2B4
	adds r0, r4, #0
	movs r1, #7
	bl sub_0805E3A0
	pop {r4, pc}
	.align 2, 0
_0809F36C: .4byte 0x0000FFB0
_0809F370: .4byte gUnk_08124704

	thumb_func_start sub_0809F374
sub_0809F374: @ 0x0809F374
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	cmp r0, #1
	bhi _0809F3AE
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #1
	bhi _0809F3C0
	movs r0, #0
	str r0, [r4, #0x34]
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
	movs r0, #0xc3
	lsls r0, r0, #1
	bl PlaySFX
	b _0809F3E6
_0809F3AE:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #0
	beq _0809F3C8
	cmp r0, #1
	beq _0809F3D4
_0809F3C0:
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	b _0809F3E6
_0809F3C8:
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_0809F3D4:
	movs r0, #0
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_0809F448
	movs r0, #0xc3
	lsls r0, r0, #1
	bl PlaySFX
_0809F3E6:
	pop {r4, pc}

	thumb_func_start sub_0809F3E8
sub_0809F3E8: @ 0x0809F3E8
	push {lr}
	adds r2, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809F404
	movs r0, #3
	strb r0, [r2, #0xc]
	adds r0, r2, #0
	movs r1, #2
	bl sub_08004260
_0809F404:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0809F408
sub_0809F408: @ 0x0809F408
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x5a
	ldrb r0, [r1]
	cmp r0, #9
	beq _0809F41C
	cmp r0, #0x80
	beq _0809F438
	b _0809F442
_0809F41C:
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x43
	movs r2, #0
	bl CreateFX
	ldr r1, _0809F434 @ =gUnk_02000080
	movs r0, #1
	strb r0, [r1]
	b _0809F442
	.align 2, 0
_0809F434: .4byte gUnk_02000080
_0809F438:
	ldr r1, _0809F444 @ =gUnk_02000080
	movs r0, #1
	strb r0, [r1, #4]
	bl sub_0805E780
_0809F442:
	pop {pc}
	.align 2, 0
_0809F444: .4byte gUnk_02000080

	thumb_func_start sub_0809F448
sub_0809F448: @ 0x0809F448
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl sub_08000E50
	adds r5, r0, #0
	ldrb r0, [r6, #0xf]
	lsls r2, r0, #1
	ldr r1, _0809F474 @ =gUnk_08124708
	adds r7, r2, r1
	adds r0, #1
	strb r0, [r6, #0xf]
	ldr r1, [r6, #0x2c]
	movs r0, #0xa0
	lsls r0, r0, #0xe
	subs r4, r0, r1
	ldrb r0, [r7]
	cmp r0, #0
	beq _0809F478
	cmp r0, #1
	beq _0809F492
	b _0809F49C
	.align 2, 0
_0809F474: .4byte gUnk_08124708
_0809F478:
	movs r1, #0xc0
	lsls r1, r1, #0xd
	adds r0, r5, #0
	bl __modsi3
	adds r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r5
	cmp r0, #0
	beq _0809F49C
	rsbs r4, r4, #0
	b _0809F49C
_0809F492:
	ldr r0, _0809F4BC @ =0xFFF80000
	adds r1, r4, r0
	ldr r0, _0809F4C0 @ =0x000FFFFF
	ands r0, r5
	adds r4, r1, r0
_0809F49C:
	adds r0, r4, #0
	cmp r4, #0
	bge _0809F4A4
	rsbs r0, r4, #0
_0809F4A4:
	ldrb r1, [r7, #1]
	lsls r1, r1, #8
	bl __divsi3
	strh r0, [r6, #0x24]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080045DA
	lsrs r0, r0, #3
	strb r0, [r6, #0x15]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809F4BC: .4byte 0xFFF80000
_0809F4C0: .4byte 0x000FFFFF

	thumb_func_start sub_0809F4C4
sub_0809F4C4: @ 0x0809F4C4
	push {lr}
	ldr r2, _0809F4D8 @ =gUnk_08124798
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809F4D8: .4byte gUnk_08124798

	thumb_func_start sub_0809F4DC
sub_0809F4DC: @ 0x0809F4DC
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xb]
	cmp r0, #0
	bne _0809F4FC
	ldr r0, _0809F4F8 @ =gUnk_081247A0
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
	b _0809F50C
	.align 2, 0
_0809F4F8: .4byte gUnk_081247A0
_0809F4FC:
	ldr r0, _0809F510 @ =gUnk_081247AC
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
_0809F50C:
	pop {pc}
	.align 2, 0
_0809F510: .4byte gUnk_081247AC

	thumb_func_start sub_0809F514
sub_0809F514: @ 0x0809F514
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0x78
	strb r1, [r0, #0xe]
	ldrb r2, [r0, #0x18]
	subs r1, #0x7c
	ands r1, r2
	strb r1, [r0, #0x18]
	adds r2, r0, #0
	adds r2, #0x68
	movs r1, #0xc
	strb r1, [r2]
	ldr r1, _0809F540 @ =gRoomControls
	str r0, [r1, #0x30]
	ldr r2, _0809F544 @ =gUnk_02034490
	movs r1, #0xff
	strb r1, [r2]
	bl sub_0809F7BC
	pop {pc}
	.align 2, 0
_0809F540: .4byte gRoomControls
_0809F544: .4byte gUnk_02034490

	thumb_func_start sub_0809F548
sub_0809F548: @ 0x0809F548
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809F590
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x5a
	strb r0, [r4, #0xe]
	adds r0, #0xc3
	bl PlaySFX
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _0809F58C @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	bl sub_0809F814
	b _0809F5A8
	.align 2, 0
_0809F58C: .4byte gRoomControls
_0809F590:
	ldr r0, _0809F5AC @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0809F5A2
	adds r0, r4, #0
	bl sub_0809F7BC
_0809F5A2:
	adds r0, r4, #0
	bl sub_0809F7F4
_0809F5A8:
	pop {r4, r5, pc}
	.align 2, 0
_0809F5AC: .4byte gUnk_030010A0

	thumb_func_start sub_0809F5B0
sub_0809F5B0: @ 0x0809F5B0
	push {lr}
	ldrb r1, [r0, #0xe]
	subs r1, #1
	strb r1, [r0, #0xe]
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _0809F5D4
	movs r0, #0x73
	bl PlaySFX
	movs r0, #0x24
	bl sub_0807CD04
	ldr r0, _0809F5D8 @ =gUnk_080DD750
	bl LoadRoomEntityList
	bl sub_0805E780
_0809F5D4:
	pop {pc}
	.align 2, 0
_0809F5D8: .4byte gUnk_080DD750

	thumb_func_start sub_0809F5DC
sub_0809F5DC: @ 0x0809F5DC
	movs r1, #1
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	subs r1, #5
	ands r1, r2
	strb r1, [r0, #0x18]
	adds r0, #0x68
	movs r1, #0xc
	strb r1, [r0]
	bx lr

	thumb_func_start sub_0809F5F0
sub_0809F5F0: @ 0x0809F5F0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	bl sub_0807CC3C
	cmp r0, #0
	beq _0809F614
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	movs r0, #3
	bl sub_08078A90
	bl sub_08078B48
	ldr r0, _0809F618 @ =gRoomControls
	str r4, [r0, #0x30]
_0809F614:
	pop {r4, pc}
	.align 2, 0
_0809F618: .4byte gRoomControls

	thumb_func_start sub_0809F61C
sub_0809F61C: @ 0x0809F61C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0809F678 @ =gRoomControls
	ldrb r1, [r5, #0xf]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0809F694
	ldrb r0, [r4, #0xe]
	cmp r0, #0x1e
	bne _0809F638
	ldrb r0, [r4, #0xb]
	bl sub_0807CCB4
_0809F638:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809F67C
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	adds r0, #0xa5
	bl PlaySFX
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldrh r1, [r5, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	ldrh r2, [r5, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	bl sub_0809F814
	b _0809F694
	.align 2, 0
_0809F678: .4byte gRoomControls
_0809F67C:
	ldr r0, _0809F698 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0809F68E
	adds r0, r4, #0
	bl sub_0809F7BC
_0809F68E:
	adds r0, r4, #0
	bl sub_0809F7F4
_0809F694:
	pop {r4, r5, pc}
	.align 2, 0
_0809F698: .4byte gUnk_030010A0

	thumb_func_start sub_0809F69C
sub_0809F69C: @ 0x0809F69C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809F6C0
	movs r0, #0x1e
	strb r0, [r1, #0xe]
	movs r0, #4
	strb r0, [r1, #0xc]
	ldr r1, _0809F6C4 @ =gRoomControls
	ldr r0, _0809F6C8 @ =gLinkEntity
	str r0, [r1, #0x30]
	movs r0, #0x73
	bl PlaySFX
_0809F6C0:
	pop {pc}
	.align 2, 0
_0809F6C4: .4byte gRoomControls
_0809F6C8: .4byte gLinkEntity

	thumb_func_start sub_0809F6CC
sub_0809F6CC: @ 0x0809F6CC
	push {lr}
	adds r2, r0, #0
	ldr r0, _0809F6F8 @ =gRoomControls
	ldrb r1, [r0, #0xf]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0809F6F4
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809F6F4
	ldr r0, _0809F6FC @ =gUnk_03003F80
	adds r0, #0x8b
	movs r1, #1
	strb r1, [r0]
	bl sub_0805E780
_0809F6F4:
	pop {pc}
	.align 2, 0
_0809F6F8: .4byte gRoomControls
_0809F6FC: .4byte gUnk_03003F80

	thumb_func_start sub_0809F700
sub_0809F700: @ 0x0809F700
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0809F722
	movs r0, #1
	strb r0, [r4, #0xc]
	bl sub_08000E50
	movs r1, #0x1e
	ands r0, r1
	adds r0, #8
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0xc
	orrs r0, r1
	strb r0, [r4, #0x10]
_0809F722:
	ldr r0, _0809F768 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0809F750
	bl sub_08000E50
	ldr r3, _0809F76C @ =gUnk_081247C0
	movs r2, #7
	adds r1, r0, #0
	ands r1, r2
	adds r1, r1, r3
	ldrb r1, [r1]
	movs r5, #0x62
	strb r1, [r5, r4]
	lsrs r0, r0, #4
	ands r0, r2
	adds r0, r0, r3
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x63
	strb r0, [r1]
_0809F750:
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809F766
	bl sub_0805E780
_0809F766:
	pop {r4, r5, pc}
	.align 2, 0
_0809F768: .4byte gUnk_030010A0
_0809F76C: .4byte gUnk_081247C0

	thumb_func_start sub_0809F770
sub_0809F770: @ 0x0809F770
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xa3
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0809F7B6
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA30
	bl sub_08000E50
	ldrh r2, [r4, #0x2e]
	subs r2, #0x10
	movs r3, #0x1f
	adds r1, r0, #0
	ands r1, r3
	adds r2, r2, r1
	strh r2, [r4, #0x2e]
	ldrh r2, [r4, #0x32]
	subs r2, #0x10
	asrs r1, r0, #8
	ands r1, r3
	adds r2, r2, r1
	strh r2, [r4, #0x32]
	asrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #0x1e]
	movs r0, #0xff
	strb r0, [r4, #0x15]
_0809F7B6:
	adds r0, r4, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0809F7BC
sub_0809F7BC: @ 0x0809F7BC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r5, #0
	ldr r7, _0809F7F0 @ =gUnk_081247C8
_0809F7C4:
	adds r0, r6, #0
	bl sub_0809F770
	adds r4, r0, #0
	cmp r4, #0
	beq _0809F7E8
	bl sub_08000E50
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r1, [r1]
	strh r1, [r4, #0x24]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
_0809F7E8:
	adds r5, #1
	cmp r5, #7
	bls _0809F7C4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809F7F0: .4byte gUnk_081247C8

	thumb_func_start sub_0809F7F4
sub_0809F7F4: @ 0x0809F7F4
	push {lr}
	adds r1, r0, #0
	adds r1, #0x68
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809F812
	movs r0, #0xc
	strb r0, [r1]
	movs r0, #0xc2
	lsls r0, r0, #1
	bl PlaySFX
_0809F812:
	pop {pc}

	thumb_func_start sub_0809F814
sub_0809F814: @ 0x0809F814
	push {lr}
	adds r1, r0, #0
	ldr r0, _0809F824 @ =gUnk_081247D0
	movs r2, #1
	bl sub_0807BB68
	pop {pc}
	.align 2, 0
_0809F824: .4byte gUnk_081247D0

	thumb_func_start sub_0809F828
sub_0809F828: @ 0x0809F828
	push {lr}
	ldr r2, _0809F83C @ =gUnk_081247F8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809F83C: .4byte gUnk_081247F8

	thumb_func_start sub_0809F840
sub_0809F840: @ 0x0809F840
	push {lr}
	adds r2, r0, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r2, #0xc]
	strb r1, [r2, #0x1e]
	movs r0, #0x20
	strb r0, [r2, #0xe]
	strb r1, [r2, #0xf]
	ldrb r0, [r2, #0xb]
	cmp r0, #0
	beq _0809F860
	ldrb r0, [r2, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x18]
_0809F860:
	adds r0, r2, #0
	bl UpdateSpriteOrderAndFlip
	pop {pc}

	thumb_func_start sub_0809F868
sub_0809F868: @ 0x0809F868
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	movs r2, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809F8A2
	ldrb r0, [r1, #0xf]
	cmp r0, #0
	bne _0809F890
	ldrb r0, [r1, #0x1e]
	adds r0, #1
	strb r0, [r1, #0x1e]
	ands r0, r2
	cmp r0, #3
	bne _0809F89E
	movs r0, #1
	b _0809F89C
_0809F890:
	ldrb r0, [r1, #0x1e]
	subs r0, #1
	strb r0, [r1, #0x1e]
	ands r0, r2
	cmp r0, #0
	bne _0809F89E
_0809F89C:
	strb r0, [r1, #0xf]
_0809F89E:
	movs r0, #0x20
	strb r0, [r1, #0xe]
_0809F8A2:
	pop {pc}

	thumb_func_start sub_0809F8A4
sub_0809F8A4: @ 0x0809F8A4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, _0809F904 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x42
	bhi _0809F8FC
	movs r5, #0
_0809F8B6:
	movs r0, #0x1d
	bl sub_080A7EE0
	adds r4, r0, #0
	cmp r5, #0
	bne _0809F8C6
	mov r8, r4
	adds r7, r4, #0
_0809F8C6:
	strb r5, [r4, #0xa]
	mov r0, r8
	str r0, [r4, #0x50]
	str r7, [r4, #0x54]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0806FA24
	adds r1, r4, #0
	adds r1, #0x68
	adds r3, r5, #1
	movs r2, #7
_0809F8DE:
	ldrh r0, [r6, #0x2e]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r6, #0x32]
	strh r0, [r1]
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bge _0809F8DE
	adds r7, r4, #0
	adds r5, r3, #0
	cmp r5, #4
	ble _0809F8B6
	bl sub_0805E780
_0809F8FC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809F904: .4byte gUnk_03003DBC

	thumb_func_start sub_0809F908
sub_0809F908: @ 0x0809F908
	push {lr}
	ldr r2, _0809F91C @ =gUnk_08124800
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809F91C: .4byte gUnk_08124800

	thumb_func_start sub_0809F920
sub_0809F920: @ 0x0809F920
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	beq _0809F934
	bl sub_0805E780
_0809F934:
	movs r2, #1
	strb r2, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x48
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3f
	strb r2, [r0]
	subs r1, #5
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0809F960 @ =gUnk_080FD150
	str r0, [r4, #0x48]
	pop {r4, pc}
	.align 2, 0
_0809F960: .4byte gUnk_080FD150

	thumb_func_start sub_0809F964
sub_0809F964: @ 0x0809F964
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0xa1
	bne _0809F9A8
	adds r0, r4, #0
	movs r1, #0x4e
	movs r2, #0
	bl CreateFX
	adds r2, r0, #0
	cmp r2, #0
	beq _0809F99A
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r3]
	adds r1, r2, #0
	adds r1, #0x63
	movs r0, #0xfb
	strb r0, [r1]
_0809F99A:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CCC8
	bl sub_0805E780
_0809F9A8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809F9AC
sub_0809F9AC: @ 0x0809F9AC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0809F9D2
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #9
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_0809F9D2:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809F9DC
sub_0809F9DC: @ 0x0809F9DC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809FA9A
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x1f
	bhi _0809FA9A
	lsls r0, r0, #2
	ldr r1, _0809FA00 @ =_0809FA04
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809FA00: .4byte _0809FA04
_0809FA04: @ jump table
	.4byte _0809FA84 @ case 0
	.4byte _0809FA84 @ case 1
	.4byte _0809FA9A @ case 2
	.4byte _0809FA9A @ case 3
	.4byte _0809FA84 @ case 4
	.4byte _0809FA84 @ case 5
	.4byte _0809FA84 @ case 6
	.4byte _0809FA9A @ case 7
	.4byte _0809FA84 @ case 8
	.4byte _0809FA84 @ case 9
	.4byte _0809FA84 @ case 10
	.4byte _0809FA84 @ case 11
	.4byte _0809FA84 @ case 12
	.4byte _0809FA9A @ case 13
	.4byte _0809FA9A @ case 14
	.4byte _0809FA9A @ case 15
	.4byte _0809FA9A @ case 16
	.4byte _0809FA9A @ case 17
	.4byte _0809FA9A @ case 18
	.4byte _0809FA9A @ case 19
	.4byte _0809FA9A @ case 20
	.4byte _0809FA9A @ case 21
	.4byte _0809FA9A @ case 22
	.4byte _0809FA9A @ case 23
	.4byte _0809FA9A @ case 24
	.4byte _0809FA9A @ case 25
	.4byte _0809FA9A @ case 26
	.4byte _0809FA9A @ case 27
	.4byte _0809FA9A @ case 28
	.4byte _0809FA9A @ case 29
	.4byte _0809FA84 @ case 30
	.4byte _0809FA84 @ case 31
_0809FA84:
	movs r0, #5
	strb r0, [r4, #0xc]
	ldr r0, _0809FAB4 @ =gLinkEntity
	str r0, [r4, #0x54]
	ldrb r0, [r4, #0xa]
	movs r1, #0
	movs r2, #0
	bl sub_080A7C00
	bl sub_0805E780
_0809FA9A:
	ldr r0, _0809FAB8 @ =gUnk_08124824
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08080CB4
	pop {r4, pc}
	.align 2, 0
_0809FAB4: .4byte gLinkEntity
_0809FAB8: .4byte gUnk_08124824

	thumb_func_start sub_0809FABC
sub_0809FABC: @ 0x0809FABC
	push {lr}
	adds r3, r0, #0
	movs r0, #1
	strb r0, [r3, #0xc]
	ldrb r0, [r3, #0xb]
	cmp r0, #0
	beq _0809FAD0
	cmp r0, #2
	beq _0809FADE
	b _0809FAE6
_0809FAD0:
	movs r0, #0xf0
	lsls r0, r0, #9
	str r0, [r3, #0x20]
	ldrh r0, [r3, #0x36]
	adds r0, #8
	strh r0, [r3, #0x36]
	b _0809FAE6
_0809FADE:
	adds r0, r3, #0
	bl sub_0809FECC
	b _0809FB30
_0809FAE6:
	adds r1, r3, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x3c
	movs r2, #0x17
	strb r2, [r0]
	adds r1, #8
	movs r0, #0x48
	strb r0, [r1]
	subs r1, #1
	movs r0, #7
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x3b
	strb r2, [r0]
	ldr r0, _0809FB34 @ =gUnk_080FD1A8
	str r0, [r3, #0x48]
	movs r0, #1
	strb r0, [r3, #0x1c]
	ldrh r1, [r3, #0x2e]
	adds r0, r3, #0
	adds r0, #0x74
	strh r1, [r0]
	ldrh r0, [r3, #0x32]
	adds r1, r3, #0
	adds r1, #0x76
	strh r0, [r1]
	adds r0, r3, #0
	movs r1, #3
	bl sub_0805E3A0
	movs r0, #0x9b
	lsls r0, r0, #1
	bl sub_08004488
_0809FB30:
	pop {pc}
	.align 2, 0
_0809FB34: .4byte gUnk_080FD1A8

	thumb_func_start sub_0809FB38
sub_0809FB38: @ 0x0809FB38
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x34]
	ldr r1, _0809FB60 @ =0xFFFF2000
	adds r0, r0, r1
	str r0, [r2, #0x34]
	adds r0, r2, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809FB74
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	beq _0809FB64
	adds r1, r0, #0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	b _0809FB66
	.align 2, 0
_0809FB60: .4byte 0xFFFF2000
_0809FB64:
	movs r0, #0xf0
_0809FB66:
	strb r0, [r2, #0xe]
	movs r0, #3
	strb r0, [r2, #0xc]
	movs r0, #1
	strb r0, [r2, #0xf]
	movs r0, #0x80
	strh r0, [r2, #0x24]
_0809FB74:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0809FB78
sub_0809FB78: @ 0x0809FB78
	push {lr}
	ldr r2, _0809FB8C @ =gUnk_08124840
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809FB8C: .4byte gUnk_08124840

	thumb_func_start sub_0809FB90
sub_0809FB90: @ 0x0809FB90
	movs r3, #1
	movs r1, #1
	strb r1, [r0, #0xd]
	strb r1, [r0, #0x1d]
	ldrb r2, [r0, #0x18]
	subs r1, #5
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x18]
	bx lr

	thumb_func_start sub_0809FBA4
sub_0809FBA4: @ 0x0809FBA4
	push {lr}
	adds r2, r0, #0
	ldr r0, _0809FBC8 @ =gUnk_03003F80
	ldrb r1, [r0, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _0809FBC2
	adds r0, r2, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x13
	beq _0809FBCC
_0809FBC2:
	movs r0, #3
	strb r0, [r2, #0xc]
	b _0809FBD2
	.align 2, 0
_0809FBC8: .4byte gUnk_03003F80
_0809FBCC:
	adds r0, r2, #0
	bl sub_0806F4E8
_0809FBD2:
	pop {pc}

	thumb_func_start sub_0809FBD4
sub_0809FBD4: @ 0x0809FBD4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0809FBFC @ =gUnk_03003F80
	ldrb r1, [r0, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _0809FBF4
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r5, #0x7f
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0x13
	beq _0809FC00
_0809FBF4:
	movs r0, #3
	strb r0, [r4, #0xc]
	b _0809FC22
	.align 2, 0
_0809FBFC: .4byte gUnk_03003F80
_0809FC00:
	adds r0, r4, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _0809FC22
	ldrb r1, [r4, #0x10]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #5
	strb r0, [r4, #0xc]
	ldr r0, _0809FC24 @ =gLinkEntity
	str r0, [r4, #0x54]
	ldrb r0, [r4, #0xa]
	movs r1, #0
	bl sub_08053FF0
_0809FC22:
	pop {r4, r5, pc}
	.align 2, 0
_0809FC24: .4byte gLinkEntity

	thumb_func_start sub_0809FC28
sub_0809FC28: @ 0x0809FC28
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809FCAC
	bl sub_08000E50
	adds r5, r0, #0
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x20
	strb r0, [r4, #0xf]
	ldr r2, _0809FC6C @ =gUnk_0812484C
	lsrs r0, r5, #8
	movs r1, #1
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_0809FE9C
	cmp r0, #0
	beq _0809FC70
	movs r0, #0x1f
	ands r5, r0
	strb r5, [r4, #0x15]
	b _0809FC8A
	.align 2, 0
_0809FC6C: .4byte gUnk_0812484C
_0809FC70:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	adds r2, r4, #0
	adds r2, #0x74
	ldrh r2, [r2]
	adds r3, r4, #0
	adds r3, #0x76
	ldrh r3, [r3]
	bl sub_080045D4
	strb r0, [r4, #0x15]
_0809FC8A:
	ldrb r1, [r4, #0x15]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0809FCAC
	movs r0, #0x10
	eors r1, r0
	lsrs r1, r1, #4
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_0809FCAC:
	adds r0, r4, #0
	bl sub_080AEFB4
	bl sub_0805E40C
	cmp r0, #0
	bne _0809FCF8
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0809FCF8
	ldr r0, _0809FCFC @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809FCE0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809FCE0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08081404
_0809FCE0:
	ldrb r0, [r4, #0xe]
	cmp r0, #0x3b
	bhi _0809FCF8
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_0809FCF8:
	pop {r4, r5, pc}
	.align 2, 0
_0809FCFC: .4byte gUnk_030010A0

	thumb_func_start sub_0809FD00
sub_0809FD00: @ 0x0809FD00
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x54]
	ldrh r1, [r2, #8]
	ldr r0, _0809FD18 @ =0x00000B08
	cmp r1, r0
	beq _0809FD1C
	adds r0, r4, #0
	movs r1, #0
	bl sub_08081404
	b _0809FD44
	.align 2, 0
_0809FD18: .4byte 0x00000B08
_0809FD1C:
	adds r0, r2, #0
	adds r1, r4, #0
	bl sub_0806FA24
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	ldr r1, _0809FD48 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080177A0
	cmp r0, #0
	beq _0809FD44
	adds r0, r4, #0
	bl sub_0809FECC
	ldrb r0, [r4, #0xa]
	movs r1, #0
	bl sub_08053FF0
_0809FD44:
	pop {r4, pc}
	.align 2, 0
_0809FD48: .4byte gLinkEntity

	thumb_func_start sub_0809FD4C
sub_0809FD4C: @ 0x0809FD4C
	push {lr}
	adds r1, r0, #0
	movs r2, #6
	strb r2, [r1, #0xc]
	movs r0, #0x80
	strb r0, [r1, #0xe]
	strb r2, [r1, #0xf]
	ldrb r2, [r1, #0x10]
	movs r0, #0x7f
	ands r0, r2
	strb r0, [r1, #0x10]
	ldrb r2, [r1, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	movs r2, #1
	orrs r0, r2
	strb r0, [r1, #0x18]
	adds r3, r1, #0
	adds r3, #0x29
	ldrb r2, [r3]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r2
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r3]
	adds r2, r1, #0
	adds r2, #0x63
	movs r0, #0xfb
	strb r0, [r2]
	ldr r0, [r1, #0x54]
	bl sub_0806FA24
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0809FD94
sub_0809FD94: @ 0x0809FD94
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, [r5, #0x54]
	ldr r2, _0809FE24 @ =gUnk_080C9160
	ldrb r0, [r5, #0xe]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	cmp r0, #0
	bge _0809FDB4
	ldr r1, _0809FE28 @ =0x0000FFFF
	adds r0, r0, r1
_0809FDB4:
	asrs r0, r0, #0x10
	ldrh r3, [r6, #0x2e]
	adds r0, r0, r3
	strh r0, [r5, #0x2e]
	ldrb r0, [r5, #0xe]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #8
	cmp r0, #0
	bge _0809FDD6
	ldr r3, _0809FE28 @ =0x0000FFFF
	adds r0, r0, r3
_0809FDD6:
	asrs r1, r0, #0x10
	ldrh r0, [r6, #0x32]
	subs r0, r0, r1
	strh r0, [r5, #0x32]
	ldrb r3, [r5, #0xe]
	adds r0, r3, #0
	adds r0, #8
	strb r0, [r5, #0xe]
	ldrh r0, [r6, #0x36]
	strh r0, [r5, #0x36]
	ldrb r2, [r6, #0x1b]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r4, [r5, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r4
	orrs r0, r2
	strb r0, [r5, #0x1b]
	ldrb r0, [r6, #0x19]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r5, #0x19]
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x19]
	subs r3, #0x39
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	cmp r3, #0x7e
	bhi _0809FE2C
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #3
	b _0809FE3A
	.align 2, 0
_0809FE24: .4byte gUnk_080C9160
_0809FE28: .4byte 0x0000FFFF
_0809FE2C:
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #5
_0809FE3A:
	orrs r1, r0
	strb r1, [r2]
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	adds r4, r5, #0
	adds r4, #0x63
	cmp r0, #0
	bne _0809FE6C
	movs r0, #6
	strb r0, [r5, #0xf]
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x16
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0809FE6C
	adds r0, r5, #0
	movs r1, #1
	bl sub_08081404
_0809FE6C:
	movs r1, #0
	ldrsb r1, [r4, r1]
	movs r0, #0x11
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0809FE8A
	ldrb r2, [r5, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x18]
_0809FE8A:
	adds r1, r5, #0
	adds r1, #0x87
	ldrb r0, [r1]
	cmp r0, #0xa
	bls _0809FE98
	movs r0, #0xa
	strb r0, [r1]
_0809FE98:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0809FE9C
sub_0809FE9C: @ 0x0809FE9C
	push {lr}
	adds r2, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	adds r1, r2, #0
	adds r1, #0x74
	ldrh r1, [r1]
	subs r0, r0, r1
	adds r0, #0x48
	cmp r0, #0x90
	bhi _0809FEC8
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	adds r1, r2, #0
	adds r1, #0x76
	ldrh r1, [r1]
	subs r0, r0, r1
	adds r0, #0x30
	cmp r0, #0x60
	bhi _0809FEC8
	movs r0, #1
	b _0809FECA
_0809FEC8:
	movs r0, #0
_0809FECA:
	pop {pc}

	thumb_func_start sub_0809FECC
sub_0809FECC: @ 0x0809FECC
	ldr r1, _0809FEDC @ =gLinkEntity
	str r1, [r0, #0x54]
	movs r2, #0
	movs r1, #5
	strb r1, [r0, #0xc]
	strb r2, [r0, #0xd]
	bx lr
	.align 2, 0
_0809FEDC: .4byte gLinkEntity

	thumb_func_start sub_0809FEE0
sub_0809FEE0: @ 0x0809FEE0
	push {lr}
	ldr r2, _0809FEF4 @ =gUnk_08124850
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809FEF4: .4byte gUnk_08124850

	thumb_func_start sub_0809FEF8
sub_0809FEF8: @ 0x0809FEF8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r1, _0809FF20 @ =gUnk_0812485C
	ldrb r0, [r4, #0xa]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_08004260
	ldr r1, _0809FF24 @ =gUnk_08124860
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl PlaySFX
	pop {r4, pc}
	.align 2, 0
_0809FF20: .4byte gUnk_0812485C
_0809FF24: .4byte gUnk_08124860

	thumb_func_start sub_0809FF28
sub_0809FF28: @ 0x0809FF28
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809FF64
	movs r0, #2
	strb r0, [r4, #0xc]
	ldr r1, [r4, #0x50]
	ldrb r0, [r4, #0xe]
	strb r0, [r1, #0x10]
	ldrb r2, [r4, #0xf]
	movs r0, #3
	ands r2, r0
	ldrb r3, [r1, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #0x18]
	adds r1, #0x6d
	ldrb r2, [r1]
	movs r0, #0xef
	ands r0, r2
	strb r0, [r1]
_0809FF64:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809FF68
sub_0809FF68: @ 0x0809FF68
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	bne _0809FFA2
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	ldrb r0, [r4, #0x19]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0809FFC4 @ =gUnk_08124868
	ldrb r0, [r4, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0x1e]
	adds r1, r4, #0
	adds r1, #0x68
	movs r0, #0x78
	strh r0, [r1]
_0809FFA2:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080A0068
	movs r0, #0xff
	bl sub_0807CC3C
	cmp r0, #0
	beq _080A00AA
	ldrb r2, [r4, #0xd]
	cmp r2, #1
	beq _080A0006
	cmp r2, #1
	bgt _0809FFC8
	cmp r2, #0
	beq _0809FFCE
	b _080A005A
	.align 2, 0
_0809FFC4: .4byte gUnk_08124868
_0809FFC8:
	cmp r2, #2
	beq _080A0038
	b _080A005A
_0809FFCE:
	adds r1, r4, #0
	adds r1, #0x68
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A005A
	movs r0, #0x20
	strh r0, [r1]
	movs r1, #1
	strb r1, [r4, #0xe]
	movs r0, #0
	strb r0, [r4, #0xf]
	strb r1, [r4, #0xd]
	strb r1, [r4, #0xa]
	adds r0, r4, #0
	bl sub_080AE068
	movs r1, #0xc6
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_080ADF80
	movs r0, #0xf6
	bl PlaySFX
	b _080A005A
_080A0006:
	adds r1, r4, #0
	adds r1, #0x68
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A005A
	movs r0, #0x2d
	strh r0, [r1]
	strb r2, [r4, #0xe]
	movs r0, #2
	strb r0, [r4, #0xd]
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	bl sub_080AE068
	ldr r1, _080A0034 @ =0x0000018D
	adds r0, r4, #0
	bl sub_080ADF80
	b _080A005A
	.align 2, 0
_080A0034: .4byte 0x0000018D
_080A0038:
	adds r1, r4, #0
	adds r1, #0x68
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A005A
	movs r0, #3
	strb r0, [r4, #0xd]
	ldr r1, _080A0064 @ =gUnk_02000080
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	movs r0, #0x73
	bl PlaySFX
_080A005A:
	adds r0, r4, #0
	bl sub_080A00B0
	b _080A00AA
	.align 2, 0
_080A0064: .4byte gUnk_02000080
_080A0068:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080A00A4
	cmp r0, #2
	bne _080A00A4
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080A00A4
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _080A00AC @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	movs r0, #0x39
	movs r2, #1
	bl sub_0807B314
_080A00A4:
	adds r0, r4, #0
	bl sub_080A00B0
_080A00AA:
	pop {r4, r5, pc}
	.align 2, 0
_080A00AC: .4byte gRoomControls

	thumb_func_start sub_080A00B0
sub_080A00B0: @ 0x080A00B0
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A00DA
	movs r0, #8
	strb r0, [r2, #0xe]
	ldr r1, _080A00DC @ =gUnk_08124868
	ldrb r0, [r2, #0xa]
	adds r0, r0, r1
	ldrb r1, [r2, #0xf]
	ldrb r0, [r0]
	adds r0, r1, r0
	strb r0, [r2, #0x1e]
	adds r1, #1
	movs r0, #3
	ands r1, r0
	strb r1, [r2, #0xf]
_080A00DA:
	pop {pc}
	.align 2, 0
_080A00DC: .4byte gUnk_08124868

	thumb_func_start sub_080A00E0
sub_080A00E0: @ 0x080A00E0
	push {lr}
	ldr r2, _080A00F4 @ =gUnk_0812486C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A00F4: .4byte gUnk_0812486C

	thumb_func_start sub_080A00F8
sub_080A00F8: @ 0x080A00F8
	push {lr}
	ldrb r1, [r0, #0xc]
	adds r1, #1
	movs r3, #0
	strb r1, [r0, #0xc]
	adds r2, r0, #0
	adds r2, #0x38
	movs r1, #1
	strb r1, [r2]
	ldrb r1, [r0, #0x19]
	movs r2, #0xc0
	orrs r1, r2
	strb r1, [r0, #0x19]
	movs r1, #0x29
	adds r1, r1, r0
	mov ip, r1
	ldrb r1, [r1]
	movs r2, #7
	orrs r1, r2
	mov r2, ip
	strb r1, [r2]
	strb r3, [r0, #0xd]
	movs r1, #0
	bl sub_08004260
	pop {pc}

	thumb_func_start sub_080A012C
sub_080A012C: @ 0x080A012C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	bl sub_0807CC3C
	cmp r0, #0
	beq _080A0154
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A0154
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_080A0154:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A0158
sub_080A0158: @ 0x080A0158
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_0807CC3C
	cmp r0, #0
	beq _080A018A
	adds r0, r4, #0
	bl sub_080A0190
	adds r0, r4, #0
	movs r1, #0x1e
	bl sub_0805E4E0
	ldr r1, _080A018C @ =gLinkEntity
	adds r0, r4, #0
	movs r2, #0x10
	movs r3, #0x10
	bl sub_080041A0
	cmp r0, #0
	beq _080A018A
	movs r0, #0x37
	bl sub_0805B390
_080A018A:
	pop {r4, pc}
	.align 2, 0
_080A018C: .4byte gLinkEntity

	thumb_func_start sub_080A0190
sub_080A0190: @ 0x080A0190
	push {r4, lr}
	movs r4, #0
	movs r1, #1
	strb r1, [r0, #0xd]
	ldr r1, _080A01B8 @ =gLinkEntity
	bl sub_0806FA24
	ldr r2, _080A01BC @ =gUnk_03003F80
	movs r0, #3
	strb r0, [r2, #0xc]
	adds r0, r2, #0
	adds r0, #0x38
	strb r4, [r0]
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r2, #0x30]
	pop {r4, pc}
	.align 2, 0
_080A01B8: .4byte gLinkEntity
_080A01BC: .4byte gUnk_03003F80

	thumb_func_start sub_080A01C0
sub_080A01C0: @ 0x080A01C0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080A01DC @ =gUnk_08124898
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08080CB4
	pop {r4, pc}
	.align 2, 0
_080A01DC: .4byte gUnk_08124898

	thumb_func_start sub_080A01E0
sub_080A01E0: @ 0x080A01E0
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	movs r3, #1
	strb r3, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x19]
	ldr r0, _080A027C @ =gUnk_080FD1A0
	str r0, [r4, #0x48]
	ldr r0, _080A0280 @ =0x0000FF40
	strh r0, [r4, #0x36]
	adds r1, r4, #0
	adds r1, #0x6a
	movs r0, #0x40
	strb r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #0x43
	bgt _080A0246
	cmp r0, #0x42
	bge _080A0246
	cmp r0, #0x40
	beq _080A0246
	cmp r0, #0x41
	bne _080A0246
	ldr r2, _080A0284 @ =gLCDControls
	ldrh r1, [r2]
	ldr r0, _080A0288 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x38
	strb r3, [r0]
_080A0246:
	ldr r0, _080A028C @ =gUnk_0800A0B4
	bl sub_0807DB2C
	ldr r1, _080A0284 @ =gLCDControls
	adds r2, r1, #0
	adds r2, #0x66
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r2]
	adds r1, #0x68
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	bl sub_0805BC4C
	ldrb r2, [r4, #0xa]
	subs r2, #0x40
	adds r0, r4, #0
	movs r1, #0xad
	movs r3, #0
	bl sub_080A2988
	cmp r0, #0
	beq _080A027A
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
_080A027A:
	pop {r4, pc}
	.align 2, 0
_080A027C: .4byte gUnk_080FD1A0
_080A0280: .4byte 0x0000FF40
_080A0284: .4byte gLCDControls
_080A0288: .4byte 0x0000FDFF
_080A028C: .4byte gUnk_0800A0B4

	thumb_func_start sub_080A0290
sub_080A0290: @ 0x080A0290
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _080A02BC @ =gUnk_02033280
	ldr r0, [r5]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080A02CA
	adds r0, r4, #0
	bl sub_080A0424
	ldrh r2, [r4, #0x36]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #8
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080A02C0
	adds r0, r2, #1
	strh r0, [r4, #0x36]
	b _080A02CA
	.align 2, 0
_080A02BC: .4byte gUnk_02033280
_080A02C0:
	movs r1, #2
	strb r1, [r4, #0xc]
	ldr r0, [r5]
	orrs r0, r1
	str r0, [r5]
_080A02CA:
	pop {r4, r5, pc}

	thumb_func_start sub_080A02CC
sub_080A02CC: @ 0x080A02CC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080A0424
	adds r0, r4, #0
	bl sub_080A0444
	adds r0, r4, #0
	bl sub_08017850
	cmp r0, #0
	beq _080A0342
	ldr r0, [r4, #0x54]
	bl sub_0805E7BC
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	movs r2, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x2d
	strb r0, [r4, #0xe]
	ldr r0, _080A0344 @ =gLCDControls
	adds r3, r0, #0
	adds r3, #0x66
	movs r1, #0xc8
	lsls r1, r1, #3
	strh r1, [r3]
	adds r0, #0x68
	strh r2, [r0]
	ldrb r0, [r4, #0xa]
	movs r1, #0
	movs r2, #1
	bl sub_080A7C18
	adds r0, r4, #0
	movs r1, #1
	bl sub_0808C650
	movs r0, #6
	movs r1, #2
	bl DoFade
	movs r0, #0xf8
	bl PlaySFX
	movs r0, #0xa4
	lsls r0, r0, #1
	bl PlaySFX
	movs r0, #5
	bl PlaySFX
	ldr r0, _080A0348 @ =0x80110000
	bl PlaySFX
_080A0342:
	pop {r4, pc}
	.align 2, 0
_080A0344: .4byte gLCDControls
_080A0348: .4byte 0x80110000

	thumb_func_start sub_080A034C
sub_080A034C: @ 0x080A034C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080A0378
	adds r0, r4, #0
	bl sub_080A0424
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A038C
	ldr r0, _080A0374 @ =gLinkEntity
	movs r1, #0
	bl sub_0805E3A0
	b _080A038C
	.align 2, 0
_080A0374: .4byte gLinkEntity
_080A0378:
	movs r0, #0
	movs r1, #0x3c
	bl sub_0805E4E0
	bl sub_0808C67C
	cmp r0, #0
	beq _080A038C
	movs r0, #4
	strb r0, [r4, #0xc]
_080A038C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A0390
sub_080A0390: @ 0x080A0390
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x3c
	bl sub_0805E4E0
	ldr r0, _080A03B4 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A03B2
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x68
	movs r0, #0xd2
	lsls r0, r0, #1
	strh r0, [r1]
_080A03B2:
	pop {r4, pc}
	.align 2, 0
_080A03B4: .4byte gUnk_03000FD0

	thumb_func_start sub_080A03B8
sub_080A03B8: @ 0x080A03B8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0xa
	bl sub_0805E4E0
	adds r1, r4, #0
	adds r1, #0x68
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A03E4
	movs r0, #6
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	bl sub_0805429C
	adds r1, r4, #0
	bl TextboxNoOverlap
_080A03E4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A03E8
sub_080A03E8: @ 0x080A03E8
	push {lr}
	movs r0, #0
	movs r1, #0xa
	bl sub_0805E4E0
	ldr r0, _080A041C @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _080A041A
	movs r0, #0x5a
	bl sub_0805E510
	ldr r0, _080A0420 @ =gUnk_03003F80
	adds r0, #0x8b
	movs r1, #1
	strb r1, [r0]
	bl sub_0807DF50
	movs r0, #0
	bl sub_0807CD10
	bl sub_0805E780
_080A041A:
	pop {pc}
	.align 2, 0
_080A041C: .4byte gTextBox
_080A0420: .4byte gUnk_03003F80

	thumb_func_start sub_080A0424
sub_080A0424: @ 0x080A0424
	push {lr}
	adds r1, r0, #0
	adds r1, #0x6a
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A0442
	movs r0, #0x40
	strb r0, [r1]
	movs r0, #0xbc
	lsls r0, r0, #1
	bl PlaySFX
_080A0442:
	pop {pc}

	thumb_func_start sub_080A0444
sub_080A0444: @ 0x080A0444
	ldr r3, _080A0460 @ =gUnk_081248B4
	ldrb r1, [r0, #0xf]
	adds r2, r1, #1
	strb r2, [r0, #0xf]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1b
	movs r2, #7
	ands r1, r2
	adds r1, r1, r3
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strh r1, [r0, #0x36]
	bx lr
	.align 2, 0
_080A0460: .4byte gUnk_081248B4

	thumb_func_start sub_080A0464
sub_080A0464: @ 0x080A0464
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #6
	movs r1, #0xac
	movs r2, #6
	bl sub_0805EB00
	cmp r0, #0
	beq _080A048A
	movs r1, #0x2e
	ldrsh r2, [r0, r1]
	movs r1, #0x32
	ldrsh r3, [r0, r1]
	adds r3, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0807DEDC
_080A048A:
	pop {r4, r5, pc}

	thumb_func_start sub_080A048C
sub_080A048C: @ 0x080A048C
	push {lr}
	ldr r2, _080A04A0 @ =gUnk_081248BC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A04A0: .4byte gUnk_081248BC

	thumb_func_start sub_080A04A4
sub_080A04A4: @ 0x080A04A4
	push {r4, lr}
	movs r3, #0
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r4, #4
	movs r1, #4
	strb r1, [r0, #0x1e]
	strb r3, [r0, #0xe]
	ldrb r1, [r0, #0x19]
	movs r2, #0xc0
	orrs r1, r2
	strb r1, [r0, #0x19]
	movs r1, #0x29
	adds r1, r1, r0
	mov ip, r1
	ldrb r1, [r1]
	movs r2, #7
	orrs r1, r2
	mov r2, ip
	strb r1, [r2]
	str r3, [r0, #0x34]
	ldrb r2, [r0, #0x19]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r4
	strb r1, [r0, #0x19]
	bl sub_080A04E8
	pop {r4, pc}

	thumb_func_start sub_080A04E0
sub_080A04E0: @ 0x080A04E0
	push {lr}
	bl sub_080A04E8
	pop {pc}

	thumb_func_start sub_080A04E8
sub_080A04E8: @ 0x080A04E8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x50]
	movs r1, #0x36
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _080A04F8
	rsbs r0, r0, #0
_080A04F8:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r0, r1
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_0805EC9C
	movs r1, #0xe0
	lsls r1, r1, #1
	subs r1, r1, r4
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r4, #0
	bl __divsi3
	adds r4, r0, #0
	ldr r0, [r5, #0x50]
	ldrb r0, [r0, #0xa]
	cmp r0, #0x41
	bne _080A0538
	lsls r3, r4, #1
	cmp r3, #0xc
	bls _080A052E
	movs r3, #0xc
_080A052E:
	movs r0, #0x10
	subs r0, r0, r4
	lsls r4, r0, #8
	orrs r4, r3
	b _080A0540
_080A0538:
	movs r0, #0x10
	subs r0, r0, r4
	lsls r0, r0, #8
	orrs r4, r0
_080A0540:
	ldr r0, _080A054C @ =0x0000FFFF
	ands r4, r0
	ldr r0, _080A0550 @ =gLCDControls
	adds r0, #0x68
	strh r4, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_080A054C: .4byte 0x0000FFFF
_080A0550: .4byte gLCDControls

	thumb_func_start sub_080A0554
sub_080A0554: @ 0x080A0554
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xc]
	cmp r0, #0
	bne _080A0588
	movs r2, #1
	strb r2, [r3, #0xc]
	ldrb r0, [r3, #0xa]
	strb r0, [r3, #0x1e]
	movs r0, #0x29
	adds r0, r0, r3
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x38
	strb r2, [r0]
	adds r0, r3, #0
	bl UpdateSpriteOrderAndFlip
_080A0588:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080A058C
sub_080A058C: @ 0x080A058C
	push {lr}
	ldr r2, _080A05A0 @ =gUnk_081248C4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A05A0: .4byte gUnk_081248C4

	thumb_func_start sub_080A05A4
sub_080A05A4: @ 0x080A05A4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xa]
	cmp r1, #2
	beq _080A05D2
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #9
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_080A0640
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
	b _080A05F0
_080A05D2:
	movs r0, #0
	strb r1, [r4, #0xc]
	ldrh r1, [r4, #0x32]
	adds r1, #1
	strh r1, [r4, #0x32]
	strh r0, [r4, #0x36]
	adds r1, r4, #0
	adds r1, #0x63
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08004260
_080A05F0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A05F4
sub_080A05F4: @ 0x080A05F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	bne _080A060C
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
	b _080A0622
_080A060C:
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080A0616
	bl sub_0805E780
_080A0616:
	adds r0, r4, #0
	bl sub_080A0640
	adds r0, r4, #0
	bl sub_08004274
_080A0622:
	pop {r4, pc}

	thumb_func_start sub_080A0624
sub_080A0624: @ 0x080A0624
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A063C
	bl sub_0805E780
_080A063C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A0640
sub_080A0640: @ 0x080A0640
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080A065E
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #0x64]
	ldr r0, [r0, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0xc
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	b _080A0666
_080A065E:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl sub_0806FA24
_080A0666:
	movs r0, #0
	strh r0, [r4, #0x36]
	pop {r4, pc}

	thumb_func_start sub_080A066C
sub_080A066C: @ 0x080A066C
	push {lr}
	ldr r2, _080A0680 @ =gUnk_0812493C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A0680: .4byte gUnk_0812493C

	thumb_func_start sub_080A0684
sub_080A0684: @ 0x080A0684
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x84
	ldrh r1, [r2]
	ldr r0, _080A070C @ =0x0000FFFF
	cmp r1, r0
	beq _080A06A2
	adds r0, r1, #0
	bl sub_0807CBE4
	cmp r0, #0
	beq _080A06A2
	bl sub_0805E780
_080A06A2:
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r2, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r2, [r4, #0x1e]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldr r0, _080A0710 @ =gUnk_080FD180
	str r0, [r4, #0x48]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x70
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x72
	strh r0, [r1]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _080A0714 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r4, #0
	adds r0, #0x74
	strh r1, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_080A070C: .4byte 0x0000FFFF
_080A0710: .4byte gUnk_080FD180
_080A0714: .4byte gRoomControls

	thumb_func_start sub_080A0718
sub_080A0718: @ 0x080A0718
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #2
	bl sub_08083734
	cmp r0, #0
	beq _080A074A
	movs r2, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0xc
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0x10
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	strb r2, [r4, #0x15]
	ldrh r0, [r4, #0x32]
	adds r0, #0x24
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl sub_080A080C
_080A074A:
	pop {r4, pc}

	thumb_func_start sub_080A074C
sub_080A074C: @ 0x080A074C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080A07B6
	movs r0, #3
	strb r0, [r4, #0xc]
	strh r1, [r4, #0x36]
	adds r0, r4, #0
	adds r0, #0x70
	ldrh r0, [r0]
	strh r0, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x72
	ldrh r0, [r0]
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	movs r1, #0x11
	movs r2, #0x40
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _080A0794
	ldrh r0, [r1, #0x2e]
	adds r0, #0xc
	strh r0, [r1, #0x2e]
	ldrh r0, [r1, #0x32]
	subs r0, #0xc
	strh r0, [r1, #0x32]
_080A0794:
	adds r0, r4, #0
	movs r1, #0x11
	movs r2, #0x40
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _080A07B0
	ldrh r0, [r1, #0x2e]
	subs r0, #0xc
	strh r0, [r1, #0x2e]
	ldrh r0, [r1, #0x32]
	subs r0, #0xc
	strh r0, [r1, #0x32]
_080A07B0:
	ldr r0, _080A07B8 @ =0x0000010B
	bl sub_08004488
_080A07B6:
	pop {r4, pc}
	.align 2, 0
_080A07B8: .4byte 0x0000010B

	thumb_func_start sub_080A07BC
sub_080A07BC: @ 0x080A07BC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	beq _080A07EA
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0xc
	strb r0, [r4, #0xe]
	movs r0, #0x10
	strb r0, [r4, #0x15]
	ldrh r0, [r4, #0x32]
	adds r0, #2
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl sub_080A0870
	ldr r0, _080A07EC @ =0x0000010B
	bl PlaySFX
_080A07EA:
	pop {r4, pc}
	.align 2, 0
_080A07EC: .4byte 0x0000010B

	thumb_func_start sub_080A07F0
sub_080A07F0: @ 0x080A07F0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A0808
	bl sub_0805E780
_080A0808:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A080C
sub_080A080C: @ 0x080A080C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x74
	ldrh r0, [r6]
	subs r0, #1
	adds r5, r4, #0
	adds r5, #0x38
	ldrb r1, [r5]
	bl sub_080001DA
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	ldrh r0, [r6]
	ldrb r1, [r5]
	bl sub_080001DA
	adds r1, r4, #0
	adds r1, #0x78
	strh r0, [r1]
	ldrh r0, [r6]
	adds r0, #1
	ldrb r1, [r5]
	bl sub_080001DA
	adds r1, r4, #0
	adds r1, #0x7a
	strh r0, [r1]
	ldr r4, _080A086C @ =0x00004022
	ldrh r1, [r6]
	subs r1, #1
	ldrb r2, [r5]
	adds r0, r4, #0
	bl sub_0800015E
	ldrh r1, [r6]
	ldrb r2, [r5]
	adds r0, r4, #0
	bl sub_0800015E
	ldrh r1, [r6]
	adds r1, #1
	ldrb r2, [r5]
	adds r0, r4, #0
	bl sub_0800015E
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A086C: .4byte 0x00004022

	thumb_func_start sub_080A0870
sub_080A0870: @ 0x080A0870
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, #0x76
	ldrh r0, [r0]
	adds r5, r6, #0
	adds r5, #0x74
	ldrh r1, [r5]
	subs r1, #1
	adds r4, r6, #0
	adds r4, #0x38
	ldrb r2, [r4]
	bl sub_0800015E
	adds r0, r6, #0
	adds r0, #0x78
	ldrh r0, [r0]
	ldrh r1, [r5]
	ldrb r2, [r4]
	bl sub_0800015E
	adds r0, r6, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	ldrh r1, [r5]
	adds r1, #1
	ldrb r2, [r4]
	bl sub_0800015E
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080A08AC
sub_080A08AC: @ 0x080A08AC
	push {lr}
	ldr r2, _080A08C0 @ =gUnk_08124950
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A08C0: .4byte gUnk_08124950

	thumb_func_start sub_080A08C4
sub_080A08C4: @ 0x080A08C4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	bne _080A08E2
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080A0960
	b _080A08F6
_080A08E2:
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
	adds r0, r4, #0
	movs r1, #1
	bl sub_080A0960
_080A08F6:
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A0910
sub_080A0910: @ 0x080A0910
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	beq _080A0932
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl sub_080A0960
	ldr r0, _080A0934 @ =0x0000010B
	bl PlaySFX
_080A0932:
	pop {r4, pc}
	.align 2, 0
_080A0934: .4byte 0x0000010B

	thumb_func_start sub_080A0938
sub_080A0938: @ 0x080A0938
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A095A
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_080A095A:
	pop {r4, pc}

	thumb_func_start nullsub_127
nullsub_127: @ 0x080A095C
	bx lr
	.align 2, 0

	thumb_func_start sub_080A0960
sub_080A0960: @ 0x080A0960
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _080A0998 @ =gUnk_08124960
	cmp r1, #1
	bne _080A096C
	ldr r5, _080A099C @ =gUnk_0812497A
_080A096C:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _080A09A0 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r6, #0x32
	ldrsh r0, [r4, r6]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r5, #0
	movs r2, #1
	bl sub_0801AF18
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A0998: .4byte gUnk_08124960
_080A099C: .4byte gUnk_0812497A
_080A09A0: .4byte gRoomControls

	thumb_func_start sub_080A09A4
sub_080A09A4: @ 0x080A09A4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080A09D4
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #3
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	ldr r1, _080A0A2C @ =gUnk_02027EB4
	cmp r0, #2
	bne _080A09CA
	ldr r1, _080A0A30 @ =gUnk_0200D654
_080A09CA:
	str r1, [r4, #0x54]
	ldrb r1, [r4, #0xa]
	adds r0, r4, #0
	bl sub_08004260
_080A09D4:
	ldr r0, [r4, #0x50]
	ldrh r0, [r0, #0x24]
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_0806F69C
	ldr r0, [r4, #0x54]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	movs r3, #9
	bl sub_080AE4CC
	cmp r0, #0
	beq _080A09F8
	bl sub_0805E780
_080A09F8:
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0x40
	bgt _080A0A22
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A0A22
	bl sub_0805E780
_080A0A22:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0
_080A0A2C: .4byte gUnk_02027EB4
_080A0A30: .4byte gUnk_0200D654

	thumb_func_start sub_080A0A34
sub_080A0A34: @ 0x080A0A34
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080A0A44
	cmp r0, #1
	beq _080A0A5C
	b _080A0A5E
_080A0A44:
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	ldr r1, _080A0A54 @ =gUnk_08124A18
	cmp r0, #0
	beq _080A0A5E
	ldr r1, _080A0A58 @ =gUnk_08124A10
	b _080A0A5E
	.align 2, 0
_080A0A54: .4byte gUnk_08124A18
_080A0A58: .4byte gUnk_08124A10
_080A0A5C:
	ldr r1, _080A0AB8 @ =gUnk_08124A20
_080A0A5E:
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080A0AB0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r3, #0x40
	orrs r0, r3
	strb r0, [r4, #0x19]
	movs r0, #0x29
	adds r0, r0, r4
	mov ip, r0
	ldrb r2, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	mov r2, ip
	strb r0, [r2]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	orrs r1, r3
	strb r1, [r4, #0x1b]
	ldr r1, _080A0ABC @ =gUnk_080C9CBC
	ldr r0, _080A0AC0 @ =gUnk_02022740
	ldrb r0, [r0, #3]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_0801D2B4
_080A0AB0:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0
_080A0AB8: .4byte gUnk_08124A20
_080A0ABC: .4byte gUnk_080C9CBC
_080A0AC0: .4byte gUnk_02022740

	thumb_func_start sub_080A0AC4
sub_080A0AC4: @ 0x080A0AC4
	push {lr}
	ldrb r1, [r0, #0xa]
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080A0AD0
sub_080A0AD0: @ 0x080A0AD0
	push {lr}
	movs r1, #0x80
	bl sub_08003FC4
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080A0ADC
sub_080A0ADC: @ 0x080A0ADC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0807DD64
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A0AF0
sub_080A0AF0: @ 0x080A0AF0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #5
	bne _080A0B1C
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A0B1C
	bl sub_0805E780
_080A0B1C:
	adds r0, r4, #0
	movs r1, #0x80
	bl sub_08003FC4
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A0B28
sub_080A0B28: @ 0x080A0B28
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	movs r0, #0x32
	ldrsh r3, [r4, r0]
	adds r0, r4, #0
	bl sub_0807DEDC
	ldrh r0, [r4, #0x32]
	subs r0, #0xb0
	strh r0, [r4, #0x32]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	pop {r4, pc}

	thumb_func_start sub_080A0B4C
sub_080A0B4C: @ 0x080A0B4C
	push {lr}
	movs r1, #0x78
	strh r1, [r0, #0x2e]
	movs r1, #0x50
	strh r1, [r0, #0x32]
	movs r1, #0
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080A0B60
sub_080A0B60: @ 0x080A0B60
	push {lr}
	adds r2, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A0B7C
	movs r0, #2
	strb r0, [r2, #0xc]
	movs r0, #0x9b
	lsls r0, r0, #1
	bl PlaySFX
_080A0B7C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080A0B80
sub_080A0B80: @ 0x080A0B80
	ldr r1, [r0, #0x30]
	ldr r2, _080A0B8C @ =0xFFFD8000
	adds r1, r1, r2
	str r1, [r0, #0x30]
	bx lr
	.align 2, 0
_080A0B8C: .4byte 0xFFFD8000

	thumb_func_start sub_080A0B90
sub_080A0B90: @ 0x080A0B90
	push {lr}
	ldr r2, _080A0BA4 @ =gUnk_08124B20
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A0BA4: .4byte gUnk_08124B20

	thumb_func_start sub_080A0BA8
sub_080A0BA8: @ 0x080A0BA8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r2, [r5, #0xc]
	cmp r2, #0
	beq _080A0BB8
	cmp r2, #1
	beq _080A0C08
	b _080A0CE0
_080A0BB8:
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	subs r0, #5
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r5, #0x18]
	movs r0, #9
	strb r0, [r5, #0x1e]
	movs r0, #8
	strb r0, [r5, #0xe]
	strb r2, [r5, #0xf]
	ldrb r1, [r5, #0x19]
	movs r2, #0x3f
	adds r0, r2, #0
	ands r0, r1
	movs r3, #0x40
	orrs r0, r3
	strb r0, [r5, #0x19]
	adds r4, r5, #0
	adds r4, #0x29
	ldrb r1, [r4]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
	ldrb r0, [r5, #0x1b]
	ands r2, r0
	orrs r2, r3
	strb r2, [r5, #0x1b]
	adds r0, r5, #0
	movs r1, #0xbf
	movs r2, #0x48
	movs r3, #0x1e
	bl sub_0806FB00
	b _080A0CE0
_080A0C08:
	ldrb r0, [r5, #0xf]
	cmp r0, #6
	bhi _080A0C46
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A0C46
	strb r2, [r5, #0xe]
	ldrb r2, [r5, #0xf]
	movs r0, #0xb4
	movs r1, #1
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _080A0C40
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA24
	movs r0, #0x68
	strh r0, [r4, #0x32]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FAD8
_080A0C40:
	ldrb r0, [r5, #0xf]
	adds r0, #1
	strb r0, [r5, #0xf]
_080A0C46:
	adds r0, r5, #0
	bl sub_0806FB38
	cmp r0, #0
	bne _080A0C58
	ldr r0, _080A0CE4 @ =gUnk_02000080
	ldrb r0, [r0, #5]
	cmp r0, #1
	bls _080A0CE0
_080A0C58:
	movs r0, #0xbf
	strh r0, [r5, #0x2e]
	movs r0, #0x48
	strh r0, [r5, #0x32]
	movs r0, #0xa
	strb r0, [r5, #0x1e]
	movs r0, #2
	strb r0, [r5, #0xc]
	ldrb r0, [r5, #0xf]
	cmp r0, #6
	bhi _080A0CA0
_080A0C6E:
	ldrb r2, [r5, #0xf]
	movs r0, #0xb4
	movs r1, #1
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _080A0C92
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA24
	movs r0, #0x68
	strh r0, [r4, #0x32]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FAD8
_080A0C92:
	ldrb r0, [r5, #0xf]
	adds r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _080A0C6E
_080A0CA0:
	movs r0, #0xb4
	movs r1, #2
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _080A0CC0
	movs r0, #0xc4
	strh r0, [r4, #0x2e]
	movs r0, #0x2c
	strh r0, [r4, #0x32]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FAB0
_080A0CC0:
	movs r0, #0xb4
	movs r1, #3
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _080A0CE0
	movs r0, #0xb4
	strh r0, [r4, #0x2e]
	movs r0, #0x19
	strh r0, [r4, #0x32]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FAB0
_080A0CE0:
	pop {r4, r5, pc}
	.align 2, 0
_080A0CE4: .4byte gUnk_02000080

	thumb_func_start sub_080A0CE8
sub_080A0CE8: @ 0x080A0CE8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _080A0CF8
	cmp r0, #1
	beq _080A0D28
	b _080A0D66
_080A0CF8:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xb]
	adds r0, #2
	strb r0, [r4, #0x1e]
	ldr r1, _080A0D24 @ =gUnk_08124B10
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r4, #0
	movs r2, #0x68
	movs r3, #0x14
	bl sub_0806FB00
	b _080A0D66
	.align 2, 0
_080A0D24: .4byte gUnk_08124B10
_080A0D28:
	adds r0, r4, #0
	bl sub_0806FB38
	cmp r0, #0
	bne _080A0D3A
	ldr r0, _080A0D68 @ =gUnk_02000080
	ldrb r0, [r0, #5]
	cmp r0, #1
	bls _080A0D66
_080A0D3A:
	ldr r1, _080A0D6C @ =gUnk_08124B10
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x2e]
	movs r0, #0x68
	strh r0, [r4, #0x32]
	ldrb r1, [r4, #0xb]
	movs r0, #7
	subs r1, r0, r1
	adds r3, r4, #0
	adds r3, #0x29
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r0, #2
	strb r0, [r4, #0xc]
_080A0D66:
	pop {r4, pc}
	.align 2, 0
_080A0D68: .4byte gUnk_02000080
_080A0D6C: .4byte gUnk_08124B10

	thumb_func_start sub_080A0D70
sub_080A0D70: @ 0x080A0D70
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r6, [r5, #0xc]
	cmp r6, #0
	bne _080A0DC4
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	subs r0, #5
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r5, #0x18]
	ldrb r2, [r5, #0x19]
	movs r4, #0x3f
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r3, #0x40
	orrs r0, r3
	strb r0, [r5, #0x19]
	movs r0, #0x29
	adds r0, r0, r5
	mov ip, r0
	ldrb r2, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	mov r2, ip
	strb r0, [r2]
	ldrb r0, [r5, #0x1b]
	ands r1, r0
	orrs r1, r3
	strb r1, [r5, #0x1b]
	movs r0, #0xb
	strb r0, [r5, #0x1e]
	bl sub_08000E50
	ands r0, r4
	adds r0, #0x40
	strb r0, [r5, #0xe]
	strb r6, [r5, #0xf]
_080A0DC4:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _080A0E02
	movs r0, #4
	strb r0, [r5, #0xe]
	ldr r2, _080A0E04 @ =gUnk_08124B30
	ldrb r0, [r5, #0xf]
	adds r1, r0, #1
	strb r1, [r5, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r0, #2
	strb r0, [r5, #0x1e]
	ldrb r0, [r5, #0xf]
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080A0E02
	bl sub_08000E50
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x40
	strb r0, [r5, #0xe]
	strb r4, [r5, #0xf]
_080A0E02:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A0E04: .4byte gUnk_08124B30

	thumb_func_start sub_080A0E08
sub_080A0E08: @ 0x080A0E08
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _080A0E26
	movs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	subs r0, #5
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0x18]
	movs r0, #0xf
	strb r0, [r2, #0x1e]
_080A0E26:
	pop {pc}

	thumb_func_start sub_080A0E28
sub_080A0E28: @ 0x080A0E28
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	bne _080A0E36
	movs r0, #1
	strb r0, [r1, #0xc]
_080A0E36:
	ldr r0, _080A0E48 @ =gRoomControls
	str r1, [r0, #0x30]
	ldr r0, _080A0E4C @ =gLinkEntity
	ldr r3, _080A0E50 @ =0xFFD80000
	movs r2, #0
	bl PositionRelative
	pop {pc}
	.align 2, 0
_080A0E48: .4byte gRoomControls
_080A0E4C: .4byte gLinkEntity
_080A0E50: .4byte 0xFFD80000

	thumb_func_start sub_080A0E54
sub_080A0E54: @ 0x080A0E54
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xd]
	cmp r0, #3
	bls _080A0E64
	bl sub_0805E780
_080A0E64:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080A0E76
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	adds r0, r4, #0
	bl sub_08004260
_080A0E76:
	ldr r0, [r4, #0x50]
	ldrb r3, [r4, #0xa]
	adds r1, r4, #0
	movs r2, #0
	bl sub_0806FA90
	adds r2, r4, #0
	adds r2, #0x63
	ldrb r0, [r2]
	ldrb r1, [r4, #0xa]
	subs r0, r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A0E98
sub_080A0E98: @ 0x080A0E98
	push {lr}
	ldr r2, _080A0EAC @ =gUnk_08124C08
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A0EAC: .4byte gUnk_08124C08

	thumb_func_start sub_080A0EB0
sub_080A0EB0: @ 0x080A0EB0
	push {r4, r5, lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0x2e
	ldrsh r2, [r0, r1]
	ldr r3, _080A0EE8 @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r2, r2, r1
	asrs r2, r2, #4
	movs r4, #0x3f
	ands r2, r4
	movs r5, #0x32
	ldrsh r1, [r0, r5]
	ldrh r3, [r3, #8]
	subs r1, r1, r3
	asrs r1, r1, #4
	ands r1, r4
	lsls r1, r1, #6
	orrs r2, r1
	adds r0, #0x80
	strh r2, [r0]
	ldr r2, _080A0EEC @ =0x0000407D
	ldrh r1, [r0]
	adds r0, r2, #0
	movs r2, #1
	bl sub_0800015E
	pop {r4, r5, pc}
	.align 2, 0
_080A0EE8: .4byte gRoomControls
_080A0EEC: .4byte 0x0000407D

	thumb_func_start sub_080A0EF0
sub_080A0EF0: @ 0x080A0EF0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldrh r0, [r0]
	movs r1, #1
	bl sub_080002B0
	ldr r1, _080A0F1C @ =0x0000407D
	cmp r0, r1
	beq _080A0F18
	bl sub_08078B48
	ldr r1, _080A0F20 @ =gLinkEntity
	ldr r0, [r4, #0x2c]
	str r0, [r1, #0x2c]
	ldrh r0, [r4, #0x32]
	adds r0, #4
	strh r0, [r1, #0x32]
	bl sub_0805E780
_080A0F18:
	pop {r4, pc}
	.align 2, 0
_080A0F1C: .4byte 0x0000407D
_080A0F20: .4byte gLinkEntity

	thumb_func_start sub_080A0F24
sub_080A0F24: @ 0x080A0F24
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080A0F40 @ =gUnk_08124C10
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_080A11E0
	pop {r4, pc}
	.align 2, 0
_080A0F40: .4byte gUnk_08124C10

	thumb_func_start sub_080A0F44
sub_080A0F44: @ 0x080A0F44
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #1
	strb r6, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x59
	movs r0, #8
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080A0FA8 @ =gUnk_080FD460
	str r0, [r5, #0x48]
	adds r0, r5, #0
	movs r1, #6
	bl sub_0805E3A0
	adds r0, r5, #0
	bl sub_080A11C0
	cmp r0, #0
	beq _080A0FA4
	ldr r1, _080A0FAC @ =gLinkEntity
	ldrh r0, [r5, #0x2e]
	movs r4, #0
	strh r0, [r1, #0x2e]
	ldrh r0, [r5, #0x32]
	strh r0, [r1, #0x32]
	movs r0, #3
	bl sub_08078A90
	bl sub_08078B48
	bl sub_0805E544
	movs r0, #0x89
	lsls r0, r0, #1
	bl PlaySFX
	movs r0, #3
	strb r0, [r5, #0xc]
	strb r4, [r5, #0xd]
	adds r0, r5, #0
	adds r0, #0x68
	strb r6, [r0]
_080A0FA4:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A0FA8: .4byte gUnk_080FD460
_080A0FAC: .4byte gLinkEntity

	thumb_func_start sub_080A0FB0
sub_080A0FB0: @ 0x080A0FB0
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080A11C0
	adds r1, r0, #0
	cmp r1, #0
	beq _080A0FF8
	adds r0, r5, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A0FFE
	ldr r1, _080A0FF4 @ =gLinkEntity
	ldrh r0, [r5, #0x2e]
	movs r4, #0
	strh r0, [r1, #0x2e]
	ldrh r0, [r5, #0x32]
	strh r0, [r1, #0x32]
	movs r0, #3
	bl sub_08078A90
	bl sub_08078B48
	bl sub_0805E544
	movs r0, #0x89
	lsls r0, r0, #1
	bl PlaySFX
	movs r0, #2
	strb r0, [r5, #0xc]
	strb r4, [r5, #0xd]
	b _080A0FFE
	.align 2, 0
_080A0FF4: .4byte gLinkEntity
_080A0FF8:
	adds r0, r5, #0
	adds r0, #0x68
	strb r1, [r0]
_080A0FFE:
	pop {r4, r5, pc}

	thumb_func_start sub_080A1000
sub_080A1000: @ 0x080A1000
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xd]
	cmp r1, #1
	beq _080A102A
	cmp r1, #1
	bgt _080A1014
	cmp r1, #0
	beq _080A101E
	b _080A1088
_080A1014:
	cmp r1, #2
	beq _080A1038
	cmp r1, #3
	beq _080A1064
	b _080A1088
_080A101E:
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	b _080A10D4
_080A102A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A10D4
	b _080A1070
_080A1038:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A1056
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	adds r0, #0xf5
	bl PlaySFX
	b _080A10D4
_080A1056:
	ldr r0, _080A1060 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #7
	b _080A10C2
	.align 2, 0
_080A1060: .4byte gUnk_030010A0
_080A1064:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A107C
_080A1070:
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	b _080A10D4
_080A107C:
	ldr r0, _080A1084 @ =gUnk_030010A0
	ldr r0, [r0]
	b _080A10C2
	.align 2, 0
_080A1084: .4byte gUnk_030010A0
_080A1088:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A10BC
	ldr r0, _080A10B4 @ =gRoomControls
	ldrb r0, [r0, #4]
	cmp r0, #3
	bne _080A10A2
	movs r0, #0xf9
	bl sub_0807CCB4
_080A10A2:
	ldrb r1, [r4, #0xb]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080A10B8 @ =gUnk_0813ADEC
	adds r0, r0, r1
	bl sub_08080840
	b _080A10D4
	.align 2, 0
_080A10B4: .4byte gRoomControls
_080A10B8: .4byte gUnk_0813ADEC
_080A10BC:
	ldr r0, _080A10D8 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #1
_080A10C2:
	ands r0, r1
	cmp r0, #0
	bne _080A10D4
	ldr r0, _080A10DC @ =gLinkEntity
	ldrb r1, [r0, #0x14]
	adds r1, #2
	movs r2, #6
	ands r1, r2
	strb r1, [r0, #0x14]
_080A10D4:
	pop {r4, pc}
	.align 2, 0
_080A10D8: .4byte gUnk_030010A0
_080A10DC: .4byte gLinkEntity

	thumb_func_start sub_080A10E0
sub_080A10E0: @ 0x080A10E0
	push {r4, lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0xd]
	cmp r1, #1
	beq _080A110E
	cmp r1, #1
	bgt _080A10F4
	cmp r1, #0
	beq _080A10FE
	b _080A1180
_080A10F4:
	cmp r1, #2
	beq _080A1124
	cmp r1, #3
	beq _080A1148
	b _080A1180
_080A10FE:
	movs r0, #1
	strb r0, [r2, #0xd]
	movs r0, #0x1e
	strb r0, [r2, #0xe]
	adds r0, #0xf6
	bl PlaySFX
	b _080A11BA
_080A110E:
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080A1130
	ldr r0, _080A1120 @ =gUnk_030010A0
	ldr r0, [r0]
	b _080A1162
	.align 2, 0
_080A1120: .4byte gUnk_030010A0
_080A1124:
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A113C
_080A1130:
	ldrb r0, [r2, #0xd]
	adds r0, #1
	strb r0, [r2, #0xd]
	movs r0, #0x1e
	strb r0, [r2, #0xe]
	b _080A11BA
_080A113C:
	ldr r0, _080A1144 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #3
	b _080A1162
	.align 2, 0
_080A1144: .4byte gUnk_030010A0
_080A1148:
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A115C
	ldrb r0, [r2, #0xd]
	adds r0, #1
	strb r0, [r2, #0xd]
	b _080A11BA
_080A115C:
	ldr r0, _080A1178 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #7
_080A1162:
	ands r0, r1
	cmp r0, #0
	bne _080A11BA
	ldr r0, _080A117C @ =gLinkEntity
	ldrb r1, [r0, #0x14]
	adds r1, #2
	movs r2, #6
	ands r1, r2
	strb r1, [r0, #0x14]
	b _080A11BA
	.align 2, 0
_080A1178: .4byte gUnk_030010A0
_080A117C: .4byte gLinkEntity
_080A1180:
	ldr r4, _080A11A0 @ =gLinkEntity
	ldrb r3, [r4, #0x14]
	cmp r3, #4
	beq _080A11A8
	ldr r0, _080A11A4 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080A11BA
	adds r0, r3, #2
	movs r1, #6
	ands r0, r1
	strb r0, [r4, #0x14]
	b _080A11BA
	.align 2, 0
_080A11A0: .4byte gLinkEntity
_080A11A4: .4byte gUnk_030010A0
_080A11A8:
	movs r0, #0
	movs r1, #1
	strb r1, [r2, #0xc]
	strb r0, [r2, #0xd]
	ldr r0, _080A11BC @ =gUnk_03003F80
	adds r0, #0x8b
	strb r1, [r0]
	bl sub_0805E564
_080A11BA:
	pop {r4, pc}
	.align 2, 0
_080A11BC: .4byte gUnk_03003F80

	thumb_func_start sub_080A11C0
sub_080A11C0: @ 0x080A11C0
	push {lr}
	adds r1, r0, #0
	ldr r0, _080A11D8 @ =gLinkEntity
	movs r2, #0x36
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _080A11DC
	adds r0, r1, #0
	bl sub_08017850
	b _080A11DE
	.align 2, 0
_080A11D8: .4byte gLinkEntity
_080A11DC:
	movs r0, #0
_080A11DE:
	pop {pc}

	thumb_func_start sub_080A11E0
sub_080A11E0: @ 0x080A11E0
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x59
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A1202
	movs r0, #8
	strb r0, [r1]
	ldrb r0, [r2, #0x1e]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r2, #0x1e]
_080A1202:
	pop {pc}

	thumb_func_start sub_080A1204
sub_080A1204: @ 0x080A1204
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r5, r0, #0
	cmp r5, #0
	bne _080A1260
	adds r0, #1
	strb r0, [r4, #0xc]
	bl sub_080A1514
	lsls r0, r0, #2
	ldr r1, _080A126C @ =gUnk_08124C20
	adds r0, r0, r1
	ldrh r2, [r0]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r2, r4, #0
	adds r2, #0x68
	strh r1, [r2]
	adds r1, r4, #0
	adds r1, #0x6a
	strh r5, [r1]
	ldrh r1, [r0, #2]
	adds r0, r4, #0
	adds r0, #0x6c
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x6e
	movs r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x70
	movs r2, #0
	movs r1, #9
_080A124A:
	strb r2, [r0]
	adds r0, #1
	subs r1, #1
	cmp r1, #0
	bge _080A124A
	adds r0, r4, #0
	bl sub_0807DD64
	adds r0, r4, #0
	bl sub_0806EC20
_080A1260:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	pop {r4, r5, pc}
	.align 2, 0
_080A126C: .4byte gUnk_08124C20

	thumb_func_start sub_080A1270
sub_080A1270: @ 0x080A1270
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	movs r6, #0
	ldr r0, [r0, #0x64]
	str r0, [sp, #4]
	mov r4, sb
	adds r4, #0x70
	ldr r0, _080A12F8 @ =gRoomControls
	movs r2, #0xd8
	lsls r2, r2, #2
	adds r1, r2, #0
	ldrh r3, [r0, #6]
	adds r1, r1, r3
	movs r7, #0xd4
	lsls r7, r7, #2
	adds r2, r7, #0
	ldrh r0, [r0, #8]
	adds r2, r2, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	movs r0, #9
	mov sl, r0
	movs r1, #1
	rsbs r1, r1, #0
	adds r5, r1, #0
_080A12B2:
	ldr r7, [sp, #4]
	ldr r2, [r7]
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _080A1300
	ldr r0, [r2, #4]
	cmp r0, #0
	beq _080A132C
	cmp r2, #0
	beq _080A132C
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	cmp r8, r0
	bgt _080A132E
	movs r7, #0x32
	ldrsh r0, [r2, r7]
	cmp r3, r0
	bgt _080A132E
	ldrb r0, [r2, #0xa]
	adds r0, #1
	strb r0, [r4]
	movs r0, #1
	strb r0, [r2, #0xb]
	adds r6, #1
	ldr r1, _080A12FC @ =gUnk_08124EC8
	ldrb r0, [r2, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	str r3, [sp]
	bl PlaySFX
	ldr r3, [sp]
	b _080A132E
	.align 2, 0
_080A12F8: .4byte gRoomControls
_080A12FC: .4byte gUnk_08124EC8
_080A1300:
	cmp r0, #0
	ble _080A132E
	adds r6, #1
	ldr r0, [r2, #4]
	cmp r0, #0
	beq _080A132C
	cmp r2, #0
	beq _080A132C
	mov r1, r8
	adds r1, #4
	movs r7, #0x2e
	ldrsh r0, [r2, r7]
	cmp r1, r0
	ble _080A131E
	strh r1, [r2, #0x2e]
_080A131E:
	adds r1, r3, #4
	movs r7, #0x32
	ldrsh r0, [r2, r7]
	cmp r1, r0
	ble _080A132E
	strh r1, [r2, #0x32]
	b _080A132E
_080A132C:
	strb r5, [r4]
_080A132E:
	movs r0, #1
	rsbs r0, r0, #0
	add sl, r0
	adds r4, #1
	ldr r1, [sp, #4]
	adds r1, #4
	str r1, [sp, #4]
	mov r2, sl
	cmp r2, #0
	bge _080A12B2
	mov r0, sb
	adds r0, #0x6a
	strh r6, [r0]
	ldr r0, _080A136C @ =gUnk_03003F80
	adds r0, #0x27
	movs r1, #0xff
	strb r1, [r0]
	mov r1, sb
	adds r1, #0x68
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080A1370
	movs r0, #0xe2
	bl PlaySFX
	bl sub_08050384
	b _080A1376
	.align 2, 0
_080A136C: .4byte gUnk_03003F80
_080A1370:
	ldr r1, _080A1384 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_080A1376:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A1384: .4byte gUnk_02033280

	thumb_func_start sub_080A1388
sub_080A1388: @ 0x080A1388
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r5, #0x70
	ldr r4, [r0, #0x64]
	movs r6, #9
_080A1392:
	ldr r1, [r4]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	blt _080A13A6
	cmp r1, #0
	beq _080A13A6
	adds r0, r1, #0
	bl sub_0805E79C
_080A13A6:
	subs r6, #1
	adds r5, #1
	adds r4, #4
	cmp r6, #0
	bge _080A1392
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080A13B4
sub_080A13B4: @ 0x080A13B4
	push {r4, lr}
	adds r4, r1, #0
	adds r1, r0, #0
	adds r1, #0x6a
	adds r0, #0x6c
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	blt _080A13D8
	ldr r0, _080A13D4 @ =0x0000300C
	bl TextboxTryNoOverlap
	movs r0, #1
	b _080A13E0
	.align 2, 0
_080A13D4: .4byte 0x0000300C
_080A13D8:
	ldr r0, _080A13E4 @ =0x00003005
	bl TextboxTryNoOverlap
	movs r0, #0
_080A13E0:
	str r0, [r4, #0x14]
	pop {r4, pc}
	.align 2, 0
_080A13E4: .4byte 0x00003005

	thumb_func_start sub_080A13E8
sub_080A13E8: @ 0x080A13E8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_080A1514
	lsls r0, r0, #2
	ldr r1, _080A1408 @ =gUnk_08124EA0
	adds r4, r0, r1
	movs r6, #0
	ldrb r0, [r4]
	cmp r0, #0x5c
	beq _080A141C
	cmp r0, #0x5c
	bgt _080A140C
	cmp r0, #0x3f
	beq _080A1412
	b _080A1444
	.align 2, 0
_080A1408: .4byte gUnk_08124EA0
_080A140C:
	cmp r0, #0x63
	beq _080A1430
	b _080A1444
_080A1412:
	ldr r0, _080A1418 @ =gUnk_02002A40
	adds r0, #0xbb
	b _080A1424
	.align 2, 0
_080A1418: .4byte gUnk_02002A40
_080A141C:
	ldr r0, _080A142C @ =gUnk_02002A40
	movs r1, #0x8b
	lsls r1, r1, #1
	adds r0, r0, r1
_080A1424:
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A1444
	b _080A1454
	.align 2, 0
_080A142C: .4byte gUnk_02002A40
_080A1430:
	movs r0, #0x4f
	bl GetProgressFlag
	cmp r0, #0
	bne _080A1442
	movs r0, #0x4f
	bl sub_0807CD04
	b _080A1444
_080A1442:
	movs r6, #1
_080A1444:
	cmp r6, #0
	bne _080A1454
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	movs r2, #0
	bl sub_080A7C18
	b _080A145C
_080A1454:
	adds r1, r5, #0
	adds r1, #0x6e
	movs r0, #2
	strh r0, [r1]
_080A145C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080A1460
sub_080A1460: @ 0x080A1460
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080A1514
	adds r1, r5, #0
	adds r1, #0x70
	movs r4, #0
	ldr r3, _080A149C @ =gUnk_08124ECC
	movs r2, #9
_080A1472:
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, r0, r3
	ldrb r0, [r0]
	adds r4, r4, r0
	adds r1, #1
	subs r2, #1
	cmp r2, #0
	bge _080A1472
	adds r0, r4, #0
	bl ModRupees
	ldr r0, _080A14A0 @ =0x00003007
	adds r1, r5, #0
	bl TextboxNoOverlap
	ldr r1, _080A14A4 @ =gTextBox
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [r1, #0x10]
	pop {r4, r5, pc}
	.align 2, 0
_080A149C: .4byte gUnk_08124ECC
_080A14A0: .4byte 0x00003007
_080A14A4: .4byte gTextBox

	thumb_func_start sub_080A14A8
sub_080A14A8: @ 0x080A14A8
	push {r4, lr}
	bl sub_080A1514
	adds r4, r0, #0
	adds r4, #1
	cmp r4, #9
	ble _080A14B8
	movs r4, #9
_080A14B8:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080A14C8
	movs r0, #0x4b
	bl sub_0807CD04
	b _080A14CE
_080A14C8:
	movs r0, #0x4b
	bl sub_0807CD80
_080A14CE:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _080A14DE
	movs r0, #0x4c
	bl sub_0807CD04
	b _080A14E4
_080A14DE:
	movs r0, #0x4c
	bl sub_0807CD80
_080A14E4:
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _080A14F4
	movs r0, #0x4d
	bl sub_0807CD04
	b _080A14FA
_080A14F4:
	movs r0, #0x4d
	bl sub_0807CD80
_080A14FA:
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _080A150A
	movs r0, #0x4e
	bl sub_0807CD04
	b _080A1510
_080A150A:
	movs r0, #0x4e
	bl sub_0807CD80
_080A1510:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A1514
sub_080A1514: @ 0x080A1514
	push {r4, lr}
	movs r0, #0x4b
	bl GetProgressFlag
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	movs r0, #0x4c
	bl GetProgressFlag
	cmp r0, #0
	beq _080A1530
	movs r0, #2
	orrs r4, r0
_080A1530:
	movs r0, #0x4d
	bl GetProgressFlag
	cmp r0, #0
	beq _080A153E
	movs r0, #4
	orrs r4, r0
_080A153E:
	movs r0, #0x4e
	bl GetProgressFlag
	cmp r0, #0
	beq _080A154C
	movs r0, #8
	orrs r4, r0
_080A154C:
	adds r0, r4, #0
	pop {r4, pc}

	thumb_func_start sub_080A1550
sub_080A1550: @ 0x080A1550
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r1
	movs r0, #0
	str r0, [r1, #0x14]
	movs r0, #0xb9
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _080A15FE
	movs r0, #0x28
	bl sub_0801D8E0
	str r0, [r4, #0x64]
	cmp r0, #0
	bne _080A1582
	adds r0, r4, #0
	bl sub_0805E79C
	b _080A15FE
_080A1582:
	mov r0, r8
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl sub_0807DAD0
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
	bl sub_080A1514
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080A15B4 @ =gUnk_08124C48
	adds r5, r1, r0
	ldr r4, [r4, #0x64]
	mov sb, r4
	ldr r7, _080A15B8 @ =gRoomControls
	movs r6, #9
_080A15A8:
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bgt _080A15BC
	movs r4, #0
	b _080A15E6
	.align 2, 0
_080A15B4: .4byte gUnk_08124C48
_080A15B8: .4byte gRoomControls
_080A15BC:
	movs r0, #0
	ldrsh r1, [r5, r0]
	subs r1, #1
	movs r0, #0x41
	bl CreateEnemy
	adds r4, r0, #0
	cmp r4, #0
	beq _080A15E6
	ldrh r0, [r5, #2]
	ldrh r1, [r7, #6]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	ldrh r0, [r5, #4]
	ldrh r1, [r7, #8]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
_080A15E6:
	mov r0, sb
	adds r0, #4
	mov sb, r0
	subs r0, #4
	stm r0!, {r4}
	subs r6, #1
	adds r5, #6
	cmp r6, #0
	bge _080A15A8
	movs r0, #1
	mov r1, r8
	str r0, [r1, #0x14]
_080A15FE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080A1608
sub_080A1608: @ 0x080A1608
	push {r4, lr}
	ldr r4, _080A163C @ =0x00003002
	movs r0, #1
	bl sub_0807CC3C
	cmp r0, #0
	beq _080A1618
	adds r4, #4
_080A1618:
	adds r0, r4, #0
	bl TextboxTryNoOverlap
	ldr r4, _080A1640 @ =gTextBox
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #6]
	strb r1, [r4, #7]
	bl sub_080A1514
	lsls r0, r0, #2
	ldr r1, _080A1644 @ =gUnk_08124C20
	adds r0, r0, r1
	ldrh r1, [r0]
	str r1, [r4, #0x10]
	ldrh r0, [r0, #2]
	str r0, [r4, #0x14]
	pop {r4, pc}
	.align 2, 0
_080A163C: .4byte 0x00003002
_080A1640: .4byte gTextBox
_080A1644: .4byte gUnk_08124C20

	thumb_func_start sub_080A1648
sub_080A1648: @ 0x080A1648
	push {r4, lr}
	ldr r4, _080A1684 @ =0x0000407F
	ldr r1, _080A1688 @ =0x00000D36
	adds r0, r4, #0
	movs r2, #1
	bl sub_0807B314
	ldr r1, _080A168C @ =0x00000D37
	adds r0, r4, #0
	movs r2, #1
	bl sub_0807B314
	ldr r1, _080A1690 @ =0x00000D38
	adds r0, r4, #0
	movs r2, #1
	bl sub_0807B314
	subs r4, #1
	ldr r1, _080A1694 @ =0x00000D75
	adds r0, r4, #0
	movs r2, #1
	bl sub_0807B314
	ldr r1, _080A1698 @ =0x00000E75
	adds r0, r4, #0
	movs r2, #1
	bl sub_0807B314
	pop {r4, pc}
	.align 2, 0
_080A1684: .4byte 0x0000407F
_080A1688: .4byte 0x00000D36
_080A168C: .4byte 0x00000D37
_080A1690: .4byte 0x00000D38
_080A1694: .4byte 0x00000D75
_080A1698: .4byte 0x00000E75

	thumb_func_start sub_080A169C
sub_080A169C: @ 0x080A169C
	push {lr}
	ldr r0, _080A16C8 @ =0x00000D36
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _080A16CC @ =0x00000D37
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _080A16D0 @ =0x00000D38
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _080A16D4 @ =0x00000D75
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _080A16D8 @ =0x00000E75
	movs r1, #1
	bl sub_0807BA8C
	pop {pc}
	.align 2, 0
_080A16C8: .4byte 0x00000D36
_080A16CC: .4byte 0x00000D37
_080A16D0: .4byte 0x00000D38
_080A16D4: .4byte 0x00000D75
_080A16D8: .4byte 0x00000E75

	thumb_func_start sub_080A16DC
sub_080A16DC: @ 0x080A16DC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080A1700 @ =gUnk_08124ED0
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_080A1DCC
	adds r0, r4, #0
	bl sub_080A1C9C
	pop {r4, pc}
	.align 2, 0
_080A1700: .4byte gUnk_08124ED0

	thumb_func_start sub_080A1704
sub_080A1704: @ 0x080A1704
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	movs r0, #0x7b
	bl sub_0807CBE4
	cmp r0, #0
	beq _080A171E
	bl sub_0805E780
_080A171E:
	ldr r0, _080A1828 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x45
	bhi _080A181C
	movs r0, #0x40
	bl sub_0801D8E0
	adds r7, r0, #0
	cmp r7, #0
	beq _080A181C
	movs r6, #0
	movs r0, #1
	mov sb, r0
	mov r2, sb
	mov r1, sl
	strb r2, [r1, #0xc]
	str r7, [r1, #0x64]
	adds r1, #0x6e
	movs r3, #0
	mov r8, r3
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r1]
	mov r0, sl
	adds r0, #0x6c
	strh r6, [r0]
	mov r0, sl
	str r0, [r7]
	movs r0, #0x5c
	movs r1, #0
	bl CreateEnemy
	adds r1, r0, #0
	str r7, [r1, #0x64]
	str r1, [r7, #4]
	movs r0, #0x5d
	movs r1, #0
	bl CreateEnemy
	adds r1, r0, #0
	ldr r4, _080A182C @ =gRoomControls
	movs r2, #0x80
	lsls r2, r2, #2
	adds r5, r2, #0
	ldrh r3, [r4, #6]
	adds r0, r5, r3
	strh r0, [r1, #0x2e]
	movs r2, #0xcc
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r3, [r4, #8]
	adds r0, r0, r3
	strh r0, [r1, #0x32]
	str r7, [r1, #0x64]
	str r1, [r7, #8]
	movs r0, #0x5d
	movs r1, #1
	bl CreateEnemy
	adds r1, r0, #0
	movs r2, #0x98
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r3, [r4, #6]
	adds r0, r0, r3
	strh r0, [r1, #0x2e]
	adds r2, #0xb0
	adds r0, r2, #0
	ldrh r3, [r4, #8]
	adds r0, r0, r3
	strh r0, [r1, #0x32]
	str r7, [r1, #0x64]
	str r1, [r7, #0xc]
	ldr r2, _080A1830 @ =gLCDControls
	ldr r0, _080A1834 @ =0x00001E07
	strh r0, [r2, #0x2c]
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	mov r0, sl
	adds r0, #0x70
	strh r6, [r0]
	adds r0, #2
	strh r6, [r0]
	adds r0, #2
	mov r1, r8
	strb r1, [r0]
	adds r0, #6
	strb r1, [r0]
	subs r0, #4
	movs r1, #0xc0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, _080A1838 @ =gUnk_030010A0
	adds r0, #0x39
	mov r2, sb
	strb r2, [r0]
	ldr r2, _080A183C @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xa
	orrs r0, r1
	str r0, [r2, #0x30]
	ldrh r3, [r4, #6]
	adds r5, r5, r3
	strh r5, [r2, #0x16]
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r1, #0
	ldrh r4, [r4, #8]
	adds r0, r0, r4
	strh r0, [r2, #0x18]
	ldr r0, _080A1840 @ =0x80100000
	bl PlaySFX
	ldr r0, _080A1844 @ =gUnk_02033A90
	movs r2, #0x86
	lsls r2, r2, #4
	adds r1, r0, r2
	ldr r3, _080A1848 @ =0x00000864
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r1]
_080A181C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A1828: .4byte gUnk_03003DBC
_080A182C: .4byte gRoomControls
_080A1830: .4byte gLCDControls
_080A1834: .4byte 0x00001E07
_080A1838: .4byte gUnk_030010A0
_080A183C: .4byte gUnk_03003F80
_080A1840: .4byte 0x80100000
_080A1844: .4byte gUnk_02033A90
_080A1848: .4byte 0x00000864

	thumb_func_start sub_080A184C
sub_080A184C: @ 0x080A184C
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x6e
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A1874
	movs r0, #2
	strb r0, [r3, #0xc]
	subs r1, #2
	movs r2, #8
	movs r0, #8
	strh r0, [r1]
	ldr r0, [r3, #0x64]
	ldr r0, [r0, #4]
	adds r0, #0x45
	strb r2, [r0]
_080A1874:
	ldr r2, _080A1894 @ =gUnk_03003F80
	ldr r1, _080A1898 @ =gRoomControls
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r2, #0x16]
	movs r3, #0x84
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	strh r0, [r2, #0x18]
	pop {pc}
	.align 2, 0
_080A1894: .4byte gUnk_03003F80
_080A1898: .4byte gRoomControls

	thumb_func_start sub_080A189C
sub_080A189C: @ 0x080A189C
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x64]
	ldr r0, [r0, #4]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A18E6
	movs r0, #3
	strb r0, [r3, #0xc]
	movs r0, #0x23
	strb r0, [r3, #0xe]
	adds r1, r3, #0
	adds r1, #0x6c
	movs r2, #1
	movs r0, #1
	strh r0, [r1]
	adds r1, #0xc
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x7b
	strb r2, [r0]
	ldr r0, [r3, #0x64]
	ldr r0, [r0, #8]
	adds r0, #0x45
	movs r1, #0xc
	strb r1, [r0]
	movs r0, #0x94
	lsls r0, r0, #1
	bl PlaySFX
	movs r0, #0x96
	movs r1, #1
	bl sub_08080964
_080A18E6:
	ldr r2, _080A1904 @ =gUnk_03003F80
	ldr r1, _080A1908 @ =gRoomControls
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r2, #0x16]
	movs r3, #0x84
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	strh r0, [r2, #0x18]
	pop {pc}
	.align 2, 0
_080A1904: .4byte gUnk_03003F80
_080A1908: .4byte gRoomControls

	thumb_func_start sub_080A190C
sub_080A190C: @ 0x080A190C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080A1FF0
	ldr r3, [r4, #0x64]
	ldr r2, [r3, #8]
	adds r0, r2, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A197C
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_080A20B8
	cmp r0, #0
	beq _080A1956
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x6c
	movs r0, #0x10
	strh r0, [r1]
	adds r1, #0xc
	movs r0, #0xc0
	strh r0, [r1]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	ldrb r1, [r0, #0x14]
	adds r0, r4, #0
	bl sub_080A1D70
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	adds r0, #0x45
	movs r1, #0x18
	strb r1, [r0]
_080A1956:
	ldr r2, _080A1974 @ =gUnk_03003F80
	ldr r1, _080A1978 @ =gRoomControls
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r2, #0x16]
	movs r3, #0x84
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	strh r0, [r2, #0x18]
	b _080A1988
	.align 2, 0
_080A1974: .4byte gUnk_03003F80
_080A1978: .4byte gRoomControls
_080A197C:
	ldr r1, _080A198C @ =gUnk_03003F80
	ldrh r0, [r2, #0x2e]
	strh r0, [r1, #0x16]
	ldr r0, [r3, #8]
	ldrh r0, [r0, #0x32]
	strh r0, [r1, #0x18]
_080A1988:
	pop {r4, pc}
	.align 2, 0
_080A198C: .4byte gUnk_03003F80

	thumb_func_start sub_080A1990
sub_080A1990: @ 0x080A1990
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x64]
	ldr r0, [r1, #4]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A19D6
	ldr r0, [r1, #8]
	adds r0, #0x45
	movs r1, #0xc
	strb r1, [r0]
	movs r0, #5
	strb r0, [r2, #0xc]
	movs r0, #0x23
	strb r0, [r2, #0xe]
	adds r1, r2, #0
	adds r1, #0x6c
	movs r0, #2
	strh r0, [r1]
	adds r1, #0xc
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1]
	adds r1, #3
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x94
	lsls r0, r0, #1
	bl PlaySFX
	movs r0, #0x96
	movs r1, #1
	bl sub_08080964
_080A19D6:
	ldr r2, _080A19F4 @ =gUnk_03003F80
	ldr r1, _080A19F8 @ =gRoomControls
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r2, #0x16]
	movs r3, #0x84
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	strh r0, [r2, #0x18]
	pop {pc}
	.align 2, 0
_080A19F4: .4byte gUnk_03003F80
_080A19F8: .4byte gRoomControls

	thumb_func_start sub_080A19FC
sub_080A19FC: @ 0x080A19FC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080A1FF0
	ldr r3, [r4, #0x64]
	ldr r2, [r3, #0xc]
	adds r0, r2, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A1A6C
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_080A20B8
	cmp r0, #0
	beq _080A1A46
	movs r0, #6
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x6c
	movs r0, #0x20
	strh r0, [r1]
	adds r1, #0xc
	movs r0, #0xc0
	strh r0, [r1]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	ldrb r1, [r0, #0x14]
	adds r0, r4, #0
	bl sub_080A1D70
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	adds r0, #0x45
	movs r1, #0x18
	strb r1, [r0]
_080A1A46:
	ldr r2, _080A1A64 @ =gUnk_03003F80
	ldr r1, _080A1A68 @ =gRoomControls
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r2, #0x16]
	movs r3, #0x84
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	strh r0, [r2, #0x18]
	b _080A1A78
	.align 2, 0
_080A1A64: .4byte gUnk_03003F80
_080A1A68: .4byte gRoomControls
_080A1A6C:
	ldr r1, _080A1A7C @ =gUnk_03003F80
	ldrh r0, [r2, #0x2e]
	strh r0, [r1, #0x16]
	ldr r0, [r3, #0xc]
	ldrh r0, [r0, #0x32]
	strh r0, [r1, #0x18]
_080A1A78:
	pop {r4, pc}
	.align 2, 0
_080A1A7C: .4byte gUnk_03003F80

	thumb_func_start sub_080A1A80
sub_080A1A80: @ 0x080A1A80
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x64]
	ldr r0, [r1, #4]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A1AC0
	ldr r0, [r1, #0xc]
	adds r0, #0x45
	movs r1, #0xc
	strb r1, [r0]
	movs r0, #7
	strb r0, [r2, #0xc]
	movs r0, #0x23
	strb r0, [r2, #0xe]
	adds r1, r2, #0
	adds r1, #0x6c
	adds r0, #0xe1
	strh r0, [r1]
	adds r1, #0xc
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1]
	movs r0, #0x94
	lsls r0, r0, #1
	bl PlaySFX
	movs r0, #0x96
	movs r1, #1
	bl sub_08080964
_080A1AC0:
	ldr r2, _080A1AE0 @ =gUnk_03003F80
	ldr r1, _080A1AE4 @ =gRoomControls
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r2, #0x16]
	movs r3, #0x84
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	strh r0, [r2, #0x18]
	pop {pc}
	.align 2, 0
_080A1AE0: .4byte gUnk_03003F80
_080A1AE4: .4byte gRoomControls

	thumb_func_start sub_080A1AE8
sub_080A1AE8: @ 0x080A1AE8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080A1FF0
	ldr r0, [r4, #0x64]
	ldr r1, [r0, #0xc]
	adds r0, r1, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A1B24
	adds r0, r4, #0
	bl sub_080A20B8
	cmp r0, #0
	beq _080A1B24
	movs r0, #8
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x6c
	movs r0, #0x40
	strh r0, [r1]
	adds r1, #0xc
	movs r0, #0xc0
	strh r0, [r1]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	adds r0, #0x45
	movs r1, #0xc
	strb r1, [r0]
_080A1B24:
	ldr r2, _080A1B44 @ =gUnk_03003F80
	ldr r1, _080A1B48 @ =gRoomControls
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r2, #0x16]
	movs r3, #0x84
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	strh r0, [r2, #0x18]
	pop {r4, pc}
	.align 2, 0
_080A1B44: .4byte gUnk_03003F80
_080A1B48: .4byte gRoomControls

	thumb_func_start sub_080A1B4C
sub_080A1B4C: @ 0x080A1B4C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	adds r0, #0x45
	ldrb r7, [r0]
	cmp r7, #0
	bne _080A1BD0
	adds r5, r4, #0
	adds r5, #0x6c
	ldrh r0, [r5]
	cmp r0, #0
	beq _080A1B80
	movs r0, #0x2d
	movs r1, #1
	bl sub_08080964
	movs r0, #0x94
	lsls r0, r0, #1
	bl PlaySFX
	adds r1, r4, #0
	adds r1, #0x78
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r1]
_080A1B80:
	movs r6, #0
	strh r7, [r5]
	ldr r0, _080A1BF0 @ =gUnk_030010A0
	adds r0, #0x39
	strb r6, [r0]
	bl sub_08079F8C
	cmp r0, #0
	beq _080A1BD0
	ldr r3, _080A1BF4 @ =gLinkEntity
	movs r1, #0x36
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bne _080A1BD0
	movs r0, #9
	strb r0, [r4, #0xc]
	strb r6, [r4, #0xe]
	movs r0, #0xf0
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x6e
	adds r0, #0xb4
	strh r0, [r1]
	strb r6, [r4, #0x15]
	movs r0, #0x60
	strh r0, [r4, #0x24]
	ldr r2, _080A1BF8 @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	ldr r1, _080A1BFC @ =0xFFFDFFFF
	ands r0, r1
	str r0, [r2, #0x30]
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_0806FA24
	ldr r0, _080A1C00 @ =gRoomControls
	str r4, [r0, #0x30]
	movs r0, #2
	bl sub_08078A90
_080A1BD0:
	ldr r2, _080A1BF8 @ =gUnk_03003F80
	ldr r1, _080A1C00 @ =gRoomControls
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r2, #0x16]
	movs r3, #0x84
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	strh r0, [r2, #0x18]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A1BF0: .4byte gUnk_030010A0
_080A1BF4: .4byte gLinkEntity
_080A1BF8: .4byte gUnk_03003F80
_080A1BFC: .4byte 0xFFFDFFFF
_080A1C00: .4byte gRoomControls

	thumb_func_start sub_080A1C04
sub_080A1C04: @ 0x080A1C04
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x6e
	ldrh r0, [r1]
	cmp r0, #0
	bne _080A1C52
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_080A1E54
	ldrb r0, [r4, #0xf]
	subs r1, r0, #1
	strb r1, [r4, #0xf]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _080A1C40
	movs r0, #0x7b
	bl sub_0807CCC8
	ldr r0, _080A1C3C @ =gUnk_0813ABD0
	movs r1, #8
	bl sub_0808091C
	b _080A1C9A
	.align 2, 0
_080A1C3C: .4byte gUnk_0813ABD0
_080A1C40:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bne _080A1C9A
	movs r0, #7
	movs r1, #4
	bl DoFade
	b _080A1C9A
_080A1C52:
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb3
	bhi _080A1C66
	adds r0, r4, #0
	bl sub_080A1E54
	b _080A1C9A
_080A1C66:
	ldrh r1, [r1]
	cmp r1, #0xb4
	beq _080A1C76
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r1, r0
	beq _080A1C8A
	b _080A1C9A
_080A1C76:
	movs r0, #0x94
	lsls r0, r0, #1
	bl PlaySFX
	movs r0, #0xb4
	lsls r0, r0, #2
	movs r1, #2
	bl sub_08080964
	b _080A1C9A
_080A1C8A:
	movs r0, #0x94
	lsls r0, r0, #1
	bl PlaySFX
	movs r0, #0x4b
	movs r1, #1
	bl sub_08080964
_080A1C9A:
	pop {r4, pc}

	thumb_func_start sub_080A1C9C
sub_080A1C9C: @ 0x080A1C9C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x7a
	ldrb r0, [r5]
	cmp r0, #0
	beq _080A1D04
	adds r0, r4, #0
	adds r0, #0x74
	adds r7, r4, #0
	adds r7, #0x75
	ldrb r1, [r0]
	adds r6, r0, #0
	ldrb r0, [r7]
	cmp r1, r0
	beq _080A1CE4
	subs r5, #2
	movs r0, #0
	strh r0, [r5]
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_080A1D8C
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	bne _080A1D14
	ldrb r0, [r7]
	strb r0, [r6]
	adds r0, r4, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	strh r0, [r5]
	b _080A1D14
_080A1CE4:
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_080A1D8C
	adds r0, r4, #0
	adds r0, #0x78
	adds r1, r4, #0
	adds r1, #0x76
	ldrh r0, [r0]
	adds r2, r1, #0
	ldrh r1, [r2]
	cmp r0, r1
	bne _080A1D14
	movs r0, #0
	strb r0, [r5]
	b _080A1D14
_080A1D04:
	adds r0, r4, #0
	movs r1, #8
	bl sub_080A1D8C
	adds r6, r4, #0
	adds r6, #0x74
	adds r2, r4, #0
	adds r2, #0x76
_080A1D14:
	adds r3, r4, #0
	adds r3, #0x70
	ldr r5, _080A1D68 @ =gUnk_080C9160
	ldrb r0, [r6]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r7, #0
	ldrsh r1, [r0, r7]
	ldrh r0, [r2]
	muls r0, r1, r0
	cmp r0, #0
	bge _080A1D2E
	adds r0, #0xff
_080A1D2E:
	asrs r0, r0, #8
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	adds r4, #0x72
	ldrb r0, [r6]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r5, #0
	ldrsh r1, [r0, r5]
	ldrh r0, [r2]
	muls r0, r1, r0
	cmp r0, #0
	bge _080A1D4E
	adds r0, #0xff
_080A1D4E:
	asrs r0, r0, #8
	ldrh r1, [r4]
	subs r1, r1, r0
	strh r1, [r4]
	ldr r2, _080A1D6C @ =gLCDControls
	ldrh r0, [r3]
	lsrs r0, r0, #8
	strh r0, [r2, #0x2e]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x18
	strh r1, [r2, #0x30]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A1D68: .4byte gUnk_080C9160
_080A1D6C: .4byte gLCDControls

	thumb_func_start sub_080A1D70
sub_080A1D70: @ 0x080A1D70
	adds r2, r0, #0
	adds r0, #0x75
	strb r1, [r0]
	adds r1, r2, #0
	adds r1, #0x7a
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x78
	ldrh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080A1D8C
sub_080A1D8C: @ 0x080A1D8C
	push {r4, lr}
	adds r4, r1, #0
	adds r3, r0, #0
	adds r3, #0x78
	adds r2, r0, #0
	adds r2, #0x76
	ldrh r1, [r3]
	ldrh r0, [r2]
	cmp r1, r0
	beq _080A1DC8
	cmp r1, r0
	bls _080A1DB6
	adds r3, r0, #0
	subs r0, r1, r3
	cmp r4, r0
	bge _080A1DB2
	adds r0, r3, r4
	strh r0, [r2]
	b _080A1DC8
_080A1DB2:
	strh r1, [r2]
	b _080A1DC8
_080A1DB6:
	ldrh r1, [r2]
	ldrh r3, [r3]
	subs r0, r1, r3
	cmp r4, r0
	bge _080A1DC6
	subs r0, r1, r4
	strh r0, [r2]
	b _080A1DC8
_080A1DC6:
	strh r3, [r2]
_080A1DC8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A1DCC
sub_080A1DCC: @ 0x080A1DCC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x64]
	ldr r3, [r1, #8]
	cmp r3, #0
	bne _080A1DDE
	ldr r3, [r1, #0xc]
	cmp r3, #0
	beq _080A1E24
_080A1DDE:
	adds r0, r3, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A1E24
	ldrb r0, [r3, #0x19]
	lsrs r0, r0, #6
	cmp r0, #2
	bne _080A1E24
	ldr r3, [r1, #0x10]
	ldrb r2, [r3, #0x10]
	movs r1, #0x7f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #0x10]
	ldr r0, [r4, #0x64]
	ldr r3, [r0, #0x14]
	ldrb r2, [r3, #0x10]
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #0x10]
	ldr r3, [r3, #0x54]
	ldrb r2, [r3, #0x10]
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #0x10]
	ldr r3, [r3, #0x54]
	ldrb r2, [r3, #0x10]
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #0x10]
	ldr r3, [r3, #0x54]
	ldrb r0, [r3, #0x10]
	ands r1, r0
	b _080A1E50
_080A1E24:
	ldr r0, [r4, #0x64]
	ldr r2, [r0, #0x10]
	ldrb r0, [r2, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	ldr r0, [r4, #0x64]
	ldr r3, [r0, #0x14]
	ldrb r0, [r3, #0x10]
	orrs r0, r1
	strb r0, [r3, #0x10]
	ldr r3, [r3, #0x54]
	ldrb r0, [r3, #0x10]
	orrs r0, r1
	strb r0, [r3, #0x10]
	ldr r3, [r3, #0x54]
	ldrb r0, [r3, #0x10]
	orrs r0, r1
	strb r0, [r3, #0x10]
	ldr r3, [r3, #0x54]
	ldrb r0, [r3, #0x10]
	orrs r1, r0
_080A1E50:
	strb r1, [r3, #0x10]
	pop {r4, pc}

	thumb_func_start sub_080A1E54
sub_080A1E54: @ 0x080A1E54
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	adds r0, #1
	strb r0, [r2, #0xe]
	movs r1, #0xff
	ands r0, r1
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _080A1ECA
	adds r0, r2, #0
	movs r1, #0x51
	movs r2, #0
	bl CreateFX
	adds r4, r0, #0
	cmp r4, #0
	beq _080A1ECA
	bl sub_08000E50
	ldr r3, _080A1ECC @ =gRoomControls
	movs r1, #0xf0
	adds r2, r0, #0
	ands r2, r1
	movs r5, #0x80
	lsls r5, r5, #2
	adds r1, r5, #0
	adds r2, r2, r1
	ldrh r1, [r3, #6]
	adds r1, r1, r2
	subs r1, #0x78
	strh r1, [r4, #0x2e]
	lsrs r0, r0, #8
	movs r1, #0x70
	ands r0, r1
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrh r3, [r3, #8]
	adds r0, r0, r3
	subs r0, #0x38
	strh r0, [r4, #0x32]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
_080A1ECA:
	pop {r4, r5, pc}
	.align 2, 0
_080A1ECC: .4byte gRoomControls

	thumb_func_start sub_080A1ED0
sub_080A1ED0: @ 0x080A1ED0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r1
	adds r5, r2, #0
	movs r1, #0
	str r1, [sp]
	ldr r4, _080A1F60 @ =gUnk_08124EF8
	lsls r1, r5, #2
	adds r1, r1, r4
	ldrh r2, [r1]
	ldr r3, _080A1F64 @ =gRoomControls
	ldrh r1, [r3, #6]
	adds r2, r2, r1
	mov sl, r2
	lsls r1, r5, #1
	adds r1, #1
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r2, [r1]
	ldrh r1, [r3, #8]
	adds r2, r2, r1
	mov r8, r2
	ldr r1, _080A1F68 @ =gUnk_08124FF0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #1
	beq _080A1FB0
	lsls r7, r5, #3
	movs r0, #0x10
	adds r6, r7, #0
	eors r6, r0
_080A1F1C:
	movs r0, #0x60
	mov r1, sb
	bl CreateEnemy
	adds r2, r0, #0
	cmp r2, #0
	beq _080A1FA6
	mov r0, sp
	ldrb r0, [r0]
	strb r0, [r2, #0xb]
	ldr r1, [sp]
	adds r1, #1
	str r1, [sp]
	mov r0, sl
	strh r0, [r2, #0x2e]
	mov r1, r8
	strh r1, [r2, #0x32]
	strb r7, [r2, #0x15]
	adds r0, r2, #0
	adds r0, #0x7a
	strb r6, [r0]
	ldrh r1, [r4, #4]
	subs r0, #2
	strh r1, [r0]
	cmp r5, #1
	beq _080A1F7A
	cmp r5, #1
	blo _080A1F6C
	cmp r5, #2
	beq _080A1F80
	cmp r5, #3
	beq _080A1F94
	b _080A1FA6
	.align 2, 0
_080A1F60: .4byte gUnk_08124EF8
_080A1F64: .4byte gRoomControls
_080A1F68: .4byte gUnk_08124FF0
_080A1F6C:
	ldrh r1, [r4]
	adds r0, r2, #0
	adds r0, #0x74
	strh r1, [r0]
	ldrh r0, [r4, #2]
	rsbs r0, r0, #0
	b _080A1F8C
_080A1F7A:
	ldrh r0, [r4, #2]
	adds r0, #0xf0
	b _080A1F98
_080A1F80:
	ldrh r1, [r4]
	adds r0, r2, #0
	adds r0, #0x74
	strh r1, [r0]
	ldrh r0, [r4, #2]
	adds r0, #0xa0
_080A1F8C:
	adds r1, r2, #0
	adds r1, #0x76
	strh r0, [r1]
	b _080A1FA6
_080A1F94:
	ldrh r0, [r4, #2]
	rsbs r0, r0, #0
_080A1F98:
	adds r1, r2, #0
	adds r1, #0x74
	strh r0, [r1]
	ldrh r1, [r4]
	adds r0, r2, #0
	adds r0, #0x76
	strh r1, [r0]
_080A1FA6:
	adds r4, #6
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #1
	bne _080A1F1C
_080A1FB0:
	mov r0, sb
	cmp r0, #0
	bne _080A1FE4
	movs r0, #0xf
	movs r1, #2
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _080A1FE4
	mov r1, sl
	strh r1, [r2, #0x2e]
	mov r0, r8
	strh r0, [r2, #0x32]
	ldrb r0, [r2, #0x1b]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r2, #0x1b]
	ldrb r0, [r2, #0x19]
	orrs r0, r1
	strb r0, [r2, #0x19]
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
_080A1FE4:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080A1FF0
sub_080A1FF0: @ 0x080A1FF0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _080A2066
	subs r1, r0, #1
	strb r1, [r5, #0xe]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bhi _080A2066
	movs r0, #0xf
	ands r1, r0
	cmp r1, #0
	bne _080A2066
	adds r0, r5, #0
	movs r1, #0x51
	movs r2, #0
	bl CreateFX
	adds r4, r0, #0
	cmp r4, #0
	beq _080A2066
	bl sub_08000E50
	ldr r3, _080A209C @ =gRoomControls
	movs r1, #0x78
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r1, #0
	adds r2, r0, r2
	ldrh r1, [r3, #6]
	adds r1, r1, r2
	subs r1, #0x3c
	strh r1, [r4, #0x2e]
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrh r3, [r3, #8]
	adds r0, r0, r3
	subs r0, #0x3c
	strh r0, [r4, #0x32]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
_080A2066:
	adds r4, r5, #0
	adds r4, #0x7b
	ldrb r0, [r4]
	cmp r0, #0
	beq _080A20B4
	ldr r0, _080A20A0 @ =gLinkEntity
	ldr r2, _080A209C @ =gRoomControls
	ldrh r1, [r2, #6]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r1, r3
	ldrh r2, [r2, #8]
	adds r3, #0x10
	adds r2, r2, r3
	movs r3, #0x80
	lsls r3, r3, #1
	bl sub_0806FCB8
	cmp r0, #0
	beq _080A20B2
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _080A20A4
	movs r0, #0x78
	strb r0, [r5, #0xe]
	b _080A20B4
	.align 2, 0
_080A209C: .4byte gRoomControls
_080A20A0: .4byte gLinkEntity
_080A20A4:
	cmp r0, #0x23
	bne _080A20B4
	movs r0, #0x1e
	movs r1, #0
	bl sub_08080964
	b _080A20B4
_080A20B2:
	strb r0, [r4]
_080A20B4:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A20B8
sub_080A20B8: @ 0x080A20B8
	push {r4, lr}
	adds r4, r1, #0
	cmp r4, #0
	bne _080A20C4
	movs r0, #1
	b _080A20FA
_080A20C4:
	bl sub_08079F8C
	cmp r0, #0
	beq _080A20F8
	ldr r0, _080A20F0 @ =gLinkEntity
	movs r1, #0x36
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080A20F8
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A20EC
	ldr r0, _080A20F4 @ =gUnk_03003F80
	ldrb r1, [r0, #0x14]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r1, r0, #0x1f
_080A20EC:
	adds r0, r1, #0
	b _080A20FA
	.align 2, 0
_080A20F0: .4byte gLinkEntity
_080A20F4: .4byte gUnk_03003F80
_080A20F8:
	movs r0, #0
_080A20FA:
	pop {r4, pc}

	thumb_func_start sub_080A20FC
sub_080A20FC: @ 0x080A20FC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r1, r0, #0
	cmp r1, #0
	bne _080A2114
	adds r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0x1e]
	adds r0, r4, #0
	bl sub_0807DD64
_080A2114:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	pop {r4, pc}

	thumb_func_start sub_080A2124
sub_080A2124: @ 0x080A2124
	push {lr}
	ldr r3, _080A2134 @ =gUnk_08125010
	movs r1, #1
	movs r2, #0xe
	bl sub_08078850
	pop {pc}
	.align 2, 0
_080A2134: .4byte gUnk_08125010

	thumb_func_start sub_080A2138
sub_080A2138: @ 0x080A2138
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x72
	bl PlaySFX
	ldr r2, _080A2160 @ =gUnk_02002A40
	ldrb r0, [r4, #0xb]
	adds r0, #0x18
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2, #0x40]
	orrs r0, r1
	str r0, [r2, #0x40]
	adds r0, r4, #0
	movs r1, #0x46
	movs r2, #0
	bl CreateFX
	pop {r4, pc}
	.align 2, 0
_080A2160: .4byte gUnk_02002A40

	thumb_func_start sub_080A2164
sub_080A2164: @ 0x080A2164
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080A21DC
	adds r1, r4, #0
	adds r1, #0x86
	ldrh r0, [r1]
	cmp r0, #0
	beq _080A2180
	bl sub_0807CBE4
	cmp r0, #0
	beq _080A224E
_080A2180:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x19]
	subs r0, #0xe
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x19]
	movs r0, #3
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldr r0, _080A21D4 @ =gRoomControls
	ldrb r0, [r0, #5]
	strb r0, [r4, #0xf]
	movs r0, #2
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x68
	ldr r0, _080A21D8 @ =0x0000FFFE
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x80
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x80
	movs r3, #0
	bl sub_0805EC9C
	b _080A221E
	.align 2, 0
_080A21D4: .4byte gRoomControls
_080A21D8: .4byte 0x0000FFFE
_080A21DC:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A221E
	movs r0, #2
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x6a
	adds r2, r4, #0
	adds r2, #0x68
	ldrh r0, [r2]
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x77
	bhi _080A2208
	movs r0, #1
	strh r0, [r2]
_080A2208:
	ldrh r0, [r1]
	cmp r0, #0x88
	bls _080A2212
	ldr r0, _080A2250 @ =0x0000FFFF
	strh r0, [r2]
_080A2212:
	ldrh r2, [r1]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
_080A221E:
	ldr r2, _080A2254 @ =gLCDControls
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	adds r2, #0x62
	ldrb r0, [r2]
	movs r3, #0xdc
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A2258 @ =gRoomControls
	ldrb r0, [r1, #5]
	ldrb r4, [r4, #0xf]
	cmp r0, r4
	beq _080A224E
	ldrh r0, [r1]
	cmp r0, #0
	bne _080A224E
	bl sub_0805E780
_080A224E:
	pop {r4, pc}
	.align 2, 0
_080A2250: .4byte 0x0000FFFF
_080A2254: .4byte gLCDControls
_080A2258: .4byte gRoomControls

	thumb_func_start sub_080A225C
sub_080A225C: @ 0x080A225C
	push {lr}
	ldr r2, _080A2270 @ =gUnk_0812503C
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A2270: .4byte gUnk_0812503C

	thumb_func_start sub_080A2274
sub_080A2274: @ 0x080A2274
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	bne _080A22AE
	adds r0, r1, #0
	bl sub_080A2340
	movs r0, #0xbd
	movs r1, #1
	movs r2, #0
	bl CreateObject
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	movs r1, #3
	cmp r0, #1
	bne _080A229C
	movs r1, #2
_080A229C:
	movs r0, #0xbd
	movs r2, #0
	bl CreateObject
	movs r0, #0xbd
	movs r1, #4
	movs r2, #0
	bl CreateObject
_080A22AE:
	pop {pc}

	thumb_func_start sub_080A22B0
sub_080A22B0: @ 0x080A22B0
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	bne _080A22C0
	adds r0, r1, #0
	bl sub_080A2340
_080A22C0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080A22C4
sub_080A22C4: @ 0x080A22C4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _080A22FC
	cmp r5, #1
	beq _080A231C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A233E
	movs r0, #8
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xf]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0xd]
	adds r0, r1, r0
	strb r0, [r4, #0x1e]
	lsls r1, r1, #0x18
	lsls r0, r0, #0x18
	cmp r1, r0
	bne _080A233E
	b _080A233A
_080A22FC:
	adds r0, r4, #0
	bl sub_080A2340
	movs r0, #8
	strb r0, [r4, #0xe]
	strb r5, [r4, #0xf]
	ldrb r0, [r4, #0x1e]
	strb r0, [r4, #0xd]
	bl sub_08000E50
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #0x1e
	strh r0, [r4, #0x24]
	b _080A233E
_080A231C:
	ldrh r0, [r4, #0x24]
	subs r0, #1
	strh r0, [r4, #0x24]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A233E
	bl sub_08000E50
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #0x1e
	strh r0, [r4, #0x24]
	movs r0, #2
	b _080A233C
_080A233A:
	movs r0, #1
_080A233C:
	strb r0, [r4, #0xc]
_080A233E:
	pop {r4, r5, pc}

	thumb_func_start sub_080A2340
sub_080A2340: @ 0x080A2340
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #3
	ldr r2, _080A239C @ =gUnk_08125014
	adds r1, r1, r2
	ldrh r2, [r1]
	strh r2, [r0, #0x2e]
	ldrh r2, [r1, #2]
	strh r2, [r0, #0x32]
	ldrh r2, [r1, #4]
	strb r2, [r0, #0x1e]
	ldrb r1, [r1, #6]
	movs r2, #0x29
	adds r2, r2, r0
	mov ip, r2
	movs r2, #7
	ands r2, r1
	mov r1, ip
	ldrb r3, [r1]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	mov r2, ip
	strb r1, [r2]
	ldrb r3, [r0, #0x19]
	movs r2, #0x3f
	adds r1, r2, #0
	ands r1, r3
	movs r3, #0x40
	orrs r1, r3
	strb r1, [r0, #0x19]
	ldrb r1, [r0, #0x1b]
	ands r2, r1
	orrs r2, r3
	strb r2, [r0, #0x1b]
	ldrb r2, [r0, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #2
	orrs r1, r2
	strb r1, [r0, #0x18]
	movs r1, #1
	strb r1, [r0, #0xc]
	bx lr
	.align 2, 0
_080A239C: .4byte gUnk_08125014

	thumb_func_start sub_080A23A0
sub_080A23A0: @ 0x080A23A0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x45
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _080A23C0
	ldr r0, _080A23D4 @ =gUnk_020342F8
	subs r1, #1
	bl sub_0801D5A8
	cmp r0, #0
	bne _080A23C0
	bl sub_0805E780
_080A23C0:
	ldr r0, _080A23D8 @ =gUnk_0812505C
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080A23D4: .4byte gUnk_020342F8
_080A23D8: .4byte gUnk_0812505C

	thumb_func_start sub_080A23DC
sub_080A23DC: @ 0x080A23DC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080A240C @ =gUnk_08125050
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r2, r4, #0
	adds r2, #0x68
	strh r0, [r2]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r0, [r3]
	movs r1, #7
	orrs r0, r1
	strb r0, [r3]
	ldrh r0, [r2]
	bl sub_0807CBD0
	cmp r0, #0
	beq _080A2410
	movs r0, #2
	b _080A2412
	.align 2, 0
_080A240C: .4byte gUnk_08125050
_080A2410:
	movs r0, #1
_080A2412:
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A2420
sub_080A2420: @ 0x080A2420
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x68
	ldrh r0, [r0]
	bl sub_0807CBD0
	cmp r0, #0
	beq _080A243A
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080A29BC
_080A243A:
	pop {r4, pc}

	thumb_func_start sub_080A243C
sub_080A243C: @ 0x080A243C
	push {lr}
	bl sub_08004274
	pop {pc}

	thumb_func_start nullsub_538
nullsub_538: @ 0x080A2444
	bx lr
	.align 2, 0

	thumb_func_start sub_080A2448
sub_080A2448: @ 0x080A2448
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	beq _080A245E
	adds r0, r5, #0
	bl sub_080A2500
_080A245E:
	ldrb r0, [r5, #0xc]
	adds r1, r0, #0
	cmp r1, #0
	bne _080A24CE
	adds r0, #1
	strb r0, [r5, #0xc]
	ldrb r0, [r5, #0xe]
	strb r0, [r5, #0xa]
	str r1, [r5, #0x54]
	ldr r2, _080A24B4 @ =gUnk_03003D90
	ldr r4, [r2, #4]
	cmp r4, r2
	beq _080A24BE
_080A2478:
	ldrb r0, [r4, #8]
	cmp r0, #3
	bne _080A24B8
	ldrb r0, [r5, #0xb]
	ldrb r1, [r4, #9]
	cmp r0, r1
	bne _080A24B8
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	movs r3, #0x2e
	ldrsh r1, [r5, r3]
	subs r0, r0, r1
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bhi _080A24B8
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	movs r3, #0x32
	ldrsh r1, [r5, r3]
	subs r0, r0, r1
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bhi _080A24B8
	str r4, [r5, #0x54]
	b _080A24BE
	.align 2, 0
_080A24B4: .4byte gUnk_03003D90
_080A24B8:
	ldr r4, [r4, #4]
	cmp r4, r2
	bne _080A2478
_080A24BE:
	ldr r0, [r5, #0x54]
	cmp r0, #0
	bne _080A24CA
	adds r0, r5, #0
	bl sub_080A2534
_080A24CA:
	bl sub_08054564
_080A24CE:
	ldr r4, [r5, #0x54]
	cmp r4, #0
	beq _080A24F6
	movs r2, #0x80
	lsls r2, r2, #0xb
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r4, #0
	adds r1, r5, #0
	bl PositionRelative
	ldrh r0, [r5, #0x36]
	subs r0, #4
	strh r0, [r5, #0x36]
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _080A24F6
	adds r0, r5, #0
	bl sub_080A2508
_080A24F6:
	adds r0, r5, #0
	bl sub_08080CB4
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A2500
sub_080A2500: @ 0x080A2500
	push {lr}
	bl sub_0805E780
	pop {pc}

	thumb_func_start sub_080A2508
sub_080A2508: @ 0x080A2508
	push {r4, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0xa]
	movs r1, #0
	movs r3, #0
	bl sub_080A2988
	adds r2, r0, #0
	cmp r2, #0
	beq _080A252C
	movs r0, #5
	strb r0, [r2, #0xe]
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x86
	strh r1, [r0]
_080A252C:
	adds r0, r4, #0
	bl sub_080A2500
	pop {r4, pc}

	thumb_func_start sub_080A2534
sub_080A2534: @ 0x080A2534
	push {r4, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0xa]
	movs r1, #0
	movs r3, #0
	bl sub_080A2988
	adds r2, r0, #0
	cmp r2, #0
	beq _080A2558
	movs r0, #4
	strb r0, [r2, #0xe]
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x86
	strh r1, [r0]
_080A2558:
	adds r0, r4, #0
	bl sub_080A2500
	pop {r4, pc}

	thumb_func_start sub_080A2560
sub_080A2560: @ 0x080A2560
	push {lr}
	ldr r2, _080A2574 @ =gUnk_08125084
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A2574: .4byte gUnk_08125084

	thumb_func_start sub_080A2578
sub_080A2578: @ 0x080A2578
	push {lr}
	movs r1, #8
	strb r1, [r0, #0xc]
	bl sub_080A259C
	pop {pc}

	thumb_func_start sub_080A2584
sub_080A2584: @ 0x080A2584
	push {lr}
	bl sub_0805E564
	ldr r1, _080A2598 @ =gUnk_02034490
	movs r0, #0
	strb r0, [r1]
	bl sub_0805E780
	pop {pc}
	.align 2, 0
_080A2598: .4byte gUnk_02034490

	thumb_func_start sub_080A259C
sub_080A259C: @ 0x080A259C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r5, _080A25DC @ =gLinkEntity
	ldrb r1, [r5, #0x10]
	movs r7, #0x7f
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r5, #0x10]
	ldrb r1, [r5, #0x18]
	movs r6, #4
	rsbs r6, r6, #0
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r5, #0x18]
	ldrb r1, [r5, #0x1a]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	ldrb r2, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1a]
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	beq _080A269C
	cmp r0, #1
	bgt _080A25E0
	cmp r0, #0
	beq _080A25E6
	b _080A273C
	.align 2, 0
_080A25DC: .4byte gLinkEntity
_080A25E0:
	cmp r0, #2
	beq _080A26B4
	b _080A273C
_080A25E6:
	movs r0, #1
	movs r2, #1
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x18]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	adds r3, r4, #0
	adds r3, #0x29
	lsrs r1, r1, #0x1d
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r2, [r5, #0x19]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r5, #0x1b]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r4, #0x1b]
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x1b]
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	movs r0, #4
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	ldr r0, _080A2670 @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080A2678
	ldrb r0, [r4, #0xa]
	bl sub_080542AC
	ldr r1, _080A2674 @ =0x0000045B
	cmp r0, #0
	beq _080A2688
	adds r1, #3
	b _080A2688
	.align 2, 0
_080A2670: .4byte gUnk_03003F80
_080A2674: .4byte 0x0000045B
_080A2678:
	ldrb r0, [r4, #0xa]
	bl sub_080542AC
	ldr r1, _080A2698 @ =0x000001B9
	cmp r0, #0
	beq _080A2688
	movs r1, #0xb8
	lsls r1, r1, #2
_080A2688:
	lsrs r0, r1, #8
	strh r0, [r4, #0x12]
	movs r0, #0xff
	ands r1, r0
	adds r0, r4, #0
	bl sub_080042AC
	b _080A273C
	.align 2, 0
_080A2698: .4byte 0x000001B9
_080A269C:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A273C
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	b _080A273C
_080A26B4:
	adds r0, r4, #0
	bl sub_080042B8
	ldr r0, _080A2764 @ =gTextBox
	ldrb r1, [r0]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _080A2762
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A273C
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r0, [r0]
	strb r0, [r5, #0x10]
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r1, [r0]
	movs r0, #3
	ands r1, r0
	ldrb r2, [r5, #0x18]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x18]
	adds r0, r4, #0
	adds r0, #0x6a
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x3d
	strb r1, [r0]
	ldr r1, _080A2768 @ =gUnk_03003F80
	adds r0, r4, #0
	adds r0, #0x6b
	ldrb r0, [r0]
	strb r0, [r1, #7]
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r0, [r0]
	strb r0, [r1, #0xb]
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	strb r0, [r1, #0xa]
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x27
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	strb r0, [r1, #0x1a]
	ldr r0, [r4, #0x70]
	str r0, [r1, #0x30]
	adds r0, r4, #0
	adds r0, #0x74
	ldrb r0, [r0]
	adds r1, #0x8a
	strb r0, [r1]
_080A273C:
	ldr r5, [r4, #0x50]
	cmp r5, #0
	beq _080A2762
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806FA30
	ldrh r0, [r4, #0x12]
	ldrb r1, [r4, #0x1e]
	bl sub_080700C8
	ldrb r1, [r0]
	adds r2, r5, #0
	adds r2, #0x62
	strb r1, [r2]
	ldrb r1, [r0, #1]
	adds r0, r5, #0
	adds r0, #0x63
	strb r1, [r0]
_080A2762:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A2764: .4byte gTextBox
_080A2768: .4byte gUnk_03003F80

	thumb_func_start sub_080A276C
sub_080A276C: @ 0x080A276C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	bl sub_0805E744
	adds r6, r0, #0
	cmp r6, #0
	beq _080A2820
	movs r0, #0xc1
	strb r0, [r6, #9]
	movs r0, #6
	mov r8, r0
	mov r1, r8
	strb r1, [r6, #8]
	strb r4, [r6, #0xa]
	strb r7, [r6, #0xb]
	str r5, [r6, #0x50]
	adds r0, r6, #0
	movs r1, #6
	bl sub_0805EA2C
	adds r0, r6, #0
	movs r1, #6
	bl sub_0805EA78
	ldr r4, _080A2828 @ =gLinkEntity
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0806FA24
	ldr r0, _080A282C @ =gUnk_03003DC0
	mov r1, r8
	strb r1, [r0]
	ldr r1, _080A2830 @ =gUnk_02034490
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r4, #0x10]
	adds r1, r6, #0
	adds r1, #0x69
	strb r0, [r1]
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	subs r1, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	adds r1, #2
	strb r0, [r1]
	ldr r1, _080A2834 @ =gUnk_03003F80
	ldrb r0, [r1, #7]
	adds r2, r6, #0
	adds r2, #0x6b
	strb r0, [r2]
	ldrb r2, [r1, #0xb]
	adds r0, r6, #0
	adds r0, #0x6c
	strb r2, [r0]
	ldrb r0, [r1, #0xa]
	adds r2, r6, #0
	adds r2, #0x6d
	strb r0, [r2]
	adds r0, r1, #0
	adds r0, #0x27
	ldrb r0, [r0]
	adds r2, #1
	strb r0, [r2]
	ldrb r0, [r1, #0x1a]
	adds r2, #1
	strb r0, [r2]
	ldr r0, [r1, #0x30]
	str r0, [r6, #0x70]
	adds r1, #0x8a
	ldrb r1, [r1]
	adds r0, r6, #0
	adds r0, #0x74
	strb r1, [r0]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_080A2820:
	adds r0, r6, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A2828: .4byte gLinkEntity
_080A282C: .4byte gUnk_03003DC0
_080A2830: .4byte gUnk_02034490
_080A2834: .4byte gUnk_03003F80