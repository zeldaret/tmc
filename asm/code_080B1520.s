	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080B1520
sub_080B1520: @ 0x080B1520
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0
	cmp r0, #4
	bne _080B153C
	ldr r1, _080B1534 @ =gUnk_02036A50
	ldr r0, _080B1538 @ =gUnk_08DE7D40
	str r0, [r1]
	b _080B1558
	.align 2, 0
_080B1534: .4byte gUnk_02036A50
_080B1538: .4byte gUnk_08DE7D40
_080B153C:
	cmp r0, #0x40
	bne _080B1550
	ldr r1, _080B1548 @ =gUnk_02036A50
	ldr r0, _080B154C @ =gUnk_08DE7D4C
	str r0, [r1]
	b _080B1558
	.align 2, 0
_080B1548: .4byte gUnk_02036A50
_080B154C: .4byte gUnk_08DE7D4C
_080B1550:
	ldr r1, _080B1560 @ =gUnk_02036A50
	ldr r0, _080B1564 @ =gUnk_08DE7D40
	str r0, [r1]
	movs r2, #1
_080B1558:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_080B1560: .4byte gUnk_02036A50
_080B1564: .4byte gUnk_08DE7D40

	thumb_func_start sub_080B1568
sub_080B1568: @ 0x080B1568
	push {r4, r5, r6, lr}
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r4, _080B15C8 @ =0x04000208
	ldrh r3, [r4]
	adds r6, r3, #0
	movs r3, #0
	strh r3, [r4]
	ldr r5, _080B15CC @ =0x04000204
	ldrh r4, [r5]
	ldr r3, _080B15D0 @ =0x0000F8FF
	ands r4, r3
	ldr r3, _080B15D4 @ =gUnk_02036A50
	ldr r3, [r3]
	ldrh r3, [r3, #6]
	orrs r4, r3
	strh r4, [r5]
	ldr r3, _080B15D8 @ =0x040000D4
	str r0, [r3]
	ldr r0, _080B15DC @ =0x040000D8
	str r1, [r0]
	ldr r1, _080B15E0 @ =0x040000DC
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r1]
	adds r1, #2
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _080B15BC
	ldr r2, _080B15E4 @ =0x040000DE
	movs r0, #0x80
	lsls r0, r0, #8
	adds r1, r0, #0
_080B15B4:
	ldrh r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _080B15B4
_080B15BC:
	ldr r0, _080B15C8 @ =0x04000208
	strh r6, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B15C8: .4byte 0x04000208
_080B15CC: .4byte 0x04000204
_080B15D0: .4byte 0x0000F8FF
_080B15D4: .4byte gUnk_02036A50
_080B15D8: .4byte 0x040000D4
_080B15DC: .4byte 0x040000D8
_080B15E0: .4byte 0x040000DC
_080B15E4: .4byte 0x040000DE

	thumb_func_start sub_080B15E8
sub_080B15E8: @ 0x080B15E8
	push {r4, r5, r6, lr}
	sub sp, #0x88
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _080B1600 @ =gUnk_02036A50
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r3, r0
	blo _080B1608
	ldr r0, _080B1604 @ =0x000080FF
	b _080B168A
	.align 2, 0
