	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r2, _08085D94 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08085E64
	adds r0, r2, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _08085E64
	ldrb r0, [r2, #2]
	cmp r0, #0
	bne _08085E64
	ldrb r1, [r5, #0x15]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08085D98
	ldrb r6, [r5, #0x15]
	adds r4, r6, #0
	b _08085DB0
	.align 2, 0
_08085D94: .4byte gPlayerState
_08085D98:
	movs r0, #0x10
	ands r0, r1
	movs r4, #8
	cmp r0, #0
	beq _08085DA4
	movs r4, #0x18
_08085DA4:
	ldrb r0, [r5, #0x15]
	subs r0, #8
	movs r6, #0x10
	cmp r0, #0x10
	ble _08085DB0
	movs r6, #0
_08085DB0:
	cmp r4, #0x18
	beq _08085DB8
	cmp r4, #8
	bne _08085E20
_08085DB8:
	lsrs r3, r4, #2
	ldr r1, _08085E10 @ =gUnk_08120638
	adds r0, r3, r1
	movs r7, #0
	ldrsb r7, [r0, r7]
	adds r0, r3, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r8, r0
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, r8
	bl sub_080002CC
	cmp r0, #0xff
	bne _08085E20
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r2, _08085E14 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	adds r0, r0, r7
	movs r3, #0x32
	ldrsh r1, [r5, r3]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	add r1, r8
	adds r2, r4, #0
	movs r3, #5
	bl sub_080806BC
	cmp r0, #0
	bne _08085E1C
	ldr r0, _08085E18 @ =gPlayerEntity
	lsrs r1, r4, #3
	bl sub_0807BD14
	cmp r0, #0
	beq _08085E20
	strb r4, [r5, #0x15]
	b _08085E52
	.align 2, 0
_08085E10: .4byte gUnk_08120638
_08085E14: .4byte gRoomControls
_08085E18: .4byte gPlayerEntity
_08085E1C:
	strb r4, [r5, #0x15]
	b _08085E6C
_08085E20:
	cmp r6, #0
	beq _08085E28
	cmp r6, #0x10
	bne _08085E6C
_08085E28:
	lsrs r3, r6, #2
	ldr r2, _08085E5C @ =gUnk_08120638
	adds r0, r3, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r3, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r5, #0
	bl sub_080002CC
	cmp r0, #0xff
	bne _08085E6C
	ldr r0, _08085E60 @ =gPlayerEntity
	lsrs r1, r6, #3
	bl sub_0807BD14
	cmp r0, #0
	beq _08085E6C
	strb r6, [r5, #0x15]
_08085E52:
	adds r0, r5, #0
	bl sub_08085E74
	b _08085E6C
	.align 2, 0
_08085E5C: .4byte gUnk_08120638
_08085E60: .4byte gPlayerEntity
_08085E64:
	ldrb r1, [r5, #0x10]
	movs r0, #0xdf
	ands r0, r1
	strb r0, [r5, #0x10]
_08085E6C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
