	.syntax unified
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r5, #0xff
	movs r0, #7
	ands r1, r0
	cmp r1, #7
	bls _0807BDC8
	b _0807BEE2
_0807BDC8:
	lsls r0, r1, #2
	ldr r1, _0807BDD4 @ =_0807BDD8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807BDD4: .4byte _0807BDD8
_0807BDD8: @ jump table
	.4byte _0807BDF8 @ case 0
	.4byte _0807BE10 @ case 1
	.4byte _0807BE30 @ case 2
	.4byte _0807BE4C @ case 3
	.4byte _0807BE78 @ case 4
	.4byte _0807BE94 @ case 5
	.4byte _0807BEB4 @ case 6
	.4byte _0807BEC4 @ case 7
_0807BDF8:
	movs r1, #0x32
	ldrsh r0, [r3, r1]
	ldr r1, _0807BE0C @ =gRoomControls
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	cmp r0, #9
	bhi _0807BEE2
	movs r5, #0
	b _0807BEE2
	.align 2, 0
_0807BE0C: .4byte gRoomControls
_0807BE10:
	movs r2, #0x32
	ldrsh r0, [r3, r2]
	ldr r2, _0807BE2C @ =gRoomControls
	ldrh r1, [r2, #8]
	subs r0, r0, r1
	cmp r0, #9
	bhi _0807BE20
	movs r5, #0
_0807BE20:
	ldrh r0, [r2, #0x1e]
	subs r0, #0xa
	movs r4, #0x2e
	ldrsh r1, [r3, r4]
	ldrh r2, [r2, #6]
	b _0807BE6A
	.align 2, 0
_0807BE2C: .4byte gRoomControls
_0807BE30:
	ldr r1, _0807BE48 @ =gRoomControls
	ldrh r2, [r1, #0x1e]
	subs r2, #0xa
	movs r4, #0x2e
	ldrsh r0, [r3, r4]
	ldrh r1, [r1, #6]
	subs r0, r0, r1
	cmp r2, r0
	bhs _0807BEE2
	movs r5, #1
	b _0807BEE2
	.align 2, 0
_0807BE48: .4byte gRoomControls
_0807BE4C:
	ldr r4, _0807BE74 @ =gRoomControls
	ldrh r0, [r4, #0x20]
	subs r0, #0xa
	movs r2, #0x32
	ldrsh r1, [r3, r2]
	ldrh r2, [r4, #8]
	subs r1, r1, r2
	cmp r0, r1
	bhs _0807BE60
	movs r5, #2
_0807BE60:
	ldrh r0, [r4, #0x1e]
	subs r0, #0xa
	movs r2, #0x2e
	ldrsh r1, [r3, r2]
	ldrh r2, [r4, #6]
_0807BE6A:
	subs r1, r1, r2
	cmp r0, r1
	bhs _0807BEE2
	movs r5, #1
	b _0807BEE2
	.align 2, 0
_0807BE74: .4byte gRoomControls
_0807BE78:
	ldr r1, _0807BE90 @ =gRoomControls
	ldrh r2, [r1, #0x20]
	subs r2, #0xa
	movs r4, #0x32
	ldrsh r0, [r3, r4]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	cmp r2, r0
	bhs _0807BEE2
	movs r5, #2
	b _0807BEE2
	.align 2, 0
_0807BE90: .4byte gRoomControls
_0807BE94:
	ldr r4, _0807BEB0 @ =gRoomControls
	ldrh r0, [r4, #0x20]
	subs r0, #0xa
	movs r2, #0x32
	ldrsh r1, [r3, r2]
	ldrh r2, [r4, #8]
	subs r1, r1, r2
	cmp r0, r1
	bhs _0807BEA8
	movs r5, #2
_0807BEA8:
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	ldrh r1, [r4, #6]
	b _0807BEDA
	.align 2, 0
_0807BEB0: .4byte gRoomControls
_0807BEB4:
	movs r2, #0x2e
	ldrsh r0, [r3, r2]
	ldr r1, _0807BEC0 @ =gRoomControls
	ldrh r1, [r1, #6]
	b _0807BEDA
	.align 2, 0
_0807BEC0: .4byte gRoomControls
_0807BEC4:
	movs r4, #0x32
	ldrsh r0, [r3, r4]
	ldr r2, _0807BEE8 @ =gRoomControls
	ldrh r1, [r2, #8]
	subs r0, r0, r1
	cmp r0, #9
	bhi _0807BED4
	movs r5, #0
_0807BED4:
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	ldrh r1, [r2, #6]
_0807BEDA:
	subs r0, r0, r1
	cmp r0, #9
	bhi _0807BEE2
	movs r5, #3
_0807BEE2:
	adds r0, r5, #0
	pop {r4, r5, pc}
	.align 2, 0
_0807BEE8: .4byte gRoomControls
	.syntax divided
