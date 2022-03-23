	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _080789BC @ =gCarryEntities
	ldrb r0, [r1]
	cmp r0, #0
	beq _080789C0
	ldrb r0, [r1, #1]
	b _08078A88
	.align 2, 0
_080789BC: .4byte gCarryEntities
_080789C0:
	ldr r0, _08078A5C @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08078A56
	ldr r0, _08078A60 @ =gPlayerEntity
	bl sub_080B1B0C
	adds r4, r0, #0
	cmp r4, #0xf
	bls _080789E6
	ldr r0, _08078A64 @ =gUnk_080084BC
	adds r1, r4, #0
	subs r1, #0x10
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0xf
	beq _08078A56
_080789E6:
	ldr r0, _08078A5C @ =gPlayerState
	ldrb r0, [r0, #0x12]
	cmp r0, #0x12
	beq _08078A56
	ldr r3, _08078A68 @ =gCarryEntities
	movs r0, #1
	strb r0, [r3]
	ldrb r4, [r3, #2]
	cmp r4, #0
	beq _08078A2E
	ldr r2, _08078A60 @ =gPlayerEntity
	ldrb r1, [r2, #0x14]
	movs r0, #6
	ands r0, r1
	ldr r1, _08078A6C @ =gUnk_0811BFE0
	adds r6, r0, r1
	adds r7, r2, #0
	adds r3, #8
	mov r8, r3
_08078A0C:
	lsls r0, r4, #2
	mov r1, r8
	adds r5, r0, r1
	ldr r1, [r5]
	cmp r1, #0
	beq _08078A26
	ldrb r2, [r6]
	ldrb r3, [r6, #1]
	adds r0, r7, #0
	bl sub_0807A180
	cmp r0, #0
	bne _08078A74
_08078A26:
	subs r4, #1
	ldr r7, _08078A60 @ =gPlayerEntity
	cmp r4, #0
	bne _08078A0C
_08078A2E:
	ldr r0, _08078A60 @ =gPlayerEntity
	ldrb r1, [r0, #0x14]
	movs r2, #6
	ands r2, r1
	ldr r1, _08078A70 @ =gUnk_08007DF4
	adds r2, r2, r1
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldrb r2, [r2, #1]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	bl sub_080B1A0C
	ldr r4, _08078A68 @ =gCarryEntities
	strh r0, [r4, #4]
	movs r1, #6
	bl sub_0806FC24
	cmp r0, #0
	bne _08078A84
_08078A56:
	movs r0, #0
	b _08078A88
	.align 2, 0
_08078A5C: .4byte gPlayerState
_08078A60: .4byte gPlayerEntity
_08078A64: .4byte gUnk_080084BC
_08078A68: .4byte gCarryEntities
_08078A6C: .4byte gUnk_0811BFE0
_08078A70: .4byte gUnk_08007DF4
_08078A74:
	mov r0, r8
	subs r0, #8
	ldr r1, [r5]
	str r1, [r0, #8]
	movs r1, #2
	strb r1, [r0, #1]
	movs r0, #2
	b _08078A88
_08078A84:
	movs r0, #1
	strb r0, [r4, #1]
_08078A88:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
