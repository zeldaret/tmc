	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object6
Object6: @ 0x080828E0
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080828F8
	ldr r0, _080828F4 @ =gUnk_0811F15C
	b _08082900
	.align 2, 0
_080828F4: .4byte gUnk_0811F15C
_080828F8:
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _08082914
	ldr r0, _08082910 @ =gUnk_0811F14C
_08082900:
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
	b _08082924
	.align 2, 0
_08082910: .4byte gUnk_0811F14C
_08082914:
	ldr r0, _08082928 @ =gUnk_0811F154
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
_08082924:
	pop {pc}
	.align 2, 0
_08082928: .4byte gUnk_0811F154

	thumb_func_start sub_0808292C
sub_0808292C: @ 0x0808292C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x11]
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r4, #0x11]
	ldr r5, _080829C8 @ =gPlayerEntity
	ldrb r1, [r5, #0x19]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	subs r1, #1
	movs r0, #0x29
	adds r0, r0, r4
	mov ip, r0
	movs r0, #7
	ands r1, r0
	mov r0, ip
	ldrb r2, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	ldrb r0, [r5, #0x1a]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldrb r1, [r4, #0x1a]
	ands r3, r1
	orrs r3, r0
	strb r3, [r4, #0x1a]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r5, #0x14]
	cmp r0, #2
	bne _080829A4
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x18]
_080829A4:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AE008
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080829CC
	movs r0, #7
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #7
	bl InitAnimationForceUpdate
	movs r0, #0xf3
	bl SoundReq
	b _080829E2
	.align 2, 0
_080829C8: .4byte gPlayerEntity
_080829CC:
	movs r0, #0
	strb r0, [r4, #0xe]
	movs r0, #0xa
	strb r0, [r4, #0xf]
	ldrh r0, [r4, #0x32]
	subs r0, #0xe
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	movs r1, #0x14
	bl InitAnimationForceUpdate
_080829E2:
	pop {r4, r5, pc}

	thumb_func_start sub_080829E4
sub_080829E4: @ 0x080829E4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08082A10 @ =gPlayerEntity
	ldrb r1, [r0, #0x1a]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	ldrb r2, [r5, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x1a]
	ldr r3, _08082A14 @ =gTextBox
	ldrb r0, [r3]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0
	bne _08082A18
	adds r0, r5, #0
	bl DeleteEntity
	b _08082AB4
	.align 2, 0
_08082A10: .4byte gPlayerEntity
_08082A14: .4byte gTextBox
_08082A18:
	cmp r1, #5
	beq _08082A9C
	ldrb r1, [r3, #1]
	adds r0, r1, #0
	cmp r0, #0xa
	beq _08082A30
	cmp r0, #0
	beq _08082A30
	movs r0, #0xf
	ands r0, r1
	cmp r0, #9
	bls _08082A4A
_08082A30:
	adds r1, r5, #0
	adds r1, #0x58
	ldrb r2, [r5, #0xf]
	movs r0, #3
	ldrb r1, [r1]
	orrs r2, r0
	cmp r1, r2
	beq _08082A9C
	adds r0, r5, #0
	adds r1, r2, #0
	bl InitAnimationForceUpdate
	b _08082AB4
_08082A4A:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08082A78
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x90
	ands r0, r1
	cmp r0, #0
	beq _08082A9C
	bl Random
	ldr r4, _08082A74 @ =gUnk_0811F16C
	movs r1, #9
	bl __modsi3
	adds r0, r0, r4
	ldrb r0, [r0]
	strb r0, [r5, #0xf]
	b _08082A8C
	.align 2, 0
_08082A74: .4byte gUnk_0811F16C
_08082A78:
	adds r2, r5, #0
	adds r2, #0x58
	ldr r1, _08082A98 @ =gUnk_0811F16C
	ldrb r0, [r3, #1]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldrb r0, [r2]
	cmp r0, r1
	beq _08082A9C
	strb r1, [r5, #0xf]
_08082A8C:
	ldrb r1, [r5, #0xf]
	adds r0, r5, #0
	bl InitAnimationForceUpdate
	b _08082AB4
	.align 2, 0
_08082A98: .4byte gUnk_0811F16C
_08082A9C:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #7
	bls _08082AAA
	movs r0, #1
	b _08082AAC
_08082AAA:
	movs r0, #0
_08082AAC:
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	bl UpdateAnimationSingleFrame
_08082AB4:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08082AB8
sub_08082AB8: @ 0x08082AB8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08082B10 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r5, #0x80
	ands r0, r5
	cmp r0, #0
	beq _08082ACC
	bl DeleteThisEntity
_08082ACC:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _08082B5C
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08082B98
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0xa
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xe]
	subs r5, r0, #1
	adds r0, r4, #0
	movs r1, #0x79
	adds r2, r5, #0
	movs r3, #0
	bl CreateObjectWithParent
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _08082B18
	cmp r5, #0
	bne _08082B14
	str r1, [r4, #0x50]
	b _08082B18
	.align 2, 0
_08082B10: .4byte gPlayerState
_08082B14:
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x50]
_08082B18:
	ldrb r0, [r4, #0xe]
	cmp r0, #6
	bne _08082B36
	movs r0, #3
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldr r1, [r4, #0x50]
	movs r0, #1
	strb r0, [r1, #0xb]
	adds r0, r4, #0
	movs r1, #0x1c
	bl InitAnimationForceUpdate
	b _08082B98
_08082B36:
	ldr r1, _08082B58 @ =gUnk_0811F178
	ldrb r0, [r4, #0xe]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	ldrb r0, [r4, #0xe]
	cmp r0, #2
	bls _08082B98
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x18]
	b _08082B98
	.align 2, 0
_08082B58: .4byte gUnk_0811F178
_08082B5C:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08082B98
	bl Random
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #0xe]
	cmp r0, #0
	beq _08082B98
	bl Random
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0xe]
	adds r1, #0x1b
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_08082B98:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08082B9C
sub_08082B9C: @ 0x08082B9C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r1, [r6, #0x11]
	movs r2, #0x10
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r6, #0x11]
	ldr r5, _08082C34 @ =gPlayerEntity
	ldrb r0, [r5, #0x1a]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldrb r1, [r6, #0x1a]
	ands r2, r1
	orrs r2, r0
	strb r2, [r6, #0x1a]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x38
	movs r4, #0
	strb r1, [r0]
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r6, #0x18]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6, #0x18]
	movs r0, #1
	strb r0, [r6, #0xc]
	adds r0, r6, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AE008
	adds r0, r6, #0
	movs r1, #0xc
	bl InitAnimationForceUpdate
	adds r0, r6, #0
	adds r0, #0x82
	strh r4, [r0]
	adds r4, r6, #0
	adds r4, #0x84
	ldr r1, [r4]
	adds r0, r6, #0
	bl ExecuteScriptCommandSet
	ldr r1, [r4]
	adds r0, r6, #0
	bl sub_08082D20
	ldrb r0, [r5, #0x14]
	cmp r0, #2
	bne _08082C2C
	ldrb r0, [r6, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r6, #0x18]
_08082C2C:
	adds r0, r6, #0
	bl sub_08082C5C
	pop {r4, r5, r6, pc}
	.align 2, 0
_08082C34: .4byte gPlayerEntity

	thumb_func_start sub_08082C38
sub_08082C38: @ 0x08082C38
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x84
	ldr r1, [r4]
	bl ExecuteScriptCommandSet
	ldr r1, [r4]
	adds r0, r5, #0
	bl sub_08082D20
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	bhi _08082C5A
	adds r0, r5, #0
	bl sub_08082C5C
_08082C5A:
	pop {r4, r5, pc}

	thumb_func_start sub_08082C5C
sub_08082C5C: @ 0x08082C5C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xd]
	cmp r0, #4
	bhi _08082D0C
	lsls r0, r0, #2
	ldr r1, _08082C70 @ =_08082C74
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08082C70: .4byte _08082C74
_08082C74: @ jump table
	.4byte _08082C88 @ case 0
	.4byte _08082C9C @ case 1
	.4byte _08082CB0 @ case 2
	.4byte _08082CE4 @ case 3
	.4byte _08082CF8 @ case 4
_08082C88:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0x17
	beq _08082D0C
	adds r0, r5, #0
	movs r1, #0x17
	bl InitAnimationForceUpdate
	b _08082D1C
_08082C9C:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0x18
	beq _08082D0C
	adds r0, r5, #0
	movs r1, #0x18
	bl InitAnimationForceUpdate
	b _08082D1C
_08082CB0:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08082D0C
	bl Random
	adds r4, r0, #0
	bl Random
	adds r1, r0, #0
	ldr r2, _08082CE0 @ =gUnk_0811F18C
	movs r0, #3
	ands r4, r0
	adds r4, r4, r2
	ands r1, r0
	ldrb r4, [r4]
	adds r1, r1, r4
	adds r0, r5, #0
	bl InitAnimationForceUpdate
	b _08082D1C
	.align 2, 0
_08082CE0: .4byte gUnk_0811F18C
_08082CE4:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0x13
	beq _08082D0C
	adds r0, r5, #0
	movs r1, #0x13
	bl InitAnimationForceUpdate
	b _08082D1C
_08082CF8:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0x1a
	beq _08082D0C
	adds r0, r5, #0
	movs r1, #0x1a
	bl InitAnimationForceUpdate
	b _08082D1C
_08082D0C:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r5, #0
	bl sub_08003FC4
	adds r0, r5, #0
	bl UpdateAnimationSingleFrame
_08082D1C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08082D20
sub_08082D20: @ 0x08082D20
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08082E10
	movs r6, #0
	movs r5, #1
	movs r0, #4
	rsbs r0, r0, #0
	mov ip, r0
_08082D36:
	ldr r1, [r3, #8]
	mvns r0, r1
	adds r2, r0, #1
	ands r2, r1
	eors r1, r2
	str r1, [r3, #8]
	cmp r2, #0x80
	beq _08082DB4
	cmp r2, #0x80
	bhi _08082D66
	cmp r2, #4
	beq _08082D9E
	cmp r2, #4
	bhi _08082D5C
	cmp r2, #1
	beq _08082D96
	cmp r2, #2
	beq _08082D9A
	b _08082E0A
_08082D5C:
	cmp r2, #8
	beq _08082DA4
	cmp r2, #0x40
	beq _08082DDA
	b _08082E0A
_08082D66:
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r2, r0
	beq _08082DDE
	cmp r2, r0
	bhi _08082D84
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	beq _08082DAA
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r2, r0
	beq _08082DC0
	b _08082E0A
_08082D84:
	movs r0, #0x80
	lsls r0, r0, #0xe
	cmp r2, r0
	beq _08082DE6
	movs r0, #0x80
	lsls r0, r0, #0xf
	cmp r2, r0
	beq _08082DF2
	b _08082E0A
_08082D96:
	strb r6, [r4, #0xd]
	b _08082E0A
_08082D9A:
	strb r5, [r4, #0xd]
	b _08082E0A
_08082D9E:
	movs r0, #2
	strb r0, [r4, #0xd]
	b _08082E0A
_08082DA4:
	movs r0, #3
	strb r0, [r4, #0xd]
	b _08082E0A
_08082DAA:
	ldrb r0, [r4, #0x18]
	mov r1, ip
	ands r0, r1
	strb r0, [r4, #0x18]
	b _08082E0A
_08082DB4:
	ldrb r0, [r4, #0x18]
	mov r7, ip
	ands r0, r7
	orrs r0, r5
	strb r0, [r4, #0x18]
	b _08082E0A
_08082DC0:
	ldrb r0, [r4, #0x18]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1f
	eors r1, r5
	ands r1, r5
	lsls r1, r1, #6
	movs r7, #0x41
	rsbs r7, r7, #0
	adds r2, r7, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	b _08082E0A
_08082DDA:
	bl DeleteThisEntity
_08082DDE:
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r6, [r4, #0xd]
	b _08082E10
_08082DE6:
	movs r0, #4
	strb r0, [r4, #0xd]
	adds r1, r4, #0
	adds r1, #0x62
	strb r0, [r1]
	b _08082E0A
_08082DF2:
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r6, [r4, #0xd]
	adds r1, r4, #0
	adds r1, #0x62
	movs r0, #4
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0x1b
	bl InitAnimationForceUpdate
	b _08082E10
_08082E0A:
	ldr r0, [r3, #8]
	cmp r0, #0
	bne _08082D36
_08082E10:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08082E14
sub_08082E14: @ 0x08082E14
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x84
	ldr r1, [r0]
	adds r0, r4, #0
	bl ExecuteScriptCommandSet
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _08082E38
	cmp r0, #1
	beq _08082E44
	b _08082E5E
_08082E38:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bge _08082E5E
	movs r0, #1
	strb r0, [r4, #0xd]
	b _08082E5E
_08082E44:
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #0xa
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08082E5E
	ldr r0, _08082E68 @ =gActiveScriptInfo
	ldr r1, [r0]
	movs r2, #2
	orrs r1, r2
	str r1, [r0]
	bl DeleteThisEntity
_08082E5E:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, pc}
	.align 2, 0
_08082E68: .4byte gActiveScriptInfo

	thumb_func_start sub_08082E6C
sub_08082E6C: @ 0x08082E6C
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08082E98
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x62
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #0x17
	bl InitAnimationForceUpdate
_08082E98:
	pop {r4, pc}
	.align 2, 0
