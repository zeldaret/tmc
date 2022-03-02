	.syntax unified
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r4, #0
	cmp r1, #1
	beq _080A6FF0
	cmp r1, #1
	blo _080A6FC8
	cmp r1, #2
	beq _080A6FD6
	b _080A6FFA
_080A6FC8:
	ldr r0, _080A6FE4 @ =gSave
	movs r1, #1
	lsls r1, r2
	ldr r0, [r0, #0x40]
	ands r0, r1
	cmp r0, #0
	beq _080A6FFA
_080A6FD6:
	ldr r1, _080A6FE8 @ =gUnk_08127F94
	lsls r0, r2, #3
	adds r0, r0, r1
	ldrh r4, [r0, #6]
	ldr r5, _080A6FEC @ =gUnk_08128FC0
	b _080A6FFA
	.align 2, 0
_080A6FE4: .4byte gSave
_080A6FE8: .4byte gUnk_08127F94
_080A6FEC: .4byte gUnk_08128FC0
_080A6FF0:
	ldr r1, _080A702C @ =gUnk_08128FF0
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r4, [r0]
	ldr r5, _080A7030 @ =gUnk_08128FD8
_080A6FFA:
	ldr r1, _080A7034 @ =gMenu
	ldrh r0, [r1, #0x2e]
	cmp r0, r4
	beq _080A7024
	strh r4, [r1, #0x2e]
	ldr r0, _080A7038 @ =gUnk_020350F0
	movs r1, #0x80
	lsls r1, r1, #1
	bl MemClear
	movs r0, #0xff
	ands r0, r4
	cmp r0, #0
	beq _080A701E
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0805F46C
_080A701E:
	ldr r1, _080A703C @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
_080A7024:
	ldr r1, _080A703C @ =gScreen
	movs r0, #2
	strh r0, [r1, #0xc]
	pop {r4, r5, pc}
	.align 2, 0
_080A702C: .4byte gUnk_08128FF0
_080A7030: .4byte gUnk_08128FD8
_080A7034: .4byte gMenu
_080A7038: .4byte gUnk_020350F0
_080A703C: .4byte gScreen
	.syntax divided
