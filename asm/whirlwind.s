	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Whirlwind
Whirlwind: @ 0x08092CA0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x45
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _08092CC0
	ldr r0, _08092CD4 @ =gUnk_020342F8
	subs r1, #1
	bl ReadBit
	cmp r0, #0
	bne _08092CC0
	bl DeleteThisEntity
_08092CC0:
	ldr r0, _08092CD8 @ =gUnk_081227F4
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_08092CD4: .4byte gUnk_020342F8
_08092CD8: .4byte gUnk_081227F4

	thumb_func_start sub_08092CDC
sub_08092CDC: @ 0x08092CDC
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	strb r2, [r4, #0xc]
	ldr r0, _08092D48 @ =gUnk_080FD320
	str r0, [r4, #0x48]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x3f
	strb r2, [r0]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #0x47
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x44
	strb r0, [r1]
	subs r1, #5
	movs r0, #0x80
	strb r0, [r1]
	ldrb r2, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x19]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #0x14]
	lsls r0, r0, #3
	strb r0, [r4, #0x15]
	movs r0, #0xe0
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bne _08092D50
	ldr r1, _08092D4C @ =0x00000161
	adds r0, r4, #0
	bl ChangeObjPalette
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
	b _08092D5C
	.align 2, 0
_08092D48: .4byte gUnk_080FD320
_08092D4C: .4byte 0x00000161
_08092D50:
	ldr r0, _08092D78 @ =0x0000FFE8
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
_08092D5C:
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08092D74
	adds r0, r4, #0
	bl sub_0807DD64
	adds r0, r4, #0
	movs r1, #0
	bl ExecuteScriptForEntity
_08092D74:
	pop {r4, pc}
	.align 2, 0
_08092D78: .4byte 0x0000FFE8

	thumb_func_start sub_08092D7C
sub_08092D7C: @ 0x08092D7C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08092D92
	adds r0, r5, #0
	movs r1, #0
	bl ExecuteScriptForEntity
_08092D92:
	ldrb r0, [r5, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	beq _08092E84
	adds r0, r5, #0
	bl GetNextFrame
	ldr r6, _08092E04 @ =gPlayerState
	ldr r0, [r6, #0x30]
	movs r3, #0x80
	ands r0, r3
	cmp r0, #0
	bne _08092E84
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08092E84
	ldr r4, _08092E08 @ =gPlayerEntity
	ldrb r2, [r4, #0xc]
	cmp r2, #4
	beq _08092DC8
	ldrb r1, [r4, #0x10]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08092E84
_08092DC8:
	cmp r2, #6
	beq _08092E84
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xc
	movs r3, #0xc
	bl sub_0800419C
	cmp r0, #0
	beq _08092E84
	ldr r0, [r6, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	bne _08092E0C
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	beq _08092E0C
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	beq _08092E16
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #0x10
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _08092E84
	b _08092E16
	.align 2, 0
_08092E04: .4byte gPlayerState
_08092E08: .4byte gPlayerEntity
_08092E0C:
	ldr r0, _08092E88 @ =gPlayerEntity
	movs r1, #0x36
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08092E84
_08092E16:
	ldr r4, _08092E88 @ =gPlayerEntity
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r5, #0
	bl sub_08004542
	adds r0, r4, #0
	bl sub_08004542
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldr r1, _08092E8C @ =gPlayerState
	movs r0, #0x1f
	strb r0, [r1, #0xc]
	ldrb r2, [r5, #0xb]
	adds r0, r1, #0
	adds r0, #0x38
	strb r2, [r0]
	adds r1, #0x39
	movs r0, #0xff
	strb r0, [r1]
	adds r4, #0x29
	ldrb r1, [r4]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	subs r1, #1
	adds r3, r5, #0
	adds r3, #0x29
	movs r0, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	bl sub_08077B20
	ldr r0, _08092E90 @ =0x00000153
	bl SoundReq
	movs r0, #0x79
	bl SoundReq
_08092E84:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08092E88: .4byte gPlayerEntity
_08092E8C: .4byte gPlayerState
_08092E90: .4byte 0x00000153

	thumb_func_start sub_08092E94
sub_08092E94: @ 0x08092E94
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	ldr r1, _08092ED0 @ =gPlayerEntity
	adds r0, r4, #0
	movs r2, #0xc
	movs r3, #0xc
	bl sub_0800419C
	cmp r0, #0
	bne _08092ECE
	adds r0, r4, #0
	bl ResetCollisionLayer
	ldrb r2, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x19]
	ldrb r0, [r4, #0xc]
	subs r0, #1
	strb r0, [r4, #0xc]
_08092ECE:
	pop {r4, pc}
	.align 2, 0
_08092ED0: .4byte gPlayerEntity
