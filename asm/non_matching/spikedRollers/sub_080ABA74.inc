	.syntax unified
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	adds r0, #1
	strb r0, [r2, #0xc]
	adds r0, r2, #0
	adds r0, #0x86
	ldrh r0, [r0]
	strh r0, [r2, #0x24]
	ldrh r1, [r2, #0x2e]
	adds r0, r2, #0
	adds r0, #0x68
	strh r1, [r0]
	ldrh r0, [r2, #0x32]
	adds r1, r2, #0
	adds r1, #0x6a
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x84
	ldrh r1, [r0]
	subs r0, #0x18
	strh r1, [r0]
	ldrb r0, [r2, #0xa]
	cmp r0, #6
	bhi _080ABAAA
	movs r0, #0
	b _080ABAAC
_080ABAAA:
	movs r0, #1
_080ABAAC:
	strb r0, [r2, #0xb]
	ldr r0, _080ABAC8 @ =gUnk_0812A6D4
	ldrb r1, [r2, #0xa]
	adds r0, r1, r0
	ldrb r3, [r0]
	ldrb r0, [r2, #0xb]
	cmp r0, #0
	bne _080ABACC
	movs r0, #8
	strb r0, [r2, #0x15]
	ldrh r0, [r2, #0x32]
	adds r0, r0, r3
	strh r0, [r2, #0x32]
	b _080ABAD6
	.align 2, 0
_080ABAC8: .4byte gUnk_0812A6D4
_080ABACC:
	movs r0, #0x10
	strb r0, [r2, #0x15]
	ldrh r0, [r2, #0x2e]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
_080ABAD6:
	adds r0, r2, #0
	bl InitializeAnimation
	pop {pc}
	.align 2, 0
	.syntax divided
