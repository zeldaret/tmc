	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Moldorm
Moldorm: @ 0x08022B88
	push {lr}
	ldr r2, _08022B9C @ =gUnk_080CBB90
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08022B9C: .4byte gUnk_080CBB90

	thumb_func_start sub_08022BA0
sub_08022BA0: @ 0x08022BA0
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x79
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x74
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	ldr r1, _08022BD0 @ =gUnk_080CBBA0
	adds r0, r4, #0
	bl EnemyFunctionHandler
	adds r0, r4, #0
	bl sub_08022EAC
	pop {r4, pc}
	.align 2, 0
_08022BD0: .4byte gUnk_080CBBA0

	thumb_func_start sub_08022BD4
sub_08022BD4: @ 0x08022BD4
	push {lr}
	ldr r2, _08022BE8 @ =gUnk_080CBBB4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08022BE8: .4byte gUnk_080CBBB4

	thumb_func_start sub_08022BEC
sub_08022BEC: @ 0x08022BEC
	push {lr}
	adds r2, r0, #0
	movs r0, #0x7a
	adds r0, r0, r2
	mov ip, r0
	adds r3, r2, #0
	adds r3, #0x45
	ldrb r0, [r0]
	ldrb r1, [r3]
	cmp r0, r1
	beq _08022C0A
	adds r1, r2, #0
	adds r1, #0x7b
	movs r0, #0x1e
	strb r0, [r1]
