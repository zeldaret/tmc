	.syntax unified
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	cmp r5, #0
	beq _0801A978
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	bl GetLayerByIndex
	adds r6, r0, #4
	cmp r4, #0
	bne _0801A92C
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r2, _0801A91C @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r4, r0, #4
	movs r3, #0x3f
	ands r4, r3
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	ldrh r1, [r2, #8]
	adds r1, #8
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r4, r0
	lsls r0, r4, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	ldr r0, _0801A920 @ =0x00004055
	cmp r1, r0
	bne _0801A924
	subs r0, r4, #1
	b _0801A97A
	.align 2, 0
_0801A91C: .4byte gRoomControls
_0801A920: .4byte 0x00004055
_0801A924:
	ldr r0, _0801A928 @ =0x00004056
	b _0801A96A
	.align 2, 0
_0801A928: .4byte 0x00004056
_0801A92C:
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	ldr r3, _0801A960 @ =gRoomControls
	ldrh r0, [r3, #6]
	adds r0, #8
	subs r1, r1, r0
	asrs r4, r1, #4
	movs r2, #0x3f
	ands r4, r2
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	lsls r0, r4, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	ldr r0, _0801A964 @ =0x00004057
	cmp r1, r0
	bne _0801A968
	adds r0, r4, #0
	subs r0, #0x40
	b _0801A97A
	.align 2, 0
_0801A960: .4byte gRoomControls
_0801A964: .4byte 0x00004057
_0801A968:
	ldr r0, _0801A974 @ =0x00004058
_0801A96A:
	cmp r1, r0
	bne _0801A978
	adds r0, r4, #0
	b _0801A97A
	.align 2, 0
_0801A974: .4byte 0x00004058
_0801A978:
	ldr r0, _0801A97C @ =0x0000FFFF
_0801A97A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801A97C: .4byte 0x0000FFFF
	.syntax divided
