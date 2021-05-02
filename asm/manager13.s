	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Manager13_Main
Manager13_Main: @ 0x08059DAC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _08059DBE
	movs r0, #1
	strb r0, [r5, #0xc]
_08059DBE:
	ldr r1, _08059E4C @ =gRoomControls
	ldrb r0, [r1, #4]
	ldr r4, _08059E50 @ =gUnk_081084C8
	cmp r0, #0x15
	bne _08059DCA
	ldr r4, _08059E54 @ =gUnk_08108530
_08059DCA:
	movs r7, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _08059E46
	mov r8, r1
_08059DD4:
	movs r6, #1
	lsls r6, r7
	ldr r0, [r5, #0x20]
	ands r0, r6
	cmp r0, #0
	bne _08059E38
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	movs r2, #0x10
	movs r3, #0x10
	bl CheckRectOnScreen
	cmp r0, #0
	beq _08059E38
	ldrb r1, [r4, #4]
	movs r0, #0x1c
	adds r2, r7, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _08059E38
	ldrb r0, [r4, #5]
	strb r0, [r2, #0x1e]
	ldrh r0, [r4]
	mov r1, r8
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
	ldrh r0, [r4, #2]
	mov r3, r8
	ldrh r3, [r3, #8]
	adds r0, r0, r3
	strh r0, [r2, #0x32]
	str r5, [r2, #0x50]
	ldrh r1, [r4]
	adds r0, r2, #0
	adds r0, #0x80
	strh r1, [r0]
	ldrh r0, [r4, #2]
	adds r1, r2, #0
	adds r1, #0x82
	strh r0, [r1]
	ldrb r1, [r4, #6]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	ldr r0, [r5, #0x20]
	orrs r0, r6
	str r0, [r5, #0x20]
_08059E38:
	adds r4, #8
	adds r7, #1
	ldrh r0, [r4]
	cmp r0, #0
	beq _08059E46
	cmp r7, #0x1f
	bls _08059DD4
_08059E46:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08059E4C: .4byte gRoomControls
_08059E50: .4byte gUnk_081084C8
_08059E54: .4byte gUnk_08108530