_08022C0A:
	ldrb r0, [r3]
	mov r1, ip
	strb r0, [r1]
	movs r0, #1
	strb r0, [r2, #0xe]
	adds r0, r2, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r2, #0x15]
	ldrb r0, [r2, #0x15]
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r2, #0x14]
	strb r0, [r2, #0x1e]
	ldr r0, [r2, #0x54]
	adds r3, r2, #0
	adds r3, #0x3d
	ldrb r1, [r3]
	adds r0, #0x3d
	strb r1, [r0]
	ldr r0, [r2, #0x7c]
	ldrb r1, [r3]
	adds r0, #0x3d
	strb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x80
	ldr r0, [r0]
	ldrb r1, [r3]
	adds r0, #0x3d
	strb r1, [r0]
	ldr r1, _08022C54 @ =gUnk_080CBBA0
	adds r0, r2, #0
	bl sub_0804AA30
	pop {pc}
	.align 2, 0
_08022C54: .4byte gUnk_080CBBA0

	thumb_func_start sub_08022C58
sub_08022C58: @ 0x08022C58
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldrb r1, [r7, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r7, #0x10]
	ldr r0, _08022D3C @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x44
	bhi _08022D34
	movs r0, #0xd
	movs r1, #1
	bl CreateEnemy
	mov sb, r0
	str r0, [r7, #0x54]
	mov r2, sb
	adds r2, #0x29
	ldrb r1, [r2]
	movs r4, #8
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r1, #5
	mov r8, r1
	mov r1, r8
	orrs r0, r1
	strb r0, [r2]
	mov r0, sb
	str r7, [r0, #0x50]
	adds r0, r7, #0
	mov r1, sb
	bl CopyPosition
	movs r0, #0xd
	movs r1, #2
	bl CreateEnemy
	adds r6, r0, #0
	mov r1, sb
	str r6, [r1, #0x54]
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	mov r1, r8
	orrs r0, r1
	strb r0, [r2]
	str r7, [r6, #0x50]
	adds r0, r7, #0
	adds r1, r6, #0
	bl CopyPosition
	movs r0, #0xd
	movs r1, #3
	bl CreateEnemy
	adds r5, r0, #0
	str r5, [r6, #0x54]
	adds r1, r5, #0
	adds r1, #0x29
	ldrb r0, [r1]
	ands r4, r0
	mov r0, r8
	orrs r4, r0
	strb r4, [r1]
	str r7, [r5, #0x50]
	adds r0, r7, #0
	adds r1, r5, #0
	bl CopyPosition
	adds r0, r7, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r7, #0xc]
	strb r0, [r7, #0xe]
	strb r0, [r7, #0xf]
	ldrb r0, [r7, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r7, #0x10]
	str r7, [r7, #0x50]
	mov r1, sb
	str r1, [r7, #0x54]
	str r6, [r7, #0x7c]
	adds r0, r7, #0
	adds r0, #0x80
	str r5, [r0]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r7, #0x15]
	ldrb r0, [r7, #0x15]
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r7, #0x14]
	strb r0, [r7, #0x1e]
	adds r0, r7, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r0, #0x35
	strb r1, [r0]
_08022D34:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08022D3C: .4byte gUnk_03003DBC

	thumb_func_start sub_08022D40
sub_08022D40: @ 0x08022D40
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x7b
	ldrb r1, [r2]
	cmp r1, #0
	beq _08022D66
	adds r0, r1, #0
	adds r0, #0xff
	strb r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08022D8E
	ldrb r0, [r4, #0x14]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	b _08022D8A
_08022D66:
	adds r0, r4, #0
	bl sub_08022F14
	adds r0, r4, #0
	bl sub_080AEF88
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _08022D8E
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800417E
	ldrb r0, [r4, #0x15]
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	asrs r0, r0, #2
_08022D8A:
	strb r0, [r4, #0x14]
	strb r0, [r4, #0x1e]
_08022D8E:
	pop {r4, pc}

	thumb_func_start sub_08022D90
sub_08022D90: @ 0x08022D90
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _08022DE0
	ldr r1, _08022DDC @ =gUnk_080CBBBC
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	ldr r4, [r5, #0x50]
	ldrb r2, [r4, #0x1b]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r5, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r5, #0x1b]
	ldrb r0, [r4, #0x19]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r5, #0x19]
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x19]
	adds r4, #0x38
	ldrb r1, [r4]
	adds r0, r5, #0
	adds r0, #0x38
	strb r1, [r0]
	b _08022DE6
	.align 2, 0
_08022DDC: .4byte gUnk_080CBBBC
_08022DE0:
	adds r0, r5, #0
	bl DeleteEntity
_08022DE6:
	pop {r4, r5, pc}

	thumb_func_start sub_08022DE8
sub_08022DE8: @ 0x08022DE8
	push {lr}
	adds r3, r0, #0
	movs r0, #1
	strb r0, [r3, #0xc]
	adds r0, r3, #0
	adds r0, #0x7c
	movs r1, #0x88
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	ldr r0, [r3, #0x50]
	ldrb r0, [r0, #0x14]
	strb r0, [r3, #0x14]
	adds r2, r3, #0
	adds r2, #0x84
	ldrb r1, [r3, #0x14]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	str r0, [r2]
	ldrb r0, [r3, #0xa]
	cmp r0, #3
	beq _08022E38
	adds r0, #7
	b _08022E3C
_08022E38:
	ldrb r0, [r3, #0x14]
	adds r0, #0xa
_08022E3C:
	strb r0, [r3, #0x1e]
	pop {pc}

	thumb_func_start sub_08022E40
sub_08022E40: @ 0x08022E40
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x2e]
	adds r0, #0x74
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	ldr r2, [r4, #0x50]
	adds r2, #0x79
	ldrb r0, [r2]
	adds r0, #1
	movs r3, #7
	ands r0, r3
	adds r0, #0x7c
	adds r0, r4, r0
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	subs r0, #8
	lsrs r1, r1, #4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r5, [r4, #0x2e]
	adds r0, r0, r5
	strh r0, [r4, #0x2e]
	subs r1, #8
	ldrh r0, [r4, #0x32]
	adds r1, r1, r0
	strh r1, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x84
	ldrb r0, [r2]
	adds r0, #1
	ands r0, r3
	lsls r0, r0, #2
	ldr r1, [r1]
	lsrs r1, r0
	movs r0, #7
	ands r1, r0
	strb r1, [r4, #0x14]
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _08022EA2
	adds r0, r1, #0
	adds r0, #0xa
	strb r0, [r4, #0x1e]
	b _08022EA8
_08022EA2:
	adds r0, r4, #0
	bl sub_08022EAC
_08022EA8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08022EAC
sub_08022EAC: @ 0x08022EAC
	push {r4, r5, lr}
	mov ip, r0
	ldr r1, [r0, #0x54]
	cmp r1, #0
	beq _08022F12
	ldr r0, [r0, #0x50]
	adds r0, #0x79
	ldrb r0, [r0]
	movs r4, #7
	adds r3, r4, #0
	ands r3, r0
	adds r3, r3, r1
	adds r3, #0x7c
	mov r0, ip
	ldrh r1, [r0, #0x2e]
	adds r0, #0x74
	ldrb r0, [r0]
	subs r1, r1, r0
	adds r1, #8
	movs r5, #0xf
	ands r1, r5
	mov r2, ip
	ldrh r0, [r2, #0x32]
	adds r2, #0x76
	ldrb r2, [r2]
	subs r0, r0, r2
	adds r0, #8
	ands r0, r5
	lsls r0, r0, #4
	adds r1, r1, r0
	strb r1, [r3]
	mov r1, ip
	ldr r0, [r1, #0x50]
	adds r0, #0x79
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #2
	mov r2, ip
	ldrb r1, [r2, #0x14]
	ands r4, r1
	lsls r4, r0
	movs r2, #0xf
	lsls r2, r0
	mov r0, ip
	ldr r1, [r0, #0x54]
	adds r1, #0x84
	ldr r0, [r1]
	bics r0, r2
	orrs r4, r0
	str r4, [r1]
_08022F12:
	pop {r4, r5, pc}

	thumb_func_start sub_08022F14
sub_08022F14: @ 0x08022F14
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08022F4E
	adds r0, r4, #0
	bl sub_08049EE4
	ldrb r1, [r4, #0x15]
	subs r2, r0, r1
	movs r1, #0x1f
	ands r2, r1
	adds r0, r2, #4
	ands r0, r1
	cmp r0, #8
	bls _08022F4E
	movs r0, #8
	strb r0, [r4, #0xf]
	cmp r2, #0xf
	bhi _08022F46
	adds r1, r4, #0
	adds r1, #0x78
	movs r0, #1
	b _08022F4C
_08022F46:
	adds r1, r4, #0
	adds r1, #0x78
	movs r0, #0xff
_08022F4C:
	strb r0, [r1]
_08022F4E:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08022F9E
	movs r0, #4
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r1
	adds r5, r4, #0
	adds r5, #0x78
	cmp r0, #0
	bne _08022F84
	movs r0, #8
	strb r0, [r4, #0xf]
	bl Random
	ldr r2, _08022FA0 @ =gUnk_080CBBC4
	movs r1, #1
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r5]
_08022F84:
	ldrb r0, [r5]
	ldrb r1, [r4, #0x15]
	adds r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r4, #0x14]
	strb r0, [r4, #0x1e]
_08022F9E:
	pop {r4, r5, pc}
	.align 2, 0
_08022FA0: .4byte gUnk_080CBBC4
