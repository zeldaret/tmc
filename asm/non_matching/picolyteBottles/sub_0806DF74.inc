	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_0807DD94
	ldrb r0, [r4, #0xe]
	cmp r0, #0xff
	beq _0806DFB0
	adds r0, r4, #0
	adds r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806DF96
	ldr r1, [r4, #0x70]
	ldrb r0, [r1, #0xe]
	adds r0, #1
	strb r0, [r1, #0xe]
_0806DF96:
	ldr r1, [r4, #0x68]
	ldrb r0, [r1, #0xe]
	adds r0, #1
	strb r0, [r1, #0xe]
	ldr r1, [r4, #0x6c]
	ldrb r0, [r1, #0xe]
	adds r0, #1
	strb r0, [r1, #0xe]
	movs r0, #0xff
	strb r0, [r4, #0xe]
	movs r0, #0
	bl SetRoomFlag
_0806DFB0:
	pop {r4, pc}
	.align 2, 0
	.syntax divided
