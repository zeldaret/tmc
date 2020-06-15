	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start TektiteGolden
TektiteGolden: @ 0x08037EC8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08037EE4 @ =gUnk_080CF4A0
	bl EnemyFunctionHandler
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl SetChildOffset
	pop {r4, pc}
	.align 2, 0
_08037EE4: .4byte gUnk_080CF4A0

	thumb_func_start sub_08037EE8
sub_08037EE8: @ 0x08037EE8
	push {lr}
	ldr r2, _08037EFC @ =gUnk_080CF4B8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08037EFC: .4byte gUnk_080CF4B8

	thumb_func_start sub_08037F00
sub_08037F00: @ 0x08037F00
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08037F14
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08037F14:
	ldr r1, _08037F54 @ =gUnk_080CF4A0
	adds r0, r4, #0
	bl sub_0804AA30
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x94
	bne _08037F50
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r0, #0x14
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x80
	strb r1, [r0]
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08037F46
	ldr r0, [r4, #0x20]
	asrs r0, r0, #2
_08037F46:
	str r0, [r4, #0x20]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
_08037F50:
	pop {r4, pc}
	.align 2, 0
_08037F54: .4byte gUnk_080CF4A0

	thumb_func_start sub_08037F58
sub_08037F58: @ 0x08037F58
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08037F6E
	ldrb r0, [r4, #0xb]
	bl SetGlobalFlag
_08037F6E:
	ldrb r0, [r4, #0xa]
	movs r2, #0x58
	cmp r0, #0
	beq _08037F78
	movs r2, #0x59
_08037F78:
	adds r0, r4, #0
	movs r1, #0xff
	bl CreateDeathFx
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08037F84
sub_08037F84: @ 0x08037F84
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08001242
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08037F9E
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
_08037F9E:
	pop {r4, pc}

	thumb_func_start sub_08037FA0
sub_08037FA0: @ 0x08037FA0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	bl CheckGlobalFlag
	cmp r0, #0
	beq _08037FB2
	bl DeleteThisEntity
_08037FB2:
	adds r0, r5, #0
	bl sub_0804A720
	movs r4, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	strb r4, [r5, #0xd]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x20
	strb r0, [r5, #0xe]
	strb r4, [r5, #0xf]
	adds r0, r5, #0
	adds r0, #0x80
	strb r4, [r0]
	adds r0, r5, #0
	movs r1, #0
	bl InitializeAnimation
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08037FE0
sub_08037FE0: @ 0x08037FE0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #2
	bl InitializeAnimationAnimation
	ldrb r0, [r4, #0xe]
	adds r2, r0, #0
	cmp r2, #0
	beq _08037FF8
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08038046
_08037FF8:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0803802C
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08038046
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #6
	strb r0, [r4, #0xe]
	strb r2, [r4, #0xf]
	movs r0, #0xe0
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl sub_08038168
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
	b _08038046
_0803802C:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08038046
	movs r0, #0x40
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
_08038046:
	pop {r4, pc}

	thumb_func_start sub_08038048
sub_08038048: @ 0x08038048
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #2
	bl InitializeAnimationAnimation
	adds r0, r4, #0
	bl sub_080AEF88
	movs r0, #0x36
	ldrsh r6, [r4, r0]
	bl Random
	adds r5, r0, #0
	movs r0, #0xf
	ands r5, r0
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #1
	bne _08038088
	movs r0, #0
	movs r1, #3
	strb r1, [r4, #0xc]
	strb r0, [r4, #0xd]
	movs r0, #0x14
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl InitializeAnimation
	b _0803810C
_08038088:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _08038098
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800417E
	b _080380B0
_08038098:
	adds r0, r4, #0
	bl sub_080002B8
	movs r1, #0xf0
	ands r1, r0
	cmp r1, #0x50
	bne _080380B0
	ldrb r0, [r4, #0x15]
	adds r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
_080380B0:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080380C8
	adds r0, r5, #0
	adds r0, #0x10
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08038168
_080380C8:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080380E2
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r6, r0
	bge _080380E2
	adds r0, r4, #0
	movs r1, #4
	bl InitializeAnimation
	movs r0, #1
	strb r0, [r4, #0xd]
_080380E2:
	movs r0, #0xc
	rsbs r0, r0, #0
	cmp r6, r0
	bge _080380F6
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	b _08038100
_080380F6:
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x80
_08038100:
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1b]
_0803810C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08038110
sub_08038110: @ 0x08038110
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #2
	bl InitializeAnimationAnimation
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08038164
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r0, [r2]
	cmp r0, #4
	bhi _08038150
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
	movs r0, #0xe0
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl sub_08038168
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
	b _08038164
_08038150:
	movs r0, #0
	movs r1, #1
	strb r1, [r4, #0xc]
	strb r0, [r2]
	movs r0, #0xc0
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
_08038164:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08038168
sub_08038168: @ 0x08038168
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _0803817E
	adds r0, r4, #0
	bl sub_08049EE4
	strb r0, [r4, #0x15]
	b _080381AA
_0803817E:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08038196
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	b _080381AA
_08038196:
	bl Random
	movs r1, #0xf
	ands r1, r0
	adds r1, #0x18
	ldrb r0, [r4, #0x15]
	adds r1, r1, r0
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r4, #0x15]
_080381AA:
	pop {r4, pc}
