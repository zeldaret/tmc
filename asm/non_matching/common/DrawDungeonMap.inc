    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r1, r2, #0
	adds r0, r5, #0
	bl MemClear
	movs r0, #1
	strb r0, [r5]
	ldr r2, _0801DBE4 @ =gScreenTransition
	ldrh r0, [r2, #0x1c]
	lsrs r0, r0, #4
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r5, #1]
	ldrh r0, [r2, #0x1e]
	lsrs r0, r0, #4
	ands r0, r1
	strb r0, [r5, #2]
	adds r5, #3
	ldr r1, _0801DBE8 @ =gUnk_080C9C50
	ldr r0, _0801DBEC @ =gArea
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r6, [r4]
	b _0801DD3A
	.align 2, 0
_0801DBE4: .4byte gScreenTransition
_0801DBE8: .4byte gUnk_080C9C50
_0801DBEC: .4byte gArea
_0801DBF0:
	ldrb r0, [r6]
	ldrb r1, [r6, #1]
	movs r2, #3
	bl GetRoomProperty
	adds r4, r0, #0
	cmp r4, #0
	bne _0801DC04
	adds r6, #8
	b _0801DD3A
_0801DC04:
	adds r0, r6, #0
	bl sub_0801DF10
	mov r8, r0
	bl HasDungeonBigKey
	movs r1, #8
	adds r1, r1, r6
	mov sb, r1
	cmp r0, #0
	beq _0801DCAE
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801DCAE
	movs r3, #0xfc
	lsls r3, r3, #2
	ldr r7, _0801DC84 @ =0x000007FF
_0801DC26:
	ldrb r0, [r4]
	cmp r0, #3
	bgt _0801DCA6
	cmp r0, #2
	blt _0801DCA6
	ldrb r1, [r4, #1]
	mov r0, r8
	str r3, [sp]
	bl CheckLocalFlagByBank
	ldr r3, [sp]
	cmp r0, #0
	bne _0801DCA6
	ldr r0, _0801DC88 @ =gAreaRoomHeaders
	ldrb r2, [r6]
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r1, [r6, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, [r2]
	adds r2, r1, r0
	movs r0, #2
	strb r0, [r5]
	ldrb r0, [r4]
	cmp r0, #2
	bne _0801DC8C
	ldrh r0, [r4, #4]
	lsls r0, r0, #4
	ands r0, r3
	movs r1, #8
	orrs r0, r1
	ldrh r1, [r2]
	ands r1, r7
	adds r0, r0, r1
	asrs r0, r0, #4
	strb r0, [r5, #1]
	ldrh r0, [r4, #4]
	lsrs r0, r0, #2
	ands r0, r3
	movs r1, #8
	orrs r0, r1
	ldrh r1, [r2, #2]
	ands r1, r7
	b _0801DC9E
	.align 2, 0
_0801DC84: .4byte 0x000007FF
_0801DC88: .4byte gAreaRoomHeaders
_0801DC8C:
	ldrh r0, [r2]
	ands r0, r7
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	asrs r0, r0, #4
	strb r0, [r5, #1]
	ldrh r0, [r2, #2]
	ands r0, r7
	ldrh r1, [r4, #6]
_0801DC9E:
	adds r0, r0, r1
	asrs r0, r0, #4
	strb r0, [r5, #2]
	adds r5, #3
_0801DCA6:
	adds r4, #8
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801DC26
_0801DCAE:
	bl HasDungeonBigKey
	cmp r0, #0
	beq _0801DD16
	ldrb r1, [r6, #2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801DD16
	ldr r0, _0801DD4C @ =gArea
	ldrb r0, [r0, #3]
	adds r0, #1
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0801DD16
	ldr r0, _0801DD50 @ =gAreaRoomHeaders
	ldrb r2, [r6]
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r1, [r6, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, [r2]
	adds r2, r1, r0
	movs r0, #4
	strb r0, [r5]
	ldrh r0, [r2, #4]
	lsrs r0, r0, #1
	ldrh r1, [r2]
	adds r0, r0, r1
	asrs r1, r0, #4
	adds r0, r1, #0
	cmp r1, #0
	bge _0801DCF8
	adds r0, #0x7f
_0801DCF8:
	asrs r0, r0, #7
	lsls r0, r0, #7
	subs r0, r1, r0
	strb r0, [r5, #1]
	ldrh r0, [r2, #6]
	lsrs r0, r0, #1
	ldrh r2, [r2, #2]
	adds r0, r0, r2
	asrs r1, r0, #4
	adds r0, r1, #0
	asrs r0, r0, #7
	lsls r0, r0, #7
	subs r0, r1, r0
	strb r0, [r5, #2]
	adds r5, #3
_0801DD16:
	ldr r2, _0801DD54 @ =gScreenTransition
	ldrh r0, [r6]
	ldrh r1, [r2, #0x16]
	cmp r0, r1
	bne _0801DD38
	movs r0, #3
	strb r0, [r5]
	ldrh r0, [r2, #0x18]
	lsrs r0, r0, #4
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r5, #1]
	ldrh r0, [r2, #0x1a]
	lsrs r0, r0, #4
	ands r0, r1
	strb r0, [r5, #2]
	adds r5, #3
_0801DD38:
	mov r6, sb
_0801DD3A:
	ldrb r0, [r6]
	cmp r0, #0
	beq _0801DD42
	b _0801DBF0
_0801DD42:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801DD4C: .4byte gArea
_0801DD50: .4byte gAreaRoomHeaders
_0801DD54: .4byte gScreenTransition
    .syntax divided
