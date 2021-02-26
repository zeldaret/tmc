	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

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
	
