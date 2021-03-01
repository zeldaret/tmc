    .syntax unified
	push {r4, r5, lr}
	mov ip, r0
	ldrb r0, [r0, #9]
	lsls r0, r0, #3
	ldr r1, _08017410 @ =gUnk_08126DA8
	adds r3, r0, r1
	ldrb r0, [r3]
	cmp r0, #0xff
	bne _080173CE
	ldrb r2, [r3, #2]
	ldr r1, _08017414 @ =gUnk_08126ED8
	ldrb r0, [r3, #1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	mov r0, ip
	adds r0, #0x68
	ldrb r0, [r0]
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, r3, r0
_080173CE:
	ldrb r0, [r3]
	movs r1, #0xf
	ands r1, r0
	lsls r0, r0, #4
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #0x1a]
	ldrb r1, [r3, #1]
	mov r0, ip
	adds r0, #0x44
	strb r1, [r0]
	ldrb r1, [r3, #3]
	subs r0, #4
	strb r1, [r0]
	ldrb r0, [r3, #4]
	mov r1, ip
	adds r1, #0x3f
	strb r0, [r1]
	ldrb r0, [r3, #5]
	mov r2, ip
	strh r0, [r2, #0x12]
	ldrh r1, [r3, #6]
	cmp r1, #0
	bne _0801741C
	ldr r2, _08017418 @ =gPlayerEntity
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r1, [r0]
	mov r0, ip
	adds r0, #0x60
	strh r1, [r0]
	adds r5, r2, #0
	b _08017428
	.align 2, 0
_08017410: .4byte gUnk_08126DA8
_08017414: .4byte gUnk_08126ED8
_08017418: .4byte gPlayerEntity
_0801741C:
	ldr r0, _0801749C @ =0x000003FF
	ands r0, r1
	mov r1, ip
	adds r1, #0x60
	strh r0, [r1]
	ldr r5, _080174A0 @ =gPlayerEntity
_08017428:
	mov r3, ip
	ldrb r0, [r3, #0x14]
	cmp r0, #0
	bne _08017438
	ldrb r1, [r5, #0x14]
	movs r0, #6
	ands r0, r1
	strb r0, [r3, #0x14]
_08017438:
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	mov r0, ip
	adds r0, #0x38
	strb r1, [r0]
	ldrb r1, [r5, #0x19]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	mov r0, ip
	ldrb r3, [r0, #0x19]
	movs r2, #0x3f
	adds r0, r2, #0
	ands r0, r3
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #0x19]
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	mov r4, ip
	adds r4, #0x29
	lsrs r1, r1, #0x1d
	ldrb r3, [r4]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4]
	ldrb r0, [r5, #0x1b]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	mov r3, ip
	ldrb r1, [r3, #0x1b]
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0x1b]
	mov r2, ip
	adds r2, #0x45
	movs r1, #1
	movs r0, #1
	strb r0, [r2]
	ldrb r0, [r3, #0x10]
	orrs r1, r0
	strb r1, [r3, #0x10]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801749C: .4byte 0x000003FF
_080174A0: .4byte gPlayerEntity
    .syntax divided