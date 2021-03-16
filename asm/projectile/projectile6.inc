	thumb_func_start Projectile6
Projectile6: @ 0x080A87C8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A87E0 @ =gUnk_08129740
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A87E0: .4byte gUnk_08129740

	thumb_func_start sub_080A87E4
sub_080A87E4: @ 0x080A87E4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _080A8804
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _080A87F8
	bl DeleteThisEntity
_080A87F8:
	ldr r0, [r4, #0x54]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080A8804
	bl DeleteThisEntity
_080A8804:
	ldr r0, _080A8818 @ =gUnk_08129754
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080A8818: .4byte gUnk_08129754

	thumb_func_start sub_080A881C
sub_080A881C: @ 0x080A881C
	push {lr}
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x46
	movs r0, #0
	strh r0, [r2]
	ldrb r2, [r1, #0xa]
	cmp r2, #0
	bne _080A8854
	ldr r0, [r1, #0x50]
	str r2, [r0, #0x54]
	adds r0, r1, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _080A884A
	ldr r0, _080A8850 @ =gPlayerState
	movs r1, #0xf0
	strb r1, [r0, #0xf]
	movs r0, #2
	rsbs r0, r0, #0
	bl ModHealth
_080A884A:
	bl DeleteThisEntity
	b _080A8866
	.align 2, 0
_080A8850: .4byte gPlayerState
_080A8854:
	ldrb r0, [r1, #0xc]
	cmp r0, #1
	bhi _080A8866
	movs r0, #2
	strb r0, [r1, #0xc]
	ldr r0, [r1, #0x50]
	adds r0, #0x83
	movs r1, #0xc0
	strb r1, [r0]
_080A8866:
	pop {pc}

	thumb_func_start sub_080A8868
sub_080A8868: @ 0x080A8868
	push {r4, lr}
	adds r3, r0, #0
	movs r4, #0
	movs r0, #1
	strb r0, [r3, #0xc]
	strb r4, [r3, #0xd]
	ldrb r1, [r3, #0x18]
	subs r0, #0x32
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3, #0x18]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r3, #0x20]
	ldr r0, _080A88A4 @ =gUnk_08129764
	str r0, [r3, #0x48]
	adds r2, r3, #0
	adds r2, #0x3c
	ldrb r0, [r2]
	orrs r1, r0
	strb r1, [r2]
	ldrb r0, [r3, #0xa]
	cmp r0, #1
	beq _080A88B8
	cmp r0, #1
	bgt _080A88A8
	cmp r0, #0
	beq _080A88AE
	b _080A88C6
	.align 2, 0
_080A88A4: .4byte gUnk_08129764
_080A88A8:
	cmp r0, #2
	beq _080A88BE
	b _080A88C6
_080A88AE:
	adds r0, r3, #0
	movs r1, #0
	bl InitializeAnimation
	b _080A88C6
_080A88B8:
	strb r4, [r3, #0xe]
	strb r4, [r3, #0xf]
	b _080A88C6
_080A88BE:
	adds r0, r3, #0
	movs r1, #5
	bl InitializeAnimation
_080A88C6:
	pop {r4, pc}

	thumb_func_start sub_080A88C8
sub_080A88C8: @ 0x080A88C8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, [r4, #0x50]
	cmp r6, #0
	bne _080A88D6
	movs r0, #2
	strb r0, [r4, #0xc]
_080A88D6:
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _080A88E0
	movs r0, #2
	strb r0, [r4, #0xc]
_080A88E0:
	ldr r3, _080A88FC @ =0xFFFF0000
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	ldrb r5, [r4, #0xa]
	cmp r5, #1
	beq _080A890E
	cmp r5, #1
	bgt _080A8900
	cmp r5, #0
	beq _080A8906
	b _080A8982
	.align 2, 0
_080A88FC: .4byte 0xFFFF0000
_080A8900:
	cmp r5, #2
	beq _080A8962
	b _080A8982
_080A8906:
	ldrh r0, [r4, #0x36]
	adds r0, #0x10
	strh r0, [r4, #0x36]
	b _080A8982
_080A890E:
	ldrh r0, [r4, #0x36]
	adds r0, #0xe
	strh r0, [r4, #0x36]
	ldr r0, [r4, #0x54]
	bl sub_08078954
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	bl CopyPosition
	ldrb r0, [r4, #0xe]
	adds r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _080A8982
	ldr r2, [r4, #0x54]
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	bne _080A8982
	movs r3, #2
	ands r1, r3
	cmp r1, #0
	beq _080A8946
	ldrb r0, [r2, #0xf]
	adds r0, #1
	strb r0, [r2, #0xf]
_080A8946:
	ldr r0, [r4, #0x54]
	ldrb r1, [r0, #0xf]
	cmp r1, #0x1f
	bhi _080A8982
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	bne _080A8982
	adds r1, r6, #0
	adds r1, #0x83
	movs r0, #0xc0
	strb r0, [r1]
	strb r3, [r4, #0xc]
	b _080A8982
_080A8962:
	ldrh r0, [r4, #0x36]
	adds r0, #0xe
	strh r0, [r4, #0x36]
	ldr r1, _080A8984 @ =gPlayerEntity
	adds r0, r4, #0
	movs r2, #0xe
	movs r3, #0xe
	bl sub_080041A0
	cmp r0, #0
	beq _080A8982
	strb r5, [r4, #0xc]
	adds r1, r6, #0
	adds r1, #0x83
	movs r0, #0xc0
	strb r0, [r1]
_080A8982:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A8984: .4byte gPlayerEntity

	thumb_func_start sub_080A8988
sub_080A8988: @ 0x080A8988
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _080A89B4
	ldr r4, [r5, #0x54]
	cmp r4, #0
	bne _080A899C
	bl DeleteThisEntity
_080A899C:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _080A89A6
	bl DeleteThisEntity
_080A89A6:
	adds r0, r4, #0
	bl sub_08078954
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
_080A89B4:
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r5, #0
	bl sub_080044EC
	cmp r0, #1
	bne _080A8A44
	adds r0, r5, #0
	bl sub_080043E8
	cmp r0, #0
	beq _080A8A00
	cmp r0, #2
	beq _080A89E0
	cmp r0, #2
	bhi _080A89DA
	cmp r0, #1
	beq _080A89E6
	b _080A89FC
_080A89DA:
	cmp r0, #3
	beq _080A89F2
	b _080A89FC
_080A89E0:
	adds r0, r5, #0
	movs r1, #0xb
	b _080A89EA
_080A89E6:
	adds r0, r5, #0
	movs r1, #0
_080A89EA:
	movs r2, #0
	bl CreateFx
	b _080A89FC
_080A89F2:
	adds r0, r5, #0
	movs r1, #0xc
	movs r2, #0
	bl CreateFx
_080A89FC:
	bl DeleteThisEntity
_080A8A00:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080A8A3E
	cmp r0, #1
	bgt _080A8A10
	cmp r0, #0
	beq _080A8A16
	b _080A8A44
_080A8A10:
	cmp r0, #2
	beq _080A8A2A
	b _080A8A44
_080A8A16:
	adds r0, r5, #0
	movs r1, #1
	bl InitializeAnimation
	movs r0, #0x84
	bl EnqueueSFX
	movs r0, #3
	strb r0, [r5, #0xc]
	b _080A8A44
_080A8A2A:
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0x80
	bl CreateFx
	adds r4, r0, #0
	cmp r4, #0
	beq _080A8A3E
	movs r0, #0
	str r0, [r4, #0x50]
_080A8A3E:
	adds r0, r5, #0
	bl DeleteEntity
_080A8A44:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A8A48
sub_080A8A48: @ 0x080A8A48
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A8A64
	adds r0, r4, #0
	bl DeleteEntity
_080A8A64:
	pop {r4, pc}
	.align 2, 0
