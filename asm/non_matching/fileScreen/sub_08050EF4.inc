    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08050F40 @ =gUnk_02019EE0
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	bne _08050FF4
	ldrb r1, [r6, #6]
	ldr r0, _08050F44 @ =0x000004B4
	muls r1, r0, r1
	adds r0, r6, #0
	adds r0, #0xc
	adds r1, r1, r0
	ldr r0, _08050F48 @ =gMenu
	ldrb r3, [r0, #1]
	adds r4, r1, #3
	mov ip, r0
	cmp r3, #0
	bne _08050F1E
	adds r4, r1, #2
_08050F1E:
	ldrb r2, [r4]
	movs r5, #0
	ldr r0, _08050F4C @ =gInput
	ldrh r0, [r0, #2]
	mov r8, r2
	cmp r0, #0x10
	beq _08050F7A
	cmp r0, #0x10
	bgt _08050F56
	cmp r0, #2
	beq _08050F8C
	cmp r0, #2
	bgt _08050F50
	cmp r0, #1
	beq _08050F82
	b _08050F8E
	.align 2, 0
_08050F40: .4byte gUnk_02019EE0
_08050F44: .4byte 0x000004B4
_08050F48: .4byte gMenu
_08050F4C: .4byte gInput
_08050F50:
	cmp r0, #8
	beq _08050F82
	b _08050F8E
_08050F56:
	cmp r0, #0x40
	beq _08050F6A
	cmp r0, #0x40
	bgt _08050F64
	cmp r0, #0x20
	beq _08050F72
	b _08050F8E
_08050F64:
	cmp r0, #0x80
	beq _08050F6E
	b _08050F8E
_08050F6A:
	movs r3, #0
	b _08050F8E
_08050F6E:
	movs r3, #1
	b _08050F8E
_08050F72:
	cmp r2, #0
	beq _08050F8E
	subs r2, #1
	b _08050F8E
_08050F7A:
	cmp r2, #1
	bhi _08050F8E
	adds r2, #1
	b _08050F8E
_08050F82:
	ldrh r0, [r6, #4]
	movs r5, #2
	ldrh r7, [r1, #2]
	cmp r0, r7
	bne _08050F8E
_08050F8C:
	movs r5, #3
_08050F8E:
	cmp r5, #0
	beq _08050FD0
	cmp r5, #2
	beq _08050F9C
	cmp r5, #3
	beq _08050FAC
	b _08050FBA
_08050F9C:
	movs r0, #8
	movs r1, #0
	bl CreateDialogBox
	movs r0, #0x6a
	bl SoundReq
	b _08050FBA
_08050FAC:
	ldrb r0, [r6, #4]
	strb r0, [r1, #2]
	ldrb r0, [r6, #5]
	strb r0, [r1, #3]
	movs r0, #0x6c
	bl SoundReq
_08050FBA:
	adds r0, r5, #0
	bl SetMenuType
	ldr r0, _08050FCC @ =gUnk_02019EE0
	ldrb r0, [r0, #6]
	bl SetActiveSave
	b _08050FF4
	.align 2, 0
_08050FCC: .4byte gUnk_02019EE0
_08050FD0:
	mov r1, ip
	ldrb r0, [r1, #1]
	cmp r0, r3
	beq _08050FE2
	strb r3, [r1, #1]
	movs r0, #0x69
	bl SoundReq
	b _08050FF4
_08050FE2:
	cmp r2, r8
	beq _08050FF4
	strb r2, [r4]
	ldrb r0, [r6, #6]
	bl LoadOptionsFromSave
	movs r0, #0x69
	bl SoundReq
_08050FF4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
    .syntax divided
