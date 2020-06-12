	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08099734
sub_08099734: @ 0x08099734
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #3
	bhi _08099754
	ldr r0, _08099750 @ =gUnk_081237A0
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
	b _0809975A
	.align 2, 0
_08099750: .4byte gUnk_081237A0
_08099754:
	adds r0, r2, #0
	bl sub_08099D30
_0809975A:
	pop {pc}

	thumb_func_start sub_0809975C
sub_0809975C: @ 0x0809975C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _08099770
	bl sub_0805E780
_08099770:
	movs r2, #1
	strb r2, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x11]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x48
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3f
	strb r2, [r0]
	subs r1, #5
	movs r0, #0x80
	strb r0, [r1]
	ldr r0, _080997C8 @ =gUnk_080FD190
	str r0, [r4, #0x48]
	adds r0, r4, #0
	bl sub_08099910
	ldrb r1, [r4, #0xa]
	adds r0, r4, #0
	bl UpdateSprite
	movs r0, #0x85
	movs r1, #4
	movs r2, #0
	bl CreateObject
	cmp r0, #0
	beq _080997C6
	str r4, [r0, #0x50]
_080997C6:
	pop {r4, pc}
	.align 2, 0
_080997C8: .4byte gUnk_080FD190

	thumb_func_start sub_080997CC
sub_080997CC: @ 0x080997CC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0809963C
	cmp r0, #0
	beq _080997EC
	movs r0, #0
	movs r1, #2
	strb r1, [r4, #0xc]
	strb r0, [r4, #0xe]
	ldr r0, _080997F0 @ =0x000001B3
	bl sub_08004488
	adds r0, r4, #0
	bl sub_080997F4
_080997EC:
	pop {r4, pc}
	.align 2, 0
_080997F0: .4byte 0x000001B3

	thumb_func_start sub_080997F4
sub_080997F4: @ 0x080997F4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0809963C
	adds r1, r0, #0
	cmp r1, #0
	bne _08099822
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bls _0809980E
	subs r0, #2
	strb r0, [r4, #0xe]
	b _08099810
_0809980E:
	strb r1, [r4, #0xe]
_08099810:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08099828
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0805EC60
	b _0809987C
_08099822:
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
_08099828:
	ldr r1, _08099858 @ =gUnk_081237B0
	ldrb r0, [r4, #0xe]
	lsrs r0, r0, #5
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, #0
	movs r3, #0
	bl sub_0805EC9C
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0809986C
	cmp r0, #2
	beq _0809985C
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl SetFlag
	b _0809986C
	.align 2, 0
_08099858: .4byte gUnk_081237B0
_0809985C:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r3, [r0]
	adds r0, r4, #0
	movs r1, #0x53
	movs r2, #0
	bl sub_080A2A3C
_0809986C:
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
_0809987C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08099880
sub_08099880: @ 0x08099880
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	subs r1, r0, #1
	strb r1, [r5, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _08099896
	bl sub_0805E780
	b _0809990E
_08099896:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x30
	bne _080998A4
	adds r0, r5, #0
	bl sub_08099C18
_080998A4:
	ldrb r0, [r5, #0xe]
	movs r4, #0x3c
	subs r4, r4, r0
	lsls r4, r4, #5
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r4, r1
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_0805EC9C
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	movs r3, #0
	bl sub_0806FCF4
	movs r0, #0xf
	movs r1, #0x11
	movs r2, #0x40
	bl CreateObject
	adds r6, r0, #0
	cmp r6, #0
	beq _0809990E
	bl Random
	adds r4, r0, #0
	asrs r0, r4, #0x10
	movs r1, #0x21
	bl __modsi3
	adds r2, r0, #0
	subs r2, #0x10
	movs r0, #0xf
	ands r0, r4
	subs r4, r0, #4
	adds r3, r6, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r3]
	lsls r2, r2, #0x10
	lsls r3, r4, #0x10
	adds r0, r5, #0
	adds r1, r6, #0
	bl PositionRelative
_0809990E:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08099910
sub_08099910: @ 0x08099910
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r3, _08099968 @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r6, r0, #4
	movs r2, #0x3f
	ands r6, r2
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r6, r0
	adds r0, r4, #0
	adds r0, #0x6e
	strh r6, [r0]
	ldrh r2, [r4, #0x2e]
	movs r0, #8
	adds r1, r0, #0
	ands r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x13
	ldrh r2, [r4, #0x32]
	ands r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x6c
	strh r1, [r0]
	cmp r1, #2
	beq _08099A4C
	cmp r1, #2
	bhi _0809996C
	cmp r1, #1
	beq _080999A8
	b _08099972
	.align 2, 0
_08099968: .4byte gRoomControls
_0809996C:
	cmp r1, #3
	bne _08099972
	b _08099AF0
_08099972:
	ldr r5, _080999A4 @ =0x00004022
	adds r1, r6, #0
	subs r1, #0x41
	adds r4, #0x38
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	adds r1, r6, #0
	subs r1, #0x40
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	subs r1, r6, #1
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	ldrb r2, [r4]
	adds r0, r5, #0
	adds r1, r6, #0
	bl SetTile
	b _08099BF0
	.align 2, 0
_080999A4: .4byte 0x00004022
_080999A8:
	adds r5, r6, #0
	subs r5, #0x41
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	adds r4, #0x38
	ldrb r1, [r4]
	bl sub_080002C8
	ldr r1, _08099A40 @ =0x00004024
	cmp r0, #0x12
	bne _080999C0
	adds r1, #0x55
_080999C0:
	ldrb r2, [r4]
	adds r0, r1, #0
	adds r1, r5, #0
	bl SetTile
	ldr r7, _08099A44 @ =0x00004022
	adds r1, r6, #0
	subs r1, #0x40
	ldrb r2, [r4]
	adds r0, r7, #0
	bl SetTile
	adds r5, r6, #0
	subs r5, #0x3f
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r4]
	bl sub_080002C8
	ldr r1, _08099A48 @ =0x00004025
	cmp r0, #0x12
	bne _080999EE
	adds r1, #0x56
_080999EE:
	ldrb r2, [r4]
	adds r0, r1, #0
	adds r1, r5, #0
	bl SetTile
	subs r5, r6, #1
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r4]
	bl sub_080002C8
	ldr r1, _08099A40 @ =0x00004024
	cmp r0, #0x12
	bne _08099A0C
	adds r1, #0x55
_08099A0C:
	ldrb r2, [r4]
	adds r0, r1, #0
	adds r1, r5, #0
	bl SetTile
	ldrb r2, [r4]
	adds r0, r7, #0
	adds r1, r6, #0
	bl SetTile
	adds r5, r6, #1
	adds r0, r5, #0
	ldrb r1, [r4]
	bl sub_080002C8
	ldr r1, _08099A48 @ =0x00004025
	cmp r0, #0x12
	bne _08099A32
	adds r1, #0x56
_08099A32:
	ldrb r2, [r4]
	adds r0, r1, #0
	adds r1, r5, #0
	bl SetTile
	b _08099BF0
	.align 2, 0
_08099A40: .4byte 0x00004024
_08099A44: .4byte 0x00004022
_08099A48: .4byte 0x00004025
_08099A4C:
	adds r7, r6, #0
	subs r7, #0x41
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	adds r5, r4, #0
	adds r5, #0x38
	ldrb r1, [r5]
	bl sub_080002C8
	ldr r1, _08099AE4 @ =0x00004023
	cmp r0, #0x12
	bne _08099A66
	adds r1, #0x54
_08099A66:
	ldrb r2, [r5]
	adds r0, r1, #0
	adds r1, r7, #0
	bl SetTile
	adds r4, r6, #0
	subs r4, #0x40
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r5]
	bl sub_080002C8
	ldr r1, _08099AE4 @ =0x00004023
	cmp r0, #0x12
	bne _08099A86
	adds r1, #0x54
_08099A86:
	ldrb r2, [r5]
	adds r0, r1, #0
	adds r1, r4, #0
	bl SetTile
	ldr r4, _08099AE8 @ =0x00004022
	subs r1, r6, #1
	ldrb r2, [r5]
	adds r0, r4, #0
	bl SetTile
	ldrb r2, [r5]
	adds r0, r4, #0
	adds r1, r6, #0
	bl SetTile
	adds r4, r6, #0
	adds r4, #0x3f
	adds r0, r4, #0
	ldrb r1, [r5]
	bl sub_080002C8
	ldr r1, _08099AEC @ =0x00004026
	cmp r0, #0x12
	bne _08099ABA
	adds r1, #0x56
_08099ABA:
	ldrb r2, [r5]
	adds r0, r1, #0
	adds r1, r4, #0
	bl SetTile
	adds r4, r6, #0
	adds r4, #0x40
	adds r0, r4, #0
	ldrb r1, [r5]
	bl sub_080002C8
	ldr r1, _08099AEC @ =0x00004026
	cmp r0, #0x12
	bne _08099AD8
	adds r1, #0x56
_08099AD8:
	ldrb r2, [r5]
	adds r0, r1, #0
	adds r1, r4, #0
	bl SetTile
	b _08099BF0
	.align 2, 0
_08099AE4: .4byte 0x00004023
_08099AE8: .4byte 0x00004022
_08099AEC: .4byte 0x00004026
_08099AF0:
	adds r5, r6, #0
	subs r5, #0x41
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	adds r4, #0x38
	ldrb r1, [r4]
	bl sub_080002C8
	ldr r1, _08099BF4 @ =0x00004027
	cmp r0, #0x12
	bne _08099B08
	adds r1, #0x4e
_08099B08:
	ldrb r2, [r4]
	adds r0, r1, #0
	adds r1, r5, #0
	bl SetTile
	adds r5, r6, #0
	subs r5, #0x40
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r4]
	bl sub_080002C8
	ldr r1, _08099BF8 @ =0x00004023
	cmp r0, #0x12
	bne _08099B28
	adds r1, #0x54
_08099B28:
	ldrb r2, [r4]
	adds r0, r1, #0
	adds r1, r5, #0
	bl SetTile
	adds r5, r6, #0
	subs r5, #0x3f
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r4]
	bl sub_080002C8
	ldr r1, _08099BFC @ =0x00004028
	cmp r0, #0x12
	bne _08099B48
	adds r1, #0x4e
_08099B48:
	ldrb r2, [r4]
	adds r0, r1, #0
	adds r1, r5, #0
	bl SetTile
	subs r5, r6, #1
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r4]
	bl sub_080002C8
	ldr r1, _08099C00 @ =0x00004024
	cmp r0, #0x12
	bne _08099B66
	adds r1, #0x55
_08099B66:
	ldrb r2, [r4]
	adds r0, r1, #0
	adds r1, r5, #0
	bl SetTile
	ldr r0, _08099C04 @ =0x00004022
	ldrb r2, [r4]
	adds r1, r6, #0
	bl SetTile
	adds r5, r6, #1
	adds r0, r5, #0
	ldrb r1, [r4]
	bl sub_080002C8
	ldr r1, _08099C08 @ =0x00004025
	cmp r0, #0x12
	bne _08099B8C
	adds r1, #0x56
_08099B8C:
	ldrb r2, [r4]
	adds r0, r1, #0
	adds r1, r5, #0
	bl SetTile
	adds r5, r6, #0
	adds r5, #0x3f
	adds r0, r5, #0
	ldrb r1, [r4]
	bl sub_080002C8
	ldr r1, _08099C0C @ =0x00004029
	cmp r0, #0x12
	bne _08099BAA
	adds r1, #0x4f
_08099BAA:
	ldrb r2, [r4]
	adds r0, r1, #0
	adds r1, r5, #0
	bl SetTile
	adds r5, r6, #0
	adds r5, #0x40
	adds r0, r5, #0
	ldrb r1, [r4]
	bl sub_080002C8
	ldr r1, _08099C10 @ =0x00004026
	cmp r0, #0x12
	bne _08099BC8
	adds r1, #0x56
_08099BC8:
	ldrb r2, [r4]
	adds r0, r1, #0
	adds r1, r5, #0
	bl SetTile
	adds r5, r6, #0
	adds r5, #0x41
	adds r0, r5, #0
	ldrb r1, [r4]
	bl sub_080002C8
	ldr r1, _08099C14 @ =0x0000402A
	cmp r0, #0x12
	bne _08099BE6
	adds r1, #0x50
_08099BE6:
	ldrb r2, [r4]
	adds r0, r1, #0
	adds r1, r5, #0
	bl SetTile
_08099BF0:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08099BF4: .4byte 0x00004027
_08099BF8: .4byte 0x00004023
_08099BFC: .4byte 0x00004028
_08099C00: .4byte 0x00004024
_08099C04: .4byte 0x00004022
_08099C08: .4byte 0x00004025
_08099C0C: .4byte 0x00004029
_08099C10: .4byte 0x00004026
_08099C14: .4byte 0x0000402A

	thumb_func_start sub_08099C18
sub_08099C18: @ 0x08099C18
	push {r4, r5, lr}
	adds r1, r0, #0
	adds r0, #0x6e
	ldrh r5, [r0]
	subs r0, #2
	ldrh r0, [r0]
	cmp r0, #2
	beq _08099C96
	cmp r0, #2
	bgt _08099C32
	cmp r0, #1
	beq _08099C60
	b _08099C36
_08099C32:
	cmp r0, #3
	beq _08099CD4
_08099C36:
	adds r0, r5, #0
	subs r0, #0x41
	adds r4, r1, #0
	adds r4, #0x38
	ldrb r1, [r4]
	bl sub_0807BA8C
	adds r0, r5, #0
	subs r0, #0x40
	ldrb r1, [r4]
	bl sub_0807BA8C
	subs r0, r5, #1
	ldrb r1, [r4]
	bl sub_0807BA8C
	ldrb r1, [r4]
	adds r0, r5, #0
	bl sub_0807BA8C
	b _08099D2C
_08099C60:
	adds r0, r5, #0
	subs r0, #0x41
	adds r4, r1, #0
	adds r4, #0x38
	ldrb r1, [r4]
	bl sub_0807BA8C
	adds r0, r5, #0
	subs r0, #0x40
	ldrb r1, [r4]
	bl sub_0807BA8C
	adds r0, r5, #0
	subs r0, #0x3f
	ldrb r1, [r4]
	bl sub_0807BA8C
	subs r0, r5, #1
	ldrb r1, [r4]
	bl sub_0807BA8C
	ldrb r1, [r4]
	adds r0, r5, #0
	bl sub_0807BA8C
	adds r0, r5, #1
	b _08099CCC
_08099C96:
	adds r0, r5, #0
	subs r0, #0x41
	adds r4, r1, #0
	adds r4, #0x38
	ldrb r1, [r4]
	bl sub_0807BA8C
	adds r0, r5, #0
	subs r0, #0x40
	ldrb r1, [r4]
	bl sub_0807BA8C
	subs r0, r5, #1
	ldrb r1, [r4]
	bl sub_0807BA8C
	ldrb r1, [r4]
	adds r0, r5, #0
	bl sub_0807BA8C
	adds r0, r5, #0
	adds r0, #0x3f
	ldrb r1, [r4]
	bl sub_0807BA8C
	adds r0, r5, #0
	adds r0, #0x40
_08099CCC:
	ldrb r1, [r4]
	bl sub_0807BA8C
	b _08099D2C
_08099CD4:
	adds r0, r5, #0
	subs r0, #0x41
	adds r4, r1, #0
	adds r4, #0x38
	ldrb r1, [r4]
	bl sub_0807BA8C
	adds r0, r5, #0
	subs r0, #0x40
	ldrb r1, [r4]
	bl sub_0807BA8C
	adds r0, r5, #0
	subs r0, #0x3f
	ldrb r1, [r4]
	bl sub_0807BA8C
	subs r0, r5, #1
	ldrb r1, [r4]
	bl sub_0807BA8C
	ldrb r1, [r4]
	adds r0, r5, #0
	bl sub_0807BA8C
	adds r0, r5, #1
	ldrb r1, [r4]
	bl sub_0807BA8C
	adds r0, r5, #0
	adds r0, #0x3f
	ldrb r1, [r4]
	bl sub_0807BA8C
	adds r0, r5, #0
	adds r0, #0x40
	ldrb r1, [r4]
	bl sub_0807BA8C
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r1, [r4]
	bl sub_0807BA8C
_08099D2C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08099D30
sub_08099D30: @ 0x08099D30
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _08099D40
	bl sub_0805E780
_08099D40:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08099D6A
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #4
	bl UpdateSprite
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl sub_0806FA6C
	ldrh r0, [r4, #0x32]
	adds r0, #1
	strh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x63
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
_08099D6A:
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	bhi _08099DAA
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08099DA2
	movs r0, #0
	strb r0, [r2]
	bl Random
	movs r1, #0x78
	ands r0, r1
	adds r0, #0x78
	adds r1, r4, #0
	adds r1, #0x59
	strb r0, [r1]
_08099DA2:
	adds r0, r4, #0
	bl sub_08004274
	b _08099DB4
_08099DAA:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_08099DB4:
	pop {r4, pc}
	.align 2, 0
