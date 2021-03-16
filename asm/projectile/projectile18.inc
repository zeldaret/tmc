
	thumb_func_start Projectile18
Projectile18: @ 0x080AABF0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080AAC08 @ =gUnk_0812A418
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080AAC08: .4byte gUnk_0812A418

	thumb_func_start sub_080AAC0C
sub_080AAC0C: @ 0x080AAC0C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080AAC40 @ =gUnk_0812A430
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080AAC3C
	adds r1, r4, #0
	adds r1, #0x84
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080AAC3C
	subs r1, #0x3f
	movs r0, #0
	strb r0, [r1]
_080AAC3C:
	pop {r4, pc}
	.align 2, 0
_080AAC40: .4byte gUnk_0812A430

	thumb_func_start sub_080AAC44
sub_080AAC44: @ 0x080AAC44
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080AACCA
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080AACBC
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _080AACA0
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080AAC84
	ldr r0, _080AAC80 @ =gPlayerEntity
	adds r1, r4, #0
	bl ResolveEntityOnTop
	b _080AAC8C
	.align 2, 0
_080AAC80: .4byte gPlayerEntity
_080AAC84:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl ResolveEntityOnTop
_080AAC8C:
	bl ResetPlayer
	ldr r2, _080AACB4 @ =gPlayerState
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #0x1a]
	ldrb r1, [r2, #0xa]
	orrs r0, r1
	strb r0, [r2, #0xa]
_080AACA0:
	ldr r0, _080AACB8 @ =gPlayerEntity
	adds r0, #0x45
	ldrb r1, [r0]
	cmp r1, #0
	bne _080AACCA
	adds r0, r4, #0
	adds r0, #0x45
	strb r1, [r0]
	b _080AACCA
	.align 2, 0
_080AACB4: .4byte gPlayerState
_080AACB8: .4byte gPlayerEntity
_080AACBC:
	ldr r0, _080AACDC @ =0x00000119
	bl SoundReq
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
_080AACCA:
	adds r1, r4, #0
	adds r1, #0x42
	ldrb r0, [r1]
	cmp r0, #0
	beq _080AACD8
	movs r0, #0
	strb r0, [r1]
_080AACD8:
	pop {r4, pc}
	.align 2, 0
_080AACDC: .4byte 0x00000119

	thumb_func_start sub_080AACE0
sub_080AACE0: @ 0x080AACE0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080AACF4
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080AACF4
	bl DeleteThisEntity
_080AACF4:
	ldrb r1, [r4, #0x18]
	lsls r0, r1, #0x1e
	lsrs r2, r0, #0x1e
	adds r5, r4, #0
	adds r5, #0x86
	cmp r2, #1
	bne _080AAD16
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	strb r2, [r5]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
_080AAD16:
	ldr r2, [r4, #0x50]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080AAD4A
	adds r1, r2, #0
	adds r1, #0x74
	movs r0, #3
	strb r0, [r1]
	adds r1, #0xc
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	lsrs r0, r0, #1
	ldrb r2, [r1]
	adds r0, r0, r2
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _080AAD42
	movs r0, #8
	b _080AAD56
_080AAD42:
	cmp r0, #0
	bne _080AAD58
	movs r0, #1
	b _080AAD56
_080AAD4A:
	adds r1, r2, #0
	adds r1, #0x84
	movs r0, #0
	strb r0, [r1]
	subs r1, #0x45
	movs r0, #0x2b
_080AAD56:
	strb r0, [r1]
_080AAD58:
	ldrb r0, [r5]
	cmp r0, #0
	bne _080AAD68
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
_080AAD68:
	bl DeleteThisEntity
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080AAD70
sub_080AAD70: @ 0x080AAD70
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	bne _080AAD82
	adds r1, r4, #0
	adds r1, #0x45
	strb r0, [r1]
_080AAD82:
	ldr r0, _080AAD94 @ =gUnk_0812A440
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080AAD94: .4byte gUnk_0812A440

	thumb_func_start sub_080AAD98
sub_080AAD98: @ 0x080AAD98
	movs r1, #2
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_541
nullsub_541: @ 0x080AADA0
	bx lr
	.align 2, 0

	thumb_func_start sub_080AADA4
sub_080AADA4: @ 0x080AADA4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _080AADB8
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0
	strb r0, [r1]
_080AADB8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AADBC
sub_080AADBC: @ 0x080AADBC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _080AADCC
	movs r0, #1
	strb r0, [r5, #0xc]
	b _080AADE0
_080AADCC:
	movs r0, #3
	strb r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0x2c
	strb r0, [r1]
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl ResolveEntityOnTop
_080AADE0:
	ldrb r1, [r5, #0xa]
	cmp r1, #0
	bne _080AAE64
	strb r1, [r5, #0xe]
	movs r3, #4
	movs r0, #4
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	adds r0, #0x80
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x45
	movs r0, #0x10
	strb r0, [r1]
	ldrh r0, [r5, #0x36]
	adds r0, #4
	movs r4, #0
	strh r0, [r5, #0x36]
	ldrb r2, [r5, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r5, #0x1b]
	ldrb r0, [r5, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r5, #0x19]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	ldr r1, _080AAE60 @ =gPlayerEntity
	adds r0, r5, #0
	bl GetFacingDirection
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	adds r0, #0x86
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x84
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r1]
	movs r0, #0x18
	bl sub_080A7EE0
	adds r1, r0, #0
	cmp r1, #0
	beq _080AAE7C
	movs r0, #1
	strb r0, [r1, #0xa]
	ldrb r0, [r5, #0xb]
	strb r0, [r1, #0xb]
	str r5, [r1, #0x50]
	b _080AAE7C
	.align 2, 0
_080AAE60: .4byte gPlayerEntity
_080AAE64:
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl ResolveEntityOnTop
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl CopyPosition
_080AAE7C:
	ldrb r1, [r5, #0xa]
	adds r0, r5, #0
	bl InitializeAnimation
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080AAE88
sub_080AAE88: @ 0x080AAE88
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080AAED0
	cmp r0, #1
	bgt _080AAE9C
	cmp r0, #0
	beq _080AAEA2
	b _080AAEF6
_080AAE9C:
	cmp r0, #2
	beq _080AAEE0
	b _080AAEF6
_080AAEA2:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AAEC2
	movs r0, #4
	strb r0, [r4, #0xf]
	ldr r1, _080AAECC @ =gPlayerEntity
	adds r0, r4, #0
	bl GetFacingDirection
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
_080AAEC2:
	adds r0, r4, #0
	bl sub_0806F69C
	b _080AAEF6
	.align 2, 0
_080AAECC: .4byte gPlayerEntity
_080AAED0:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _080AAEDC
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080AAEE0
_080AAEDC:
	bl DeleteThisEntity
_080AAEE0:
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bne _080AAEEE
	bl DeleteThisEntity
_080AAEEE:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
_080AAEF6:
	adds r0, r4, #0
	bl sub_080AB034
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AAF00
sub_080AAF00: @ 0x080AAF00
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AAF74
	adds r0, r4, #0
	bl sub_080AB034
	pop {r4, pc}

	thumb_func_start sub_080AAF10
sub_080AAF10: @ 0x080AAF10
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r4, #0
	bl sub_080AB034
	ldr r3, [r4, #0x50]
	ldrb r1, [r3, #0x18]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	ldrb r2, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080AAF48
	adds r0, r3, #0
	adds r0, #0x45
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x45
	strb r0, [r1]
_080AAF48:
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #2
	bne _080AAF60
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080AAF70
	movs r0, #0x7f
	ands r0, r1
	b _080AAF6E
_080AAF60:
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AAF70
	movs r0, #0x80
	orrs r0, r1
_080AAF6E:
	strb r0, [r4, #0x10]
_080AAF70:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AAF74
sub_080AAF74: @ 0x080AAF74
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0807953C
	cmp r0, #0
	beq _080AAF94
	bl Random
	adds r3, r5, #0
	adds r3, #0x80
	ldrb r1, [r3]
	adds r1, #1
	movs r2, #1
	ands r0, r2
	adds r1, r1, r0
	strb r1, [r3]
_080AAF94:
	ldrb r0, [r5, #0xe]
	adds r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bne _080AAFCC
	movs r0, #0x1e
	strb r0, [r5, #0xe]
	ldr r4, _080AAFFC @ =gPlayerEntity
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #8
	strb r0, [r1]
	subs r0, #0xc
	bl ModHealth
	adds r0, r4, #0
	movs r1, #0x7a
	bl sub_0800449C
	adds r4, #0x45
	ldrb r1, [r4]
	cmp r1, #0
	bne _080AAFCC
	adds r0, r5, #0
	adds r0, #0x45
	strb r1, [r0]
_080AAFCC:
	adds r1, r5, #0
	adds r1, #0x80
	ldrb r0, [r1]
	cmp r0, #0x30
	bhi _080AAFE0
	adds r0, r5, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0x10
	bne _080AB004
_080AAFE0:
	movs r2, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	strb r2, [r1]
	ldr r0, _080AAFFC @ =gPlayerEntity
	adds r0, #0x3d
	movs r1, #0xf0
	strb r1, [r0]
	ldr r0, _080AB000 @ =gPlayerState
	strb r2, [r0, #0x1a]
	adds r0, r5, #0
	adds r0, #0x45
	strb r2, [r0]
	b _080AB028
	.align 2, 0
_080AAFFC: .4byte gPlayerEntity
_080AB000: .4byte gPlayerState
_080AB004:
	bl ResetPlayer
	ldr r2, _080AB02C @ =gPlayerState
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #0x1a]
	ldrb r1, [r2, #0xa]
	orrs r0, r1
	strb r0, [r2, #0xa]
	ldr r4, _080AB030 @ =gPlayerEntity
	adds r0, r4, #0
	adds r1, r5, #0
	bl CopyPosition
	ldrh r0, [r4, #0x36]
	subs r0, #4
	strh r0, [r5, #0x36]
_080AB028:
	pop {r4, r5, pc}
	.align 2, 0
_080AB02C: .4byte gPlayerState
_080AB030: .4byte gPlayerEntity

	thumb_func_start sub_080AB034
sub_080AB034: @ 0x080AB034
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5b
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	ldr r1, _080AB058 @ =0x00000139
	cmp r0, #0
	beq _080AB04E
	movs r1, #0
_080AB04E:
	adds r0, r4, #0
	bl sub_0801D2B4
	pop {r4, pc}
	.align 2, 0
_080AB058: .4byte 0x00000139
