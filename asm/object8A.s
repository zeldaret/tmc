	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object8A
Object8A: @ 0x0809ADB4
	push {lr}
	ldr r2, _0809ADC8 @ =gUnk_08123D4C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809ADC8: .4byte gUnk_08123D4C

	thumb_func_start sub_0809ADCC
sub_0809ADCC: @ 0x0809ADCC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _0809AE14 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r5, r4, #0
	adds r5, #0x80
	strh r1, [r5]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r7, [r0]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0809AEBC
	cmp r0, #1
	bgt _0809AE18
	cmp r0, #0
	beq _0809AE1E
	b _0809AF46
	.align 2, 0
_0809AE14: .4byte gRoomControls
_0809AE18:
	cmp r0, #2
	beq _0809AF10
	b _0809AF46
_0809AE1E:
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0xa
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	ldrh r5, [r5]
	subs r6, r5, #1
	ldr r4, _0809AEB8 @ =0x00004022
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl SetTile
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl SetTile
	adds r1, r5, #1
	adds r0, r4, #0
	adds r2, r7, #0
	bl SetTile
	adds r1, r5, #0
	adds r1, #0x3f
	adds r0, r4, #0
	adds r2, r7, #0
	bl SetTile
	adds r1, r5, #0
	adds r1, #0x40
	adds r0, r4, #0
	adds r2, r7, #0
	bl SetTile
	adds r1, r5, #0
	adds r1, #0x41
	adds r0, r4, #0
	adds r2, r7, #0
	bl SetTile
	adds r4, #0x1b
	adds r1, r5, #0
	subs r1, #0x41
	adds r0, r4, #0
	adds r2, r7, #0
	bl SetTile
	adds r1, r5, #0
	subs r1, #0x40
	adds r0, r4, #0
	adds r2, r7, #0
	bl SetTile
	subs r4, #0x17
	adds r1, r5, #0
	subs r1, #0x3f
	adds r0, r4, #0
	adds r2, r7, #0
	bl SetTile
	adds r1, r5, #0
	subs r1, #0x81
	adds r0, r4, #0
	adds r2, r7, #0
	bl SetTile
	adds r1, r5, #0
	subs r1, #0x80
	adds r0, r4, #0
	b _0809AF04
	.align 2, 0
_0809AEB8: .4byte 0x00004022
_0809AEBC:
	strb r0, [r4, #0xc]
	ldrh r6, [r5]
	ldr r4, _0809AEF4 @ =0x00004022
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl SetTile
	adds r1, r6, #0
	adds r1, #0x40
	adds r0, r4, #0
	adds r2, r7, #0
	bl SetTile
	ldr r0, _0809AEF8 @ =0x00004025
	adds r1, r6, #0
	adds r1, #0x41
	adds r2, r7, #0
	bl SetTile
	movs r0, #0x4f
	bl CheckLocalFlag
	cmp r0, #0
	bne _0809AF00
	ldr r0, _0809AEFC @ =0x0000402F
	b _0809AF02
	.align 2, 0
_0809AEF4: .4byte 0x00004022
_0809AEF8: .4byte 0x00004025
_0809AEFC: .4byte 0x0000402F
_0809AF00:
	ldr r0, _0809AF0C @ =0x0000402D
_0809AF02:
	adds r1, r6, #1
_0809AF04:
	adds r2, r7, #0
	bl SetTile
	b _0809AF46
	.align 2, 0
_0809AF0C: .4byte 0x0000402D
_0809AF10:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r5, [r5]
	adds r6, r5, #0
	subs r6, #0x41
	ldr r4, _0809AF48 @ =0x00004022
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl SetTile
	adds r1, r5, #0
	subs r1, #0x40
	adds r0, r4, #0
	adds r2, r7, #0
	bl SetTile
	subs r1, r5, #1
	adds r0, r4, #0
	adds r2, r7, #0
	bl SetTile
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl SetTile
_0809AF46:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809AF48: .4byte 0x00004022

	thumb_func_start nullsub_535
nullsub_535: @ 0x0809AF4C
	bx lr
	.align 2, 0

	thumb_func_start sub_0809AF50
sub_0809AF50: @ 0x0809AF50
	push {lr}
	bl nullsub_2
	pop {pc}

	thumb_func_start nullsub_2
nullsub_2: @ 0x0809AF58
	bx lr
	.align 2, 0
