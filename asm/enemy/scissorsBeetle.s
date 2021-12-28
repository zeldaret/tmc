	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start ScissorsBeetle
ScissorsBeetle: @ 0x080388B4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080388D0 @ =gUnk_080CF600
	bl EnemyFunctionHandler
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl SetChildOffset
	pop {r4, pc}
	.align 2, 0
_080388D0: .4byte gUnk_080CF600

	thumb_func_start sub_080388D4
sub_080388D4: @ 0x080388D4
	push {lr}
	ldr r2, _080388E8 @ =gUnk_080CF618
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080388E8: .4byte gUnk_080CF618

	thumb_func_start sub_080388EC
sub_080388EC: @ 0x080388EC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x43
	ldrb r0, [r6]
	cmp r0, #0
	beq _08038902
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08038902:
	ldr r1, _08038948 @ =gUnk_080CF600
	adds r0, r4, #0
	bl sub_0804AA30
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803897E
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	beq _0803897E
	ldr r5, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x3d
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x3e
	ldrb r1, [r2]
	adds r0, r5, #0
	adds r0, #0x3e
	strb r1, [r0]
	ldrb r0, [r6]
	cmp r0, #0
	beq _0803894C
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	b _0803897E
	.align 2, 0
_08038948: .4byte gUnk_080CF600
_0803894C:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _0803897E
	adds r0, r1, #0
	adds r0, #0x12
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r5, #0x15]
	lsrs r0, r0, #2
	strb r0, [r5, #0x14]
	ldrb r0, [r2]
	adds r0, #0x14
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08038C84
	adds r0, r5, #0
	movs r1, #1
	bl sub_08038C84
_0803897E:
	pop {r4, r5, r6, pc}

	thumb_func_start nullsub_164
nullsub_164: @ 0x08038980
	bx lr
	.align 2, 0

	thumb_func_start sub_08038984
sub_08038984: @ 0x08038984
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x13
	bl CreateProjectile
	adds r6, r0, #0
	cmp r6, #0
	beq _080389E6
	adds r0, r5, #0
	bl sub_0804A720
	movs r4, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	str r6, [r5, #0x54]
	bl Random
	movs r1, #6
	ands r0, r1
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #0
	strh r4, [r0]
	subs r0, #6
	strb r1, [r0]
	str r5, [r6, #0x50]
	strb r1, [r6, #0xa]
	movs r0, #0xff
	strb r0, [r6, #0x14]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, r5, #0
	bl sub_08038BA8
_080389E6:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080389E8
sub_080389E8: @ 0x080389E8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x80
	ldrh r0, [r1]
	cmp r0, #0
	beq _08038A08
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08038A68
	movs r0, #0x80
	strh r0, [r4, #0x24]
	b _08038A68
_08038A08:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08038A22
	adds r0, r4, #0
	bl sub_08038BA8
	adds r0, r6, #0
	bl sub_08038C2C
	b _08038A68
_08038A22:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08038A2E
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08038A68
_08038A2E:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _08038A68
	movs r0, #0xc
	strb r0, [r4, #0xe]
	ldrb r1, [r6, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08038A5C
	ldrb r5, [r6, #0x14]
	bl Random
	movs r1, #0x20
	ands r1, r0
	cmp r1, #0
	beq _08038A54
	adds r1, r5, #1
	b _08038A56
_08038A54:
	adds r1, r5, #7
_08038A56:
	movs r0, #7
	ands r0, r1
	strb r0, [r6, #0x14]
_08038A5C:
	adds r0, r4, #0
	bl sub_08038BA8
	adds r0, r6, #0
	bl sub_08038C2C
_08038A68:
	adds r0, r4, #0
	bl sub_08038B90
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08038A70
sub_08038A70: @ 0x08038A70
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r6, [r5, #0x54]
	adds r1, r5, #0
	adds r1, #0x80
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0
	bne _08038AC0
	movs r1, #3
	strb r1, [r5, #0xc]
	adds r2, r5, #0
	adds r2, #0x82
	movs r0, #4
	strb r0, [r2]
	movs r0, #0x80
	strh r0, [r5, #0x24]
	movs r4, #0x20
	strb r4, [r5, #0xf]
	strb r1, [r6, #0xc]
	adds r1, r6, #0
	adds r1, #0x82
	movs r0, #2
	strb r0, [r1]
	movs r0, #0xff
	strb r0, [r6, #0x14]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08038C84
	adds r0, r6, #0
	bl sub_08038C2C
	strb r4, [r6, #0xf]
	str r7, [r6, #0x50]
	str r5, [r6, #0x54]
	b _08038AFE
_08038AC0:
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08038AFE
	movs r0, #0x10
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08049F84
	strb r0, [r5, #0x15]
	ldrb r0, [r5, #0x15]
	adds r0, #4
	movs r1, #0x1c
	ands r0, r1
	lsrs r1, r0, #2
	strb r1, [r6, #0x14]
	movs r1, #0x18
	ands r0, r1
	lsrs r0, r0, #2
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08038C84
	adds r0, r6, #0
	movs r1, #1
	bl sub_08038C84
_08038AFE:
	adds r0, r5, #0
	bl sub_08038B90
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08038B08
sub_08038B08: @ 0x08038B08
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08038B18
	subs r0, #1
	strb r0, [r4, #0xf]
	b _08038B5E
_08038B18:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08038B5E
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #3
	strb r0, [r1]
	movs r0, #0x32
	strb r0, [r4, #0xe]
	movs r0, #2
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	strh r2, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08038C84
	ldr r0, _08038B60 @ =0x0000015B
	bl EnqueueSFX
_08038B5E:
	pop {r4, pc}
	.align 2, 0
_08038B60: .4byte 0x0000015B

	thumb_func_start sub_08038B64
sub_08038B64: @ 0x08038B64
	push {r4, lr}
	adds r4, r0, #0
	bl ProcessMovement
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08038B8C
	movs r0, #2
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x15]
	adds r0, #0x1f
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
_08038B8C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08038B90
sub_08038B90: @ 0x08038B90
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	bl ProcessMovement
	adds r0, r4, #0
	bl sub_0800445C
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08038BA8
sub_08038BA8: @ 0x08038BA8
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Random
	ldr r1, _08038BEC @ =gUnk_080CF62C
	movs r5, #7
	ands r0, r5
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x82
	movs r3, #1
	strb r3, [r0]
	ldr r0, [r4, #0x54]
	adds r0, #0x82
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x7a
	ldrb r0, [r1]
	cmp r0, #0
	bne _08038BF0
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08038C84
	b _08038C2A
	.align 2, 0
_08038BEC: .4byte gUnk_080CF62C
_08038BF0:
	ldr r2, [r4, #0x54]
	ldrb r1, [r2, #0x14]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08038C14
	ldrb r2, [r2, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r1, #1
	ands r0, r5
	movs r3, #6
	cmp r2, r0
	bne _08038C0C
	movs r3, #2
_08038C0C:
	adds r3, r3, r1
	movs r0, #6
	ands r3, r0
	b _08038C18
_08038C14:
	ldrb r3, [r2, #0x14]
	ldrb r1, [r4, #0x14]
_08038C18:
	cmp r3, r1
	beq _08038C2A
	strb r3, [r4, #0x14]
	lsls r0, r3, #2
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08038C84
_08038C2A:
	pop {r4, r5, pc}

	thumb_func_start sub_08038C2C
sub_08038C2C: @ 0x08038C2C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl Random
	ldr r1, _08038C58 @ =gUnk_080CF634
	movs r6, #7
	ands r0, r6
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #0xf]
	ldr r0, [r5, #0x50]
	ldrb r4, [r0, #0x14]
	ldrb r0, [r5, #0x14]
	cmp r0, #0xff
	bne _08038C5C
	strb r4, [r5, #0x14]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08038C84
	b _08038C7C
	.align 2, 0
_08038C58: .4byte gUnk_080CF634
_08038C5C:
	bl Random
	ldr r1, _08038C80 @ =gUnk_080CF63C
	ands r0, r6
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r4, r0, r4
	ands r4, r6
	ldrb r0, [r5, #0x14]
	cmp r4, r0
	beq _08038C7C
	strb r4, [r5, #0x14]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08038C84
_08038C7C:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08038C80: .4byte gUnk_080CF63C

	thumb_func_start sub_08038C84
sub_08038C84: @ 0x08038C84
	push {lr}
	adds r3, r0, #0
	ldrb r2, [r3, #0x14]
	adds r0, #0x82
	ldrb r0, [r0]
	lsls r0, r0, #3
	orrs r2, r0
	cmp r1, #0
	bne _08038C98
	lsrs r2, r2, #1
_08038C98:
	adds r0, r3, #0
	adds r1, r2, #0
	bl InitAnimationForceUpdate
	pop {pc}
	.align 2, 0
