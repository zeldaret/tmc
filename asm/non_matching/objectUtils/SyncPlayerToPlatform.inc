	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080A2CBA
	lsrs r0, r1, #3
	cmp r0, #1
	beq _080A2C3C
	cmp r0, #1
	bgt _080A2C04
	cmp r0, #0
	beq _080A2C0E
	b _080A2CBA
_080A2C04:
	cmp r0, #2
	beq _080A2C68
	cmp r0, #3
	beq _080A2C94
	b _080A2CBA
_080A2C0E:
	ldrh r5, [r4, #0x32]
	adds r0, r4, #0
	bl LinearMoveUpdate
	ldrh r1, [r4, #0x32]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080A2CBA
	cmp r6, #0
	beq _080A2CBA
	ldr r0, _080A2C38 @ =gPlayerEntity
	lsls r1, r1, #8
	movs r2, #0
	bl sub_080044AE
	b _080A2CBA
	.align 2, 0
_080A2C38: .4byte gPlayerEntity
_080A2C3C:
	ldrh r5, [r4, #0x2e]
	adds r0, r4, #0
	bl LinearMoveUpdate
	ldrh r1, [r4, #0x2e]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	beq _080A2CBA
	cmp r6, #0
	beq _080A2CBA
	ldr r0, _080A2C64 @ =gPlayerEntity
	lsls r1, r1, #8
	movs r2, #8
	bl sub_080044AE
	b _080A2CBA
	.align 2, 0
_080A2C64: .4byte gPlayerEntity
_080A2C68:
	ldrh r5, [r4, #0x32]
	adds r0, r4, #0
	bl LinearMoveUpdate
	ldrh r1, [r4, #0x32]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	beq _080A2CBA
	cmp r6, #0
	beq _080A2CBA
	ldr r0, _080A2C90 @ =gPlayerEntity
	lsls r1, r1, #8
	movs r2, #0x10
	bl sub_080044AE
	b _080A2CBA
	.align 2, 0
_080A2C90: .4byte gPlayerEntity
_080A2C94:
	ldrh r5, [r4, #0x2e]
	adds r0, r4, #0
	bl LinearMoveUpdate
	ldrh r1, [r4, #0x2e]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080A2CBA
	cmp r6, #0
	beq _080A2CBA
	ldr r0, _080A2CBC @ =gPlayerEntity
	lsls r1, r1, #8
	movs r2, #0x18
	bl sub_080044AE
_080A2CBA:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A2CBC: .4byte gPlayerEntity
	.syntax divided
