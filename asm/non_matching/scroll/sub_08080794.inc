	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	cmp r3, #1
	beq _080807C0
	cmp r3, #1
	blo _080807AC
	cmp r3, #2
	beq _080807D4
	cmp r3, #3
	beq _080807E8
_080807A8:
	movs r0, #0
	b _08080800
_080807AC:
	ldr r0, _080807BC @ =gRoomControls
	ldrh r0, [r0, #0x1e]
	lsrs r0, r0, #1
	movs r3, #1
	cmp r0, r1
	bhs _080807F6
	movs r3, #2
	b _080807F6
	.align 2, 0
_080807BC: .4byte gRoomControls
_080807C0:
	ldr r0, _080807D0 @ =gRoomControls
	ldrh r0, [r0, #0x20]
	lsrs r0, r0, #1
	movs r3, #4
	cmp r0, r2
	bhs _080807F6
	movs r3, #8
	b _080807F6
	.align 2, 0
_080807D0: .4byte gRoomControls
_080807D4:
	ldr r0, _080807E4 @ =gRoomControls
	ldrh r0, [r0, #0x1e]
	lsrs r0, r0, #1
	movs r3, #0x10
	cmp r0, r1
	bhs _080807F6
	movs r3, #0x20
	b _080807F6
	.align 2, 0
_080807E4: .4byte gRoomControls
_080807E8:
	ldr r0, _08080804 @ =gRoomControls
	ldrh r0, [r0, #0x20]
	lsrs r0, r0, #1
	movs r3, #0x40
	cmp r0, r2
	bhs _080807F6
	movs r3, #0x80
_080807F6:
	ldrb r0, [r4, #0xa]
	ands r0, r3
	cmp r0, #0
	beq _080807A8
	movs r0, #1
_08080800:
	pop {r4, pc}
	.align 2, 0
_08080804: .4byte gRoomControls
	.syntax divided
