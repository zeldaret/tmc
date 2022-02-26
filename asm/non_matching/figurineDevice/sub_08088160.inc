	.syntax unified
.ifdef JP
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #3
	ldr r0, _08087FB0 @ =gUnk_080FC3E4
	adds r1, r1, r0
	movs r4, #0
	adds r0, r2, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	ldrb r3, [r1, #6]
	cmp r0, r3
	bhs _08088068
	ldrb r0, [r1, #6]
	cmp r0, #0x10
	beq _08087FC6
	cmp r0, #0x10
	bgt _08087FB4
	cmp r0, #8
	beq _08087FBC
	b _0808806A
	.align 2, 0
_08087FB0: .4byte gUnk_080FC3E4
_08087FB4:
	cmp r0, #0x20
	beq _08087FCA
	cmp r0, #0x40
	bne _0808806A
_08087FBC:
	ldr r0, [r1]
	ldrh r1, [r1, #4]
	bl CheckLocalFlagByBank
	b _08088064EU
_08087FC6:
	ldrh r0, [r1, #4]
	b _08088060EU
_08087FCA:
	ldrh r0, [r1, #4]
	cmp r0, #4
	bhi _0808806A
	lsls r0, r0, #2
	ldr r1, _08087FDC @ =_08087FE0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08087FDC: .4byte _08087FE0
_08087FE0: @ jump table
	.4byte _08087FF4 @ case 0
	.4byte _0808800C @ case 1
	.4byte _0808801A @ case 2
	.4byte _08088032 @ case 3
	.4byte _0808804A @ case 4
_08087FF4:
	movs r0, #0x20
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08088068
	movs r0, #0x10
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08088068
	movs r0, #0x19
	b _08088060EU
_0808800C:
	adds r0, r2, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #4
	bls _0808806A
	movs r0, #0x28
	b _08088060EU
_0808801A:
	movs r0, #0x54
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08088068
	movs r0, #0x56
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08088068
	movs r0, #0x3d
	b _08088060EU
_08088032:
	movs r0, #0x3b
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08088068
	movs r0, #0x4a
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08088068
	movs r0, #0xd
	b _08088060EU
_0808804A:
	movs r0, #0x49
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08088068
	movs r0, #0x55
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08088068
	movs r0, #0x3c
_08088060EU:
	bl CheckKinstoneFused
_08088064EU:
	cmp r0, #0
	beq _0808806A
_08088068:
	movs r4, #1
_0808806A:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
.else
.ifdef EU
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #3
	ldr r0, _08087B44 @ =gUnk_080FC3E4
	adds r1, r1, r0
	movs r4, #0
	adds r0, r2, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	ldrb r3, [r1, #6]
	cmp r0, r3
	bhs _08087BFC
	ldrb r0, [r1, #6]
	cmp r0, #0x10
	beq _08087B5A
	cmp r0, #0x10
	bgt _08087B48
	cmp r0, #8
	beq _08087B50
	b _08087BFE
	.align 2, 0
_08087B44: .4byte gUnk_080FC3E4
_08087B48:
	cmp r0, #0x20
	beq _08087B5E
	cmp r0, #0x40
	bne _08087BFE
_08087B50:
	ldr r0, [r1]
	ldrh r1, [r1, #4]
	bl CheckLocalFlagByBank
	b _08087BF8
_08087B5A:
	ldrh r0, [r1, #4]
	b _08087BF4
_08087B5E:
	ldrh r0, [r1, #4]
	cmp r0, #4
	bhi _08087BFE
	lsls r0, r0, #2
	ldr r1, _08087B70 @ =_08087B74
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08087B70: .4byte _08087B74
_08087B74: @ jump table
	.4byte _08087B88 @ case 0
	.4byte _08087BA0 @ case 1
	.4byte _08087BAE @ case 2
	.4byte _08087BC6 @ case 3
	.4byte _08087BDE @ case 4
_08087B88:
	movs r0, #0x20
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08087BFC
	movs r0, #0x10
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08087BFC
	movs r0, #0x19
	b _08087BF4
_08087BA0:
	adds r0, r2, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	cmp r0, #4
	bls _08087BFE
	movs r0, #0x28
	b _08087BF4
_08087BAE:
	movs r0, #0x54
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08087BFC
	movs r0, #0x56
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08087BFC
	movs r0, #0x3d
	b _08087BF4
_08087BC6:
	movs r0, #0x3b
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08087BFC
	movs r0, #0x4a
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08087BFC
	movs r0, #0xd
	b _08087BF4
_08087BDE:
	movs r0, #0x49
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08087BFC
	movs r0, #0x55
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08087BFC
	movs r0, #0x3c
_08087BF4:
	bl CheckKinstoneFused
_08087BF8:
	cmp r0, #0
	beq _08087BFE
_08087BFC:
	movs r4, #1
_08087BFE:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
.else
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #3
	ldr r0, _08088188 @ =gUnk_080FC3E4
	adds r1, r1, r0
	movs r4, #0
	adds r0, r2, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	ldrb r3, [r1, #6]
	cmp r0, r3
	bhs _08088266
	ldrb r0, [r1, #6]
	cmp r0, #0x10
	beq _0808819E
	cmp r0, #0x10
	bgt _0808818C
	cmp r0, #8
	beq _08088194
	b _08088268
	.align 2, 0
_08088188: .4byte gUnk_080FC3E4
_0808818C:
	cmp r0, #0x20
	beq _080881A6
	cmp r0, #0x40
	bne _08088268
_08088194:
	ldr r0, [r1]
	ldrh r1, [r1, #4]
	bl CheckLocalFlagByBank
	b _08088262
_0808819E:
	ldrh r0, [r1, #4]
.ifndef JP
	bl CheckKinstoneFused
.endif
	b _08088262
_080881A6:
	ldrh r0, [r1, #4]
	cmp r0, #5
	bhi _08088268
	lsls r0, r0, #2
	ldr r1, _080881B8 @ =_080881BC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080881B8: .4byte _080881BC
_080881BC: @ jump table
	.4byte _080881D4 @ case 0
	.4byte _080881F0 @ case 1
	.4byte _080881FE @ case 2
	.4byte _0808821A @ case 3
	.4byte _08088236 @ case 4
	.4byte _08088252 @ case 5
_080881D4:
	movs r0, #0x20
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08088266
	movs r0, #0x10
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08088266
	movs r0, #0x19
_080881EA:
	bl CheckKinstoneFused
	b _08088262
_080881F0:
	adds r0, r2, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #4
	bls _08088268
	movs r0, #0x28
	b _080881EA
_080881FE:
	movs r0, #0x54
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08088266
	movs r0, #0x56
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08088266
	movs r0, #0x3d
	bl CheckKinstoneFused
	b _08088262
_0808821A:
	movs r0, #0x3b
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08088266
	movs r0, #0x4a
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08088266
	movs r0, #0xd
	bl CheckKinstoneFused
	b _08088262
_08088236:
	movs r0, #0x49
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08088266
	movs r0, #0x55
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08088266
	movs r0, #0x3c
	bl CheckKinstoneFused
	b _08088262
_08088252:
	adds r0, r2, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #1
	bls _08088268
	movs r0, #0x12
	bl CheckGlobalFlag
_08088262:
	cmp r0, #0
	beq _08088268
_08088266:
	movs r4, #1
_08088268:
	adds r0, r4, #0
	pop {r4, pc}
.endif
.endif
	.syntax divided
