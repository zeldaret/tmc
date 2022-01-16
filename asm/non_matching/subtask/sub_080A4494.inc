	.syntax unified
	push {r4, r5, lr}
	bl sub_0805F2C8
	adds r4, r0, #0
	cmp r4, #0
	beq _080A44D0
	ldr r0, _080A44D4 @ =gTextGfxBuffer
	str r0, [r4, #8]
	movs r1, #0
	strb r1, [r4, #2]
	movs r0, #5
	strb r0, [r4, #3]
	strb r1, [r4, #1]
	ldr r1, _080A44D8 @ =gUnk_02002AC0
	adds r0, r4, #0
	movs r2, #0x80
	bl sub_080A44E0
	ldr r0, _080A44DC @ =gFuseInfo
	ldr r0, [r0, #0xc]
	bl sub_08002632
	adds r0, r4, #0
	movs r2, #0xa0
	bl sub_080A44E0
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_0805F300
_080A44D0:
	adds r0, r5, #0
	pop {r4, r5, pc}
	.align 2, 0
_080A44D4: .4byte gTextGfxBuffer
_080A44D8: .4byte gUnk_02002AC0
_080A44DC: .4byte gFuseInfo
	.syntax divided
