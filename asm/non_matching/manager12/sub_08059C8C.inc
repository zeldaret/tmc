	.syntax unified
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	adds r0, r3, #0
	bl sub_08056300
	adds r2, r0, #0
	strb r2, [r4]
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xff
	beq _08059CBC
	ldr r0, _08059CB8 @ =gRoomVars
	adds r0, #0x10
	adds r1, r5, r0
	ldrb r0, [r1]
	cmp r0, r3
	beq _08059CBC
	strb r2, [r1]
	movs r0, #1
	b _08059CBE
	.align 2, 0
_08059CB8: .4byte gRoomVars
_08059CBC:
	movs r0, #0
_08059CBE:
	pop {r4, r5, pc}
	.syntax divided
