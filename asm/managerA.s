	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08058380
sub_08058380: @ 0x08058380
	push {lr}
	ldr r2, _08058394 @ =gUnk_081081F4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08058394: .4byte gUnk_081081F4

	thumb_func_start sub_08058398
sub_08058398: @ 0x08058398
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3c]
	bl CheckFlags
	cmp r0, #0
	beq _080583AA
	bl DeleteThisEntity
_080583AA:
	adds r0, r4, #0
	adds r0, #0x3a
	ldrb r1, [r0]
	lsls r1, r1, #3
	strh r1, [r4, #0x24]
	adds r0, #1
	ldrb r2, [r0]
	lsls r2, r2, #3
	strh r2, [r4, #0x26]
	subs r0, #3
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r1, r1, r0
	strh r1, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r2, r2, r0
	strh r2, [r4, #0x22]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	ldrh r0, [r4, #0x3e]
	cmp r0, #0
	bne _080583E4
	movs r0, #2
	b _080583E6
_080583E4:
	movs r0, #1
_080583E6:
	strb r0, [r4, #0xc]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080583EC
sub_080583EC: @ 0x080583EC
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _08058404
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_08058408
_08058404:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08058408
sub_08058408: @ 0x08058408
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, _0805843C @ =gLinkState
	ldr r5, [r6, #0x30]
	movs r0, #8
	ands r5, r0
	cmp r5, #0
	bne _08058488
	ldrh r0, [r4, #0x20]
	ldrh r1, [r4, #0x22]
	ldrh r2, [r4, #0x24]
	ldrh r3, [r4, #0x26]
	bl CheckPlayerInRegion
	cmp r0, #0
	beq _08058488
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _08058488
	cmp r0, #1
	ble _08058450
	cmp r0, #2
	beq _08058440
	cmp r0, #3
	beq _0805847C
	b _08058450
	.align 2, 0
_0805843C: .4byte gLinkState
_08058440:
	adds r0, r4, #0
	bl sub_080585DC
	ldr r0, [r6, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08058488
_08058450:
	adds r0, r4, #0
	bl sub_080585DC
	adds r0, r4, #0
	bl sub_0805848C
	cmp r0, #0
	beq _08058488
	movs r0, #3
	bl sub_08078A90
	bl sub_08078B48
	bl sub_0805E544
	movs r0, #0
	movs r1, #3
	strb r1, [r4, #0xc]
	strb r0, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	b _08058488
_0805847C:
	movs r0, #4
	strb r0, [r4, #0xc]
	strb r5, [r4, #0xd]
	ldrh r0, [r4, #0x36]
	bl sub_080186C0
_08058488:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0805848C
sub_0805848C: @ 0x0805848C
	push {lr}
	ldr r0, _080584A4 @ =gLinkState
	adds r0, #0xa8
	ldrb r0, [r0]
	subs r0, #5
	cmp r0, #0x17
	bhi _08058510
	lsls r0, r0, #2
	ldr r1, _080584A8 @ =_080584AC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080584A4: .4byte gLinkState
_080584A8: .4byte _080584AC
_080584AC: @ jump table
	.4byte _0805850C @ case 0
	.4byte _08058510 @ case 1
	.4byte _0805850C @ case 2
	.4byte _0805850C @ case 3
	.4byte _08058510 @ case 4
	.4byte _0805850C @ case 5
	.4byte _0805850C @ case 6
	.4byte _0805850C @ case 7
	.4byte _0805850C @ case 8
	.4byte _0805850C @ case 9
	.4byte _0805850C @ case 10
	.4byte _0805850C @ case 11
	.4byte _0805850C @ case 12
	.4byte _0805850C @ case 13
	.4byte _0805850C @ case 14
	.4byte _0805850C @ case 15
	.4byte _0805850C @ case 16
	.4byte _0805850C @ case 17
	.4byte _0805850C @ case 18
	.4byte _0805850C @ case 19
	.4byte _08058510 @ case 20
	.4byte _08058510 @ case 21
	.4byte _0805850C @ case 22
	.4byte _0805850C @ case 23
_0805850C:
	movs r0, #0
	b _08058512
_08058510:
	movs r0, #1
_08058512:
	pop {pc}

	thumb_func_start sub_08058514
sub_08058514: @ 0x08058514
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	beq _08058532
	cmp r0, #1
	bgt _08058528
	cmp r0, #0
	beq _08058570
	b _080585A6
_08058528:
	cmp r0, #2
	beq _08058570
	cmp r0, #3
	beq _08058584
	b _080585A6
_08058532:
	ldr r2, _08058564 @ =gLinkState
	ldr r0, [r2, #0x30]
	ldr r1, _08058568 @ =0x00001235
	ands r0, r1
	cmp r0, #0
	bne _080585A6
	ldr r0, _0805856C @ =gLinkEntity
	movs r1, #0x36
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080585A6
	strb r0, [r2, #2]
	ldrh r0, [r4, #0x36]
	adds r1, r4, #0
	adds r1, #0x35
	ldrb r1, [r1]
	bl sub_08078AA8
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	b _080585A6
	.align 2, 0
_08058564: .4byte gLinkState
_08058568: .4byte 0x00001235
_0805856C: .4byte gLinkEntity
_08058570:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080585A6
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	b _080585A6
_08058584:
	ldr r0, _080585A8 @ =gLinkEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	beq _08058590
	cmp r0, #9
	bne _080585A6
_08058590:
	ldr r0, _080585AC @ =gLinkState
	adds r0, #0x8b
	movs r1, #1
	strb r1, [r0]
	bl UnfreezeTime
	ldrh r0, [r4, #0x3c]
	bl SetFlag
	bl DeleteThisEntity
_080585A6:
	pop {r4, pc}
	.align 2, 0
_080585A8: .4byte gLinkEntity
_080585AC: .4byte gLinkState

	thumb_func_start sub_080585B0
sub_080585B0: @ 0x080585B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080585D8 @ =gArea
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _080585C2
	bl DeleteThisEntity
_080585C2:
	ldrh r0, [r4, #0x3c]
	bl CheckFlags
	cmp r0, #0
	beq _080585D4
	bl sub_0801855C
	bl DeleteThisEntity
_080585D4:
	pop {r4, pc}
	.align 2, 0
_080585D8: .4byte gArea

	thumb_func_start sub_080585DC
sub_080585DC: @ 0x080585DC
	push {lr}
	ldrh r0, [r0, #0x3c]
	bl CheckFlags
	cmp r0, #0
	beq _080585EC
	bl DeleteThisEntity
_080585EC:
	pop {pc}
	.align 2, 0
