	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_080A2448
sub_080A2448: @ 0x080A2448
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _080A245E
	adds r0, r5, #0
	bl sub_080A2500
_080A245E:
	ldrb r0, [r5, #0xc]
	adds r1, r0, #0
	cmp r1, #0
	bne _080A24CE
	adds r0, #1
	strb r0, [r5, #0xc]
	ldrb r0, [r5, #0xe]
	strb r0, [r5, #0xa]
	str r1, [r5, #0x54]
	ldr r2, _080A24B4 @ =gUnk_03003D90
	ldr r4, [r2, #4]
	cmp r4, r2
	beq _080A24BE
_080A2478:
	ldrb r0, [r4, #8]
	cmp r0, #3
	bne _080A24B8
	ldrb r0, [r5, #0xb]
	ldrb r1, [r4, #9]
	cmp r0, r1
	bne _080A24B8
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	movs r3, #0x2e
	ldrsh r1, [r5, r3]
	subs r0, r0, r1
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bhi _080A24B8
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	movs r3, #0x32
	ldrsh r1, [r5, r3]
	subs r0, r0, r1
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bhi _080A24B8
	str r4, [r5, #0x54]
	b _080A24BE
	.align 2, 0
_080A24B4: .4byte gUnk_03003D90
_080A24B8:
	ldr r4, [r4, #4]
	cmp r4, r2
	bne _080A2478
_080A24BE:
	ldr r0, [r5, #0x54]
	cmp r0, #0
	bne _080A24CA
	adds r0, r5, #0
	bl sub_080A2534
_080A24CA:
	bl sub_08054564
_080A24CE:
	ldr r4, [r5, #0x54]
	cmp r4, #0
	beq _080A24F6
	movs r2, #0x80
	lsls r2, r2, #0xb
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r4, #0
	adds r1, r5, #0
	bl PositionRelative
	ldrh r0, [r5, #0x36]
	subs r0, #4
	strh r0, [r5, #0x36]
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _080A24F6
	adds r0, r5, #0
	bl sub_080A2508
_080A24F6:
	adds r0, r5, #0
	bl sub_08080CB4
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A2500
sub_080A2500: @ 0x080A2500
	push {lr}
	bl DeleteThisEntity
	pop {pc}

	thumb_func_start sub_080A2508
sub_080A2508: @ 0x080A2508
	push {r4, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0xa]
	movs r1, #0
	movs r3, #0
	bl CreateObjectWithParent
	adds r2, r0, #0
	cmp r2, #0
	beq _080A252C
	movs r0, #5
	strb r0, [r2, #0xe]
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x86
	strh r1, [r0]
_080A252C:
	adds r0, r4, #0
	bl sub_080A2500
	pop {r4, pc}

	thumb_func_start sub_080A2534
sub_080A2534: @ 0x080A2534
	push {r4, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0xa]
	movs r1, #0
	movs r3, #0
	bl CreateObjectWithParent
	adds r2, r0, #0
	cmp r2, #0
	beq _080A2558
	movs r0, #4
	strb r0, [r2, #0xe]
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x86
	strh r1, [r0]
_080A2558:
	adds r0, r4, #0
	bl sub_080A2500
	pop {r4, pc}
