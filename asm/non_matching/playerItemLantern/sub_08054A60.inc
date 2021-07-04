	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #0xa0
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #0xe]
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r4, #0x11]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	subs r1, #1
	movs r0, #0x80
	strb r0, [r1]
	ldr r0, _08054AC4 @ =gPlayerEntity
	ldrb r1, [r0, #0x14]
	movs r0, #0xe
	ands r0, r1
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl AllocMutableHitbox
	cmp r0, #0
	bne _08054AAC
	bl DeleteThisEntity
_08054AAC:
	adds r0, r4, #0
	bl sub_0801766C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AE008
	adds r0, r4, #0
	bl sub_08054AC8
	pop {r4, pc}
	.align 2, 0
_08054AC4: .4byte gPlayerEntity
	.syntax divided
