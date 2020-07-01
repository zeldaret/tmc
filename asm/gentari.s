	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Gentari
Gentari: @ 0x0805FD24
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0805FD72
	cmp r0, #1
	bgt _0805FD38
	cmp r0, #0
	beq _0805FD3E
	b _0805FDBC
_0805FD38:
	cmp r0, #2
	beq _0805FDAE
	b _0805FDBC
_0805FD3E:
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	adds r0, r4, #0
	bl sub_0807DD50
	b _0805FDBC
_0805FD72:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _0805FDA4
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	ldr r1, _0805FDA0 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	adds r0, r4, #0
	bl sub_0806F118
	b _0805FDBC
	.align 2, 0
_0805FDA0: .4byte gLinkEntity
_0805FDA4:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	b _0805FDBC
_0805FDAE:
	adds r0, r4, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _0805FDBC
	movs r0, #1
	strb r0, [r4, #0xc]
_0805FDBC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start Gentari_Fusion
Gentari_Fusion: @ 0x0805FDC0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805FDEE
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	movs r1, #0xa
	bl InitAnimationForceUpdate
	b _0805FDF4
_0805FDEE:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
_0805FDF4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start Festari
Festari: @ 0x0805FDF8
	push {lr}
	ldr r2, _0805FE0C @ =gUnk_08109BBC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805FE0C: .4byte gUnk_08109BBC
