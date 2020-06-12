	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_0805436C
sub_0805436C: @ 0x0805436C
	push {lr}
	adds r2, r0, #0
	ldr r1, _08054380 @ =gUnk_02002A40
	adds r0, r1, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	cmp r2, r0
	bne _08054384
	movs r1, #0
	b _08054392
	.align 2, 0
_08054380: .4byte gUnk_02002A40
_08054384:
	adds r0, r1, #0
	adds r0, #0xb5
	movs r1, #2
	ldrb r0, [r0]
	cmp r2, r0
	bne _08054392
	movs r1, #1
_08054392:
	adds r0, r1, #0
	pop {pc}
	.align 2, 0

	thumb_func_start PutItemOnSlot
PutItemOnSlot: @ 0x08054398
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r5, #0x46
	bhi _080543A8
	movs r0, #0
	movs r1, #1
	bl sub_0807CAA0
_080543A8:
	subs r0, r5, #1
	cmp r0, #0x1e
	bhi _08054410
	movs r1, #2
	ldr r2, _080543C0 @ =gUnk_02002A40
	adds r0, r2, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080543C4
	movs r1, #0
	b _080543D0
	.align 2, 0
_080543C0: .4byte gUnk_02002A40
_080543C4:
	adds r0, r2, #0
	adds r0, #0xb5
	ldrb r0, [r0]
	cmp r0, #0
	bne _080543D0
	movs r1, #1
_080543D0:
	cmp r1, #2
	bne _0805440A
	ldr r3, _080543F0 @ =gUnk_080FD5B4
	lsls r0, r5, #3
	adds r0, r0, r3
	ldrb r4, [r0]
	adds r0, r2, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r4, r0
	bne _080543F4
	movs r1, #0
	b _08054406
	.align 2, 0
_080543F0: .4byte gUnk_080FD5B4
_080543F4:
	adds r0, r2, #0
	adds r0, #0xb5
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r4, r0
	bne _08054406
	movs r1, #1
_08054406:
	cmp r1, #2
	beq _08054410
_0805440A:
	adds r0, r5, #0
	bl sub_08054414
_08054410:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08054414
sub_08054414: @ 0x08054414
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	subs r0, r4, #1
	cmp r0, #0x1e
	bhi _08054456
	cmp r1, #1
	bhi _08054456
	movs r2, #0
	cmp r1, #0
	bne _0805442A
	movs r2, #1
_0805442A:
	ldr r0, _08054458 @ =gUnk_02002A40
	adds r0, #0xb4
	adds r6, r1, r0
	ldrb r7, [r6]
	adds r5, r2, r0
	ldrb r3, [r5]
	ldr r2, _0805445C @ =gUnk_080FD5B4
	lsls r1, r3, #3
	adds r1, r1, r2
	lsls r0, r4, #3
	adds r0, r0, r2
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _0805444A
	adds r3, r7, #0
