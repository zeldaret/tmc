	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08068F98
sub_08068F98: @ 0x08068F98
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08068FBC @ =gUnk_08111914
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
	adds r0, r4, #0
	bl sub_0806920C
	pop {r4, pc}
	.align 2, 0
_08068FBC: .4byte gUnk_08111914

	thumb_func_start sub_08068FC0
sub_08068FC0: @ 0x08068FC0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xb]
	strb r0, [r4, #0x14]
	movs r0, #0x40
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x6d
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0805ACC0
	adds r2, r0, #0
	cmp r2, #0
	bne _08068FF4
	ldrh r0, [r4, #0x2e]
	adds r1, r4, #0
	adds r1, #0x68
	strh r0, [r1]
	ldrh r0, [r4, #0x32]
	adds r1, #2
	strh r0, [r1]
	b _08069000
_08068FF4:
	lsrs r1, r2, #0x10
	adds r0, r4, #0
	adds r0, #0x68
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
_08069000:
	adds r0, r4, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x6c
	strb r0, [r1]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl LoadAnimation
	pop {r4, pc}

	thumb_func_start sub_08069018
sub_08069018: @ 0x08069018
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0806903A
	adds r0, #1
	strb r0, [r4, #0xd]
	bl Random
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x3c
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl LoadAnimation
_0806903A:
	adds r0, r4, #0
	bl sub_080042B8
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0806905E
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08069058
	movs r0, #2
	b _0806905A
_08069058:
	movs r0, #3
_0806905A:
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
_0806905E:
	adds r0, r4, #0
	bl sub_0806924C
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08069068
sub_08069068: @ 0x08069068
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080690A4
	adds r0, #1
	strb r0, [r4, #0xd]
	bl Random
	movs r1, #2
	ands r1, r0
	subs r1, #1
	ldrb r0, [r4, #0x14]
	adds r1, r1, r0
	movs r0, #3
	ands r1, r0
	strb r1, [r4, #0x14]
	lsls r1, r1, #3
	strb r1, [r4, #0x15]
	bl Random
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x3c
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl LoadAnimation
_080690A4:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_080042B8
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	adds r2, r4, #0
	adds r2, #0x68
	movs r3, #0
	ldrsh r0, [r2, r3]
	subs r1, r1, r0
	cmp r1, #0x10
	ble _080690CC
	ldrh r0, [r2]
	adds r0, #0x10
	strh r0, [r4, #0x2e]
	movs r0, #1
	strb r0, [r4, #0xf]
_080690CC:
	movs r3, #0x10
	rsbs r3, r3, #0
	cmp r1, r3
	bge _080690DE
	ldrh r0, [r2]
	subs r0, #0x10
	strh r0, [r4, #0x2e]
	movs r0, #1
	strb r0, [r4, #0xf]
_080690DE:
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	adds r2, r4, #0
	adds r2, #0x6a
	movs r5, #0
	ldrsh r0, [r2, r5]
	subs r1, r1, r0
	cmp r1, #0x10
	ble _080690FA
	ldrh r0, [r2]
	adds r0, #0x10
	strh r0, [r4, #0x32]
	movs r0, #1
	strb r0, [r4, #0xf]
_080690FA:
	cmp r1, r3
	bge _08069108
	ldrh r0, [r2]
	subs r0, #0x10
	strh r0, [r4, #0x32]
	movs r0, #1
	strb r0, [r4, #0xf]
_08069108:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0806911C
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
_0806911C:
	adds r0, r4, #0
	bl sub_0806924C
	pop {r4, r5, pc}

	thumb_func_start sub_08069124
sub_08069124: @ 0x08069124
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	ldr r1, _08069144 @ =gUnk_08111928
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806924C
	pop {r4, pc}
	.align 2, 0
_08069144: .4byte gUnk_08111928

	thumb_func_start sub_08069148
sub_08069148: @ 0x08069148
	push {r4, lr}
	adds r4, r0, #0
	bl Random
	movs r1, #3
	ands r0, r1
	adds r0, #3
	strb r0, [r4, #0xf]
	movs r0, #1
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x14]
	adds r1, #8
	adds r0, r4, #0
	bl LoadAnimation
	pop {r4, pc}

	thumb_func_start sub_08069168
sub_08069168: @ 0x08069168
	push {lr}
	adds r2, r0, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08069186
	movs r0, #2
	strb r0, [r2, #0xd]
	ldrb r1, [r2, #0x14]
	adds r1, #0xc
	adds r0, r2, #0
	bl LoadAnimation
_08069186:
	pop {pc}

	thumb_func_start sub_08069188
sub_08069188: @ 0x08069188
	push {lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080691B8
	movs r0, #0
	strb r0, [r3]
	ldrb r0, [r2, #0xf]
	subs r0, #1
	strb r0, [r2, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080691B8
	movs r0, #3
	strb r0, [r2, #0xd]
	ldrb r1, [r2, #0x14]
	adds r1, #0x10
	adds r0, r2, #0
	bl LoadAnimation
_080691B8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080691BC
sub_080691BC: @ 0x080691BC
	push {lr}
	adds r2, r0, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _080691DE
	movs r1, #0
	movs r0, #1
	strb r0, [r2, #0xc]
	strb r1, [r2, #0xd]
	ldrb r1, [r2, #0x14]
	adds r1, #4
	adds r0, r2, #0
	bl LoadAnimation
_080691DE:
	pop {pc}

	thumb_func_start sub_080691E0
sub_080691E0: @ 0x080691E0
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _080691F4
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
_080691F4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080691F8
sub_080691F8: @ 0x080691F8
	push {lr}
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #3
	ldr r2, _08069208 @ =gUnk_08111938
	adds r1, r1, r2
	bl sub_0806F1AC
	pop {pc}
	.align 2, 0
_08069208: .4byte gUnk_08111938

	thumb_func_start sub_0806920C
sub_0806920C: @ 0x0806920C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08069234 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	rsbs r0, r0, #0
	lsrs r5, r0, #0x1f
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r5, r0
	beq _08069244
	cmp r5, #0
	bne _08069238
	adds r0, r4, #0
	bl sub_08078778
	b _08069244
	.align 2, 0
_08069234: .4byte gLinkState
_08069238:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_080787A8
_08069244:
	adds r0, r4, #0
	adds r0, #0x6d
	strb r5, [r0]
	pop {r4, r5, pc}

	thumb_func_start sub_0806924C
sub_0806924C: @ 0x0806924C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x39
	movs r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #0
	beq _0806929C
	ldr r0, _08069278 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08069284
	cmp r2, #2
	bne _0806927C
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0806F118
	b _0806928E
	.align 2, 0
_08069278: .4byte gLinkState
_0806927C:
	adds r0, r4, #0
	bl sub_080691F8
	b _0806928E
_08069284:
	adds r0, r4, #0
	bl sub_080691F8
	bl sub_080791D0
_0806928E:
	movs r0, #0xd4
	bl PlaySFX
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	strb r0, [r1]
_0806929C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080692A0
sub_080692A0: @ 0x080692A0
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _080692C6
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
	movs r1, #0xf
	bl LoadAnimation
	b _080692CC
_080692C6:
	adds r0, r2, #0
	bl sub_080042B8
_080692CC:
	pop {pc}
	.align 2, 0
