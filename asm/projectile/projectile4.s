	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Projectile4
Projectile4: @ 0x080A843C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A8454 @ =gUnk_081296F0
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A8454: .4byte gUnk_081296F0

	thumb_func_start sub_080A8458
sub_080A8458: @ 0x080A8458
	push {lr}
	ldr r2, _080A846C @ =gUnk_08129704
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A846C: .4byte gUnk_08129704

	thumb_func_start sub_080A8470
sub_080A8470: @ 0x080A8470
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x41
	ldrb r0, [r2]
	cmp r0, #0x80
	bne _080A8496
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x68
	bne _080A848E
	movs r0, #0x86
	bl EnqueueSFX
_080A848E:
	adds r0, r4, #0
	bl DeleteEntity
	b _080A84C6
_080A8496:
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	ldrb r0, [r2]
	adds r0, #0x7e
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080A84B8
	adds r0, r4, #0
	bl sub_080A8680
	b _080A84C6
_080A84B8:
	adds r0, r4, #0
	movs r1, #0x19
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_080A86A0
_080A84C6:
	pop {r4, pc}

	thumb_func_start sub_080A84C8
sub_080A84C8: @ 0x080A84C8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x30
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	ldrh r0, [r4, #0x36]
	subs r0, #4
	strh r0, [r4, #0x36]
	movs r0, #0x15
	bl CheckGlobalFlag
	cmp r0, #0
	bne _080A84F0
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x68
	strb r0, [r1]
_080A84F0:
	ldr r0, _080A8500 @ =0x0000018D
	bl EnqueueSFX
	adds r0, r4, #0
	movs r1, #0x18
	bl InitializeAnimation
	pop {r4, pc}
	.align 2, 0
_080A8500: .4byte 0x0000018D

	thumb_func_start sub_080A8504
sub_080A8504: @ 0x080A8504
	push {r4, r5, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080AF090
	cmp r0, #0
	beq _080A853C
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080A8524
	bl DeleteThisEntity
_080A8524:
	adds r0, r4, #0
	bl sub_08016AD2
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A8558
	movs r0, #4
	strb r0, [r4, #0xc]
	b _080A8558
_080A853C:
	ldrh r1, [r4, #0x2a]
	adds r0, r4, #0
	bl sub_0800417E
	adds r0, r4, #0
	bl sub_08016AD2
	adds r0, r4, #0
	movs r1, #0x19
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_080A86A0
_080A8558:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _080A85B6
	ldr r5, [r4, #0x50]
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _080A85B6
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080177A0
	cmp r0, #0
	beq _080A85B6
	adds r0, r4, #0
	adds r0, #0x3d
	movs r3, #0
	movs r2, #0x10
	strb r2, [r0]
	ldrb r0, [r4, #0x15]
	rsbs r0, r0, #0
	adds r1, r4, #0
	adds r1, #0x3e
	strb r0, [r1]
	adds r1, #3
	movs r0, #0x80
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0xc
	strb r1, [r0]
	adds r0, #4
	strh r3, [r0]
	adds r0, r5, #0
	adds r0, #0x3d
	strb r2, [r0]
	ldrb r0, [r4, #0x15]
	adds r2, r5, #0
	adds r2, #0x3e
	strb r0, [r2]
	adds r2, #3
	movs r0, #0xc2
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x42
	strb r1, [r0]
	adds r0, #4
	strh r3, [r0]
_080A85B6:
	pop {r4, r5, pc}

	thumb_func_start sub_080A85B8
sub_080A85B8: @ 0x080A85B8
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080AF090
	cmp r0, #0
	beq _080A85F2
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080A85D8
	bl DeleteThisEntity
_080A85D8:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A860E
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	b _080A860E
_080A85F2:
	ldrh r1, [r4, #0x2a]
	adds r0, r4, #0
	bl sub_0800417E
	adds r0, r4, #0
	bl sub_08016AD2
	adds r0, r4, #0
	movs r1, #0x19
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_080A86A0
_080A860E:
	pop {r4, pc}

	thumb_func_start sub_080A8610
sub_080A8610: @ 0x080A8610
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A8628
	bl DeleteThisEntity
_080A8628:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A862C
sub_080A862C: @ 0x080A862C
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080AF090
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #0
	beq _080A864E
	cmp r0, #1
	beq _080A8654
	b _080A8662
_080A864E:
	bl DeleteThisEntity
	b _080A867E
_080A8654:
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r4, #0x10]
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
_080A8662:
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080A867E
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_080A867E:
	pop {r4, pc}

	thumb_func_start sub_080A8680
sub_080A8680: @ 0x080A8680
	push {lr}
	movs r1, #2
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #3
	strb r1, [r0, #0xe]
	movs r1, #1
	strb r1, [r0, #0xf]
	movs r0, #0x8c
	lsls r0, r0, #1
	bl EnqueueSFX
	pop {pc}

	thumb_func_start sub_080A86A0
sub_080A86A0: @ 0x080A86A0
	push {lr}
	movs r3, #0
	movs r1, #3
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	strh r3, [r0, #0x24]
	movs r0, #0xc7
	lsls r0, r0, #1
	bl EnqueueSFX
	pop {pc}
