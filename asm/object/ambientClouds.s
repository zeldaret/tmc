	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start AmbientClouds
AmbientClouds: @ 0x08089848
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08089870 @ =gUnk_08120D90
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	bl Random
	movs r1, #1
	ands r1, r0
	adds r1, #1
	adds r0, r4, #0
	bl UpdateAnimationVariableFrames
	pop {r4, pc}
	.align 2, 0
_08089870: .4byte gUnk_08120D90

	thumb_func_start sub_08089874
sub_08089874: @ 0x08089874
.ifdef EU
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x38
	movs r2, #3
	strb r2, [r0]
	ldrb r1, [r4, #0xb]
	cmp r1, #0
	bne _08089200
	ldrb r0, [r4, #0xa]
	cmp r0, #0x80
	bne _080891B4
	strb r2, [r4, #0xc]
	ldrb r0, [r4, #0x19]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_08089AE0
	b _08089246
_080891B4:
	str r1, [r4, #0x50]
	adds r0, r4, #0
	movs r1, #0x29
	movs r2, #0
	movs r3, #0xff
	bl CreateObjectWithParent
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080891FA
_080891C8:
	ldrb r3, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x29
	movs r2, #0
	bl CreateObjectWithParent
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _080891EE
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x50]
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _080891EA
	ldr r0, [r4, #0x54]
	str r0, [r1, #0x54]
_080891EA:
	ldr r0, [r4, #0x54]
	str r0, [r4, #0x50]
_080891EE:
	ldrb r0, [r4, #0xa]
	subs r0, #1
	strb r0, [r4, #0xa]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080891C8
_080891FA:
	bl DeleteThisEntity
	b _08089246
_08089200:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, [r4, #0x50]
	cmp r0, #0
	bne _08089214
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	b _0808921C
_08089214:
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
_0808921C:
	ldrb r0, [r4, #0xb]
	cmp r0, #0xff
	bne _0808923A
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl ResolveCollisionLayer
	adds r0, r4, #0
	movs r1, #0x15
	bl ChangeObjPalette
	b _08089246
_0808923A:
	ldrb r1, [r4, #0xb]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	rsbs r0, r0, #0
	strh r0, [r4, #0x36]
_08089246:
	pop {r4, pc}

.else
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08089940
	adds r0, r4, #0
	adds r0, #0x38
	movs r2, #3
	strb r2, [r0]
	ldrb r1, [r4, #0xb]
	adds r5, r0, #0
	cmp r1, #0
	bne _08089900
	ldrb r0, [r4, #0xa]
	cmp r0, #0x80
	bne _080898B4
	strb r2, [r4, #0xc]
	ldrb r0, [r4, #0x19]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_08089AE0
	b _08089940
_080898B4:
	str r1, [r4, #0x50]
	adds r0, r4, #0
	movs r1, #0x29
	movs r2, #0
	movs r3, #0xff
	bl CreateObjectWithParent
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080898FA
_080898C8:
	ldrb r3, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x29
	movs r2, #0
	bl CreateObjectWithParent
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _080898EE
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x50]
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _080898EA
	ldr r0, [r4, #0x54]
	str r0, [r1, #0x54]
_080898EA:
	ldr r0, [r4, #0x54]
	str r0, [r4, #0x50]
_080898EE:
	ldrb r0, [r4, #0xa]
	subs r0, #1
	strb r0, [r4, #0xa]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080898C8
_080898FA:
	bl DeleteThisEntity
	b _08089940
_08089900:
	strb r3, [r4, #0xc]
	ldr r0, [r4, #0x50]
	cmp r0, #0
	bne _08089912
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	b _0808991A
_08089912:
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
_0808991A:
	ldrb r0, [r4, #0xb]
	cmp r0, #0xff
	bne _08089934
	movs r0, #1
	strb r0, [r5]
	adds r0, r4, #0
	bl ResolveCollisionLayer
	adds r0, r4, #0
	movs r1, #0x15
	bl ChangeObjPalette
	b _08089940
_08089934:
	ldrb r1, [r4, #0xb]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	rsbs r0, r0, #0
	strh r0, [r4, #0x36]
_08089940:
	pop {r4, r5, pc}
	.align 2, 0
.endif

	thumb_func_start sub_08089944
sub_08089944: @ 0x08089944
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r3, [r4, #0xb]
	cmp r3, #0xff
	bne _08089964
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0x19]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x19]
	b _08089A76
_08089964:
	ldrb r1, [r4, #0x1b]
	movs r2, #0x3f
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	ands r2, r0
	strb r2, [r4, #0x19]
	cmp r3, #1
	beq _08089984
	ldr r0, [r4, #0x54]
	ldrb r0, [r0, #0xc]
	cmp r0, #2
	bne _08089A76
_08089984:
	ldr r0, _08089998 @ =gPlayerEntity
	movs r1, #0x36
	ldrsh r2, [r0, r1]
	movs r1, #0x24
	rsbs r1, r1, #0
	adds r6, r0, #0
	cmp r2, r1
	bge _0808999C
	movs r0, #1
	b _0808999E
	.align 2, 0
_08089998: .4byte gPlayerEntity
_0808999C:
	movs r0, #0
_0808999E:
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xb]
	subs r0, #1
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	ldrh r0, [r4, #0x32]
	subs r0, r0, r1
	strh r0, [r4, #0x32]
	adds r5, r6, #0
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xf
	movs r3, #0xf
	bl EntityInRectRadius
	cmp r0, #0
	beq _08089A62
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08089A62
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x1b]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _080899EC
	ldr r1, [r4, #0x54]
	movs r0, #1
	strb r0, [r1, #0xc]
_080899EC:
	ldr r1, _08089A78 @ =gPlayerState
	movs r0, #1
	strb r0, [r1, #0x14]
	ldrh r0, [r5, #0x32]
	subs r0, #0x24
	strh r0, [r5, #0x32]
	ldrh r0, [r5, #0x36]
	adds r0, #0x24
	strh r0, [r5, #0x36]
	adds r0, r5, #0
	bl sub_0807AA80
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _08089A62
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _08089A20
	ldrh r0, [r1, #0x2e]
	adds r0, #8
	strh r0, [r1, #0x2e]
_08089A20:
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _08089A36
	ldrh r0, [r1, #0x2e]
	subs r0, #8
	strh r0, [r1, #0x2e]
_08089A36:
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _08089A4C
	ldrh r0, [r1, #0x32]
	adds r0, #8
	strh r0, [r1, #0x32]
_08089A4C:
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _08089A62
	ldrh r0, [r1, #0x32]
	subs r0, #8
	strh r0, [r1, #0x32]
_08089A62:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	ldrh r0, [r4, #0x32]
	adds r1, r1, r0
	strh r1, [r4, #0x32]
	ldrb r0, [r4, #0xe]
	strb r0, [r4, #0xf]
_08089A76:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08089A78: .4byte gPlayerState

	thumb_func_start sub_08089A7C
sub_08089A7C: @ 0x08089A7C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	ldrh r0, [r4, #0x32]
	subs r0, r0, r1
	strh r0, [r4, #0x32]
	ldr r5, _08089AB0 @ =gPlayerEntity
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xf
	movs r3, #0xf
	bl EntityInRectRadius
	cmp r0, #0
	beq _08089AB8
	ldr r2, _08089AB4 @ =gPlayerState
	movs r0, #1
	strb r0, [r2, #0x14]
	ldr r0, [r2, #0x30]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x30]
	b _08089AD0
	.align 2, 0
_08089AB0: .4byte gPlayerEntity
_08089AB4: .4byte gPlayerState
_08089AB8:
	movs r2, #1
	strb r2, [r4, #0xc]
	ldrh r1, [r4, #0x36]
	ldrh r3, [r5, #0x36]
	adds r0, r1, r3
	strh r0, [r5, #0x36]
	ldrh r0, [r5, #0x32]
	subs r0, r0, r1
	strh r0, [r5, #0x32]
	adds r0, r5, #0
	adds r0, #0x38
	strb r2, [r0]
_08089AD0:
	ldrb r1, [r4, #0xb]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	pop {r4, r5, pc}

	thumb_func_start sub_08089AE0
sub_08089AE0: @ 0x08089AE0
	push {lr}
	ldr r1, _08089AF8 @ =gPlayerEntity
	movs r2, #0xf
	movs r3, #0xf
	bl EntityInRectRadius
	cmp r0, #0
	beq _08089AF6
	ldr r1, _08089AFC @ =gPlayerState
	movs r0, #1
	strb r0, [r1, #0x14]
_08089AF6:
	pop {pc}
	.align 2, 0
_08089AF8: .4byte gPlayerEntity
_08089AFC: .4byte gPlayerState
