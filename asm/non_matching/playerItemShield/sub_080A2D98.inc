	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080A2DD0 @ =gPlayerState
	str r4, [r0, #0x2c]
	movs r2, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x11]
	subs r0, #0x11
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r4, #0x11]
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _080A2DD8
	movs r0, #0x27
	str r0, [r4, #0x70]
	ldr r1, _080A2DD4 @ =gUnk_081271DC
	ldrb r0, [r1, #1]
	str r0, [r4, #0x78]
	str r2, [r4, #0x74]
	str r1, [r4, #0x7c]
	b _080A2DDA
	.align 2, 0
_080A2DD0: .4byte gPlayerState
_080A2DD4: .4byte gUnk_081271DC
_080A2DD8:
	str r2, [r4, #0x70]
_080A2DDA:
	ldr r0, _080A2DFC @ =gPlayerEntity
	ldrb r1, [r0, #0x14]
	movs r0, #0xe
	ands r0, r1
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08079BD8
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AE008
	adds r0, r4, #0
	bl sub_080A2E00
	pop {r4, pc}
	.align 2, 0
_080A2DFC: .4byte gPlayerEntity
	.syntax divided
