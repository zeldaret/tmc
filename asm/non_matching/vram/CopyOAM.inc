    .syntax unified
	push {r4, lr}
	ldr r1, _080AD948 @ =gMain
	ldrb r0, [r1, #0xb]
	adds r2, r0, #0
	cmp r2, #0
	bne _080AD958
	ldr r1, _080AD94C @ =gOAMControls
	movs r3, #0xa4
	lsls r3, r3, #3
	adds r0, r1, r3
	strb r2, [r0]
	ldr r3, _080AD950 @ =0x00000664
	adds r0, r1, r3
	strb r2, [r0]
	movs r3, #0xf5
	lsls r3, r3, #3
	adds r0, r1, r3
	strb r2, [r0]
	ldr r3, _080AD954 @ =0x000008EC
	adds r0, r1, r3
	strb r2, [r0]
	adds r4, r1, #0
	b _080AD95E
	.align 2, 0
_080AD948: .4byte gMain
_080AD94C: .4byte gOAMControls
_080AD950: .4byte 0x00000664
_080AD954: .4byte 0x000008EC
_080AD958:
	subs r0, #1
	strb r0, [r1, #0xb]
	ldr r4, _080AD9A8 @ =gOAMControls
_080AD95E:
	ldrb r1, [r4, #3]
	movs r0, #0x80
	subs r2, r0, r1
	cmp r2, #0
	ble _080AD980
	lsls r1, r1, #3
	adds r0, r4, #0
	adds r0, #0x20
	adds r1, r1, r0
	movs r3, #0xa8
	lsls r3, r3, #2
	adds r0, r3, #0
_080AD976:
	strh r0, [r1]
	adds r1, #8
	subs r2, #1
	cmp r2, #0
	bne _080AD976
_080AD980:
	adds r1, r4, #0
	ldr r0, _080AD9AC @ =0x00000427
	adds r2, r1, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _080AD9A0
	movs r0, #0
	strb r0, [r2]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r0, r1, r2
	adds r1, #0x26
	movs r2, #0x20
	movs r3, #8
	bl ObjAffineSet
_080AD9A0:
	movs r0, #1
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_080AD9A8: .4byte gOAMControls
_080AD9AC: .4byte 0x00000427
    .syntax divided
