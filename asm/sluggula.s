	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08023B94
sub_08023B94: @ 0x08023B94
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _08023BAC
	ldr r1, _08023BA8 @ =gUnk_080CBDBC
	adds r0, r5, #0
	bl EnemyFunctionHandler
	b _08023BEC
	.align 2, 0
_08023BA8: .4byte gUnk_080CBDBC
_08023BAC:
	cmp r0, #0
	bne _08023C00
	movs r1, #0x36
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _08023BD8
	adds r0, r5, #0
	bl sub_080012DC
	adds r1, r0, #0
	cmp r1, #0
	beq _08023BD8
	ldr r0, _08023BD4 @ =gUnk_080012C8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
	b _08023C06
	.align 2, 0
_08023BD4: .4byte gUnk_080012C8
_08023BD8:
	ldr r4, _08023BFC @ =gUnk_080CBDD4
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
_08023BEC:
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl SetChildOffset
	b _08023C06
	.align 2, 0
_08023BFC: .4byte gUnk_080CBDD4
_08023C00:
	adds r0, r5, #0
	bl sub_08023E10
_08023C06:
	pop {r4, r5, pc}

	thumb_func_start sub_08023C08
sub_08023C08: @ 0x08023C08
	push {lr}
	ldr r2, _08023C1C @ =gUnk_080CBDEC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08023C1C: .4byte gUnk_080CBDEC

	thumb_func_start sub_08023C20
sub_08023C20: @ 0x08023C20
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08023C34
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08023C34:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _08023C48
	ldr r1, _08023C44 @ =gUnk_080CBDBC
	adds r0, r4, #0
	bl sub_0804AA30
	b _08023C50
	.align 2, 0
_08023C44: .4byte gUnk_080CBDBC
_08023C48:
	ldr r1, _08023C54 @ =gUnk_080CBDD4
	adds r0, r4, #0
	bl sub_0804AA30
_08023C50:
	pop {r4, pc}
	.align 2, 0
_08023C54: .4byte gUnk_080CBDD4

	thumb_func_start nullsub_137
nullsub_137: @ 0x08023C58
	bx lr
	.align 2, 0

	thumb_func_start sub_08023C5C
