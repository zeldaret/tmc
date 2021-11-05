	.syntax unified

.ifdef EU
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	mov r8, r1
	movs r6, #1
	ldr r0, _08064E14 @ =gRoomVars
	ldrb r5, [r0, #6]
	movs r0, #0
	mov sb, r0
	cmp r5, #0x66
	beq _08064E8E
	cmp r5, #0x66
	bhi _08064E1E
	cmp r5, #0x61
	beq _08064E94
	cmp r5, #0x61
	bhi _08064E18
	cmp r5, #0xd
	beq _08064E44
	b _08064EAA
	.align 2, 0
_08064E14: .4byte gRoomVars
_08064E18:
	cmp r5, #0x64
	beq _08064E88
	b _08064EAA
_08064E1E:
	cmp r5, #0x6c
	blo _08064EAA
	cmp r5, #0x6d
	bls _08064E60
	cmp r5, #0x6f
	bhi _08064EAA
	ldr r2, _08064E3C @ =gQuiverSizes
	ldr r1, _08064E40 @ =gSave
	adds r0, r1, #0
	adds r0, #0xaf
	ldrb r0, [r0]
	adds r0, r0, r2
	adds r1, #0xad
	b _08064E6E
	.align 2, 0
_08064E3C: .4byte gQuiverSizes
_08064E40: .4byte gSave
_08064E44:
	movs r0, #0xd
	bl GetInventoryValue
	cmp r0, #0
	bne _08064E58
	movs r0, #0xe
	bl GetInventoryValue
	cmp r0, #0
	beq _08064EAA
_08064E58:
	ldr r0, _08064E5C @ =0x00002C0B
	b _08064F32
	.align 2, 0
_08064E5C: .4byte 0x00002C0B
_08064E60:
	ldr r2, _08064E7C @ =gBombBagSizes
	ldr r1, _08064E80 @ =gSave
	adds r0, r1, #0
	adds r0, #0xae
	ldrb r0, [r0]
	adds r0, r0, r2
	adds r1, #0xac
_08064E6E:
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bhi _08064EAA
	ldr r0, _08064E84 @ =0x00002C0E
	b _08064F32
	.align 2, 0
_08064E7C: .4byte gBombBagSizes
_08064E80: .4byte gSave
_08064E84: .4byte 0x00002C0E
_08064E88:
	movs r1, #0x55
	mov sb, r1
	b _08064EAA
_08064E8E:
	movs r0, #0x56
	mov sb, r0
	b _08064EAA
_08064E94:
	ldr r0, _08064F04 @ =gSave
	adds r0, #0xc2
	ldrh r1, [r0]
	ldr r0, _08064F08 @ =0x000003E6
	cmp r1, r0
	bls _08064EAA
	ldr r0, _08064F0C @ =0x00002C0E
	adds r1, r4, #0
	bl MessageNoOverlap
	movs r6, #0
_08064EAA:
	cmp r6, #0
	beq _08064F38
	adds r0, r5, #0
	bl GetItemPrice
	adds r6, r0, #0
	ldr r7, _08064F04 @ =gSave
	adds r0, r7, #0
	adds r0, #0xc0
	ldrh r0, [r0]
	cmp r6, r0
	bhi _08064F30
	rsbs r0, r6, #0
	bl ModRupees
	ldr r4, _08064F10 @ =gRoomVars
	ldrb r1, [r4, #7]
	adds r0, r5, #0
	movs r2, #2
	bl sub_080A7C18
	movs r0, #0
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	movs r0, #1
	mov r1, r8
	str r0, [r1, #0x14]
	mov r0, sb
	cmp r0, #0
	beq _08064EEA
	bl SetLocalFlag
_08064EEA:
	ldr r1, [r7, #0x5c]
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bhi _08064EF8
	adds r0, r1, #1
	str r0, [r7, #0x5c]
_08064EF8:
	ldr r0, [r7, #0x5c]
	cmp r0, #9
	bls _08064F18
	ldr r0, _08064F14 @ =0x00002C11
	b _08064F26
	.align 2, 0
_08064F04: .4byte gSave
_08064F08: .4byte 0x000003E6
_08064F0C: .4byte 0x00002C0E
_08064F10: .4byte gRoomVars
_08064F14: .4byte 0x00002C11
_08064F18:
	cmp r6, #0x63
	bls _08064F24
	ldr r0, _08064F20 @ =0x00002C10
	b _08064F26
	.align 2, 0
_08064F20: .4byte 0x00002C10
_08064F24:
	ldr r0, _08064F2C @ =0x00002C0F
_08064F26:
	mov r1, r8
	str r0, [r1, #4]
	b _08064F3E
	.align 2, 0
_08064F2C: .4byte 0x00002C0F
_08064F30:
	ldr r0, _08064F48 @ =0x00002C0D
_08064F32:
	adds r1, r4, #0
	bl MessageNoOverlap
_08064F38:
	movs r0, #0
	mov r1, r8
	str r0, [r1, #0x14]
_08064F3E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08064F48: .4byte 0x00002C0D
.else
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	mov r8, r1
	movs r6, #1
	ldr r0, _0806539C @ =gRoomVars
	ldrb r5, [r0, #6]
	movs r0, #0
	mov sb, r0
	cmp r5, #0x66
	beq _0806541A
	cmp r5, #0x66
	bhi _080653AA
	cmp r5, #0x61
	beq _08065426
	cmp r5, #0x61
	bhi _080653A0
	cmp r5, #0xd
	beq _080653D0
	b _0806543C
	.align 2, 0
_0806539C: .4byte gRoomVars
_080653A0:
	cmp r5, #0x64
	beq _08065414
	cmp r5, #0x65
	beq _08065420
	b _0806543C
_080653AA:
	cmp r5, #0x6c
	blo _0806543C
	cmp r5, #0x6d
	bls _080653EC
	cmp r5, #0x6f
	bhi _0806543C
	ldr r2, _080653C8 @ =gQuiverSizes
	ldr r1, _080653CC @ =gSave
	adds r0, r1, #0
	adds r0, #0xaf
	ldrb r0, [r0]
	adds r0, r0, r2
	adds r1, #0xad
	b _080653FA
	.align 2, 0
_080653C8: .4byte gQuiverSizes
_080653CC: .4byte gSave
_080653D0:
	movs r0, #0xd
	bl GetInventoryValue
	cmp r0, #0
	bne _080653E4
	movs r0, #0xe
	bl GetInventoryValue
	cmp r0, #0
	beq _0806543C
_080653E4:
	ldr r0, _080653E8 @ =0x00002C0B
	b _080654C2
	.align 2, 0
_080653E8: .4byte 0x00002C0B
_080653EC:
	ldr r2, _08065408 @ =gBombBagSizes
	ldr r1, _0806540C @ =gSave
	adds r0, r1, #0
	adds r0, #0xae
	ldrb r0, [r0]
	adds r0, r0, r2
	adds r1, #0xac
_080653FA:
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bhi _0806543C
	ldr r0, _08065410 @ =0x00002C0E
	b _080654C2
	.align 2, 0
_08065408: .4byte gBombBagSizes
_0806540C: .4byte gSave
_08065410: .4byte 0x00002C0E
_08065414:
	movs r1, #0x55
	mov sb, r1
	b _0806543C
_0806541A:
	movs r0, #0x56
	mov sb, r0
	b _0806543C
_08065420:
	movs r1, #0xcd
	mov sb, r1
	b _0806543C
_08065426:
	ldr r0, _08065494 @ =gSave
	adds r0, #0xc2
	ldrh r1, [r0]
	ldr r0, _08065498 @ =0x000003E6
	cmp r1, r0
	bls _0806543C
	ldr r0, _0806549C @ =0x00002C0E
	adds r1, r4, #0
	bl MessageNoOverlap
	movs r6, #0
_0806543C:
	cmp r6, #0
	beq _080654C8
	adds r0, r5, #0
	bl GetItemPrice
	adds r6, r0, #0
	ldr r7, _08065494 @ =gSave
	adds r0, r7, #0
	adds r0, #0xc0
	ldrh r0, [r0]
	cmp r6, r0
	bhi _080654C0
	rsbs r0, r6, #0
	bl ModRupees
	ldr r4, _080654A0 @ =gRoomVars
	ldrb r1, [r4, #7]
	adds r0, r5, #0
	movs r2, #2
	bl sub_080A7C18
	movs r0, #0
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	movs r0, #1
	mov r1, r8
	str r0, [r1, #0x14]
	mov r0, sb
	cmp r0, #0
	beq _0806547C
	bl SetLocalFlag
_0806547C:
	ldr r1, [r7, #0x5c]
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bhi _0806548A
	adds r0, r1, #1
	str r0, [r7, #0x5c]
_0806548A:
	ldr r0, [r7, #0x5c]
	cmp r0, #9
	bls _080654A8
	ldr r0, _080654A4 @ =0x00002C11
	b _080654B6
	.align 2, 0
_08065494: .4byte gSave
_08065498: .4byte 0x000003E6
_0806549C: .4byte 0x00002C0E
_080654A0: .4byte gRoomVars
_080654A4: .4byte 0x00002C11
_080654A8:
	cmp r6, #0x63
	bls _080654B4
	ldr r0, _080654B0 @ =0x00002C10
	b _080654B6
	.align 2, 0
_080654B0: .4byte 0x00002C10
_080654B4:
	ldr r0, _080654BC @ =0x00002C0F
_080654B6:
	mov r1, r8
	str r0, [r1, #4]
	b _080654CE
	.align 2, 0
_080654BC: .4byte 0x00002C0F
_080654C0:
	ldr r0, _080654D8 @ =0x00002C0D
_080654C2:
	adds r1, r4, #0
	bl MessageNoOverlap
_080654C8:
	movs r0, #0
	mov r1, r8
	str r0, [r1, #0x14]
_080654CE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080654D8: .4byte 0x00002C0D
.endif
	.syntax divided
