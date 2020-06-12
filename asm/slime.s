	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_08045178
sub_08045178: @ 0x08045178
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	cmp r4, #0
	beq _080451C6
	bl sub_0804A4E4
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_080002CC
	cmp r0, #0
	bne _080451C6
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	adds r2, r0, r5
	cmp r2, #0
	blt _080451AE
	ldr r0, _080451C8 @ =gRoomControls
	ldrh r1, [r0, #6]
	ldrh r0, [r0, #0x1e]
	adds r1, r1, r0
	cmp r2, r1
	bge _080451AE
	strh r2, [r4, #0x2e]
_080451AE:
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	adds r2, r0, r6
	cmp r2, #0
	blt _080451C6
	ldr r0, _080451C8 @ =gRoomControls
	ldrh r1, [r0, #8]
	ldrh r0, [r0, #0x20]
	adds r1, r1, r0
	cmp r2, r1
	bge _080451C6
	strh r2, [r4, #0x32]
_080451C6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080451C8: .4byte gRoomControls

	thumb_func_start sub_080451CC
sub_080451CC: @ 0x080451CC
	ldrb r3, [r0, #0x10]
	movs r2, #0xfe
	ands r2, r3
	strb r2, [r1, #0x10]
	ldr r2, [r0, #0x2c]
	str r2, [r1, #0x2c]
	ldr r2, [r0, #0x30]
	str r2, [r1, #0x30]
	ldr r2, [r0, #0x34]
	str r2, [r1, #0x34]
	adds r0, #0x68
	adds r1, #0x68
	ldrb r2, [r0, #4]
	strb r2, [r1, #4]
	ldrb r2, [r0, #5]
	strb r2, [r1, #5]
	ldrb r2, [r0, #6]
	strb r2, [r1, #6]
	ldrb r2, [r0, #7]
	strb r2, [r1, #7]
	ldrh r2, [r0, #8]
	strh r2, [r1, #8]
	ldrh r0, [r0, #0xa]
	strh r0, [r1, #0xa]
	bx lr
	.align 2, 0
