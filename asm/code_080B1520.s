	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

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
	
