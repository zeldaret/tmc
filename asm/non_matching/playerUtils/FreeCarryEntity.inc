	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	ldr r0, _08078970 @ =gCarriedEntity
	ldrb r1, [r0, #2]
	adds r2, r0, #0
	cmp r4, r1
	bhs _080789A6
	ldr r0, [r2, #0xc]
	cmp r0, r5
	bne _08078974
	subs r0, r1, #1
	b _0807898C
	.align 2, 0
_08078970: .4byte gCarriedEntity
_08078974:
	adds r4, #1
	ldrb r3, [r2, #2]
	cmp r4, r3
	bhs _080789A6
	lsls r0, r4, #2
	adds r1, r2, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, r5
	bne _08078974
	subs r0, r3, #1
_0807898C:
	strb r0, [r2, #2]
	ldrb r0, [r2, #2]
	cmp r4, r0
	bhs _080789A6
	lsls r0, r4, #2
	adds r0, #0xc
	adds r1, r0, r2
_0807899A:
	ldr r0, [r1, #4]
	stm r1!, {r0}
	adds r4, #1
	ldrb r0, [r2, #2]
	cmp r4, r0
	blo _0807899A
_080789A6:
	pop {r4, r5, pc}
	.syntax divided