_080B1600: .4byte gUnk_02036A50
_080B1604: .4byte 0x000080FF
_080B1608:
	ldr r0, _080B1694 @ =gUnk_02036A50
	adds r6, r0, #0
	ldr r0, [r0]
	ldrb r1, [r0, #8]
	lsls r0, r1, #1
	mov r4, sp
	adds r2, r0, r4
	adds r2, #2
	movs r4, #0
	cmp r4, r1
	bhs _080B1632
_080B161E:
	strh r3, [r2]
	subs r2, #2
	lsrs r3, r3, #1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r6]
	ldrb r0, [r0, #8]
	cmp r4, r0
	blo _080B161E
_080B1632:
	movs r0, #1
	strh r0, [r2]
	subs r2, #2
	strh r0, [r2]
	movs r4, #0xd0
	lsls r4, r4, #0x14
	ldr r0, _080B1694 @ =gUnk_02036A50
	ldr r0, [r0]
	ldrb r2, [r0, #8]
	adds r2, #3
	mov r0, sp
	adds r1, r4, #0
	bl sub_080B1568
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0x44
	bl sub_080B1568
	add r2, sp, #8
	adds r5, #6
	movs r4, #0
	movs r6, #1
_080B1660:
	movs r1, #0
	movs r3, #0
_080B1664:
	lsls r1, r1, #0x11
	ldrh r0, [r2]
	ands r0, r6
	lsrs r1, r1, #0x10
	orrs r1, r0
	adds r2, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xf
	bls _080B1664
	strh r1, [r5]
	subs r5, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _080B1660
	movs r0, #0
_080B168A:
	add sp, #0x88
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080B1694: .4byte gUnk_02036A50

	thumb_func_start sub_080B1698
sub_080B1698: @ 0x080B1698
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #1
	bl sub_080B16AC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1

	thumb_func_start sub_080B16AC
sub_080B16AC: @ 0x080B16AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xb0
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldr r0, _080B16C8 @ =gUnk_02036A50
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r1, r0
	blo _080B16D0
	ldr r0, _080B16CC @ =0x000080FF
	b _080B1804
	.align 2, 0
_080B16C8: .4byte gUnk_02036A50
_080B16CC: .4byte 0x000080FF
_080B16D0:
	ldr r0, _080B1710 @ =gUnk_02036A50
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	lsls r0, r0, #1
	mov r2, sp
	adds r3, r0, r2
	adds r3, #0x84
	movs r0, #0
	strh r0, [r3]
	subs r3, #2
	movs r4, #0
_080B16E6:
	ldrh r2, [r5]
	adds r5, #2
	movs r0, #0
_080B16EC:
	strh r2, [r3]
	subs r3, #2
	lsrs r2, r2, #1
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _080B16EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _080B16E6
	movs r4, #0
	ldr r0, _080B1710 @ =gUnk_02036A50
	adds r2, r0, #0
	ldr r0, [r0]
	b _080B1722
	.align 2, 0
_080B1710: .4byte gUnk_02036A50
_080B1714:
	strh r1, [r3]
	subs r3, #2
	lsrs r1, r1, #1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r2]
_080B1722:
	ldrb r0, [r0, #8]
	cmp r4, r0
	blo _080B1714
	movs r0, #0
	strh r0, [r3]
	subs r3, #2
	movs r6, #1
	strh r6, [r3]
	movs r4, #0xd0
	lsls r4, r4, #0x14
	ldr r0, _080B1794 @ =gUnk_02036A50
	ldr r0, [r0]
	ldrb r2, [r0, #8]
	adds r2, #0x43
	mov r0, sp
	adds r1, r4, #0
	bl sub_080B1568
	movs r5, #0
	add r2, sp, #0xa4
	strh r5, [r2]
	mov r1, sp
	adds r1, #0xa6
	ldr r0, _080B1798 @ =0x04000006
	ldrh r0, [r0]
	strh r0, [r1]
	add r0, sp, #0xac
	str r5, [r0]
	ldrh r0, [r2]
	cmp r0, #0
	bne _080B1768
	ldrh r0, [r4]
	ands r0, r6
	cmp r0, #0
	bne _080B17F8
_080B1768:
	add r3, sp, #0xa8
	ldr r0, _080B1798 @ =0x04000006
	ldrh r0, [r0]
	strh r0, [r3]
	mov r4, sp
	adds r4, #0xa6
	ldrh r1, [r3]
	ldrh r0, [r4]
	cmp r1, r0
	beq _080B17E2
	ldrh r1, [r3]
	ldrh r0, [r4]
	cmp r1, r0
	bls _080B179C
	add r2, sp, #0xac
	ldrh r1, [r3]
	ldrh r0, [r4]
	subs r1, r1, r0
	ldr r0, [r2]
	adds r1, r1, r0
	str r1, [r2]
	b _080B17B2
	.align 2, 0
_080B1794: .4byte gUnk_02036A50
_080B1798: .4byte 0x04000006
_080B179C:
	add r2, sp, #0xac
	add r0, sp, #0xa8
	ldrh r0, [r0]
	adds r0, #0xe4
	mov r1, sp
	adds r1, #0xa6
	ldrh r1, [r1]
	subs r0, r0, r1
	ldr r1, [r2]
	adds r0, r0, r1
	str r0, [r2]
_080B17B2:
	add r0, sp, #0xac
	ldr r0, [r0]
	cmp r0, #0x88
	bls _080B17D8
	add r0, sp, #0xa4
	ldrh r0, [r0]
	cmp r0, #0
	bne _080B1802
	movs r0, #0xd0
	lsls r0, r0, #0x14
	ldrh r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B1802
	ldr r5, _080B17D4 @ =0x0000C001
	b _080B1802
	.align 2, 0
_080B17D4: .4byte 0x0000C001
_080B17D8:
	mov r0, sp
	adds r0, #0xa6
	add r1, sp, #0xa8
	ldrh r1, [r1]
	strh r1, [r0]
_080B17E2:
	add r2, sp, #0xa4
	ldrh r0, [r2]
	cmp r0, #0
	bne _080B1768
	movs r0, #0xd0
	lsls r0, r0, #0x14
	movs r1, #1
	ldrh r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _080B1768
_080B17F8:
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	cmp r7, #0
	bne _080B1768
_080B1802:
	adds r0, r5, #0
_080B1804:
	add sp, #0xb0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080B180C
sub_080B180C: @ 0x080B180C
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r5, #0
	ldr r0, _080B1828 @ =gUnk_02036A50
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r1, r0
	blo _080B1830
	ldr r0, _080B182C @ =0x000080FF
	b _080B185A
	.align 2, 0
_080B1828: .4byte gUnk_02036A50
_080B182C: .4byte 0x000080FF
_080B1830:
	adds r0, r1, #0
	mov r1, sp
	bl sub_080B15E8
	mov r2, sp
	movs r3, #0
	b _080B1848
_080B183E:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bhi _080B1858
_080B1848:
	ldrh r1, [r4]
	ldrh r0, [r2]
	adds r2, #2
	adds r4, #2
	cmp r1, r0
	beq _080B183E
	movs r5, #0x80
	lsls r5, r5, #8
_080B1858:
	adds r0, r5, #0
_080B185A:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B1864
sub_080B1864: @ 0x080B1864
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _080B1876
_080B1870:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080B1876:
	cmp r6, #2
	bhi _080B189A
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080B1698
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _080B1870
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080B180C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _080B1870
_080B189A:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080B18A4
sub_080B18A4: @ 0x080B18A4
	push {lr}
	adds r3, r1, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _080B18CC @ =gUnk_02036A50
	ldr r0, [r0]
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _080B18D0
	adds r0, r2, #0
	adds r1, r3, #0
	movs r2, #0
	bl sub_080B16AC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _080B18D2
	.align 2, 0
_080B18CC: .4byte gUnk_02036A50
_080B18D0:
	ldr r0, _080B18D8 @ =0x00008080
_080B18D2:
	pop {r1}
	bx r1
	.align 2, 0
_080B18D8: .4byte 0x00008080

	thumb_func_start sub_080B18DC
sub_080B18DC: @ 0x080B18DC
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _080B18EE
_080B18E8:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080B18EE:
	cmp r6, #2
	bhi _080B1912
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080B18A4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _080B18E8
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080B180C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _080B18E8
_080B1912:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	
