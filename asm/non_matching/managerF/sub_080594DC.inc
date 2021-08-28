	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _080594F2
	cmp r0, #1
	bgt _0805951C
	cmp r0, #0
	bne _0805951C
	movs r0, #1
	strb r0, [r4, #0xc]
_080594F2:
	movs r0, #6
	bl GetInventoryValue
	cmp r0, #0
	beq _08059540
	movs r0, #0x8c
	lsls r0, r0, #4
	movs r1, #0x85
	bl CheckLocalFlagByOffset
	cmp r0, #0
	bne _08059540
	movs r0, #2
	strb r0, [r4, #0xc]
	ldr r0, _08059518 @ =0x00000B0F
	bl sub_080186C0
	b _08059540
	.align 2, 0
_08059518: .4byte 0x00000B0F
_0805951C:
	ldr r0, _08059544 @ =gArea
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _0805952A
	bl DeleteThisEntity
_0805952A:
	movs r0, #0x8c
	lsls r0, r0, #4
	movs r1, #0x85
	bl CheckLocalFlagByOffset
	cmp r0, #0
	beq _08059540
	bl sub_0801855C
	bl DeleteThisEntity
_08059540:
	pop {r4, pc}
	.align 2, 0
_08059544: .4byte gArea
.endif
	.syntax divided
