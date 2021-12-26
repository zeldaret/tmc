	.syntax unified
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldrb r0, [r2, #0x18]
	cmp r0, #1
	beq _08067706
	cmp r0, #1
	bgt _080676F6
	cmp r0, #0
	beq _080676FC
	b _08067734
_080676F6:
	cmp r0, #2
	beq _08067722
	b _08067734
_080676FC:
	movs r0, #1
	strb r0, [r2, #0x18]
	movs r0, #0x20
	strb r0, [r2, #0x19]
	b _08067742
_08067706:
	ldrb r1, [r2, #0x19]
	lsrs r0, r1, #1
	subs r0, #0x10
	strh r0, [r3, #0x36]
	subs r1, #1
	strb r1, [r2, #0x19]
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _08067742
	movs r0, #2
	strb r0, [r2, #0x18]
	movs r0, #0x24
	strb r0, [r2, #0x19]
	b _08067742
_08067722:
	ldrb r0, [r2, #0x19]
	subs r0, #1
	strb r0, [r2, #0x19]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08067742
	movs r0, #3
	strb r0, [r2, #0x18]
	b _08067742
_08067734:
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r3, #0
	bl GravityUpdate
	cmp r0, #0
	beq _08067748
_08067742:
	ldr r1, _0806774C @ =gActiveScriptInfo
	movs r0, #0
	strb r0, [r1, #6]
_08067748:
	pop {pc}
	.align 2, 0
_0806774C: .4byte gActiveScriptInfo
	.syntax divided
