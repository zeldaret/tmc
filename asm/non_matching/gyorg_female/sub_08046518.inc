	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _080465AC @ =gMapTop+0x5004
	ldr r2, _080465B0 @ =0xFFFFBCB0
	adds r0, r1, r2
	ldr r3, _080465B4 @ =0xFFFFECB0
	adds r2, r1, r3
	ldr r7, _080465B8 @ =0x00006658
	adds r7, r1, r7
	str r7, [sp, #4]
	ldr r3, _080465BC @ =0xFFFFD658
	adds r6, r1, r3
	movs r1, #0x10
_0804653A:
	movs r5, #0x10
	movs r7, #0x80
	adds r7, r7, r0
	mov sl, r7
	adds r3, r2, #0
	adds r3, #0x80
	str r3, [sp]
	ldr r7, [sp, #4]
	adds r7, #0x40
	mov r8, r7
	movs r3, #0x40
	adds r3, r3, r6
	mov sb, r3
	subs r1, #1
	mov ip, r1
	adds r3, r0, #0
	adds r3, #0x20
	adds r4, r2, #0
	adds r4, #0x20
_08046560:
	ldrh r0, [r3]
	strh r0, [r4]
	ldrh r0, [r3]
	lsls r0, r0, #1
	ldr r7, _080465AC @ =gMapTop+0x5004
	adds r0, r0, r7
	ldrh r1, [r0]
	ldr r0, [sp, #4]
	adds r2, r0, r5
	ldr r7, _080465C0 @ =gUnk_080B37A0
	adds r0, r1, r7
	ldrb r0, [r0]
	strb r0, [r2]
	adds r2, r6, r5
	ldr r0, _080465C4 @ =gUnk_080B3E80
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2]
	subs r3, #2
	subs r4, #2
	subs r5, #1
	cmp r5, #0
	bne _08046560
	mov r0, sl
	ldr r2, [sp]
	mov r1, r8
	str r1, [sp, #4]
	mov r6, sb
	mov r1, ip
	cmp r1, #0
	bne _0804653A
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080465AC: .4byte gMapTop+0x5004
_080465B0: .4byte 0xFFFFBCB0
_080465B4: .4byte 0xFFFFECB0
_080465B8: .4byte 0x00006658
_080465BC: .4byte 0xFFFFD658
_080465C0: .4byte gUnk_080B37A0
_080465C4: .4byte gUnk_080B3E80
	.syntax divided
