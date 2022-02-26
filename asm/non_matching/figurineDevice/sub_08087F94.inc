	.syntax unified
.ifdef JP
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0x5f
	bl CheckLocalFlag
	cmp r0, #0
	bne _08087E3E
	adds r0, r5, #0
	adds r0, #0x83
	movs r7, #0
	ldrsb r7, [r0, r7]
	adds r3, r7, r4
	mov ip, r0
	cmp r4, #0
	bge _08087E0A
	adds r2, r5, #0
	adds r2, #0x82
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r3, r0
	bge _08087DF4
	mov r0, ip
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrb r3, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r1, r0
	beq _08087E3E
	mov r2, ip
	strb r3, [r2]
	adds r1, r5, #0
	adds r1, #0x81
	movs r0, #1
	b _08087E00
_08087DF4:
	mov r0, ip
	strb r3, [r0]
	adds r1, r5, #0
	adds r1, #0x81
	ldrb r0, [r1]
	adds r0, r0, r4
_08087E00:
	strb r0, [r1]
	movs r0, #0x69
	bl SoundReq
	b _08087E58
_08087E0A:
	adds r1, r5, #0
	adds r1, #0x81
	ldrb r6, [r1]
	adds r2, r6, r4
	ldr r0, _08087E2C @ =0x02002A40
	adds r0, #0xc2
	ldrh r0, [r0]
	cmp r2, r0
	ble _08087E30
	cmp r0, r6
	beq _08087E3E
	adds r2, r0, #0
	subs r4, r2, r6
	adds r3, r7, r4
	cmp r3, #0x64
	ble _08087E4C
	b _08087E46
	.align 2, 0
_08087E2C: .4byte 0x02002A40
_08087E30:
	cmp r3, #0x64
	ble _08087E4C
	mov r2, ip
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0x64
	bne _08087E46
_08087E3E:
	adds r0, r5, #0
	bl sub_08088034
	b _08087E58
_08087E46:
	movs r3, #0x64
	subs r4, r3, r7
	adds r2, r6, r4
_08087E4C:
	mov r0, ip
	strb r3, [r0]
	strb r2, [r1]
	movs r0, #0x69
	bl SoundReq
_08087E58:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
.else
.ifdef EU
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r5, #0
	adds r7, #0x83
	ldrb r0, [r7]
	adds r4, r0, r6
	movs r0, #0x5f
	bl CheckLocalFlag
	cmp r0, #0
	bne _080879CE
	cmp r6, #0
	bge _0808799E
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r1, [r0]
	cmp r4, r1
	bhs _0808798A
	ldrb r0, [r7]
	cmp r0, r1
	beq _080879CE
	strb r1, [r7]
	adds r1, r5, #0
	adds r1, #0x81
	movs r0, #1
	b _08087994
_0808798A:
	strb r4, [r7]
	adds r1, r5, #0
	adds r1, #0x81
	ldrb r0, [r1]
	adds r0, r0, r6
_08087994:
	strb r0, [r1]
	movs r0, #0x69
	bl SoundReq
	b _080879EC
_0808799E:
	adds r1, r5, #0
	adds r1, #0x81
	ldrb r3, [r1]
	adds r2, r3, r6
	ldr r0, _080879C0 @ =gSave
	adds r0, #0xc2
	ldrh r0, [r0]
	cmp r2, r0
	bls _080879C4
	cmp r0, r3
	beq _080879CE
	adds r2, r0, #0
	subs r0, r2, r3
	ldrb r7, [r7]
	adds r4, r0, r7
	b _080879DE
	.align 2, 0
_080879C0: .4byte gSave
_080879C4:
	cmp r4, #0x64
	bls _080879DE
	ldrb r0, [r7]
	cmp r0, #0x64
	bne _080879D6
_080879CE:
	adds r0, r5, #0
	bl sub_08088034
	b _080879EC
_080879D6:
	movs r4, #0x64
	ldrb r0, [r7]
	subs r6, r4, r0
	adds r2, r3, r6
_080879DE:
	adds r0, r5, #0
	adds r0, #0x83
	strb r4, [r0]
	strb r2, [r1]
	movs r0, #0x69
	bl SoundReq
_080879EC:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
.else
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0x5f
	bl CheckLocalFlag
	cmp r0, #0
	bne _08088014
	adds r0, r5, #0
	adds r0, #0x83
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov ip, r1
	adds r3, r1, r4
	adds r7, r0, #0
	cmp r4, #0
	bge _08087FEA
	adds r2, r5, #0
	adds r2, #0x82
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r3, r0
	bge _08087FD6
	movs r1, #0
	ldrsb r1, [r7, r1]
	ldrb r3, [r2]
	cmp r1, r0
	beq _08088014
	strb r3, [r7]
	adds r1, r5, #0
	adds r1, #0x81
	movs r0, #1
	b _08087FE0
_08087FD6:
	strb r3, [r7]
	adds r1, r5, #0
	adds r1, #0x81
	ldrb r0, [r1]
	adds r0, r0, r4
_08087FE0:
	strb r0, [r1]
	movs r0, #0x69
	bl SoundReq
	b _08088032
_08087FEA:
	adds r1, r5, #0
	adds r1, #0x81
	ldrb r6, [r1]
	adds r2, r6, r4
	ldr r0, _0808801C @ =gSave
	adds r0, #0xc2
	ldrh r0, [r0]
	cmp r2, r0
	ble _08088008
	cmp r0, r6
	beq _08088014
	adds r2, r0, #0
	subs r4, r2, r6
	mov r0, ip
	adds r3, r0, r4
_08088008:
	cmp r3, #0x64
	ble _08088028
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #0x64
	bne _08088020
_08088014:
	adds r0, r5, #0
	bl sub_08088034
	b _08088032
	.align 2, 0
_0808801C: .4byte gSave
_08088020:
	movs r3, #0x64
	mov r0, ip
	subs r4, r3, r0
	adds r2, r6, r4
_08088028:
	strb r3, [r7]
	strb r2, [r1]
	movs r0, #0x69
	bl SoundReq
_08088032:
	pop {r4, r5, r6, r7, pc}
.endif
.endif
	.syntax divided
