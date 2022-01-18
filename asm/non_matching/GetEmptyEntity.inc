
	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0805E698 @ =gEntCount
	ldrb r0, [r0]
	cmp r0, #0x46
	bhi _0805E6A6
	ldr r4, _0805E69C @ =gUnk_030015A0
	movs r0, #0x99
	lsls r0, r0, #6
	adds r1, r4, r0
_0805E68E:
	ldr r0, [r4]
	cmp r0, #0
	bne _0805E6A0
	adds r0, r4, #0
	b _0805E730
	.align 2, 0
_0805E698: .4byte gEntCount
_0805E69C: .4byte gUnk_030015A0
_0805E6A0:
	adds r4, #0x88
	cmp r4, r1
	blo _0805E68E
_0805E6A6:
	ldr r4, _0805E6CC @ =gPlayerEntity
_0805E6A8:
	ldr r0, [r4]
	cmp r0, #0
	bge _0805E6D4
	ldrb r1, [r4, #0x10]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _0805E6D4
	ldr r0, _0805E6D0 @ =gUpdateContext
	ldr r0, [r0, #8]
	cmp r4, r0
	beq _0805E6D4
	adds r0, r4, #0
	bl ClearDeletedEntity
	adds r0, r4, #0
	b _0805E730
	.align 2, 0
_0805E6CC: .4byte gPlayerEntity
_0805E6D0: .4byte gUpdateContext
_0805E6D4:
	adds r4, #0x88
	ldr r0, _0805E738 @ =gUnk_03003BE0
	cmp r4, r0
	blo _0805E6A8
	movs r0, #0
	mov ip, r0
	movs r5, #0
	ldr r2, _0805E73C @ =gEntityLists
	movs r0, #0x48
	adds r0, r0, r2
	mov r8, r0
_0805E6EA:
	ldr r4, [r2, #4]
	adds r3, r2, #0
	adds r3, #8
	cmp r4, r2
	beq _0805E718
	movs r7, #0x1c
	ldr r6, _0805E740 @ =gUpdateContext
_0805E6F8:
	ldrb r0, [r4, #8]
	cmp r0, #9
	beq _0805E712
	ldrb r0, [r4, #0x10]
	adds r1, r7, #0
	ands r1, r0
	cmp ip, r1
	bhs _0805E712
	ldr r0, [r6, #8]
	cmp r0, r4
	beq _0805E712
	mov ip, r1
	adds r5, r4, #0
_0805E712:
	ldr r4, [r4, #4]
	cmp r4, r2
	bne _0805E6F8
_0805E718:
	adds r2, r3, #0
	cmp r2, r8
	blo _0805E6EA
	cmp r5, #0
	beq _0805E72E
	adds r0, r5, #0
	bl DeleteEntity
	adds r0, r5, #0
	bl ClearDeletedEntity
_0805E72E:
	adds r0, r5, #0
_0805E730:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805E738: .4byte gUnk_03003BE0
_0805E73C: .4byte gEntityLists
_0805E740: .4byte gUpdateContext
	.syntax divided
