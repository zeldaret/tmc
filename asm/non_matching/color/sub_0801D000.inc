    .syntax unified
	push {lr}
	adds r2, r0, #0
	ldr r0, _0801D024 @ =gRoomTransition
	movs r1, #0
	cmp r2, #0
	beq _0801D00E
	movs r1, #0xf
_0801D00E:
	adds r0, #0x2f
	strb r1, [r0]
	cmp r2, #0
	beq _0801D028
	bl CleanUpObjPalettes
	movs r0, #0xf
	bl sub_0801CFD0
	b _0801D03A
	.align 2, 0
_0801D024: .4byte gRoomTransition
_0801D028:
	ldr r3, _0801D03C @ =gUnk_02001A3C
	ldrb r1, [r3]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #4
	bne _0801D03A
	strb r2, [r3]
	strb r2, [r3, #1]
	strh r2, [r3, #2]
_0801D03A:
	pop {pc}
	.align 2, 0
_0801D03C: .4byte gUnk_02001A3C
    .syntax divided
