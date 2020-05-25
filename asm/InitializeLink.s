	.include "asm/macros.inc"
	.text
	.syntax unified
	
	thumb_func_start InitializeLink
InitializeLink: @ 0x080524A8
	push {r4, r5, r6, lr}
	bl sub_080784C8
	ldr r0, _08052510 @ =gUnk_03000B80
	movs r1, #0x70
	bl sub_0801D630
	ldr r6, _08052514 @ =gUnk_03003F80
	adds r0, r6, #0
	movs r1, #0xb0
	bl sub_0801D630
	movs r0, #1
	rsbs r0, r0, #0
	adds r1, r6, #0
	adds r1, #0x40
	movs r2, #0x40
	bl _DmaFill32
	ldr r4, _08052518 @ =gLinkEntity
	adds r0, r4, #0
	movs r1, #0x88
	bl sub_0801D630
	ldr r0, _0805251C @ =gUnk_03000BF0
	str r4, [r0, #0x30]
	ldr r1, _08052520 @ =gUnk_080FCAC8
	ldr r5, _08052524 @ =gUnk_030010A0
	ldrb r0, [r5, #0xf]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r6, #0xc]
	movs r0, #0x14
	bl GetProgressFlag
	cmp r0, #0
	bne _080524FA
	ldr r0, [r6, #0x30]
	movs r1, #8
	orrs r0, r1
	str r0, [r6, #0x30]
_080524FA:
	ldrb r0, [r5, #0xf]
	subs r0, #2
	adds r2, r5, #0
	cmp r0, #0xa
	bhi _080525C2
	lsls r0, r0, #2
	ldr r1, _08052528 @ =_0805252C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08052510: .4byte gUnk_03000B80
_08052514: .4byte gUnk_03003F80
_08052518: .4byte gLinkEntity
_0805251C: .4byte gUnk_03000BF0
_08052520: .4byte gUnk_080FCAC8
_08052524: .4byte gUnk_030010A0
_08052528: .4byte _0805252C
_0805252C: @ jump table
	.4byte _08052558 @ case 0
	.4byte _08052576 @ case 1
	.4byte _08052564 @ case 2
	.4byte _080525C2 @ case 3
	.4byte _08052558 @ case 4
	.4byte _08052584 @ case 5
	.4byte _08052584 @ case 6
	.4byte _080525C2 @ case 7
	.4byte _080525A0 @ case 8
	.4byte _080525AC @ case 9
	.4byte _080525B8 @ case 10
_08052558:
	ldr r0, _08052560 @ =0x0000FF40
	strh r0, [r4, #0x36]
	b _080525C0
	.align 2, 0
_08052560: .4byte 0x0000FF40
_08052564:
	ldr r0, _0805257C @ =gUnk_03003F80
	adds r0, #0x38
	movs r1, #0x10
	strb r1, [r0]
	ldr r1, _08052580 @ =gUnk_030010A0
	ldrb r0, [r1, #0xe]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	adds r2, r1, #0
_08052576:
	movs r0, #0xe0
	strh r0, [r4, #0x24]
	b _080525C2
	.align 2, 0
_0805257C: .4byte gUnk_03003F80
_08052580: .4byte gUnk_030010A0
_08052584:
	ldr r1, _08052598 @ =gUnk_03003F80
	adds r2, r1, #0
	adds r2, #0x38
	movs r0, #1
	strb r0, [r2]
	ldr r2, _0805259C @ =gUnk_030010A0
	ldrb r0, [r2, #0xf]
	adds r1, #0x39
	strb r0, [r1]
	b _080525C2
	.align 2, 0
_08052598: .4byte gUnk_03003F80
_0805259C: .4byte gUnk_030010A0
_080525A0:
	ldr r0, _080525A8 @ =gUnk_03003F80
	adds r0, #0x38
	movs r1, #1
	b _080525BE
	.align 2, 0
_080525A8: .4byte gUnk_03003F80
_080525AC:
	ldr r0, _080525B4 @ =gUnk_03003F80
	adds r0, #0x38
	movs r1, #3
	b _080525BE
	.align 2, 0
_080525B4: .4byte gUnk_03003F80
_080525B8:
	ldr r0, _08052614 @ =gUnk_03003F80
	adds r0, #0x38
	movs r1, #4
_080525BE:
	strb r1, [r0]
_080525C0:
	ldr r2, _08052618 @ =gUnk_030010A0
_080525C2:
	movs r0, #1
	strb r0, [r4, #8]
	ldrb r1, [r4, #0x10]
	movs r0, #0xa0
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _0805261C @ =gUnk_02002A40
	adds r0, #0xaa
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x45
	strb r0, [r1]
	ldrh r0, [r2, #0x10]
	strh r0, [r4, #0x2e]
	ldrh r0, [r2, #0x12]
	strh r0, [r4, #0x32]
	ldrb r0, [r2, #0xe]
	strb r0, [r4, #0x14]
	ldrb r1, [r2, #0x14]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_08016A04
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805EA2C
	bl sub_08017640
	pop {r4, r5, r6, pc}
	.align 2, 0
_08052614: .4byte gUnk_03003F80
_08052618: .4byte gUnk_030010A0
_0805261C: .4byte gUnk_02002A40
