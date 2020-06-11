	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08031864
sub_08031864: @ 0x08031864
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080012DC
	adds r4, r0, #0
	cmp r4, #0
	beq _0803189C
	adds r0, r5, #0
	adds r0, #0x3a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08031886
	adds r0, r5, #0
	bl sub_08032338
_08031886:
	ldr r0, _08031898 @ =gUnk_080012C8
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
	b _080318BE
	.align 2, 0
_08031898: .4byte gUnk_080012C8
_0803189C:
	ldr r4, _080318C0 @ =gUnk_080CE56C
	adds r0, r5, #0
	bl sub_0800279C
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
	bl sub_0804A9AC
_080318BE:
	pop {r4, r5, pc}
	.align 2, 0
_080318C0: .4byte gUnk_080CE56C

	thumb_func_start sub_080318C4
sub_080318C4: @ 0x080318C4
	push {lr}
	ldr r2, _080318D8 @ =gUnk_080CE584
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080318D8: .4byte gUnk_080CE584

	thumb_func_start sub_080318DC
sub_080318DC: @ 0x080318DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	adds r0, #0x80
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080318FA
	b _08031A36
_080318FA:
	ldrb r0, [r4, #0xa]
	adds r5, r4, #0
	adds r5, #0x42
	cmp r0, #1
	bne _080319DE
	ldrb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x45
	str r1, [sp]
	cmp r0, #6
	bhi _080319AC
	ldrb r0, [r5]
	cmp r0, #0
	beq _080319AC
	ldr r3, [r4, #0x54]
	movs r0, #0x29
	adds r0, r0, r4
	mov sb, r0
	movs r1, #0x3e
	adds r1, r1, r4
	mov sl, r1
	cmp r3, #0
	beq _08031960
	ldr r0, [r4, #0x50]
	str r0, [r3, #0x50]
	movs r0, #5
	mov ip, r0
	movs r1, #0x39
	rsbs r1, r1, #0
	mov r8, r1
	movs r7, #8
	movs r6, #0xf4
_0803193A:
	mov r0, ip
	strb r0, [r3, #0xc]
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r0, [r2]
	mov r1, r8
	ands r1, r0
	orrs r1, r7
	strb r1, [r2]
	adds r1, r3, #0
	adds r1, #0x3d
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0803195A
	strb r6, [r1]
_0803195A:
	ldr r3, [r3, #0x54]
	cmp r3, #0
	bne _0803193A
_08031960:
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _0803196C
	ldr r0, [r4, #0x54]
	str r0, [r1, #0x54]
	b _08031974
_0803196C:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _08031974
	str r4, [r4, #0x50]
_08031974:
	movs r0, #9
	strb r0, [r4, #0xc]
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	mov r1, sb
	strb r0, [r1]
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0xf
	bhi _0803199C
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _080319A2
_0803199C:
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
_080319A2:
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0xe
	bl UpdateSprite
_080319AC:
	ldr r1, [sp]
	ldrb r0, [r1]
	cmp r0, #0
	bne _080319DE
	bl Random
	adds r2, r4, #0
	adds r2, #0x3e
	movs r1, #7
	ands r0, r1
	ldrb r1, [r2]
	adds r0, r0, r1
	subs r0, #4
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0xb]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldrb r1, [r5]
	adds r0, r0, r1
	strb r0, [r5]
	adds r0, r4, #0
	bl sub_08032338
_080319DE:
	ldrb r0, [r5]
	cmp r0, #0
	beq _08031A36
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08031A36
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080319FC
	movs r0, #8
	b _080319FE
_080319FC:
	movs r0, #9
_080319FE:
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0xf
	bhi _08031A14
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _08031A1A
_08031A14:
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
_08031A1A:
	strb r0, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #8
	orrs r1, r0
	strb r1, [r2]
	adds r0, r4, #0
	movs r1, #0xe
	bl UpdateSprite
_08031A36:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08031A48
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08031A48:
	ldr r1, _08031A5C @ =gUnk_080CE56C
	adds r0, r4, #0
	bl sub_0804AA30
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08031A5C: .4byte gUnk_080CE56C

	thumb_func_start sub_08031A60
sub_08031A60: @ 0x08031A60
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08031A7A
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
_08031A7A:
	adds r0, r4, #0
	bl sub_08001324

	thumb_func_start nullsub_153
nullsub_153: @ 0x08031A80
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_154
nullsub_154: @ 0x08031A84
	bx lr
	.align 2, 0

	thumb_func_start sub_08031A88
sub_08031A88: @ 0x08031A88
	push {lr}
	ldr r2, _08031A9C @ =gUnk_080CE58C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08031A9C: .4byte gUnk_080CE58C

	thumb_func_start sub_08031AA0
sub_08031AA0: @ 0x08031AA0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x74
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	bl Random
	adds r4, #0x79
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08031AC8
sub_08031AC8: @ 0x08031AC8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	beq _08031AD8
	subs r0, #1
	strb r0, [r6, #0xe]
	b _08031B44
_08031AD8:
	adds r0, r6, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08031B44
	bl Random
	adds r5, r0, #0
	adds r0, r6, #0
	adds r0, #0x74
	ldrh r4, [r0]
	adds r0, r5, #0
	movs r1, #5
	bl __modsi3
	lsls r0, r0, #4
	adds r4, r4, r0
	adds r7, r4, #0
	subs r7, #0x20
	adds r0, r6, #0
	adds r0, #0x76
	ldrh r4, [r0]
	lsrs r5, r5, #4
	adds r0, r5, #0
	movs r1, #5
	bl __modsi3
	lsls r0, r0, #4
	adds r4, r4, r0
	subs r4, #0x20
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080002D4
	cmp r0, #0
	bne _08031B44
	movs r0, #2
	strb r0, [r6, #0xc]
	ldrb r1, [r6, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r6, #0x18]
	strh r7, [r6, #0x2e]
	strh r4, [r6, #0x32]
	adds r0, r6, #0
	movs r1, #0
	bl UpdateSprite
_08031B44:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08031B48
sub_08031B48: @ 0x08031B48
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08031B6C
	movs r0, #0
	strb r0, [r2]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	b _08031B90
_08031B6C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08031B90
	movs r0, #3
	strb r0, [r4, #0xc]
	bl Random
	ldr r2, _08031B94 @ =gUnk_080CE5B0
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #1
	bl UpdateSprite
_08031B90:
	pop {r4, pc}
	.align 2, 0
_08031B94: .4byte gUnk_080CE5B0

	thumb_func_start sub_08031B98
sub_08031B98: @ 0x08031B98
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08031E04
	cmp r0, #0
	beq _08031BDA
	movs r0, #5
	strb r0, [r4, #0xc]
	ldr r0, _08031BC4 @ =gUnk_020000B0
	ldr r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	movs r2, #0x2e
	ldrsh r0, [r0, r2]
	cmp r1, r0
	ble _08031BC8
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _08031BCE
	.align 2, 0
_08031BC4: .4byte gUnk_020000B0
_08031BC8:
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
_08031BCE:
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #3
	bl UpdateSprite
	b _08031C1A
_08031BDA:
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08031BFA
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08031BFA
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
_08031BFA:
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08031C1A
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #2
	bl UpdateSprite
_08031C1A:
	pop {r4, pc}

	thumb_func_start sub_08031C1C
sub_08031C1C: @ 0x08031C1C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08031C50
	movs r0, #1
	strb r0, [r4, #0xc]
	bl Random
	ldr r2, _08031C54 @ =gUnk_080CE5B8
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_08031C50:
	pop {r4, pc}
	.align 2, 0
_08031C54: .4byte gUnk_080CE5B8

	thumb_func_start sub_08031C58
sub_08031C58: @ 0x08031C58
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	bl sub_08004274
	adds r3, r7, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _08031D54
	ldr r0, _08031D50 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x42
	bhi _08031D66
	bl Random
	adds r6, r0, #0
	movs r0, #3
	mov sb, r0
	ands r6, r0
	movs r0, #0x2e
	movs r1, #1
	bl CreateEnemy
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	mov r0, r8
	strb r0, [r4, #0xb]
	mov r0, r8
	str r0, [r4, #0x50]
	adds r0, r4, #0
	adds r0, #0x74
	strb r6, [r0]
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08031E48
	movs r0, #0x2e
	movs r1, #1
	bl CreateEnemy
	adds r5, r0, #0
	str r5, [r4, #0x54]
	movs r0, #1
	strb r0, [r5, #0xb]
	str r4, [r5, #0x50]
	adds r0, r5, #0
	adds r0, #0x74
	strb r6, [r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08031E48
	movs r0, #0x2e
	movs r1, #1
	bl CreateEnemy
	adds r4, r0, #0
	str r4, [r5, #0x54]
	movs r0, #2
	strb r0, [r4, #0xb]
	str r5, [r4, #0x50]
	adds r0, r4, #0
	adds r0, #0x74
	strb r6, [r0]
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08031E48
	movs r0, #0x2e
	movs r1, #1
	bl CreateEnemy
	adds r5, r0, #0
	str r5, [r4, #0x54]
	mov r0, sb
	strb r0, [r5, #0xb]
	str r4, [r5, #0x50]
	adds r0, r5, #0
	adds r0, #0x74
	strb r6, [r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08031E48
	movs r0, #0x2e
	movs r1, #1
	bl CreateEnemy
	adds r1, r0, #0
	str r1, [r5, #0x54]
	movs r0, #4
	strb r0, [r1, #0xb]
	str r5, [r1, #0x50]
	mov r0, r8
	str r0, [r1, #0x54]
	adds r0, r1, #0
	adds r0, #0x74
	strb r6, [r0]
	adds r0, r7, #0
	bl sub_08031E48
	movs r0, #6
	strb r0, [r7, #0xc]
	movs r0, #0x14
	strb r0, [r7, #0xe]
	adds r2, r7, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	movs r1, #7
	bl UpdateSprite
	b _08031D66
	.align 2, 0
_08031D50: .4byte gUnk_03003DBC
_08031D54:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08031D66
	strb r2, [r3]
	ldrb r1, [r7, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r7, #0x10]
_08031D66:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08031D70
sub_08031D70: @ 0x08031D70
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08031D9C
	movs r0, #7
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #5
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #9
	ands r0, r1
	strb r0, [r4, #0x18]
_08031D9C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08031DA0
sub_08031DA0: @ 0x08031DA0
	push {lr}
	adds r1, r0, #0
	ldrb r2, [r1, #0xe]
	movs r0, #0xf
	ands r0, r2
	cmp r0, #0
	bne _08031DC2
	cmp r2, #0x50
	bne _08031DBA
	adds r0, r1, #0
	bl DeleteEntity
	b _08031DC2
_08031DBA:
	movs r0, #1
	strb r0, [r1, #0xc]
	movs r0, #0xb4
	strb r0, [r1, #0xe]
_08031DC2:
	pop {pc}

	thumb_func_start sub_08031DC4
sub_08031DC4: @ 0x08031DC4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08031DE8
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xb4
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0xb8
	ands r0, r1
	strb r0, [r4, #0x18]
	b _08031E00
_08031DE8:
	adds r0, r4, #0
	bl sub_08004274
	ldrb r1, [r5]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #2
	bne _08031E00
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
_08031E00:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08031E04
sub_08031E04: @ 0x08031E04
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_08049DF4
	adds r2, r0, #0
	cmp r2, #0
	beq _08031E44
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r3, #6
	ands r3, r0
	ldr r0, _08031E40 @ =gUnk_080CE5C0
	adds r3, r3, r0
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r1, r1, r0
	movs r0, #0x32
	ldrsh r2, [r2, r0]
	movs r0, #1
	ldrsb r0, [r3, r0]
	adds r2, r2, r0
	adds r0, r4, #0
	movs r3, #0x50
	bl sub_0806FCB8
	b _08031E46
	.align 2, 0
_08031E40: .4byte gUnk_080CE5C0
_08031E44:
	movs r0, #0
_08031E46:
	pop {r4, pc}

	thumb_func_start sub_08031E48
sub_08031E48: @ 0x08031E48
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl CopyPosition
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x6c
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x70
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x70
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x72
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x72
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	subs r1, #4
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	str r5, [r4, #0x7c]
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08031E90
sub_08031E90: @ 0x08031E90
	push {lr}
	ldr r2, _08031EA4 @ =gUnk_080CE5C8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08031EA4: .4byte gUnk_080CE5C8

	thumb_func_start sub_08031EA8
sub_08031EA8: @ 0x08031EA8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x3a
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0xb]
	movs r1, #4
	subs r1, r1, r0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #1
	strh r0, [r4, #0x36]
	bl Random
	adds r1, r4, #0
	adds r1, #0x79
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #4
	bl UpdateSprite
	pop {r4, pc}

	thumb_func_start sub_08031EE8
sub_08031EE8: @ 0x08031EE8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x20]
	subs r0, r0, r1
	str r0, [r4, #0x34]
	ldr r0, _08031F4C @ =0xFFFFE800
	adds r1, r1, r0
	str r1, [r4, #0x20]
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _08031F1E
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bne _08031F10
	ldr r0, _08031F50 @ =0x0000012B
	bl sub_08004488
_08031F10:
	ldrb r0, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #0x18]
_08031F1E:
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _08031F2E
	adds r0, r4, #0
	bl sub_08004274
_08031F2E:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bgt _08031F48
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #5
	bl UpdateSprite
_08031F48:
	pop {r4, pc}
	.align 2, 0
_08031F4C: .4byte 0xFFFFE800
_08031F50: .4byte 0x0000012B

	thumb_func_start sub_08031F54
sub_08031F54: @ 0x08031F54
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08031FAC @ =gUnk_080CE5F0
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r4, #0
	bl sub_08003FC4
	ldrb r1, [r4, #0xb]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #1
	rsbs r0, r0, #0
	movs r2, #0x36
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bgt _08031FAA
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x14
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0xb]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #1
	rsbs r0, r0, #0
	strh r0, [r4, #0x36]
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _08031FA2
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_08031FA2:
	adds r0, r4, #0
	movs r1, #6
	bl UpdateSprite
_08031FAA:
	pop {r4, pc}
	.align 2, 0
_08031FAC: .4byte gUnk_080CE5F0

	thumb_func_start sub_08031FB0
sub_08031FB0: @ 0x08031FB0
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08004274
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08032006
	ldr r0, [r5, #0x50]
	cmp r0, #0
	bne _08031FD8
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032006
_08031FD8:
	movs r4, #0
	movs r0, #4
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	adds r0, #0x76
	strb r4, [r0]
	ldr r0, [r5, #0x54]
	cmp r0, #0
	beq _08031FFE
	adds r0, r5, #0
	movs r1, #9
	bl UpdateSprite
	b _08032006
_08031FFE:
	adds r0, r5, #0
	movs r1, #8
	bl UpdateSprite
_08032006:
	pop {r4, r5, pc}

	thumb_func_start sub_08032008
sub_08032008: @ 0x08032008
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_080322A4
	adds r7, r0, #0
	cmp r7, #0
	beq _08032018
	b _08032144
_08032018:
	ldr r5, [r4, #0x50]
	cmp r5, #0
	bne _080320D4
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08032060
	adds r1, r4, #0
	adds r1, #0x79
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r1, #0xff
	ands r0, r1
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08032052
	ldr r0, _0803205C @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
_08032052:
	adds r0, r4, #0
	adds r0, #0x76
	strb r7, [r0]
	b _080320AC
	.align 2, 0
_0803205C: .4byte gUnk_020000B0
_08032060:
	adds r1, r4, #0
	adds r1, #0x76
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803207C
	subs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x7a
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_08004596
	b _080320AC
_0803207C:
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _0803209E
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0803209E
	adds r0, r4, #0
	bl sub_08049EE4
	b _080320A6
_0803209E:
	bl Random
	movs r1, #0x1e
	ands r0, r1
_080320A6:
	adds r1, r4, #0
	adds r1, #0x7a
	strb r0, [r1]
_080320AC:
	ldrb r1, [r4, #0x15]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080320CC
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
_080320CC:
	adds r0, r4, #0
	bl sub_080AEF88
	b _0803213E
_080320D4:
	adds r6, r4, #0
	adds r6, #0x77
	ldrb r0, [r6]
	cmp r0, #0
	bne _0803210E
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	movs r3, #1
	bl sub_0806FCB8
	cmp r0, #0
	bne _0803213E
	movs r0, #1
	strb r0, [r6]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080322E8
	adds r0, r4, #0
	bl sub_0806F69C
	b _0803213E
_0803210E:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080322E8
	adds r0, r4, #0
	bl sub_0806F69C
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bne _0803213E
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bne _0803213E
	strb r7, [r6]
_0803213E:
	adds r0, r4, #0
	bl sub_08004274
_08032144:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08032148
sub_08032148: @ 0x08032148
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #6
	bl sub_08003FC4
	cmp r0, #0
	bne _0803215E
	adds r0, r4, #0
	bl sub_08032290
_0803215E:
	pop {r4, pc}

	thumb_func_start sub_08032160
sub_08032160: @ 0x08032160
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _080321C2
	movs r0, #7
	strb r0, [r4, #0xc]
	ldr r2, _08032190 @ =gUnk_080CE5FA
	adds r0, r4, #0
	adds r0, #0x74
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #0xb]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #0x15]
	cmp r0, #0xf
	bls _08032194
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	b _0803219C
	.align 2, 0
_08032190: .4byte gUnk_080CE5FA
_08032194:
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
_0803219C:
	strb r0, [r4, #0x18]
	movs r0, #0xf0
	strh r0, [r4, #0x24]
	movs r0, #0x90
	lsls r0, r0, #9
	str r0, [r4, #0x20]
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
	movs r1, #0xc
	bl UpdateSprite
_080321C2:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _080321E6
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _080321E2
	movs r2, #0
_080321D0:
	adds r0, r1, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _080321DC
	strb r2, [r1, #0xe]
_080321DC:
	ldr r1, [r1, #0x50]
	cmp r1, #0
	bne _080321D0
_080321E2:
	movs r0, #0
	strb r0, [r4, #0xe]
_080321E6:
	pop {r4, pc}

	thumb_func_start sub_080321E8
sub_080321E8: @ 0x080321E8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEFE0
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #0
	bne _08032202
	movs r0, #8
	strb r0, [r4, #0xc]
_08032202:
	pop {r4, pc}

	thumb_func_start sub_08032204
sub_08032204: @ 0x08032204
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08032230
	movs r0, #0
	strb r0, [r2]
	bl Random
	movs r1, #0x30
	ands r0, r1
	adds r0, #0x1e
	adds r1, r4, #0
	adds r1, #0x59
	strb r0, [r1]
	b _08032244
_08032230:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08032244
	movs r0, #9
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0xd
	bl UpdateSprite
_08032244:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08032248
sub_08032248: @ 0x08032248
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	cmp r0, #0
	bne _0803228E
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08032276
	ldr r1, [r4, #0x7c]
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	adds r0, r4, #0
	bl DeleteEntity
	b _0803228E
_08032276:
	adds r0, r4, #0
	bl sub_08004274
	ldrb r1, [r5]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #2
	bne _0803228E
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
_0803228E:
	pop {r4, r5, pc}

	thumb_func_start sub_08032290
sub_08032290: @ 0x08032290
	push {lr}
	movs r1, #6
	strb r1, [r0, #0xc]
	movs r1, #0xc
	strb r1, [r0, #0xe]
	movs r1, #0xb
	bl UpdateSprite
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080322A4
sub_080322A4: @ 0x080322A4
	push {r4, lr}
	adds r2, r0, #0
	ldr r3, [r2, #0x54]
	cmp r3, #0
	beq _080322E2
	movs r1, #0x36
	ldrsh r0, [r3, r1]
	adds r0, #8
	movs r4, #0x36
	ldrsh r1, [r2, r4]
	cmp r0, r1
	blt _080322E2
	adds r0, r1, #0
	cmp r0, #0
	beq _080322D8
	movs r0, #5
	strb r0, [r2, #0xc]
	ldrh r0, [r3, #0x36]
	adds r0, #8
	strh r0, [r2, #0x36]
	adds r0, r2, #0
	movs r1, #0xb
	bl UpdateSprite
	movs r0, #1
	b _080322E4
_080322D8:
	adds r0, r2, #0
	bl sub_08032290
	movs r0, #1
	b _080322E4
_080322E2:
	movs r0, #0
_080322E4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080322E8
sub_080322E8: @ 0x080322E8
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x78
	ldrb r0, [r2]
	cmp r0, #0
	beq _08032316
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032334
	ldrb r2, [r3, #0x18]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1f
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #6
	subs r0, #0x42
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
	b _08032334
_08032316:
	ldrb r1, [r3, #0x15]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08032334
	lsrs r1, r1, #4
	movs r0, #1
	eors r1, r0
	ldrb r0, [r3, #0x18]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	cmp r1, r0
	beq _08032334
	movs r0, #6
	strb r0, [r2]
_08032334:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08032338
sub_08032338: @ 0x08032338
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x7c]
	ldrb r0, [r1, #0xe]
	adds r0, #0xf
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x50
	beq _08032354
	adds r1, r2, #0
	adds r1, #0x6c
	movs r0, #0
	strb r0, [r1]
_08032354:
	pop {pc}
	.align 2, 0
