	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080AD474
sub_080AD474: @ 0x080AD474
	push {r4, r5, r6, lr}
	ldr r5, _080AD490 @ =gUnk_02000080
	ldrb r0, [r5, #0x12]
	adds r0, #1
	strb r0, [r5, #0x12]
	ldrb r0, [r5, #5]
	cmp r0, #1
	bne _080AD486
	b _080AD588
_080AD486:
	cmp r0, #1
	bgt _080AD494
	cmp r0, #0
	beq _080AD49C
	b _080AD5C8
	.align 2, 0
_080AD490: .4byte gUnk_02000080
_080AD494:
	cmp r0, #2
	bne _080AD49A
	b _080AD5AA
_080AD49A:
	b _080AD5C8
_080AD49C:
	movs r4, #1
	strb r4, [r5, #5]
	strb r0, [r5, #6]
	movs r6, #0
	movs r0, #0x1e
	strh r0, [r5, #8]
	movs r0, #7
	strb r0, [r5, #4]
	bl sub_0805E60C
	movs r0, #0
	bl sub_0801CFA8
	bl sub_080ADD30
	ldr r0, _080AD50C @ =gUnk_02024490
	strb r4, [r0]
	movs r0, #2
	bl sub_0801D7EC
	movs r4, #0x80
	lsls r4, r4, #0x12
	ldrb r0, [r4, #7]
	movs r1, #4
	cmp r0, #0
	bne _080AD4D2
	movs r1, #3
_080AD4D2:
	adds r0, r1, #0
	bl sub_0801D714
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _080AD524
	ldr r2, _080AD510 @ =gLCDControls
	adds r1, r2, #0
	adds r1, #0x66
	ldr r0, _080AD514 @ =0x00000844
	strh r0, [r1]
	adds r1, #2
	adds r0, #0xc5
	strh r0, [r1]
	ldr r0, _080AD518 @ =0x00001C09
	strh r0, [r2, #0x14]
	adds r0, #0xf9
	strh r0, [r2, #0x20]
	ldr r0, _080AD51C @ =0x00001E03
	strh r0, [r2, #0x2c]
	ldrh r0, [r2]
	movs r3, #0xf0
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _080AD520 @ =0x0000FF60
	strh r0, [r2, #0x18]
	b _080AD55A
	.align 2, 0
_080AD50C: .4byte gUnk_02024490
_080AD510: .4byte gLCDControls
_080AD514: .4byte 0x00000844
_080AD518: .4byte 0x00001C09
_080AD51C: .4byte 0x00001E03
_080AD520: .4byte 0x0000FF60
_080AD524:
	ldr r2, _080AD570 @ =gLCDControls
	adds r1, r2, #0
	adds r1, #0x66
	ldr r0, _080AD574 @ =0x00000241
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080AD578 @ =0x00000909
	strh r0, [r1]
	ldr r0, _080AD57C @ =0x00001D02
	strh r0, [r2, #8]
	ldr r0, _080AD580 @ =0x00001E03
	strh r0, [r2, #0x14]
	ldr r0, _080AD584 @ =0x00007C89
	strh r0, [r2, #0x20]
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	orrs r0, r6
	movs r3, #0x98
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x10
	str r0, [r5, #0x2c]
	bl sub_080AD670
_080AD55A:
	bl sub_080A3210
	movs r0, #3
	bl sub_080A3268
	movs r0, #6
	movs r1, #8
	bl sub_08050054
	b _080AD610
	.align 2, 0
_080AD570: .4byte gLCDControls
_080AD574: .4byte 0x00000241
_080AD578: .4byte 0x00000909
_080AD57C: .4byte 0x00001D02
_080AD580: .4byte 0x00001E03
_080AD584: .4byte 0x00007C89
_080AD588:
	ldr r0, _080AD5A0 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AD632
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _080AD5A4
	bl sub_080AD6AC
	b _080AD610
	.align 2, 0
_080AD5A0: .4byte gUnk_03000FD0
_080AD5A4:
	bl sub_080AD76C
	b _080AD610
_080AD5AA:
	ldrh r0, [r5, #8]
	subs r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080AD5C2
	movs r0, #0xe1
	lsls r0, r0, #4
	strh r0, [r5, #8]
	ldrb r0, [r5, #5]
	adds r0, #1
	strb r0, [r5, #5]
_080AD5C2:
	bl sub_080AD644
	b _080AD610
_080AD5C8:
	bl sub_080AD84C
	adds r4, r0, #0
	cmp r4, #0
	beq _080AD5EC
	cmp r4, #2
	bne _080AD5DE
	movs r0, #0x6a
	bl sub_080A3268
	b _080AD5E0
_080AD5DE:
	movs r4, #0
_080AD5E0:
	adds r0, r4, #0
	bl IntroSetTransition
	ldr r0, _080AD634 @ =0x80080000
	bl sub_080A3268
_080AD5EC:
	bl sub_080AD644
	ldr r0, _080AD638 @ =gUnk_02000080
	ldrh r1, [r0, #8]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080AD610
	ldr r1, _080AD63C @ =gUnk_03001010
	movs r0, #0xe0
	lsls r0, r0, #8
	strh r0, [r1, #8]
	movs r0, #0x84
	strh r0, [r1, #2]
	ldr r0, _080AD640 @ =0x000001FF
	movs r1, #0
	bl sub_080ADA14
_080AD610:
	ldr r2, _080AD638 @ =gUnk_02000080
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r1, [r0, #7]
	ldrb r0, [r2, #4]
	cmp r0, r1
	beq _080AD626
	strb r1, [r2, #4]
	movs r0, #3
	bl sub_0801D7EC
_080AD626:
	bl sub_080AD89C
	bl sub_0805E5C0
	bl sub_080AD9B0
_080AD632:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080AD634: .4byte 0x80080000
_080AD638: .4byte gUnk_02000080
_080AD63C: .4byte gUnk_03001010
_080AD640: .4byte 0x000001FF
