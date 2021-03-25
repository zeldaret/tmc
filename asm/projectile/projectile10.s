	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Projectile10
Projectile10: @ 0x080A9A00
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A9A18 @ =gUnk_08129AE0
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A9A18: .4byte gUnk_08129AE0

	thumb_func_start sub_080A9A1C
sub_080A9A1C: @ 0x080A9A1C
	push {lr}
	ldr r2, _080A9A30 @ =gUnk_08129AF8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A9A30: .4byte gUnk_08129AF8

	thumb_func_start sub_080A9A34
sub_080A9A34: @ 0x080A9A34
	push {lr}
	adds r2, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x9d
	bne _080A9A62
	movs r0, #3
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	movs r0, #0xa8
	lsls r0, r0, #0xa
	str r0, [r2, #0x20]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080A9A62:
	pop {pc}

	thumb_func_start sub_080A9A64
sub_080A9A64: @ 0x080A9A64
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	bhi _080A9A7E
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	bne _080A9A7E
	adds r0, r4, #0
	bl sub_080A9BA8
_080A9A7E:
	ldr r0, _080A9A90 @ =gUnk_08129B08
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080A9A90: .4byte gUnk_08129B08

	thumb_func_start sub_080A9A94
sub_080A9A94: @ 0x080A9A94
	movs r1, #2
	strb r1, [r0, #0xd]
	ldr r1, _080A9AA0 @ =0x0000FFFE
	strh r1, [r0, #0x36]
	bx lr
	.align 2, 0
_080A9AA0: .4byte 0x0000FFFE

	thumb_func_start sub_080A9AA4
sub_080A9AA4: @ 0x080A9AA4
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_080A9AAC
sub_080A9AAC: @ 0x080A9AAC
	push {lr}
	bl sub_0806F3E4
	pop {pc}

	thumb_func_start sub_080A9AB4
sub_080A9AB4: @ 0x080A9AB4
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_128
nullsub_128: @ 0x080A9AC0
	bx lr
	.align 2, 0

	thumb_func_start sub_080A9AC4
sub_080A9AC4: @ 0x080A9AC4
	push {lr}
	bl sub_080A9BA8
	pop {pc}

	thumb_func_start sub_080A9ACC
sub_080A9ACC: @ 0x080A9ACC
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xb]
	cmp r0, #1
	beq _080A9AE0
	cmp r0, #2
	beq _080A9AEE
	movs r0, #1
	strb r0, [r2, #0xc]
	b _080A9B0A
_080A9AE0:
	movs r0, #2
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	b _080A9B0A
_080A9AEE:
	movs r0, #3
	strb r0, [r2, #0xc]
	movs r0, #0xa8
	lsls r0, r0, #0xa
	str r0, [r2, #0x20]
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3]
_080A9B0A:
	movs r0, #2
	strb r0, [r2, #0x1c]
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _080A9B1E
	adds r0, r2, #0
	movs r1, #5
	bl InitializeAnimation
	b _080A9B22
_080A9B1E:
	movs r0, #0
	strb r0, [r2, #0x1e]
_080A9B22:
	pop {pc}

	thumb_func_start sub_080A9B24
sub_080A9B24: @ 0x080A9B24
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080A9B36
	adds r0, r4, #0
	bl sub_080A9BA8
_080A9B36:
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #0xb
	bne _080A9B46
	adds r0, r4, #0
	bl sub_080A9BD0
	b _080A9B50
_080A9B46:
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080A9C34
_080A9B50:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A9B54
sub_080A9B54: @ 0x080A9B54
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080A9B66
	adds r0, r4, #0
	bl sub_080A9BA8
_080A9B66:
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #9
	bne _080A9B76
	adds r0, r4, #0
	bl sub_080A9C34
	b _080A9B7C
_080A9B76:
	adds r0, r4, #0
	bl sub_080A9C50
_080A9B7C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A9B80
sub_080A9B80: @ 0x080A9B80
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bge _080A9B92
	ldrb r0, [r4, #0x18]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x18]
_080A9B92:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080A9BA6
	adds r0, r4, #0
	bl sub_080A9BA8
_080A9BA6:
	pop {r4, pc}

	thumb_func_start sub_080A9BA8
sub_080A9BA8: @ 0x080A9BA8
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne _080A9BBE
	adds r0, r1, #0
	movs r1, #5
	movs r2, #0
	bl CreateFx
	b _080A9BC8
_080A9BBE:
	adds r0, r1, #0
	movs r1, #0x3c
	movs r2, #0
	bl CreateFx
_080A9BC8:
	bl DeleteThisEntity
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080A9BD0
sub_080A9BD0: @ 0x080A9BD0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x50]
	ldrb r0, [r1, #0x14]
	cmp r0, #1
	beq _080A9BF8
	cmp r0, #1
	bgt _080A9BE6
	cmp r0, #0
	beq _080A9BF0
	b _080A9C06
_080A9BE6:
	cmp r0, #2
	beq _080A9C00
	cmp r0, #3
	beq _080A9BF8
	b _080A9C06
_080A9BF0:
	ldrb r0, [r1, #0x1e]
	adds r2, r0, #0
	subs r2, #0x39
	b _080A9C06
_080A9BF8:
	ldrb r0, [r1, #0x1e]
	adds r2, r0, #0
	subs r2, #0x3d
	b _080A9C06
_080A9C00:
	ldrb r0, [r1, #0x1e]
	adds r2, r0, #0
	subs r2, #0x41
_080A9C06:
	ldrb r0, [r1, #0x14]
	lsls r0, r0, #2
	adds r0, r2, r0
	lsls r4, r0, #1
	adds r4, r4, r0
	ldr r0, _080A9C30 @ =gUnk_08129B20
	adds r4, r4, r0
	movs r2, #0
	ldrsb r2, [r4, r2]
	movs r3, #1
	ldrsb r3, [r4, r3]
	adds r0, r1, #0
	adds r1, r5, #0
	bl sub_0806FA90
	movs r0, #2
	ldrsb r0, [r4, r0]
	ldrh r1, [r5, #0x36]
	adds r0, r0, r1
	strh r0, [r5, #0x36]
	pop {r4, r5, pc}
	.align 2, 0
_080A9C30: .4byte gUnk_08129B20

	thumb_func_start sub_080A9C34
sub_080A9C34: @ 0x080A9C34
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0806FA90
	adds r4, #0x63
	ldrb r0, [r4]
	subs r0, #0xe
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A9C50
sub_080A9C50: @ 0x080A9C50
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x50]
	ldrb r0, [r1, #0x14]
	cmp r0, #1
	beq _080A9C78
	cmp r0, #1
	bgt _080A9C66
	cmp r0, #0
	beq _080A9C70
	b _080A9C86
_080A9C66:
	cmp r0, #2
	beq _080A9C80
	cmp r0, #3
	beq _080A9C78
	b _080A9C86
_080A9C70:
	ldrb r0, [r1, #0x1e]
	adds r4, r0, #0
	subs r4, #0x27
	b _080A9C86
_080A9C78:
	ldrb r0, [r1, #0x1e]
	adds r4, r0, #0
	subs r4, #0x2d
	b _080A9C86
_080A9C80:
	ldrb r0, [r1, #0x1e]
	adds r4, r0, #0
	subs r4, #0x33
_080A9C86:
	adds r0, r1, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #1
	bl sub_0806FA90
	adds r0, r5, #0
	adds r0, #0x63
	ldr r1, _080A9CA4 @ =gUnk_08129B50
	adds r1, r4, r1
	ldrb r1, [r1]
	ldrb r2, [r0]
	adds r1, r1, r2
	strb r1, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_080A9CA4: .4byte gUnk_08129B50
