	.syntax unified
	push {r4, lr}
	adds r3, r0, #0
	ldrb r1, [r3, #0x15]
	adds r2, r1, #2
	movs r0, #0x1c
	ands r2, r0
	ldrb r4, [r3, #0x14]
	lsls r0, r4, #2
	subs r0, r2, r0
	adds r0, #6
	cmp r0, #0xc
	bls _0802CFA8
	lsrs r0, r2, #2
	b _0802CFB8
_0802CFA8:
	adds r0, r1, #1
	movs r1, #7
	ands r0, r1
	cmp r0, #2
	ble _0802CFD0
	lsrs r0, r2, #2
	cmp r0, r4
	beq _0802CFD0
_0802CFB8:
	strb r0, [r3, #0x14]
	lsrs r0, r2, #3
	lsls r0, r0, #2
	ldr r1, _0802CFD4 @ =gUnk_080CD730
	adds r2, r0, r1
	ldrh r1, [r2]
	adds r0, r3, #0
	adds r0, #0x74
	strh r1, [r0]
	ldrh r1, [r2, #2]
	adds r0, #2
	strh r1, [r0]
_0802CFD0:
	pop {r4, pc}
	.align 2, 0
_0802CFD4: .4byte gUnk_080CD730

    .syntax divided
