	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start UpdateScroll
UpdateScroll: @ 0xUpdateScroll
	push {lr}
	ldr r0, _0807FC5C @ =gRoomControls
	ldrb r2, [r0, #0xf]
	movs r1, #0xfb
	ands r1, r2
	strb r1, [r0, #0xf]
	ldr r2, _0807FC60 @ =gUnk_0811E768
	ldrb r1, [r0, #2]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0807FC5C: .4byte gRoomControls
_0807FC60: .4byte gUnk_0811E768

	thumb_func_start sub_0807FC64
sub_0807FC64: @ 0x0807FC64
	push {lr}
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #2]
	strh r2, [r0]
	movs r1, #4
	strb r1, [r0, #0xe]
	bl sub_0807FC7C
	bl sub_080805F8
	pop {pc}

	thumb_func_start sub_0807FC7C
sub_0807FC7C: @ 0x0807FC7C
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x30]
	cmp r0, #0
	bne _0807FC88
	b _0807FDA6
_0807FC88:
	movs r1, #0xa
	ldrsh r4, [r2, r1]
	movs r1, #0x2e
	ldrsh r0, [r0, r1]
	subs r0, #0x78
	subs r3, r4, r0
	cmp r3, #0
	beq _0807FD16
	ldrh r6, [r2, #0xa]
	movs r7, #7
	ands r7, r6
	mov ip, r6
	cmp r3, #0
	ble _0807FCDC
	ldrh r0, [r2, #6]
	adds r5, r0, #0
	cmp r5, r4
	bge _0807FD16
	ldrb r0, [r2, #0xe]
	cmp r0, r3
	bgt _0807FCBC
	adds r3, r0, #0
	ldrb r1, [r2, #0xf]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2, #0xf]
_0807FCBC:
	mov r1, ip
	subs r0, r1, r3
	strh r0, [r2, #0xa]
	subs r0, r7, r3
	cmp r0, #0
	bgt _0807FCCE
	ldr r1, _0807FCD8 @ =gUpdateVisibleTiles
	movs r0, #1
	strb r0, [r1]
_0807FCCE:
	movs r1, #0xa
	ldrsh r0, [r2, r1]
	cmp r5, r0
	blt _0807FD16
	b _0807FD14
	.align 2, 0
_0807FCD8: .4byte gUpdateVisibleTiles
_0807FCDC:
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #0x1e]
	adds r0, r0, r1
	adds r5, r0, #0
	subs r5, #0xf0
	cmp r4, r5
	bge _0807FD16
	ldrb r0, [r2, #0xe]
	rsbs r0, r0, #0
	cmp r0, r3
	blt _0807FCFC
	adds r3, r0, #0
	ldrb r1, [r2, #0xf]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2, #0xf]
_0807FCFC:
	subs r0, r6, r3
	strh r0, [r2, #0xa]
	subs r0, r7, r3
	cmp r0, #7
	ble _0807FD0C
	ldr r1, _0807FD68 @ =gUpdateVisibleTiles
	movs r0, #1
	strb r0, [r1]
_0807FD0C:
	movs r1, #0xa
	ldrsh r0, [r2, r1]
	cmp r0, r5
	blt _0807FD16
_0807FD14:
	strh r5, [r2, #0xa]
_0807FD16:
	movs r0, #0xc
	ldrsh r4, [r2, r0]
	ldr r0, [r2, #0x30]
	movs r1, #0x32
	ldrsh r0, [r0, r1]
	subs r0, #0x50
	subs r3, r4, r0
	cmp r3, #0
	beq _0807FDA6
	ldrh r6, [r2, #0xc]
	movs r7, #7
	ands r7, r6
	mov ip, r6
	cmp r3, #0
	ble _0807FD6C
	ldrh r0, [r2, #8]
	adds r5, r0, #0
	cmp r5, r4
	bge _0807FDA6
	ldrb r0, [r2, #0xe]
	cmp r0, r3
	bgt _0807FD4C
	adds r3, r0, #0
	ldrb r1, [r2, #0xf]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2, #0xf]
_0807FD4C:
	mov r1, ip
	subs r0, r1, r3
	strh r0, [r2, #0xc]
	subs r0, r7, r3
	cmp r0, #0
	bgt _0807FD5E
	ldr r1, _0807FD68 @ =gUpdateVisibleTiles
	movs r0, #1
	strb r0, [r1]
_0807FD5E:
	movs r1, #0xc
	ldrsh r0, [r2, r1]
	cmp r5, r0
	blt _0807FDA6
	b _0807FDA4
	.align 2, 0
_0807FD68: .4byte gUpdateVisibleTiles
_0807FD6C:
	ldrh r0, [r2, #8]
	ldrh r1, [r2, #0x20]
	adds r0, r0, r1
	adds r5, r0, #0
	subs r5, #0xa0
	cmp r4, r5
	bge _0807FDA6
	ldrb r0, [r2, #0xe]
	rsbs r0, r0, #0
	cmp r0, r3
	blt _0807FD8C
	adds r3, r0, #0
	ldrb r1, [r2, #0xf]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2, #0xf]
_0807FD8C:
	subs r0, r6, r3
	strh r0, [r2, #0xc]
	subs r0, r7, r3
	cmp r0, #7
	ble _0807FD9C
	ldr r1, _0807FDAC @ =gUpdateVisibleTiles
	movs r0, #1
	strb r0, [r1]
_0807FD9C:
	movs r1, #0xc
	ldrsh r0, [r2, r1]
	cmp r0, r5
	blt _0807FDA6
_0807FDA4:
	strh r5, [r2, #0xc]
_0807FDA6:
	bl sub_08080BC4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807FDAC: .4byte gUpdateVisibleTiles

	thumb_func_start sub_0807FDB0
sub_0807FDB0: @ 0x0807FDB0
	push {lr}
	ldr r2, _0807FDC4 @ =gUnk_0811E780
	ldrb r1, [r0, #3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0807FDC4: .4byte gUnk_0811E780

	thumb_func_start sub_0807FDC8
sub_0807FDC8: @ 0x0807FDC8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0807FDE0 @ =gUpdateVisibleTiles
	movs r0, #1
	strb r0, [r4]
	bl sub_08000108
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #3]
	strb r1, [r4]
	pop {r4, r5, pc}
	.align 2, 0
_0807FDE0: .4byte gUpdateVisibleTiles

	thumb_func_start sub_0807FDE4
sub_0807FDE4: @ 0x0807FDE4
	movs r2, #0
	movs r1, #2
	strb r1, [r0, #3]
	strh r2, [r0, #0x18]
	ldr r0, _0807FDF4 @ =gUpdateVisibleTiles
	strb r1, [r0]
	bx lr
	.align 2, 0
_0807FDF4: .4byte gUpdateVisibleTiles

	thumb_func_start sub_0807FDF8
sub_0807FDF8: @ 0x0807FDF8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0807FE18 @ =gUpdateVisibleTiles
	movs r0, #2
	strb r0, [r1]
	ldrh r0, [r4, #0x18]
	adds r0, #1
	strh r0, [r4, #0x18]
	ldrb r0, [r4, #0x10]
	cmp r0, #1
	beq _0807FE44
	cmp r0, #1
	bgt _0807FE1C
	cmp r0, #0
	beq _0807FE26
	b _0807FEB6
	.align 2, 0
_0807FE18: .4byte gUpdateVisibleTiles
_0807FE1C:
	cmp r0, #2
	beq _0807FE68
	cmp r0, #3
	beq _0807FE94
	b _0807FEB6
_0807FE26:
	ldrh r0, [r4, #0xc]
	subs r0, #4
	strh r0, [r4, #0xc]
	ldr r1, [r4, #0x30]
	ldr r0, _0807FE3C @ =gPlayerEntity
	cmp r1, r0
	bne _0807FE80
	ldr r0, [r1, #0x30]
	ldr r2, _0807FE40 @ =0xFFFFA000
	b _0807FE7C
	.align 2, 0
_0807FE3C: .4byte gPlayerEntity
_0807FE40: .4byte 0xFFFFA000
_0807FE44:
	ldrh r0, [r4, #0xa]
	adds r0, #4
	strh r0, [r4, #0xa]
	ldr r1, [r4, #0x30]
	ldr r0, _0807FE64 @ =gPlayerEntity
	cmp r1, r0
	bne _0807FE5C
	ldr r0, [r1, #0x2c]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
	str r0, [r1, #0x2c]
_0807FE5C:
	ldrh r0, [r4, #0x18]
	cmp r0, #0x3c
	bne _0807FEB6
	b _0807FE86
	.align 2, 0
_0807FE64: .4byte gPlayerEntity
_0807FE68:
	ldrh r0, [r4, #0xc]
	adds r0, #4
	strh r0, [r4, #0xc]
	ldr r1, [r4, #0x30]
	ldr r0, _0807FE90 @ =gPlayerEntity
	cmp r1, r0
	bne _0807FE80
	ldr r0, [r1, #0x30]
	movs r2, #0xc0
	lsls r2, r2, #7
_0807FE7C:
	adds r0, r0, r2
	str r0, [r1, #0x30]
_0807FE80:
	ldrh r0, [r4, #0x18]
	cmp r0, #0x28
	bne _0807FEB6
_0807FE86:
	adds r0, r4, #0
	bl sub_0807FEC8
	b _0807FEB6
	.align 2, 0
_0807FE90: .4byte gPlayerEntity
_0807FE94:
	ldrh r0, [r4, #0xa]
	subs r0, #4
	strh r0, [r4, #0xa]
	ldr r1, [r4, #0x30]
	ldr r0, _0807FEC0 @ =gPlayerEntity
	cmp r1, r0
	bne _0807FEAA
	ldr r0, [r1, #0x2c]
	ldr r2, _0807FEC4 @ =0xFFFFC000
	adds r0, r0, r2
	str r0, [r1, #0x2c]
_0807FEAA:
	ldrh r0, [r4, #0x18]
	cmp r0, #0x3c
	bne _0807FEB6
	adds r0, r4, #0
	bl sub_0807FEC8
_0807FEB6:
	movs r0, #0
	strh r0, [r4, #0x16]
	bl sub_08080BC4
	pop {r4, pc}
	.align 2, 0
_0807FEC0: .4byte gPlayerEntity
_0807FEC4: .4byte 0xFFFFC000

	thumb_func_start sub_0807FEC8
sub_0807FEC8: @ 0x0807FEC8
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0
	strb r0, [r5, #2]
	subs r0, #1
	ldr r4, _0807FEEC @ =gUnk_03003FC0
	adds r1, r4, #0
	movs r2, #0x40
	bl MemFill32
	subs r4, #0x40
	ldr r1, [r5, #0x30]
	ldrh r0, [r1, #0x2e]
	strh r0, [r4, #0x16]
	ldrh r0, [r1, #0x32]
	strh r0, [r4, #0x18]
	pop {r4, r5, pc}
	.align 2, 0
_0807FEEC: .4byte gUnk_03003FC0

	thumb_func_start sub_0807FEF0
sub_0807FEF0: @ 0x0807FEF0
	push {lr}
	ldr r2, _0807FF04 @ =gUnk_0811E78C
	ldrb r1, [r0, #3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0807FF04: .4byte gUnk_0811E78C

	thumb_func_start sub_0807FF08
sub_0807FF08: @ 0x0807FF08
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #3]
	strh r2, [r0, #0x18]
	ldr r1, _0807FF18 @ =gUpdateVisibleTiles
	movs r0, #3
	strb r0, [r1]
	bx lr
	.align 2, 0
_0807FF18: .4byte gUpdateVisibleTiles

	thumb_func_start sub_0807FF1C
sub_0807FF1C: @ 0x0807FF1C
	push {lr}
	adds r2, r0, #0
	ldr r0, _0807FF4C @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807FF48
	ldr r1, _0807FF50 @ =gUpdateVisibleTiles
	movs r0, #3
	strb r0, [r1]
	ldrh r0, [r2, #0x18]
	adds r0, #1
	strh r0, [r2, #0x18]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x13
	bls _0807FF48
	movs r0, #0
	strb r0, [r2, #2]
	bl sub_0805E5B4
_0807FF48:
	pop {pc}
	.align 2, 0
_0807FF4C: .4byte gScreenTransition
_0807FF50: .4byte gUpdateVisibleTiles

	thumb_func_start sub_0807FF54
sub_0807FF54: @ 0x0807FF54
	push {lr}
	ldr r2, _0807FF68 @ =gUnk_0811E794
	ldrb r1, [r0, #3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0807FF68: .4byte gUnk_0811E794

	thumb_func_start sub_0807FF6C
sub_0807FF6C: @ 0x0807FF6C
	push {r4, lr}
	movs r1, #1
	strb r1, [r0, #3]
	ldr r3, _0807FFC8 @ =gScreen
	ldrh r1, [r3]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3]
	adds r2, r3, #0
	adds r2, #0x60
	ldrb r0, [r2]
	movs r4, #0xb8
	lsls r4, r4, #5
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrh r1, [r2]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	movs r1, #7
	movs r4, #0
	orrs r0, r1
	strh r0, [r2]
	adds r0, r3, #0
	adds r0, #0x5a
	movs r1, #0xf0
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	bl ResetPlayer
	bl sub_080791D0
	ldr r0, _0807FFCC @ =gUnk_03004030
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _0807FFD4
	ldr r1, _0807FFD0 @ =gPlayerEntity
	movs r0, #4
	strb r0, [r1, #0x14]
	b _0807FFD8
	.align 2, 0
_0807FFC8: .4byte gScreen
_0807FFCC: .4byte gUnk_03004030
_0807FFD0: .4byte gPlayerEntity
_0807FFD4:
	ldr r0, _0807FFE0 @ =gPlayerEntity
	strb r4, [r0, #0x14]
_0807FFD8:
	bl sub_080809D4
	pop {r4, pc}
	.align 2, 0
_0807FFE0: .4byte gPlayerEntity

	thumb_func_start sub_0807FFE4
sub_0807FFE4: @ 0x0807FFE4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #2
	strb r0, [r5, #3]
	bl sub_080803D0
	adds r0, #6
	strh r0, [r5, #0x18]
	ldr r4, _0808002C @ =gUnk_0200B640
	bl sub_08080278
	strh r0, [r4]
	ldr r1, _08080030 @ =gUnk_08109194
	ldr r0, _08080034 @ =gUnk_03004030
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0]
	bl sub_080197D4
	ldr r4, _08080038 @ =gMapDataTop
	ldrh r1, [r5, #0x1e]
	lsrs r1, r1, #4
	ldrh r2, [r5, #0x20]
	lsrs r2, r2, #4
	adds r0, r4, #0
	bl sub_0807C8B0
	ldr r0, _0808003C @ =gMapDataTopSpecial
	subs r4, #4
	adds r1, r4, #0
	bl sub_0801AB08
	pop {r4, r5, pc}
	.align 2, 0
_0808002C: .4byte gUnk_0200B640
_08080030: .4byte gUnk_08109194
_08080034: .4byte gUnk_03004030
_08080038: .4byte gMapDataTop
_0808003C: .4byte gMapDataTopSpecial

	thumb_func_start sub_08080040
sub_08080040: @ 0x08080040
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r4, [r5, #0x18]
	subs r4, #6
	strh r4, [r5, #0x18]
	ldrh r0, [r5, #0x18]
	lsls r0, r0, #1
	movs r1, #3
	bl __divsi3
	strh r0, [r5, #0x1a]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r4, #0x2a
	bls _080800C6
	ldr r3, [r5, #0x30]
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	movs r2, #0xa
	ldrsh r1, [r5, r2]
	subs r2, r0, r1
	ldrh r1, [r5, #0x18]
	subs r0, r2, r1
	adds r7, r0, #0
	adds r7, #8
	cmp r7, #0
	bge _08080078
	movs r7, #0
_08080078:
	adds r0, r2, r1
	adds r6, r0, #0
	subs r6, #8
	cmp r6, #0xf0
	ble _08080084
	movs r6, #0xf0
_08080084:
	movs r1, #0x32
	ldrsh r0, [r3, r1]
	movs r2, #0xc
	ldrsh r1, [r5, r2]
	subs r2, r0, r1
	ldrh r1, [r5, #0x1a]
	subs r0, r2, r1
	adds r4, r0, #0
	adds r4, #8
	cmp r4, #0
	bge _0808009C
	movs r4, #0
_0808009C:
	adds r0, r2, r1
	adds r3, r0, #0
	subs r3, #8
	cmp r3, #0xa0
	ble _080800A8
	movs r3, #0xa0
_080800A8:
	ldr r2, _080800F0 @ =gScreen
	movs r1, #0xff
	ands r7, r1
	lsls r0, r7, #8
	ands r6, r1
	orrs r0, r6
	adds r6, r2, #0
	adds r6, #0x5a
	strh r0, [r6]
	ands r4, r1
	lsls r0, r4, #8
	ands r3, r1
	orrs r0, r3
	adds r2, #0x5e
	strh r0, [r2]
_080800C6:
	ldrh r0, [r5, #0x18]
	cmp r0, #0
	bne _080800FC
	movs r0, #3
	strb r0, [r5, #3]
	bl DeleteSleepingEntities
	bl sub_0807C810
	ldr r1, _080800F4 @ =gUnk_08109194
	ldr r0, _080800F8 @ =gUnk_03004030
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl sub_08080C80
	b _08080102
	.align 2, 0
_080800F0: .4byte gScreen
_080800F4: .4byte gUnk_08109194
_080800F8: .4byte gUnk_03004030
_080800FC:
	ldr r1, _08080104 @ =gUpdateVisibleTiles
	movs r0, #4
	strb r0, [r1]
_08080102:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08080104: .4byte gUpdateVisibleTiles

	thumb_func_start sub_08080108
sub_08080108: @ 0x08080108
	push {r4, r5, r6, lr}
	movs r1, #4
	strb r1, [r0, #3]
	ldr r5, _08080178 @ =gMapDataBottom
	movs r0, #0xc0
	lsls r0, r0, #6
	adds r1, r5, r0
	movs r6, #0x80
	lsls r6, r6, #6
	adds r0, r5, #0
	adds r2, r6, #0
	bl MemCopy
	ldr r4, _0808017C @ =gMapDataTop
	movs r0, #0xc0
	lsls r0, r0, #6
	adds r1, r4, r0
	adds r0, r4, #0
	adds r2, r6, #0
	bl MemCopy
	bl sub_08080368
	ldr r1, _08080180 @ =gUnk_02034480
	ldr r0, _08080184 @ =gUnk_0200B640
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _08080188 @ =gUnk_02022830
	ldr r1, _0808018C @ =gUnk_020246B0
	movs r2, #0xc0
	lsls r2, r2, #5
	bl MemCopy
	subs r5, #4
	adds r0, r5, #0
	bl sub_08080B60
	subs r4, #4
	adds r0, r4, #0
	bl sub_08080B60
	bl sub_0807BBE4
	bl sub_0807BC84
	bl sub_0805E248
	ldr r0, _08080190 @ =gUnk_02019EE0
	adds r1, r5, #0
	bl sub_0801AB08
	ldr r0, _08080194 @ =gMapDataTopSpecial
	adds r1, r4, #0
	bl sub_0801AB08
	pop {r4, r5, r6, pc}
	.align 2, 0
_08080178: .4byte gMapDataBottom
_0808017C: .4byte gMapDataTop
_08080180: .4byte gUnk_02034480
_08080184: .4byte gUnk_0200B640
_08080188: .4byte gUnk_02022830
_0808018C: .4byte gUnk_020246B0
_08080190: .4byte gUnk_02019EE0
_08080194: .4byte gMapDataTopSpecial

	thumb_func_start sub_08080198
sub_08080198: @ 0x08080198
	push {r4, lr}
	movs r1, #5
	strb r1, [r0, #3]
	movs r4, #0
	movs r1, #0xff
	strh r1, [r0, #0x1c]
	bl LoadRoom
	bl sub_0804AFF4
	ldr r0, _080801B8 @ =gUpdateVisibleTiles
	strb r4, [r0]
	bl sub_080805F8
	pop {r4, pc}
	.align 2, 0
_080801B8: .4byte gUpdateVisibleTiles

	thumb_func_start sub_080801BC
sub_080801BC: @ 0x080801BC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r4, [r5, #0x18]
	adds r4, #6
	strh r4, [r5, #0x18]
	ldrh r0, [r5, #0x18]
	lsls r0, r0, #1
	movs r1, #3
	bl __divsi3
	strh r0, [r5, #0x1a]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r4, #0x1e
	bls _08080232
	ldr r2, [r5, #0x30]
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	movs r3, #0xa
	ldrsh r0, [r5, r3]
	subs r0, r1, r0
	ldrh r1, [r5, #0x18]
	subs r7, r0, r1
	cmp r7, #0
	bge _080801F0
	movs r7, #0
_080801F0:
	adds r6, r0, r1
	cmp r6, #0xf0
	ble _080801F8
	movs r6, #0xf0
_080801F8:
	movs r0, #0x32
	ldrsh r1, [r2, r0]
	movs r2, #0xc
	ldrsh r0, [r5, r2]
	subs r0, r1, r0
	ldrh r1, [r5, #0x1a]
	subs r4, r0, r1
	cmp r4, #0
	bge _0808020C
	movs r4, #0
_0808020C:
	adds r3, r0, r1
	cmp r3, #0xa0
	ble _08080214
	movs r3, #0xa0
_08080214:
	ldr r2, _08080260 @ =gScreen
	movs r1, #0xff
	ands r7, r1
	lsls r0, r7, #8
	ands r6, r1
	orrs r0, r6
	adds r6, r2, #0
	adds r6, #0x5a
	strh r0, [r6]
	ands r4, r1
	lsls r0, r4, #8
	ands r3, r1
	orrs r0, r3
	adds r2, #0x5e
	strh r0, [r2]
_08080232:
	ldrh r0, [r5, #0x1c]
	cmp r0, #0
	bne _08080268
	strb r0, [r5, #2]
	strh r0, [r5]
	bl sub_0805E5B4
	ldr r1, _08080260 @ =gScreen
	ldrh r2, [r1]
	ldr r0, _08080264 @ =0x0000BFFF
	ands r0, r2
	strh r0, [r1]
	adds r2, r1, #0
	adds r2, #0x60
	ldrb r0, [r2]
	strh r0, [r2]
	adds r1, #0x62
	ldrh r2, [r1]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r2
	strh r0, [r1]
	b _08080272
	.align 2, 0
_08080260: .4byte gScreen
_08080264: .4byte 0x0000BFFF
_08080268:
	ldr r0, _08080274 @ =gUpdateVisibleTiles
	movs r1, #4
	strb r1, [r0]
	movs r0, #0
	strh r0, [r5, #0x1c]
_08080272:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08080274: .4byte gUpdateVisibleTiles

	thumb_func_start sub_08080278
sub_08080278: @ 0x08080278
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08080344 @ =gUnk_02022830
	mov ip, r0
	ldr r1, _08080348 @ =gRoomControls
	ldrh r0, [r1, #0x1e]
	lsrs r0, r0, #4
	str r0, [sp]
	ldrh r0, [r1, #0x20]
	lsrs r0, r0, #4
	lsls r0, r0, #6
	str r0, [sp, #4]
	movs r5, #0
	mov sl, r5
	cmp r5, r0
	bhs _08080336
	mov sb, r5
_080802A2:
	movs r1, #0
	mov r8, r1
	ldr r0, [sp]
	cmp r8, r0
	bhs _08080328
	ldr r4, _0808034C @ =gMapDataTop
	add r4, sb
	ldr r7, _08080350 @ =gUnk_0200E654
	add r7, sb
	ldr r3, _08080354 @ =gMapDataBottom
	add r3, sb
	ldr r6, _08080358 @ =gUnk_02028EB4
	add r6, sb
_080802BC:
	mov r2, sl
	add r2, r8
	ldrh r0, [r6]
	ldrh r1, [r3]
	cmp r0, r1
	beq _080802EA
	ldr r0, _0808035C @ =0x00003FFF
	cmp r1, r0
	bhi _080802EA
	adds r0, #1
	adds r1, r0, #0
	adds r0, r2, #0
	orrs r0, r1
	mov r1, ip
	strh r0, [r1]
	ldrh r0, [r3]
	strh r0, [r1, #2]
	movs r0, #4
	add ip, r0
	adds r5, #1
	ldr r0, _08080360 @ =0x000005FF
	cmp r5, r0
	bhi _08080336
_080802EA:
	ldrh r0, [r7]
	ldrh r1, [r4]
	cmp r0, r1
	beq _08080316
	ldr r0, _0808035C @ =0x00003FFF
	cmp r1, r0
	bhi _08080316
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	orrs r2, r0
	mov r0, ip
	strh r2, [r0]
	ldrh r0, [r4]
	mov r1, ip
	strh r0, [r1, #2]
	movs r0, #4
	add ip, r0
	adds r5, #1
	ldr r0, _08080364 @ =0x000007FF
	cmp r5, r0
	bhi _08080336
_08080316:
	adds r4, #2
	adds r7, #2
	adds r3, #2
	adds r6, #2
	movs r1, #1
	add r8, r1
	ldr r0, [sp]
	cmp r8, r0
	blo _080802BC
_08080328:
	movs r1, #0x80
	add sb, r1
	movs r0, #0x40
	add sl, r0
	ldr r1, [sp, #4]
	cmp sl, r1
	blo _080802A2
_08080336:
	adds r0, r5, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08080344: .4byte gUnk_02022830
_08080348: .4byte gRoomControls
_0808034C: .4byte gMapDataTop
_08080350: .4byte gUnk_0200E654
_08080354: .4byte gMapDataBottom
_08080358: .4byte gUnk_02028EB4
_0808035C: .4byte 0x00003FFF
_08080360: .4byte 0x000005FF
_08080364: .4byte 0x000007FF

	thumb_func_start sub_08080368
sub_08080368: @ 0x08080368
	push {r4, r5, r6, r7, lr}
	ldr r0, _08080384 @ =gUnk_03004030
	ldr r1, _08080388 @ =gRoomControls
	ldrb r0, [r0, #0xa]
	ldrb r1, [r1, #4]
	cmp r0, r1
	beq _08080390
	cmp r0, #0xff
	beq _08080390
	ldr r1, _0808038C @ =gUnk_02034480
	movs r0, #0
	strh r0, [r1]
	b _080803BE
	.align 2, 0
_08080384: .4byte gUnk_03004030
_08080388: .4byte gRoomControls
_0808038C: .4byte gUnk_02034480
_08080390:
	ldr r5, _080803C0 @ =gUnk_020246B0
	ldr r0, _080803C4 @ =gUnk_02034480
	ldrh r0, [r0]
	lsls r6, r0, #1
	movs r4, #0
	cmp r4, r6
	bhs _080803B8
	ldr r0, _080803C8 @ =0x00000FFF
	adds r7, r0, #0
_080803A2:
	ldrh r0, [r5, #2]
	ldrh r2, [r5]
	adds r1, r7, #0
	ands r1, r2
	lsrs r2, r2, #0xe
	bl sub_0807B9B8
	adds r5, #4
	adds r4, #2
	cmp r4, r6
	blo _080803A2
_080803B8:
	ldr r1, _080803CC @ =gUpdateVisibleTiles
	movs r0, #0
	strb r0, [r1]
_080803BE:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080803C0: .4byte gUnk_020246B0
_080803C4: .4byte gUnk_02034480
_080803C8: .4byte 0x00000FFF
_080803CC: .4byte gUpdateVisibleTiles

	thumb_func_start sub_080803D0
sub_080803D0: @ 0x080803D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	ldr r1, _080804F0 @ =gRoomControls
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	ldrh r2, [r1, #6]
	subs r0, r0, r2
	str r0, [sp, #0x18]
	ldr r3, [r1, #0x30]
	movs r4, #0x2e
	ldrsh r0, [r3, r4]
	subs r0, r0, r2
	str r0, [sp, #0x10]
	movs r2, #0xc
	ldrsh r0, [r1, r2]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	str r0, [sp, #0x1c]
	movs r4, #0x32
	ldrsh r0, [r3, r4]
	subs r0, r0, r1
	str r0, [sp, #0x14]
	movs r0, #0x3c
	str r0, [sp, #8]
_08080408:
	movs r7, #0
	ldr r1, [sp, #8]
	adds r1, #6
	str r1, [sp, #8]
	adds r2, r1, #0
	muls r2, r1, r2
	mov sl, r2
	lsls r4, r1, #1
	adds r0, r4, #0
	movs r1, #3
	bl __divsi3
	str r0, [sp, #0xc]
	adds r1, r0, #0
	muls r1, r0, r1
	mov sb, r1
	movs r2, #0
	str r2, [sp, #4]
	rsbs r4, r4, #0
	adds r4, #1
	mov r0, sb
	muls r0, r4, r0
	mov r4, sl
	lsls r5, r4, #1
	adds r4, r0, r5
	ldr r0, [sp, #8]
	mov r6, sb
	muls r6, r0, r6
	adds r0, r6, #0
	mov r1, sl
	bl __divsi3
	adds r2, r0, #0
	cmp r7, r2
	bgt _08080506
	ldr r1, [sp, #0x18]
	adds r1, #0xf8
	str r1, [sp, #0x20]
	mov r1, sl
	adds r0, r5, r1
	lsls r3, r0, #1
	str r6, [sp, #0x2c]
	ldr r0, [sp, #8]
	lsls r1, r0, #2
	rsbs r1, r1, #0
	adds r1, #4
	mov r8, r1
	rsbs r0, r0, #0
	adds r0, #8
	ldr r1, [sp, #0x10]
	adds r6, r0, r1
	ldr r0, [sp, #8]
	adds r5, r0, r1
	mov r0, r8
	mov r1, sb
	muls r1, r0, r1
	mov r8, r1
_0808047A:
	ldr r1, [sp, #0x1c]
	adds r1, #0xa8
	mov ip, r1
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #4]
	adds r0, r0, r1
	str r0, [sp, #0x34]
	cmp ip, r0
	ble _080804A0
	ldr r0, [sp, #0x20]
	cmp r0, r5
	ble _08080496
	movs r0, #1
	orrs r7, r0
_08080496:
	ldr r1, [sp, #0x18]
	cmp r1, r6
	bge _080804A0
	movs r0, #2
	orrs r7, r0
_080804A0:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #4]
	subs r0, r0, r1
	mov ip, r0
	adds r0, #8
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	bge _080804C4
	ldr r0, [sp, #0x20]
	cmp r0, r5
	ble _080804BA
	movs r0, #4
	orrs r7, r0
_080804BA:
	ldr r1, [sp, #0x18]
	cmp r1, r6
	bge _080804C4
	movs r0, #8
	orrs r7, r0
_080804C4:
	cmp r4, #0
	ble _080804F4
	mov r2, r8
	adds r0, r2, r3
	adds r4, r4, r0
	ldr r0, [sp, #0x2c]
	mov r1, sb
	subs r0, r0, r1
	str r0, [sp, #0x2c]
	lsls r0, r1, #2
	add r8, r0
	adds r6, #1
	subs r5, #1
	ldr r0, [sp, #0x2c]
	mov r1, sl
	str r3, [sp, #0x30]
	bl __divsi3
	adds r2, r0, #0
	ldr r3, [sp, #0x30]
	b _080804F6
	.align 2, 0
_080804F0: .4byte gRoomControls
_080804F4:
	adds r4, r4, r3
_080804F6:
	mov r1, sl
	lsls r0, r1, #2
	adds r3, r3, r0
	ldr r0, [sp, #4]
	adds r0, #1
	str r0, [sp, #4]
	cmp r0, r2
	ble _0808047A
_08080506:
	movs r1, #0
	str r1, [sp]
	ldr r2, [sp, #0xc]
	str r2, [sp, #4]
	mov r4, sb
	lsls r6, r4, #1
	lsls r0, r2, #1
	rsbs r0, r0, #0
	adds r0, #1
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	adds r4, r6, r0
	mov r5, sl
	muls r5, r2, r5
	adds r0, r5, #0
	mov r1, sb
	bl __divsi3
	adds r2, r0, #0
	ldr r0, [sp]
	cmp r0, r2
	bgt _080805E4
	ldr r1, [sp, #0x18]
	adds r1, #0xf8
	str r1, [sp, #0x24]
	mov r1, sb
	adds r0, r6, r1
	lsls r0, r0, #1
	mov r8, r0
	ldr r3, [sp, #0x10]
	adds r3, #8
	ldr r6, [sp, #0x10]
	str r5, [sp, #0x28]
	ldr r1, [sp, #4]
	lsls r0, r1, #2
	rsbs r0, r0, #0
	adds r0, #4
	mov r5, sl
	muls r5, r0, r5
_08080556:
	ldr r0, [sp, #0x1c]
	adds r0, #0xa8
	mov ip, r0
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	adds r1, r1, r0
	str r1, [sp, #0x34]
	cmp ip, r1
	ble _0808057C
	ldr r1, [sp, #0x24]
	cmp r1, r6
	ble _08080572
	movs r0, #0x10
	orrs r7, r0
_08080572:
	ldr r0, [sp, #0x18]
	cmp r0, r3
	bge _0808057C
	movs r0, #0x20
	orrs r7, r0
_0808057C:
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	subs r1, r1, r0
	mov ip, r1
	mov r0, ip
	adds r0, #8
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	bge _080805A2
	ldr r0, [sp, #0x24]
	cmp r0, r6
	ble _08080598
	movs r0, #0x40
	orrs r7, r0
_08080598:
	ldr r1, [sp, #0x18]
	cmp r1, r3
	bge _080805A2
	movs r0, #0x80
	orrs r7, r0
_080805A2:
	cmp r4, #0
	ble _080805CE
	mov r2, r8
	adds r0, r2, r5
	adds r4, r4, r0
	ldr r0, [sp, #0x28]
	mov r1, sl
	subs r0, r0, r1
	str r0, [sp, #0x28]
	lsls r0, r1, #2
	adds r5, r5, r0
	ldr r2, [sp, #4]
	subs r2, #1
	str r2, [sp, #4]
	ldr r0, [sp, #0x28]
	mov r1, sb
	str r3, [sp, #0x30]
	bl __divsi3
	adds r2, r0, #0
	ldr r3, [sp, #0x30]
	b _080805D0
_080805CE:
	add r4, r8
_080805D0:
	mov r1, sb
	lsls r0, r1, #2
	add r8, r0
	subs r3, #1
	adds r6, #1
	ldr r0, [sp]
	adds r0, #1
	str r0, [sp]
	cmp r0, r2
	ble _08080556
_080805E4:
	cmp r7, #0
	beq _080805EA
	b _08080408
_080805EA:
	ldr r0, [sp, #8]
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080805F8
sub_080805F8: @ 0x080805F8
	push {lr}
	ldr r0, _08080610 @ =gRoomControls
	ldrb r0, [r0, #4]
	subs r0, #0xc
	cmp r0, #0xd
	bhi _0808065C
	lsls r0, r0, #2
	ldr r1, _08080614 @ =_08080618
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08080610: .4byte gRoomControls
_08080614: .4byte _08080618
_08080618: @ jump table
	.4byte _08080650 @ case 0
	.4byte _0808065C @ case 1
	.4byte _0808065C @ case 2
	.4byte _08080650 @ case 3
	.4byte _0808065C @ case 4
	.4byte _0808065C @ case 5
	.4byte _0808065C @ case 6
	.4byte _08080650 @ case 7
	.4byte _08080650 @ case 8
	.4byte _0808065C @ case 9
	.4byte _08080650 @ case 10
	.4byte _08080650 @ case 11
	.4byte _0808065C @ case 12
	.4byte _08080650 @ case 13
_08080650:
	ldr r1, _08080658 @ =gUnk_03004030
	movs r0, #1
	b _08080660
	.align 2, 0
_08080658: .4byte gUnk_03004030
_0808065C:
	ldr r1, _08080664 @ =gUnk_03004030
	movs r0, #0
_08080660:
	strb r0, [r1, #8]
	pop {pc}
	.align 2, 0
_08080664: .4byte gUnk_03004030

	thumb_func_start sub_08080668
sub_08080668: @ 0x08080668
	push {r4, r5, lr}
	ldr r5, _080806A4 @ =gRoomControls
	adds r0, r5, #0
	movs r1, #0x38
	bl MemClear
	ldr r4, _080806A8 @ =gUnk_03004030
	adds r0, r4, #0
	movs r1, #0xc
	bl MemClear
	ldr r0, _080806AC @ =0x0000FFFF
	strh r0, [r5, #0x22]
	movs r0, #0xff
	strb r0, [r4, #0xa]
	ldr r1, _080806B0 @ =gUnk_02034480
	movs r0, #0
	strh r0, [r1]
	ldr r0, _080806B4 @ =gUnk_02019EE0
	movs r4, #0x80
	lsls r4, r4, #8
	adds r1, r4, #0
	bl MemClear
	ldr r0, _080806B8 @ =gMapDataTopSpecial
	adds r1, r4, #0
	bl MemClear
	pop {r4, r5, pc}
	.align 2, 0
_080806A4: .4byte gRoomControls
_080806A8: .4byte gUnk_03004030
_080806AC: .4byte 0x0000FFFF
_080806B0: .4byte gUnk_02034480
_080806B4: .4byte gUnk_02019EE0
_080806B8: .4byte gMapDataTopSpecial

	thumb_func_start sub_080806BC
sub_080806BC: @ 0x080806BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov r8, r1
	adds r7, r2, #0
	adds r6, r3, #0
	ldr r0, _08080710 @ =gArea
	ldr r1, _08080714 @ =0x0000085C
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r5, [r0, #0x18]
	ldrh r0, [r5]
	ldr r1, _08080718 @ =0x0000FFFF
	cmp r0, r1
	beq _08080728
	mov sl, r1
_080806E2:
	ldrh r2, [r5]
	movs r0, #1
	lsls r0, r2
	ands r0, r6
	cmp r0, #0
	beq _08080720
	ldr r1, _0808071C @ =gUnk_0811E7AC
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r5, #0
	mov r1, sb
	mov r2, r8
	adds r3, r7, #0
	bl _call_via_r4
	cmp r0, #0
	beq _08080720
	adds r0, r5, #0
	bl DoExitTransition
	movs r0, #1
	b _0808072A
	.align 2, 0
_08080710: .4byte gArea
_08080714: .4byte 0x0000085C
_08080718: .4byte 0x0000FFFF
_0808071C: .4byte gUnk_0811E7AC
_08080720:
	adds r5, #0x14
	ldrh r0, [r5]
	cmp r0, sl
	bne _080806E2
_08080728:
	movs r0, #0
_0808072A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08080734
sub_08080734: @ 0x08080734
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r0, _08080778 @ =gArea
	ldr r1, _0808077C @ =0x0000085C
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r4, [r0, #0x18]
	movs r0, #0xa
	mov r8, r0
	ldrh r0, [r4]
	ldr r1, _08080780 @ =0x0000FFFF
	cmp r0, r1
	beq _0808078C
	adds r7, r1, #0
_08080756:
	movs r0, #1
	ldrh r1, [r4]
	lsls r0, r1
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _08080784
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_08080808
	cmp r0, #0
	beq _08080784
	adds r0, r4, #0
	b _0808078E
	.align 2, 0
_08080778: .4byte gArea
_0808077C: .4byte 0x0000085C
_08080780: .4byte 0x0000FFFF
_08080784:
	adds r4, #0x14
	ldrh r0, [r4]
	cmp r0, r7
	bne _08080756
_0808078C:
	movs r0, #0
_0808078E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08080794
sub_08080794: @ 0x08080794
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

	thumb_func_start sub_08080808
sub_08080808: @ 0x08080808
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r2, #0
	ldrb r0, [r3, #0xa]
	lsls r0, r0, #1
	ldr r2, _08080838 @ =gUnk_0811E7BC
	adds r4, r0, r2
	ldrb r0, [r4]
	ldrh r2, [r3, #2]
	subs r1, r1, r2
	adds r1, r1, r0
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0808083C
	ldrb r1, [r4, #1]
	ldrh r0, [r3, #4]
	subs r0, r5, r0
	adds r0, r0, r1
	lsls r1, r1, #1
	cmp r0, r1
	bhi _0808083C
	movs r0, #1
	b _0808083E
	.align 2, 0
_08080838: .4byte gUnk_0811E7BC
_0808083C:
	movs r0, #0
_0808083E:
	pop {r4, r5, pc}

	thumb_func_start DoExitTransition
DoExitTransition: @ 0x08080840
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0808085C @ =gScreenTransition
	movs r1, #1
	strb r1, [r0, #8]
	adds r2, r0, #0
	adds r2, #0xc
	ldrh r1, [r4, #6]
	ldr r0, _08080860 @ =0x000003FF
	cmp r1, r0
	bhi _08080864
	strh r1, [r2, #4]
	b _08080872
	.align 2, 0
_0808085C: .4byte gScreenTransition
_08080860: .4byte 0x000003FF
_08080864:
	ldr r0, _08080880 @ =gRoomControls
	ldr r0, [r0, #0x30]
	ldrh r1, [r0, #0x2e]
	ldr r3, _08080884 @ =0xFFFF8000
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #4]
_08080872:
	ldrh r1, [r4, #8]
	ldr r0, _08080888 @ =0x000003FF
	cmp r1, r0
	bhi _0808088C
	strh r1, [r2, #6]
	b _0808089A
	.align 2, 0
_08080880: .4byte gRoomControls
_08080884: .4byte 0xFFFF8000
_08080888: .4byte 0x000003FF
_0808088C:
	ldr r0, _080808CC @ =gRoomControls
	ldr r0, [r0, #0x30]
	ldrh r1, [r0, #0x32]
	ldr r3, _080808D0 @ =0xFFFF8000
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #6]
_0808089A:
	ldrb r0, [r4, #0xb]
	strb r0, [r2]
	ldrb r0, [r4, #0xc]
	strb r0, [r2, #1]
	ldrb r0, [r4, #0xd]
	strb r0, [r2, #8]
	ldrb r0, [r4, #0xe]
	strb r0, [r2, #3]
	ldrb r0, [r4, #0xf]
	strb r0, [r2, #2]
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _080808B8
	bl SoundReq
_080808B8:
	ldr r0, _080808D4 @ =gUnk_0811E7C4
	ldrh r1, [r4]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r4, #0xa]
	ldr r1, [r1]
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080808CC: .4byte gRoomControls
_080808D0: .4byte 0xFFFF8000
_080808D4: .4byte gUnk_0811E7C4
