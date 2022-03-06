	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	mov r8, r1
	lsls r0, r1, #4
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r0, r1
	mov ip, r0
	mov r2, sl
	lsls r0, r2, #4
	adds r3, r0, r1
	ldr r1, _080AE30C @ =gGFXSlots
	lsls r0, r2, #1
	add r0, sl
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #5]
	lsls r0, r0, #4
	adds r7, r3, r0
	movs r4, #0
	ldr r6, _080AE310 @ =gUnk_020000C0
	mov sb, r6
	ldr r0, _080AE314 @ =gPlayerEntity
	adds r2, r0, #0
	adds r2, #0x26
	adds r5, r0, #0
_080AE254:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _080AE276
	ldrb r0, [r2]
	cmp sl, r0
	bne _080AE264
	mov r1, r8
	strb r1, [r2]
_080AE264:
	ldrh r0, [r2, #0x3a]
	cmp r3, r0
	bhi _080AE276
	cmp r7, r0
	bls _080AE276
	subs r0, r0, r3
	mov r6, ip
	adds r1, r0, r6
	strh r1, [r2, #0x3a]
_080AE276:
	adds r2, #0x88
	adds r5, #0x88
	adds r4, #1
	cmp r4, #0x4f
	bls _080AE254
	movs r0, #0
_080AE282:
	movs r4, #0
	adds r1, r0, #1
	mov r8, r1
	lsls r5, r0, #6
_080AE28A:
	lsls r0, r4, #4
	add r0, sb
	adds r2, r5, r0
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AE2B4
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080AE2B4
	ldrh r1, [r2, #0xa]
	cmp r3, r1
	bhi _080AE2B4
	cmp r7, r1
	bls _080AE2B4
	subs r0, r1, r3
	mov r6, ip
	adds r1, r0, r6
	strh r1, [r2, #0xa]
_080AE2B4:
	adds r4, #1
	cmp r4, #3
	bls _080AE28A
	mov r0, r8
	cmp r0, #0x2f
	bls _080AE282
	movs r4, #0
	ldr r0, _080AE318 @ =0xFFFFFC00
	mov sl, r0
	ldr r5, _080AE31C @ =gOAMControls
	adds r5, #0x24
	ldr r1, _080AE320 @ =0x000003FF
	mov sb, r1
	movs r2, #1
	mov r8, r2
_080AE2D2:
	ldrh r2, [r5]
	lsls r0, r2, #0x16
	lsrs r1, r0, #0x16
	cmp r3, r1
	bhi _080AE2F8
	cmp r7, r1
	bls _080AE2F8
	subs r0, r1, r3
	mov r6, ip
	adds r1, r0, r6
	mov r0, sb
	ands r1, r0
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strh r0, [r5]
	mov r2, r8
	ldr r1, _080AE31C @ =gOAMControls
	strb r2, [r1]
_080AE2F8:
	adds r5, #8
	adds r4, #1
	cmp r4, #0x7f
	bls _080AE2D2
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080AE30C: .4byte gGFXSlots
_080AE310: .4byte gUnk_020000C0
_080AE314: .4byte gPlayerEntity
_080AE318: .4byte 0xFFFFFC00
_080AE31C: .4byte gOAMControls
_080AE320: .4byte 0x000003FF
	.syntax divided