_0805444A:
	strb r4, [r6]
	strb r3, [r5]
	ldr r1, _08054460 @ =gUnk_0200AF00
	movs r0, #0x7f
	strb r0, [r1, #0x13]
	strb r0, [r1, #0x14]
_08054456:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08054458: .4byte gUnk_02002A40
_0805445C: .4byte gUnk_080FD5B4
_08054460: .4byte gUnk_0200AF00

	thumb_func_start SetBottleContents
SetBottleContents: @ 0x08054464
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, _08054498 @ =gUnk_02002A40
	cmp r1, #3
	bls _0805448C
	movs r1, #0
	adds r2, r3, #0
	adds r2, #0xb6
	ldrb r0, [r2]
	cmp r0, #0x20
	beq _08054488
_0805447A:
	adds r1, #1
	cmp r1, #3
	bhi _08054494
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0x20
	bne _0805447A
_08054488:
	cmp r1, #3
	bhi _08054494
_0805448C:
	adds r0, r3, #0
	adds r0, #0xb6
	adds r0, r1, r0
	strb r4, [r0]
_08054494:
	adds r0, r1, #0
	pop {r4, pc}
	.align 2, 0
_08054498: .4byte gUnk_02002A40

	thumb_func_start sub_0805449C
sub_0805449C: @ 0x0805449C
	push {lr}
	cmp r0, #1
	blo _080544AE
	cmp r0, #4
	bls _080544AA
	cmp r0, #6
	bne _080544AE
_080544AA:
	movs r0, #1
	b _080544B0
_080544AE:
	movs r0, #0
_080544B0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080544B4
sub_080544B4: @ 0x080544B4
	push {lr}
	cmp r0, #0xe
	bhi _080544C2
	cmp r0, #0xd
	blo _080544C2
	movs r0, #1
	b _080544C4
_080544C2:
	movs r0, #0
_080544C4:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080544C8
sub_080544C8: @ 0x080544C8
	push {lr}
	cmp r0, #0x1f
	bhi _080544D6
	cmp r0, #0x1c
	blo _080544D6
	movs r0, #1
	b _080544D8
_080544D6:
	movs r0, #0
_080544D8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080544DC
sub_080544DC: @ 0x080544DC
	push {lr}
	adds r2, r0, #0
	ldr r1, _080544F0 @ =gUnk_02002A40
	adds r0, r1, #0
	adds r0, #0xb6
	ldrb r0, [r0]
	cmp r2, r0
	bne _080544F4
	movs r0, #1
	b _08054520
	.align 2, 0
_080544F0: .4byte gUnk_02002A40
_080544F4:
	adds r0, r1, #0
	adds r0, #0xb7
	ldrb r0, [r0]
	cmp r2, r0
	bne _08054502
	movs r0, #2
	b _08054520
_08054502:
	adds r0, r1, #0
	adds r0, #0xb8
	ldrb r0, [r0]
	cmp r2, r0
	bne _08054510
	movs r0, #3
	b _08054520
_08054510:
	adds r0, r1, #0
	adds r0, #0xb9
	ldrb r0, [r0]
	cmp r2, r0
	beq _0805451E
	movs r0, #0
	b _08054520
_0805451E:
	movs r0, #4
_08054520:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08054524
sub_08054524: @ 0x08054524
	push {lr}
	ldr r0, _08054550 @ =gUnk_02033A90
	ldrb r1, [r0, #1]
	cmp r1, #0
	bne _08054534
	ldr r0, _08054554 @ =gUnk_030010A0
	adds r0, #0x2e
	ldrb r1, [r0]
_08054534:
	cmp r1, #0x16
	bls _0805453A
	movs r1, #0
_0805453A:
	ldr r0, _08054558 @ =gUnk_080FE1C6
	adds r0, r1, r0
	ldrb r1, [r0]
	lsls r0, r1, #5
	ldr r1, _0805455C @ =gUnk_080015BC
	adds r0, r0, r1
	ldr r1, _08054560 @ =gUnk_02034398
	movs r2, #0x20
	bl sub_0801D66C
	pop {pc}
	.align 2, 0
_08054550: .4byte gUnk_02033A90
_08054554: .4byte gUnk_030010A0
_08054558: .4byte gUnk_080FE1C6
_0805455C: .4byte gUnk_080015BC
_08054560: .4byte gUnk_02034398

	thumb_func_start sub_08054564
sub_08054564: @ 0x08054564
	ldr r1, _0805456C @ =gRoomVars
	movs r0, #1
	strb r0, [r1, #2]
	bx lr
	.align 2, 0
_0805456C: .4byte gRoomVars

	thumb_func_start sub_08054570
sub_08054570: @ 0x08054570
	ldr r1, _08054578 @ =gRoomVars
	movs r0, #0
	strb r0, [r1, #2]
	bx lr
	.align 2, 0
_08054578: .4byte gRoomVars

	thumb_func_start sub_0805457C
sub_0805457C: @ 0x0805457C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r6, r0, #0
	adds r3, r1, #0
	ldr r0, _080545A4 @ =gRoomVars
	ldrb r1, [r0, #2]
	adds r5, r0, #0
	cmp r1, #1
	bne _08054590
	b _0805474C
_08054590:
	ldr r2, _080545A8 @ =gUnk_08001A1C
	movs r4, #0
	cmp r3, #0x19
	bhi _0805463C
	lsls r0, r3, #2
	ldr r1, _080545AC @ =_080545B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080545A4: .4byte gRoomVars
_080545A8: .4byte gUnk_08001A1C
_080545AC: .4byte _080545B0
_080545B0: @ jump table
	.4byte _0805463C @ case 0
	.4byte _08054618 @ case 1
	.4byte _08054618 @ case 2
	.4byte _08054618 @ case 3
	.4byte _08054618 @ case 4
	.4byte _08054618 @ case 5
	.4byte _08054618 @ case 6
	.4byte _08054618 @ case 7
	.4byte _08054618 @ case 8
	.4byte _08054618 @ case 9
	.4byte _08054618 @ case 10
	.4byte _08054618 @ case 11
	.4byte _08054618 @ case 12
	.4byte _0805463C @ case 13
	.4byte _0805463C @ case 14
	.4byte _0805463A @ case 15
	.4byte _08054634 @ case 16
	.4byte _08054634 @ case 17
	.4byte _08054634 @ case 18
	.4byte _08054634 @ case 19
	.4byte _08054634 @ case 20
	.4byte _08054634 @ case 21
	.4byte _08054634 @ case 22
	.4byte _08054634 @ case 23
	.4byte _08054624 @ case 24
	.4byte _08054624 @ case 25
_08054618:
	lsls r1, r3, #5
	ldr r0, _08054620 @ =gUnk_0800137C
	adds r4, r1, r0
	b _0805463C
	.align 2, 0
_08054620: .4byte gUnk_0800137C
_08054624:
	ldrb r0, [r5, #0xa]
	ldr r4, _08054630 @ =gUnk_0800191C
	cmp r0, #0
	beq _0805463C
	adds r4, #0x20
	b _0805463C
	.align 2, 0
_08054630: .4byte gUnk_0800191C
_08054634:
	lsls r1, r3, #5
	ldr r0, _08054650 @ =gUnk_0800161C
	adds r2, r1, r0
_0805463A:
	ldr r4, _08054654 @ =gUnk_02034398
_0805463C:
	cmp r4, #0
	bne _08054642
	b _0805474C
_08054642:
	ldr r0, _08054658 @ =gUnk_02002A40
	adds r0, #0xb3
	ldrb r1, [r0]
	cmp r1, #0
	bne _08054660
	ldr r3, _0805465C @ =gUnk_08001A1C
	b _08054666
	.align 2, 0
_08054650: .4byte gUnk_0800161C
_08054654: .4byte gUnk_02034398
_08054658: .4byte gUnk_02002A40
_0805465C: .4byte gUnk_08001A1C
_08054660:
	lsls r1, r1, #5
	ldr r0, _0805473C @ =gUnk_0800143C
	adds r3, r1, r0
_08054666:
	mov r0, sp
	adds r1, r4, #0
	bl sub_08000F14
	ldr r4, _08054740 @ =gUnk_02002A40
	adds r0, r4, #0
	adds r0, #0xaa
	ldrb r0, [r0]
	cmp r0, #8
	bhi _08054684
	mov r1, sp
	mov r0, sp
	ldrh r0, [r0, #8]
	adds r0, #5
	strh r0, [r1, #8]
_08054684:
	adds r0, r4, #0
	adds r0, #0xac
	ldrb r0, [r0]
	cmp r0, #0
	bne _08054698
	mov r1, sp
	mov r0, sp
	ldrh r0, [r0, #0xc]
	adds r0, #3
	strh r0, [r1, #0xc]
_08054698:
	adds r0, r4, #0
	adds r0, #0xad
	ldrb r0, [r0]
	cmp r0, #0
	bne _080546AC
	mov r1, sp
	mov r0, sp
	ldrh r0, [r0, #0xe]
	adds r0, #3
	strh r0, [r1, #0xe]
_080546AC:
	adds r0, r4, #0
	adds r0, #0xc0
	ldrh r0, [r0]
	cmp r0, #0xa
	bhi _080546C0
	mov r1, sp
	mov r0, sp
	ldrh r0, [r0, #4]
	adds r0, #1
	strh r0, [r1, #4]
_080546C0:
	ldr r2, _08054744 @ =gUnk_08001A1C
	adds r0, r4, #0
	adds r0, #0xbb
	ldrb r0, [r0]
	adds r3, r2, #0
	cmp r0, #0
	beq _080546D0
	adds r2, #0x20
_080546D0:
	movs r1, #0x8b
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080546DE
	adds r3, #0x40
_080546DE:
	mov r0, sp
	mov r1, sp
	bl sub_08000F2C
	adds r4, r0, #0
	bl Random
	adds r2, r0, #0
	asrs r5, r2, #0x18
	movs r0, #0xf
	ands r5, r0
	adds r0, r2, #0
	adds r1, r4, #0
	bl __modsi3
	adds r2, r0, #0
	movs r3, #0
	lsls r0, r5, #1
	add r0, sp
	movs r4, #0
	ldrsh r1, [r0, r4]
	cmp r1, r2
	bgt _08054726
	movs r4, #0xf
_0805470E:
	adds r3, #1
	adds r5, #1
	ands r5, r4
	cmp r3, #0xf
	bhi _08054726
	lsls r0, r5, #1
	add r0, sp
	movs r7, #0
	ldrsh r0, [r0, r7]
	adds r1, r1, r0
	cmp r1, r2
	ble _0805470E
_08054726:
	ldr r0, _08054748 @ =gUnk_080FE1B4
	adds r0, r5, r0
	ldrb r1, [r0]
	cmp r1, #0
	beq _0805474C
	adds r0, r6, #0
	movs r2, #0
	bl CreateItemDrop
	b _0805474E
	.align 2, 0
_0805473C: .4byte gUnk_0800143C
_08054740: .4byte gUnk_02002A40
_08054744: .4byte gUnk_08001A1C
_08054748: .4byte gUnk_080FE1B4
_0805474C:
	movs r0, #0
_0805474E:
	add sp, #0x20
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start CreateItemDrop
CreateItemDrop: @ 0x08054754
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	cmp r4, #0x5e
	beq _08054786
	cmp r4, #0x5e
	bhi _08054772
	cmp r4, #0x5c
	beq _080547A6
	cmp r4, #0x5c
	bhi _08054782
	cmp r4, #0x3f
	beq _08054794
	b _080547DA
_08054772:
	cmp r4, #0xfc
	blo _080547DA
	cmp r4, #0xfe
	bls _080547A6
	cmp r4, #0xff
	bne _080547DA
	movs r0, #1
	b _08054788
_08054782:
	movs r0, #0x65
	b _08054788
_08054786:
	movs r0, #9
_08054788:
	bl GetInventoryValue
	cmp r0, #0
	bne _080547DA
_08054790:
	movs r0, #0
	b _0805486C
_08054794:
	movs r0, #0x40
	bl GetInventoryValue
	cmp r0, #0
	beq _08054790
	cmp r5, #0
	bne _080547DA
	movs r5, #1
	b _080547DA
_080547A6:
	movs r0, #0x67
	bl GetInventoryValue
	cmp r0, #0
	beq _08054790
	ldr r0, _080547FC @ =gRoomVars
	ldrb r0, [r0, #5]
	cmp r0, #3
	bhi _08054790
	cmp r4, #0x5c
	beq _080547DA
	adds r5, r4, #0
	subs r5, #0xfc
	bl Random
	movs r1, #0x3f
	ands r1, r0
	ldr r2, _08054800 @ =gUnk_080FE1DD
	lsls r0, r5, #6
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r5, [r1]
	movs r4, #0x5c
	cmp r5, #0
	bne _080547DA
	movs r4, #0
_080547DA:
	cmp r4, #0
	beq _0805486A
	cmp r4, #0xff
	beq _08054842
	movs r0, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0805486A
	ldr r0, _08054804 @ =gLinkEntity
	cmp r6, r0
	bne _08054808
	movs r0, #1
	b _0805480A
	.align 2, 0
_080547FC: .4byte gRoomVars
_08054800: .4byte gUnk_080FE1DD
_08054804: .4byte gLinkEntity
_08054808:
	movs r0, #0
_0805480A:
	strb r0, [r2, #0xe]
	ldrb r0, [r6, #8]
	cmp r0, #6
	bne _08054838
	ldrb r0, [r6, #9]
	cmp r0, #0x63
	bne _0805481C
	str r2, [r6, #0x54]
	b _08054838
_0805481C:
	cmp r0, #0x1e
	bne _08054838
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #3
	movs r3, #0x80
	rsbs r3, r3, #0
	adds r1, r3, #0
	orrs r0, r1
	strb r0, [r2, #0x15]
	movs r0, #0xc0
	strh r0, [r2, #0x24]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r2, #0x20]
_08054838:
	adds r0, r6, #0
	adds r1, r2, #0
	bl CopyPosition
	b _0805486A
_08054842:
	movs r0, #7
	movs r1, #0
	bl CreateEnemy
	adds r2, r0, #0
	cmp r2, #0
	beq _0805486A
	ldrh r0, [r6, #0x2e]
	strh r0, [r2, #0x2e]
	ldrh r0, [r6, #0x32]
	strh r0, [r2, #0x32]
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, r2, #0
	bl UpdateSpriteOrderAndFlip
_0805486A:
	adds r0, r4, #0
_0805486C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08054870
sub_08054870: @ 0x08054870
	push {lr}
	ldr r1, _08054884 @ =gUnk_080FE2A0
	ldr r0, _08054888 @ =gUnk_02000080
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08054884: .4byte gUnk_080FE2A0
_08054888: .4byte gUnk_02000080

	thumb_func_start sub_0805488C
sub_0805488C: @ 0x0805488C
	push {r4, lr}
	ldr r4, _080548DC @ =gUnk_02032EC0
	ldrb r1, [r4, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080548E0 @ =gUnk_080FE320
	adds r0, r0, r1
	ldr r2, _080548E4 @ =gUnk_02000080
	ldrb r1, [r0]
	movs r3, #0
	strb r1, [r2]
	ldrb r1, [r0, #1]
	strb r1, [r2, #3]
	ldrb r1, [r4, #3]
	strb r1, [r2, #4]
	str r0, [r2, #0xc]
	ldrb r0, [r2, #5]
	adds r0, #1
	strb r0, [r2, #5]
	strb r3, [r2, #6]
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r2, #8]
	movs r0, #0
	bl sub_0801DA90
	ldrb r0, [r4, #3]
	movs r1, #1
	bl sub_08054974
	bl sub_0806F364
	movs r0, #0xff
	bl ClearRoomFlag
	bl sub_080548E8
	pop {r4, pc}
	.align 2, 0
_080548DC: .4byte gUnk_02032EC0
_080548E0: .4byte gUnk_080FE320
_080548E4: .4byte gUnk_02000080

	thumb_func_start sub_080548E8
sub_080548E8: @ 0x080548E8
	push {lr}
	ldr r1, _08054918 @ =gUnk_080FE2AC
	ldr r0, _0805491C @ =gUnk_02000080
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_080AD90C
	bl sub_0805E5C0
	bl sub_080AD9B0
	bl sub_080AD918
	bl sub_0807FC40
	bl sub_0801B060
	bl sub_08000108
	pop {pc}
	.align 2, 0
_08054918: .4byte gUnk_080FE2AC
_0805491C: .4byte gUnk_02000080

	thumb_func_start sub_08054920
sub_08054920: @ 0x08054920
	push {lr}
	bl sub_08056418
	bl sub_0806F38C
	ldr r1, _08054948 @ =gUnk_080C9CBC
	ldr r0, _0805494C @ =gUnk_02022740
	ldrb r0, [r0, #3]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _08054954
	ldr r0, _08054950 @ =gUnk_02032EC0
	ldrb r1, [r0, #3]
	movs r0, #0xa
	bl sub_080A7138
	b _08054962
	.align 2, 0
_08054948: .4byte gUnk_080C9CBC
_0805494C: .4byte gUnk_02022740
_08054950: .4byte gUnk_02032EC0
_08054954:
	ldr r1, _08054964 @ =gUnk_02032EC0
	movs r0, #3
	strb r0, [r1]
	movs r0, #7
	movs r1, #0x10
	bl DoFade
_08054962:
	pop {pc}
	.align 2, 0
_08054964: .4byte gUnk_02032EC0

	thumb_func_start sub_08054968
sub_08054968: @ 0x08054968
	ldr r1, _08054970 @ =gUnk_02000080
	movs r0, #2
	strb r0, [r1, #5]
	bx lr
	.align 2, 0
_08054970: .4byte gUnk_02000080

	thumb_func_start sub_08054974
sub_08054974: @ 0x08054974
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080549B0 @ =gUnk_080FE320
	adds r6, r1, r0
	ldrb r0, [r6, #2]
	ldrb r1, [r6, #3]
	bl sub_0804B0C0
	ldr r4, _080549B4 @ =gRoomControls
	ldrb r0, [r6, #2]
	strb r0, [r4, #4]
	ldrb r0, [r6, #3]
	strb r0, [r4, #5]
	bl sub_08053320
	ldrb r0, [r4, #4]
	bl sub_08052D58
	ldr r1, _080549B8 @ =gUnk_02033A90
	strh r0, [r1, #4]
	cmp r5, #0
	beq _080549BC
	ldrb r0, [r6, #2]
	ldrb r1, [r6, #3]
	bl sub_08052FD8
	b _080549CE
	.align 2, 0
_080549B0: .4byte gUnk_080FE320
_080549B4: .4byte gRoomControls
_080549B8: .4byte gUnk_02033A90
_080549BC:
	ldrb r0, [r6, #2]
	ldrb r1, [r6, #3]
	bl sub_08052FF4
	bl sub_0807C740
	ldr r1, _08054A00 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
_080549CE:
	ldr r2, _08054A04 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _08054A08 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08054A0C @ =gRoomControls
	ldrh r0, [r6, #4]
	ldrh r2, [r1, #6]
	adds r0, r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r6, #6]
	ldrh r2, [r1, #8]
	adds r0, r0, r2
	strh r0, [r1, #0xc]
	ldrb r0, [r6, #2]
	cmp r0, #2
	bne _080549F4
	bl sub_08059D18
_080549F4:
	ldr r0, _08054A10 @ =gUnk_02032EC0
	ldrb r0, [r0, #3]
	bl sub_08018710
	pop {r4, r5, r6, pc}
	.align 2, 0
_08054A00: .4byte gUnk_02000070
_08054A04: .4byte gScreen
_08054A08: .4byte 0x00001FFF
_08054A0C: .4byte gRoomControls
_08054A10: .4byte gUnk_02032EC0

	thumb_func_start sub_08054A14
sub_08054A14: @ 0x08054A14
	push {lr}
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08054A38 @ =gUnk_080FE320
	adds r2, r1, r0
	ldrb r0, [r2, #0x11]
	cmp r0, #0xd
	bhi _08054A34
	ldr r1, _08054A3C @ =gUnk_0811E454
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r2, #0x12]
	bl SetLocalFlagByOffset
_08054A34:
	pop {pc}
	.align 2, 0
_08054A38: .4byte gUnk_080FE320
_08054A3C: .4byte gUnk_0811E454

	thumb_func_start sub_08054A40
sub_08054A40: @ 0x08054A40
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08054A5C @ =gUnk_080FEEA8
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r4, #0x41
	movs r0, #0
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_08054A5C: .4byte gUnk_080FEEA8

	thumb_func_start sub_08054A60
sub_08054A60: @ 0x08054A60
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #0xa0
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #0xe]
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r4, #0x11]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	subs r1, #1
	movs r0, #0x80
	strb r0, [r1]
	ldr r0, _08054AC4 @ =gLinkEntity
	ldrb r1, [r0, #0x14]
	movs r0, #0xe
	ands r0, r1
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_0806FBD8
	cmp r0, #0
	bne _08054AAC
	bl sub_0805E780
_08054AAC:
	adds r0, r4, #0
	bl sub_0801766C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AE008
	adds r0, r4, #0
	bl sub_08054AC8
	pop {r4, pc}
	.align 2, 0
_08054AC4: .4byte gLinkEntity

	thumb_func_start sub_08054AC8
sub_08054AC8: @ 0x08054AC8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r5, _08054B14 @ =gLinkEntity
	ldrb r1, [r5, #0x14]
	movs r0, #0xe
	ands r0, r1
	strb r0, [r4, #0x14]
	ldr r1, [r4, #0x48]
	ldr r2, _08054B18 @ =gUnk_080FEEB0
	ldrb r0, [r4, #0x14]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [r4, #0x48]
	ldrb r0, [r4, #0x14]
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1, #1]
	ldr r0, [r4, #0x48]
	movs r1, #4
	strb r1, [r0, #6]
	ldr r0, [r4, #0x48]
	strb r1, [r0, #7]
	ldrb r7, [r5, #0x1e]
	adds r6, r7, #0
	cmp r6, #0x36
	bhi _08054B06
	ldrh r0, [r5, #0x12]
	cmp r0, #6
	beq _08054B1C
_08054B06:
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	b _08054B68
	.align 2, 0
_08054B14: .4byte gLinkEntity
_08054B18: .4byte gUnk_080FEEB0
_08054B1C:
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r2, [r5, #0x18]
	movs r1, #0x40
	ands r1, r2
	ldrb r3, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	lsrs r2, r2, #7
	lsls r2, r2, #7
	movs r1, #0x7f
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0x1e]
	cmp r6, r0
	beq _08054B52
	strb r7, [r4, #0x1e]
	ldrb r1, [r4, #0x1e]
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
_08054B52:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x5a
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
_08054B68:
	movs r0, #0x10
	bl sub_0805436C
	cmp r0, #1
	bhi _08054BFC
	ldrb r0, [r4, #0x1e]
	cmp r0, #0xff
	beq _08054BE8
	ldr r0, _08054BF4 @ =gLinkEntity
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	beq _08054BE8
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08054BE8
	movs r0, #4
	strb r0, [r4, #0xe]
	movs r0, #0x45
	movs r1, #0
	movs r2, #0x10
	bl CreateObject
	adds r5, r0, #0
	cmp r5, #0
	beq _08054BE8
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl PositionRelative
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	adds r3, r5, #0
	adds r3, #0x29
	lsrs r1, r1, #0x1d
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r1, _08054BF8 @ =gUnk_080FEEB0
	ldrb r0, [r4, #0x14]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r2, r5, #0
	adds r2, #0x62
	strb r0, [r2]
	ldrb r0, [r4, #0x14]
	adds r0, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x63
	strb r1, [r0]
_08054BE8:
	ldr r1, _08054BF4 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_08078E84
	b _08054C00
	.align 2, 0
_08054BF4: .4byte gLinkEntity
_08054BF8: .4byte gUnk_080FEEB0
_08054BFC:
	bl sub_0805E780
_08054C00:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08054C04
sub_08054C04: @ 0x08054C04
	push {lr}
	ldr r1, _08054C18 @ =gUnk_080FEEB8
	ldr r0, _08054C1C @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08054C18: .4byte gUnk_080FEEB8
_08054C1C: .4byte gUnk_02000080

	thumb_func_start sub_08054C20
sub_08054C20: @ 0x08054C20
	push {r4, lr}
	ldr r4, _08054C50 @ =gUnk_02000080
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r4, #4]
	movs r1, #0
	bl sub_0801876C
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _08054C54 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	pop {r4, pc}
	.align 2, 0
_08054C50: .4byte gUnk_02000080
_08054C54: .4byte gUnk_02000070

	thumb_func_start sub_08054C58
sub_08054C58: @ 0x08054C58
	push {lr}
	ldr r0, _08054C80 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08054C7C
	movs r0, #0xff
	bl CheckRoomFlag
	cmp r0, #0
	beq _08054C7C
	movs r0, #7
	movs r1, #0x10
	bl DoFade
	ldr r1, _08054C84 @ =gUnk_02000080
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
_08054C7C:
	pop {pc}
	.align 2, 0
_08054C80: .4byte gUnk_03000FD0
_08054C84: .4byte gUnk_02000080

	thumb_func_start sub_08054C88
sub_08054C88: @ 0x08054C88
	push {r4, lr}
	ldr r0, _08054CB8 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08054CB4
	ldr r4, _08054CBC @ =gUnk_02000080
	ldrb r0, [r4, #4]
	movs r1, #0
	bl sub_08054974
	movs r0, #6
	movs r1, #0x10
	bl DoFade
	movs r0, #0x73
	bl PlaySFX
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	movs r0, #0x78
	strh r0, [r4, #8]
_08054CB4:
	pop {r4, pc}
	.align 2, 0
_08054CB8: .4byte gUnk_03000FD0
_08054CBC: .4byte gUnk_02000080

	thumb_func_start sub_08054CC0
sub_08054CC0: @ 0x08054CC0
	push {lr}
	ldr r0, _08054CE0 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08054CDE
	ldr r1, _08054CE4 @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08054CDE
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_08054CDE:
	pop {pc}
	.align 2, 0
_08054CE0: .4byte gUnk_03000FD0
_08054CE4: .4byte gUnk_02000080

	thumb_func_start sub_08054CE8
sub_08054CE8: @ 0x08054CE8
	push {lr}
	ldr r1, _08054CFC @ =gUnk_080FEEC8
	ldr r0, _08054D00 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08054CFC: .4byte gUnk_080FEEC8
_08054D00: .4byte gUnk_02000080

	thumb_func_start sub_08054D04
sub_08054D04: @ 0x08054D04
	push {r4, lr}
	ldr r4, _08054D34 @ =gUnk_02000080
	ldr r1, [r4, #0xc]
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	bl sub_0804B0B0
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _08054D38 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	pop {r4, pc}
	.align 2, 0
_08054D34: .4byte gUnk_02000080
_08054D38: .4byte gUnk_02000070

	thumb_func_start sub_08054D3C
sub_08054D3C: @ 0x08054D3C
	push {r4, lr}
	ldr r0, _08054D6C @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08054D6A
	movs r0, #0xff
	bl CheckRoomFlag
	cmp r0, #0
	beq _08054D6A
	ldr r4, _08054D70 @ =gUnk_02000080
	ldrb r0, [r4, #4]
	movs r1, #1
	bl sub_0801876C
	ldrb r0, [r4, #4]
	bl sub_080553E0
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	movs r0, #0x78
	strh r0, [r4, #8]
_08054D6A:
	pop {r4, pc}
	.align 2, 0
_08054D6C: .4byte gUnk_03000FD0
_08054D70: .4byte gUnk_02000080

	thumb_func_start sub_08054D74
sub_08054D74: @ 0x08054D74
	push {lr}
	ldr r1, _08054D8C @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08054D8A
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_08054D8A:
	pop {pc}
	.align 2, 0
_08054D8C: .4byte gUnk_02000080

	thumb_func_start sub_08054D90
sub_08054D90: @ 0x08054D90
	push {lr}
	ldr r1, _08054DA4 @ =gUnk_080FEF34
	ldr r0, _08054DA8 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08054DA4: .4byte gUnk_080FEF34
_08054DA8: .4byte gUnk_02000080

	thumb_func_start sub_08054DAC
sub_08054DAC: @ 0x08054DAC
	push {r4, lr}
	ldr r4, _08054DF0 @ =gUnk_02000080
	ldr r1, [r4, #0xc]
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	bl sub_0804B0B0
	ldr r0, _08054DF4 @ =gUnk_080FEED4
	bl LoadRoomEntityList
	movs r0, #2
	bl sub_0805B4D0
	movs r0, #0
	bl sub_0806D0B0
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _08054DF8 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	pop {r4, pc}
	.align 2, 0
_08054DF0: .4byte gUnk_02000080
_08054DF4: .4byte gUnk_080FEED4
_08054DF8: .4byte gUnk_02000070

	thumb_func_start nullsub_484
nullsub_484: @ 0x08054DFC
	bx lr
	.align 2, 0

	thumb_func_start sub_08054E00
sub_08054E00: @ 0x08054E00
	push {lr}
	ldr r1, _08054E14 @ =gUnk_080FEF3C
	ldr r0, _08054E18 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08054E14: .4byte gUnk_080FEF3C
_08054E18: .4byte gUnk_02000080

	thumb_func_start sub_08054E1C
sub_08054E1C: @ 0x08054E1C
	push {r4, r5, lr}
	ldr r5, _08054E54 @ =gUnk_02000080
	ldr r4, [r5, #0xc]
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	bl sub_0804B0B0
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	bl sub_0804B0E8
	ldrb r0, [r5, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r5, #6]
	adds r0, #1
	strb r0, [r5, #6]
	ldr r1, _08054E58 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	pop {r4, r5, pc}
	.align 2, 0
_08054E54: .4byte gUnk_02000080
_08054E58: .4byte gUnk_02000070

	thumb_func_start sub_08054E5C
sub_08054E5C: @ 0x08054E5C
	push {r4, lr}
	ldr r0, _08054E94 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08054E92
	movs r0, #0xff
	bl CheckRoomFlag
	cmp r0, #0
	beq _08054E92
	ldr r4, _08054E98 @ =gUnk_02000080
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	movs r0, #0xb4
	strh r0, [r4, #8]
	movs r0, #6
	movs r1, #0x10
	bl DoFade
	ldrb r0, [r4, #4]
	bl sub_080553E0
	ldrb r0, [r4, #4]
	movs r1, #1
	bl sub_0801876C
_08054E92:
	pop {r4, pc}
	.align 2, 0
_08054E94: .4byte gUnk_03000FD0
_08054E98: .4byte gUnk_02000080

	thumb_func_start sub_08054E9C
sub_08054E9C: @ 0x08054E9C
	push {lr}
	ldr r1, _08054EB4 @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08054EB2
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_08054EB2:
	pop {pc}
	.align 2, 0
_08054EB4: .4byte gUnk_02000080

	thumb_func_start sub_08054EB8
sub_08054EB8: @ 0x08054EB8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0805E8D4
	adds r3, r0, #0
	cmp r3, #0
	beq _08054EF6
	movs r0, #9
	strb r0, [r3, #8]
	movs r0, #0x24
	strb r0, [r3, #9]
	ldr r2, _08054EF8 @ =gRoomControls
	ldrh r0, [r4, #0x2e]
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	strh r0, [r3, #0x38]
	ldrh r0, [r4, #0x32]
	ldrh r1, [r2, #8]
	subs r0, r0, r1
	subs r0, #0x10
	strh r0, [r3, #0x3a]
	adds r1, r3, #0
	adds r1, #0x35
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x79
	strh r0, [r3, #0x3e]
	adds r0, r3, #0
	movs r1, #6
	bl sub_0805EA2C
_08054EF6:
	pop {r4, pc}
	.align 2, 0
_08054EF8: .4byte gRoomControls

	thumb_func_start sub_08054EFC
sub_08054EFC: @ 0x08054EFC
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _08054F5C @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	subs r1, #0x40
	ldr r0, _08054F60 @ =0x00004074
	movs r2, #1
	bl SetTile
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	adds r0, r4, #0
	movs r1, #0x35
	movs r2, #0
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _08054F54
	ldrh r0, [r1, #0x32]
	subs r0, #0x10
	strh r0, [r1, #0x32]
	adds r0, r4, #0
	bl sub_0806FAD8
_08054F54:
	movs r0, #0xfd
	bl PlaySFX
	pop {r4, r5, pc}
	.align 2, 0
_08054F5C: .4byte gRoomControls
_08054F60: .4byte 0x00004074

	thumb_func_start sub_08054F64
sub_08054F64: @ 0x08054F64
	push {lr}
	ldrb r0, [r0, #0xb]
	ldr r3, _08054F7C @ =gUnk_02033280
	ldr r2, [r3]
	adds r1, r2, #0
	ands r1, r0
	cmp r1, r0
	beq _08054F80
	movs r0, #0
	strb r0, [r3, #6]
	b _08054F8C
	.align 2, 0
_08054F7C: .4byte gUnk_02033280
_08054F80:
	bics r2, r1
	str r2, [r3]
	ldrb r1, [r3, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r3, #7]
_08054F8C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08054F90
sub_08054F90: @ 0x08054F90
	push {lr}
	ldr r1, _08054FA4 @ =gUnk_080FF120
	ldr r0, _08054FA8 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08054FA4: .4byte gUnk_080FF120
_08054FA8: .4byte gUnk_02000080

	thumb_func_start sub_08054FAC
sub_08054FAC: @ 0x08054FAC
	push {r4, r5, r6, lr}
	ldr r6, _08055008 @ =gUnk_02000080
	ldr r5, [r6, #0xc]
	ldr r1, _0805500C @ =gUnk_080FF108
	ldrb r0, [r5, #1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl LoadRoomEntityList
	ldrb r0, [r5, #1]
	movs r1, #0
	cmp r0, #0
	beq _08054FCA
	movs r1, #3
_08054FCA:
	ldrb r0, [r6, #4]
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r6, #6]
	adds r0, #1
	movs r4, #0
	strb r0, [r6, #6]
	ldr r1, _08055010 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	strh r4, [r6, #0xa]
	movs r0, #0x80
	lsls r0, r0, #3
	movs r1, #0x77
	bl CheckLocalFlagByOffset
	cmp r0, #0
	beq _08055004
	ldrb r0, [r5, #2]
	cmp r0, #0x2f
	bne _08055004
	movs r0, #1
	strh r0, [r6, #0xa]
_08055004:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08055008: .4byte gUnk_02000080
_0805500C: .4byte gUnk_080FF108
_08055010: .4byte gUnk_02000070

	thumb_func_start sub_08055014
sub_08055014: @ 0x08055014
	push {lr}
	ldr r1, _08055030 @ =gUnk_02000080
	ldrh r0, [r1, #0xa]
	cmp r0, #0
	beq _0805502C
	movs r0, #0
	strh r0, [r1, #0xa]
	ldr r1, _08055034 @ =0x00000407
	movs r0, #0x74
	movs r2, #1
	bl SetTileType
_0805502C:
	pop {pc}
	.align 2, 0
_08055030: .4byte gUnk_02000080
_08055034: .4byte 0x00000407

	thumb_func_start sub_08055038
sub_08055038: @ 0x08055038
	push {lr}
	ldr r1, _0805504C @ =gUnk_080FF148
	ldr r0, _08055050 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_0805504C: .4byte gUnk_080FF148
_08055050: .4byte gUnk_02000080

	thumb_func_start sub_08055054
sub_08055054: @ 0x08055054
	push {r4, lr}
	ldr r0, _08055080 @ =gUnk_080FF128
	bl LoadRoomEntityList
	ldr r4, _08055084 @ =gUnk_02000080
	ldrb r0, [r4, #4]
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _08055088 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	pop {r4, pc}
	.align 2, 0
_08055080: .4byte gUnk_080FF128
_08055084: .4byte gUnk_02000080
_08055088: .4byte gUnk_02000070

	thumb_func_start sub_0805508C
sub_0805508C: @ 0x0805508C
	bx lr
	.align 2, 0

	thumb_func_start sub_08055090
sub_08055090: @ 0x08055090
	bx lr
	.align 2, 0

	thumb_func_start sub_08055094
sub_08055094: @ 0x08055094
	push {lr}
	ldr r1, _080550A8 @ =gUnk_080FF174
	ldr r0, _080550AC @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080550A8: .4byte gUnk_080FF174
_080550AC: .4byte gUnk_02000080

	thumb_func_start sub_080550B0
sub_080550B0: @ 0x080550B0
	push {r4, lr}
	ldr r4, _080550E8 @ =gUnk_02000080
	ldr r1, [r4, #0xc]
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	bl sub_0804B0B0
	ldr r0, _080550EC @ =gUnk_080FF154
	bl LoadRoomEntityList
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _080550F0 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	pop {r4, pc}
	.align 2, 0
_080550E8: .4byte gUnk_02000080
_080550EC: .4byte gUnk_080FF154
_080550F0: .4byte gUnk_02000070

	thumb_func_start nullsub_487
nullsub_487: @ 0x080550F4
	bx lr
	.align 2, 0

	thumb_func_start sub_080550F8
sub_080550F8: @ 0x080550F8
	push {lr}
	ldr r1, _0805510C @ =gUnk_080FF1CC
	ldr r0, _08055110 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_0805510C: .4byte gUnk_080FF1CC
_08055110: .4byte gUnk_02000080

	thumb_func_start sub_08055114
sub_08055114: @ 0x08055114
	push {r4, lr}
	ldr r0, _08055150 @ =gUnk_080FF17C
	bl LoadRoomEntityList
	ldr r0, _08055154 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	cmp r0, #9
	beq _0805512A
	ldr r0, _08055158 @ =0x00000DB4
	bl sub_08018C58
_0805512A:
	ldr r4, _0805515C @ =gUnk_02000080
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _08055160 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	pop {r4, pc}
	.align 2, 0
_08055150: .4byte gUnk_080FF17C
_08055154: .4byte gUnk_02002A40
_08055158: .4byte 0x00000DB4
_0805515C: .4byte gUnk_02000080
_08055160: .4byte gUnk_02000070

	thumb_func_start nullsub_488
nullsub_488: @ 0x08055164
	bx lr
	.align 2, 0

	thumb_func_start sub_08055168
sub_08055168: @ 0x08055168
	push {lr}
	ldr r1, _0805517C @ =gUnk_080FF1F4
	ldr r0, _08055180 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_0805517C: .4byte gUnk_080FF1F4
_08055180: .4byte gUnk_02000080

	thumb_func_start sub_08055184
sub_08055184: @ 0x08055184
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r5, _0805520C @ =gUnk_02000080
	ldr r0, [r5, #0xc]
	ldrb r1, [r0, #1]
	movs r0, #0xf
	ands r0, r1
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #1
	ldr r0, _08055210 @ =gUnk_080FF1D4
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	bl sub_0801D7EC
	ldr r2, _08055214 @ =gScreen
	ldrh r0, [r4, #2]
	movs r6, #0
	movs r3, #0
	mov r8, r3
	strh r0, [r2, #0x2e]
	ldrh r0, [r4, #4]
	strh r0, [r2, #0x30]
	ldr r0, _08055218 @ =0x00001E05
	strh r0, [r2, #0x2c]
	adds r1, r2, #0
	adds r1, #0x66
	ldr r0, _0805521C @ =0x00003648
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x10
	strh r0, [r1]
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldrb r0, [r5, #4]
	movs r1, #1
	bl sub_0801876C
	ldrb r0, [r5, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r5, #6]
	adds r0, #1
	strb r0, [r5, #6]
	strb r6, [r5, #7]
	movs r0, #0x3c
	strh r0, [r5, #8]
	mov r0, r8
	strh r0, [r5, #0xa]
	ldr r1, _08055220 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, pc}
	.align 2, 0
_0805520C: .4byte gUnk_02000080
_08055210: .4byte gUnk_080FF1D4
_08055214: .4byte gScreen
_08055218: .4byte 0x00001E05
_0805521C: .4byte 0x00003648
_08055220: .4byte gUnk_02000070

	thumb_func_start sub_08055224
sub_08055224: @ 0x08055224
	push {lr}
	ldr r0, _08055244 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055240
	movs r0, #0xff
	bl CheckRoomFlag
	cmp r0, #0
	beq _08055240
	ldr r1, _08055248 @ =gUnk_02000080
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
_08055240:
	pop {pc}
	.align 2, 0
_08055244: .4byte gUnk_03000FD0
_08055248: .4byte gUnk_02000080

	thumb_func_start sub_0805524C
sub_0805524C: @ 0x0805524C
	push {r4, lr}
	ldr r3, _08055270 @ =gUnk_02000080
	ldrb r0, [r3, #7]
	cmp r0, #0
	bne _08055274
	ldrh r0, [r3, #8]
	subs r0, #1
	strh r0, [r3, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080552D6
	ldrb r0, [r3, #7]
	adds r0, #1
	strb r0, [r3, #7]
	movs r0, #0xf6
	bl PlaySFX
	b _080552D6
	.align 2, 0
_08055270: .4byte gUnk_02000080
_08055274:
	ldr r0, _080552A4 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080552D6
	ldr r4, _080552A8 @ =gUnk_080FF204
	ldrh r2, [r3, #0xa]
	lsls r0, r2, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	ldr r0, _080552AC @ =0x0000FFFF
	cmp r1, r0
	beq _080552B4
	ldr r1, _080552B0 @ =gScreen
	adds r0, r2, #1
	strh r0, [r3, #0xa]
	lsls r0, r2, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	adds r1, #0x68
	strh r0, [r1]
	b _080552D6
	.align 2, 0
_080552A4: .4byte gUnk_030010A0
_080552A8: .4byte gUnk_080FF204
_080552AC: .4byte 0x0000FFFF
_080552B0: .4byte gScreen
_080552B4:
	ldr r1, _080552D8 @ =gScreen
	ldrh r2, [r1]
	ldr r0, _080552DC @ =0x0000F7FF
	ands r0, r2
	strh r0, [r1]
	adds r1, #0x68
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	movs r0, #0x78
	strh r0, [r3, #8]
	ldrb r0, [r3, #6]
	adds r0, #1
	strb r0, [r3, #6]
	movs r0, #0x73
	bl PlaySFX
_080552D6:
	pop {r4, pc}
	.align 2, 0
_080552D8: .4byte gScreen
_080552DC: .4byte 0x0000F7FF

	thumb_func_start sub_080552E0
sub_080552E0: @ 0x080552E0
	push {lr}
	ldr r1, _080552F8 @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080552F6
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_080552F6:
	pop {pc}
	.align 2, 0
_080552F8: .4byte gUnk_02000080

	thumb_func_start sub_080552FC
sub_080552FC: @ 0x080552FC
	push {lr}
	ldr r1, _08055310 @ =gUnk_080FF228
	ldr r0, _08055314 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08055310: .4byte gUnk_080FF228
_08055314: .4byte gUnk_02000080

	thumb_func_start sub_08055318
sub_08055318: @ 0x08055318
	push {r4, lr}
	ldr r4, _08055348 @ =gUnk_02000080
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r4, #4]
	movs r1, #0
	bl sub_0801876C
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _0805534C @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	pop {r4, pc}
	.align 2, 0
_08055348: .4byte gUnk_02000080
_0805534C: .4byte gUnk_02000070

	thumb_func_start sub_08055350
sub_08055350: @ 0x08055350
	push {lr}
	ldr r0, _08055378 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055374
	movs r0, #0xff
	bl CheckRoomFlag
	cmp r0, #0
	beq _08055374
	movs r0, #7
	movs r1, #0x10
	bl DoFade
	ldr r1, _0805537C @ =gUnk_02000080
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
_08055374:
	pop {pc}
	.align 2, 0
_08055378: .4byte gUnk_03000FD0
_0805537C: .4byte gUnk_02000080

	thumb_func_start sub_08055380
sub_08055380: @ 0x08055380
	push {r4, lr}
	ldr r0, _080553B0 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080553AC
	ldr r4, _080553B4 @ =gUnk_02000080
	ldrb r0, [r4, #4]
	movs r1, #0
	bl sub_08054974
	movs r0, #6
	movs r1, #0x10
	bl DoFade
	movs r0, #0x73
	bl PlaySFX
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	movs r0, #0x78
	strh r0, [r4, #8]
_080553AC:
	pop {r4, pc}
	.align 2, 0
_080553B0: .4byte gUnk_03000FD0
_080553B4: .4byte gUnk_02000080

	thumb_func_start sub_080553B8
sub_080553B8: @ 0x080553B8
	push {lr}
	ldr r0, _080553D8 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080553D6
	ldr r1, _080553DC @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080553D6
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_080553D6:
	pop {pc}
	.align 2, 0
_080553D8: .4byte gUnk_03000FD0
_080553DC: .4byte gUnk_02000080

	thumb_func_start sub_080553E0
sub_080553E0: @ 0x080553E0
	push {r4, lr}
	ldr r0, _0805540C @ =gUnk_02000080
	ldr r4, [r0, #0xc]
	movs r0, #0xf
	movs r1, #0x43
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _08055408
	ldr r0, _08055410 @ =gRoomControls
	ldrh r1, [r0, #6]
	ldrh r3, [r4, #8]
	adds r1, r1, r3
	strh r1, [r2, #0x2e]
	ldrh r0, [r0, #8]
	ldrh r4, [r4, #0xa]
	adds r0, r0, r4
	strh r0, [r2, #0x32]
_08055408:
	pop {r4, pc}
	.align 2, 0
_0805540C: .4byte gUnk_02000080
_08055410: .4byte gRoomControls

	thumb_func_start sub_08055414
sub_08055414: @ 0x08055414
	push {lr}
	ldr r1, _08055428 @ =gUnk_080FF238
	ldr r0, _0805542C @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08055428: .4byte gUnk_080FF238
_0805542C: .4byte gUnk_02000080

	thumb_func_start sub_08055430
sub_08055430: @ 0x08055430
	push {r4, lr}
	ldr r4, _08055460 @ =gUnk_02000080
	ldr r1, [r4, #0xc]
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	bl sub_0804B0E8
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _08055464 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	pop {r4, pc}
	.align 2, 0
_08055460: .4byte gUnk_02000080
_08055464: .4byte gUnk_02000070

	thumb_func_start sub_08055468
sub_08055468: @ 0x08055468
	push {lr}
	ldr r0, _08055490 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805548C
	movs r0, #0xff
	bl CheckRoomFlag
	cmp r0, #0
	beq _0805548C
	movs r0, #7
	movs r1, #0x10
	bl DoFade
	ldr r1, _08055494 @ =gUnk_02000080
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
_0805548C:
	pop {pc}
	.align 2, 0
_08055490: .4byte gUnk_03000FD0
_08055494: .4byte gUnk_02000080

	thumb_func_start sub_08055498
sub_08055498: @ 0x08055498
	push {r4, lr}
	ldr r0, _080554CC @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080554CA
	ldr r4, _080554D0 @ =gUnk_02000080
	ldrb r0, [r4, #4]
	movs r1, #1
	bl sub_0801876C
	ldrb r0, [r4, #4]
	bl sub_080553E0
	movs r0, #6
	movs r1, #0x10
	bl DoFade
	movs r0, #0x73
	bl PlaySFX
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	movs r0, #0x78
	strh r0, [r4, #8]
_080554CA:
	pop {r4, pc}
	.align 2, 0
_080554CC: .4byte gUnk_03000FD0
_080554D0: .4byte gUnk_02000080

	thumb_func_start sub_080554D4
sub_080554D4: @ 0x080554D4
	push {lr}
	ldr r0, _080554F4 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080554F2
	ldr r1, _080554F8 @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080554F2
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_080554F2:
	pop {pc}
	.align 2, 0
_080554F4: .4byte gUnk_03000FD0
_080554F8: .4byte gUnk_02000080

	thumb_func_start sub_080554FC
sub_080554FC: @ 0x080554FC
	push {lr}
	ldr r1, _08055510 @ =gUnk_080FF248
	ldr r0, _08055514 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08055510: .4byte gUnk_080FF248
_08055514: .4byte gUnk_02000080

	thumb_func_start sub_08055518
sub_08055518: @ 0x08055518
	push {r4, lr}
	ldr r4, _08055540 @ =gUnk_02000080
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _08055544 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	pop {r4, pc}
	.align 2, 0
_08055540: .4byte gUnk_02000080
_08055544: .4byte gUnk_02000070

	thumb_func_start sub_08055548
sub_08055548: @ 0x08055548
	push {r4, lr}
	ldr r0, _08055578 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055576
	movs r0, #0xff
	bl CheckRoomFlag
	cmp r0, #0
	beq _08055576
	ldr r4, _0805557C @ =gUnk_02000080
	ldrb r0, [r4, #4]
	movs r1, #1
	bl sub_0801876C
	ldrb r0, [r4, #4]
	bl sub_080553E0
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	movs r0, #0xb4
	strh r0, [r4, #8]
_08055576:
	pop {r4, pc}
	.align 2, 0
_08055578: .4byte gUnk_03000FD0
_0805557C: .4byte gUnk_02000080

	thumb_func_start sub_08055580
sub_08055580: @ 0x08055580
	push {lr}
	ldr r1, _08055598 @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08055596
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_08055596:
	pop {pc}
	.align 2, 0
_08055598: .4byte gUnk_02000080

	thumb_func_start sub_0805559C
sub_0805559C: @ 0x0805559C
	push {lr}
	ldr r1, _080555B0 @ =gUnk_080FF254
	ldr r0, _080555B4 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080555B0: .4byte gUnk_080FF254
_080555B4: .4byte gUnk_02000080

	thumb_func_start sub_080555B8
sub_080555B8: @ 0x080555B8
	push {r4, r5, lr}
	ldr r5, _08055600 @ =gUnk_02000080
	ldr r4, [r5, #0xc]
	ldr r1, _08055604 @ =gUnk_0811E454
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r4, #0x12]
	bl SetLocalFlagByOffset
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	bl sub_0804B0E8
	movs r0, #0x11
	bl sub_0801D7EC
	ldrb r0, [r5, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r5, #6]
	adds r0, #1
	strb r0, [r5, #6]
	ldr r1, _08055608 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	pop {r4, r5, pc}
	.align 2, 0
_08055600: .4byte gUnk_02000080
_08055604: .4byte gUnk_0811E454
_08055608: .4byte gUnk_02000070

	thumb_func_start sub_0805560C
sub_0805560C: @ 0x0805560C
	push {lr}
	ldr r0, _0805562C @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055628
	movs r0, #0xff
	bl CheckRoomFlag
	cmp r0, #0
	beq _08055628
	ldr r1, _08055630 @ =gUnk_02000080
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
_08055628:
	pop {pc}
	.align 2, 0
_0805562C: .4byte gUnk_03000FD0
_08055630: .4byte gUnk_02000080

	thumb_func_start sub_08055634
sub_08055634: @ 0x08055634
	push {r4, r5, lr}
	ldr r4, _0805566C @ =gUnk_02000080
	ldr r5, [r4, #0xc]
	movs r0, #0x2c
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0805565C
	ldr r0, _08055670 @ =gRoomControls
	ldrh r1, [r5, #8]
	ldrh r3, [r0, #6]
	adds r1, r1, r3
	strh r1, [r2, #0x2e]
	ldrh r1, [r5, #0xa]
	ldrh r0, [r0, #8]
	adds r1, r1, r0
	strh r1, [r2, #0x32]
_0805565C:
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	movs r0, #0xc3
	lsls r0, r0, #1
	strh r0, [r4, #8]
	pop {r4, r5, pc}
	.align 2, 0
_0805566C: .4byte gUnk_02000080
_08055670: .4byte gRoomControls

	thumb_func_start sub_08055674
sub_08055674: @ 0x08055674
	push {lr}
	ldr r1, _0805568C @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805568A
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_0805568A:
	pop {pc}
	.align 2, 0
_0805568C: .4byte gUnk_02000080

	thumb_func_start sub_08055690
sub_08055690: @ 0x08055690
	push {lr}
	ldr r1, _080556A4 @ =gUnk_080FF284
	ldr r0, _080556A8 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080556A4: .4byte gUnk_080FF284
_080556A8: .4byte gUnk_02000080

	thumb_func_start sub_080556AC
sub_080556AC: @ 0x080556AC
	push {r4, lr}
	ldr r4, _080556E4 @ =gUnk_02000080
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _080556E8 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	ldr r1, [r4, #0xc]
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	bl sub_0804B0B0
	ldr r0, _080556EC @ =gUnk_080FF264
	bl LoadRoomEntityList
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	pop {r4, pc}
	.align 2, 0
_080556E4: .4byte gUnk_02000080
_080556E8: .4byte gUnk_02000070
_080556EC: .4byte gUnk_080FF264

	thumb_func_start nullsub_489
nullsub_489: @ 0x080556F0
	bx lr
	.align 2, 0

	thumb_func_start sub_080556F4
sub_080556F4: @ 0x080556F4
	push {lr}
	ldr r1, _08055708 @ =gUnk_080FF28C
	ldr r0, _0805570C @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08055708: .4byte gUnk_080FF28C
_0805570C: .4byte gUnk_02000080

	thumb_func_start sub_08055710
sub_08055710: @ 0x08055710
	push {r4, lr}
	ldr r4, _0805575C @ =gUnk_02000080
	ldr r1, [r4, #0xc]
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	bl sub_0804B0B0
	ldr r0, _08055760 @ =gUnk_080FEE48
	bl CreateEntity
	adds r1, r0, #0
	cmp r1, #0
	beq _08055734
	movs r0, #2
	strb r0, [r1, #0xb]
	adds r1, #0x86
	ldr r0, _08055764 @ =0x000080FF
	strh r0, [r1]
_08055734:
	ldrb r0, [r4, #4]
	bl sub_08054A14
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _08055768 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	pop {r4, pc}
	.align 2, 0
_0805575C: .4byte gUnk_02000080
_08055760: .4byte gUnk_080FEE48
_08055764: .4byte 0x000080FF
_08055768: .4byte gUnk_02000070

	thumb_func_start sub_0805576C
sub_0805576C: @ 0x0805576C
	push {lr}
	ldr r0, _08055790 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805578C
	movs r0, #0xff
	bl CheckRoomFlag
	cmp r0, #0
	beq _0805578C
	ldr r0, _08055794 @ =gUnk_02000080
	ldrb r1, [r0, #6]
	adds r1, #1
	strb r1, [r0, #6]
	movs r1, #0x78
	strh r1, [r0, #8]
_0805578C:
	pop {pc}
	.align 2, 0
_08055790: .4byte gUnk_03000FD0
_08055794: .4byte gUnk_02000080

	thumb_func_start sub_08055798
sub_08055798: @ 0x08055798
	push {lr}
	ldr r1, _080557B0 @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080557AE
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_080557AE:
	pop {pc}
	.align 2, 0
_080557B0: .4byte gUnk_02000080

	thumb_func_start sub_080557B4
sub_080557B4: @ 0x080557B4
	push {lr}
	ldr r1, _080557C8 @ =gUnk_080FF2B8
	ldr r0, _080557CC @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080557C8: .4byte gUnk_080FF2B8
_080557CC: .4byte gUnk_02000080

	thumb_func_start sub_080557D0
sub_080557D0: @ 0x080557D0
	push {r4, lr}
	ldr r4, _08055808 @ =gUnk_02000080
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _0805580C @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	ldr r1, [r4, #0xc]
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	bl sub_0804B0B0
	ldr r0, _08055810 @ =gUnk_080FF298
	bl LoadRoomEntityList
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	pop {r4, pc}
	.align 2, 0
_08055808: .4byte gUnk_02000080
_0805580C: .4byte gUnk_02000070
_08055810: .4byte gUnk_080FF298

	thumb_func_start nullsub_490
nullsub_490: @ 0x08055814
	bx lr
	.align 2, 0

	thumb_func_start sub_08055818
sub_08055818: @ 0x08055818
	push {lr}
	ldr r1, _0805582C @ =gUnk_080FF300
	ldr r0, _08055830 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_0805582C: .4byte gUnk_080FF300
_08055830: .4byte gUnk_02000080

	thumb_func_start sub_08055834
sub_08055834: @ 0x08055834
	push {r4, lr}
	ldr r0, _08055870 @ =gUnk_080FF2C0
	bl LoadRoomEntityList
	ldr r0, _08055874 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	cmp r0, #9
	beq _0805584A
	ldr r0, _08055878 @ =0x00000DB4
	bl sub_08018C58
_0805584A:
	ldr r4, _0805587C @ =gUnk_02000080
	ldrb r0, [r4, #4]
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _08055880 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	pop {r4, pc}
	.align 2, 0
_08055870: .4byte gUnk_080FF2C0
_08055874: .4byte gUnk_02002A40
_08055878: .4byte 0x00000DB4
_0805587C: .4byte gUnk_02000080
_08055880: .4byte gUnk_02000070

	thumb_func_start nullsub_491
nullsub_491: @ 0x08055884
	bx lr
	.align 2, 0

	thumb_func_start sub_08055888
sub_08055888: @ 0x08055888
	push {lr}
	ldr r1, _0805589C @ =gUnk_080FF328
	ldr r0, _080558A0 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_0805589C: .4byte gUnk_080FF328
_080558A0: .4byte gUnk_02000080

	thumb_func_start sub_080558A4
sub_080558A4: @ 0x080558A4
	push {r4, lr}
	ldr r4, _080558DC @ =gUnk_02000080
	ldr r1, [r4, #0xc]
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	bl sub_0804B0B0
	ldr r0, _080558E0 @ =gUnk_080FF308
	bl LoadRoomEntityList
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _080558E4 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	pop {r4, pc}
	.align 2, 0
_080558DC: .4byte gUnk_02000080
_080558E0: .4byte gUnk_080FF308
_080558E4: .4byte gUnk_02000070

	thumb_func_start nullsub_492
nullsub_492: @ 0x080558E8
	bx lr
	.align 2, 0

	thumb_func_start sub_080558EC
sub_080558EC: @ 0x080558EC
	push {lr}
	ldr r1, _08055900 @ =gUnk_080FF330
	ldr r0, _08055904 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08055900: .4byte gUnk_080FF330
_08055904: .4byte gUnk_02000080

	thumb_func_start sub_08055908
sub_08055908: @ 0x08055908
	push {r4, r5, lr}
	ldr r5, _08055940 @ =gUnk_02000080
	ldr r4, [r5, #0xc]
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	bl sub_0804B0B0
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	bl sub_0804B0E8
	ldrb r0, [r5, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r5, #6]
	adds r0, #1
	strb r0, [r5, #6]
	ldr r1, _08055944 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	pop {r4, r5, pc}
	.align 2, 0
_08055940: .4byte gUnk_02000080
_08055944: .4byte gUnk_02000070

	thumb_func_start sub_08055948
sub_08055948: @ 0x08055948
	push {lr}
	ldr r0, _08055970 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805596C
	movs r0, #0xff
	bl CheckRoomFlag
	cmp r0, #0
	beq _0805596C
	bl sub_08055994
	ldr r0, _08055974 @ =gUnk_02000080
	ldrb r1, [r0, #6]
	adds r1, #1
	strb r1, [r0, #6]
	movs r1, #0x78
	strh r1, [r0, #8]
_0805596C:
	pop {pc}
	.align 2, 0
_08055970: .4byte gUnk_03000FD0
_08055974: .4byte gUnk_02000080

	thumb_func_start sub_08055978
sub_08055978: @ 0x08055978
	push {lr}
	ldr r1, _08055990 @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805598E
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_0805598E:
	pop {pc}
	.align 2, 0
_08055990: .4byte gUnk_02000080

	thumb_func_start sub_08055994
sub_08055994: @ 0x08055994
	push {r4, lr}
	ldr r4, _080559D8 @ =gUnk_02000080
	ldrb r0, [r4, #4]
	lsls r0, r0, #3
	ldr r1, _080559DC @ =gUnk_080FEAC8
	adds r0, r0, r1
	ldrb r1, [r0, #6]
	movs r0, #1
	ands r0, r1
	movs r3, #1
	cmp r0, #0
	beq _080559AE
	movs r3, #2
_080559AE:
	ldr r0, [r4, #0xc]
	ldrh r1, [r0, #8]
	lsrs r1, r1, #4
	movs r2, #0x3f
	ands r1, r2
	ldrh r0, [r0, #0xa]
	lsrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r1, r0
	movs r0, #0x73
	adds r2, r3, #0
	bl SetTileType
	ldrb r0, [r4, #4]
	bl sub_080553E0
	movs r0, #0x73
	bl PlaySFX
	pop {r4, pc}
	.align 2, 0
_080559D8: .4byte gUnk_02000080
_080559DC: .4byte gUnk_080FEAC8

	thumb_func_start sub_080559E0
sub_080559E0: @ 0x080559E0
	push {lr}
	ldr r1, _080559F4 @ =gUnk_080FF35C
	ldr r0, _080559F8 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080559F4: .4byte gUnk_080FF35C
_080559F8: .4byte gUnk_02000080

	thumb_func_start sub_080559FC
sub_080559FC: @ 0x080559FC
	push {r4, lr}
	ldr r4, _08055A30 @ =gUnk_02000080
	ldr r0, [r4, #0xc]
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _08055A0E
	ldr r0, _08055A34 @ =gUnk_080FF33C
	bl LoadRoomEntityList
_08055A0E:
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _08055A38 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	pop {r4, pc}
	.align 2, 0
_08055A30: .4byte gUnk_02000080
_08055A34: .4byte gUnk_080FF33C
_08055A38: .4byte gUnk_02000070

	thumb_func_start sub_08055A3C
sub_08055A3C: @ 0x08055A3C
	push {lr}
	ldr r0, _08055A64 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055A60
	movs r0, #0xff
	bl CheckRoomFlag
	cmp r0, #0
	beq _08055A60
	movs r0, #7
	movs r1, #0x10
	bl DoFade
	ldr r1, _08055A68 @ =gUnk_02000080
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
_08055A60:
	pop {pc}
	.align 2, 0
_08055A64: .4byte gUnk_03000FD0
_08055A68: .4byte gUnk_02000080

	thumb_func_start sub_08055A6C
sub_08055A6C: @ 0x08055A6C
	push {r4, lr}
	ldr r0, _08055AA0 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055A9E
	ldr r4, _08055AA4 @ =gUnk_02000080
	ldrb r0, [r4, #4]
	movs r1, #1
	bl sub_0801876C
	ldrb r0, [r4, #4]
	bl sub_080553E0
	movs r0, #6
	movs r1, #0x10
	bl DoFade
	movs r0, #0x73
	bl PlaySFX
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	movs r0, #0x78
	strh r0, [r4, #8]
_08055A9E:
	pop {r4, pc}
	.align 2, 0
_08055AA0: .4byte gUnk_03000FD0
_08055AA4: .4byte gUnk_02000080

	thumb_func_start sub_08055AA8
sub_08055AA8: @ 0x08055AA8
	push {lr}
	ldr r0, _08055AC8 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055AC6
	ldr r1, _08055ACC @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08055AC6
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_08055AC6:
	pop {pc}
	.align 2, 0
_08055AC8: .4byte gUnk_03000FD0
_08055ACC: .4byte gUnk_02000080

	thumb_func_start sub_08055AD0
sub_08055AD0: @ 0x08055AD0
	push {lr}
	ldr r1, _08055AE4 @ =gUnk_080FF36C
	ldr r0, _08055AE8 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08055AE4: .4byte gUnk_080FF36C
_08055AE8: .4byte gUnk_02000080

	thumb_func_start sub_08055AEC
sub_08055AEC: @ 0x08055AEC
	push {r4, lr}
	ldr r4, _08055B2C @ =gUnk_02000080
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldr r0, [r4, #0xc]
	ldrb r0, [r0, #1]
	lsls r0, r0, #4
	ldr r1, _08055B30 @ =gUnk_080FED18
	adds r0, r0, r1
	bl CreateEntity
	adds r1, r0, #0
	cmp r1, #0
	beq _08055B14
	movs r0, #1
	strb r0, [r1, #0xb]
_08055B14:
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _08055B34 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	pop {r4, pc}
	.align 2, 0
_08055B2C: .4byte gUnk_02000080
_08055B30: .4byte gUnk_080FED18
_08055B34: .4byte gUnk_02000070

	thumb_func_start sub_08055B38
sub_08055B38: @ 0x08055B38
	push {lr}
	ldr r0, _08055B4C @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055B48
	ldr r1, _08055B50 @ =gUnk_02000080
	movs r0, #0x78
	strh r0, [r1, #8]
_08055B48:
	pop {pc}
	.align 2, 0
_08055B4C: .4byte gUnk_03000FD0
_08055B50: .4byte gUnk_02000080

	thumb_func_start sub_08055B54
sub_08055B54: @ 0x08055B54
	push {lr}
	ldr r1, _08055B6C @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08055B6A
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_08055B6A:
	pop {pc}
	.align 2, 0
_08055B6C: .4byte gUnk_02000080

	thumb_func_start sub_08055B70
sub_08055B70: @ 0x08055B70
	push {r4, r5, r6, lr}
	adds r0, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r1, _08055BA4 @ =gUnk_02000080
	ldr r4, [r1, #0xc]
	lsls r0, r0, #4
	ldr r1, _08055BA8 @ =gUnk_080FF378
	adds r0, r0, r1
	bl CreateEntity
	adds r3, r0, #0
	cmp r3, #0
	beq _08055BA2
	ldrh r0, [r4, #8]
	ldr r1, _08055BAC @ =gRoomControls
	adds r0, r0, r5
	ldrh r2, [r1, #6]
	adds r0, r0, r2
	strh r0, [r3, #0x2e]
	ldrh r0, [r4, #0xa]
	adds r0, r0, r6
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	strh r0, [r3, #0x32]
_08055BA2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08055BA4: .4byte gUnk_02000080
_08055BA8: .4byte gUnk_080FF378
_08055BAC: .4byte gRoomControls

	thumb_func_start sub_08055BB0
sub_08055BB0: @ 0x08055BB0
	push {lr}
	ldr r1, _08055BC4 @ =gUnk_080FF3C8
	ldr r0, _08055BC8 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08055BC4: .4byte gUnk_080FF3C8
_08055BC8: .4byte gUnk_02000080

	thumb_func_start sub_08055BCC
sub_08055BCC: @ 0x08055BCC
	push {r4, lr}
	ldr r4, _08055BFC @ =gUnk_02000080
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r4, #4]
	movs r1, #0
	bl sub_0801876C
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _08055C00 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	pop {r4, pc}
	.align 2, 0
_08055BFC: .4byte gUnk_02000080
_08055C00: .4byte gUnk_02000070

	thumb_func_start sub_08055C04
sub_08055C04: @ 0x08055C04
	push {lr}
	ldr r0, _08055C2C @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055C28
	movs r0, #0xff
	bl CheckRoomFlag
	cmp r0, #0
	beq _08055C28
	movs r0, #7
	movs r1, #0x10
	bl DoFade
	ldr r1, _08055C30 @ =gUnk_02000080
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
_08055C28:
	pop {pc}
	.align 2, 0
_08055C2C: .4byte gUnk_03000FD0
_08055C30: .4byte gUnk_02000080

	thumb_func_start sub_08055C34
sub_08055C34: @ 0x08055C34
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _08055C64 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055CA6
	ldr r5, _08055C68 @ =gUnk_02000080
	ldr r4, [r5, #0xc]
	ldrb r0, [r5, #4]
	bl sub_080553E0
	ldrb r1, [r4, #1]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08055C6C
	ldrb r0, [r5, #4]
	movs r1, #0
	bl sub_08054974
	b _08055C8C
	.align 2, 0
_08055C64: .4byte gUnk_03000FD0
_08055C68: .4byte gUnk_02000080
_08055C6C:
	str r0, [sp]
	movs r0, #6
	movs r1, #0x9e
	movs r2, #6
	movs r3, #0
	bl sub_0805EB2C
	adds r4, r0, #0
	cmp r4, #0
	beq _08055C8C
	ldr r0, [r4, #0x54]
	bl DeleteEntity
	adds r0, r4, #0
	bl DeleteEntity
_08055C8C:
	movs r0, #6
	movs r1, #0x10
	bl DoFade
	movs r0, #0x73
	bl PlaySFX
	ldr r0, _08055CAC @ =gUnk_02000080
	ldrb r1, [r0, #6]
	adds r1, #1
	strb r1, [r0, #6]
	movs r1, #0x78
	strh r1, [r0, #8]
_08055CA6:
	add sp, #4
	pop {r4, r5, pc}
	.align 2, 0
_08055CAC: .4byte gUnk_02000080

	thumb_func_start sub_08055CB0
sub_08055CB0: @ 0x08055CB0
	push {lr}
	ldr r0, _08055CD0 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055CCE
	ldr r1, _08055CD4 @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08055CCE
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_08055CCE:
	pop {pc}
	.align 2, 0
_08055CD0: .4byte gUnk_03000FD0
_08055CD4: .4byte gUnk_02000080

	thumb_func_start sub_08055CD8
sub_08055CD8: @ 0x08055CD8
	push {lr}
	ldr r1, _08055CEC @ =gUnk_080FF3E8
	ldr r0, _08055CF0 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08055CEC: .4byte gUnk_080FF3E8
_08055CF0: .4byte gUnk_02000080

	thumb_func_start sub_08055CF4
sub_08055CF4: @ 0x08055CF4
	push {r4, lr}
	ldr r4, _08055D24 @ =gUnk_02000080
	ldr r1, [r4, #0xc]
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	bl sub_0804B0B0
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _08055D28 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	pop {r4, pc}
	.align 2, 0
_08055D24: .4byte gUnk_02000080
_08055D28: .4byte gUnk_02000070

	thumb_func_start sub_08055D2C
sub_08055D2C: @ 0x08055D2C
	push {r4, lr}
	ldr r0, _08055D5C @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055D5A
	movs r0, #0xff
	bl CheckRoomFlag
	cmp r0, #0
	beq _08055D5A
	ldr r4, _08055D60 @ =gUnk_02000080
	ldrb r0, [r4, #4]
	movs r1, #1
	bl sub_0801876C
	ldrb r0, [r4, #4]
	bl sub_080553E0
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	movs r0, #0x78
	strh r0, [r4, #8]
_08055D5A:
	pop {r4, pc}
	.align 2, 0
_08055D5C: .4byte gUnk_03000FD0
_08055D60: .4byte gUnk_02000080

	thumb_func_start sub_08055D64
sub_08055D64: @ 0x08055D64
	push {lr}
	ldr r1, _08055D7C @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08055D7A
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_08055D7A:
	pop {pc}
	.align 2, 0
_08055D7C: .4byte gUnk_02000080

	thumb_func_start sub_08055D80
sub_08055D80: @ 0x08055D80
	push {lr}
	ldr r1, _08055D94 @ =gUnk_080FF3F4
	ldr r0, _08055D98 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08055D94: .4byte gUnk_080FF3F4
_08055D98: .4byte gUnk_02000080

	thumb_func_start sub_08055D9C
sub_08055D9C: @ 0x08055D9C
	push {lr}
	ldr r1, _08055DB8 @ =gUnk_02000080
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	ldr r1, _08055DBC @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	pop {pc}
	.align 2, 0
_08055DB8: .4byte gUnk_02000080
_08055DBC: .4byte gUnk_02000070

	thumb_func_start sub_08055DC0
sub_08055DC0: @ 0x08055DC0
	push {lr}
	ldr r0, _08055DE0 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055DDC
	ldr r0, _08055DE4 @ =0x00000A01
	bl TextboxTryNoOverlap
	ldr r1, _08055DE8 @ =gUnk_02000080
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	movs r0, #0x78
	strh r0, [r1, #8]
_08055DDC:
	pop {pc}
	.align 2, 0
_08055DE0: .4byte gUnk_03000FD0
_08055DE4: .4byte 0x00000A01
_08055DE8: .4byte gUnk_02000080

	thumb_func_start sub_08055DEC
sub_08055DEC: @ 0x08055DEC
	push {lr}
	ldr r1, _08055E04 @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08055E02
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_08055E02:
	pop {pc}
	.align 2, 0
_08055E04: .4byte gUnk_02000080
