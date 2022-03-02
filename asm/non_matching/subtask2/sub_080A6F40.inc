	.syntax unified
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r4, _080A6F4C @ =gUnk_08128F38
	movs r6, #0
	b _080A6F60
	.align 2, 0
_080A6F4C: .4byte gUnk_08128F38
_080A6F50:
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	bl sub_0807CB24
	lsls r0, r5
	orrs r6, r0
	adds r5, #1
	adds r4, #2
_080A6F60:
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A6F50
	mvns r0, r6
	pop {r4, r5, r6, pc}
	.align 2, 0
	.syntax divided