sub_08023C5C: @ 0x08023C5C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	bl Random
	movs r1, #0x30
	ands r0, r1
	adds r0, #0xb4
	strb r0, [r4, #0xe]
	bl Random
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl InitializeAnimation
	pop {r4, pc}

	thumb_func_start sub_08023C8C
sub_08023C8C: @ 0x08023C8C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_08023E54
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08023CDC
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #1
	beq _08023CBC
	movs r0, #8
	strb r0, [r4, #0xe]
	b _08023CDC
_08023CBC:
	bl Random
	movs r1, #0x30
	ands r0, r1
	adds r0, #0xb4
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08023E9C
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl InitializeAnimation
_08023CDC:
	pop {r4, pc}
	.align 2, 0
	
	
	thumb_func_start sub_08023CE0
sub_08023CE0: @ 0x08023CE0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _08023D48
	cmp r0, #1
	bgt _08023CF4
	cmp r0, #0
	beq _08023CFA
	b _08023DC0
_08023CF4:
	cmp r0, #2
	beq _08023D6E
	b _08023DC0
_08023CFA:
	adds r0, r4, #0
	bl sub_0804A720
	ldrb r1, [r4, #0xb]
	cmp r1, #1
	bne _08023D1C
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08023D12
	strb r1, [r4, #0xe]
_08023D12:
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	b _08023D20
_08023D1C:
	movs r0, #1
	strb r0, [r4, #0xc]
_08023D20:
	ldr r0, _08023D44 @ =0x0000FF80
	strh r0, [r4, #0x36]
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1b]
	adds r0, r4, #0
	movs r1, #6
	bl InitializeAnimation
	b _08023E0A
	.align 2, 0
_08023D44: .4byte 0x0000FF80
_08023D48:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x20
	bl sub_08049F64
	cmp r0, #0
	beq _08023E0A
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08023D64
	movs r0, #8
	strb r0, [r4, #0xe]
_08023D64:
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	b _08023E0A
_08023D6E:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08023D94
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08023E0A
	ldr r0, _08023D90 @ =0x0000012D
	bl sub_08004488
	adds r0, r4, #0
	movs r1, #4
	bl InitializeAnimation
	b _08023E0A
	.align 2, 0
_08023D90: .4byte 0x0000012D
_08023D94:
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08023E0A
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #7
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0x84
	bl sub_08004488
	adds r0, r4, #0
	bl InitializeAnimationOrderAndFlip
	b _08023E0A
_08023DC0:
	adds r0, r4, #0
	bl sub_08004274
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	cmp r1, #0
	beq _08023E0A
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08023DF2
	movs r0, #0x10
	movs r1, #1
	bl CreateEnemy
	adds r1, r0, #0
	cmp r1, #0
	beq _08023E0A
	adds r0, r4, #0
	bl sub_0804A4E4
	bl sub_0805E780
	b _08023E0A
_08023DF2:
	ldr r1, _08023E0C @ =gUnk_080CBDF4
	ldrb r0, [r2]
	subs r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	movs r1, #0
	strh r0, [r4, #0x32]
	strb r1, [r2]
_08023E0A:
	pop {r4, pc}
	.align 2, 0
_08023E0C: .4byte gUnk_080CBDF4

	thumb_func_start sub_08023E10
sub_08023E10: @ 0x08023E10
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08023E36
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
	movs r1, #5
	bl InitializeAnimation
_08023E36:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08023E50
	adds r0, r4, #0
	bl DeleteEntity
_08023E50:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08023E54
sub_08023E54: @ 0x08023E54
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	adds r1, r0, #1
	strb r1, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1b
	bls _08023E94
	movs r0, #0
	strb r0, [r4, #0xf]
	movs r0, #0x10
	movs r1, #2
	bl CreateEnemy
	adds r5, r0, #0
	cmp r5, #0
	beq _08023E94
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #1
	ldr r1, _08023E98 @ =gUnk_080CBDF7
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
_08023E94:
	pop {r4, r5, pc}
	.align 2, 0
_08023E98: .4byte gUnk_080CBDF7

	thumb_func_start sub_08023E9C
sub_08023E9C: @ 0x08023E9C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl Random
	adds r6, r0, #0
	adds r0, r5, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08023EC2
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _08023EC2
	adds r0, r5, #0
	bl sub_08049EE4
	adds r0, #4
	b _08023F1C
_08023EC2:
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08023F0A
	movs r0, #6
	ands r0, r6
	cmp r0, #0
	beq _08023F0A
	ldr r0, _08023F00 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_080045C4
	ldrb r2, [r5, #0x15]
	subs r1, r0, r2
	cmp r1, #0
	beq _08023F22
	adds r0, r1, #4
	movs r3, #0x1f
	ands r0, r3
	cmp r0, #8
	bls _08023F22
	ands r1, r3
	cmp r1, #0xf
	bhi _08023F04
	adds r0, r2, #0
	adds r0, #8
	b _08023F1C
	.align 2, 0
_08023F00: .4byte gUnk_020000B0
_08023F04:
	adds r0, r2, #0
	subs r0, #8
	b _08023F1C
_08023F0A:
	ldr r4, _08023F24 @ =gUnk_080CBDFF
	lsrs r0, r6, #4
	movs r1, #3
	bl __modsi3
	adds r0, r0, r4
	ldrb r0, [r0]
	ldrb r1, [r5, #0x15]
	adds r0, r0, r1
_08023F1C:
	movs r1, #0x18
	ands r0, r1
	strb r0, [r5, #0x15]
_08023F22:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08023F24: .4byte gUnk_080CBDFF