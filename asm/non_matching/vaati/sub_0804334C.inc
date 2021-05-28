    .syntax unified
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08043388
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804341C
	movs r5, #0
	movs r7, #0x80
	movs r6, #4
	rsbs r6, r6, #0
	movs r3, #1
_0804336A:
	ldr r0, [r4, #0x64]
	lsls r1, r5, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldrb r0, [r2, #0x10]
	orrs r0, r7
	strb r0, [r2, #0x10]
	ldrb r1, [r2, #0x18]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x18]
	adds r5, #1
	cmp r5, #4
	bls _0804336A
_08043388:
	ldr r3, [r4, #0x64]
	adds r2, r3, #0
	adds r2, #0x18
	ldr r1, _080433AC @ =gUnk_080D131C
	ldrb r0, [r4, #0xb]
	adds r0, r0, r1
	ldrb r0, [r0]
	ldrb r1, [r2, #1]
	subs r0, r0, r1
	adds r0, #1
	cmp r0, #2
	bls _080433B0
	ldrh r0, [r2, #8]
	ldrh r1, [r3, #0x18]
	adds r0, r0, r1
	strh r0, [r3, #0x18]
	movs r7, #0
	b _080433B2
	.align 2, 0
_080433AC: .4byte gUnk_080D131C
_080433B0:
	movs r7, #1
_080433B2:
	adds r0, r4, #0
	bl sub_08043B9C
	movs r5, #0
	movs r6, #0x18
_080433BC:
	ldr r0, [r4, #0x64]
	adds r2, r0, r6
	ldr r0, _080433E4 @ =gUnk_080D1414
	adds r0, r5, r0
	ldrb r1, [r2, #0xc]
	ldrb r3, [r0]
	cmp r3, r1
	bls _080433E8
	adds r0, r1, #1
	strb r0, [r2, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r3, r0
	bne _0804341C
	movs r0, #0xaf
	lsls r0, r0, #1
	bl SoundReq
	b _0804341C
	.align 2, 0
_080433E4: .4byte gUnk_080D1414
_080433E8:
	cmp r7, #0
	beq _08043414
	cmp r5, #4
	bne _08043414
	adds r0, r4, #0
	bl sub_08043BC8
	adds r0, r4, #0
	movs r1, #7
	bl InitAnimationForceUpdate
	adds r1, r4, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	cmp r0, #0
	beq _08043414
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4, #0x64]
	ldr r1, [r0, #0x14]
	movs r0, #2
	strb r0, [r1, #0xd]
_08043414:
	adds r6, #0x10
	adds r5, #1
	cmp r5, #4
	bls _080433BC
_0804341C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
    .syntax divided
