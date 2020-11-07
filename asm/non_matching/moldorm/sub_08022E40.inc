
	.syntax unified

	.text

	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x2e]
	adds r0, #0x74
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	ldr r2, [r4, #0x50]
	adds r2, #0x79
	ldrb r0, [r2]
	adds r0, #1
	movs r3, #7
	ands r0, r3
	adds r0, #0x7c
	adds r0, r4, r0
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	subs r0, #8
	lsrs r1, r1, #4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r5, [r4, #0x2e]
	adds r0, r0, r5
	strh r0, [r4, #0x2e]
	subs r1, #8
	ldrh r0, [r4, #0x32]
	adds r1, r1, r0
	strh r1, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x84
	ldrb r0, [r2]
	adds r0, #1
	ands r0, r3
	lsls r0, r0, #2
	ldr r1, [r1]
	lsrs r1, r0
	movs r0, #7
	ands r1, r0
	strb r1, [r4, #0x14]
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _08022EA2
	adds r0, r1, #0
	adds r0, #0xa
	strb r0, [r4, #0x1e]
	b _08022EA8
_08022EA2:
	adds r0, r4, #0
	bl sub_08022EAC
_08022EA8:
	pop {r4, r5, pc}
	.align 2, 0

	.syntax divided
