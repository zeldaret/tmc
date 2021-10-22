	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_080AF090
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080ABAFE
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	adds r1, r4, #0
	adds r1, #0x68
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r3, r0, r1
	b _080ABB0C
_080ABAFE:
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	adds r0, r4, #0
	adds r0, #0x6a
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r3, r1, r0
_080ABB0C:
	adds r0, r4, #0
	adds r0, #0x6c
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r6, r0, #0
	cmp r2, #0
	bge _080ABB1E
	rsbs r3, r3, #0
	rsbs r2, r2, #0
_080ABB1E:
	lsls r1, r3, #0x10
	lsls r0, r2, #0x10
	cmp r1, r0
	bls _080ABB84
	ldrb r0, [r4, #0x15]
	movs r1, #0x10
	eors r0, r1
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0xb]
	adds r5, r0, #0
	cmp r5, #0
	bne _080ABB4E
	adds r0, r4, #0
	adds r0, #0x68
	ldrh r0, [r0]
	strh r0, [r4, #0x2e]
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1f
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #6
	subs r0, #0x42
	b _080ABB62
_080ABB4E:
	adds r0, r4, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	strh r0, [r4, #0x32]
	ldrb r2, [r4, #0x18]
	lsrs r1, r2, #7
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #7
	movs r0, #0x7f
_080ABB62:
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	cmp r3, #0
	ble _080ABB84
	lsls r0, r5, #0x18
	cmp r0, #0
	bne _080ABB7C
	ldrh r0, [r6]
	ldrh r2, [r4, #0x2e]
	adds r0, r0, r2
	strh r0, [r4, #0x2e]
	b _080ABB84
_080ABB7C:
	ldrh r0, [r6]
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
_080ABB84:
	adds r0, r4, #0
	bl GetNextFrame
	pop {r4, r5, r6, pc}
	.syntax divided
