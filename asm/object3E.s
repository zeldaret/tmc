	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object3E
Object3E: @ 0x0808D0C8
	push {lr}
	ldr r2, _0808D0DC @ =gUnk_081216DC
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808D0DC: .4byte gUnk_081216DC

	thumb_func_start sub_0808D0E0
sub_0808D0E0: @ 0x0808D0E0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r6, [r5, #0xc]
	cmp r6, #1
	beq _0808D12C
	cmp r6, #1
	bgt _0808D0F4
	cmp r6, #0
	beq _0808D0FA
	b _0808D192
_0808D0F4:
	cmp r6, #2
	beq _0808D150
	b _0808D192
_0808D0FA:
	movs r4, #1
	strb r4, [r5, #0xc]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	movs r1, #0x40
	subs r1, r1, r0
	strb r1, [r5, #0xe]
	strb r6, [r5, #0x1e]
	strb r6, [r5, #0x14]
	ldrb r0, [r5, #0x19]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r5, #0x19]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x38
	strb r4, [r0]
	b _0808D192
_0808D12C:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808D192
	movs r0, #8
	strb r0, [r5, #0xe]
	movs r0, #4
	strb r0, [r5, #0xf]
	movs r0, #2
	strb r0, [r5, #0xc]
	bl Random
	movs r1, #3
	ands r0, r1
	strb r0, [r5, #0x14]
	b _0808D192
_0808D150:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	movs r1, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808D192
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	ands r0, r1
	cmp r0, #0
	bne _0808D180
	strb r0, [r5, #0x1e]
	movs r0, #1
	strb r0, [r5, #0xc]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	movs r1, #0x40
	subs r1, r1, r0
	strb r1, [r5, #0xe]
	b _0808D192
_0808D180:
	movs r0, #8
	strb r0, [r5, #0xe]
	ldrb r1, [r5, #0x14]
	ldrb r0, [r5, #0x1e]
	movs r2, #0
	cmp r0, r1
	beq _0808D190
	adds r2, r1, #0
_0808D190:
	strb r2, [r5, #0x1e]
_0808D192:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0808D194
sub_0808D194: @ 0x0808D194
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #0xc]
	cmp r1, #1
	beq _0808D234
	cmp r1, #1
	bgt _0808D1A8
	cmp r1, #0
	beq _0808D1AE
	b _0808D234
_0808D1A8:
	cmp r1, #2
	beq _0808D1FC
	b _0808D234
_0808D1AE:
	movs r0, #1
	strb r0, [r5, #0xc]
	movs r0, #8
	strb r0, [r5, #0xe]
	strb r1, [r5, #0xf]
	strb r1, [r5, #0x1e]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0808D1F4 @ =0x00004069
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _0808D1F8 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	subs r1, #0x40
	movs r2, #1
	bl SetTile
	b _0808D234
	.align 2, 0
_0808D1F4: .4byte 0x00004069
_0808D1F8: .4byte gRoomControls
_0808D1FC:
	ldr r0, _0808D274 @ =gUnk_030010A0
	ldr r3, [r0]
	movs r0, #3
	ands r3, r0
	cmp r3, #0
	bne _0808D234
	ldr r4, _0808D278 @ =gScreen
	ldrb r2, [r5, #0xd]
	lsls r1, r2, #8
	movs r0, #0x10
	subs r0, r0, r2
	orrs r1, r0
	adds r0, r4, #0
	adds r0, #0x68
	strh r1, [r0]
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x15
	cmp r1, r0
	bne _0808D234
	adds r0, r4, #0
	adds r0, #0x66
	strh r3, [r0]
	bl DeleteThisEntity
_0808D234:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808D272
	movs r0, #8
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0xa]
	cmp r0, #9
	bne _0808D24E
	movs r0, #2
	strb r0, [r5, #0xe]
_0808D24E:
	ldr r4, _0808D27C @ =gUnk_08121704
	ldrb r0, [r5, #0xf]
	adds r1, r0, #1
	strb r1, [r5, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r4
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_0801D2B4
	ldrb r0, [r5, #0xf]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	cmp r0, #0
	bne _0808D272
	strb r0, [r5, #0xf]
_0808D272:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0808D274: .4byte gUnk_030010A0
_0808D278: .4byte gScreen
_0808D27C: .4byte gUnk_08121704

	thumb_func_start sub_0808D280
sub_0808D280: @ 0x0808D280
	push {r4, lr}
	sub sp, #4
	movs r4, #0
	str r4, [sp]
	movs r0, #6
	movs r1, #0x3e
	movs r2, #6
	movs r3, #9
	bl sub_0805EB2C
	adds r2, r0, #0
	cmp r2, #0
	beq _0808D2C4
	movs r0, #2
	strb r0, [r2, #0xc]
	strb r4, [r2, #0xd]
	ldrb r1, [r2, #0x19]
	subs r0, #0xf
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2, #0x19]
	ldr r1, _0808D2C8 @ =gScreen
	adds r2, r1, #0
	adds r2, #0x66
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r2]
	adds r1, #0x68
	movs r0, #0x10
	strh r0, [r1]
	movs r0, #0xf6
	bl PlaySFX
_0808D2C4:
	add sp, #4
	pop {r4, pc}
	.align 2, 0
_0808D2C8: .4byte gScreen

	thumb_func_start sub_0808D2CC
sub_0808D2CC: @ 0x0808D2CC
	push {lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	movs r1, #0x3e
	movs r2, #6
	movs r3, #1
	bl sub_0805EB2C
	adds r1, r0, #0
	cmp r1, #0
	beq _0808D2F2
	movs r0, #9
	strb r0, [r1, #0xa]
	adds r0, r1, #0
	movs r1, #2
	bl sub_0805E3A0
_0808D2F2:
	add sp, #4
	pop {pc}
	.align 2, 0

	thumb_func_start nullsub_521
nullsub_521: @ 0x0808D2F8
	bx lr
	.align 2, 0

	thumb_func_start sub_0808D2FC
sub_0808D2FC: @ 0x0808D2FC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0808D31C
	strb r0, [r4, #0xc]
	strb r0, [r4, #0x1e]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0807DD64
_0808D31C:
	movs r0, #0x2e
	ldrsh r5, [r4, r0]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	ldr r0, _0808D354 @ =gRoomControls
	ldrh r0, [r0, #0x16]
	cmp r0, #0
	beq _0808D350
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	cmp r5, r0
	beq _0808D350
	ldr r0, _0808D358 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0808D350
	ldr r0, _0808D35C @ =0x0000010F
	bl PlaySFX
_0808D350:
	pop {r4, r5, pc}
	.align 2, 0
_0808D354: .4byte gRoomControls
_0808D358: .4byte gUnk_030010A0
_0808D35C: .4byte 0x0000010F

	thumb_func_start sub_0808D360
sub_0808D360: @ 0x0808D360
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0808D382
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0x1e]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0807DD64
_0808D382:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0808D394
sub_0808D394: @ 0x0808D394
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _0808D3C4
	movs r0, #1
	strb r0, [r5, #0xc]
	movs r0, #8
	strb r0, [r5, #0xe]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0808D3FC @ =gScreen
	adds r2, r1, #0
	adds r2, #0x66
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r2]
	adds r1, #0x68
	ldr r0, _0808D400 @ =0x00001003
	strh r0, [r1]
_0808D3C4:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808D3F8
	movs r0, #2
	strb r0, [r5, #0xe]
	ldr r4, _0808D404 @ =gUnk_08121720
	ldrb r0, [r5, #0xf]
	adds r1, r0, #1
	strb r1, [r5, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r4
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_0801D28C
	ldrb r0, [r5, #0xf]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	cmp r0, #0
	bne _0808D3F8
	strb r0, [r5, #0xf]
_0808D3F8:
	pop {r4, r5, pc}
	.align 2, 0
_0808D3FC: .4byte gScreen
_0808D400: .4byte 0x00001003
_0808D404: .4byte gUnk_08121720

	thumb_func_start sub_0808D408
sub_0808D408: @ 0x0808D408
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xc]
	cmp r0, #0
	bne _0808D458
	movs r1, #1
	strb r1, [r3, #0xc]
	ldrb r0, [r3, #0x19]
	movs r2, #0xc0
	orrs r0, r2
	strb r0, [r3, #0x19]
	movs r0, #0x29
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	movs r2, #7
	orrs r0, r2
	mov r2, ip
	strb r0, [r2]
	ldrb r2, [r3, #0x19]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	movs r2, #4
	orrs r0, r2
	strb r0, [r3, #0x19]
	ldrb r0, [r3, #0xb]
	strb r0, [r3, #0x1e]
	ldrb r0, [r3, #0xb]
	subs r1, r1, r0
	lsls r1, r1, #9
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0xc0
	rsbs r2, r2, #0
	adds r0, r3, #0
	movs r3, #0
	bl sub_0805EC9C
_0808D458:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0808D45C
sub_0808D45C: @ 0x0808D45C
	push {lr}
	ldr r2, _0808D470 @ =gUnk_0812172C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808D470: .4byte gUnk_0812172C

	thumb_func_start sub_0808D474
sub_0808D474: @ 0x0808D474
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0xb]
	strb r0, [r5, #0x1e]
	movs r1, #2
	strb r1, [r5, #0xc]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808D4D4
	movs r0, #0x7c
	bl CheckLocalFlag
	adds r1, r0, #0
	cmp r1, #0
	bne _0808D4D4
	movs r0, #1
	strb r0, [r5, #0xc]
	strb r1, [r5, #0xe]
	ldrb r1, [r5, #0x19]
	subs r0, #0xe
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r5, #0x19]
	ldr r1, _0808D4CC @ =gScreen
	adds r2, r1, #0
	adds r2, #0x66
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r2]
	adds r1, #0x68
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r0, _0808D4D0 @ =0x00000179
	bl PlaySFX
	b _0808D50E
	.align 2, 0
_0808D4CC: .4byte gScreen
_0808D4D0: .4byte 0x00000179
_0808D4D4:
	movs r0, #8
	strb r0, [r5, #0xe]
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r3, _0808D510 @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r4, r0, #4
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
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _0808D500
	subs r4, #0x40
_0808D500:
	ldr r0, _0808D514 @ =0x00004069
	adds r1, r5, #0
	adds r1, #0x38
	ldrb r2, [r1]
	adds r1, r4, #0
	bl SetTile
_0808D50E:
	pop {r4, r5, pc}
	.align 2, 0
_0808D510: .4byte gRoomControls
_0808D514: .4byte 0x00004069

	thumb_func_start sub_0808D518
sub_0808D518: @ 0x0808D518
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0808D58C @ =gUnk_030010A0
	ldr r2, [r0]
	movs r0, #3
	ands r2, r0
	cmp r2, #0
	bne _0808D58A
	ldr r3, _0808D590 @ =gScreen
	ldrb r0, [r5, #0xe]
	movs r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #8
	orrs r1, r0
	adds r0, r3, #0
	adds r0, #0x68
	strh r1, [r0]
	ldrb r0, [r5, #0xe]
	adds r0, #1
	strb r0, [r5, #0xe]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x10
	bne _0808D58A
	movs r0, #2
	strb r0, [r5, #0xc]
	movs r0, #8
	strb r0, [r5, #0xe]
	ldrb r1, [r5, #0x19]
	subs r0, #0x15
	ands r0, r1
	strb r0, [r5, #0x19]
	adds r0, r3, #0
	adds r0, #0x66
	strh r2, [r0]
	ldr r0, _0808D594 @ =0x00004069
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _0808D598 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
_0808D58A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0808D58C: .4byte gUnk_030010A0
_0808D590: .4byte gScreen
_0808D594: .4byte 0x00004069
_0808D598: .4byte gRoomControls

	thumb_func_start sub_0808D59C
sub_0808D59C: @ 0x0808D59C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808D5D4
	movs r0, #8
	strb r0, [r5, #0xe]
	ldr r4, _0808D5D8 @ =gUnk_08121738
	ldrb r0, [r5, #0xf]
	adds r1, r0, #1
	strb r1, [r5, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r4
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_0801D2B4
	ldrb r0, [r5, #0xf]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	cmp r0, #0
	bne _0808D5D4
	strb r0, [r5, #0xf]
_0808D5D4:
	pop {r4, r5, pc}
	.align 2, 0
_0808D5D8: .4byte gUnk_08121738
