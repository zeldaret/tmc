	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	mov r8, r1
	movs r0, #0
	str r0, [r1, #0x14]
	ldr r1, _08064F60 @ =gUnk_0810FC50
	ldrb r0, [r6, #0xa]
	adds r0, r0, r1
	ldrb r7, [r0]
	adds r0, r7, #0
	bl CheckRoomFlag
	cmp r0, #0
	bne _08064F84
	ldr r4, _08064F64 @ =gSave
	adds r0, r6, #0
	bl sub_08002632
	ldr r1, _08064F68 @ =0x00000141
	adds r4, r4, r1
	adds r0, r0, r4
	ldrb r4, [r0]
	cmp r4, #1
	bls _08064F6C
	movs r5, #3
	b _08064F7E
	.align 2, 0
_08064F60: .4byte gUnk_0810FC50
_08064F64: .4byte gSave
_08064F68: .4byte 0x00000141
_08064F6C:
	movs r0, #0xc
	bl GetInventoryValue
	movs r5, #2
	cmp r0, #0
	bne _08064F7E
	rsbs r0, r4, #0
	orrs r0, r4
	lsrs r5, r0, #0x1f
_08064F7E:
	movs r4, #1
	rsbs r4, r4, #0
	b _08064FD2
_08064F84:
	movs r0, #0x3a
	bl CheckGlobalFlag
	cmp r0, #0
	bne _08064FCE
	ldr r0, _08064FB0 @ =gSave
	ldr r1, _08064FB4 @ =0x00000117
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x64
	subs r4, r0, r1
	cmp r4, #0
	bgt _08064FB8
	movs r5, #8
	movs r4, #0
	movs r0, #0x3a
	bl SetGlobalFlag
	movs r0, #1
	mov r1, r8
	str r0, [r1, #0x14]
	b _08064FD2
	.align 2, 0
_08064FB0: .4byte gSave
_08064FB4: .4byte 0x00000117
_08064FB8:
	movs r5, #7
	cmp r4, #9
	ble _08064FC0
	movs r5, #6
_08064FC0:
	cmp r4, #0x27
	ble _08064FC6
	movs r5, #5
_08064FC6:
	cmp r4, #0x45
	ble _08064FD2
	movs r5, #4
	b _08064FD2
_08064FCE:
	movs r5, #8
	movs r4, #0
_08064FD2:
	ldr r2, _08065008 @ =gUnk_0810FC08
	ldrb r1, [r6, #0xa]
	lsls r0, r1, #3
	adds r0, r0, r1
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r6, #0
	bl MessageNoOverlap
	cmp r4, #0
	ble _08064FF4
	ldr r1, _0806500C @ =gMessage
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [r1, #0x10]
_08064FF4:
	adds r0, r7, #0
	bl CheckRoomFlag
	cmp r0, #0
	bne _08065010
	adds r0, r7, #0
	bl SetRoomFlag
	b _08065016
	.align 2, 0
_08065008: .4byte gUnk_0810FC08
_0806500C: .4byte gMessage
_08065010:
	adds r0, r7, #0
	bl ClearRoomFlag
_08065016:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.syntax divided
