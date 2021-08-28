	.syntax unified
	push {lr}
	ldrh r0, [r0, #0x3e]
	bl CheckFlags
	cmp r0, #0
	bne _080594CE
	movs r0, #3
	bl sub_08078A90
	ldr r1, _080594B0 @ =gRoomControls
	ldrh r0, [r1]
	cmp r0, #0
	bne _080594D2
	ldr r0, _080594B4 @ =gRoomVars
	ldrb r0, [r0]
	cmp r0, #0
	beq _080594BC
	ldr r0, _080594B8 @ =gUnk_08108380
	ldrb r1, [r1, #0x10]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl StartPlayerScript
	b _080594CE
	.align 2, 0
_080594B0: .4byte gRoomControls
_080594B4: .4byte gRoomVars
_080594B8: .4byte gUnk_08108380
_080594BC:
	ldr r1, _080594D4 @ =gUnk_08108380
	ldr r0, _080594D8 @ =gPlayerEntity
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl StartPlayerScript
_080594CE:
	bl DeleteThisEntity
_080594D2:
	pop {pc}
	.align 2, 0
_080594D4: .4byte gUnk_08108380
_080594D8: .4byte gPlayerEntity
.ifndef EU
	.syntax divided
