	.syntax unified
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, [r6, #0x54]
	ldrb r0, [r4, #0x15]
	ldrb r3, [r6, #0x15]
	subs r2, r0, r3
	movs r1, #0xff
	ands r2, r1
	adds r0, r2, #0
	adds r0, #8
	ands r0, r1
	cmp r0, #0x10
	ble _080AC78A
	cmp r2, #0x80
	ble _080AC784
	adds r0, r3, #0
	subs r0, #8
	b _080AC788
_080AC784:
	adds r0, r3, #0
	adds r0, #8
_080AC788:
	strb r0, [r4, #0x15]
_080AC78A:
	ldr r5, [r4, #0x54]
	ldr r0, [r5, #0x54]
	cmp r0, #0
	bne _080AC79C
	ldr r0, [r6, #0x50]
	ldrb r0, [r0, #0x14]
	movs r1, #0x80
	eors r0, r1
	b _080AC7BE
_080AC79C:
	ldrb r0, [r5, #0x15]
	ldrb r3, [r4, #0x15]
	subs r2, r0, r3
	movs r1, #0xff
	ands r2, r1
	adds r0, r2, #0
	adds r0, #8
	ands r0, r1
	cmp r0, #0x10
	ble _080AC7C0
	cmp r2, #0x80
	ble _080AC7BA
	adds r0, r3, #0
	subs r0, #8
	b _080AC7BE
_080AC7BA:
	adds r0, r3, #0
	adds r0, #8
_080AC7BE:
	strb r0, [r5, #0x15]
_080AC7C0:
	pop {r4, r5, r6, pc}
	.align 2, 0
	.syntax divided
