    .syntax unified
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0
	str r0, [r5, #0x14]
	ldr r0, [r4, #0x34]
	cmp r0, #0
	blt _08060970
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r1, [r0]
	ldr r6, _08060974 @ =gPlayerEntity
	cmp r1, #1
	bne _0806090A
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #2
	beq _08060970
_0806090A:
	cmp r1, #2
	bne _08060918
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	beq _08060970
_08060918:
	ldr r2, [r5, #4]
	lsls r2, r2, #4
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	ldr r1, _08060978 @ =gUnk_0810AA70
	adds r0, r0, r1
	adds r2, r2, r0
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	movs r7, #0x32
	ldrsh r3, [r4, r7]
	movs r0, #1
	ldrsb r0, [r2, r0]
	adds r3, r3, r0
	movs r7, #0x2e
	ldrsh r0, [r6, r7]
	subs r1, r0, r1
	movs r7, #0x32
	ldrsh r0, [r6, r7]
	subs r3, r0, r3
	movs r0, #2
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	ldrb r2, [r2, #3]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r3, r3, r2
	lsls r0, r0, #1
	cmp r0, r1
	bls _08060970
	lsls r0, r2, #1
	cmp r0, r3
	bls _08060970
	movs r0, #1
	str r0, [r5, #0x14]
	adds r1, r4, #0
	adds r1, #0x6a
	ldrh r0, [r1]
	adds r0, #2
	strh r0, [r1]
_08060970:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08060974: .4byte gPlayerEntity
_08060978: .4byte gUnk_0810AA70
    .syntax divided
