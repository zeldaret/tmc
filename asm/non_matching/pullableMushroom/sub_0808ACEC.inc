	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808AD00
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
_0808AD00:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	subs r0, #4
	cmp r0, #0x12
	bhi _0808AD92
	lsls r0, r0, #2
	ldr r1, _0808AD1C @ =_0808AD20
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0808AD1C: .4byte _0808AD20
_0808AD20: @ jump table
	.4byte _0808AD6C @ case 0
	.4byte _0808AD6C @ case 1
	.4byte _0808AD6C @ case 2
	.4byte _0808AD92 @ case 3
	.4byte _0808AD6C @ case 4
	.4byte _0808AD6C @ case 5
	.4byte _0808AD6C @ case 6
	.4byte _0808AD6C @ case 7
	.4byte _0808AD6C @ case 8
	.4byte _0808AD6C @ case 9
	.4byte _0808AD92 @ case 10
	.4byte _0808AD92 @ case 11
	.4byte _0808AD6C @ case 12
	.4byte _0808AD6C @ case 13
	.4byte _0808AD6C @ case 14
	.4byte _0808AD88 @ case 15
	.4byte _0808AD6C @ case 16
	.4byte _0808AD92 @ case 17
	.4byte _0808AD6C @ case 18
_0808AD6C:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	bl sub_0806F5A4
	strb r0, [r4, #0x14]
	movs r0, #2
	strb r0, [r4, #0xd]
	strb r0, [r4, #0xe]
	b _0808AD9E
_0808AD88:
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	b _0808AD9E
_0808AD92:
	movs r0, #0
	strb r0, [r4, #0xf]
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08078930
_0808AD9E:
	pop {r4, pc}
	.syntax divided
