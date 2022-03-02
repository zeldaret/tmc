	.syntax unified
	push {r4, r5, lr}
	ldr r1, _080A5C30 @ =gUnk_08128D30
	ldr r0, _080A5C34 @ =gMenu
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_080A5D1C
	ldr r0, _080A5C38 @ =gMain
	ldrh r0, [r0, #0xc]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080A5C2E
	ldr r4, _080A5C3C @ =gUnk_02017830
	ldrh r5, [r4]
	adds r0, r4, #2
	adds r1, r4, #0
	movs r2, #0xe
	bl MemCopy
	strh r5, [r4, #0xe]
	ldr r2, _080A5C40 @ =gUsedPalettes
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2]
_080A5C2E:
	pop {r4, r5, pc}
	.align 2, 0
_080A5C30: .4byte gUnk_08128D30
_080A5C34: .4byte gMenu
_080A5C38: .4byte gMain
_080A5C3C: .4byte gUnk_02017830
_080A5C40: .4byte gUsedPalettes
	.syntax divided
