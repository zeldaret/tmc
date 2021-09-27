	.syntax unified
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _08058EF2
	movs r0, #1
	strb r0, [r6, #0xc]
_08058EF2:
	ldrb r0, [r6, #0xb]
	bl CheckRoomFlag
	cmp r0, #0
	beq _08058F40
	movs r5, #0x94
	lsls r5, r5, #1
	ldrb r2, [r6, #0xb]
	adds r2, #1
	adds r0, r5, #0
	movs r1, #0x68
	bl sub_08058F44
	movs r4, #0xac
	lsls r4, r4, #1
	ldrb r2, [r6, #0xb]
	adds r2, #2
	adds r0, r4, #0
	movs r1, #0x68
	bl sub_08058F44
	ldrb r2, [r6, #0xb]
	adds r2, #3
	adds r0, r5, #0
	movs r1, #0x98
	bl sub_08058F44
	ldrb r2, [r6, #0xb]
	adds r2, #4
	adds r0, r4, #0
	movs r1, #0x98
	bl sub_08058F44
	movs r0, #0x92
	lsls r0, r0, #1
	bl SoundReq
	bl DeleteThisEntity
_08058F40:
	pop {r4, r5, r6, pc}
	.align 2, 0
	.syntax divided
