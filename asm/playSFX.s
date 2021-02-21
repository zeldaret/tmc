	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start PlaySFX
PlaySFX: @ 0x080A3268
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _080A32AC @ =gUnk_03001000
	ldrb r2, [r0, #7]
	cmp r2, #0
	beq _080A3276
	b _080A347C
_080A3276:
	ldr r5, _080A32B0 @ =gUnk_02021EE0
	ldr r4, _080A32B4 @ =0x0000FFFF
	ands r4, r3
	ldr r1, _080A32B8 @ =0xFFFF0000
	ands r1, r3
	ldr r0, _080A32BC @ =0x80090000
	cmp r1, r0
	bne _080A3288
	b _080A33A0
_080A3288:
	cmp r1, r0
	bhi _080A3310
	ldr r0, _080A32C0 @ =0x80040000
	cmp r1, r0
	bne _080A3294
	b _080A33F4
_080A3294:
	cmp r1, r0
	bhi _080A32D8
	ldr r0, _080A32C4 @ =0x80020000
	cmp r1, r0
	bne _080A32A0
	b _080A3384
_080A32A0:
	cmp r1, r0
	bhi _080A32CC
	ldr r0, _080A32C8 @ =0x80010000
	cmp r1, r0
	beq _080A337C
	b _080A3458
	.align 2, 0
_080A32AC: .4byte gUnk_03001000
_080A32B0: .4byte gUnk_02021EE0
_080A32B4: .4byte 0x0000FFFF
_080A32B8: .4byte 0xFFFF0000
_080A32BC: .4byte 0x80090000
_080A32C0: .4byte 0x80040000
_080A32C4: .4byte 0x80020000
_080A32C8: .4byte 0x80010000
_080A32CC:
	ldr r0, _080A32D4 @ =0x80030000
	cmp r1, r0
	beq _080A338C
	b _080A3458
	.align 2, 0
_080A32D4: .4byte 0x80030000
_080A32D8:
	ldr r0, _080A32F0 @ =0x80060000
	cmp r1, r0
	bne _080A32E0
	b _080A340A
_080A32E0:
	cmp r1, r0
	bhi _080A32F8
	ldr r0, _080A32F4 @ =0x80050000
	cmp r1, r0
	bne _080A32EC
	b _080A33FE
_080A32EC:
	b _080A3458
	.align 2, 0
_080A32F0: .4byte 0x80060000
_080A32F4: .4byte 0x80050000
_080A32F8:
	ldr r0, _080A3308 @ =0x80070000
	cmp r1, r0
	bne _080A3300
	b _080A340E
_080A3300:
	ldr r0, _080A330C @ =0x80080000
	cmp r1, r0
	beq _080A3398
	b _080A3458
	.align 2, 0
_080A3308: .4byte 0x80070000
_080A330C: .4byte 0x80080000
_080A3310:
	ldr r0, _080A3330 @ =0x800D0000
	cmp r1, r0
	bne _080A3318
	b _080A343A
_080A3318:
	cmp r1, r0
	bhi _080A3348
	ldr r0, _080A3334 @ =0x800B0000
	cmp r1, r0
	bne _080A3324
	b _080A3420
_080A3324:
	cmp r1, r0
	bhi _080A333C
	ldr r0, _080A3338 @ =0x800A0000
	cmp r1, r0
	beq _080A33B6
	b _080A3458
	.align 2, 0
_080A3330: .4byte 0x800D0000
_080A3334: .4byte 0x800B0000
_080A3338: .4byte 0x800A0000
_080A333C:
	ldr r0, _080A3344 @ =0x800C0000
	cmp r1, r0
	beq _080A33CC
	b _080A3458
	.align 2, 0
_080A3344: .4byte 0x800C0000
_080A3348:
	ldr r0, _080A335C @ =0x800F0000
	cmp r1, r0
	bne _080A3350
	b _080A344E
_080A3350:
	cmp r1, r0
	bhi _080A3364
	ldr r0, _080A3360 @ =0x800E0000
	cmp r1, r0
	beq _080A3446
	b _080A3458
	.align 2, 0
_080A335C: .4byte 0x800F0000
_080A3360: .4byte 0x800E0000
_080A3364:
	ldr r0, _080A3374 @ =0x80100000
	cmp r1, r0
	beq _080A343E
	ldr r0, _080A3378 @ =0x80110000
	cmp r1, r0
	beq _080A3454
	b _080A3458
	.align 2, 0
_080A3374: .4byte 0x80100000
_080A3378: .4byte 0x80110000
_080A337C:
	strh r2, [r5, #0x14]
	bl m4aMPlayAllStop
	b _080A347C
_080A3384:
	movs r0, #0
	bl sub_080A3234
	b _080A347C
_080A338C:
	bl sub_080A35C8
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #0x12]
	b _080A3418
_080A3398:
	ldrh r0, [r5, #0x14]
	bl sub_080A35B4
	b _080A347C
_080A33A0:
	cmp r4, #0
	bne _080A33A6
	ldrh r4, [r5, #0x14]
_080A33A6:
	subs r0, r4, #1
	cmp r0, #0x62
	bhi _080A347C
	strh r4, [r5, #0x14]
	adds r0, r4, #0
	bl m4aSongNumStart
	b _080A33C4
_080A33B6:
	subs r0, r4, #1
	cmp r0, #0x62
	bhi _080A347C
	strh r4, [r5, #0x14]
	adds r0, r4, #0
	bl m4aSongNumStartOrContinue
_080A33C4:
	adds r0, r4, #0
	bl sub_080A35A0
	b _080A347C
_080A33CC:
	ldr r2, _080A33EC @ =gUnk_08A11C3C
	ldr r1, _080A33F0 @ =gUnk_08A11DBC
	ldrh r0, [r5, #0x14]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r4, #0
	bl m4aMPlayTempoControl
	b _080A347C
	.align 2, 0
_080A33EC: .4byte gUnk_08A11C3C
_080A33F0: .4byte gUnk_08A11DBC
_080A33F4:
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	b _080A347C
_080A33FE:
	ldrh r0, [r5, #0x14]
	cmp r0, #0
	beq _080A347C
	bl m4aSongNumStop
	b _080A347C
_080A340A:
	bl m4aSoundVSyncOn
_080A340E:
	ldrh r0, [r5, #0x14]
	cmp r0, #0
	beq _080A347C
	bl m4aSongNumStartOrContinue
_080A3418:
	ldrh r0, [r5, #0x14]
	bl sub_080A353C
	b _080A347C
_080A3420:
	subs r0, r4, #1
	cmp r0, #0x62
	bhi _080A347C
	strh r4, [r5, #0x14]
	adds r0, r4, #0
	bl m4aSongNumStartOrContinue
	bl sub_080A35C8
	adds r0, r4, #0
	bl sub_080A353C
	b _080A347C
_080A343A:
	strh r2, [r5, #0x10]
	b _080A347C
_080A343E:
	strh r2, [r5, #0x10]
	movs r0, #1
	strb r0, [r5, #2]
	b _080A347C
_080A3446:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #0x10]
	b _080A347C
_080A344E:
	bl sub_080A35C8
	b _080A347C
_080A3454:
	strh r2, [r5, #0x14]
	b _080A347C
_080A3458:
	cmp r4, #0
	beq _080A347C
	subs r0, r4, #1
	cmp r0, #0x62
	bhi _080A3470
	strh r4, [r5, #0x14]
	adds r0, r4, #0
	bl m4aSongNumStart
	bl sub_080A35C8
	b _080A3476
_080A3470:
	adds r0, r4, #0
	bl m4aSongNumStart
_080A3476:
	adds r0, r4, #0
	bl sub_080A353C
_080A347C:
	pop {r4, r5, pc}
	.align 2, 0
