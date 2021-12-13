	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Furniture
Furniture: @ 0x080905A0
	push {lr}
	ldr r2, _080905B4 @ =gUnk_08122218
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080905B4: .4byte gUnk_08122218

	thumb_func_start sub_080905B8
sub_080905B8: @ 0x080905B8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	movs r0, #1
	mov sb, r0
	mov r1, sb
	strb r1, [r7, #0xc]
	movs r5, #0x2e
	ldrsh r2, [r7, r5]
	ldr r6, _08090618 @ =gRoomControls
	ldrh r0, [r6, #6]
	subs r2, r2, r0
	asrs r2, r2, #4
	movs r4, #0x3f
	ands r2, r4
	movs r1, #0x32
	ldrsh r0, [r7, r1]
	ldrh r1, [r6, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r4
	lsls r0, r0, #6
	orrs r2, r0
	adds r5, r7, #0
	adds r5, #0x78
	movs r0, #0
	mov r8, r0
	strh r2, [r5]
	adds r0, r7, #0
	bl sub_08090DC4
	adds r0, r7, #0
	adds r0, #0x82
	ldrh r0, [r0]
	ldr r1, _0809061C @ =0x00007FFF
	ands r1, r0
	cmp r1, #0x80
	beq _08090680
	cmp r1, #0x80
	bgt _08090620
	cmp r1, #0x20
	beq _080906E6
	cmp r1, #0x40
	beq _08090650
	b _080906E0
	.align 2, 0
_08090618: .4byte gRoomControls
_0809061C: .4byte 0x00007FFF
_08090620:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _080906E6
	cmp r1, r0
	bgt _08090636
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08090640
	b _080906E0
_08090636:
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	beq _080906C4
	b _080906E0
_08090640:
	adds r1, r7, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r7, #0
	bl UpdateSpriteForCollisionLayer
	b _080906E6
_08090650:
	ldrh r1, [r7, #0x32]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strh r0, [r7, #0x32]
	ldr r4, _0809067C @ =0x00004017
	ldrh r1, [r5]
	subs r1, #0x80
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	ldrh r1, [r5]
	subs r1, #0x40
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	b _080906E6
	.align 2, 0
_0809067C: .4byte 0x00004017
_08090680:
	mov r1, r8
	strb r1, [r7, #0x1e]
	ldrh r1, [r7, #0x32]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strh r0, [r7, #0x32]
	movs r2, #0x2e
	ldrsh r1, [r7, r2]
	ldrh r0, [r6, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	ands r1, r4
	movs r2, #0x32
	ldrsh r0, [r7, r2]
	ldrh r2, [r6, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r4
	lsls r0, r0, #6
	orrs r1, r0
	strh r1, [r5]
	ldr r0, _080906C0 @ =0x00004026
	ldrh r1, [r5]
	adds r2, r7, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
	b _080906E6
	.align 2, 0
_080906C0: .4byte 0x00004026
_080906C4:
	adds r0, r7, #0
	bl sub_08090E64
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	beq _080906E0
	adds r0, r7, #0
	adds r0, #0x62
	mov r5, sb
	strb r5, [r0]
	adds r1, r7, #0
	adds r1, #0x80
	movs r0, #0x30
	strb r0, [r1]
_080906E0:
	adds r0, r7, #0
	bl sub_08090B6C
_080906E6:
	adds r0, r7, #0
	adds r0, #0x81
	ldrb r1, [r0]
	cmp r1, #0x10
	beq _0809075C
	movs r0, #0x70
	ands r0, r1
	adds r4, r7, #0
	adds r4, #0x78
	cmp r0, #0x20
	beq _0809072E
	cmp r0, #0x30
	bne _0809073A
	ldrh r0, [r4]
	subs r0, #0x40
	strh r0, [r4]
	adds r0, r7, #0
	bl sub_08090B6C
	movs r0, #0x2e
	ldrsh r1, [r7, r0]
	ldr r2, _08090778 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r7, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	strh r1, [r4]
_0809072E:
	ldrh r0, [r4]
	adds r0, #0x40
	strh r0, [r4]
	adds r0, r7, #0
	bl sub_08090B6C
_0809073A:
	movs r0, #0x2e
	ldrsh r1, [r7, r0]
	ldr r2, _08090778 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r7, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	strh r1, [r4]
_0809075C:
	adds r0, r7, #0
	adds r0, #0x82
	ldrh r0, [r0]
	ldr r1, _0809077C @ =0x00007FFF
	ands r1, r0
	cmp r1, #2
	beq _08090780
	cmp r1, #4
	bne _080907C8
	adds r0, r7, #0
	movs r1, #0x7e
	bl ChangeObjPalette
	b _080907C8
	.align 2, 0
_08090778: .4byte gRoomControls
_0809077C: .4byte 0x00007FFF
_08090780:
	adds r0, r7, #0
	adds r0, #0x78
	ldrh r0, [r0]
	adds r4, r0, #0
	subs r4, #0x81
	ldrb r0, [r7, #0xa]
	movs r1, #2
	mov r8, r1
	cmp r0, #0x1a
	beq _08090798
	movs r2, #3
	mov r8, r2
_08090798:
	movs r5, #0
	cmp r5, r8
	bhs _080907C8
	ldr r6, _080907DC @ =0x00004026
_080907A0:
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #2
	bl SetTile
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #1
	bl SetTile
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0
	movs r2, #1
	bl sub_080001D0
	adds r5, #1
	adds r4, #1
	cmp r5, r8
	blo _080907A0
_080907C8:
	ldrb r0, [r7, #0xa]
	subs r0, #1
	cmp r0, #0x3b
	bls _080907D2
	b _080909DC
_080907D2:
	lsls r0, r0, #2
	ldr r1, _080907E0 @ =_080907E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080907DC: .4byte 0x00004026
_080907E0: .4byte _080907E4
_080907E4: @ jump table
	.4byte _080908D4 @ case 0
	.4byte _080909DC @ case 1
	.4byte _080909DC @ case 2
	.4byte _080909DC @ case 3
	.4byte _080909DC @ case 4
	.4byte _080909DC @ case 5
	.4byte _080909DC @ case 6
	.4byte _080909DC @ case 7
	.4byte _080908F0 @ case 8
	.4byte _080909DC @ case 9
	.4byte _080909DC @ case 10
	.4byte _080909DC @ case 11
	.4byte _080909DC @ case 12
	.4byte _080909DC @ case 13
	.4byte _080909DC @ case 14
	.4byte _080909DC @ case 15
	.4byte _080909DC @ case 16
	.4byte _080909DC @ case 17
	.4byte _080909DC @ case 18
	.4byte _080909DC @ case 19
	.4byte _080909DC @ case 20
	.4byte _080909DC @ case 21
	.4byte _080909DC @ case 22
	.4byte _080909DC @ case 23
	.4byte _080909DC @ case 24
	.4byte _080909DC @ case 25
	.4byte _080909DC @ case 26
	.4byte _080909DC @ case 27
	.4byte _080909DC @ case 28
	.4byte _08090920 @ case 29
	.4byte _08090938 @ case 30
	.4byte _080909DC @ case 31
	.4byte _080909DC @ case 32
	.4byte _080909DC @ case 33
	.4byte _080909DC @ case 34
	.4byte _080909DC @ case 35
	.4byte _080909DC @ case 36
	.4byte _080909DC @ case 37
	.4byte _080909DC @ case 38
	.4byte _08090984 @ case 39
	.4byte _080909DC @ case 40
	.4byte _080909DC @ case 41
	.4byte _080909DC @ case 42
	.4byte _080909DC @ case 43
	.4byte _080909DC @ case 44
	.4byte _080909DC @ case 45
	.4byte _080909DC @ case 46
	.4byte _080909DC @ case 47
	.4byte _080909DC @ case 48
	.4byte _080909DC @ case 49
	.4byte _080909DC @ case 50
	.4byte _080909DC @ case 51
	.4byte _080909DC @ case 52
	.4byte _080909DC @ case 53
	.4byte _080909DC @ case 54
	.4byte _080909DC @ case 55
	.4byte _080909DC @ case 56
	.4byte _080909DC @ case 57
	.4byte _08090994 @ case 58
	.4byte _080909C8 @ case 59
_080908D4:
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	bne _080908DC
	b _080909DC
_080908DC:
	adds r2, r7, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	b _080909DC
_080908F0:
	movs r0, #0x4d
	movs r1, #0x3e
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _080909DC
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl PositionRelative
	movs r0, #1
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x11]
	subs r0, #0x11
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x11]
	b _080909DC
_08090920:
	ldr r0, _08090934 @ =0x00000306
	adds r1, r7, #0
	adds r1, #0x78
	ldrh r1, [r1]
	adds r1, #0x41
	movs r2, #2
	bl sub_0807B7D8
	b _080909DC
	.align 2, 0
_08090934: .4byte 0x00000306
_08090938:
	adds r5, r7, #0
	adds r5, #0x38
	movs r0, #1
	strb r0, [r5]
	ldrb r1, [r7, #0x1b]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r7, #0x1b]
	ldr r0, _0809097C @ =0x00004074
	adds r4, r7, #0
	adds r4, #0x78
	ldrh r1, [r4]
	subs r1, #0x40
	ldrb r2, [r5]
	bl SetTile
	ldrh r1, [r4]
	subs r1, #0x40
	ldrb r2, [r5]
	movs r0, #0x3f
	bl sub_080001D0
	ldr r6, _08090980 @ =0x00004017
	ldrh r1, [r4]
	ldrb r2, [r5]
	adds r0, r6, #0
	bl SetTile
	ldrh r1, [r4]
	adds r1, #0x40
	ldrb r2, [r5]
	b _080909BC
	.align 2, 0
_0809097C: .4byte 0x00004074
_08090980: .4byte 0x00004017
_08090984:
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	beq _080909DC
	adds r1, r7, #0
	adds r1, #0x62
	movs r0, #0xfc
	strb r0, [r1]
	b _080909DC
_08090994:
	ldr r6, _080909C4 @ =0x00004023
	adds r5, r7, #0
	adds r5, #0x78
	ldrh r1, [r5]
	subs r1, #0x41
	adds r4, r7, #0
	adds r4, #0x38
	ldrb r2, [r4]
	adds r0, r6, #0
	bl SetTile
	ldrh r1, [r5]
	subs r1, #0x40
	ldrb r2, [r4]
	adds r0, r6, #0
	bl SetTile
	ldrh r1, [r5]
	subs r1, #0x3f
	ldrb r2, [r4]
_080909BC:
	adds r0, r6, #0
	bl SetTile
	b _080909DC
	.align 2, 0
_080909C4: .4byte 0x00004023
_080909C8:
	ldr r0, _080909E4 @ =0x00004022
	adds r1, r7, #0
	adds r1, #0x78
	ldrh r1, [r1]
	adds r1, #0x41
	adds r2, r7, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
_080909DC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080909E4: .4byte 0x00004022

	thumb_func_start sub_080909E8
sub_080909E8: @ 0x080909E8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x82
	ldrh r0, [r0]
	ldr r1, _08090A04 @ =0x00007FFF
	ands r1, r0
	cmp r1, #8
	beq _08090A42
	cmp r1, #8
	bgt _08090A08
	cmp r1, #1
	beq _08090A12
	b _08090B60
	.align 2, 0
_08090A04: .4byte 0x00007FFF
_08090A08:
	cmp r1, #0x10
	beq _08090A68
	cmp r1, #0x80
	beq _08090AB0
	b _08090B60
_08090A12:
	ldr r2, _08090A34 @ =gPlayerEntity
	movs r0, #0x32
	ldrsh r1, [r2, r0]
	movs r3, #0x32
	ldrsh r0, [r5, r3]
	cmp r1, r0
	blt _08090A26
	adds r0, #0x18
	cmp r1, r0
	ble _08090A38
_08090A26:
	ldrb r0, [r5, #0x19]
	movs r1, #0x3f
	ands r1, r0
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r5, #0x19]
	b _08090B60
	.align 2, 0
_08090A34: .4byte gPlayerEntity
_08090A38:
	ldrb r0, [r5, #0x19]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r5, #0x19]
	b _08090B60
_08090A42:
	ldrb r0, [r5, #0xe]
	adds r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	beq _08090A52
	b _08090B60
_08090A52:
	movs r0, #0
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0xf]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	bl sub_08090E4C
	b _08090B60
_08090A68:
	ldrb r0, [r5, #0xa]
	cmp r0, #0x3e
	beq _08090A8C
	ldrb r0, [r5, #0xe]
	adds r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x14
	bne _08090B60
	ldrb r0, [r5, #0x1e]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r5, #0x1e]
	movs r0, #0
	strb r0, [r5, #0xe]
	b _08090B60
_08090A8C:
	ldrb r0, [r5, #0xe]
	adds r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bne _08090B60
	movs r0, #0
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0xf]
	adds r0, #1
	movs r1, #3
	bl __modsi3
	strb r0, [r5, #0xf]
	adds r0, #1
	strb r0, [r5, #0x1e]
	b _08090B60
_08090AB0:
	ldr r2, _08090B00 @ =gPlayerEntity
	movs r3, #0x32
	ldrsh r1, [r2, r3]
	movs r3, #0x32
	ldrsh r0, [r5, r3]
	adds r0, #8
	cmp r1, r0
	bge _08090B14
	ldr r0, _08090B04 @ =gPlayerState
	ldrb r0, [r0, #0x12]
	cmp r0, #0x1e
	beq _08090B60
	adds r0, r5, #0
	bl GetTileTypeByEntity
	ldr r1, _08090B08 @ =0x00004017
	cmp r0, r1
	bne _08090B60
	ldr r0, _08090B0C @ =0x00004026
	adds r4, r5, #0
	adds r4, #0x78
	ldrh r1, [r4]
	adds r5, #0x38
	ldrb r2, [r5]
	bl SetTile
	ldr r6, _08090B10 @ =0x0000403D
	ldrh r1, [r4]
	subs r1, #0x40
	ldrb r2, [r5]
	adds r0, r6, #0
	bl SetTile
	ldrh r1, [r4]
	subs r1, #0x80
	ldrb r2, [r5]
	adds r0, r6, #0
	bl SetTile
	b _08090B60
	.align 2, 0
_08090B00: .4byte gPlayerEntity
_08090B04: .4byte gPlayerState
_08090B08: .4byte 0x00004017
_08090B0C: .4byte 0x00004026
_08090B10: .4byte 0x0000403D
_08090B14:
	adds r3, r2, #0
	adds r3, #0x38
	ldrb r1, [r3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08090B2C
	movs r0, #1
	strb r0, [r3]
	adds r0, r2, #0
	bl UpdateSpriteForCollisionLayer
_08090B2C:
	adds r0, r5, #0
	bl GetTileTypeByEntity
	ldr r6, _08090B64 @ =0x00004017
	cmp r0, r6
	beq _08090B60
	adds r4, r5, #0
	adds r4, #0x78
	ldrh r1, [r4]
	adds r5, #0x38
	ldrb r2, [r5]
	adds r0, r6, #0
	bl SetTile
	ldrh r1, [r4]
	subs r1, #0x40
	ldrb r2, [r5]
	adds r0, r6, #0
	bl SetTile
	ldr r0, _08090B68 @ =0x00004014
	ldrh r1, [r4]
	subs r1, #0x80
	ldrb r2, [r5]
	bl SetTile
_08090B60:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08090B64: .4byte 0x00004017
_08090B68: .4byte 0x00004014

	thumb_func_start sub_08090B6C
sub_08090B6C: @ 0x08090B6C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r1, r0, #0
	adds r0, #0x80
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08090B80
	b _08090CD2
_08090B80:
	lsrs r0, r0, #0x1b
	lsls r2, r0, #0x18
	lsrs r3, r2, #0x18
	ldrh r0, [r1, #0x2e]
	movs r4, #0xf
	mov r8, r4
	ands r4, r0
	mov r8, r4
	adds r0, r1, #0
	adds r0, #0x78
	ldrh r6, [r0]
	subs r0, #0x40
	ldrb r7, [r0]
	movs r0, #3
	ands r0, r3
	cmp r0, #1
	beq _08090BF8
	cmp r0, #1
	blo _08090BB0
	cmp r0, #2
	beq _08090C48
	cmp r0, #3
	beq _08090C90
	b _08090CD2
_08090BB0:
	lsrs r5, r2, #0x1b
	cmp r3, #0xc
	bne _08090BB8
	movs r5, #2
_08090BB8:
	rsbs r4, r5, #0
	cmp r4, r5
	bgt _08090BCE
_08090BBE:
	adds r1, r6, r4
	ldr r0, _08090BE4 @ =0x00004022
	adds r2, r7, #0
	bl SetTile
	adds r4, #1
	cmp r4, r5
	ble _08090BBE
_08090BCE:
	movs r0, #8
	mov r1, r8
	ands r1, r0
	cmp r1, #0
	beq _08090BEC
	ldr r0, _08090BE8 @ =0x00004024
	subs r1, r6, r4
	adds r2, r7, #0
	bl sub_08090CDC
	b _08090CB2
	.align 2, 0
_08090BE4: .4byte 0x00004022
_08090BE8: .4byte 0x00004024
_08090BEC:
	ldr r0, _08090BF4 @ =0x00004022
	subs r1, r6, r4
	b _08090C6E
	.align 2, 0
_08090BF4: .4byte 0x00004022
_08090BF8:
	lsrs r5, r2, #0x1b
	rsbs r4, r5, #0
	cmp r4, r5
	bgt _08090C10
_08090C00:
	adds r1, r6, r4
	ldr r0, _08090C2C @ =0x00004022
	adds r2, r7, #0
	bl SetTile
	adds r4, #1
	cmp r4, r5
	ble _08090C00
_08090C10:
	movs r0, #8
	mov r1, r8
	ands r1, r0
	cmp r1, #0
	beq _08090C34
	ldr r0, _08090C30 @ =0x00004024
	subs r1, r6, r4
	adds r2, r7, #0
	bl sub_08090CDC
	cmp r4, #0
	beq _08090CD2
	b _08090C6A
	.align 2, 0
_08090C2C: .4byte 0x00004022
_08090C30: .4byte 0x00004024
_08090C34:
	cmp r4, #0
	beq _08090CB2
	ldr r0, _08090C44 @ =0x00004022
	subs r1, r6, r4
	adds r2, r7, #0
	bl SetTile
	b _08090CB2
	.align 2, 0
_08090C44: .4byte 0x00004022
_08090C48:
	lsrs r5, r2, #0x1a
	rsbs r4, r5, #0
	cmp r4, r5
	bge _08090C60
_08090C50:
	adds r1, r6, r4
	ldr r0, _08090C78 @ =0x00004022
	adds r2, r7, #0
	bl SetTile
	adds r4, #1
	cmp r4, r5
	blt _08090C50
_08090C60:
	movs r0, #8
	mov r1, r8
	ands r1, r0
	cmp r1, #0
	beq _08090C7C
_08090C6A:
	ldr r0, _08090C78 @ =0x00004022
	adds r1, r6, r4
_08090C6E:
	adds r2, r7, #0
	bl SetTile
	b _08090CD2
	.align 2, 0
_08090C78: .4byte 0x00004022
_08090C7C:
	ldr r0, _08090C8C @ =0x00004024
	subs r1, r6, r4
	subs r1, #1
	adds r2, r7, #0
	bl sub_08090CDC
	b _08090CB2
	.align 2, 0
_08090C8C: .4byte 0x00004024
_08090C90:
	lsrs r5, r2, #0x1a
	rsbs r4, r5, #0
	cmp r4, r5
	bgt _08090CA8
_08090C98:
	adds r1, r6, r4
	ldr r0, _08090CC0 @ =0x00004022
	adds r2, r7, #0
	bl SetTile
	adds r4, #1
	cmp r4, r5
	ble _08090C98
_08090CA8:
	movs r0, #8
	mov r1, r8
	ands r1, r0
	cmp r1, #0
	beq _08090CC8
_08090CB2:
	ldr r0, _08090CC4 @ =0x00004025
	adds r1, r6, r4
	adds r2, r7, #0
	bl sub_08090CDC
	b _08090CD2
	.align 2, 0
_08090CC0: .4byte 0x00004022
_08090CC4: .4byte 0x00004025
_08090CC8:
	ldr r0, _08090CD8 @ =0x00004024
	subs r1, r6, r4
	adds r2, r7, #0
	bl sub_08090CDC
_08090CD2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08090CD8: .4byte 0x00004024

	thumb_func_start sub_08090CDC
sub_08090CDC: @ 0x08090CDC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080001DA
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r2
	cmp r0, #0
	bne _08090D06
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl SetTile
	b _08090DB2
_08090D06:
	ldr r1, _08090D18 @ =0xFFFFBFDE
	adds r0, r2, r1
	cmp r0, #0xb
	bhi _08090DB2
	lsls r0, r0, #2
	ldr r1, _08090D1C @ =_08090D20
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08090D18: .4byte 0xFFFFBFDE
_08090D1C: .4byte _08090D20
_08090D20: @ jump table
	.4byte _08090DB2 @ case 0
	.4byte _08090DB2 @ case 1
	.4byte _08090D80 @ case 2
	.4byte _08090D50 @ case 3
	.4byte _08090DB2 @ case 4
	.4byte _08090DB2 @ case 5
	.4byte _08090DB2 @ case 6
	.4byte _08090DB2 @ case 7
	.4byte _08090DB2 @ case 8
	.4byte _08090DB2 @ case 9
	.4byte _08090D98 @ case 10
	.4byte _08090D68 @ case 11
_08090D50:
	ldr r0, _08090D5C @ =0x00004024
	cmp r4, r0
	bne _08090D58
	ldr r2, _08090D60 @ =0x00004022
_08090D58:
	ldr r0, _08090D64 @ =0x0000402C
	b _08090DA2
	.align 2, 0
_08090D5C: .4byte 0x00004024
_08090D60: .4byte 0x00004022
_08090D64: .4byte 0x0000402C
_08090D68:
	ldr r0, _08090D74 @ =0x0000402C
	cmp r4, r0
	bne _08090D70
	ldr r2, _08090D78 @ =0x0000402B
_08090D70:
	ldr r0, _08090D7C @ =0x00004024
	b _08090DA2
	.align 2, 0
_08090D74: .4byte 0x0000402C
_08090D78: .4byte 0x0000402B
_08090D7C: .4byte 0x00004024
_08090D80:
	ldr r0, _08090D8C @ =0x00004025
	cmp r4, r0
	bne _08090D88
	ldr r2, _08090D90 @ =0x00004022
_08090D88:
	ldr r0, _08090D94 @ =0x0000402D
	b _08090DA2
	.align 2, 0
_08090D8C: .4byte 0x00004025
_08090D90: .4byte 0x00004022
_08090D94: .4byte 0x0000402D
_08090D98:
	ldr r0, _08090DB4 @ =0x0000402D
	cmp r4, r0
	bne _08090DA0
	ldr r2, _08090DB8 @ =0x0000402B
_08090DA0:
	ldr r0, _08090DBC @ =0x00004025
_08090DA2:
	cmp r4, r0
	bne _08090DA8
	ldr r2, _08090DC0 @ =0x00004022
_08090DA8:
	adds r0, r2, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl SetTile
_08090DB2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08090DB4: .4byte 0x0000402D
_08090DB8: .4byte 0x0000402B
_08090DBC: .4byte 0x00004025
_08090DC0: .4byte 0x00004022

	thumb_func_start sub_08090DC4
sub_08090DC4: @ 0x08090DC4
	push {r4, lr}
	mov ip, r0
	ldrb r0, [r0, #0xa]
	lsls r0, r0, #3
	ldr r1, _08090E44 @ =gUnk_08121EF8
	adds r3, r0, r1
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08090DF4
	ldr r1, _08090E48 @ =gUnk_08122220
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	mov r0, ip
	ldrb r1, [r0, #0xb]
	lsls r0, r1, #3
	adds r3, r3, r0
	mov r0, ip
	strb r1, [r0, #0x1e]
_08090DF4:
	ldrb r1, [r3]
	mov r0, ip
	adds r0, #0x80
	strb r1, [r0]
	ldrb r0, [r3, #1]
	mov r1, ip
	adds r1, #0x81
	strb r0, [r1]
	ldrb r0, [r3, #2]
	subs r1, #0x1f
	strb r0, [r1]
	ldrb r0, [r3, #3]
	adds r1, #1
	strb r0, [r1]
	ldrb r1, [r3, #4]
	lsls r1, r1, #6
	mov r0, ip
	ldrb r2, [r0, #0x19]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #0x19]
	ldrb r0, [r3, #5]
	mov r4, ip
	adds r4, #0x29
	movs r1, #7
	ands r1, r0
	ldrb r2, [r4]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldrh r1, [r3, #6]
	mov r0, ip
	adds r0, #0x82
	strh r1, [r0]
	pop {r4, pc}
	.align 2, 0
_08090E44: .4byte gUnk_08121EF8
_08090E48: .4byte gUnk_08122220

	thumb_func_start sub_08090E4C
sub_08090E4C: @ 0x08090E4C
	push {lr}
	ldr r2, _08090E60 @ =gUnk_08122244
	ldrb r1, [r0, #0xf]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl ChangeObjPalette
	pop {pc}
	.align 2, 0
_08090E60: .4byte gUnk_08122244

	thumb_func_start sub_08090E64
sub_08090E64: @ 0x08090E64
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x2a
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08090EA0
	ldr r0, _08090EA4 @ =0x0000FFFE
	adds r2, r0, #0
	ldrb r0, [r5, #0xb]
	adds r2, r2, r0
	lsls r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0
	bl PositionRelative
	ldrh r0, [r4, #0x36]
	subs r0, #0x10
	strh r0, [r4, #0x36]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
_08090EA0:
	pop {r4, r5, pc}
	.align 2, 0
_08090EA4: .4byte 0x0000FFFE
