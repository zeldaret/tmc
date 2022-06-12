	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08080344 @ =gUnk_02022830
	mov ip, r0
	ldr r1, _08080348 @ =gRoomControls
	ldrh r0, [r1, #0x1e]
	lsrs r0, r0, #4
	str r0, [sp]
	ldrh r0, [r1, #0x20]
	lsrs r0, r0, #4
	lsls r0, r0, #6
	str r0, [sp, #4]
	movs r5, #0
	mov sl, r5
	cmp r5, r0
	bhs _08080336
	mov sb, r5
_080802A2:
	movs r1, #0
	mov r8, r1
	ldr r0, [sp]
	cmp r8, r0
	bhs _08080328
	ldr r4, _0808034C @ =gMapTop+0x0004
	add r4, sb
	ldr r7, _08080350 @ =gMapTop+0x3004
	add r7, sb
	ldr r3, _08080354 @ =gMapBottom+0x0004
	add r3, sb
	ldr r6, _08080358 @ =gMapBottom+0x3004
	add r6, sb
_080802BC:
	mov r2, sl
	add r2, r8
	ldrh r0, [r6]
	ldrh r1, [r3]
	cmp r0, r1
	beq _080802EA
	ldr r0, _0808035C @ =0x00003FFF
	cmp r1, r0
	bhi _080802EA
	adds r0, #1
	adds r1, r0, #0
	adds r0, r2, #0
	orrs r0, r1
	mov r1, ip
	strh r0, [r1]
	ldrh r0, [r3]
	strh r0, [r1, #2]
	movs r0, #4
	add ip, r0
	adds r5, #1
	ldr r0, _08080360 @ =0x000005FF
	cmp r5, r0
	bhi _08080336
_080802EA:
	ldrh r0, [r7]
	ldrh r1, [r4]
	cmp r0, r1
	beq _08080316
	ldr r0, _0808035C @ =0x00003FFF
	cmp r1, r0
	bhi _08080316
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	orrs r2, r0
	mov r0, ip
	strh r2, [r0]
	ldrh r0, [r4]
	mov r1, ip
	strh r0, [r1, #2]
	movs r0, #4
	add ip, r0
	adds r5, #1
	ldr r0, _08080364 @ =0x000007FF
	cmp r5, r0
	bhi _08080336
_08080316:
	adds r4, #2
	adds r7, #2
	adds r3, #2
	adds r6, #2
	movs r1, #1
	add r8, r1
	ldr r0, [sp]
	cmp r8, r0
	blo _080802BC
_08080328:
	movs r1, #0x80
	add sb, r1
	movs r0, #0x40
	add sl, r0
	ldr r1, [sp, #4]
	cmp sl, r1
	blo _080802A2
_08080336:
	adds r0, r5, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08080344: .4byte gUnk_02022830
_08080348: .4byte gRoomControls
_0808034C: .4byte gMapTop+0x0004
_08080350: .4byte gMapTop+0x3004
_08080354: .4byte gMapBottom+0x0004
_08080358: .4byte gMapBottom+0x3004
_0808035C: .4byte 0x00003FFF
_08080360: .4byte 0x000005FF
_08080364: .4byte 0x000007FF
	.syntax divided
