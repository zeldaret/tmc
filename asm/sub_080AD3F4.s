	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080AD3F4
sub_080AD3F4: @ 0x080AD3F4
	push {r4, r5, lr}
	bl sub_080AD84C
	adds r1, r0, #0
	ldr r4, _080AD450 @ =gUnk_02000080
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _080AD458
	movs r0, #1
	bl sub_0801DA90
	movs r5, #1
	strb r5, [r4, #5]
	movs r0, #0x78
	strh r0, [r4, #8]
	movs r0, #0x10
	bl sub_0801D7EC
	movs r0, #1
	bl sub_0801D7EC
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	movs r1, #2
	cmp r0, #0
	bne _080AD42C
	movs r1, #1
_080AD42C:
	adds r0, r1, #0
	bl sub_0801D714
	ldr r0, _080AD454 @ =gLCDControls
	ldrh r1, [r0]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	strh r5, [r0, #0x1a]
	movs r0, #6
	movs r1, #8
	bl DoFade
	movs r1, #0
	b _080AD45E
	.align 2, 0
_080AD450: .4byte gUnk_02000080
_080AD454: .4byte gLCDControls
_080AD458:
	cmp r1, #1
	bne _080AD45E
	movs r1, #2
_080AD45E:
	cmp r1, #2
	bne _080AD46C
	ldr r1, _080AD470 @ =gUnk_02000010
	movs r0, #1
	strb r0, [r1, #5]
	bl IntroSetTransition
_080AD46C:
	pop {r4, r5, pc}
	.align 2, 0
_080AD470: .4byte gUnk_02000010