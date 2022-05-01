	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldrb r0, [r6, #0xa]
	bl GetCurrentRoomProperty
	adds r4, r0, #0
	cmp r4, #0
	bne _0805AB68
	bl DeleteThisEntity
_0805AB68:
	ldrb r0, [r6, #0xc]
	movs r1, #0x20
	adds r1, r1, r6
	mov r8, r1
	cmp r0, #0
	bne _0805ABC8
	adds r0, #1
	strb r0, [r6, #0xc]
	ldr r0, _0805ABF0 @ =gArea
	ldrb r0, [r0, #8]
	strb r0, [r1]
	adds r0, r6, #0
	movs r1, #6
	bl SetDefaultPriority
	ldr r2, _0805ABF4 @ =gUnk_02031EC0
	ldrb r0, [r6, #0xb]
	mov r3, r8
	ldrb r1, [r3]
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, r0, r2
	movs r5, #0
	mov sl, r5
	ldrb r0, [r4]
	movs r7, #0x21
	adds r7, r7, r6
	mov ip, r7
	cmp r0, #0xff
	beq _0805ABBE
_0805ABA4:
	adds r1, r2, #0
	adds r0, r4, #0
	ldm r0!, {r3, r5, r7}
	stm r1!, {r3, r5, r7}
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #1
	add sl, r0
	adds r4, #0x10
	adds r2, #0x10
	ldrb r0, [r4]
	cmp r0, #0xff
	bne _0805ABA4
_0805ABBE:
	movs r0, #0xff
	strb r0, [r2]
	mov r2, sl
	mov r1, ip
	strb r2, [r1]
_0805ABC8:
	ldr r4, _0805ABF4 @ =gUnk_02031EC0
	ldrb r2, [r6, #0xb]
	mov r3, r8
	ldrb r1, [r3]
	adds r0, r2, r1
	lsls r0, r0, #4
	adds r4, r0, r4
	ldr r0, _0805ABF8 @ =gSave
	movs r5, #1
	mov sl, r5
	mov r7, sl
	ldrb r0, [r0, #8]
	lsls r7, r0
	mov sl, r7
	adds r0, r1, #7
	asrs r0, r0, #3
	ldr r1, _0805ABFC @ =gUnk_020342F8
	adds r7, r0, r1
	adds r5, r2, #0
	b _0805ACAA
	.align 2, 0
_0805ABF0: .4byte gArea
_0805ABF4: .4byte gUnk_02031EC0
_0805ABF8: .4byte gSave
_0805ABFC: .4byte gUnk_020342F8
_0805AC00:
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #6]
	movs r2, #0x18
	movs r3, #0x20
	bl CheckRectOnScreen
	cmp r0, #0
	bne _0805AC1A
	adds r0, r7, #0
	adds r1, r5, #0
	bl ClearBit
	b _0805ACA6
_0805AC1A:
	ldrh r0, [r4, #0xe]
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _0805ACA6
	ldr r0, _0805AC5C @ =gEntCount
	ldrb r0, [r0]
	cmp r0, #0x46
	bhi _0805ACA6
	adds r0, r7, #0
	adds r1, r5, #0
	bl WriteBit
	cmp r0, #0
	bne _0805ACA6
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0805AC48
	bl CreateScriptExecutionContext
	mov sb, r0
	cmp r0, #0
	beq _0805ACA6
_0805AC48:
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	bne _0805AC60
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	ldrb r2, [r4, #2]
	bl CreateNPC
	b _0805AC6A
	.align 2, 0
_0805AC5C: .4byte gEntCount
_0805AC60:
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	ldrb r2, [r4, #2]
	bl CreateObject
_0805AC6A:
	adds r3, r0, #0
	mov r2, r8
	ldrb r0, [r2]
	adds r0, #1
	adds r0, r5, r0
	adds r1, r3, #0
	adds r1, #0x45
	strb r0, [r1]
	ldrh r0, [r4, #0xc]
	strb r0, [r3, #0xe]
	ldr r1, _0805ACBC @ =gRoomControls
	ldrh r0, [r1, #6]
	ldrh r2, [r4, #4]
	adds r0, r0, r2
	strh r0, [r3, #0x2e]
	ldrh r0, [r1, #8]
	ldrh r1, [r4, #6]
	adds r0, r0, r1
	strh r0, [r3, #0x32]
	ldrb r1, [r4, #3]
	adds r0, r3, #0
	adds r0, #0x38
	strb r1, [r0]
	ldr r2, [r4, #8]
	cmp r2, #0
	beq _0805ACA6
	adds r0, r3, #0
	mov r1, sb
	bl InitScriptForEntity
_0805ACA6:
	adds r4, #0x10
	adds r5, #1
_0805ACAA:
	ldrb r0, [r4]
	cmp r0, #0xff
	bne _0805AC00
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805ACBC: .4byte gRoomControls
	.syntax divided
