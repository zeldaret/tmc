	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

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
	
