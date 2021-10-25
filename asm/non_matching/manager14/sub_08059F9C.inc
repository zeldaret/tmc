	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08059FB4 @ =gRoomControls
	ldrb r0, [r0, #5]
	cmp r0, #0x17
	bhi _0805A03A
	lsls r0, r0, #2
	ldr r1, _08059FB8 @ =_08059FBC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08059FB4: .4byte gRoomControls
_08059FB8: .4byte _08059FBC
_08059FBC: @ jump table
	.4byte _0805A036 @ case 0
	.4byte _0805A01C @ case 1
	.4byte _0805A03A @ case 2
	.4byte _0805A03A @ case 3
	.4byte _0805A03A @ case 4
	.4byte _0805A03A @ case 5
	.4byte _0805A03A @ case 6
	.4byte _0805A02A @ case 7
	.4byte _0805A036 @ case 8
	.4byte _0805A036 @ case 9
	.4byte _0805A03A @ case 10
	.4byte _0805A03A @ case 11
	.4byte _0805A03A @ case 12
	.4byte _0805A03A @ case 13
	.4byte _0805A03A @ case 14
	.4byte _0805A03A @ case 15
	.4byte _0805A03A @ case 16
	.4byte _0805A03A @ case 17
	.4byte _0805A03A @ case 18
	.4byte _0805A03A @ case 19
	.4byte _0805A03A @ case 20
	.4byte _0805A03A @ case 21
	.4byte _0805A03A @ case 22
	.4byte _0805A036 @ case 23
_0805A01C:
	movs r0, #0x16
	bl CheckLocalFlag
	cmp r0, #0
	beq _0805A02A
	movs r0, #0
	b _0805A03C
_0805A02A:
	adds r0, r4, #0
	bl sub_0805A25C
	bl DeleteThisEntity
	b _0805A03C
_0805A036:
	movs r0, #1
	b _0805A03C
_0805A03A:
	movs r0, #0
_0805A03C:
	pop {r4, pc}
	.align 2, 0
	.syntax divided
