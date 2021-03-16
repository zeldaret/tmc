	thumb_func_start Projectile20
Projectile20: @ 0x080ABF24
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080ABF3C @ =gUnk_0812A84C
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080ABF3C: .4byte gUnk_0812A84C

	thumb_func_start sub_080ABF40
sub_080ABF40: @ 0x080ABF40
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080ABF66
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r1, _080ABFA0 @ =gPlayerEntity
	adds r0, r4, #0
	bl GetFacingDirection
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	ldr r0, _080ABFA4 @ =0x00000199
	bl SoundReq
_080ABF66:
	ldrh r2, [r4, #0x36]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #6
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080ABF78
	adds r0, r2, #2
	strh r0, [r4, #0x36]
_080ABF78:
	adds r0, r4, #0
	bl sub_080AF090
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _080ABF88
	bl DeleteThisEntity
_080ABF88:
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080ABF9C
	bl DeleteThisEntity
_080ABF9C:
	pop {r4, pc}
	.align 2, 0
_080ABFA0: .4byte gPlayerEntity
_080ABFA4: .4byte 0x00000199

	thumb_func_start sub_080ABFA8
sub_080ABFA8: @ 0x080ABFA8
	push {lr}
	bl DeleteThisEntity
	pop {pc}
