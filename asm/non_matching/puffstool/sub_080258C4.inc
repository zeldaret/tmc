
	.syntax unified

	.text

	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_08049DF4
	adds r2, r0, #0
	cmp r2, #0
	beq _08025922
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	subs r3, r1, r0
	adds r0, r3, #0
	muls r0, r3, r0
	adds r3, r0, #0
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	adds r3, r3, r0
	adds r0, r4, #0
	adds r0, #0x84
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802591A
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r1, [r0]
	cmp r1, #0
	bne _0802591A
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r3, r0
	bgt _0802591A
	movs r0, #9
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	b _08025942
_0802591A:
	movs r0, #0x90
	lsls r0, r0, #4
	cmp r3, r0
	ble _08025926
_08025922:
	movs r0, #0
	b _08025944
_08025926:
	movs r0, #0xb
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xe]
	bl Random
	ldr r2, _08025948 @ =gUnk_080CC050
	movs r1, #0xf
	ands r1, r0
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r0, r4, #0
	adds r0, #0x78
	strh r1, [r0]
_08025942:
	movs r0, #1
_08025944:
	pop {r4, pc}
	.align 2, 0
_08025948: .4byte gUnk_080CC050

	.syntax divided
