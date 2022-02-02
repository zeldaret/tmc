.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #0x54
	adds r5, r0, #0
	adds r6, r1, #0
	add r0, sp, #0x18
	movs r1, #0x30
	bl MemClear
	ldr r0, _080A4C08 @ =gUnk_0812816C
	mov r1, sp
	movs r2, #0x18
	bl MemCopy
	ldr r0, _080A4C0C @ =gUnk_08128184
	add r4, sp, #0x48
	adds r1, r4, #0
	movs r2, #0xc
	bl MemCopy
	lsls r1, r6, #1
	adds r1, r1, r6
	lsls r2, r1, #9
	ldr r0, [sp, #4]
	adds r0, r0, r2
	str r0, [sp, #4]
	mov r2, sp
	mov r0, sp
	lsls r1, r1, #4
	ldrh r0, [r0, #0x10]
	adds r1, r1, r0
	strh r1, [r2, #0x10]
	lsls r1, r6, #7
	ldr r0, [sp]
	adds r0, r0, r1
	str r0, [sp]
	cmp r6, #2
	bne _080A4BEE
	mov r0, sp
	strb r6, [r0, #0x14]
_080A4BEE:
	ldr r0, _080A4C10 @ =gSave
	ldrb r0, [r0, #6]
	movs r1, #0x88
	cmp r0, #0
	bne _080A4BFA
	movs r1, #0x82
_080A4BFA:
	cmp r5, #0
	ble _080A4C02
	cmp r1, r5
	bge _080A4C14
_080A4C02:
	movs r5, #1
	rsbs r5, r5, #0
	b _080A4C3E
	.align 2, 0
_080A4C08: .4byte gUnk_0812816C
_080A4C0C: .4byte gUnk_08128184
_080A4C10: .4byte gSave
_080A4C14:
	ldr r1, _080A4C30 @ =gUnk_020227E8
	ldr r2, _080A4C34 @ =0x00303030
	adds r0, r5, #0
	bl sub_08057044
	adds r0, r5, #0
	bl sub_080A4948
	cmp r0, #0
	bne _080A4C38
	movs r0, #0x80
	lsls r0, r0, #8
	b _080A4C3C
	.align 2, 0
_080A4C30: .4byte gUnk_020227E8
_080A4C34: .4byte 0x00303030
_080A4C38:
	movs r0, #0x80
	lsls r0, r0, #4
_080A4C3C:
	adds r5, r5, r0
_080A4C3E:
	ldr r0, _080A4C94 @ =gMenu
	lsls r1, r6, #1
	adds r0, #0x10
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, r5
	beq _080A4CB2
	strh r5, [r1]
	ldr r0, _080A4C98 @ =0x0000F00B
	cmp r6, #2
	bne _080A4C56
	subs r0, #7
_080A4C56:
	ldr r1, [sp]
	movs r2, #0x80
	bl MemFill16
	cmp r5, #0
	ble _080A4CAC
	ldr r0, _080A4C9C @ =0x00007FFF
	cmp r5, r0
	ble _080A4C6A
	ldr r5, _080A4CA0 @ =0x00000889
_080A4C6A:
	adds r0, r5, #0
	cmp r5, #0
	bge _080A4C72
	adds r0, #0xff
_080A4C72:
	asrs r0, r0, #8
	strb r0, [r4, #8]
	strb r5, [r4, #9]
	ldr r0, [sp]
	adds r0, #0x16
	str r0, [sp]
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _080A4CA4
	adds r0, r4, #0
	mov r1, sp
	bl sub_0805F46C
	b _080A4CAC
	.align 2, 0
_080A4C94: .4byte gMenu
_080A4C98: .4byte 0x0000F00B
_080A4C9C: .4byte 0x00007FFF
_080A4CA0: .4byte 0x00000889
_080A4CA4:
	adds r0, r5, #0
	mov r1, sp
	bl sub_0805F46C
_080A4CAC:
	ldr r1, _080A4CB8 @ =gScreen
	movs r0, #1
	strh r0, [r1, #0x32]
_080A4CB2:
	add sp, #0x54
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A4CB8: .4byte gScreen
.syntax divided
