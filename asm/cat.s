	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_080677EC
sub_080677EC: @ 0x080677EC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #8
	strb r0, [r4, #0x15]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x48
	strb r0, [r1]
	subs r1, #1
	movs r0, #0xa8
	strb r0, [r1]
	subs r1, #4
	movs r0, #1
	strb r0, [r1]
	adds r1, #0x2e
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0806783C @ =gPlayerEntity
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	movs r2, #0x2e
	ldrsh r0, [r0, r2]
	cmp r1, r0
	bge _08067840
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	b _08067848
	.align 2, 0
_0806783C: .4byte gPlayerEntity
_08067840:
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
_08067848:
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldr r0, _0806786C @ =gUnk_08110EF0
	str r0, [r4, #0x48]
	adds r0, r4, #0
	bl sub_0805ACC0
	adds r2, r0, #0
	cmp r2, #0
	bne _08067870
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	b _08067872
	.align 2, 0
_0806786C: .4byte gUnk_08110EF0
_08067870:
	lsrs r2, r2, #0x10
_08067872:
	adds r0, r4, #0
	adds r0, #0x6c
	movs r1, #0
	strh r2, [r0]
	ldrb r0, [r4, #0xe]
	adds r0, r0, r2
	adds r2, r4, #0
	adds r2, #0x6e
	strh r0, [r2]
	strb r1, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x75
	strb r1, [r0]
	bl Random
	movs r1, #0x7f
	ands r0, r1
	adds r0, #0x1e
	adds r1, r4, #0
	adds r1, #0x74
	strb r0, [r1]
	subs r1, #0xb
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08067B08
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080678AC
sub_080678AC: @ 0x080678AC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08067D20
	cmp r0, #0
	beq _080678C2
	adds r0, r4, #0
	movs r1, #5
	bl sub_08067B80
	b _08067900
_080678C2:
	adds r2, r4, #0
	adds r2, #0x72
	ldrh r0, [r2]
	cmp r0, #0
	beq _080678D0
	subs r0, #1
	strh r0, [r2]
_080678D0:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #1
	bne _080678EA
	ldrh r0, [r2]
	cmp r0, #0
	bne _080678EA
	adds r0, r4, #0
	bl sub_08067AAC
	b _08067900
_080678EA:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08067900
	adds r0, r4, #0
	bl sub_08067B34
_08067900:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08067904
sub_08067904: @ 0x08067904
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08067D20
	cmp r0, #0
	beq _0806791A
	adds r0, r4, #0
	movs r1, #8
	bl sub_08067B80
	b _08067978
_0806791A:
	adds r1, r4, #0
	adds r1, #0x72
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08067932
	adds r0, r4, #0
	bl sub_08067B70
	b _08067978
_08067932:
	ldrb r0, [r4, #0x15]
	cmp r0, #8
	bne _08067952
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	adds r1, r4, #0
	adds r1, #0x6e
	ldrh r1, [r1]
	cmp r0, r1
	ble _0806796C
	movs r0, #0x18
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x18]
	subs r0, #0x59
	ands r0, r1
	b _0806796A
_08067952:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	adds r0, r4, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	cmp r1, r0
	bge _0806796C
	movs r0, #8
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
_0806796A:
	strb r0, [r4, #0x18]
_0806796C:
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
_08067978:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806797C
sub_0806797C: @ 0x0806797C
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08067998
	adds r0, r4, #0
	bl sub_08067B08
_08067998:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806799C
sub_0806799C: @ 0x0806799C
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	ldr r0, _080679C0 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _080679BE
	adds r0, r4, #0
	bl sub_08067B08
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805E3A0
_080679BE:
	pop {r4, pc}
	.align 2, 0
_080679C0: .4byte gTextBox

	thumb_func_start sub_080679C4
sub_080679C4: @ 0x080679C4
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x74
	ldrb r0, [r1]
	cmp r0, #0
	beq _080679E6
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080679E6
	adds r0, r4, #0
	bl sub_08067D20
	cmp r0, #0
	bne _080679EE
_080679E6:
	adds r0, r4, #0
	bl sub_08067C24
	b _08067A0A
_080679EE:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	bl sub_08067BD4
	adds r0, r4, #0
	bl sub_08067D74
	cmp r0, #0
	beq _08067A0A
	adds r0, r4, #0
	bl sub_08067C18
_08067A0A:
	pop {r4, pc}

	thumb_func_start sub_08067A0C
sub_08067A0C: @ 0x08067A0C
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08067A44
	adds r0, r4, #0
	bl sub_08067D20
	cmp r0, #0
	beq _08067A3C
	adds r0, r4, #0
	movs r1, #5
	bl sub_08067B80
	ldrb r0, [r4, #0xe]
	adds r0, #0x14
	strb r0, [r4, #0xe]
	b _08067A76
_08067A3C:
	adds r0, r4, #0
	bl sub_08067C24
	b _08067A76
_08067A44:
	movs r2, #7
	ands r2, r1
	cmp r2, #0
	beq _08067A70
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldr r1, _08067A6C @ =gUnk_08111154
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	lsls r0, r0, #2
	subs r0, #1
	adds r0, r2, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x48]
	b _08067A76
	.align 2, 0
_08067A6C: .4byte gUnk_08111154
_08067A70:
	adds r0, r4, #0
	bl sub_08067DDC
_08067A76:
	pop {r4, pc}

	thumb_func_start sub_08067A78
sub_08067A78: @ 0x08067A78
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08067A94
	adds r0, r4, #0
	bl sub_08067AAC
_08067A94:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08067A98
sub_08067A98: @ 0x08067A98
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _08067AAA
	adds r0, r4, #0
	bl sub_08067B08
_08067AAA:
	pop {r4, pc}

	thumb_func_start sub_08067AAC
sub_08067AAC: @ 0x08067AAC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	bl Random
	ldr r2, _08067AFC @ =gUnk_081110FC
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x72
	strh r0, [r1]
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #4
	movs r0, #1
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08067DCC
	ldr r0, _08067B00 @ =gUnk_0811110C
	ldrb r2, [r0, #2]
	ldr r3, _08067B04 @ =gUnk_0811110F
	adds r0, r4, #0
	movs r1, #0
	bl sub_08078850
	pop {r4, pc}
	.align 2, 0
_08067AFC: .4byte gUnk_081110FC
_08067B00: .4byte gUnk_0811110C
_08067B04: .4byte gUnk_0811110F

	thumb_func_start sub_08067B08
sub_08067B08: @ 0x08067B08
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	bl Random
	ldr r2, _08067B30 @ =gUnk_08111104
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x72
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08067B34
	pop {r4, pc}
	.align 2, 0
_08067B30: .4byte gUnk_08111104

	thumb_func_start sub_08067B34
sub_08067B34: @ 0x08067B34
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_08067DCC
	bl Random
	movs r1, #0x30
	ands r0, r1
	adds r0, #0xb4
	adds r1, r4, #0
	adds r1, #0x59
	strb r0, [r1]
	ldr r1, _08067B68 @ =gUnk_0811110C
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	adds r0, r0, r1
	ldrb r2, [r0]
	ldr r3, _08067B6C @ =gUnk_0811110F
	adds r0, r4, #0
	movs r1, #0
	bl sub_08078850
	pop {r4, pc}
	.align 2, 0
_08067B68: .4byte gUnk_0811110C
_08067B6C: .4byte gUnk_0811110F

	thumb_func_start sub_08067B70
sub_08067B70: @ 0x08067B70
	push {lr}
	movs r1, #3
	strb r1, [r0, #0xc]
	movs r1, #4
	bl sub_08067DCC
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08067B80
sub_08067B80: @ 0x08067B80
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #5
	strb r0, [r5, #0xc]
	movs r0, #0x14
	strb r0, [r5, #0xe]
	bl Random
	movs r1, #0x7f
	ands r0, r1
	adds r0, #0x1e
	adds r1, r5, #0
	adds r1, #0x74
	strb r0, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	bl InitAnimationForceUpdate
	adds r0, r5, #0
	bl sub_08067DDC
	ldr r0, _08067BC4 @ =gPlayerEntity
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	movs r2, #0x2e
	ldrsh r0, [r0, r2]
	cmp r1, r0
	bge _08067BC8
	ldrb r0, [r5, #0x18]
	movs r1, #0x40
	orrs r0, r1
	b _08067BD0
	.align 2, 0
_08067BC4: .4byte gPlayerEntity
_08067BC8:
	ldrb r1, [r5, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
_08067BD0:
	strb r0, [r5, #0x18]
	pop {r4, r5, pc}

	thumb_func_start sub_08067BD4
sub_08067BD4: @ 0x08067BD4
	push {r4, lr}
	adds r2, r0, #0
	ldrb r3, [r2, #0x18]
	lsls r0, r3, #0x19
	cmp r0, #0
	bge _08067BFC
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	subs r0, #4
	ldr r1, _08067BF8 @ =gPlayerEntity
	movs r4, #0x2e
	ldrsh r1, [r1, r4]
	cmp r0, r1
	ble _08067C12
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r3
	b _08067C10
	.align 2, 0
_08067BF8: .4byte gPlayerEntity
_08067BFC:
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	adds r0, #4
	ldr r1, _08067C14 @ =gPlayerEntity
	movs r4, #0x2e
	ldrsh r1, [r1, r4]
	cmp r0, r1
	bge _08067C12
	movs r0, #0x40
	orrs r0, r3
_08067C10:
	strb r0, [r2, #0x18]
_08067C12:
	pop {r4, pc}
	.align 2, 0
_08067C14: .4byte gPlayerEntity

	thumb_func_start sub_08067C18
sub_08067C18: @ 0x08067C18
	push {lr}
	movs r1, #6
	strb r1, [r0, #0xc]
	bl InitAnimationForceUpdate
	pop {pc}

	thumb_func_start sub_08067C24
sub_08067C24: @ 0x08067C24
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #7
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x75
	movs r0, #0x14
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08067DDC
	adds r0, r4, #0
	movs r1, #7
	bl InitAnimationForceUpdate
	pop {r4, pc}
	
	thumb_func_start sub_08067C44
sub_08067C44: @ 0x08067C44
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08067C6C @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	rsbs r0, r0, #0
	lsrs r5, r0, #0x1f
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r0, [r0]
	cmp r5, r0
	beq _08067C7C
	cmp r5, #0
	bne _08067C70
	adds r0, r4, #0
	bl sub_08078778
	b _08067C7C
	.align 2, 0
_08067C6C: .4byte gPlayerState
_08067C70:
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_080787A8
_08067C7C:
	adds r0, r4, #0
	adds r0, #0x69
	strb r5, [r0]
	subs r0, #0x30
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r5, r0, #0
	cmp r1, #0
	beq _08067D1C
	ldr r1, _08067CB4 @ =gPlayerEntity
	adds r0, r4, #0
	bl sub_0806FCA0
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	beq _08067CA6
	cmp r0, #3
	beq _08067CB8
_08067CA6:
	cmp r2, #2
	bne _08067CDA
	adds r0, r4, #0
	movs r1, #2
	bl InitAnimationForceUpdate
	b _08067CEC
	.align 2, 0
_08067CB4: .4byte gPlayerEntity
_08067CB8:
	cmp r2, #1
	bne _08067CC4
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	b _08067CD4
_08067CC4:
	ldrb r1, [r4, #0x18]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1f
	cmp r0, #3
	bne _08067CD6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
_08067CD4:
	strb r0, [r4, #0x18]
_08067CD6:
	cmp r2, #2
	beq _08067CE4
_08067CDA:
	adds r0, r4, #0
	movs r1, #1
	bl InitAnimationForceUpdate
	b _08067CEC
_08067CE4:
	adds r0, r4, #0
	movs r1, #2
	bl InitAnimationForceUpdate
_08067CEC:
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #2
	bne _08067D00
	movs r0, #8
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0806F118
	b _08067D12
_08067D00:
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_08067790
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
_08067D12:
	movs r0, #0
	strb r0, [r5]
	movs r0, #0xd2
	bl PlaySFX
_08067D1C:
	pop {r4, r5, pc}
	.align 2, 0
	
	thumb_func_start sub_08067D20
sub_08067D20: @ 0x08067D20
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x75
	ldrb r0, [r1]
	cmp r0, #0
	beq _08067D34
	subs r0, #1
	strb r0, [r1]
	b _08067D70
_08067D34:
	movs r0, #2
	bl sub_08049DF4
	adds r2, r0, #0
	cmp r2, #0
	beq _08067D70
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x19
	movs r3, #0x28
	cmp r0, #0
	bge _08067D4C
	movs r3, #0x10
_08067D4C:
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	movs r5, #0x2e
	ldrsh r0, [r4, r5]
	subs r0, r0, r3
	subs r1, r1, r0
	cmp r1, #0x30
	bhi _08067D70
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	adds r0, #4
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	cmp r0, #0x38
	bhi _08067D70
	movs r0, #1
	b _08067D72
_08067D70:
	movs r0, #0
_08067D72:
	pop {r4, r5, pc}

	thumb_func_start sub_08067D74
sub_08067D74: @ 0x08067D74
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	beq _08067DC8
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08067D88
	subs r0, #1
	strb r0, [r4, #0xe]
_08067D88:
	movs r0, #2
	bl sub_08049DF4
	adds r2, r0, #0
	cmp r2, #0
	beq _08067DC8
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x19
	movs r3, #0x18
	cmp r0, #0
	bge _08067DA0
	movs r3, #8
_08067DA0:
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	movs r5, #0x2e
	ldrsh r0, [r4, r5]
	subs r0, r0, r3
	subs r1, r1, r0
	cmp r1, #0x1e
	bhi _08067DC8
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	cmp r0, #0x16
	bhi _08067DC8
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08067DC8
	movs r0, #1
	b _08067DCA
_08067DC8:
	movs r0, #0
_08067DCA:
	pop {r4, r5, pc}

	thumb_func_start sub_08067DCC
sub_08067DCC: @ 0x08067DCC
	push {lr}
	adds r2, r0, #0
	adds r2, #0x71
	strb r1, [r2]
	bl InitAnimationForceUpdate
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08067DDC
sub_08067DDC: @ 0x08067DDC
	adds r2, r0, #0
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	movs r1, #0
	strb r0, [r2, #0x10]
	adds r0, r2, #0
	adds r0, #0x41
	strb r1, [r0]
	subs r0, #4
	strb r1, [r0]
	ldr r0, _08067DF8 @ =gUnk_08110EF0
	str r0, [r2, #0x48]
	bx lr
	.align 2, 0
_08067DF8: .4byte gUnk_08110EF0

	thumb_func_start Cat_Fusion
Cat_Fusion: @ 0x08067DFC
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _08067E22
	adds r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	adds r0, r2, #0
	movs r1, #5
	bl InitAnimationForceUpdate
	b _08067E28
_08067E22:
	adds r0, r2, #0
	bl UpdateAnimationSingleFrame
_08067E28:
	pop {pc}
	.align 2, 0
