    .syntax unified
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _08043E48 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08043EAC
	ldr r0, [r5, #0x64]
	ldr r2, [r0, #0xc]
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	ldr r6, _08043E4C @ =gRoomControls
	ldrh r1, [r6, #6]
	subs r0, r0, r1
	movs r3, #0x32
	ldrsh r1, [r2, r3]
	ldrh r2, [r6, #8]
	subs r1, r1, r2
	adds r1, #2
	movs r2, #3
	movs r3, #3
	bl CheckPlayerInRegion
	cmp r0, #0
	beq _08043EAC
	ldr r0, _08043E50 @ =gUnk_080D13EC
	bl DoExitTransition
	ldr r4, _08043E54 @ =gScreenTransition
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	beq _08043DFE
	movs r0, #1
	strb r0, [r4, #0xd]
_08043DFE:
	adds r0, r5, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	movs r1, #0x3c
	bl __divsi3
	movs r1, #0x1e
	subs r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x3d
	strb r1, [r0]
	ldrb r1, [r5, #0xb]
	subs r0, #1
	strb r1, [r0]
	ldr r0, [r5, #0x64]
	ldr r2, [r0, #0x14]
	ldrh r1, [r2, #0x2e]
	adds r0, r4, #0
	adds r0, #0x40
	strh r1, [r0]
	ldrh r0, [r2, #0x32]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r2, #0x64]
	ldr r3, [r0, #0x14]
	cmp r3, #0
	beq _08043E58
	ldrh r1, [r3, #0x2e]
	adds r0, r4, #0
	adds r0, #0x44
	strh r1, [r0]
	ldrh r1, [r3, #0x32]
	adds r0, #2
	strh r1, [r0]
	b _08043E70
	.align 2, 0
_08043E48: .4byte gPlayerState
_08043E4C: .4byte gRoomControls
_08043E50: .4byte gUnk_080D13EC
_08043E54: .4byte gScreenTransition
_08043E58:
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r6, #6]
	adds r0, r0, r3
	adds r1, r4, #0
	adds r1, #0x44
	strh r0, [r1]
	ldrh r0, [r6, #8]
	adds r0, #0x60
	adds r1, #2
	strh r0, [r1]
_08043E70:
	ldr r0, [r2, #0x64]
	ldr r3, [r0, #0x18]
	cmp r3, #0
	beq _08043E90
	ldr r1, _08043E8C @ =gScreenTransition
	ldrh r2, [r3, #0x2e]
	adds r0, r1, #0
	adds r0, #0x48
	strh r2, [r0]
	ldrh r0, [r3, #0x32]
	adds r1, #0x4a
	strh r0, [r1]
	b _08043EAC
	.align 2, 0
_08043E8C: .4byte gScreenTransition
_08043E90:
	ldr r2, _08043EB0 @ =gScreenTransition
	ldr r3, _08043EB4 @ =gRoomControls
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r1, [r3, #6]
	adds r0, r0, r1
	adds r1, r2, #0
	adds r1, #0x48
	strh r0, [r1]
	ldrh r0, [r3, #8]
	adds r0, #0x60
	adds r2, #0x4a
	strh r0, [r2]
_08043EAC:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08043EB0: .4byte gScreenTransition
_08043EB4: .4byte gRoomControls
    .syntax divided
