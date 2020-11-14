	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0807B9B8
sub_0807B9B8: @ 0x0807B9B8
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl DeleteLoadedTileEntity
	adds r0, r6, #0
	bl GetLayerByIndex
	adds r5, r0, #0
	lsls r1, r4, #1
	adds r0, r5, #4
	adds r0, r0, r1
	strh r7, [r0]
	lsls r1, r7, #1
	ldr r2, _0807BA24 @ =0x00005004
	adds r0, r5, r2
	adds r0, r0, r1
	ldrh r2, [r0]
	ldr r0, _0807BA28 @ =0x00002004
	adds r1, r5, r0
	adds r1, r1, r4
	ldr r0, _0807BA2C @ =gUnk_080B3E80
	adds r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0807BA30 @ =0x0000B004
	adds r1, r5, r0
	adds r1, r1, r4
	ldr r0, _0807BA34 @ =gUnk_080B37A0
	adds r2, r2, r0
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r0, _0807BA38 @ =gRoomControls
	ldrb r1, [r0, #0xf]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807BA78
	movs r1, #0x3f
	ands r1, r4
	lsls r1, r1, #1
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r4
	lsls r0, r0, #2
	adds r1, r1, r0
	cmp r6, #2
	beq _0807BA40
	lsls r1, r1, #1
	ldr r0, _0807BA3C @ =gUnk_02019EE0
	b _0807BA44
	.align 2, 0
_0807BA24: .4byte 0x00005004
_0807BA28: .4byte 0x00002004
_0807BA2C: .4byte gUnk_080B3E80
_0807BA30: .4byte 0x0000B004
_0807BA34: .4byte gUnk_080B37A0
_0807BA38: .4byte gRoomControls
_0807BA3C: .4byte gUnk_02019EE0
_0807BA40:
	lsls r1, r1, #1
	ldr r0, _0807BA7C @ =gMapDataTopSpecial
_0807BA44:
	adds r3, r1, r0
	lsls r0, r7, #3
	ldr r1, _0807BA80 @ =0x00007004
	adds r0, r0, r1
	adds r0, r5, r0
	ldrh r1, [r0]
	strh r1, [r3]
	ldrh r1, [r0, #2]
	strh r1, [r3, #2]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r3, r1
	ldrh r1, [r0, #4]
	strh r1, [r2]
	movs r2, #0x81
	lsls r2, r2, #1
	adds r1, r3, r2
	ldrh r0, [r0, #6]
	strh r0, [r1]
	ldr r0, _0807BA84 @ =gRoomControls
	ldrh r0, [r0]
	cmp r0, #1
	beq _0807BA78
	ldr r1, _0807BA88 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
_0807BA78:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807BA7C: .4byte gMapDataTopSpecial
_0807BA80: .4byte 0x00007004
_0807BA84: .4byte gRoomControls
_0807BA88: .4byte gUnk_02000070

	thumb_func_start sub_0807BA8C
sub_0807BA8C: @ 0x0807BA8C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	bl DeleteLoadedTileEntity
	adds r0, r7, #0
	bl GetLayerByIndex
	adds r5, r0, #0
	lsls r2, r4, #1
	adds r1, r5, #4
	adds r1, r1, r2
	ldr r3, _0807BAFC @ =0x00003004
	adds r0, r5, r3
	adds r0, r0, r2
	ldrh r6, [r0]
	strh r6, [r1]
	lsls r1, r6, #1
	ldr r2, _0807BB00 @ =0x00005004
	adds r0, r5, r2
	adds r0, r0, r1
	ldrh r2, [r0]
	ldr r3, _0807BB04 @ =0x00002004
	adds r1, r5, r3
	adds r1, r1, r4
	ldr r0, _0807BB08 @ =gUnk_080B3E80
	adds r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0807BB0C @ =0x0000B004
	adds r1, r5, r0
	adds r1, r1, r4
	ldr r0, _0807BB10 @ =gUnk_080B37A0
	adds r2, r2, r0
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r0, _0807BB14 @ =gRoomControls
	ldrb r1, [r0, #0xf]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807BB54
	movs r1, #0x3f
	ands r1, r4
	lsls r1, r1, #1
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r4
	lsls r0, r0, #2
	adds r1, r1, r0
	cmp r7, #2
	beq _0807BB1C
	lsls r1, r1, #1
	ldr r0, _0807BB18 @ =gUnk_02019EE0
	b _0807BB20
	.align 2, 0
_0807BAFC: .4byte 0x00003004
_0807BB00: .4byte 0x00005004
_0807BB04: .4byte 0x00002004
_0807BB08: .4byte gUnk_080B3E80
_0807BB0C: .4byte 0x0000B004
_0807BB10: .4byte gUnk_080B37A0
_0807BB14: .4byte gRoomControls
_0807BB18: .4byte gUnk_02019EE0
_0807BB1C:
	lsls r1, r1, #1
	ldr r0, _0807BB58 @ =gMapDataTopSpecial
_0807BB20:
	adds r3, r1, r0
	lsls r0, r6, #3
	ldr r1, _0807BB5C @ =0x00007004
	adds r0, r0, r1
	adds r0, r5, r0
	ldrh r1, [r0]
	strh r1, [r3]
	ldrh r1, [r0, #2]
	strh r1, [r3, #2]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r3, r1
	ldrh r1, [r0, #4]
	strh r1, [r2]
	movs r2, #0x81
	lsls r2, r2, #1
	adds r1, r3, r2
	ldrh r0, [r0, #6]
	strh r0, [r1]
	ldr r0, _0807BB60 @ =gRoomControls
	ldrh r0, [r0]
	cmp r0, #1
	beq _0807BB54
	ldr r1, _0807BB64 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
_0807BB54:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807BB58: .4byte gMapDataTopSpecial
_0807BB5C: .4byte 0x00007004
_0807BB60: .4byte gRoomControls
_0807BB64: .4byte gUnk_02000070

	thumb_func_start sub_0807BB68
sub_0807BB68: @ 0x0807BB68
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0807BB96
	adds r7, r1, #0
_0807BB7E:
	ldrh r0, [r4]
	movs r2, #2
	ldrsh r1, [r4, r2]
	adds r1, r6, r1
	adds r2, r5, #0
	bl SetTileType
	adds r4, #4
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, r7
	bne _0807BB7E
_0807BB96:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0807BB98
sub_0807BB98: @ 0x0807BB98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	mov sl, r1
	mov r8, r2
	mov sb, r3
	movs r0, #0
	cmp r0, sb
	bhs _0807BBD4
_0807BBB0:
	movs r4, #0
	adds r7, r5, #0
	adds r7, #0x40
	adds r6, r0, #1
	cmp r4, r8
	bhs _0807BBCC
_0807BBBC:
	adds r1, r5, r4
	ldr r0, _0807BBE0 @ =0x00004072
	mov r2, sl
	bl SetTile
	adds r4, #1
	cmp r4, r8
	blo _0807BBBC
_0807BBCC:
	adds r5, r7, #0
	adds r0, r6, #0
	cmp r0, sb
	blo _0807BBB0
_0807BBD4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807BBE0: .4byte 0x00004072

	thumb_func_start sub_0807BBE4
sub_0807BBE4: @ 0x0807BBE4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0807BC28 @ =gMetatileTypesBottom
	mov sl, r0
	ldr r0, _0807BC2C @ =gMetatileTypesTop
	mov sb, r0
	ldr r5, _0807BC30 @ =0xFFFFB000
	add r5, sl
	ldr r4, _0807BC30 @ =0xFFFFB000
	add r4, sb
	ldr r2, _0807BC34 @ =0xFFFFD000
	add r2, sl
	ldr r1, _0807BC34 @ =0xFFFFD000
	add r1, sb
	movs r3, #0
	ldr r0, _0807BC38 @ =0x00003FFF
	mov r8, r0
	ldr r0, _0807BC3C @ =gUnk_080B3E80
	mov ip, r0
	ldr r7, _0807BC40 @ =gUnk_080B79A7
	ldr r6, _0807BC44 @ =0xFFFFC000
_0807BC14:
	ldrh r0, [r5]
	adds r5, #2
	cmp r0, r8
	bhi _0807BC48
	lsls r0, r0, #1
	add r0, sl
	ldrh r0, [r0]
	add r0, ip
	b _0807BC4C
	.align 2, 0
_0807BC28: .4byte gMetatileTypesBottom
_0807BC2C: .4byte gMetatileTypesTop
_0807BC30: .4byte 0xFFFFB000
_0807BC34: .4byte 0xFFFFD000
_0807BC38: .4byte 0x00003FFF
_0807BC3C: .4byte gUnk_080B3E80
_0807BC40: .4byte gUnk_080B79A7
_0807BC44: .4byte 0xFFFFC000
_0807BC48:
	adds r0, r0, r6
	adds r0, r0, r7
_0807BC4C:
	ldrb r0, [r0]
	strb r0, [r2]
	adds r2, #1
	ldrh r0, [r4]
	adds r4, #2
	cmp r0, r8
	bhi _0807BC64
	lsls r0, r0, #1
	add r0, sb
	ldrh r0, [r0]
	add r0, ip
	b _0807BC68
_0807BC64:
	adds r0, r0, r6
	adds r0, r0, r7
_0807BC68:
	ldrb r0, [r0]
	strb r0, [r1]
	adds r1, #1
	adds r3, #1
	ldr r0, _0807BC80 @ =0x00000FFF
	cmp r3, r0
	bls _0807BC14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807BC80: .4byte 0x00000FFF

	thumb_func_start sub_0807BC84
sub_0807BC84: @ 0x0807BC84
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _0807BD04 @ =gRoomControls
	ldrh r0, [r1, #0x1e]
	lsrs r2, r0, #4
	mov r8, r1
	cmp r2, #0x40
	bne _0807BC98
	movs r2, #0x3f
_0807BC98:
	ldr r1, _0807BD08 @ =gUnk_02027EB4
	adds r3, r2, r1
	adds r6, r1, #0
	adds r6, #0x3f
	ldr r0, _0807BD0C @ =gUnk_0200D654
	adds r2, r2, r0
	adds r5, r0, #0
	adds r5, #0x3f
	movs r4, #0
	adds r7, r1, #0
	mov ip, r0
	movs r0, #0xff
_0807BCB0:
	strb r0, [r3]
	strb r0, [r6]
	strb r0, [r2]
	strb r0, [r5]
	adds r3, #0x40
	adds r6, #0x40
	adds r2, #0x40
	adds r5, #0x40
	adds r4, #1
	cmp r4, #0x3f
	bls _0807BCB0
	mov r0, r8
	ldrh r1, [r0, #0x20]
	ldr r0, _0807BD10 @ =0x0000FFF0
	ands r0, r1
	lsls r0, r0, #2
	adds r3, r0, r7
	movs r1, #0xfc
	lsls r1, r1, #4
	adds r6, r7, r1
	mov r1, ip
	adds r2, r0, r1
	movs r5, #0xfc
	lsls r5, r5, #4
	add r5, ip
	movs r4, #0
	movs r0, #0xff
_0807BCE6:
	strb r0, [r3]
	adds r3, #1
	strb r0, [r6]
	adds r6, #1
	strb r0, [r2]
	adds r2, #1
	strb r0, [r5]
	adds r5, #1
	adds r4, #1
	cmp r4, #0x3f
	bls _0807BCE6
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807BD04: .4byte gRoomControls
_0807BD08: .4byte gUnk_02027EB4
_0807BD0C: .4byte gUnk_0200D654
_0807BD10: .4byte 0x0000FFF0

	thumb_func_start sub_0807BD14
sub_0807BD14: @ 0x0807BD14
	push {r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0x2e
	ldrsh r2, [r0, r1]
	movs r3, #0x32
	ldrsh r1, [r0, r3]
	adds r0, r2, #0
	adds r2, r5, #0
	bl sub_0807BEEC
	adds r3, r0, #0
	cmp r3, #0xff
	beq _0807BDB4
	ldr r1, _0807BD68 @ =gRoomControls
	movs r2, #0
	movs r0, #2
	strb r0, [r1, #2]
	strb r2, [r1, #3]
	movs r4, #1
	strh r4, [r1]
	strb r3, [r1, #5]
	strb r5, [r1, #0x10]
	bl sub_08052E8C
	adds r2, r0, #0
	ldr r1, _0807BD6C @ =gArea
	ldr r3, _0807BD70 @ =0x0000085C
	adds r0, r1, r3
	str r2, [r0]
	ldrb r0, [r1, #0xd]
	ands r4, r0
	cmp r4, #0
	beq _0807BD98
	cmp r5, #1
	beq _0807BD7E
	cmp r5, #1
	blo _0807BD74
	cmp r5, #2
	beq _0807BD86
	cmp r5, #3
	beq _0807BD90
	b _0807BD98
	.align 2, 0
_0807BD68: .4byte gRoomControls
_0807BD6C: .4byte gArea
_0807BD70: .4byte 0x0000085C
_0807BD74:
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r2, #6]
	b _0807BD98
_0807BD7E:
	ldrh r0, [r2]
	ldrh r1, [r2, #4]
	adds r0, r0, r1
	b _0807BD96
_0807BD86:
	ldrh r0, [r2, #2]
	ldrh r3, [r2, #6]
	adds r0, r0, r3
	strh r0, [r2, #6]
	b _0807BD98
_0807BD90:
	ldrh r0, [r2, #4]
	ldrh r1, [r2]
	subs r0, r0, r1
_0807BD96:
	strh r0, [r2, #4]
_0807BD98:
	ldr r2, _0807BDB0 @ =gPlayerEntity
	ldrb r1, [r2, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2, #0x11]
	bl sub_0805E5A8
	movs r0, #1
	b _0807BDB6
	.align 2, 0
_0807BDB0: .4byte gPlayerEntity
_0807BDB4:
	movs r0, #0
_0807BDB6:
	pop {r4, r5, pc}

	thumb_func_start sub_0807BDB8
sub_0807BDB8: @ 0x0807BDB8
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

	thumb_func_start sub_0807BEEC
sub_0807BEEC: @ 0x0807BEEC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _0807BF04 @ =gArea
	ldrb r1, [r0, #0xd]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0807BF0C
	ldr r0, _0807BF08 @ =gRoomControls
	ldrb r0, [r0, #5]
	b _0807BF7C
	.align 2, 0
_0807BF04: .4byte gArea
_0807BF08: .4byte gRoomControls
_0807BF0C:
	cmp r2, #1
	beq _0807BF2C
	cmp r2, #1
	blo _0807BF1E
	cmp r2, #2
	beq _0807BF40
	cmp r2, #3
	beq _0807BF58
	b _0807BF7A
_0807BF1E:
	ldr r0, _0807BF28 @ =gRoomControls
	ldrh r0, [r0, #8]
	adds r7, r0, #0
	subs r7, #0x10
	b _0807BF60
	.align 2, 0
_0807BF28: .4byte gRoomControls
_0807BF2C:
	ldr r0, _0807BF3C @ =gRoomControls
	ldrh r1, [r0, #6]
	ldrh r0, [r0, #0x1e]
	adds r1, r1, r0
	adds r6, r1, #0
	adds r6, #0x10
	b _0807BF60
	.align 2, 0
_0807BF3C: .4byte gRoomControls
_0807BF40:
	ldr r0, _0807BF50 @ =gRoomControls
	ldrh r1, [r0, #8]
	ldrh r0, [r0, #0x20]
	adds r1, r1, r0
	adds r7, r1, #0
	adds r7, #0x10
	b _0807BF60
	.align 2, 0
_0807BF50: .4byte gRoomControls
_0807BF54:
	adds r0, r4, #0
	b _0807BF7C
_0807BF58:
	ldr r0, _0807BF80 @ =gRoomControls
	ldrh r0, [r0, #6]
	adds r6, r0, #0
	subs r6, #0x10
_0807BF60:
	ldr r5, _0807BF84 @ =gUnk_02033ACC
	movs r4, #0
_0807BF64:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_0807BF88
	cmp r0, #0
	bne _0807BF54
	adds r4, #1
	adds r5, #0x20
	cmp r4, #0x3f
	bls _0807BF64
_0807BF7A:
	movs r0, #0xff
_0807BF7C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807BF80: .4byte gRoomControls
_0807BF84: .4byte gUnk_02033ACC

	thumb_func_start sub_0807BF88
sub_0807BF88: @ 0x0807BF88
	push {r4, lr}
	adds r3, r2, #0
	ldrh r2, [r3, #4]
	subs r0, r0, r2
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	movs r2, #0
	ldrh r4, [r3]
	cmp r0, r4
	bhs _0807BFA4
	ldrh r3, [r3, #2]
	cmp r1, r3
	bhs _0807BFA4
	movs r2, #1
_0807BFA4:
	adds r0, r2, #0
	pop {r4, pc}

	thumb_func_start sub_0807BFA8
sub_0807BFA8: @ 0x0807BFA8
	ldr r2, _0807BFC4 @ =gRoomControls
	ldr r0, _0807BFC8 @ =gArea
	ldr r1, _0807BFCC @ =0x0000085C
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	strh r0, [r2, #6]
	ldrh r0, [r1, #6]
	strh r0, [r2, #8]
	ldrh r0, [r1]
	strh r0, [r2, #0x1e]
	ldrh r0, [r1, #2]
	strh r0, [r2, #0x20]
	bx lr
	.align 2, 0
_0807BFC4: .4byte gRoomControls
_0807BFC8: .4byte gArea
_0807BFCC: .4byte 0x0000085C

	thumb_func_start sub_0807BFD0
sub_0807BFD0: @ 0x0807BFD0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_0801B170
	bl sub_0807BFA8
	ldr r7, _0807C0B8 @ =0x0000FFFF
	ldr r6, _0807C0BC @ =gMetatileTypesBottom
	movs r0, #0x80
	lsls r0, r0, #5
	mov r8, r0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, r8
	bl _DmaFill16
	movs r5, #0
	strh r5, [r6]
	ldr r4, _0807C0C0 @ =gMetatileTypesTop
	adds r0, r7, #0
	adds r1, r4, #0
	mov r2, r8
	bl _DmaFill16
	strh r5, [r4]
	ldr r2, _0807C0C4 @ =gRoomControls
	ldr r0, _0807C0C8 @ =gArea
	ldr r1, _0807C0CC @ =0x0000085C
	adds r4, r0, r1
	ldr r0, [r4]
	ldr r1, [r2, #0x34]
	ldr r0, [r0, #8]
	cmp r1, r0
	beq _0807C01C
	str r0, [r2, #0x34]
	bl sub_080197D4
_0807C01C:
	ldr r0, [r4]
	ldr r0, [r0, #0x10]
	bl sub_080197D4
	ldr r1, _0807C0D0 @ =gPaletteBuffer
	adds r0, r1, #0
	adds r0, #0x60
	movs r2, #0xa8
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0x20
	bl _DmaCopy
	ldr r2, _0807C0D4 @ =gUsedPalettes
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2]
	ldr r0, [r4]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _0807C04E
	bl sub_0801B130
_0807C04E:
	adds r5, r6, #0
	movs r0, #0x80
	lsls r0, r0, #5
	adds r6, r5, r0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, r8
	bl _DmaFill16
	movs r2, #0
	ldr r3, _0807C0D8 @ =0x000007FF
	adds r4, r7, #0
_0807C066:
	ldrh r0, [r5]
	cmp r0, r3
	bhi _0807C078
	lsls r0, r0, #1
	adds r1, r0, r6
	ldrh r0, [r1]
	cmp r0, r4
	bne _0807C078
	strh r2, [r1]
_0807C078:
	adds r2, #1
	adds r5, #2
	cmp r2, r3
	ble _0807C066
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r5, _0807C0C0 @ =gMetatileTypesTop
	adds r6, r5, r2
	ldr r4, _0807C0B8 @ =0x0000FFFF
	adds r0, r4, #0
	adds r1, r6, #0
	bl _DmaFill16
	movs r2, #0
	ldr r3, _0807C0D8 @ =0x000007FF
_0807C096:
	ldrh r0, [r5]
	cmp r0, r3
	bhi _0807C0A8
	lsls r0, r0, #1
	adds r1, r0, r6
	ldrh r0, [r1]
	cmp r0, r4
	bne _0807C0A8
	strh r2, [r1]
_0807C0A8:
	adds r2, #1
	adds r5, #2
	cmp r2, r3
	ble _0807C096
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807C0B8: .4byte 0x0000FFFF
_0807C0BC: .4byte gMetatileTypesBottom
_0807C0C0: .4byte gMetatileTypesTop
_0807C0C4: .4byte gRoomControls
_0807C0C8: .4byte gArea
_0807C0CC: .4byte 0x0000085C
_0807C0D0: .4byte gPaletteBuffer
_0807C0D4: .4byte gUsedPalettes
_0807C0D8: .4byte 0x000007FF

	thumb_func_start sub_0807C0DC
sub_0807C0DC: @ 0x0807C0DC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	bl sub_0807BFA8
	ldr r7, _0807C158 @ =gRoomControls
	ldrb r1, [r7, #0xf]
	movs r0, #0xfc
	ands r0, r1
	strb r0, [r7, #0xf]
	ldr r5, _0807C15C @ =gMapDataTop
	movs r6, #0x80
	lsls r6, r6, #6
	adds r0, r5, #0
	adds r1, r6, #0
	bl _DmaZero
	adds r0, r5, r6
	movs r1, #0x80
	lsls r1, r1, #5
	bl _DmaZero
	ldr r0, _0807C160 @ =gUnk_02019EE0
	movs r4, #0x80
	lsls r4, r4, #8
	adds r1, r4, #0
	bl _DmaZero
	ldr r0, _0807C164 @ =gMapDataTopSpecial
	adds r1, r4, #0
	bl _DmaZero
	ldr r0, _0807C168 @ =gArea
	ldr r1, _0807C16C @ =0x0000085C
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bl sub_080197D4
	ldr r2, _0807C170 @ =gUnk_02025EB0
	ldrh r1, [r2, #4]
	ldr r0, _0807C174 @ =0x0000FFFF
	cmp r1, r0
	beq _0807C178
	adds r0, r2, #4
	ldrh r1, [r7, #0x1e]
	lsrs r1, r1, #4
	ldrh r2, [r7, #0x20]
	lsrs r2, r2, #4
	bl sub_0807C8B0
	ldrh r1, [r7, #0x1e]
	lsrs r1, r1, #4
	ldrh r2, [r7, #0x20]
	lsrs r2, r2, #4
	adds r0, r5, #0
	bl sub_0807C8B0
	movs r2, #0
	mov sb, r2
	b _0807C184
	.align 2, 0
_0807C158: .4byte gRoomControls
_0807C15C: .4byte gMapDataTop
_0807C160: .4byte gUnk_02019EE0
_0807C164: .4byte gMapDataTopSpecial
_0807C168: .4byte gArea
_0807C16C: .4byte 0x0000085C
_0807C170: .4byte gUnk_02025EB0
_0807C174: .4byte 0x0000FFFF
_0807C178:
	adds r0, r2, #4
	adds r1, r6, #0
	bl _DmaZero
	movs r3, #1
	mov sb, r3
_0807C184:
	ldr r0, _0807C1B0 @ =gScreenTransition
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807C1BC
	ldr r0, _0807C1B4 @ =gMapDataBottom
	movs r2, #0xc0
	lsls r2, r2, #6
	adds r1, r0, r2
	movs r4, #0x80
	lsls r4, r4, #6
	adds r2, r4, #0
	bl _DmaCopy
	ldr r0, _0807C1B8 @ =gMapDataTop
	movs r3, #0xc0
	lsls r3, r3, #6
	adds r1, r0, r3
	adds r2, r4, #0
	bl _DmaCopy
	b _0807C26C
	.align 2, 0
_0807C1B0: .4byte gScreenTransition
_0807C1B4: .4byte gMapDataBottom
_0807C1B8: .4byte gMapDataTop
_0807C1BC:
	cmp r0, #2
	bne _0807C26C
	ldr r4, _0807C278 @ =gMapDataBottom
	movs r0, #0xb0
	lsls r0, r0, #8
	adds r0, r0, r4
	mov r8, r0
	movs r5, #0x80
	lsls r5, r5, #5
	adds r0, r4, #0
	mov r1, r8
	adds r2, r5, #0
	bl _DmaCopy
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r6, r4, r1
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl _DmaCopy
	mov r0, r8
	adds r1, r6, #0
	adds r2, r5, #0
	bl _DmaCopy
	adds r6, r4, r5
	adds r0, r6, #0
	mov r1, r8
	adds r2, r5, #0
	bl _DmaCopy
	movs r2, #0x80
	lsls r2, r2, #7
	adds r4, r4, r2
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl _DmaCopy
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	bl _DmaCopy
	ldr r4, _0807C27C @ =gMapDataTop
	movs r3, #0xb0
	lsls r3, r3, #8
	adds r3, r3, r4
	mov r8, r3
	adds r0, r4, #0
	mov r1, r8
	adds r2, r5, #0
	bl _DmaCopy
	movs r0, #0xc0
	lsls r0, r0, #6
	adds r6, r4, r0
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl _DmaCopy
	mov r0, r8
	adds r1, r6, #0
	adds r2, r5, #0
	bl _DmaCopy
	adds r6, r4, r5
	adds r0, r6, #0
	mov r1, r8
	adds r2, r5, #0
	bl _DmaCopy
	movs r1, #0x80
	lsls r1, r1, #7
	adds r4, r4, r1
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl _DmaCopy
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	bl _DmaCopy
_0807C26C:
	mov r2, sb
	cmp r2, #0
	bne _0807C280
	bl sub_0807BBE4
	b _0807C2A0
	.align 2, 0
_0807C278: .4byte gMapDataBottom
_0807C27C: .4byte gMapDataTop
_0807C280:
	ldr r0, _0807C2CC @ =gUnk_02027EB4
	ldrh r1, [r7, #0x1e]
	lsrs r1, r1, #4
	ldrh r2, [r7, #0x20]
	lsrs r2, r2, #4
	bl sub_0807C69C
	ldr r0, _0807C2D0 @ =gUnk_0200D654
	ldrh r1, [r7, #0x1e]
	lsrs r1, r1, #4
	ldrh r2, [r7, #0x20]
	lsrs r2, r2, #4
	bl sub_0807C69C
	bl sub_0807C460
_0807C2A0:
	bl sub_0807BC84
	ldr r4, _0807C2D4 @ =gUnk_02025EB0
	adds r0, r4, #0
	bl sub_08080B60
	ldr r5, _0807C2D8 @ =gUnk_0200B650
	adds r0, r5, #0
	bl sub_08080B60
	mov r3, sb
	cmp r3, #0
	bne _0807C2E4
	ldr r0, _0807C2DC @ =gUnk_02019EE0
	adds r1, r4, #0
	bl sub_0801AB08
	ldr r0, _0807C2E0 @ =gMapDataTopSpecial
	adds r1, r5, #0
	bl sub_0801AB08
	b _0807C326
	.align 2, 0
_0807C2CC: .4byte gUnk_02027EB4
_0807C2D0: .4byte gUnk_0200D654
_0807C2D4: .4byte gUnk_02025EB0
_0807C2D8: .4byte gUnk_0200B650
_0807C2DC: .4byte gUnk_02019EE0
_0807C2E0: .4byte gMapDataTopSpecial
_0807C2E4:
	ldr r4, _0807C34C @ =gUnk_02019EE0
	movs r0, #0x80
	lsls r0, r0, #7
	adds r5, r4, r0
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl _DmaCopy
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0807C5F4
	adds r0, r5, #0
	adds r1, r6, #0
	bl _DmaZero
	ldr r4, _0807C350 @ =gMapDataTopSpecial
	adds r5, r4, r6
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl _DmaCopy
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0807C5F4
	adds r0, r5, #0
	adds r1, r6, #0
	bl _DmaZero
_0807C326:
	mov r1, sb
	cmp r1, #0
	bne _0807C332
	ldrb r0, [r7, #4]
	cmp r0, #0x71
	bne _0807C33A
_0807C332:
	ldrb r1, [r7, #0xf]
	movs r0, #1
	orrs r0, r1
	strb r0, [r7, #0xf]
_0807C33A:
	ldrb r0, [r7, #4]
	subs r0, #0x20
	cmp r0, #0x18
	bhi _0807C400
	lsls r0, r0, #2
	ldr r1, _0807C354 @ =_0807C358
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807C34C: .4byte gUnk_02019EE0
_0807C350: .4byte gMapDataTopSpecial
_0807C354: .4byte _0807C358
_0807C358: @ jump table
	.4byte _0807C3BC @ case 0
	.4byte _0807C3E4 @ case 1
	.4byte _0807C3E4 @ case 2
	.4byte _0807C3E4 @ case 3
	.4byte _0807C3E4 @ case 4
	.4byte _0807C3E4 @ case 5
	.4byte _0807C400 @ case 6
	.4byte _0807C3E4 @ case 7
	.4byte _0807C3E4 @ case 8
	.4byte _0807C400 @ case 9
	.4byte _0807C400 @ case 10
	.4byte _0807C400 @ case 11
	.4byte _0807C400 @ case 12
	.4byte _0807C3BC @ case 13
	.4byte _0807C400 @ case 14
	.4byte _0807C400 @ case 15
	.4byte _0807C3E4 @ case 16
	.4byte _0807C400 @ case 17
	.4byte _0807C400 @ case 18
	.4byte _0807C400 @ case 19
	.4byte _0807C400 @ case 20
	.4byte _0807C400 @ case 21
	.4byte _0807C400 @ case 22
	.4byte _0807C400 @ case 23
	.4byte _0807C3E4 @ case 24
_0807C3BC:
	ldr r0, _0807C3D8 @ =gUnk_02025EB0
	ldr r2, [r0]
	cmp r2, #0
	beq _0807C3CC
	ldrh r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strh r0, [r2]
_0807C3CC:
	ldr r2, _0807C3DC @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0807C3E0 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	b _0807C444
	.align 2, 0
_0807C3D8: .4byte gUnk_02025EB0
_0807C3DC: .4byte gScreen
_0807C3E0: .4byte 0x0000FDFF
_0807C3E4:
	ldr r0, _0807C3F8 @ =gUnk_0200B650
	ldr r1, [r0]
	cmp r1, #0
	beq _0807C3F2
	ldr r0, _0807C3FC @ =gUnk_080B77C0
	ldrh r0, [r0, #4]
	strh r0, [r1]
_0807C3F2:
	bl sub_0807C5B0
	b _0807C444
	.align 2, 0
_0807C3F8: .4byte gUnk_0200B650
_0807C3FC: .4byte gUnk_080B77C0
_0807C400:
	ldr r0, _0807C44C @ =gUnk_02025EB0
	ldr r1, [r0]
	cmp r1, #0
	beq _0807C40E
	ldr r0, _0807C450 @ =gUnk_080B77C0
	ldrh r0, [r0]
	strh r0, [r1]
_0807C40E:
	ldr r0, _0807C454 @ =gUnk_0200B650
	ldr r1, [r0]
	cmp r1, #0
	beq _0807C41C
	ldr r0, _0807C450 @ =gUnk_080B77C0
	ldrh r0, [r0, #2]
	strh r0, [r1]
_0807C41C:
	ldr r2, _0807C458 @ =gScreen
	ldrh r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r1, r0
	movs r3, #0xba
	lsls r3, r3, #5
	adds r0, r3, #0
	movs r3, #0
	orrs r1, r0
	strh r1, [r2]
	ldr r0, _0807C45C @ =gArea
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	beq _0807C444
	movs r3, #0xa0
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r1, r0
	strh r1, [r2]
_0807C444:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807C44C: .4byte gUnk_02025EB0
_0807C450: .4byte gUnk_080B77C0
_0807C454: .4byte gUnk_0200B650
_0807C458: .4byte gScreen
_0807C45C: .4byte gArea

	thumb_func_start sub_0807C460
sub_0807C460: @ 0x0807C460
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r7, _0807C4E8 @ =gMapDataBottom
	ldr r6, _0807C4EC @ =gMapDataTop
	ldr r0, _0807C4F0 @ =gRoomControls
	ldrh r1, [r0, #0x1e]
	lsrs r3, r1, #4
	ldrh r0, [r0, #0x20]
	lsrs r0, r0, #4
	str r0, [sp]
	movs r4, #0
	movs r1, #0
	cmp r1, r0
	bhs _0807C4DC
	movs r0, #0x40
	subs r0, r0, r3
	lsls r0, r0, #1
	mov sb, r0
_0807C48C:
	movs r5, #0
	adds r1, #1
	mov sl, r1
	cmp r5, r3
	bhs _0807C4CA
	ldr r0, _0807C4F4 @ =0x00003FFF
	mov r8, r0
_0807C49A:
	ldrh r0, [r7]
	cmp r0, r8
	bls _0807C4AC
	adds r1, r4, #0
	movs r2, #1
	str r3, [sp, #4]
	bl SetTile
	ldr r3, [sp, #4]
_0807C4AC:
	ldrh r0, [r6]
	cmp r0, r8
	bls _0807C4BE
	adds r1, r4, #0
	movs r2, #2
	str r3, [sp, #4]
	bl SetTile
	ldr r3, [sp, #4]
_0807C4BE:
	adds r7, #2
	adds r6, #2
	adds r4, #1
	adds r5, #1
	cmp r5, r3
	blo _0807C49A
_0807C4CA:
	add r7, sb
	add r6, sb
	adds r0, r4, #0
	adds r0, #0x40
	subs r4, r0, r3
	mov r1, sl
	ldr r0, [sp]
	cmp r1, r0
	blo _0807C48C
_0807C4DC:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807C4E8: .4byte gMapDataBottom
_0807C4EC: .4byte gMapDataTop
_0807C4F0: .4byte gRoomControls
_0807C4F4: .4byte 0x00003FFF

	thumb_func_start sub_0807C4F8
sub_0807C4F8: @ 0x0807C4F8
	push {r4, r5, r6, lr}
	ldr r0, _0807C594 @ =gRoomControls
	ldrb r0, [r0, #4]
	cmp r0, #0x71
	beq _0807C592
	ldr r0, _0807C598 @ =gUnk_02019EE0
	movs r4, #0x80
	lsls r4, r4, #8
	adds r1, r4, #0
	bl _DmaZero
	ldr r0, _0807C59C @ =gMapDataTopSpecial
	adds r1, r4, #0
	bl _DmaZero
	ldr r5, _0807C5A0 @ =gUnk_02022830
	ldr r0, _0807C5A4 @ =gArea
	ldr r1, _0807C5A8 @ =0x0000085C
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r4, [r0, #0xc]
	subs r4, #0xc
_0807C524:
	adds r4, #0xc
	ldr r1, [r4, #4]
	ldr r0, _0807C598 @ =gUnk_02019EE0
	cmp r1, r0
	beq _0807C534
	ldr r0, _0807C59C @ =gMapDataTopSpecial
	cmp r1, r0
	bne _0807C54A
_0807C534:
	ldr r0, [r4]
	ldr r1, _0807C5AC @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r5]
	ldr r0, [r4, #4]
	str r0, [r5, #4]
	ldr r0, [r4, #8]
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_080197D4
_0807C54A:
	ldr r0, [r4]
	cmp r0, #0
	blt _0807C524
	ldr r4, _0807C598 @ =gUnk_02019EE0
	movs r0, #0x80
	lsls r0, r0, #7
	adds r5, r4, r0
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl _DmaCopy
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0807C5F4
	adds r0, r5, #0
	adds r1, r6, #0
	bl _DmaZero
	ldr r4, _0807C59C @ =gMapDataTopSpecial
	adds r5, r4, r6
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl _DmaCopy
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0807C5F4
	adds r0, r5, #0
	adds r1, r6, #0
	bl _DmaZero
_0807C592:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807C594: .4byte gRoomControls
_0807C598: .4byte gUnk_02019EE0
_0807C59C: .4byte gMapDataTopSpecial
_0807C5A0: .4byte gUnk_02022830
_0807C5A4: .4byte gArea
_0807C5A8: .4byte 0x0000085C
_0807C5AC: .4byte 0x7FFFFFFF

	thumb_func_start sub_0807C5B0
sub_0807C5B0: @ 0x0807C5B0
	push {r4, r5, r6, lr}
	ldr r5, _0807C5E8 @ =gUnk_0200D654
	movs r4, #0x80
	lsls r4, r4, #5
	movs r3, #0
	ldr r6, _0807C5EC @ =gRoomControls
	ldr r2, _0807C5F0 @ =gUnk_02027EB4
_0807C5BE:
	adds r0, r5, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807C5D4
	cmp r0, #0xf
	bhi _0807C5D2
	ldrb r1, [r2]
	cmp r1, #0xf
	bhi _0807C5D4
	orrs r0, r1
_0807C5D2:
	strb r0, [r2]
_0807C5D4:
	adds r2, #1
	adds r3, #1
	cmp r3, r4
	blo _0807C5BE
	ldrb r1, [r6, #0xf]
	movs r0, #2
	orrs r0, r1
	strb r0, [r6, #0xf]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807C5E8: .4byte gUnk_0200D654
_0807C5EC: .4byte gRoomControls
_0807C5F0: .4byte gUnk_02027EB4

	thumb_func_start sub_0807C5F4
sub_0807C5F4: @ 0x0807C5F4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	movs r0, #0x20
	ldr r6, _0807C698 @ =gRoomControls
_0807C5FE:
	movs r3, #0
	subs r4, r0, #1
_0807C602:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r1, #2
	adds r2, #2
	adds r3, #1
	cmp r3, #0x1f
	bls _0807C602
	adds r2, #0xc0
	adds r0, r4, #0
	cmp r0, #0
	bne _0807C5FE
	ldrh r0, [r6, #0x1e]
	cmp r0, #0xff
	bls _0807C63E
	adds r2, r5, #0
	adds r2, #0x40
	movs r0, #0x20
_0807C624:
	movs r3, #0
	subs r4, r0, #1
_0807C628:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r1, #2
	adds r2, #2
	adds r3, #1
	cmp r3, #0x1f
	bls _0807C628
	adds r2, #0xc0
	adds r0, r4, #0
	cmp r0, #0
	bne _0807C624
_0807C63E:
	ldrh r0, [r6, #0x20]
	cmp r0, #0xff
	bls _0807C666
	movs r0, #0x80
	lsls r0, r0, #6
	adds r2, r5, r0
	movs r0, #0x20
_0807C64C:
	movs r3, #0
	subs r4, r0, #1
_0807C650:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r1, #2
	adds r2, #2
	adds r3, #1
	cmp r3, #0x1f
	bls _0807C650
	adds r2, #0xc0
	adds r0, r4, #0
	cmp r0, #0
	bne _0807C64C
_0807C666:
	ldrh r0, [r6, #0x1e]
	cmp r0, #0xff
	bls _0807C694
	ldrh r0, [r6, #0x20]
	cmp r0, #0xff
	bls _0807C694
	movs r0, #0x81
	lsls r0, r0, #6
	adds r2, r5, r0
	movs r0, #0x20
_0807C67A:
	movs r3, #0
	subs r4, r0, #1
_0807C67E:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r1, #2
	adds r2, #2
	adds r3, #1
	cmp r3, #0x1f
	bls _0807C67E
	adds r2, #0xc0
	adds r0, r4, #0
	cmp r0, #0
	bne _0807C67A
_0807C694:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807C698: .4byte gRoomControls

	thumb_func_start sub_0807C69C
sub_0807C69C: @ 0x0807C69C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r6, r1, #0
	mov r8, r2
	mov r0, r8
	muls r0, r6, r0
	add r0, sb
	subs r2, r0, #1
	mov r0, r8
	subs r0, #1
	lsls r0, r0, #6
	add r0, sb
	subs r1, r6, #1
	adds r4, r0, r1
	movs r5, #0
	cmp r5, r8
	bhs _0807C6EA
_0807C6C4:
	movs r3, #0
	adds r7, r4, #0
	subs r7, #0x40
	subs r0, r2, r6
	mov ip, r0
	cmp r3, r6
	bhs _0807C6E0
_0807C6D2:
	subs r0, r4, r3
	subs r1, r2, r3
	ldrb r1, [r1]
	strb r1, [r0]
	adds r3, #1
	cmp r3, r6
	blo _0807C6D2
_0807C6E0:
	adds r4, r7, #0
	mov r2, ip
	adds r5, #1
	cmp r5, r8
	blo _0807C6C4
_0807C6EA:
	movs r0, #0x40
	subs r7, r0, r6
	movs r5, #0
	mov r1, r8
	lsls r2, r1, #6
	mov r0, sb
	adds r1, r0, r6
_0807C6F8:
	lsls r0, r5, #6
	adds r4, r1, r0
	movs r3, #0
	adds r6, r5, #1
	cmp r3, r7
	bhs _0807C710
	movs r5, #0
_0807C706:
	adds r0, r4, r3
	strb r5, [r0]
	adds r3, #1
	cmp r3, r7
	blo _0807C706
_0807C710:
	adds r5, r6, #0
	cmp r5, #0x3f
	bls _0807C6F8
	movs r0, #0x40
	mov r1, r8
	subs r7, r0, r1
	mov r0, sb
	adds r4, r0, r2
	movs r5, #0
	cmp r5, r7
	bhs _0807C736
_0807C726:
	adds r0, r4, #0
	movs r1, #0x40
	bl _DmaZero
	adds r4, #0x40
	adds r5, #1
	cmp r5, r7
	blo _0807C726
_0807C736:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0807C740
sub_0807C740: @ 0x0807C740
	push {r4, r5, lr}
	bl sub_0807BFD0
	bl sub_0807C0DC
	ldr r4, _0807C780 @ =gRoomControls
	ldr r2, [r4, #0x30]
	cmp r2, #0
	beq _0807C788
	ldrh r1, [r2, #0x2e]
	lsls r0, r1, #0x10
	cmp r0, #0
	bge _0807C764
	ldr r0, _0807C784 @ =0x00007FFF
	ands r0, r1
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	strh r0, [r2, #0x2e]
_0807C764:
	movs r0, #0x2e
	ldrsh r3, [r2, r0]
	ldrh r1, [r2, #0x32]
	lsls r0, r1, #0x10
	cmp r0, #0
	bge _0807C77A
	ldr r0, _0807C784 @ =0x00007FFF
	ands r0, r1
	ldrh r1, [r4, #8]
	subs r0, r0, r1
	strh r0, [r2, #0x32]
_0807C77A:
	movs r0, #0x32
	ldrsh r5, [r2, r0]
	b _0807C78C
	.align 2, 0
_0807C780: .4byte gRoomControls
_0807C784: .4byte 0x00007FFF
_0807C788:
	movs r3, #0
	movs r5, #0
_0807C78C:
	cmp r3, #0x77
	bgt _0807C794
	movs r0, #0
	b _0807C7A2
_0807C794:
	ldrh r1, [r4, #0x1e]
	adds r0, r1, #0
	subs r0, #0x78
	cmp r0, r3
	blt _0807C7A0
	adds r0, r3, #0
_0807C7A0:
	subs r0, #0x78
_0807C7A2:
	strh r0, [r4, #0xa]
	ldrh r1, [r4, #6]
	ldrh r2, [r4, #0xa]
	adds r0, r1, r2
	strh r0, [r4, #0xa]
	cmp r5, #0x4f
	bgt _0807C7B4
	movs r0, #0
	b _0807C7C2
_0807C7B4:
	ldrh r2, [r4, #0x20]
	adds r0, r2, #0
	subs r0, #0x50
	cmp r0, r5
	blt _0807C7C0
	adds r0, r5, #0
_0807C7C0:
	subs r0, #0x50
_0807C7C2:
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #8]
	ldrh r3, [r4, #0xc]
	adds r0, r0, r3
	strh r0, [r4, #0xc]
	ldr r2, [r4, #0x30]
	cmp r2, #0
	beq _0807C7FC
	ldrh r3, [r2, #0x2e]
	adds r0, r1, r3
	strh r0, [r2, #0x2e]
	ldr r1, [r4, #0x30]
	ldrh r0, [r4, #8]
	ldrh r2, [r1, #0x32]
	adds r0, r0, r2
	strh r0, [r1, #0x32]
	ldr r0, _0807C80C @ =gRoomControls
	ldrb r1, [r0, #0xf]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0807C7FC
	ldr r0, [r4, #0x30]
	adds r0, #0x38
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r4, #0x30]
	bl UpdateSpriteForCollisionLayer
_0807C7FC:
	ldrb r1, [r4, #0xf]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r4, #0xf]
	bl sub_08080BC4
	pop {r4, r5, pc}
	.align 2, 0
_0807C80C: .4byte gRoomControls

	thumb_func_start sub_0807C810
sub_0807C810: @ 0x0807C810
	push {r4, r5, r6, lr}
	bl sub_0807BFD0
	ldr r2, _0807C850 @ =gUnk_03004030
	ldr r6, _0807C854 @ =gPlayerEntity
	ldr r4, _0807C858 @ =gRoomControls
	ldr r3, [r2]
	ldrh r1, [r3, #6]
	movs r0, #0x3f
	ands r0, r1
	lsls r0, r0, #4
	ldrh r1, [r4, #6]
	adds r0, r0, r1
	ldrh r1, [r2, #4]
	adds r1, r1, r0
	movs r5, #0
	strh r1, [r6, #0x2e]
	ldrh r1, [r3, #6]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r1
	lsrs r0, r0, #2
	ldrh r4, [r4, #8]
	adds r0, r0, r4
	ldrh r1, [r2, #6]
	adds r1, r1, r0
	strh r1, [r6, #0x32]
	bl sub_080809D4
	ldr r0, _0807C85C @ =gUnk_02000070
	strb r5, [r0]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807C850: .4byte gUnk_03004030
_0807C854: .4byte gPlayerEntity
_0807C858: .4byte gRoomControls
_0807C85C: .4byte gUnk_02000070

	thumb_func_start sub_0807C860
sub_0807C860: @ 0x0807C860
	push {r4, lr}
	ldr r0, _0807C88C @ =gScreenTransition
	adds r0, #0x2d
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0807C890 @ =gMapDataBottom
	movs r2, #0xc0
	lsls r2, r2, #6
	adds r1, r0, r2
	movs r4, #0x80
	lsls r4, r4, #6
	adds r2, r4, #0
	bl _DmaCopy
	ldr r0, _0807C894 @ =gMapDataTop
	movs r2, #0xc0
	lsls r2, r2, #6
	adds r1, r0, r2
	adds r2, r4, #0
	bl _DmaCopy
	pop {r4, pc}
	.align 2, 0
_0807C88C: .4byte gScreenTransition
_0807C890: .4byte gMapDataBottom
_0807C894: .4byte gMapDataTop

	thumb_func_start sub_0807C898
sub_0807C898: @ 0x0807C898
	push {r4, r5, lr}
	ldr r4, _0807C8AC @ =gScreenTransition
	adds r4, #0x2d
	movs r5, #0
	movs r0, #2
	strb r0, [r4]
	bl sub_0807C0DC
	strb r5, [r4]
	pop {r4, r5, pc}
	.align 2, 0
_0807C8AC: .4byte gScreenTransition

	thumb_func_start sub_0807C8B0
sub_0807C8B0: @ 0x0807C8B0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	adds r4, r1, #0
	mov ip, r2
	mov r0, ip
	muls r0, r4, r0
	lsls r0, r0, #1
	add r0, r8
	subs r7, r0, #2
	mov r0, ip
	subs r0, #1
	lsls r0, r0, #7
	add r0, r8
	lsls r3, r4, #1
	subs r1, r3, #2
	adds r0, r0, r1
	movs r5, #0
	cmp r5, ip
	bhs _0807C906
	mov sb, r3
_0807C8DE:
	movs r2, #0
	adds r6, r0, #0
	subs r6, #0x80
	cmp r2, r4
	bhs _0807C8FA
	adds r1, r7, #0
	adds r3, r0, #0
_0807C8EC:
	ldrh r0, [r1]
	strh r0, [r3]
	subs r1, #2
	subs r3, #2
	adds r2, #1
	cmp r2, r4
	blo _0807C8EC
_0807C8FA:
	adds r0, r6, #0
	mov r1, sb
	subs r7, r7, r1
	adds r5, #1
	cmp r5, ip
	blo _0807C8DE
_0807C906:
	movs r0, #0x40
	subs r6, r0, r4
	movs r5, #0
	lsls r0, r4, #1
	mov r2, ip
	lsls r7, r2, #7
	mov r2, r8
	adds r1, r2, r0
_0807C916:
	lsls r0, r5, #7
	adds r0, r1, r0
	movs r2, #0
	adds r3, r5, #1
	cmp r2, r6
	bhs _0807C92E
	movs r4, #0
_0807C924:
	strh r4, [r0]
	adds r0, #2
	adds r2, #1
	cmp r2, r6
	blo _0807C924
_0807C92E:
	adds r5, r3, #0
	cmp r5, #0x3f
	bls _0807C916
	movs r0, #0x40
	mov r1, ip
	subs r6, r0, r1
	mov r2, r8
	adds r0, r2, r7
	movs r5, #0
	cmp r5, r6
	bhs _0807C956
	adds r4, r0, #0
_0807C946:
	adds r0, r4, #0
	movs r1, #0x80
	bl _DmaZero
	adds r4, #0x80
	adds r5, #1
	cmp r5, r6
	blo _0807C946
_0807C956:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
