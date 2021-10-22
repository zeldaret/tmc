	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	movs r6, #0xff
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _08059F90
	movs r0, #4
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08059F9C
	cmp r0, #0
	beq _08059F64
	ldr r2, _08059F50 @ =gUnk_08108588
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldr r0, _08059F54 @ =0x00000808
	cmp r1, r0
	beq _08059F5C
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x24
	strb r5, [r0]
	ldr r1, _08059F58 @ =gScreen
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	ands r0, r6
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, #0x68
	strh r0, [r1]
	b _08059F90
	.align 2, 0
_08059F50: .4byte gUnk_08108588
_08059F54: .4byte 0x00000808
_08059F58: .4byte gScreen
_08059F5C:
	adds r0, r4, #0
	adds r0, #0x22
	strb r5, [r0]
	b _08059F90
_08059F64:
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #1
	strb r0, [r1]
	ldr r3, _08059F94 @ =gUnk_08108588
	ldrb r2, [r4, #0xe]
	lsls r0, r2, #1
	adds r0, r0, r3
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	beq _08059F90
	ldr r0, _08059F98 @ =gScreen
	subs r1, r2, #1
	strb r1, [r4, #0xe]
	ands r1, r6
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r1, [r1]
	adds r0, #0x68
	strh r1, [r0]
_08059F90:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08059F94: .4byte gUnk_08108588
_08059F98: .4byte gScreen
	.syntax divided
