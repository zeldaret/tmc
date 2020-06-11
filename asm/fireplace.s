	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0809B6F0
sub_0809B6F0: @ 0x0809B6F0
	push {lr}
	ldr r2, _0809B704 @ =gUnk_08123D98
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809B704: .4byte gUnk_08123D98

	thumb_func_start sub_0809B708
sub_0809B708: @ 0x0809B708
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r6, #0xc]
	ldrb r1, [r6, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r6, #0x18]
	movs r0, #0x80
	strh r0, [r6, #0x24]
	adds r0, r6, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	beq _0809B73A
	adds r0, r6, #0
	bl sub_0809B7DC
	bl sub_0805E780
	b _0809B78A
_0809B73A:
	ldr r0, _0809B794 @ =0x0000030B
	movs r2, #0x2e
	ldrsh r1, [r6, r2]
	ldr r5, _0809B798 @ =gRoomControls
	ldrh r2, [r5, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r3, #0x32
	ldrsh r2, [r6, r3]
	ldrh r3, [r5, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	movs r2, #2
	bl sub_0807B7D8
	ldr r0, _0809B79C @ =0x00004061
	movs r2, #0x2e
	ldrsh r1, [r6, r2]
	ldrh r2, [r5, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r4
	movs r3, #0x32
	ldrsh r2, [r6, r3]
	ldrh r3, [r5, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r6, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
_0809B78A:
	adds r0, r6, #0
	bl sub_0809B7A0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0809B794: .4byte 0x0000030B
_0809B798: .4byte gRoomControls
_0809B79C: .4byte 0x00004061

	thumb_func_start sub_0809B7A0
sub_0809B7A0: @ 0x0809B7A0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0809B7C0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0809B7BC
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CCC8
	bl sub_0805E780
_0809B7BC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809B7C0
sub_0809B7C0: @ 0x0809B7C0
	push {r4, lr}
	adds r4, r0, #0
	bl GetTileTypeByEntity
	ldr r1, _0809B7D8 @ =0xFFFFBF9F
	adds r0, r0, r1
	cmp r0, #1
	bls _0809B7D6
	adds r0, r4, #0
	bl sub_0809B7DC
_0809B7D6:
	pop {r4, pc}
	.align 2, 0
_0809B7D8: .4byte 0xFFFFBF9F

	thumb_func_start sub_0809B7DC
sub_0809B7DC: @ 0x0809B7DC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0xc3
	lsls r0, r0, #2
	movs r2, #0x2e
	ldrsh r1, [r6, r2]
	ldr r5, _0809B838 @ =gRoomControls
	ldrh r2, [r5, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r3, #0x32
	ldrsh r2, [r6, r3]
	ldrh r3, [r5, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	movs r2, #2
	bl sub_0807B7D8
	ldr r0, _0809B83C @ =0x00004062
	movs r2, #0x2e
	ldrsh r1, [r6, r2]
	ldrh r2, [r5, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r4
	movs r3, #0x32
	ldrsh r2, [r6, r3]
	ldrh r3, [r5, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r6, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
	movs r0, #1
	strb r0, [r6, #0xe]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0809B838: .4byte gRoomControls
_0809B83C: .4byte 0x00004062
