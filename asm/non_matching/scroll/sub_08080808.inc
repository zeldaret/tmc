	.syntax unified
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r2, #0
	ldrb r0, [r3, #0xa]
	lsls r0, r0, #1
	ldr r2, _08080838 @ =gUnk_0811E7BC
	adds r4, r0, r2
	ldrb r0, [r4]
	ldrh r2, [r3, #2]
	subs r1, r1, r2
	adds r1, r1, r0
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0808083C
	ldrb r1, [r4, #1]
	ldrh r0, [r3, #4]
	subs r0, r5, r0
	adds r0, r0, r1
	lsls r1, r1, #1
	cmp r0, r1
	bhi _0808083C
	movs r0, #1
	b _0808083E
	.align 2, 0
_08080838: .4byte gUnk_0811E7BC
_0808083C:
	movs r0, #0
_0808083E:
	pop {r4, r5, pc}
	.syntax divided
