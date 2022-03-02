	.syntax unified
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0807909C @ =gPlayerState
	ldr r1, [r0, #0x30]
	ldr r2, _080790A0 @ =0x00100080
	ands r1, r2
	adds r5, r0, #0
	cmp r1, #0
	bne _080790DE
	movs r3, #0
	movs r2, #0
	ldr r1, _080790A4 @ =gUnk_03000B80
_0807907C:
	ldrb r0, [r1, #0xf]
	cmp r0, r3
	bls _08079086
	adds r3, r0, #0
	ldrh r4, [r1, #0x10]
_08079086:
	adds r1, #0x1c
	adds r2, #1
	cmp r2, #3
	bls _0807907C
	adds r2, r5, #0
	ldrb r0, [r2, #0xe]
	cmp r0, r3
	bhs _080790A8
	strh r4, [r2, #8]
	b _080790DE
	.align 2, 0
_0807909C: .4byte gPlayerState
_080790A0: .4byte 0x00100080
_080790A4: .4byte gUnk_03000B80
_080790A8:
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080790C0
	ldr r0, _080790BC @ =0x000002BE
	strh r0, [r2, #8]
	b _080790DE
	.align 2, 0
_080790BC: .4byte 0x000002BE
_080790C0:
	ldrh r1, [r5, #8]
	movs r0, #0xc1
	lsls r0, r0, #3
	cmp r1, r0
	beq _080790D8
	movs r0, #0x82
	lsls r0, r0, #1
	cmp r1, r0
	beq _080790D8
	ldr r0, _080790E0 @ =0x00000404
	cmp r1, r0
	bne _080790DE
_080790D8:
	adds r0, r6, #0
	bl sub_080790E4
_080790DE:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080790E0: .4byte 0x00000404
	.syntax divided
