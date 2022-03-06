	.syntax unified
.ifdef EU
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	cmp r4, #0
	bne _080AD79C
	adds r0, r5, #0
	bl FindFreeGFXSlots
	adds r4, r0, #0
	cmp r4, #0
	beq _080AD7C4
_080AD79C:
	ldr r0, _080AD7D0 @ =gGFXSlots
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r2, r0, #0x1c
	cmp r2, #6
	beq _080AD7BC
	adds r0, r4, #0
	movs r1, #0
	adds r2, r5, #0
	bl ReserveGFXSlots
	movs r2, #5
_080AD7BC:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080AE0C8
_080AD7C4:
	adds r0, r4, #0
	cmp r0, #0
	beq _080AD7CC
	movs r0, #1
_080AD7CC:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080AD7D0: .4byte gGFXSlots
.else
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	cmp r4, #0
	bne _080AE030
	adds r0, r5, #0
	bl FindFreeGFXSlots
	adds r4, r0, #0
	cmp r4, #0
	bne _080AE030
	bl CleanUpGFXSlots
	adds r0, r5, #0
	bl FindFreeGFXSlots
	adds r4, r0, #0
	cmp r4, #0
	beq _080AE058
_080AE030:
	ldr r0, _080AE064 @ =gGFXSlots
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r2, r0, #0x1c
	cmp r2, #6
	beq _080AE050
	adds r0, r4, #0
	movs r1, #0
	adds r2, r5, #0
	bl ReserveGFXSlots
	movs r2, #5
_080AE050:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080AE0C8
_080AE058:
	adds r0, r4, #0
	cmp r0, #0
	beq _080AE060
	movs r0, #1
_080AE060:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080AE064: .4byte gGFXSlots
.endif
	.syntax divided
