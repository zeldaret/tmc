	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _080A7090 @ =gMenu
	ldrh r0, [r1, #0x2e]
	cmp r0, r5
	beq _080A708C
	strh r5, [r1, #0x2e]
	ldr r4, _080A7094 @ =gUnk_02022130
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r4, #0
	bl MemClear
	ldr r0, _080A7098 @ =0xFFFFFE00
	adds r4, r4, r0
	ldr r1, _080A709C @ =0x0600E000
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r4, #0
	bl MemCopy
	ldr r1, _080A70A0 @ =gUnk_08128D70
	lsls r0, r5, #3
	adds r4, r0, r1
	ldrb r0, [r4]
	bl GetInventoryValue
	cmp r0, #0
	beq _080A7082
	ldrh r0, [r4, #6]
	ldr r1, _080A70A4 @ =gUnk_08129004
	bl sub_0805F46C
_080A7082:
	ldr r0, _080A70A8 @ =gScreen
	movs r1, #3
	strh r1, [r0, #0x18]
	movs r1, #1
	strh r1, [r0, #0x1a]
_080A708C:
	pop {r4, r5, pc}
	.align 2, 0
_080A7090: .4byte gMenu
_080A7094: .4byte gUnk_02022130
_080A7098: .4byte 0xFFFFFE00
_080A709C: .4byte 0x0600E000
_080A70A0: .4byte gUnk_08128D70
_080A70A4: .4byte gUnk_08129004
_080A70A8: .4byte gScreen
	.syntax divided
