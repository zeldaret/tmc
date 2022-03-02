	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080A6FA4 @ =gMenu
	ldrh r0, [r1, #0x2e]
	cmp r0, r4
	beq _080A6F9A
	strh r4, [r1, #0x2e]
	ldr r0, _080A6FA8 @ =gUnk_020350F0
	movs r1, #0x80
	lsls r1, r1, #1
	bl MemClear
	movs r0, #0xff
	ands r0, r4
	cmp r0, #0
	beq _080A6F94
	ldr r1, _080A6FAC @ =gUnk_08128FA8
	adds r0, r4, #0
	bl sub_0805F46C
_080A6F94:
	ldr r1, _080A6FB0 @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
_080A6F9A:
	ldr r1, _080A6FB0 @ =gScreen
	movs r0, #2
	strh r0, [r1, #0xc]
	pop {r4, pc}
	.align 2, 0
_080A6FA4: .4byte gMenu
_080A6FA8: .4byte gUnk_020350F0
_080A6FAC: .4byte gUnk_08128FA8
_080A6FB0: .4byte gScreen
	.syntax divided
