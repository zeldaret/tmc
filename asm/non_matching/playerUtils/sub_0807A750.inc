	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	bne _0807A76C
	movs r4, #0xf
	ands r4, r6
	b _0807A770
_0807A76C:
	movs r4, #0xf
	ands r4, r7
_0807A770:
	cmp r4, #0
	bne _0807A776
	b _0807A88E
_0807A776:
	cmp r4, #0xf
	bne _0807A77C
	b _0807A88E
_0807A77C:
	lsrs r0, r7, #4
	movs r2, #0x3f
	ands r0, r2
	lsrs r1, r6, #4
	ands r1, r2
	lsls r1, r1, #6
	orrs r0, r1
	ldr r1, _0807A7A8 @ =gPlayerEntity
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002E0
	adds r1, r0, #0
	cmp r1, #0xf
	bls _0807A7AE
	cmp r1, #0xff
	beq _0807A7AC
	mov r2, r8
	adds r0, r1, r2
	subs r0, #0x10
	ldrb r1, [r0]
	b _0807A7AE
	.align 2, 0
_0807A7A8: .4byte gPlayerEntity
_0807A7AC:
	movs r1, #0xf
_0807A7AE:
	ldr r0, _0807A7D8 @ =gUnk_0800823C
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	bne _0807A824
	movs r0, #0xf
	ands r0, r7
	movs r2, #0x80
	lsls r2, r2, #8
	asrs r2, r0
	cmp r5, #0
	bne _0807A7F4
	ldr r3, _0807A7DC @ =gPlayerEntity
	cmp r4, #0xe
	bgt _0807A7F0
	lsls r0, r4, #1
	adds r1, r0, r1
	b _0807A7E8
	.align 2, 0
_0807A7D8: .4byte gUnk_0800823C
_0807A7DC: .4byte gPlayerEntity
_0807A7E0:
	adds r1, #2
	adds r4, #1
	cmp r4, #0xe
	bgt _0807A7F0
_0807A7E8:
	ldrh r0, [r1]
	ands r0, r2
	cmp r0, #0
	bne _0807A7E0
_0807A7F0:
	subs r4, #1
	b _0807A816
_0807A7F4:
	ldr r3, _0807A800 @ =gPlayerEntity
	cmp r4, #0
	ble _0807A814
	lsls r0, r4, #1
	adds r1, r0, r1
	b _0807A80C
	.align 2, 0
_0807A800: .4byte gPlayerEntity
_0807A804:
	subs r1, #2
	subs r4, #1
	cmp r4, #0
	ble _0807A814
_0807A80C:
	ldrh r0, [r1]
	ands r0, r2
	cmp r0, #0
	bne _0807A804
_0807A814:
	adds r4, #1
_0807A816:
	movs r0, #0xf
	ands r0, r6
	subs r0, r4, r0
	ldrh r1, [r3, #0x32]
	adds r0, r0, r1
	strh r0, [r3, #0x32]
	b _0807A88E
_0807A824:
	movs r3, #0xf
	ands r6, r3
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	cmp r5, #1
	bne _0807A85C
	subs r0, r3, r4
	lsrs r2, r0
	ldr r3, _0807A858 @ =gPlayerEntity
	cmp r4, #0
	ble _0807A854
	ands r5, r2
	cmp r5, #0
	beq _0807A854
	movs r1, #1
_0807A844:
	lsrs r2, r2, #1
	subs r4, #1
	cmp r4, #0
	ble _0807A854
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0807A844
_0807A854:
	adds r4, #1
	b _0807A882
	.align 2, 0
_0807A858: .4byte gPlayerEntity
_0807A85C:
	lsls r2, r4
	ldr r3, _0807A86C @ =gPlayerEntity
	cmp r4, #0xe
	bgt _0807A880
	movs r1, #0x80
	lsls r1, r1, #8
	b _0807A878
	.align 2, 0
_0807A86C: .4byte gPlayerEntity
_0807A870:
	lsls r2, r2, #1
	adds r4, #1
	cmp r4, #0xe
	bgt _0807A880
_0807A878:
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0807A870
_0807A880:
	subs r4, #1
_0807A882:
	movs r0, #0xf
	ands r0, r7
	subs r0, r4, r0
	ldrh r2, [r3, #0x2e]
	adds r0, r0, r2
	strh r0, [r3, #0x2e]
_0807A88E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.syntax divided
