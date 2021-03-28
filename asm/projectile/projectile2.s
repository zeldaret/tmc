	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Projectile2
Projectile2: @ 0x080A8190
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A81A8 @ =gUnk_0812960C
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A81A8: .4byte gUnk_0812960C

	thumb_func_start sub_080A81AC
sub_080A81AC: @ 0x080A81AC
	push {lr}
	ldr r2, _080A81C0 @ =gUnk_08129620
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A81C0: .4byte gUnk_08129620

	thumb_func_start sub_080A81C4
sub_080A81C4: @ 0x080A81C4
	push {lr}
	adds r1, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _080A81D8
	adds r0, r1, #0
	bl DeleteEntity
	b _080A81DE
_080A81D8:
	adds r0, r1, #0
	bl sub_080A82D8
_080A81DE:
	pop {pc}

	thumb_func_start sub_080A81E0
sub_080A81E0: @ 0x080A81E0
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0x3c
	strb r1, [r0, #0xe]
	ldr r1, _080A81F8 @ =0x0000FFFE
	strh r1, [r0, #0x36]
	movs r1, #0
	bl InitializeAnimation
	pop {pc}
	.align 2, 0
_080A81F8: .4byte 0x0000FFFE

	thumb_func_start sub_080A81FC
sub_080A81FC: @ 0x080A81FC
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080AF090
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	bne _080A8240
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080A8222
	adds r0, r4, #0
	bl DeleteEntity
	b _080A8246
_080A8222:
	adds r0, r4, #0
	bl sub_08016AD2
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A8246
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	b _080A8246
_080A8240:
	adds r0, r4, #0
	bl sub_080A82D8
_080A8246:
	pop {r4, pc}

	thumb_func_start sub_080A8248
sub_080A8248: @ 0x080A8248
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080AF090
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080A827A
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0xe0
	strh r0, [r4, #0x24]
	movs r0, #0xe0
	lsls r0, r0, #8
	str r0, [r4, #0x20]
_080A827A:
	pop {r4, pc}

	thumb_func_start sub_080A827C
sub_080A827C: @ 0x080A827C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl GetNextFrame
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #0
	bne _080A82B2
	adds r0, r4, #0
	bl DeleteEntity
_080A82B2:
	pop {r4, pc}

	thumb_func_start sub_080A82B4
sub_080A82B4: @ 0x080A82B4
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_0806F69C
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080A82D6
	adds r0, r4, #0
	bl DeleteEntity
_080A82D6:
	pop {r4, pc}

	thumb_func_start sub_080A82D8
sub_080A82D8: @ 0x080A82D8
	movs r1, #4
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r0, #0x20]
	ldrb r1, [r0, #0x15]
	movs r2, #0x10
	eors r1, r2
	strb r1, [r0, #0x15]
	movs r1, #0x80
	strh r1, [r0, #0x24]
	bx lr
