	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08019444
sub_08019444: @ 0x08019444
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_0806F69C
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08019464
	bl DeleteThisEntity
_08019464:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08019468
sub_08019468: @ 0x08019468
	push {lr}
	adds r1, r0, #0
	adds r0, #0x40
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _0801947E
	adds r0, r1, #0
	movs r1, #0x50
	movs r2, #0
	bl CreateFx
_0801947E:
	pop {pc}

	thumb_func_start SwordBeam
SwordBeam: @ 0x08019480
	push {lr}
	ldr r2, _08019494 @ =gUnk_080B43F4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08019494: .4byte gUnk_080B43F4

	thumb_func_start sub_08019498
sub_08019498: @ 0x08019498
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08019504 @ =gPlayerEntity
	adds r0, r4, #0
	adds r1, r5, #0
	bl CopyPosition
	ldrb r0, [r5, #0xc]
	adds r0, #1
	movs r2, #0
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x18]
	adds r4, #0x3c
	ldrb r0, [r4]
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x3c
	strb r0, [r1]
	ldr r0, _08019508 @ =gUnk_080B4408
	str r0, [r5, #0x48]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r5, #0x24]
	movs r0, #2
	str r0, [r5, #0x74]
	str r2, [r5, #0x70]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #2
	bne _080194E6
	movs r0, #1
	strb r0, [r5, #0xb]
_080194E6:
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	strb r0, [r5, #0x15]
	movs r0, #0x3c
	str r0, [r5, #0x6c]
	ldrb r0, [r5, #0x14]
	adds r2, r0, #0
	cmp r0, #2
	beq _08019534
	cmp r0, #2
	bgt _0801950C
	cmp r0, #0
	beq _08019516
	b _0801954E
	.align 2, 0
_08019504: .4byte gPlayerEntity
_08019508: .4byte gUnk_080B4408
_0801950C:
	cmp r0, #4
	beq _0801952C
	cmp r0, #6
	beq _08019542
	b _0801954E
_08019516:
	ldrh r0, [r5, #0x2e]
	subs r0, #3
	strh r0, [r5, #0x2e]
	ldrh r0, [r5, #0x32]
	subs r0, #8
	strh r0, [r5, #0x32]
	ldrb r0, [r5, #0x18]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x18]
	b _0801954E
_0801952C:
	ldrh r0, [r5, #0x2e]
	adds r0, #2
	strh r0, [r5, #0x2e]
	b _0801954E
_08019534:
	ldrb r0, [r5, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r5, #0x18]
	ldrh r0, [r5, #0x2e]
	adds r0, #1
	b _08019546
_08019542:
	ldrh r0, [r5, #0x2e]
	subs r0, #1
_08019546:
	strh r0, [r5, #0x2e]
	ldrh r0, [r5, #0x32]
	subs r0, #4
	strh r0, [r5, #0x32]
_0801954E:
	ldr r1, _08019578 @ =gUnk_080B43FC
	lsrs r0, r2, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	bl InitializeAnimation
	adds r0, r5, #0
	bl sub_0801766C
	adds r0, r5, #0
	bl sub_0806F69C
	adds r0, r5, #0
	bl sub_08019580
	ldr r0, _0801957C @ =0x0000013F
	bl PlaySFX
	pop {r4, r5, pc}
	.align 2, 0
_08019578: .4byte gUnk_080B43FC
_0801957C: .4byte 0x0000013F

	thumb_func_start sub_08019580
sub_08019580: @ 0x08019580
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x6c]
	subs r0, #1
	str r0, [r4, #0x6c]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08019638
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080195B0
	adds r0, r4, #0
	bl sub_0800451C
_080195B0:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _0801962C @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	ldr r1, _08019630 @ =gPlayerEntity
	adds r1, #0x38
	ldrb r1, [r1]
	movs r2, #0x80
	bl sub_080002F0
	cmp r0, #0
	bne _08019602
	ldr r1, _08019634 @ =gUnk_08003E44
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	movs r5, #0x32
	ldrsh r3, [r4, r5]
	adds r0, r4, #0
	bl sub_080040D8
	cmp r0, #0
	beq _08019602
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_08019602:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801961A
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_0801961A:
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_08008790
	cmp r0, #0
	beq _0801963C
	bl DeleteThisEntity
	b _0801963C
	.align 2, 0
_0801962C: .4byte gRoomControls
_08019630: .4byte gPlayerEntity
_08019634: .4byte gUnk_08003E44
_08019638:
	bl DeleteThisEntity
_0801963C:
	adds r0, r4, #0
	bl sub_08019644
	pop {r4, r5, pc}

	thumb_func_start sub_08019644
sub_08019644: @ 0x08019644
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x74]
	subs r1, r0, #1
	str r1, [r2, #0x74]
	cmp r1, #0
	bne _08019674
	movs r0, #2
	str r0, [r2, #0x74]
	ldr r0, [r2, #0x70]
	adds r0, #1
	str r0, [r2, #0x70]
	ldr r3, _08019678 @ =gUnk_080B4400
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08019668
	str r1, [r2, #0x70]
_08019668:
	ldr r0, [r2, #0x70]
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r2, #0
	bl sub_0801D2B4
_08019674:
	pop {pc}
	.align 2, 0
_08019678: .4byte gUnk_080B4400

	thumb_func_start sub_0801967C
sub_0801967C: @ 0x0801967C
	push {lr}
	ldr r1, _08019690 @ =gUnk_080B4458
	ldr r0, _08019694 @ =gMenu
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08019690: .4byte gUnk_080B4458
_08019694: .4byte gMenu

	thumb_func_start sub_08019698
sub_08019698: @ 0x08019698
	push {r4, r5, lr}
	ldr r0, _08019724 @ =gUnk_02032EC0
	ldrb r1, [r0, #3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08019728 @ =gUnk_080B4410
	adds r4, r0, r1
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r1, [r4, #4]
	bl SetLocalFlagByOffset
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	bl sub_08052FD8
	ldr r5, _0801972C @ =gRoomControls
	ldrh r0, [r4, #6]
	ldrh r1, [r5, #0xa]
	adds r0, r0, r1
	strh r0, [r5, #0xa]
	ldrh r0, [r4, #8]
	ldrh r2, [r5, #0xc]
	adds r0, r0, r2
	strh r0, [r5, #0xc]
	ldr r1, _08019730 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	bl sub_08000108
	ldr r2, _08019734 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _08019738 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0x2c
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _08019700
	ldrh r0, [r4, #0xa]
	ldrh r2, [r5, #0xa]
	adds r0, r0, r2
	strh r0, [r1, #0x2e]
	ldrh r0, [r4, #0xc]
	ldrh r5, [r5, #0xc]
	adds r0, r0, r5
	strh r0, [r1, #0x32]
_08019700:
	movs r0, #0x11
	bl LoadGfxGroup
	bl sub_080AD90C
	bl sub_080AD9B0
	bl sub_080AD918
	movs r0, #4
	movs r1, #8
	bl DoFade
	ldr r1, _0801973C @ =gUnk_02018EB0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	pop {r4, r5, pc}
	.align 2, 0
_08019724: .4byte gUnk_02032EC0
_08019728: .4byte gUnk_080B4410
_0801972C: .4byte gRoomControls
_08019730: .4byte gUnk_02000070
_08019734: .4byte gScreen
_08019738: .4byte 0x0000FEFF
_0801973C: .4byte gUnk_02018EB0

	thumb_func_start sub_08019740
sub_08019740: @ 0x08019740
	push {lr}
	ldr r0, _0801975C @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _08019758
	ldr r0, _08019760 @ =gUnk_02018EB0
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	movs r1, #0xc3
	lsls r1, r1, #1
	strh r1, [r0, #4]
_08019758:
	pop {pc}
	.align 2, 0
_0801975C: .4byte gFadeControl
_08019760: .4byte gUnk_02018EB0

	thumb_func_start sub_08019764
sub_08019764: @ 0x08019764
	push {lr}
	bl sub_080AD90C
	bl sub_0805E5C0
	bl sub_080AD9B0
	bl sub_080AD918
	ldr r2, _08019798 @ =gUnk_02018EB0
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08019790
	ldr r0, _0801979C @ =gUnk_03000FF0
	ldrh r1, [r0, #2]
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08019796
_08019790:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_08019796:
	pop {pc}
	.align 2, 0
_08019798: .4byte gUnk_02018EB0
_0801979C: .4byte gUnk_03000FF0

	thumb_func_start sub_080197A0
sub_080197A0: @ 0x080197A0
	push {lr}
	movs r0, #2
	movs r1, #0xb
	bl MenuFadeIn
	pop {pc}

	thumb_func_start sub_080197AC
sub_080197AC: @ 0x080197AC
	ldr r0, _080197C4 @ =gUnk_02025EB0
	ldr r1, _080197C8 @ =gBGAffSettings
	str r1, [r0]
	ldr r2, _080197CC @ =gUnk_080B77C0
	ldrh r0, [r2]
	strh r0, [r1]
	ldr r0, _080197D0 @ =gUnk_0200B650
	subs r1, #0xc
	str r1, [r0]
	ldrh r0, [r2, #2]
	strh r0, [r1]
	bx lr
	.align 2, 0
_080197C4: .4byte gUnk_02025EB0
_080197C8: .4byte gBGAffSettings
_080197CC: .4byte gUnk_080B77C0
_080197D0: .4byte gUnk_0200B650

	thumb_func_start sub_080197D4
sub_080197D4: @ 0x080197D4
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0x80
	lsls r5, r5, #0x18
_080197DC:
	ldr r3, [r4, #4]
	cmp r3, #0
	beq _08019824
	ldr r1, [r4]
	ldr r0, _08019808 @ =0x7FFFFFFF
	ands r1, r0
	ldr r0, _0801980C @ =gUnk_08324AE4
	adds r1, r1, r0
	ldr r2, [r4, #8]
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	beq _0801981A
	lsrs r0, r3, #0x18
	cmp r0, #6
	bne _08019810
	adds r0, r1, #0
	adds r1, r3, #0
	bl LZ77UnCompVram
	b _0801982E
	.align 2, 0
_08019808: .4byte 0x7FFFFFFF
_0801980C: .4byte gUnk_08324AE4
_08019810:
	adds r0, r1, #0
	adds r1, r3, #0
	bl LZ77UnCompWram
	b _0801982E
_0801981A:
	adds r0, r1, #0
	adds r1, r3, #0
	bl _DmaCopy
	b _0801982E
_08019824:
	ldrh r0, [r4]
	bl LoadPaletteGroup
	bl sub_080533CC
_0801982E:
	adds r4, #0xc
	adds r0, r4, #0
	subs r0, #0xc
	ldr r0, [r0]
	ands r0, r5
	cmp r0, #0
	bne _080197DC
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08019840
sub_08019840: @ 0x08019840
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0801985C @ =gPlayerState
	adds r2, r0, #0
	adds r2, #0xa8
	ldrb r1, [r2]
	adds r7, r0, #0
	cmp r1, #0
	bne _08019860
	adds r0, #0xa9
	ldrb r0, [r0]
	b _08019862
	.align 2, 0
_0801985C: .4byte gPlayerState
_08019860:
	ldrb r0, [r2]
_08019862:
	cmp r0, #0x12
	bne _0801986A
	bl _0801A2A4
_0801986A:
	cmp r0, #0x12
	bgt _08019878
	cmp r0, #3
	bne _08019876
	bl _0801A2A4
_08019876:
	b _08019880
_08019878:
	cmp r0, #0x16
	bne _08019880
	bl _0801A2A4
_08019880:
	ldrb r0, [r7, #0x1e]
	ldr r1, _08019898 @ =gPlayerEntity
	mov sb, r1
	cmp r0, #0
	bne _08019890
	ldrb r0, [r1, #0xc]
	cmp r0, #0x1d
	bne _0801989C
_08019890:
	mov r2, sb
	ldrb r4, [r2, #0x15]
	b _0801989E
	.align 2, 0
_08019898: .4byte gPlayerEntity
_0801989C:
	ldrb r4, [r7, #0xd]
_0801989E:
	movs r0, #0x83
	ands r0, r4
	cmp r0, #0
	bne _0801997C
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	bne _0801997C
	lsrs r1, r4, #2
	mov r0, sb
	bl sub_0807BDB8
	adds r4, r0, #0
	cmp r4, #0xff
	beq _0801997C
	ldr r5, _08019960 @ =gRoomControls
	ldrb r1, [r5, #0xf]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0801997C
	lsls r1, r4, #2
	ldr r0, _08019964 @ =gUnk_080B4490
	adds r6, r1, r0
	mov r3, sb
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r0, r0, r1
	ldrh r1, [r5, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	mov r1, sb
	movs r2, #0x32
	ldrsh r1, [r1, r2]
	mov r8, r1
	movs r1, #2
	ldrsh r6, [r6, r1]
	mov r2, r8
	adds r1, r2, r6
	ldrh r2, [r5, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	mov r1, sb
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002E0
	cmp r0, #0xff
	bne _0801997C
	ldr r0, [r7, #0x30]
	ldr r1, _08019968 @ =0x00010002
	ands r0, r1
	cmp r0, #0
	bne _0801995A
	ldrb r1, [r7, #0x1b]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0801995A
	mov r3, sb
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	ldrh r1, [r5, #6]
	subs r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r3, r2]
	ldrh r2, [r5, #8]
	subs r1, r1, r2
	adds r2, r4, #0
	movs r3, #5
	bl sub_080806BC
	cmp r0, #0
	bne _0801996C
	ldrb r0, [r7, #5]
	cmp r0, #0
	bne _0801995A
	ldrb r1, [r7, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0801995A
	mov r0, sb
	adds r1, r4, #0
	bl sub_0807BD14
	cmp r0, #0
	bne _0801996C
_0801995A:
	movs r0, #3
	bl _0801A2A6
	.align 2, 0
_08019960: .4byte gRoomControls
_08019964: .4byte gUnk_080B4490
_08019968: .4byte 0x00010002
_0801996C:
	ldr r1, _08019978 @ =gPlayerEntity
	lsls r0, r4, #3
	strb r0, [r1, #0x15]
	movs r0, #0xf
	bl _0801A2A6
	.align 2, 0
_08019978: .4byte gPlayerEntity
_0801997C:
	ldr r4, _080199DC @ =gPlayerEntity
	adds r5, r4, #0
	adds r5, #0x38
	ldrb r0, [r5]
	bl GetLayerByIndex
	mov r8, r0
	ldrb r1, [r4, #0x14]
	movs r0, #6
	ands r0, r1
	lsls r0, r0, #1
	ldr r1, _080199E0 @ =gUnk_080B4468
	adds r6, r0, r1
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r0, r0, r1
	ldr r3, _080199E4 @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r7, r0, #4
	movs r2, #0x3f
	ands r7, r2
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	movs r4, #2
	ldrsh r1, [r6, r4]
	adds r0, r0, r1
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r7, r0
	ldrb r1, [r5]
	adds r0, r7, #0
	bl GetTileType
	adds r6, r0, #0
	ldr r0, _080199E8 @ =0x00003FFF
	cmp r6, r0
	bhi _080199EC
	adds r0, r6, #0
	bl sub_080002E4
	adds r4, r0, #0
	b _080199EE
	.align 2, 0
_080199DC: .4byte gPlayerEntity
_080199E0: .4byte gUnk_080B4468
_080199E4: .4byte gRoomControls
_080199E8: .4byte 0x00003FFF
_080199EC:
	adds r4, r6, #0
_080199EE:
	ldr r5, _08019A28 @ =gPlayerEntity
	ldrb r1, [r5, #0x14]
	adds r3, r1, #0
	ldr r0, _08019A2C @ =0x00004036
	mov sb, r5
	cmp r4, r0
	bne _080199FE
	b _08019F0C
_080199FE:
	cmp r4, r0
	bhi _08019AE0
	cmp r4, #0x71
	bne _08019A08
	b _08019D94
_08019A08:
	cmp r4, #0x71
	bhi _08019A4E
	cmp r4, #0x3a
	bne _08019A12
	b _08019CFC
_08019A12:
	cmp r4, #0x3a
	bhi _08019A30
	cmp r4, #0x1a
	bne _08019A1C
	b _08019D48
_08019A1C:
	cmp r4, #0x28
	bne _08019A22
	b _08019BB8
_08019A22:
	bl _0801A2A4
	.align 2, 0
_08019A28: .4byte gPlayerEntity
_08019A2C: .4byte 0x00004036
_08019A30:
	cmp r4, #0x5b
	bne _08019A36
	b _08019CFC
_08019A36:
	cmp r4, #0x5b
	bhi _08019A44
	cmp r4, #0x3d
	bne _08019A40
	b _08019DD4
_08019A40:
	bl _0801A2A4
_08019A44:
	cmp r4, #0x70
	bne _08019A4A
	b _08019CC0
_08019A4A:
	bl _0801A2A4
_08019A4E:
	ldr r0, _08019A6C @ =0x0000400B
	cmp r4, r0
	bne _08019A56
	b _08019E44
_08019A56:
	cmp r4, r0
	bhi _08019A70
	cmp r4, #0x72
	bne _08019A60
	b _08019FA8
_08019A60:
	subs r0, #0xb
	cmp r4, r0
	bne _08019A68
	b _08019B78
_08019A68:
	bl _0801A2A4
	.align 2, 0
_08019A6C: .4byte 0x0000400B
_08019A70:
	ldr r0, _08019AD4 @ =0x0000401B
	cmp r4, r0
	bne _08019A78
	b _08019C70
_08019A78:
	cmp r4, r0
	bhs _08019A80
	bl _0801A2A4
_08019A80:
	adds r0, #0x12
	cmp r4, r0
	bls _08019A8A
	bl _0801A2A4
_08019A8A:
	subs r0, #2
	cmp r4, r0
	bhs _08019A94
	bl _0801A2A4
_08019A94:
	mov r0, r8
	adds r1, r7, #0
	bl sub_0801A370
	cmp r0, #0
	bne _08019AA4
	bl _0801A2A4
_08019AA4:
	lsls r0, r7, #1
	mov r2, r8
	adds r2, #4
	adds r2, r2, r0
	ldrb r1, [r5, #0x14]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1a
	ldr r3, _08019AD8 @ =0x00004030
	adds r1, r3, #0
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08019ADC @ =gPlayerState
	ldr r1, [r2, #0x30]
	movs r0, #0x80
	ands r1, r0
	adds r7, r2, #0
	mov sb, r5
	cmp r1, #0
	bne _08019AD0
	b _0801A09A
_08019AD0:
	b _0801A094
	.align 2, 0
_08019AD4: .4byte 0x0000401B
_08019AD8: .4byte 0x00004030
_08019ADC: .4byte gPlayerState
_08019AE0:
	ldr r0, _08019B04 @ =0x00004053
	cmp r4, r0
	bne _08019AE8
	b _0801A13C
_08019AE8:
	cmp r4, r0
	bhi _08019B24
	subs r0, #0xb
	cmp r4, r0
	bhi _08019B08
	subs r0, #8
	cmp r4, r0
	blo _08019AFA
	b _08019DD4
_08019AFA:
	subs r0, #2
	cmp r4, r0
	bne _08019B02
	b _08019F50
_08019B02:
	b _0801A2A4
	.align 2, 0
_08019B04: .4byte 0x00004053
_08019B08:
	ldr r0, _08019B20 @ =0x00004051
	cmp r4, r0
	bne _08019B10
	b _08019CFC
_08019B10:
	cmp r4, r0
	bls _08019B16
	b _0801A120
_08019B16:
	subs r0, #7
	cmp r4, r0
	bne _08019B1E
	b _0801A0BC
_08019B1E:
	b _0801A2A4
	.align 2, 0
_08019B20: .4byte 0x00004051
_08019B24:
	ldr r0, _08019B48 @ =0x00004058
	cmp r4, r0
	bne _08019B2C
	b _0801A19A
_08019B2C:
	cmp r4, r0
	bhi _08019B4C
	subs r0, #2
	cmp r4, r0
	bne _08019B38
	b _0801A15A
_08019B38:
	cmp r4, r0
	bls _08019B3E
	b _0801A198
_08019B3E:
	subs r0, #1
	cmp r4, r0
	bne _08019B46
	b _0801A158
_08019B46:
	b _0801A2A4
	.align 2, 0
_08019B48: .4byte 0x00004058
_08019B4C:
	ldr r0, _08019B64 @ =0x0000405F
	cmp r4, r0
	bne _08019B54
	b _0801A1D4
_08019B54:
	cmp r4, r0
	bhi _08019B68
	subs r0, #5
	cmp r4, r0
	bne _08019B60
	b _08019EC8
_08019B60:
	b _0801A2A4
	.align 2, 0
_08019B64: .4byte 0x0000405F
_08019B68:
	ldr r0, _08019B74 @ =0x0000407D
	cmp r4, r0
	bne _08019B70
	b _0801A23C
_08019B70:
	b _0801A2A4
	.align 2, 0
_08019B74: .4byte 0x0000407D
_08019B78:
	mov r0, r8
	adds r1, r7, #0
	movs r2, #2
	bl sub_0801A458
	cmp r0, #0
	bne _08019B88
	b _0801A2A4
_08019B88:
	lsls r0, r7, #1
	mov r1, r8
	adds r1, #4
	adds r1, r1, r0
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	ldr r4, _08019BB0 @ =0x00004001
	adds r0, r0, r4
	strh r0, [r1]
	ldr r2, _08019BB4 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	bne _08019BAA
	b _0801A0F8
_08019BAA:
	movs r0, #0xc0
	b _0801A0FA
	.align 2, 0
_08019BB0: .4byte 0x00004001
_08019BB4: .4byte gPlayerState
_08019BB8:
	ldr r1, _08019C50 @ =gPlayerState
	ldr r0, [r1, #0x30]
	movs r2, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08019BC6
	b _0801A2A4
_08019BC6:
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	beq _08019BCE
	b _0801A2A4
_08019BCE:
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	ldrb r1, [r1, #0xd]
	cmp r0, r1
	beq _08019BDA
	b _0801A2A4
_08019BDA:
	ldrb r1, [r5, #0x15]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08019BE6
	b _0801A2A4
_08019BE6:
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r7, #0
	bl sub_080002E0
	cmp r0, #0xf
	beq _08019BF8
	b _0801A2A4
_08019BF8:
	bl sub_08079778
	cmp r0, #0
	bne _08019C02
	b _0801A2A4
_08019C02:
	ldrb r1, [r5, #0x14]
	movs r0, #6
	ands r0, r1
	lsls r0, r0, #1
	ldr r1, _08019C54 @ =gUnk_080B4478
	adds r6, r0, r1
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r4, _08019C58 @ =gRoomControls
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r0, r0, r1
	movs r3, #0x32
	ldrsh r1, [r5, r3]
	ldrh r2, [r4, #8]
	subs r1, r1, r2
	movs r3, #2
	ldrsh r2, [r6, r3]
	adds r1, r1, r2
	bl sub_08080734
	adds r2, r0, #0
	cmp r2, #0
	bne _08019C38
	b _0801A2A4
_08019C38:
	ldrb r1, [r5, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08019C5C
	ldrh r0, [r2, #4]
	ldrh r4, [r4, #8]
	adds r0, r0, r4
	adds r0, #6
	strh r0, [r5, #0x32]
	b _08019C64
	.align 2, 0
_08019C50: .4byte gPlayerState
_08019C54: .4byte gUnk_080B4478
_08019C58: .4byte gRoomControls
_08019C5C:
	ldrh r0, [r2, #2]
	ldrh r4, [r4, #6]
	adds r0, r0, r4
	strh r0, [r5, #0x2e]
_08019C64:
	movs r0, #4
	movs r1, #0
	movs r2, #1
	bl sub_08078AC0
	b _0801A2A4
_08019C70:
	mov r0, r8
	adds r1, r7, #0
	movs r2, #0xb
	bl sub_0801A2B0
	cmp r0, #0
	bne _08019C80
	b _0801A2A4
_08019C80:
	lsls r0, r7, #1
	mov r1, r8
	adds r1, #4
	adds r1, r1, r0
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	ldr r4, _08019CB8 @ =0x0000401C
	adds r0, r0, r4
	movs r3, #0
	strh r0, [r1]
	ldr r1, _08019CBC @ =gPlayerState
	movs r0, #0xa0
	strb r0, [r1, #6]
	movs r0, #5
	strb r0, [r1, #0xc]
	ldr r0, [r1, #0x30]
	movs r2, #1
	orrs r0, r2
	str r0, [r1, #0x30]
	strh r3, [r5, #0x2c]
	strh r3, [r5, #0x30]
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	strb r0, [r5, #0x15]
	strb r2, [r5, #0xa]
	movs r0, #1
	b _0801A2A6
	.align 2, 0
_08019CB8: .4byte 0x0000401C
_08019CBC: .4byte gPlayerState
_08019CC0:
	ldr r0, _08019CF8 @ =gPlayerState
	adds r2, r0, #0
	adds r2, #0x35
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08019CD2
	b _0801A2A4
_08019CD2:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08019CE2
	b _0801A2A4
_08019CE2:
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_0801A9F0
	cmp r0, #0
	bne _08019CF4
	b _0801A2A4
_08019CF4:
	movs r0, #1
	b _0801A2A6
	.align 2, 0
_08019CF8: .4byte gPlayerState
_08019CFC:
	ldr r2, _08019D40 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08019D0A
	b _0801A2A4
_08019D0A:
	mov r1, sb
	ldrb r0, [r1, #0x14]
	cmp r0, #0
	beq _08019D14
	b _0801A2A4
_08019D14:
	ldr r0, _08019D44 @ =gUnk_0200AF00
	adds r0, #0x2d
	movs r1, #4
	strb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _08019D2C
	b _0801A2A4
_08019D2C:
	movs r0, #1
	strb r0, [r2, #0x1a]
	mov r0, sb
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r7, #0
	bl sub_080A7CFC
	movs r0, #1
	b _0801A2A6
	.align 2, 0
_08019D40: .4byte gPlayerState
_08019D44: .4byte gUnk_0200AF00
_08019D48:
	cmp r3, #0
	beq _08019D4E
	b _0801A2A4
_08019D4E:
	ldr r2, _08019D8C @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #0x81
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08019D5E
	b _0801A2A4
_08019D5E:
	ldr r0, _08019D90 @ =gUnk_0200AF00
	adds r0, #0x2d
	movs r1, #6
	strb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0x88
	ands r0, r1
	cmp r0, #0
	bne _08019D76
	b _0801A2A4
_08019D76:
	movs r0, #1
	strb r0, [r2, #0x1a]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r7, #0
	bl sub_080A7C8C
	movs r0, #2
	b _0801A2A6
	.align 2, 0
_08019D8C: .4byte gPlayerState
_08019D90: .4byte gUnk_0200AF00
_08019D94:
	bl sub_08052734
	cmp r0, #0
	bne _08019D9E
	b _0801A2A4
_08019D9E:
	ldr r0, _08019DCC @ =gUnk_0200AF00
	adds r0, #0x2d
	movs r1, #6
	strb r1, [r0]
	ldr r2, _08019DD0 @ =gPlayerState
	adds r0, r2, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0x88
	ands r0, r1
	cmp r0, #0
	bne _08019DB8
	b _0801A2A4
_08019DB8:
	movs r0, #1
	strb r0, [r2, #0x1a]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r7, #0
	bl sub_0804B388
	movs r0, #2
	b _0801A2A6
	.align 2, 0
_08019DCC: .4byte gUnk_0200AF00
_08019DD0: .4byte gPlayerState
_08019DD4:
	ldr r4, _08019E3C @ =gPlayerState
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08019DE4
	b _0801A2A4
_08019DE4:
	bl sub_08079778
	cmp r0, #0
	bne _08019DEE
	b _0801A2A4
_08019DEE:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08019DF6
	b _0801A2A4
_08019DF6:
	ldr r2, _08019E40 @ =gPlayerEntity
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #2
	ldrb r3, [r4, #0xd]
	cmp r0, r3
	beq _08019E04
	b _0801A2A4
_08019E04:
	ldrb r1, [r2, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08019E10
	b _0801A2A4
_08019E10:
	ldrb r0, [r2, #0xf]
	cmp r0, #5
	bhi _08019E18
	b _0801A2A4
_08019E18:
	movs r0, #0x81
	strb r0, [r4, #2]
	ldr r0, [r4, #0x30]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #0x30]
	movs r0, #0x15
	strb r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r2, #0x20]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	movs r0, #1
	b _0801A2A6
	.align 2, 0
_08019E3C: .4byte gPlayerState
_08019E40: .4byte gPlayerEntity
_08019E44:
	mov r0, r8
	adds r1, r7, #0
	movs r2, #8
	bl sub_0801A2B0
	cmp r0, #0
	bne _08019E54
	b _0801A2A4
_08019E54:
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	lsls r1, r7, #1
	cmp r0, #3
	bne _08019E84
	ldr r0, _08019E7C @ =gUnk_0200B650
	adds r0, #4
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r0, r4
	bne _08019E84
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	ldr r4, _08019E80 @ =0x0000400C
	adds r0, r0, r4
	strh r0, [r2]
	mov sb, r5
	b _08019E98
	.align 2, 0
_08019E7C: .4byte gUnk_0200B650
_08019E80: .4byte 0x0000400C
_08019E84:
	mov r0, r8
	adds r0, #4
	adds r0, r0, r1
	ldr r2, _08019EBC @ =gPlayerEntity
	ldrb r1, [r2, #0x14]
	lsrs r1, r1, #1
	ldr r3, _08019EC0 @ =0x0000400C
	adds r1, r1, r3
	strh r1, [r0]
	mov sb, r2
_08019E98:
	ldr r2, _08019EC4 @ =gPlayerState
	movs r3, #0
	movs r0, #0xa0
	strb r0, [r2, #6]
	movs r0, #5
	strb r0, [r2, #0xc]
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	mov r4, sb
	strh r3, [r4, #0x2c]
	strh r3, [r4, #0x30]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	movs r0, #1
	b _0801A2A6
	.align 2, 0
_08019EBC: .4byte gPlayerEntity
_08019EC0: .4byte 0x0000400C
_08019EC4: .4byte gPlayerState
_08019EC8:
	mov r0, r8
	adds r1, r7, #0
	movs r2, #2
	bl sub_0801A2B0
	cmp r0, #0
	bne _08019ED8
	b _0801A2A4
_08019ED8:
	lsls r0, r7, #1
	mov r1, r8
	adds r1, #4
	adds r1, r1, r0
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	ldr r2, _08019F04 @ =0x0000405B
	adds r0, r0, r2
	movs r3, #0
	strh r0, [r1]
	ldr r2, _08019F08 @ =gPlayerState
	movs r0, #0x98
	strb r0, [r2, #6]
	movs r0, #5
	strb r0, [r2, #0xc]
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	strh r3, [r5, #0x2c]
	strh r3, [r5, #0x30]
	b _0801A228
	.align 2, 0
_08019F04: .4byte 0x0000405B
_08019F08: .4byte gPlayerState
_08019F0C:
	mov r0, r8
	adds r1, r7, #0
	movs r2, #0xb
	bl sub_0801A2B0
	cmp r0, #0
	bne _08019F1C
	b _0801A2A4
_08019F1C:
	lsls r0, r7, #1
	mov r1, r8
	adds r1, #4
	adds r1, r1, r0
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	ldr r3, _08019F48 @ =0x00004037
	adds r0, r0, r3
	movs r3, #0
	strh r0, [r1]
	ldr r2, _08019F4C @ =gPlayerState
	movs r0, #0xa0
	strb r0, [r2, #6]
	movs r0, #5
	strb r0, [r2, #0xc]
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	strh r3, [r5, #0x2c]
	strh r3, [r5, #0x30]
	b _0801A228
	.align 2, 0
_08019F48: .4byte 0x00004037
_08019F4C: .4byte gPlayerState
_08019F50:
	cmp r3, #0
	beq _08019F56
	b _0801A2A4
_08019F56:
	ldr r2, _08019FA0 @ =gPlayerState
	adds r0, r2, #0
	adds r0, #0x35
	ldrb r0, [r0]
	ldrb r1, [r2, #0xd]
	orrs r0, r1
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08019F6C
	b _0801A2A4
_08019F6C:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08019F7C
	b _0801A2A4
_08019F7C:
	lsls r1, r7, #1
	mov r0, r8
	adds r0, #4
	adds r0, r0, r1
	ldr r1, _08019FA4 @ =0x0000403F
	strh r1, [r0]
	movs r0, #0x82
	strb r0, [r2, #6]
	movs r0, #5
	strb r0, [r2, #0xc]
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	strh r3, [r5, #0x2c]
	strh r3, [r5, #0x30]
	b _0801A228
	.align 2, 0
_08019FA0: .4byte gPlayerState
_08019FA4: .4byte 0x0000403F
_08019FA8:
	ldr r0, _0801A07C @ =gPlayerState
	adds r0, #0x35
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08019FB8
	b _0801A2A4
_08019FB8:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08019FC8
	b _0801A2A4
_08019FC8:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0801A570
	adds r7, r0, #0
	ldr r0, _0801A080 @ =0x0000FFFF
	cmp r7, r0
	bne _08019FDA
	b _0801A2A4
_08019FDA:
	lsrs r0, r7, #0xc
	subs r0, #1
	mov r8, r0
	ldr r0, _0801A084 @ =0x00000FFF
	ands r7, r0
	movs r4, #0
	movs r6, #0
	ldr r5, _0801A088 @ =gUnk_03004040
	mov sb, r5
_08019FEC:
	mov r1, sb
	ldr r0, [r1]
	movs r1, #1
	lsls r1, r4
	ldr r0, [r0, #0x6c]
	ands r0, r1
	cmp r0, #0
	beq _0801A00A
	ldr r0, [r5]
	movs r1, #0
	bl sub_0801A570
	cmp r0, r7
	bne _0801A00A
	adds r6, #1
_0801A00A:
	adds r5, #4
	adds r4, #1
	cmp r4, #2
	bls _08019FEC
	cmp r6, r8
	bhs _0801A018
	b _0801A2A4
_0801A018:
	movs r0, #7
	mov r1, r8
	movs r2, #0
	bl CreateObject
	adds r5, r0, #0
	cmp r5, #0
	bne _0801A02A
	b _0801A2A4
_0801A02A:
	ldr r3, _0801A08C @ =gPlayerEntity
	ldrb r0, [r3, #0x14]
	lsls r0, r0, #2
	movs r4, #0
	strb r0, [r5, #0x15]
	movs r1, #0x3f
	adds r0, r7, #0
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #8
	ldr r2, _0801A090 @ =gRoomControls
	ldrh r1, [r2, #6]
	adds r1, r1, r0
	strh r1, [r5, #0x2e]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r7
	lsrs r0, r0, #2
	adds r0, #8
	ldrh r1, [r2, #8]
	adds r1, r1, r0
	strh r1, [r5, #0x32]
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x38
	strb r1, [r0]
	ldr r2, _0801A07C @ =gPlayerState
	movs r0, #0xa0
	strb r0, [r2, #6]
	movs r0, #5
	strb r0, [r2, #0xc]
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	strh r4, [r3, #0x2c]
	strh r4, [r3, #0x30]
	ldrb r0, [r5, #0x15]
	b _0801A0B6
	.align 2, 0
_0801A07C: .4byte gPlayerState
_0801A080: .4byte 0x0000FFFF
_0801A084: .4byte 0x00000FFF
_0801A088: .4byte gUnk_03004040
_0801A08C: .4byte gPlayerEntity
_0801A090: .4byte gRoomControls
_0801A094:
	movs r0, #0xa0
	strb r0, [r2, #6]
	b _0801A09E
_0801A09A:
	movs r0, #0x90
	strb r0, [r7, #6]
_0801A09E:
	movs r2, #0
	movs r0, #5
	strb r0, [r7, #0xc]
	ldr r0, [r7, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x30]
	mov r3, sb
	strh r2, [r3, #0x2c]
	strh r2, [r3, #0x30]
	ldrb r0, [r3, #0x14]
	lsls r0, r0, #2
_0801A0B6:
	strb r0, [r3, #0x15]
	movs r0, #1
	b _0801A2A6
_0801A0BC:
	mov r0, r8
	adds r1, r7, #0
	movs r2, #8
	bl sub_0801A458
	cmp r0, #0
	bne _0801A0CC
	b _0801A2A4
_0801A0CC:
	lsls r0, r7, #1
	mov r1, r8
	adds r1, #4
	adds r1, r1, r0
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	ldr r4, _0801A0F0 @ =0x0000404B
	adds r0, r0, r4
	strh r0, [r1]
	ldr r2, _0801A0F4 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _0801A0F8
	movs r0, #0xc0
	b _0801A0FA
	.align 2, 0
_0801A0F0: .4byte 0x0000404B
_0801A0F4: .4byte gPlayerState
_0801A0F8:
	movs r0, #0xa0
_0801A0FA:
	strb r0, [r7, #6]
	movs r2, #0
	movs r0, #5
	strb r0, [r7, #0xc]
	ldr r0, [r7, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x30]
	ldr r1, _0801A11C @ =gPlayerEntity
	strh r2, [r1, #0x2c]
	strh r2, [r1, #0x30]
	ldrb r0, [r1, #0x14]
	lsls r0, r0, #2
	strb r0, [r1, #0x15]
	movs r0, #1
	b _0801A2A6
	.align 2, 0
_0801A11C: .4byte gPlayerEntity
_0801A120:
	ldr r0, _0801A134 @ =gPlayerState
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801A12C
	b _0801A2A4
_0801A12C:
	ldr r0, _0801A138 @ =0x00004054
	adds r1, r5, #0
	b _0801A28C
	.align 2, 0
_0801A134: .4byte gPlayerState
_0801A138: .4byte 0x00004054
_0801A13C:
	ldr r0, _0801A150 @ =gPlayerState
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #6
	beq _0801A148
	b _0801A2A4
_0801A148:
	ldr r0, _0801A154 @ =0x00004054
	adds r1, r5, #0
	b _0801A28C
	.align 2, 0
_0801A150: .4byte gPlayerState
_0801A154: .4byte 0x00004054
_0801A158:
	subs r7, #1
_0801A15A:
	ldr r0, _0801A190 @ =gPlayerState
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801A166
	b _0801A2A4
_0801A166:
	mov r0, sb
	ldrh r1, [r0, #0x32]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #9
	bgt _0801A174
	b _0801A2A4
_0801A174:
	movs r4, #0
	ldr r5, _0801A194 @ =gUnk_03004040
_0801A178:
	ldr r0, [r5]
	movs r1, #0
	bl sub_0801A8D0
	cmp r0, r7
	bne _0801A186
	b _0801A288
_0801A186:
	adds r5, #4
	adds r4, #1
	cmp r4, #2
	bls _0801A178
	b _0801A2A4
	.align 2, 0
_0801A190: .4byte gPlayerState
_0801A194: .4byte gUnk_03004040
_0801A198:
	subs r7, #0x40
_0801A19A:
	ldr r0, _0801A1CC @ =gPlayerState
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #6
	beq _0801A1A6
	b _0801A2A4
_0801A1A6:
	mov r2, sb
	ldrh r1, [r2, #0x2e]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #9
	ble _0801A2A4
	movs r4, #0
	ldr r5, _0801A1D0 @ =gUnk_03004040
_0801A1B6:
	ldr r0, [r5]
	movs r1, #6
	bl sub_0801A8D0
	cmp r0, r7
	beq _0801A288
	adds r5, #4
	adds r4, #1
	cmp r4, #2
	bls _0801A1B6
	b _0801A2A4
	.align 2, 0
_0801A1CC: .4byte gPlayerState
_0801A1D0: .4byte gUnk_03004040
_0801A1D4:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801A2A4
	ldr r6, _0801A234 @ =gPlayerState
	adds r0, r6, #0
	adds r0, #0x35
	ldrb r0, [r0]
	ldrb r1, [r6, #0xd]
	orrs r0, r1
	movs r1, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _0801A2A4
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r3, #1
	mov r8, r3
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _0801A2A4
	ldr r0, _0801A238 @ =0x00004074
	adds r1, r5, #0
	adds r1, #0x38
	ldrb r2, [r1]
	adds r1, r7, #0
	bl SetTile
	movs r0, #0xa0
	strb r0, [r6, #6]
	movs r0, #5
	strb r0, [r6, #0xc]
	ldr r0, [r6, #0x30]
	mov r1, r8
	orrs r0, r1
	str r0, [r6, #0x30]
	strh r4, [r5, #0x2c]
	strh r4, [r5, #0x30]
_0801A228:
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	strb r0, [r5, #0x15]
	movs r0, #1
	b _0801A2A6
	.align 2, 0
_0801A234: .4byte gPlayerState
_0801A238: .4byte 0x00004074
_0801A23C:
	cmp r3, #4
	bne _0801A2A4
	ldr r1, _0801A280 @ =gPlayerState
	adds r0, r1, #0
	adds r0, #0x35
	ldrb r0, [r0]
	ldrb r1, [r1, #0xd]
	orrs r0, r1
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801A2A4
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801A2A4
	ldr r0, _0801A284 @ =0x00004074
	adds r4, r5, #0
	adds r4, #0x38
	ldrb r2, [r4]
	adds r1, r7, #0
	bl SetTile
	ldrb r2, [r4]
	movs r0, #0xd
	adds r1, r7, #0
	bl sub_080001D0
	movs r0, #1
	b _0801A2A6
	.align 2, 0
_0801A280: .4byte gPlayerState
_0801A284: .4byte 0x00004074
_0801A288:
	ldr r0, _0801A29C @ =0x00004059
	ldr r1, _0801A2A0 @ =gPlayerEntity
_0801A28C:
	adds r1, #0x38
	ldrb r2, [r1]
	adds r1, r7, #0
	bl SetTile
	movs r0, #4
	b _0801A2A6
	.align 2, 0
_0801A29C: .4byte 0x00004059
_0801A2A0: .4byte gPlayerEntity
_0801A2A4:
	movs r0, #0
_0801A2A6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0801A2B0
sub_0801A2B0: @ 0x0801A2B0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r1, _0801A31C @ =gUnk_080B4488
	ldr r2, _0801A320 @ =gPlayerEntity
	ldrb r0, [r2, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	ldr r1, _0801A324 @ =gPlayerState
	adds r0, r1, #0
	adds r0, #0x35
	ldrb r0, [r0]
	ldrb r1, [r1, #0xd]
	orrs r0, r1
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801A36C
	adds r0, r2, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801A36C
	adds r0, r4, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r2, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	bl GetTileType
	bl sub_080002E4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0x52
	beq _0801A36C
	cmp r0, #0x52
	bgt _0801A328
	cmp r0, #0x26
	blt _0801A32C
	cmp r0, #0x27
	ble _0801A36C
	cmp r0, #0x29
	beq _0801A36C
	b _0801A32C
	.align 2, 0
_0801A31C: .4byte gUnk_080B4488
_0801A320: .4byte gPlayerEntity
_0801A324: .4byte gPlayerState
_0801A328:
	cmp r1, #0x74
	beq _0801A36C
_0801A32C:
	ldr r0, _0801A364 @ =0x00002004
	adds r3, r5, r0
	adds r0, r3, r4
	ldrb r0, [r0]
	cmp r0, #0x28
	beq _0801A36C
	movs r1, #0x3f
	ands r1, r4
	ldr r0, _0801A368 @ =gRoomControls
	lsls r1, r1, #4
	ldrh r2, [r0, #6]
	adds r1, r1, r2
	lsrs r2, r4, #6
	lsls r2, r2, #4
	ldrh r0, [r0, #8]
	adds r2, r2, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r3, #0
	adds r3, r6, #0
	bl sub_080AE4CC
	cmp r0, #0
	bne _0801A36C
	movs r0, #1
	b _0801A36E
	.align 2, 0
_0801A364: .4byte 0x00002004
_0801A368: .4byte gRoomControls
_0801A36C:
	movs r0, #0
_0801A36E:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0801A370
sub_0801A370: @ 0x0801A370
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r4, r1, #0
	ldr r5, _0801A3C8 @ =gPlayerEntity
	ldrb r1, [r5, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801A44E
	bl sub_0801A4F8
	cmp r0, #0
	beq _0801A44E
	movs r0, #2
	bl GetLayerByIndex
	adds r7, r0, #0
	ldr r1, _0801A3CC @ =gUnk_080B4488
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r6, [r0, r1]
	adds r4, r4, r6
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	bl GetTileType
	adds r1, r0, #0
	ldr r0, _0801A3D0 @ =0x0000402B
	cmp r1, r0
	beq _0801A3D4
	cmp r1, r0
	blo _0801A3D6
	adds r0, #4
	cmp r1, r0
	bhi _0801A3D6
_0801A3C4:
	movs r0, #1
	b _0801A450
	.align 2, 0
_0801A3C8: .4byte gPlayerEntity
_0801A3CC: .4byte gUnk_080B4488
_0801A3D0: .4byte 0x0000402B
_0801A3D4:
	adds r4, r4, r6
_0801A3D6:
	adds r0, r7, r4
	ldr r1, _0801A40C @ =0x00001F84
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0x46
	beq _0801A44E
	ldr r0, _0801A410 @ =gPlayerEntity
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	bl GetTileType
	bl sub_080002E4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x52
	beq _0801A44E
	cmp r0, #0x52
	bgt _0801A414
	cmp r0, #0x26
	blt _0801A418
	cmp r0, #0x27
	ble _0801A44E
	cmp r0, #0x29
	beq _0801A44E
	b _0801A418
	.align 2, 0
_0801A40C: .4byte 0x00001F84
_0801A410: .4byte gPlayerEntity
_0801A414:
	cmp r0, #0x74
	beq _0801A44E
_0801A418:
	ldr r0, _0801A434 @ =0x00002004
	add r0, r8
	adds r0, r0, r4
	ldrb r0, [r0]
	adds r1, r0, #0
	cmp r0, #0xa
	beq _0801A446
	cmp r0, #0xa
	bgt _0801A438
	cmp r0, #0
	beq _0801A3C4
	cmp r0, #5
	beq _0801A440
	b _0801A44E
	.align 2, 0
_0801A434: .4byte 0x00002004
_0801A438:
	cmp r1, #0x44
	beq _0801A446
	cmp r1, #0x45
	bne _0801A44E
_0801A440:
	cmp r6, #1
	bne _0801A44E
	b _0801A3C4
_0801A446:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	beq _0801A3C4
_0801A44E:
	movs r0, #0
_0801A450:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0801A458
sub_0801A458: @ 0x0801A458
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r5, r1, #0
	mov r8, r2
	ldr r0, _0801A4A4 @ =gUnk_080B4488
	ldr r6, _0801A4A8 @ =gPlayerEntity
	ldrb r1, [r6, #0x14]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	adds r1, r1, r0
	movs r0, #0
	ldrsh r4, [r1, r0]
	bl sub_0801A4F8
	cmp r0, #0
	beq _0801A4F0
	adds r4, r5, r4
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	bl GetTileType
	bl sub_080002E4
	cmp r0, #0x52
	beq _0801A4F0
	cmp r0, #0x52
	bhi _0801A4AC
	cmp r0, #0x26
	blo _0801A4B0
	cmp r0, #0x27
	bls _0801A4F0
	cmp r0, #0x29
	beq _0801A4F0
	b _0801A4B0
	.align 2, 0
_0801A4A4: .4byte gUnk_080B4488
_0801A4A8: .4byte gPlayerEntity
_0801A4AC:
	cmp r0, #0x74
	beq _0801A4F0
_0801A4B0:
	ldr r2, _0801A4E8 @ =0x00002004
	adds r3, r7, r2
	adds r5, r3, r4
	ldrb r0, [r5]
	cmp r0, #0x28
	beq _0801A4F0
	movs r1, #0x3f
	ands r1, r4
	ldr r0, _0801A4EC @ =gRoomControls
	lsls r1, r1, #4
	ldrh r2, [r0, #6]
	adds r1, r1, r2
	lsrs r2, r4, #6
	lsls r2, r2, #4
	ldrh r0, [r0, #8]
	adds r2, r2, r0
	adds r0, r3, #0
	mov r3, r8
	bl sub_080AE4CC
	cmp r0, #0
	bne _0801A4F0
	ldrb r0, [r5]
	subs r0, #1
	cmp r0, #0xe
	bls _0801A4F0
	movs r0, #1
	b _0801A4F2
	.align 2, 0
_0801A4E8: .4byte 0x00002004
_0801A4EC: .4byte gRoomControls
_0801A4F0:
	movs r0, #0
_0801A4F2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0801A4F8
sub_0801A4F8: @ 0x0801A4F8
	push {r4, r5, lr}
	ldr r4, _0801A538 @ =gPlayerState
	ldr r0, [r4, #0x30]
	movs r5, #0x80
	ands r0, r5
	cmp r0, #0
	beq _0801A544
	movs r0, #0x45
	bl GetInventoryValue
	cmp r0, #1
	bne _0801A564
	ldrb r1, [r4, #0xd]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _0801A564
	ldr r2, _0801A53C @ =gPlayerEntity
	ldrb r0, [r2, #0x15]
	cmp r1, r0
	bne _0801A564
	ldrb r0, [r2, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	ldr r1, _0801A540 @ =gUnk_080B44A0
	lsrs r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrh r0, [r2, #0x2a]
	b _0801A55E
	.align 2, 0
_0801A538: .4byte gPlayerState
_0801A53C: .4byte gPlayerEntity
_0801A540: .4byte gUnk_080B44A0
_0801A544:
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r0, [r0]
	ldrb r1, [r4, #0xd]
	orrs r0, r1
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801A564
	ldr r0, _0801A568 @ =gPlayerEntity
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
_0801A55E:
	ands r0, r1
	cmp r0, #0
	bne _0801A56C
_0801A564:
	movs r0, #0
	b _0801A56E
	.align 2, 0
_0801A568: .4byte gPlayerEntity
_0801A56C:
	movs r0, #1
_0801A56E:
	pop {r4, r5, pc}

	thumb_func_start sub_0801A570
sub_0801A570: @ 0x0801A570
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	mov sl, r1
	cmp r6, #0
	bne _0801A58C
	ldr r0, _0801A588 @ =0x0000FFFF
	b _0801A8C2
	.align 2, 0
_0801A588: .4byte 0x0000FFFF
_0801A58C:
	adds r4, r6, #0
	adds r4, #0x38
	ldrb r0, [r4]
	bl GetLayerByIndex
	mov r8, r0
	ldr r0, _0801A668 @ =0x00005004
	add r0, r8
	mov ip, r0
	movs r5, #4
	movs r7, #2
	ldrb r0, [r6, #0x14]
	lsrs r0, r0, #1
	mov sb, r4
	cmp r0, #1
	beq _0801A678
	cmp r0, #1
	ble _0801A5BC
	cmp r0, #2
	bne _0801A5B6
	b _0801A73C
_0801A5B6:
	cmp r0, #3
	bne _0801A5BC
	b _0801A7FC
_0801A5BC:
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	ldr r2, _0801A66C @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r4, r0, #4
	movs r3, #0x3f
	ands r4, r3
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	ldrh r1, [r2, #8]
	adds r1, #0xa
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r4, r0
	mov r2, r8
	adds r2, #4
	movs r3, #0xdc
	lsls r3, r3, #2
	lsls r0, r4, #1
	adds r1, r0, r2
_0801A5EA:
	ldrh r0, [r1]
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	cmp r0, r3
	beq _0801A600
	subs r1, #2
	subs r4, #1
	subs r5, #1
	cmp r5, #0
	bne _0801A5EA
_0801A600:
	subs r4, #0x40
	movs r3, #0xdd
	lsls r3, r3, #2
	lsls r0, r4, #1
	adds r1, r0, r2
_0801A60A:
	ldrh r0, [r1]
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	cmp r0, r3
	bne _0801A620
	adds r7, #1
	subs r1, #0x80
	subs r4, #0x40
	cmp r7, #3
	bls _0801A60A
_0801A620:
	mov r2, sl
	cmp r2, #0
	bne _0801A628
	b _0801A8C0
_0801A628:
	mov r0, sb
	ldrb r1, [r0]
	adds r0, r4, #0
	bl GetTileType
	adds r5, r0, #0
	ldr r1, _0801A670 @ =0xFFFFFC97
	adds r0, r5, r1
	cmp r0, #1
	bls _0801A63E
	b _0801A8B4
_0801A63E:
	ldr r2, _0801A674 @ =0x00001FC4
	adds r0, r4, r2
	mov r2, r8
	adds r1, r2, r0
	movs r5, #0
	cmp r5, r7
	blo _0801A64E
	b _0801A8B6
_0801A64E:
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801A656
	b _0801A8B4
_0801A656:
	adds r5, #1
	cmp r5, r7
	blo _0801A65E
	b _0801A8B6
_0801A65E:
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801A656
	b _0801A8B4
	.align 2, 0
_0801A668: .4byte 0x00005004
_0801A66C: .4byte gRoomControls
_0801A670: .4byte 0xFFFFFC97
_0801A674: .4byte 0x00001FC4
_0801A678:
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	ldr r3, _0801A730 @ =gRoomControls
	ldrh r0, [r3, #6]
	subs r0, #0xa
	subs r1, r1, r0
	asrs r4, r1, #4
	movs r2, #0x3f
	ands r4, r2
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	mov r2, r8
	adds r2, #4
	mov r3, ip
	movs r6, #0xdc
	lsls r6, r6, #2
	lsls r0, r4, #1
	adds r1, r0, r2
_0801A6A8:
	ldrh r0, [r1]
	lsls r0, r0, #1
	adds r0, r3, r0
	ldrh r0, [r0]
	cmp r0, r6
	beq _0801A6BE
	adds r1, #0x80
	adds r4, #0x40
	subs r5, #1
	cmp r5, #0
	bne _0801A6A8
_0801A6BE:
	subs r4, #0x40
	movs r3, #0xdd
	lsls r3, r3, #2
	lsls r0, r4, #1
	adds r1, r0, r2
_0801A6C8:
	ldrh r0, [r1]
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	cmp r0, r3
	bne _0801A6DE
	adds r7, #1
	subs r1, #0x80
	subs r4, #0x40
	cmp r7, #3
	bls _0801A6C8
_0801A6DE:
	mov r2, sl
	cmp r2, #0
	bne _0801A6E6
	b _0801A8C0
_0801A6E6:
	mov r0, sb
	ldrb r1, [r0]
	adds r0, r4, #0
	bl GetTileType
	adds r5, r0, #0
	ldr r0, _0801A734 @ =0x00000369
	cmp r5, r0
	beq _0801A700
	adds r0, #4
	cmp r5, r0
	beq _0801A700
	b _0801A8B4
_0801A700:
	adds r0, r4, r7
	ldr r1, _0801A738 @ =0x00002004
	adds r0, r0, r1
	mov r2, r8
	adds r1, r2, r0
	movs r5, #0
	cmp r5, r7
	blo _0801A712
	b _0801A8B6
_0801A712:
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801A71A
	b _0801A8B4
_0801A71A:
	adds r5, #1
	cmp r5, r7
	blo _0801A722
	b _0801A8B6
_0801A722:
	lsls r0, r5, #6
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801A71A
	b _0801A8B4
	.align 2, 0
_0801A730: .4byte gRoomControls
_0801A734: .4byte 0x00000369
_0801A738: .4byte 0x00002004
_0801A73C:
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	ldr r2, _0801A7E8 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r4, r0, #4
	movs r3, #0x3f
	ands r4, r3
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	ldrh r1, [r2, #8]
	subs r1, #0xa
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r4, r0
	mov r2, r8
	adds r2, #4
	mov r3, ip
	ldr r6, _0801A7EC @ =0x0000036F
	lsls r0, r4, #1
	adds r1, r0, r2
_0801A76A:
	ldrh r0, [r1]
	lsls r0, r0, #1
	adds r0, r3, r0
	ldrh r0, [r0]
	cmp r0, r6
	beq _0801A780
	adds r1, #2
	adds r4, #1
	subs r5, #1
	cmp r5, #0
	bne _0801A76A
_0801A780:
	subs r4, #1
	ldr r3, _0801A7F0 @ =0x00000372
	lsls r0, r4, #1
	adds r1, r0, r2
_0801A788:
	ldrh r0, [r1]
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	cmp r0, r3
	bne _0801A79E
	adds r7, #1
	subs r1, #2
	subs r4, #1
	cmp r7, #3
	bls _0801A788
_0801A79E:
	mov r2, sl
	cmp r2, #0
	bne _0801A7A6
	b _0801A8C0
_0801A7A6:
	mov r0, sb
	ldrb r1, [r0]
	adds r0, r4, #0
	bl GetTileType
	adds r5, r0, #0
	ldr r0, _0801A7F4 @ =0x00000369
	cmp r5, r0
	beq _0801A7BE
	adds r0, #2
	cmp r5, r0
	bne _0801A8B4
_0801A7BE:
	lsls r0, r7, #6
	adds r0, r4, r0
	ldr r1, _0801A7F8 @ =0x00002004
	adds r0, r0, r1
	mov r2, r8
	adds r1, r2, r0
	movs r5, #0
	cmp r5, r7
	bhs _0801A8B6
	ldrb r0, [r1]
	cmp r0, #0
	bne _0801A8B4
_0801A7D6:
	adds r5, #1
	cmp r5, r7
	bhs _0801A8B6
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801A7D6
	b _0801A8B4
	.align 2, 0
_0801A7E8: .4byte gRoomControls
_0801A7EC: .4byte 0x0000036F
_0801A7F0: .4byte 0x00000372
_0801A7F4: .4byte 0x00000369
_0801A7F8: .4byte 0x00002004
_0801A7FC:
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	ldr r3, _0801A890 @ =gRoomControls
	ldrh r0, [r3, #6]
	adds r0, #0xa
	subs r1, r1, r0
	asrs r4, r1, #4
	movs r2, #0x3f
	ands r4, r2
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	mov r2, r8
	adds r2, #4
	mov r3, ip
	ldr r6, _0801A894 @ =0x0000036F
	lsls r0, r4, #1
	adds r1, r0, r2
_0801A82A:
	ldrh r0, [r1]
	lsls r0, r0, #1
	adds r0, r3, r0
	ldrh r0, [r0]
	cmp r0, r6
	beq _0801A840
	subs r1, #0x80
	subs r4, #0x40
	subs r5, #1
	cmp r5, #0
	bne _0801A82A
_0801A840:
	subs r4, #1
	ldr r3, _0801A898 @ =0x00000372
	lsls r0, r4, #1
	adds r1, r0, r2
_0801A848:
	ldrh r0, [r1]
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	cmp r0, r3
	bne _0801A85E
	adds r7, #1
	subs r1, #2
	subs r4, #1
	cmp r7, #3
	bls _0801A848
_0801A85E:
	mov r2, sl
	cmp r2, #0
	beq _0801A8C0
	mov r0, sb
	ldrb r1, [r0]
	adds r0, r4, #0
	bl GetTileType
	adds r5, r0, #0
	ldr r0, _0801A89C @ =0x00000369
	cmp r5, r0
	beq _0801A87C
	adds r0, #3
	cmp r5, r0
	bne _0801A8B4
_0801A87C:
	ldr r1, _0801A8A0 @ =0x00002003
	adds r0, r4, r1
	mov r2, r8
	adds r1, r2, r0
	movs r5, #0
	cmp r5, r7
	bhs _0801A8B6
	ldrb r0, [r1]
	b _0801A8B0
	.align 2, 0
_0801A890: .4byte gRoomControls
_0801A894: .4byte 0x0000036F
_0801A898: .4byte 0x00000372
_0801A89C: .4byte 0x00000369
_0801A8A0: .4byte 0x00002003
_0801A8A4:
	adds r5, #1
	cmp r5, r7
	bhs _0801A8B6
	lsls r0, r5, #6
	adds r0, r0, r1
	ldrb r0, [r0]
_0801A8B0:
	cmp r0, #0
	beq _0801A8A4
_0801A8B4:
	ldr r4, _0801A8CC @ =0x0000FFFF
_0801A8B6:
	mov r0, sl
	cmp r0, #0
	beq _0801A8C0
	lsls r0, r7, #0xc
	orrs r4, r0
_0801A8C0:
	adds r0, r4, #0
_0801A8C2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801A8CC: .4byte 0x0000FFFF

	thumb_func_start sub_0801A8D0
sub_0801A8D0: @ 0x0801A8D0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	cmp r5, #0
	beq _0801A978
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	bl GetLayerByIndex
	adds r6, r0, #4
	cmp r4, #0
	bne _0801A92C
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r2, _0801A91C @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r4, r0, #4
	movs r3, #0x3f
	ands r4, r3
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	ldrh r1, [r2, #8]
	adds r1, #8
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r4, r0
	lsls r0, r4, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	ldr r0, _0801A920 @ =0x00004055
	cmp r1, r0
	bne _0801A924
	subs r0, r4, #1
	b _0801A97A
	.align 2, 0
_0801A91C: .4byte gRoomControls
_0801A920: .4byte 0x00004055
_0801A924:
	ldr r0, _0801A928 @ =0x00004056
	b _0801A96A
	.align 2, 0
_0801A928: .4byte 0x00004056
_0801A92C:
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	ldr r3, _0801A960 @ =gRoomControls
	ldrh r0, [r3, #6]
	adds r0, #8
	subs r1, r1, r0
	asrs r4, r1, #4
	movs r2, #0x3f
	ands r4, r2
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	lsls r0, r4, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	ldr r0, _0801A964 @ =0x00004057
	cmp r1, r0
	bne _0801A968
	adds r0, r4, #0
	subs r0, #0x40
	b _0801A97A
	.align 2, 0
_0801A960: .4byte gRoomControls
_0801A964: .4byte 0x00004057
_0801A968:
	ldr r0, _0801A974 @ =0x00004058
_0801A96A:
	cmp r1, r0
	bne _0801A978
	adds r0, r4, #0
	b _0801A97A
	.align 2, 0
_0801A974: .4byte 0x00004058
_0801A978:
	ldr r0, _0801A97C @ =0x0000FFFF
_0801A97A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801A97C: .4byte 0x0000FFFF

	thumb_func_start sub_0801A980
sub_0801A980: @ 0x0801A980
	push {r4, r5, r6, r7, lr}
	ldr r4, _0801A9E0 @ =gPlayerEntity
	adds r6, r4, #0
	adds r6, #0x38
	ldrb r0, [r6]
	bl GetLayerByIndex
	ldrb r0, [r4, #0x14]
	movs r2, #6
	ands r2, r0
	lsls r2, r2, #1
	ldr r0, _0801A9E4 @ =gUnk_080B44A8
	adds r2, r2, r0
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r5, _0801A9E8 @ =gRoomControls
	ldrh r1, [r5, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r7, #0x32
	ldrsh r1, [r4, r7]
	movs r4, #2
	ldrsh r2, [r2, r4]
	adds r1, r1, r2
	ldrh r2, [r5, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	ldrb r1, [r6]
	bl GetTileType
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _0801A9EC @ =0x00003FFF
	cmp r1, r0
	bhi _0801A9DC
	adds r0, r1, #0
	bl sub_080002E4
_0801A9DC:
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801A9E0: .4byte gPlayerEntity
_0801A9E4: .4byte gUnk_080B44A8
_0801A9E8: .4byte gRoomControls
_0801A9EC: .4byte 0x00003FFF

	thumb_func_start sub_0801A9F0
sub_0801A9F0: @ 0x0801A9F0
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r2, #0
	movs r2, #0
	ldr r5, _0801AA0C @ =0xFFFFFCA0
	adds r0, r1, r5
	cmp r0, #4
	bhi _0801AA40
	lsls r0, r0, #2
	ldr r1, _0801AA10 @ =_0801AA14
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801AA0C: .4byte 0xFFFFFCA0
_0801AA10: .4byte _0801AA14
_0801AA14: @ jump table
	.4byte _0801AA44 @ case 0
	.4byte _0801AA28 @ case 1
	.4byte _0801AA34 @ case 2
	.4byte _0801AA3A @ case 3
	.4byte _0801AA2E @ case 4
_0801AA28:
	cmp r3, #0
	bne _0801AA40
	b _0801AA44
_0801AA2E:
	cmp r3, #8
	bne _0801AA40
	b _0801AA44
_0801AA34:
	cmp r3, #0x10
	bne _0801AA40
	b _0801AA44
_0801AA3A:
	cmp r3, #0x18
	bne _0801AA40
	movs r2, #1
_0801AA40:
	cmp r2, #0
	beq _0801AA54
_0801AA44:
	ldr r0, _0801AA50 @ =gPlayerEntity
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_0801AA58
	b _0801AA56
	.align 2, 0
_0801AA50: .4byte gPlayerEntity
_0801AA54:
	movs r0, #0
_0801AA56:
	pop {r4, r5, pc}

	thumb_func_start sub_0801AA58
sub_0801AA58: @ 0x0801AA58
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	movs r0, #0x38
	adds r0, r0, r6
	mov r8, r0
	ldrb r0, [r0]
	bl GetLayerByIndex
	ldr r2, _0801AAF0 @ =gUnk_080B4488
	lsrs r1, r7, #3
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r1, r5, r1
	ldr r2, _0801AAF4 @ =0x00002004
	adds r0, r0, r2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801AA94
	subs r0, #0x20
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1f
	bhi _0801AB00
_0801AA94:
	movs r0, #7
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0801AB00
	movs r3, #0
	strb r7, [r4, #0x15]
	movs r1, #0x3f
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #8
	ldr r2, _0801AAF8 @ =gRoomControls
	ldrh r1, [r2, #6]
	adds r1, r1, r0
	strh r1, [r4, #0x2e]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r5
	lsrs r0, r0, #2
	adds r0, #8
	ldrh r1, [r2, #8]
	adds r1, r1, r0
	strh r1, [r4, #0x32]
	mov r0, r8
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	ldr r2, _0801AAFC @ =gPlayerState
	movs r0, #0xa0
	strb r0, [r2, #6]
	movs r0, #5
	strb r0, [r2, #0xc]
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	strh r3, [r6, #0x2c]
	strh r3, [r6, #0x30]
	strb r7, [r6, #0x15]
	movs r0, #1
	b _0801AB02
	.align 2, 0
_0801AAF0: .4byte gUnk_080B4488
_0801AAF4: .4byte 0x00002004
_0801AAF8: .4byte gRoomControls
_0801AAFC: .4byte gPlayerState
_0801AB00:
	movs r0, #0
_0801AB02:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0801AB08
sub_0801AB08: @ 0x0801AB08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	mov r8, r1
	ldr r0, _0801AB4C @ =gUnk_02025EB0
	movs r1, #2
	cmp r8, r0
	bne _0801AB22
	movs r1, #1
_0801AB22:
	lsls r2, r1, #0xc
	ldr r7, _0801AB50 @ =0x00003004
	add r7, r8
	mov r6, r8
	adds r6, #4
	movs r0, #0
	ldr r1, _0801AB54 @ =0x00003FFF
	mov sb, r1
_0801AB32:
	movs r3, #0
	mov sl, r3
	adds r0, #1
	str r0, [sp]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r5, r0
_0801AB40:
	ldrh r0, [r6]
	cmp r0, sb
	bhi _0801AB58
	lsls r0, r0, #2
	b _0801AB64
	.align 2, 0
_0801AB4C: .4byte gUnk_02025EB0
_0801AB50: .4byte 0x00003004
_0801AB54: .4byte 0x00003FFF
_0801AB58:
	ldrh r1, [r7]
	adds r0, r2, #0
	str r2, [sp, #4]
	bl sub_0801AC68
	ldr r2, [sp, #4]
_0801AB64:
	lsls r0, r0, #1
	ldr r1, _0801AB8C @ =0x00007004
	adds r0, r0, r1
	mov r3, r8
	adds r1, r3, r0
	ldrh r0, [r1]
	strh r0, [r5]
	ldrh r0, [r1, #2]
	strh r0, [r5, #2]
	ldrh r0, [r1, #4]
	strh r0, [r4]
	ldrh r0, [r1, #6]
	strh r0, [r4, #2]
	adds r4, #4
	adds r5, #4
	ldrh r0, [r6, #2]
	cmp r0, sb
	bhi _0801AB90
	lsls r0, r0, #2
	b _0801AB9C
	.align 2, 0
_0801AB8C: .4byte 0x00007004
_0801AB90:
	adds r0, r2, #1
	ldrh r1, [r7, #2]
	str r2, [sp, #4]
	bl sub_0801AC68
	ldr r2, [sp, #4]
_0801AB9C:
	lsls r0, r0, #1
	ldr r1, _0801ABC4 @ =0x00007004
	adds r0, r0, r1
	mov r3, r8
	adds r1, r3, r0
	ldrh r0, [r1]
	strh r0, [r5]
	ldrh r0, [r1, #2]
	strh r0, [r5, #2]
	ldrh r0, [r1, #4]
	strh r0, [r4]
	ldrh r0, [r1, #6]
	strh r0, [r4, #2]
	adds r4, #4
	adds r5, #4
	ldrh r0, [r6, #4]
	cmp r0, sb
	bhi _0801ABC8
	lsls r0, r0, #2
	b _0801ABD4
	.align 2, 0
_0801ABC4: .4byte 0x00007004
_0801ABC8:
	adds r0, r2, #2
	ldrh r1, [r7, #4]
	str r2, [sp, #4]
	bl sub_0801AC68
	ldr r2, [sp, #4]
_0801ABD4:
	lsls r0, r0, #1
	ldr r1, _0801ABFC @ =0x00007004
	adds r0, r0, r1
	mov r3, r8
	adds r1, r3, r0
	ldrh r0, [r1]
	strh r0, [r5]
	ldrh r0, [r1, #2]
	strh r0, [r5, #2]
	ldrh r0, [r1, #4]
	strh r0, [r4]
	ldrh r0, [r1, #6]
	strh r0, [r4, #2]
	adds r4, #4
	adds r5, #4
	ldrh r0, [r6, #6]
	cmp r0, sb
	bhi _0801AC00
	lsls r0, r0, #2
	b _0801AC0C
	.align 2, 0
_0801ABFC: .4byte 0x00007004
_0801AC00:
	adds r0, r2, #3
	ldrh r1, [r7, #6]
	str r2, [sp, #4]
	bl sub_0801AC68
	ldr r2, [sp, #4]
_0801AC0C:
	lsls r0, r0, #1
	ldr r1, _0801AC64 @ =0x00007004
	adds r0, r0, r1
	mov r3, r8
	adds r1, r3, r0
	ldrh r0, [r1]
	strh r0, [r5]
	ldrh r0, [r1, #2]
	strh r0, [r5, #2]
	ldrh r0, [r1, #4]
	strh r0, [r4]
	ldrh r0, [r1, #6]
	strh r0, [r4, #2]
	adds r4, #4
	adds r5, #4
	adds r6, #8
	adds r7, #8
	adds r0, r2, #4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #0xf
	bhi _0801AC44
	b _0801AB40
_0801AC44:
	movs r0, #0x80
	lsls r0, r0, #1
	adds r5, r5, r0
	ldr r1, [sp]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3f
	bhi _0801AC56
	b _0801AB32
_0801AC56:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801AC64: .4byte 0x00007004

	thumb_func_start sub_0801AC68
sub_0801AC68: @ 0x0801AC68
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _0801AC84 @ =gUnk_0200B240
	ldr r0, _0801AC88 @ =gRoomVars
	ldrh r3, [r0, #0xe]
	movs r0, #0
	cmp r0, r3
	bhs _0801AC94
_0801AC78:
	ldrh r5, [r2]
	cmp r4, r5
	bne _0801AC8C
	ldrh r0, [r2, #2]
	lsls r0, r0, #2
	b _0801AC96
	.align 2, 0
_0801AC84: .4byte gUnk_0200B240
_0801AC88: .4byte gRoomVars
_0801AC8C:
	adds r2, #4
	adds r0, #1
	cmp r0, r3
	blo _0801AC78
_0801AC94:
	lsls r0, r1, #2
_0801AC96:
	pop {r4, r5, pc}

	thumb_func_start sub_0801AC98
sub_0801AC98: @ 0x0801AC98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _0801ACD0 @ =gRoomControls
	ldrh r1, [r0, #0x1e]
	lsrs r1, r1, #4
	mov r8, r1
	ldrh r0, [r0, #0x20]
	lsrs r0, r0, #4
	str r0, [sp]
	movs r6, #0
	movs r1, #0
	cmp r1, r0
	bhs _0801AD5C
_0801ACBA:
	movs r0, #0
	adds r1, #1
	str r1, [sp, #4]
	cmp r0, r8
	bhs _0801AD4C
_0801ACC4:
	ldr r5, _0801ACD4 @ =gUnk_080B44C0
	adds r0, #1
	mov sl, r0
	adds r0, r6, #1
	mov sb, r0
	b _0801ACDA
	.align 2, 0
_0801ACD0: .4byte gRoomControls
_0801ACD4: .4byte gUnk_080B44C0
_0801ACD8:
	adds r5, #0xc
_0801ACDA:
	ldrh r0, [r5]
	ldr r1, _0801AD0C @ =0x0000FFFF
	cmp r0, r1
	beq _0801AD06
	adds r4, r0, #0
	adds r0, r6, #0
	movs r1, #1
	bl GetTileType
	cmp r4, r0
	bne _0801ACD8
	ldrh r0, [r5, #0xa]
	lsls r0, r0, #2
	ldr r1, _0801AD10 @ =gUnk_080B44B8
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0801ACD8
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0801AD6C
_0801AD06:
	ldr r5, _0801AD14 @ =gUnk_080B44C2
	ldr r7, _0801AD0C @ =0x0000FFFF
	b _0801AD1A
	.align 2, 0
_0801AD0C: .4byte 0x0000FFFF
_0801AD10: .4byte gUnk_080B44B8
_0801AD14: .4byte gUnk_080B44C2
_0801AD18:
	adds r5, #0xc
_0801AD1A:
	ldrh r0, [r5]
	cmp r0, r7
	beq _0801AD44
	adds r4, r0, #0
	adds r0, r6, #0
	movs r1, #2
	bl GetTileType
	cmp r4, r0
	bne _0801AD18
	ldrh r0, [r5, #0xa]
	lsls r0, r0, #2
	ldr r1, _0801AD68 @ =gUnk_080B44B8
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0801AD18
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0801AD6C
_0801AD44:
	mov r0, sl
	mov r6, sb
	cmp r0, r8
	blo _0801ACC4
_0801AD4C:
	adds r0, r6, #0
	adds r0, #0x40
	mov r1, r8
	subs r6, r0, r1
	ldr r1, [sp, #4]
	ldr r0, [sp]
	cmp r1, r0
	blo _0801ACBA
_0801AD5C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801AD68: .4byte gUnk_080B44B8

	thumb_func_start sub_0801AD6C
sub_0801AD6C: @ 0x0801AD6C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldrh r0, [r4, #2]
	cmp r0, #9
	beq _0801ADDC
	bl GetEmptyEntity
	adds r5, r0, #0
	cmp r5, #0
	beq _0801AE26
	ldrh r0, [r4, #2]
	strb r0, [r5, #8]
	ldrh r0, [r4, #4]
	strb r0, [r5, #9]
	ldrh r0, [r4, #6]
	strb r0, [r5, #0xa]
	ldrh r0, [r4, #8]
	strb r0, [r5, #0xb]
	movs r1, #0x3f
	adds r0, r6, #0
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #8
	ldr r2, _0801ADD4 @ =gRoomControls
	ldrh r1, [r2, #6]
	adds r1, r1, r0
	movs r3, #0
	strh r1, [r5, #0x2e]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r6
	lsrs r0, r0, #2
	adds r0, #8
	ldrh r1, [r2, #8]
	adds r1, r1, r0
	strh r1, [r5, #0x32]
	adds r0, r5, #0
	adds r0, #0x38
	strb r3, [r0]
	adds r0, r5, #0
	bl sub_08016A30
	ldr r1, _0801ADD8 @ =gUnk_081091E4
	ldrb r0, [r5, #8]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	bl AppendEntityToList
	b _0801AE26
	.align 2, 0
_0801ADD4: .4byte gRoomControls
_0801ADD8: .4byte gUnk_081091E4
_0801ADDC:
	bl GetEmptyManager
	adds r3, r0, #0
	cmp r3, #0
	beq _0801AE26
	ldrh r0, [r4, #2]
	strb r0, [r3, #8]
	ldrh r0, [r4, #4]
	strb r0, [r3, #9]
	ldrh r0, [r4, #6]
	strb r0, [r3, #0xa]
	ldrh r0, [r4, #8]
	strb r0, [r3, #0xb]
	movs r1, #0x3f
	adds r0, r6, #0
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #8
	ldr r2, _0801AE28 @ =gRoomControls
	ldrh r1, [r2, #6]
	adds r1, r1, r0
	strh r1, [r3, #0x38]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r6
	lsrs r0, r0, #2
	adds r0, #8
	ldrh r1, [r2, #8]
	adds r1, r1, r0
	strh r1, [r3, #0x3a]
	ldr r1, _0801AE2C @ =gUnk_081091E4
	ldrb r0, [r3, #8]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r3, #0
	bl AppendEntityToList
_0801AE26:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801AE28: .4byte gRoomControls
_0801AE2C: .4byte gUnk_081091E4

	thumb_func_start sub_0801AE30
sub_0801AE30: @ 0x0801AE30
	movs r0, #1
	bx lr

	thumb_func_start sub_0801AE34
sub_0801AE34: @ 0x0801AE34
	ldr r0, _0801AE40 @ =gRoomControls
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_0801AE40: .4byte gRoomControls

	thumb_func_start sub_0801AE44
sub_0801AE44: @ 0x0801AE44
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0801AEE0 @ =gRoomControls
	movs r0, #0
	str r0, [r1, #0x34]
	bl sub_0807BFD0
	cmp r4, #0
	beq _0801AE5A
	bl sub_0807C0DC
_0801AE5A:
	bl sub_080809D4
	bl sub_080805F8
	ldr r0, _0801AEE4 @ =gScreenTransition
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801AE70
	bl sub_0807C898
_0801AE70:
	ldr r4, _0801AEE8 @ =gArea
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0801AE8C
	ldr r1, _0801AEEC @ =0x0600F000
	movs r2, #0x80
	lsls r2, r2, #4
	movs r0, #0xf
	bl _DmaFill16
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_0805BB74
_0801AE8C:
	movs r0, #5
	bl GetCurrentRoomProperty
	cmp r0, #0
	beq _0801AE9A
	bl _call_via_r0
_0801AE9A:
	ldr r0, _0801AEF0 @ =gUnk_03004030
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _0801AEB6
	ldr r1, _0801AEF4 @ =0x0000088C
	adds r0, r4, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0801AEB6
	ldr r2, _0801AEF8 @ =0x00000888
	adds r0, r4, r2
	ldr r0, [r0]
	bl _call_via_r1
_0801AEB6:
	ldr r0, _0801AEE0 @ =gRoomControls
	ldrb r1, [r0, #0xf]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801AF0C
	ldr r1, _0801AEFC @ =gUnk_02025EB0
	ldr r0, [r1]
	cmp r0, #0
	beq _0801AED0
	ldr r0, _0801AF00 @ =gUnk_02019EE0
	bl sub_0801AB08
_0801AED0:
	ldr r1, _0801AF04 @ =gUnk_0200B650
	ldr r0, [r1]
	cmp r0, #0
	beq _0801AF10
	ldr r0, _0801AF08 @ =gMapDataTopSpecial
	bl sub_0801AB08
	b _0801AF10
	.align 2, 0
_0801AEE0: .4byte gRoomControls
_0801AEE4: .4byte gScreenTransition
_0801AEE8: .4byte gArea
_0801AEEC: .4byte 0x0600F000
_0801AEF0: .4byte gUnk_03004030
_0801AEF4: .4byte 0x0000088C
_0801AEF8: .4byte 0x00000888
_0801AEFC: .4byte gUnk_02025EB0
_0801AF00: .4byte gUnk_02019EE0
_0801AF04: .4byte gUnk_0200B650
_0801AF08: .4byte gMapDataTopSpecial
_0801AF0C:
	bl sub_0807C4F8
_0801AF10:
	bl sub_08000108
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801AF18
sub_0801AF18: @ 0x0801AF18
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0801AF46
	adds r7, r1, #0
_0801AF2E:
	ldrh r0, [r4]
	movs r2, #2
	ldrsh r1, [r4, r2]
	adds r1, r6, r1
	adds r2, r5, #0
	bl SetTile
	adds r4, #4
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, r7
	bne _0801AF2E
_0801AF46:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0801AF48
sub_0801AF48: @ 0x0801AF48
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, _0801AF7C @ =0x00003FFF
	cmp r4, r0
	bhi _0801AF7A
	ldr r0, _0801AF80 @ =gScreenTransition
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801AF7A
	ldr r2, _0801AF84 @ =gRoomVars
	ldrh r3, [r2, #0xe]
	cmp r3, #0xff
	bhi _0801AF7A
	ldr r0, _0801AF88 @ =gUnk_0200B240
	lsls r1, r3, #2
	adds r1, r1, r0
	strh r4, [r1, #2]
	lsls r0, r5, #0xc
	orrs r0, r6
	strh r0, [r1]
	adds r0, r3, #1
	strh r0, [r2, #0xe]
_0801AF7A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801AF7C: .4byte 0x00003FFF
_0801AF80: .4byte gScreenTransition
_0801AF84: .4byte gRoomVars
_0801AF88: .4byte gUnk_0200B240

	thumb_func_start DeleteLoadedTileEntity
DeleteLoadedTileEntity: @ 0x0801AF8C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r1, r1, #0xc
	orrs r4, r1
	ldr r2, _0801AFB8 @ =gUnk_0200B240
	ldr r0, _0801AFBC @ =gRoomVars
	ldrh r1, [r0, #0xe]
	movs r3, #0
	adds r5, r2, #0
	cmp r3, r1
	bhs _0801AFE0
	ldrh r6, [r2]
	cmp r4, r6
	bne _0801AFC0
	subs r1, #1
	strh r1, [r0, #0xe]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r2]
	b _0801AFE0
	.align 2, 0
_0801AFB8: .4byte gUnk_0200B240
_0801AFBC: .4byte gRoomVars
_0801AFC0:
	adds r2, #4
	adds r3, #1
	cmp r3, r1
	bhs _0801AFE0
	ldrh r6, [r2]
	cmp r4, r6
	bne _0801AFC0
	subs r1, #1
	strh r1, [r0, #0xe]
	adds r2, r5, #0
	lsls r0, r3, #2
	adds r0, r0, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	str r1, [r0]
_0801AFE0:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0801AFE4
sub_0801AFE4: @ 0x0801AFE4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _0801B018 @ =gUnk_02027EB4
	ldr r0, _0801B01C @ =gRoomControls
	ldrh r1, [r0, #0x1e]
	lsrs r1, r1, #4
	mov sl, r1
	ldrh r0, [r0, #0x20]
	lsrs r0, r0, #4
	mov sb, r0
	movs r7, #0
	cmp r7, sb
	bhs _0801B054
_0801B004:
	movs r2, #0
	adds r0, r7, #1
	mov r8, r0
	cmp r2, sl
	bhs _0801B046
_0801B00E:
	ldr r1, _0801B020 @ =gUnk_080B44D0
	adds r4, r3, #1
	adds r5, r2, #1
	b _0801B026
	.align 2, 0
_0801B018: .4byte gUnk_02027EB4
_0801B01C: .4byte gRoomControls
_0801B020: .4byte gUnk_080B44D0
_0801B024:
	adds r1, #4
_0801B026:
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801B03E
	ldrb r6, [r3]
	cmp r0, r6
	bne _0801B024
	ldrh r0, [r1, #2]
	lsls r1, r7, #6
	adds r1, r1, r2
	movs r2, #1
	bl SetTile
_0801B03E:
	adds r3, r4, #0
	adds r2, r5, #0
	cmp r2, sl
	blo _0801B00E
_0801B046:
	adds r0, r3, #0
	adds r0, #0x40
	mov r1, sl
	subs r3, r0, r1
	mov r7, r8
	cmp r7, sb
	blo _0801B004
_0801B054:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0801B060
sub_0801B060: @ 0x0801B060
	push {r4, r5, lr}
	movs r3, #0
	ldr r4, _0801B0B0 @ =gUnk_02000CC0
	movs r5, #8
_0801B068:
	ldr r2, [r4]
	cmp r2, #0
	beq _0801B0C2
	ldrh r1, [r4, #6]
	subs r0, r1, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801B0BA
	cmp r3, #0
	bne _0801B0B8
	ldr r0, _0801B0B4 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801B08C
	ldr r0, [r2]
	bl sub_0801B0EC
_0801B08C:
	ldr r0, [r4]
	adds r0, #4
	bl sub_0801B0C4
	strh r0, [r4, #6]
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #8
	str r1, [r4]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _0801B0AC
	ldr r0, [r1, #4]
	lsls r0, r0, #3
	subs r0, r1, r0
	str r0, [r4]
_0801B0AC:
	movs r3, #1
	b _0801B0BA
	.align 2, 0
_0801B0B0: .4byte gUnk_02000CC0
_0801B0B4: .4byte gFadeControl
_0801B0B8:
	strh r1, [r4, #6]
_0801B0BA:
	adds r4, #8
	subs r5, #1
	cmp r5, #0
	bne _0801B068
_0801B0C2:
	pop {r4, r5, pc}

	thumb_func_start sub_0801B0C4
sub_0801B0C4: @ 0x0801B0C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	bge _0801B0E6
	bl Random
	ldr r1, _0801B0E8 @ =gUnk_080B4550
	ldrb r2, [r4]
	lsls r2, r2, #2
	adds r2, r2, r1
	movs r1, #7
	ands r1, r0
	ldr r0, [r2]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
_0801B0E6:
	pop {r4, pc}
	.align 2, 0
_0801B0E8: .4byte gUnk_080B4550

	thumb_func_start sub_0801B0EC
sub_0801B0EC: @ 0x0801B0EC
	push {r4, r5, lr}
	adds r4, r0, #0
_0801B0F0:
	ldr r1, [r4, #4]
	ldr r0, _0801B110 @ =gGlobalGfxAndPalettes
	adds r5, r1, r0
	ldrb r2, [r4, #2]
	ldrh r3, [r4]
	ldr r0, [r4]
	lsrs r0, r0, #0x1c
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801B114
	lsrs r1, r3, #5
	adds r0, r5, #0
	bl LoadPalettes
	b _0801B122
	.align 2, 0
_0801B110: .4byte gGlobalGfxAndPalettes
_0801B114:
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r3, r0
	lsls r2, r2, #5
	adds r0, r5, #0
	bl _DmaCopy
_0801B122:
	ldr r0, [r4]
	cmp r0, #0
	bge _0801B12C
	adds r4, #8
	b _0801B0F0
_0801B12C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0801B130
sub_0801B130: @ 0x0801B130
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_0801B170
	ldr r5, _0801B164 @ =gUnk_02000CC0
	ldrh r0, [r4]
	ldr r1, _0801B168 @ =0x0000FFFF
	cmp r0, r1
	beq _0801B162
	ldr r7, _0801B16C @ =gUnk_080B7278
	adds r6, r1, #0
_0801B146:
	ldrh r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [r5]
	adds r0, #4
	bl sub_0801B0C4
	strh r0, [r5, #6]
	adds r5, #8
	adds r4, #2
	ldrh r0, [r4]
	cmp r0, r6
	bne _0801B146
_0801B162:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801B164: .4byte gUnk_02000CC0
_0801B168: .4byte 0x0000FFFF
_0801B16C: .4byte gUnk_080B7278

	thumb_func_start sub_0801B170
sub_0801B170: @ 0x0801B170
	push {lr}
	movs r1, #0
	movs r2, #0
	ldr r0, _0801B184 @ =gUnk_02000CC0
_0801B178:
	str r2, [r0]
	adds r0, #8
	adds r1, #1
	cmp r1, #7
	bls _0801B178
	pop {pc}
	.align 2, 0
_0801B184: .4byte gUnk_02000CC0

	thumb_func_start sub_0801B188
sub_0801B188: @ 0x0801B188
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0801B1E0 @ =gUnk_080B77C8
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl GetNextFrame
	ldrb r2, [r4, #0xc]
	cmp r2, #3
	beq _0801B24E
	ldrb r1, [r4, #0xe]
	cmp r1, #0
	beq _0801B1E4
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #7
	bne _0801B1BC
	subs r0, r1, #1
	strb r0, [r4, #0xe]
_0801B1BC:
	ldrb r1, [r4, #0xe]
	cmp r1, #0
	bne _0801B24E
	movs r0, #0x50
	strb r0, [r4, #0xf]
	str r1, [r4, #0x68]
	ldrb r0, [r4, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x19]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
	b _0801B24E
	.align 2, 0
_0801B1E0: .4byte gUnk_080B77C8
_0801B1E4:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0801B24E
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0801B248
	cmp r2, #2
	bne _0801B204
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bne _0801B204
	ldr r0, _0801B244 @ =gPlayerState
	strb r1, [r0, #5]
_0801B204:
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x3c
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xf
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0x13
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0805EC60
	adds r0, r4, #0
	bl sub_08078954
	adds r0, r4, #0
	movs r1, #0x20
	movs r2, #0
	movs r3, #0
	bl CreateObjectWithParent
	adds r0, r4, #0
	bl sub_0801B418
	b _0801B24E
	.align 2, 0
_0801B244: .4byte gPlayerState
_0801B248:
	adds r0, r4, #0
	bl sub_0801B3A4
_0801B24E:
	pop {r4, pc}

	thumb_func_start sub_0801B250
sub_0801B250: @ 0x0801B250
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	movs r0, #1
	strb r0, [r2, #0xc]
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	subs r0, #0x3a
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r3]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	ldrb r1, [r2, #0xa]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0801B28A
	movs r0, #0x3c
	b _0801B29C
_0801B28A:
	cmp r0, #0xfe
	bne _0801B29A
	movs r0, #0xf
	strb r0, [r2, #0xe]
	movs r0, #0xff
	orrs r0, r1
	strb r0, [r2, #0xa]
	b _0801B29E
_0801B29A:
	movs r0, #0x96
_0801B29C:
	strb r0, [r2, #0xe]
_0801B29E:
	ldr r0, _0801B2BC @ =gUnk_080B77F4
	str r0, [r2, #0x48]
	movs r0, #0
	strb r0, [r2, #0x16]
	adds r0, r2, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #7
	bne _0801B2C0
	adds r0, r2, #0
	movs r1, #5
	bl InitializeAnimation
	b _0801B2C8
	.align 2, 0
_0801B2BC: .4byte gUnk_080B77F4
_0801B2C0:
	adds r0, r2, #0
	movs r1, #0x15
	bl InitializeAnimation
_0801B2C8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801B2CC
sub_0801B2CC: @ 0x0801B2CC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0800442E
	cmp r0, #0
	bne _0801B2DE
	adds r0, r4, #0
	bl sub_08078930
_0801B2DE:
	movs r0, #8
	bl IsItemEquipped
	cmp r0, #1
	beq _0801B2F6
	cmp r0, #1
	blo _0801B2F2
	cmp r0, #2
	beq _0801B2FA
	b _0801B2FC
_0801B2F2:
	movs r5, #1
	b _0801B2FC
_0801B2F6:
	movs r5, #2
	b _0801B2FC
_0801B2FA:
	movs r5, #0
_0801B2FC:
	ldr r0, _0801B314 @ =gPlayerState
	adds r0, #0x92
	ldrh r0, [r0]
	ands r5, r0
	cmp r5, #0
	beq _0801B310
	movs r0, #0
	strb r0, [r4, #0xe]
	movs r0, #1
	strb r0, [r4, #0xf]
_0801B310:
	pop {r4, r5, pc}
	.align 2, 0
_0801B314: .4byte gPlayerState

	thumb_func_start sub_0801B318
sub_0801B318: @ 0x0801B318
	push {lr}
	ldr r2, _0801B32C @ =gUnk_080B77D8
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0801B32C: .4byte gUnk_080B77D8

	thumb_func_start sub_0801B330
sub_0801B330: @ 0x0801B330
	push {lr}
	ldrb r1, [r0, #0xd]
	adds r1, #1
	strb r1, [r0, #0xd]
	bl sub_08079BD8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801B340
sub_0801B340: @ 0x0801B340
	adds r0, #0x29
	ldrb r2, [r0]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0801B354
sub_0801B354: @ 0x0801B354
	adds r0, #0x29
	ldrb r2, [r0]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #0x18
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0801B368
sub_0801B368: @ 0x0801B368
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	subs r0, #1
	movs r1, #0
	strb r0, [r2, #0xc]
	strb r1, [r2, #0xd]
	ldrb r0, [r2, #0xe]
	cmp r0, #0x3c
	bls _0801B380
	movs r0, #0x3c
	strb r0, [r2, #0xe]
_0801B380:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801B384
sub_0801B384: @ 0x0801B384
	push {lr}
	bl DeleteThisEntity
	pop {pc}

	thumb_func_start sub_0801B38C
sub_0801B38C: @ 0x0801B38C
	push {lr}
	ldrb r1, [r0, #0xe]
	subs r1, #1
	strb r1, [r0, #0xe]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0xff
	bne _0801B3A0
	bl DeleteThisEntity
_0801B3A0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801B3A4
sub_0801B3A4: @ 0x0801B3A4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	movs r5, #8
	cmp r0, #0x28
	bhi _0801B3F4
	movs r5, #4
	ldr r1, [r4, #0x68]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801B3C4
	adds r0, r1, #0
	subs r0, #0x10
	b _0801B3C8
_0801B3C4:
	adds r0, r1, #0
	adds r0, #0x10
_0801B3C8:
	str r0, [r4, #0x68]
	ldr r1, [r4, #0x68]
	movs r2, #0xf0
	adds r0, r1, #0
	ands r0, r2
	subs r0, #1
	cmp r0, #0x7f
	bls _0801B3E0
	movs r0, #0x80
	lsls r0, r0, #8
	eors r1, r0
	str r1, [r4, #0x68]
_0801B3E0:
	ldr r0, [r4, #0x68]
	ands r0, r2
	movs r2, #0x98
	lsls r2, r2, #1
	subs r2, r2, r0
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
_0801B3F4:
	ldrb r0, [r4, #0xf]
	ands r0, r5
	cmp r0, #0
	bne _0801B408
	ldrb r1, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x1a]
	b _0801B416
_0801B408:
	ldrb r0, [r4, #0x1a]
	lsrs r2, r0, #4
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1a]
_0801B416:
	pop {r4, r5, pc}

	thumb_func_start sub_0801B418
sub_0801B418: @ 0x0801B418
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	movs r6, #0x10
	movs r0, #0x10
	rsbs r0, r0, #0
	mov sb, r0
	mov r8, sb
_0801B42C:
	movs r4, #0x10
	adds r7, r6, #0
	subs r7, #0x10
_0801B432:
	movs r0, #0x2e
	ldrsh r2, [r5, r0]
	adds r2, r2, r4
	movs r0, #0x32
	ldrsh r3, [r5, r0]
	adds r3, r3, r6
	adds r0, r5, #0
	movs r1, #3
	bl sub_08008796
	subs r4, #0x10
	cmp r4, r8
	bge _0801B432
	adds r6, r7, #0
	cmp r6, sb
	bge _0801B42C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0801B45C
sub_0801B45C: @ 0x0801B45C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0801B48C @ =gUnk_080B77FC
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0xb
	beq _0801B4AC
	ldrb r0, [r4, #0x14]
	cmp r0, #6
	bne _0801B490
	adds r1, r4, #0
	adds r1, #0x86
	movs r2, #0x80
	lsls r2, r2, #6
	b _0801B496
	.align 2, 0
_0801B48C: .4byte gUnk_080B77FC
_0801B490:
	adds r1, r4, #0
	adds r1, #0x86
	ldr r2, _0801B4C4 @ =0xFFFFE000
_0801B496:
	adds r0, r2, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	ldrh r3, [r1]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0805EC9C
_0801B4AC:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0801B4C0
	movs r0, #0xfb
	bl EnqueueSFX
_0801B4C0:
	pop {r4, pc}
	.align 2, 0
_0801B4C4: .4byte 0xFFFFE000

	thumb_func_start sub_0801B4C8
sub_0801B4C8: @ 0x0801B4C8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, _0801B52C @ =gPlayerState
	str r4, [r3, #0x2c]
	movs r2, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _0801B530 @ =gUnk_081271CC
	str r0, [r4, #0x48]
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	adds r0, r4, #0
	adds r0, #0x80
	strb r2, [r0]
	adds r1, r4, #0
	adds r1, #0x58
	movs r0, #0xb
	strb r0, [r1]
	ldr r5, _0801B534 @ =gPlayerEntity
	str r5, [r4, #0x50]
	adds r0, r4, #0
	adds r0, #0x86
	strh r2, [r0]
	ldrb r1, [r4, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801B518
	ldrb r0, [r5, #0x18]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	bics r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_0801B518:
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _0801B538
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	movs r0, #0x3c
	b _0801B540
	.align 2, 0
_0801B52C: .4byte gPlayerState
_0801B530: .4byte gUnk_081271CC
_0801B534: .4byte gPlayerEntity
_0801B538:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	movs r0, #0x1e
_0801B540:
	strb r0, [r4, #0xe]
	ldrb r1, [r3, #0xd]
	movs r0, #0xd
	ldrsb r0, [r3, r0]
	cmp r0, #0
	blt _0801B550
	strb r1, [r4, #0x15]
	b _0801B556
_0801B550:
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
_0801B556:
	ldrb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x83
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #2
	bne _0801B56C
	movs r0, #1
	strb r0, [r4, #0xb]
_0801B56C:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AE008
	adds r0, r4, #0
	bl sub_0801766C
	adds r0, r4, #0
	bl sub_0801B584
	pop {r4, r5, pc}

	thumb_func_start sub_0801B584
sub_0801B584: @ 0x0801B584
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl sub_0801B804
	ldr r1, _0801B5F8 @ =gPlayerState
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _0801B5A8
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	bne _0801B5A8
	ldr r0, [r1, #0x2c]
	cmp r0, r6
	bne _0801B5B4
	ldr r0, _0801B5FC @ =gPlayerEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	beq _0801B5B8
_0801B5A8:
	ldr r1, _0801B5F8 @ =gPlayerState
	ldr r0, [r1, #0x2c]
	cmp r0, r6
	bne _0801B5B4
	movs r0, #0
	str r0, [r1, #0x2c]
_0801B5B4:
	bl DeleteThisEntity
_0801B5B8:
	ldr r7, _0801B5FC @ =gPlayerEntity
	adds r0, r7, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r3, #1
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801B600
	adds r0, r6, #0
	adds r0, #0x68
	ldrb r0, [r0]
	movs r2, #0
	cmp r0, #0xc
	bne _0801B5D8
	movs r2, #6
_0801B5D8:
	lsrs r0, r1, #4
	adds r1, r0, r2
	ldrb r0, [r6, #0x1e]
	cmp r0, r1
	beq _0801B5EE
	strb r1, [r6, #0x1e]
	ldrb r1, [r6, #0x1e]
	ldrh r2, [r6, #0x12]
	adds r0, r6, #0
	bl sub_080042D0
_0801B5EE:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08078E84
	b _0801B674
	.align 2, 0
_0801B5F8: .4byte gPlayerState
_0801B5FC: .4byte gPlayerEntity
_0801B600:
	movs r5, #0
	movs r0, #2
	strb r0, [r6, #0xc]
	adds r1, r6, #0
	adds r1, #0x60
	movs r0, #0xd5
	strh r0, [r1]
	ldrb r0, [r6, #0x10]
	movs r4, #0x80
	orrs r0, r4
	strb r0, [r6, #0x10]
	subs r1, #0x24
	ldrb r0, [r1]
	orrs r0, r3
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	adds r2, r6, #0
	adds r2, #0x3b
	strb r0, [r2]
	movs r0, #0xa6
	strh r0, [r6, #0x12]
	ldrb r1, [r6, #0x18]
	subs r0, #0xe7
	ands r0, r1
	movs r1, #4
	rsbs r1, r1, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r6, #0x18]
	ldrb r1, [r6, #0x14]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	ldr r2, _0801B678 @ =gUnk_080B7826
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r6, #0x2e]
	adds r0, r0, r3
	strh r0, [r6, #0x2e]
	adds r1, #1
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r1, [r6, #0x32]
	adds r0, r0, r1
	strh r0, [r6, #0x32]
	adds r0, r6, #0
	movs r1, #0
	bl InitializeAnimation
	ldr r0, _0801B67C @ =gPlayerState
	str r5, [r0, #0x2c]
	ldrb r1, [r0, #4]
	orrs r4, r1
	strb r4, [r0, #4]
_0801B674:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801B678: .4byte gUnk_080B7826
_0801B67C: .4byte gPlayerState

	thumb_func_start sub_0801B680
sub_0801B680: @ 0x0801B680
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_0801B804
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _0801B6DC
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801B6DC
	ldr r3, _0801B6C4 @ =gPlayerState
	ldrb r1, [r3, #0xd]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801B6DC
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	ldrb r1, [r3, #0xd]
	subs r0, r0, r1
	movs r3, #0x1f
	ands r0, r3
	cmp r0, #0x10
	ble _0801B6C8
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r0, [r1]
	adds r0, #0x40
	b _0801B6D0
	.align 2, 0
_0801B6C4: .4byte gPlayerState
_0801B6C8:
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r0, [r1]
	subs r0, #0x40
_0801B6D0:
	strh r0, [r1]
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r2]
	strb r0, [r4, #0x15]
_0801B6DC:
	adds r0, r4, #0
	bl sub_0806F69C
	movs r5, #0
	adds r0, r4, #0
	bl sub_0801B864
	cmp r0, #0
	beq _0801B6FE
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r1, [r0]
	movs r0, #0xc
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_0801B6FE:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _0801B780 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r6, #0x32
	ldrsh r1, [r4, r6]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	ldr r1, _0801B784 @ =gPlayerEntity
	adds r1, #0x38
	ldrb r1, [r1]
	movs r2, #0x80
	bl sub_080002F0
	cmp r0, #0
	bne _0801B73C
	cmp r5, #0
	bne _0801B790
	ldr r1, _0801B788 @ =gUnk_08003E44
	adds r0, r4, #0
	bl sub_080040E2
	adds r5, r0, #0
_0801B73C:
	cmp r5, #0
	bne _0801B790
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bhi _0801B754
	ldrh r0, [r4, #0x24]
	subs r0, #0x10
	strh r0, [r4, #0x24]
_0801B754:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _0801B75C
	movs r5, #1
_0801B75C:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801B76C
	movs r5, #1
_0801B76C:
	cmp r5, #0
	beq _0801B7A4
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _0801B78C
	movs r0, #0x1e
	b _0801B792
	.align 2, 0
_0801B780: .4byte gRoomControls
_0801B784: .4byte gPlayerEntity
_0801B788: .4byte gUnk_08003E44
_0801B78C:
	movs r0, #0xc
	b _0801B792
_0801B790:
	movs r0, #1
_0801B792:
	strb r0, [r4, #0xe]
	cmp r5, #0
	beq _0801B7A4
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
_0801B7A4:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0801B7A8
sub_0801B7A8: @ 0x0801B7A8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0801B804
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _0801B7BC
	subs r0, #1
	strb r0, [r5, #0xe]
	b _0801B7FA
_0801B7BC:
	adds r0, r5, #0
	bl sub_0801B864
	ldrh r2, [r5, #0x24]
	movs r0, #0x24
	ldrsh r1, [r5, r0]
	ldr r0, _0801B7FC @ =0x0000027F
	cmp r1, r0
	bgt _0801B7D4
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r5, #0x24]
_0801B7D4:
	ldr r4, _0801B800 @ =gPlayerEntity
	adds r0, r5, #0
	adds r1, r4, #0
	bl GetFacingDirection
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_0806F69C
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	movs r3, #2
	bl sub_0800419C
	cmp r0, #0
	beq _0801B7FA
	bl DeleteThisEntity
_0801B7FA:
	pop {r4, r5, pc}
	.align 2, 0
_0801B7FC: .4byte 0x0000027F
_0801B800: .4byte gPlayerEntity

	thumb_func_start sub_0801B804
sub_0801B804: @ 0x0801B804
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xc
	bl IsItemEquipped
	cmp r0, #1
	beq _0801B820
	cmp r0, #1
	blo _0801B81C
	cmp r0, #2
	beq _0801B824
	b _0801B826
_0801B81C:
	movs r4, #1
	b _0801B826
_0801B820:
	movs r4, #2
	b _0801B826
_0801B824:
	movs r4, #0
_0801B826:
	ldr r3, _0801B850 @ =gPlayerState
	adds r0, r3, #0
	adds r0, #0x90
	ldrh r0, [r0]
	ands r4, r0
	cmp r4, #0
	bne _0801B854
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #1
	strb r0, [r1]
	ldrb r2, [r3, #0xa]
	movs r1, #0x7f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #0xa]
	ldrb r0, [r3, #0xb]
	ands r1, r0
	strb r1, [r3, #0xb]
	b _0801B862
	.align 2, 0
_0801B850: .4byte gPlayerState
_0801B854:
	ldrb r1, [r3, #0xa]
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r3, #0xa]
	ldrb r1, [r3, #0xb]
	orrs r0, r1
	strb r0, [r3, #0xb]
_0801B862:
	pop {r4, r5, pc}

	thumb_func_start sub_0801B864
sub_0801B864: @ 0x0801B864
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0801B874
	adds r0, r4, #0
	bl sub_0800451C
_0801B874:
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #2
	lsls r0, r0, #1
	ldr r3, _0801B894 @ =gUnk_080B782E
	adds r1, r0, r3
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r0, #1
	adds r0, r0, r3
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08008782
	pop {r4, pc}
	.align 2, 0
_0801B894: .4byte gUnk_080B782E

	thumb_func_start sub_0801B898
sub_0801B898: @ 0x0801B898
	push {lr}
	ldr r2, _0801B8AC @ =gUnk_080B7840
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0801B8AC: .4byte gUnk_080B7840

	thumb_func_start sub_0801B8B0
sub_0801B8B0: @ 0x0801B8B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0801B8F0 @ =gPlayerState
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	beq _0801B8F4
	str r4, [r1, #0x2c]
	ldrb r1, [r4, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3b
	movs r0, #8
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AE008
	adds r0, r4, #0
	bl sub_08079BD8
	adds r0, r4, #0
	bl sub_0801766C
	adds r0, r4, #0
	bl sub_0801B8FC
	b _0801B8F8
	.align 2, 0
_0801B8F0: .4byte gPlayerState
_0801B8F4:
	bl DeleteThisEntity
_0801B8F8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801B8FC
sub_0801B8FC: @ 0x0801B8FC
	push {lr}
	ldr r1, _0801B90C @ =gPlayerState
	ldr r2, [r1, #0x2c]
	cmp r2, r0
	beq _0801B910
	bl DeleteThisEntity
	b _0801B934
	.align 2, 0
_0801B90C: .4byte gPlayerState
_0801B910:
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	bne _0801B91E
	str r0, [r1, #0x2c]
	bl DeleteThisEntity
	b _0801B934
_0801B91E:
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	adds r1, r2, #0
	adds r1, #0x3c
	movs r0, #0x21
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_0801B938
_0801B934:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801B938
sub_0801B938: @ 0x0801B938
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801B960
	ldr r3, _0801B95C @ =gPlayerEntity
	ldrb r1, [r3, #0x18]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	subs r0, #0x42
	b _0801B96E
	.align 2, 0
_0801B95C: .4byte gPlayerEntity
_0801B960:
	ldr r3, _0801B998 @ =gPlayerEntity
	ldrb r0, [r3, #0x18]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
_0801B96E:
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r3, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r0, #0x68
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _0801B99C
	ldrb r0, [r3, #0x1e]
	adds r0, #0x2e
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x1e]
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
	b _0801B9A0
	.align 2, 0
_0801B998: .4byte gPlayerEntity
_0801B99C:
	movs r0, #0xff
	strb r0, [r4, #0x1e]
_0801B9A0:
	ldrb r3, [r4, #0x14]
	lsrs r3, r3, #1
	lsls r0, r3, #3
	ldr r1, _0801B9E0 @ =gUnk_080B7850
	adds r0, r0, r1
	str r0, [r4, #0x48]
	lsls r3, r3, #1
	ldr r0, _0801B9E4 @ =gUnk_080B7848
	adds r3, r3, r0
	ldr r0, _0801B9E8 @ =gPlayerState
	adds r0, #0xac
	ldrh r0, [r0]
	movs r1, #8
	ands r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsrs r1, r1, #0x1f
	movs r2, #0
	ldrsb r2, [r3, r2]
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, r4, #0
	bl sub_08008782
	ldr r1, _0801B9EC @ =gPlayerEntity
	adds r0, r4, #0
	bl sub_08078E84
	pop {r4, pc}
	.align 2, 0
_0801B9E0: .4byte gUnk_080B7850
_0801B9E4: .4byte gUnk_080B7848
_0801B9E8: .4byte gPlayerState
_0801B9EC: .4byte gPlayerEntity

	thumb_func_start sub_0801B9F0
sub_0801B9F0: @ 0x0801B9F0
	push {lr}
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	bl sub_08017744
	pop {pc}

	thumb_func_start SwordSpin
SwordSpin: @ 0x0801BA00
	push {lr}
	ldr r2, _0801BA14 @ =gUnk_080B7870
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0801BA14: .4byte gUnk_080B7870

	thumb_func_start sub_0801BA18
sub_0801BA18: @ 0x0801BA18
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x68
	ldrb r0, [r1]
	cmp r0, #0x36
	bne _0801BA2A
	movs r0, #0x36
	b _0801BA34
_0801BA2A:
	ldrb r1, [r1]
	ldr r0, _0801BA4C @ =gUnk_02002A40
	adds r0, r0, r1
	adds r0, #0x9a
	ldrb r0, [r0]
_0801BA34:
	adds r1, r4, #0
	adds r1, #0x6f
	strb r0, [r1]
	subs r0, #0x20
	cmp r0, #0x11
	bhi _0801BB02
	lsls r0, r0, #2
	ldr r1, _0801BA50 @ =_0801BA54
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801BA4C: .4byte gUnk_02002A40
_0801BA50: .4byte _0801BA54
_0801BA54: @ jump table
	.4byte _0801BA9C @ case 0
	.4byte _0801BAF8 @ case 1
	.4byte _0801BAF8 @ case 2
	.4byte _0801BAF8 @ case 3
	.4byte _0801BAF8 @ case 4
	.4byte _0801BAF8 @ case 5
	.4byte _0801BB02 @ case 6
	.4byte _0801BB02 @ case 7
	.4byte _0801BB02 @ case 8
	.4byte _0801BAF8 @ case 9
	.4byte _0801BAF8 @ case 10
	.4byte _0801BAF8 @ case 11
	.4byte _0801BAF8 @ case 12
	.4byte _0801BAF8 @ case 13
	.4byte _0801BAF8 @ case 14
	.4byte _0801BB02 @ case 15
	.4byte _0801BB02 @ case 16
	.4byte _0801BB02 @ case 17
_0801BA9C:
	adds r0, r4, #0
	bl sub_0806FBD8
	cmp r0, #0
	beq _0801BB26
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldr r1, _0801BAF4 @ =gPlayerEntity
	adds r0, r1, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	adds r0, #1
	movs r2, #0x20
	adds r3, r4, #0
	adds r3, #0x3c
	orrs r0, r2
	strb r0, [r3]
	adds r1, #0x3b
	ldrb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x3b
	strb r0, [r1]
	adds r1, #5
	movs r0, #0x1f
	strb r0, [r1]
	movs r0, #1
	strb r0, [r4, #0xa]
	movs r0, #0x20
	strb r0, [r4, #0xb]
	movs r0, #0x52
	strb r0, [r4, #0xe]
	movs r0, #0x1b
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_0801766C
	movs r0, #0xee
	lsls r0, r0, #1
	bl PlaySFX
	b _0801BB0A
	.align 2, 0
_0801BAF4: .4byte gPlayerEntity
_0801BAF8:
	movs r0, #0xd5
	strb r0, [r4, #0xe]
	movs r0, #0x3c
	strb r0, [r4, #0xf]
	b _0801BB0A
_0801BB02:
	movs r1, #0
	movs r0, #0x37
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
_0801BB0A:
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	ldr r0, _0801BB28 @ =gPlayerState
	str r4, [r0, #0x2c]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AE008
	adds r0, r4, #0
	bl sub_0801BB2C
_0801BB26:
	pop {r4, pc}
	.align 2, 0
_0801BB28: .4byte gPlayerState

	thumb_func_start sub_0801BB2C
sub_0801BB2C: @ 0x0801BB2C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0801BB88 @ =gPlayerState
	ldr r0, [r0, #0x2c]
	cmp r0, r5
	beq _0801BB68
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _0801BB64
	ldrb r0, [r5, #0xb]
	cmp r0, #0x20
	beq _0801BB64
	adds r0, r5, #0
	adds r0, #0x68
	ldrb r4, [r0]
	subs r4, #0x1c
	ldrb r0, [r5, #0xb]
	adds r1, r4, #0
	bl SetBottleContents
	ldrb r0, [r5, #0xb]
	adds r1, r4, #0
	movs r2, #5
	bl sub_080A7C18
	ldr r0, _0801BB8C @ =0x00000109
	bl PlaySFX
_0801BB64:
	bl DeleteThisEntity
_0801BB68:
	ldr r1, _0801BB90 @ =gPlayerEntity
	adds r0, r5, #0
	bl sub_0801BDE8
	adds r0, r5, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	subs r0, #0x20
	cmp r0, #0x11
	bhi _0801BC04
	lsls r0, r0, #2
	ldr r1, _0801BB94 @ =_0801BB98
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801BB88: .4byte gPlayerState
_0801BB8C: .4byte 0x00000109
_0801BB90: .4byte gPlayerEntity
_0801BB94: .4byte _0801BB98
_0801BB98: @ jump table
	.4byte _0801BBE0 @ case 0
	.4byte _0801BBE8 @ case 1
	.4byte _0801BBE8 @ case 2
	.4byte _0801BBE8 @ case 3
	.4byte _0801BBE8 @ case 4
	.4byte _0801BBE8 @ case 5
	.4byte _0801BC04 @ case 6
	.4byte _0801BC04 @ case 7
	.4byte _0801BC04 @ case 8
	.4byte _0801BBE8 @ case 9
	.4byte _0801BBE8 @ case 10
	.4byte _0801BBE8 @ case 11
	.4byte _0801BBE8 @ case 12
	.4byte _0801BBE8 @ case 13
	.4byte _0801BBE8 @ case 14
	.4byte _0801BC04 @ case 15
	.4byte _0801BC04 @ case 16
	.4byte _0801BC04 @ case 17
_0801BBE0:
	adds r0, r5, #0
	bl sub_0801BC0C
	b _0801BC0A
_0801BBE8:
	ldr r0, _0801BC00 @ =gPlayerEntity
	adds r1, r0, #0
	adds r1, #0x5a
	ldrb r0, [r1]
	cmp r0, #1
	bne _0801BC0A
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0801BC14
	b _0801BC0A
	.align 2, 0
_0801BC00: .4byte gPlayerEntity
_0801BC04:
	adds r0, r5, #0
	bl sub_0801BCB4
_0801BC0A:
	pop {r4, r5, pc}

	thumb_func_start sub_0801BC0C
sub_0801BC0C: @ 0x0801BC0C
	push {lr}
	bl sub_0801BE38
	pop {pc}

	thumb_func_start sub_0801BC14
sub_0801BC14: @ 0x0801BC14
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0x20
	movs r5, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	subs r0, #0x21
	cmp r0, #0xd
	bhi _0801BC98
	lsls r0, r0, #2
	ldr r1, _0801BC30 @ =_0801BC34
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801BC30: .4byte _0801BC34
_0801BC34: @ jump table
	.4byte _0801BC76 @ case 0
	.4byte _0801BC6C @ case 1
	.4byte _0801BC6E @ case 2
	.4byte _0801BC76 @ case 3
	.4byte _0801BC72 @ case 4
	.4byte _0801BC98 @ case 5
	.4byte _0801BC98 @ case 6
	.4byte _0801BC98 @ case 7
	.4byte _0801BC7A @ case 8
	.4byte _0801BC7A @ case 9
	.4byte _0801BC7A @ case 10
	.4byte _0801BC7A @ case 11
	.4byte _0801BC7A @ case 12
	.4byte _0801BC7A @ case 13
_0801BC6C:
	movs r6, #0x23
_0801BC6E:
	movs r5, #0x28
	b _0801BC98
_0801BC72:
	movs r5, #0x50
	b _0801BC98
_0801BC76:
	movs r5, #0xa0
	b _0801BC98
_0801BC7A:
	ldr r1, _0801BCB0 @ =gUnk_02002A40
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0xb3
	strb r0, [r2]
	adds r1, #0xc6
	movs r0, #0xe1
	lsls r0, r0, #2
	strh r0, [r1]
	movs r0, #0x88
	lsls r0, r0, #2
	bl PlaySFX
_0801BC98:
	adds r0, r5, #0
	bl ModHealth
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r1, [r0]
	subs r1, #0x1c
	adds r0, r6, #0
	bl SetBottleContents
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801BCB0: .4byte gUnk_02002A40

	thumb_func_start sub_0801BCB4
sub_0801BCB4: @ 0x0801BCB4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0801BCEC @ =gPlayerEntity
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801BD6C
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x36
	beq _0801BCDA
	subs r0, #7
	ldrb r1, [r0]
	subs r1, #0x1c
	movs r0, #0x20
	bl SetBottleContents
_0801BCDA:
	ldrb r0, [r5]
	subs r0, #0x26
	cmp r0, #0xb
	bhi _0801BD6C
	lsls r0, r0, #2
	ldr r1, _0801BCF0 @ =_0801BCF4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801BCEC: .4byte gPlayerEntity
_0801BCF0: .4byte _0801BCF4
_0801BCF4: @ jump table
	.4byte _0801BD24 @ case 0
	.4byte _0801BD32 @ case 1
	.4byte _0801BD40 @ case 2
	.4byte _0801BD6C @ case 3
	.4byte _0801BD6C @ case 4
	.4byte _0801BD6C @ case 5
	.4byte _0801BD6C @ case 6
	.4byte _0801BD6C @ case 7
	.4byte _0801BD6C @ case 8
	.4byte _0801BD54 @ case 9
	.4byte _0801BD54 @ case 10
	.4byte _0801BD54 @ case 11
_0801BD24:
	adds r0, r4, #0
	movs r1, #0x68
	movs r2, #0
	movs r3, #0
	bl CreateObjectWithParent
	b _0801BD6C
_0801BD32:
	adds r0, r4, #0
	movs r1, #0x68
	movs r2, #1
	movs r3, #1
	bl CreateObjectWithParent
	b _0801BD6C
_0801BD40:
	adds r0, r4, #0
	movs r1, #0x68
	movs r2, #2
	movs r3, #2
	bl CreateObjectWithParent
	movs r0, #0x20
	bl ModHealth
	b _0801BD6C
_0801BD54:
	ldr r1, _0801BD88 @ =gUnk_02002A40
	ldrb r0, [r5]
	adds r2, r1, #0
	adds r2, #0xb2
	strb r0, [r2]
	adds r1, #0xc4
	movs r0, #0xe1
	lsls r0, r0, #4
	strh r0, [r1]
	ldr r0, _0801BD8C @ =0x000001CF
	bl PlaySFX
_0801BD6C:
	ldr r0, _0801BD90 @ =gPlayerEntity
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #2
	bne _0801BDAE
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0x26
	beq _0801BD94
	cmp r0, #0x27
	beq _0801BDA2
	b _0801BDAE
	.align 2, 0
_0801BD88: .4byte gUnk_02002A40
_0801BD8C: .4byte 0x000001CF
_0801BD90: .4byte gPlayerEntity
_0801BD94:
	adds r0, r4, #0
	movs r1, #0x68
	movs r2, #0
	movs r3, #0
	bl CreateObjectWithParent
	b _0801BDAE
_0801BDA2:
	adds r0, r4, #0
	movs r1, #0x68
	movs r2, #1
	movs r3, #1
	bl CreateObjectWithParent
_0801BDAE:
	ldr r0, _0801BDC8 @ =gPlayerEntity
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #3
	bne _0801BDE6
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0x26
	beq _0801BDCC
	cmp r0, #0x27
	beq _0801BDDA
	b _0801BDE6
	.align 2, 0
_0801BDC8: .4byte gPlayerEntity
_0801BDCC:
	adds r0, r4, #0
	movs r1, #0x68
	movs r2, #0
	movs r3, #0
	bl CreateObjectWithParent
	b _0801BDE6
_0801BDDA:
	adds r0, r4, #0
	movs r1, #0x68
	movs r2, #1
	movs r3, #0
	bl CreateObjectWithParent
_0801BDE6:
	pop {r4, r5, pc}

	thumb_func_start sub_0801BDE8
sub_0801BDE8: @ 0x0801BDE8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r0, [r5, #0x1e]
	ldrb r1, [r4, #0xe]
	subs r0, r0, r1
	ldrb r1, [r4, #0xf]
	adds r0, r0, r1
	ldrb r1, [r4, #0x1e]
	cmp r0, r1
	beq _0801BE0A
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x1e]
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
_0801BE0A:
	ldrb r1, [r5, #0x18]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	movs r2, #1
	ands r0, r2
	eors r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldr r1, _0801BE34 @ =gPlayerEntity
	adds r0, r4, #0
	bl sub_08078E84
	pop {r4, r5, pc}
	.align 2, 0
_0801BE34: .4byte gPlayerEntity

	thumb_func_start sub_0801BE38
sub_0801BE38: @ 0x0801BE38
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x41
	ldrb r0, [r2]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x49
	beq _0801BE54
	cmp r1, #0x4d
	beq _0801BE60
	movs r0, #0
	strb r0, [r2]
	b _0801BE6A
_0801BE54:
	movs r0, #0x28
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	bl sub_0801B9F0
	b _0801BE6A
_0801BE60:
	movs r0, #0x27
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	bl sub_0801B9F0
_0801BE6A:
	ldrb r0, [r4, #0x1e]
	subs r0, #0x1b
	lsls r0, r0, #2
	ldr r1, _0801BE84 @ =gUnk_080B788A
	adds r2, r0, r1
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0801BE88
	ldr r1, [r4, #0x48]
	ldrb r0, [r2]
	rsbs r0, r0, #0
	b _0801BE8C
	.align 2, 0
_0801BE84: .4byte gUnk_080B788A
_0801BE88:
	ldr r1, [r4, #0x48]
	ldrb r0, [r2]
_0801BE8C:
	strb r0, [r1]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #1]
	strb r0, [r1, #1]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #2]
	strb r0, [r1, #6]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #3]
	strb r0, [r1, #7]
	ldr r0, _0801BEF0 @ =gPlayerEntity
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0
	beq _0801BEDE
	ldrb r0, [r4, #0xb]
	cmp r0, #0x20
	bne _0801BEE4
	subs r0, r1, #1
	lsls r0, r0, #1
	ldr r1, _0801BEF4 @ =gUnk_080B7878
	adds r2, r0, r1
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0801BECA
	rsbs r1, r1, #0
_0801BECA:
	ldrb r2, [r2, #1]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r0, r4, #0
	bl sub_080002B4
	cmp r0, #0x10
	bne _0801BEDE
	movs r0, #0x26
	strb r0, [r4, #0xb]
_0801BEDE:
	ldrb r0, [r4, #0xb]
	cmp r0, #0x20
	beq _0801BEEE
_0801BEE4:
	ldr r2, _0801BEF0 @ =gPlayerEntity
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
_0801BEEE:
	pop {r4, pc}
	.align 2, 0
_0801BEF0: .4byte gPlayerEntity
_0801BEF4: .4byte gUnk_080B7878
