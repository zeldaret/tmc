    .syntax unified
	push {r4, r5, r6, lr}
	ldrb r3, [r0, #0xa]
	lsls r1, r3, #4
	adds r4, r1, #0
	adds r4, #8
	ldr r2, [r0, #0x64]
	adds r6, r2, r4
	adds r1, #0x18
	adds r4, r2, r1
	ldr r0, _08043B40 @ =gUnk_080D13B2
	adds r3, r3, r0
	ldrb r5, [r3]
	ldr r0, [r2]
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	bne _08043B44
	ldrb r1, [r6, #1]
	ldrb r0, [r4, #1]
	subs r0, r1, r0
	lsls r0, r0, #0x18
	asrs r3, r0, #0x18
	cmp r5, r3
	bhs _08043B5E
	cmp r3, #0
	ble _08043B56
	subs r0, r1, r5
	b _08043B5C
	.align 2, 0
_08043B40: .4byte gUnk_080D13B2
_08043B44:
	ldrb r0, [r4, #1]
	ldrb r1, [r6, #1]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	asrs r3, r0, #0x18
	cmp r5, r3
	bhs _08043B5E
	cmp r3, #0
	bge _08043B5A
_08043B56:
	strb r1, [r4, #1]
	b _08043B5E
_08043B5A:
	adds r0, r1, r5
_08043B5C:
	strb r0, [r4, #1]
_08043B5E:
	ldrb r2, [r6, #5]
	ldrb r0, [r4, #5]
	subs r3, r2, r0
	lsls r1, r5, #1
	adds r0, r3, r5
	cmp r1, r0
	bhs _08043B78
	cmp r3, #0
	ble _08043B74
	subs r0, r2, r5
	b _08043B76
_08043B74:
	adds r0, r2, r5
_08043B76:
	strb r0, [r4, #5]
_08043B78:
	pop {r4, r5, r6, pc}
	.align 2, 0
    .syntax divided
