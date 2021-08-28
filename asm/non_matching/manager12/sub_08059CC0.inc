	.syntax unified
	push {r4, r5, r6, lr}
	adds r2, r1, #0
	ldr r1, _08059CDC @ =gRoomVars
	adds r1, #0x10
	adds r0, r0, r1
	strb r2, [r0]
	ldr r0, _08059CE0 @ =gRoomControls
	ldrb r0, [r0, #4]
	cmp r0, #0x15
	beq _08059CE8
	lsls r1, r2, #4
	ldr r0, _08059CE4 @ =gUnk_08108408
	b _08059CEC
	.align 2, 0
_08059CDC: .4byte gRoomVars
_08059CE0: .4byte gRoomControls
_08059CE4: .4byte gUnk_08108408
_08059CE8:
	lsls r1, r2, #4
	ldr r0, _08059D10 @ =gUnk_08108468
_08059CEC:
	adds r6, r1, r0
	ldr r0, [r6]
	ldr r4, _08059D14 @ =gGlobalGfxAndPalettes
	adds r0, r0, r4
	ldr r1, [r6, #4]
	movs r5, #0x80
	lsls r5, r5, #5
	adds r2, r5, #0
	bl LoadResourceAsync
	ldr r0, [r6, #8]
	adds r0, r0, r4
	ldr r1, [r6, #0xc]
	adds r2, r5, #0
	bl LoadResourceAsync
	pop {r4, r5, r6, pc}
	.align 2, 0
_08059D10: .4byte gUnk_08108468
_08059D14: .4byte gGlobalGfxAndPalettes
	.syntax divided
