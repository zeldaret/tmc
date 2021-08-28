	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl GetEmptyManager
	adds r1, r0, #0
	cmp r1, #0
	beq _0805DAB4
	movs r0, #9
	strb r0, [r1, #8]
	movs r0, #0x32
	strb r0, [r1, #9]
	strb r4, [r1, #0xa]
	str r5, [r1, #0x14]
	adds r0, r1, #0
	movs r1, #8
	bl AppendEntityToList
_0805DAB4:
	ldr r0, _0805DAD8 @ =gArea
	ldr r1, _0805DADC @ =0x0000088C
	adds r4, r0, r1
	ldr r0, [r4]
	cmp r0, #0
	beq _0805DAD4
	ldr r2, _0805DAE0 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805DAE4 @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2]
	bl sub_080528F0
	ldr r0, [r4]
	bl DeleteManager
_0805DAD4:
	pop {r4, r5, pc}
	.align 2, 0
_0805DAD8: .4byte gArea
_0805DADC: .4byte 0x0000088C
_0805DAE0: .4byte gScreen
_0805DAE4: .4byte 0x0000F7FF
	.syntax divided
