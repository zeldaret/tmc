	.syntax unified
	push {r4, r5, lr}
	ldr r1, _080A31D0 @ =0x08127CC8
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r4, [r0]
	ldr r1, _080A31D4 @ =gChooseFileState
	ldrh r0, [r1, #0x12]
	cmp r0, r4
	beq _080A31CC
	strh r4, [r1, #0x12]
	ldr r5, _080A31D8 @ =something2
	ldr r0, [r5]
	subs r0, #0x1e
	movs r1, #0xc0
	lsls r1, r1, #1
	bl MemClear
	cmp r4, #0
	beq _080A31C6DEMO
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0805F46C
_080A31C6DEMO:
	ldr r1, _080A31DC @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
_080A31CC:
	pop {r4, r5, pc}
	.align 2, 0
_080A31D0: .4byte gUnk_08127CC8
_080A31D4: .4byte gChooseFileState
_080A31D8: .4byte gUnk_08127C98
_080A31DC: .4byte gScreen
	.syntax divided
