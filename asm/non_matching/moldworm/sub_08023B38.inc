
	.syntax unified

	.text

	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_08049DF4
	adds r5, r0, #0
	cmp r5, #0
	bne _08023B4C
	movs r0, #0
	b _08023B8E
_08023B4C:
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	ldr r3, _08023B90 @ =gUnk_080CBCB8
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #1
	adds r1, r0, r3
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r2, r1
	movs r6, #0x32
	ldrsh r1, [r4, r6]
	adds r0, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	movs r3, #0
	movs r4, #0x2e
	ldrsh r0, [r5, r4]
	subs r0, r0, r2
	adds r0, #0x14
	cmp r0, #0x28
	bhi _08023B8C
	movs r6, #0x32
	ldrsh r0, [r5, r6]
	subs r0, r0, r1
	adds r0, #0x14
	cmp r0, #0x28
	bhi _08023B8C
	movs r3, #1
_08023B8C:
	adds r0, r3, #0
_08023B8E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08023B90: .4byte gUnk_080CBCB8

	.syntax divided
