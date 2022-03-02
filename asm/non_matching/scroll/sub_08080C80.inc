	.syntax unified
	push {r4, lr}
	bl sub_080197D4
	ldr r0, _08080CA8 @ =gMapDataBottom
	ldr r4, _08080CAC @ =gRoomControls
	ldrh r1, [r4, #0x1e]
	lsrs r1, r1, #4
	ldrh r2, [r4, #0x20]
	lsrs r2, r2, #4
	bl sub_0807C8B0
	ldr r0, _08080CB0 @ =gMapDataTop
	ldrh r1, [r4, #0x1e]
	lsrs r1, r1, #4
	ldrh r2, [r4, #0x20]
	lsrs r2, r2, #4
	bl sub_0807C8B0
	pop {r4, pc}
	.align 2, 0
_08080CA8: .4byte gMapDataBottom
_08080CAC: .4byte gRoomControls
_08080CB0: .4byte gMapDataTop
	.syntax divided
