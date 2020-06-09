	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, [r4, #0x54]
	movs r0, #0x2e
	ldrsh r1, [r3, r0]
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bne _0808721E
	movs r5, #0x32
	ldrsh r0, [r3, r5]
	subs r0, #0x20
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _0808721E
	movs r0, #2
	strb r0, [r4, #0xc]
	b _0808723C
_0808721E:
	movs r5, #0x2e
	ldrsh r0, [r4, r5]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	movs r5, #0x2e
	ldrsh r2, [r3, r5]
	movs r5, #0x32
	ldrsh r3, [r3, r5]
	subs r3, #0x20
	bl sub_080045D4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F69C
_0808723C:
	pop {r4, r5, pc}
	.align 2, 0
	.syntax divided
