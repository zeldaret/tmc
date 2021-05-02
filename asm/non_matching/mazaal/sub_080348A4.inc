    .syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	adds r5, r2, #0
	ldrb r0, [r3, #0xa]
	cmp r0, #0
	bne _080348C6
	movs r2, #5
	movs r0, #0x7d
	adds r0, r0, r4
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #0x10
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	b _080348C8
_080348C6:
	movs r2, #0xa
_080348C8:
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	ands r0, r2
	cmp r0, #0
	beq _080348F0
	adds r0, r4, #0
	adds r0, #0x7d
	ldrb r2, [r0]
	ldrb r1, [r3, #0xa]
	adds r3, r0, #0
	cmp r1, #0
	bne _080348E6
	movs r0, #1
	b _080348E8
_080348E6:
	movs r0, #2
_080348E8:
	orrs r0, r2
	strb r0, [r3]
	movs r0, #0
	b _08034998
_080348F0:
	cmp r5, #8
	bhi _08034996
	lsls r0, r5, #2
	ldr r1, _08034900 @ =_08034904
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08034900: .4byte _08034904
_08034904: @ jump table
	.4byte _08034928 @ case 0
	.4byte _0803492E @ case 1
	.4byte _0803493C @ case 2
	.4byte _0803494A @ case 3
	.4byte _0803493C @ case 4
	.4byte _08034958 @ case 5
	.4byte _08034966 @ case 6
	.4byte _0803496C @ case 7
	.4byte _08034982 @ case 8
_08034928:
	movs r0, #3
	strb r0, [r3, #0xc]
	b _08034996
_0803492E:
	movs r0, #4
	strb r0, [r3, #0xc]
	adds r1, r3, #0
	adds r1, #0x7c
	movs r0, #3
	strb r0, [r1]
	b _08034996
_0803493C:
	movs r0, #4
	strb r0, [r3, #0xc]
	adds r1, r3, #0
	adds r1, #0x7c
	movs r0, #1
	strb r0, [r1]
	b _08034996
_0803494A:
	movs r0, #0xf
	strb r0, [r3, #0xc]
	adds r1, r3, #0
	adds r1, #0x7e
	movs r0, #0xb4
	strh r0, [r1]
	b _08034996
_08034958:
	movs r0, #0xf
	strb r0, [r3, #0xc]
	adds r1, r3, #0
	adds r1, #0x7e
	movs r0, #1
	strh r0, [r1]
	b _08034996
_08034966:
	movs r0, #0x1e
	strb r0, [r3, #0xc]
	b _08034996
_0803496C:
	movs r0, #0x1b
	strb r0, [r3, #0xc]
	ldrb r1, [r3, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3, #0x10]
	adds r0, r3, #0
	movs r1, #5
	bl InitializeAnimation
	b _08034996
_08034982:
	ldrb r0, [r3, #0xa]
	adds r2, r0, #2
	movs r0, #0x36
	adds r1, r2, #0
	bl CreateEnemy
	adds r3, r0, #0
	cmp r3, #0
	beq _08034996
	str r4, [r3, #0x50]
_08034996:
	movs r0, #1
_08034998:
	pop {r4, r5, pc}
	.align 2, 0
    .syntax divided
