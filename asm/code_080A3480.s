	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080A3480
sub_080A3480: @ 0x080A3480
	push {r4, lr}
	ldr r4, _080A34A4 @ =gUnk_02021EE0
	movs r0, #0xa
	ldrsh r1, [r4, r0]
	movs r2, #8
	ldrsh r0, [r4, r2]
	cmp r1, r0
	beq _080A34C4
	adds r0, r1, #0
	movs r2, #8
	ldrsh r1, [r4, r2]
	bl sub_080A3518
	adds r1, r0, #0
	cmp r1, #0
	bne _080A34A8
	ldrh r0, [r4, #0xa]
	b _080A34AC
	.align 2, 0
_080A34A4: .4byte gUnk_02021EE0
_080A34A8:
	ldrh r0, [r4, #8]
	adds r0, r0, r1
_080A34AC:
	strh r0, [r4, #8]
	movs r1, #8
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080A34BC
	movs r0, #0
	strh r0, [r4, #0xa]
	strh r0, [r4, #8]
_080A34BC:
	ldrh r0, [r4, #0x14]
	bl sub_080A353C
	b _080A3516
_080A34C4:
	movs r2, #0x10
	ldrsh r1, [r4, r2]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r1, r0
	beq _080A3516
	adds r0, r1, #0
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	bl sub_080A3518
	adds r1, r0, #0
	cmp r1, #0
	bne _080A34FC
	ldrb r0, [r4, #2]
	ldrh r2, [r4, #0x10]
	cmp r0, #0
	beq _080A34F8
	cmp r2, #0
	bne _080A34F8
	strb r1, [r4, #2]
	strh r1, [r4, #0x14]
	movs r0, #0
	bl m4aSongNumStop
	b _080A3502
_080A34F8:
	strh r2, [r4, #0xe]
	b _080A3502
_080A34FC:
	ldrh r0, [r4, #0xe]
	adds r0, r0, r1
	strh r0, [r4, #0xe]
_080A3502:
	movs r1, #0xe
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080A3510
	movs r0, #0
	strh r0, [r4, #0x10]
	strh r0, [r4, #0xe]
_080A3510:
	ldrh r0, [r4, #0x14]
	bl sub_080A353C
_080A3516:
	pop {r4, pc}

	thumb_func_start sub_080A3518
sub_080A3518: @ 0x080A3518
	push {lr}
	adds r2, r0, #0
	subs r0, r2, r1
	cmp r0, #0
	ble _080A352C
	adds r1, #4
	cmp r2, r1
	ble _080A3532
	movs r0, #4
	b _080A353A
_080A352C:
	subs r1, #4
	cmp r2, r1
	blt _080A3536
_080A3532:
	movs r0, #0
	b _080A353A
_080A3536:
	movs r0, #4
	rsbs r0, r0, #0
_080A353A:
	pop {pc}

	thumb_func_start sub_080A353C
sub_080A353C: @ 0x080A353C
	push {r4, r5, lr}
	adds r3, r0, #0
	cmp r3, #0
	beq _080A358C
	subs r0, r3, #1
	cmp r0, #0x62
	bhi _080A3558
	ldr r0, _080A3554 @ =gUnk_02021EE0
	movs r1, #0xe
	ldrsh r5, [r0, r1]
	b _080A355E
	.align 2, 0
_080A3554: .4byte gUnk_02021EE0
_080A3558:
	ldr r0, _080A3590 @ =gUnk_02021EE0
	movs r1, #0x12
	ldrsh r5, [r0, r1]
_080A355E:
	movs r1, #8
	ldrsh r0, [r0, r1]
	muls r0, r5, r0
	lsrs r5, r0, #8
	ldr r2, _080A3594 @ =gUnk_08A11C3C
	ldr r1, _080A3598 @ =gUnk_08A11DBC
	lsls r0, r3, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r4, [r0]
	adds r0, r4, #0
	bl m4aMPlayImmInit
	ldr r1, _080A359C @ =0x0000FFFF
	lsls r2, r5, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	bl m4aMPlayVolumeControl
_080A358C:
	pop {r4, r5, pc}
	.align 2, 0
_080A3590: .4byte gUnk_02021EE0
_080A3594: .4byte gUnk_08A11C3C
_080A3598: .4byte gUnk_08A11DBC
_080A359C: .4byte 0x0000FFFF

	thumb_func_start sub_080A35A0
sub_080A35A0: @ 0x080A35A0
	push {lr}
	ldr r2, _080A35B0 @ =gUnk_02021EE0
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r2, #0xa]
	bl sub_080A353C
	pop {pc}
	.align 2, 0
_080A35B0: .4byte gUnk_02021EE0

	thumb_func_start sub_080A35B4
sub_080A35B4: @ 0x080A35B4
	push {lr}
	ldr r2, _080A35C4 @ =gUnk_02021EE0
	movs r1, #0
	strh r1, [r2, #0xa]
	bl sub_080A353C
	pop {pc}
	.align 2, 0
_080A35C4: .4byte gUnk_02021EE0

	thumb_func_start sub_080A35C8
sub_080A35C8: @ 0x080A35C8
	ldr r1, _080A35DC @ =gUnk_02021EE0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	strh r0, [r1, #0x10]
	bx lr
	.align 2, 0
_080A35DC: .4byte gUnk_02021EE0

	thumb_func_start HandleCreditsScreen
HandleCreditsScreen: @ 0x080A35E0
	push {lr}
	ldr r1, _080A35FC @ =gScreenTransition
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _080A3600 @ =gUnk_08127D00
	ldr r0, _080A3604 @ =gUnk_03001000
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080A35FC: .4byte gScreenTransition
_080A3600: .4byte gUnk_08127D00
_080A3604: .4byte gUnk_03001000

	thumb_func_start sub_080A3608
sub_080A3608: @ 0x080A3608
	push {r4, r5, lr}
	ldr r0, _080A3640 @ =gUnk_02002A40
	movs r5, #0
	movs r4, #1
	strb r4, [r0, #6]
	movs r0, #0x55
	bl SetGlobalFlag
	ldr r0, _080A3644 @ =gUnk_03001000
	strb r4, [r0, #3]
	ldr r2, _080A3648 @ =gMenu
	strb r5, [r2, #5]
	movs r1, #0
	movs r0, #0xb4
	strh r0, [r2, #8]
	movs r0, #5
	strb r0, [r2, #0x16]
	movs r0, #4
	strb r0, [r2, #0x17]
	strb r1, [r2, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	cmp r0, #1
	bls _080A3650
	ldr r0, _080A364C @ =gUnk_08127998
	b _080A365E
	.align 2, 0
_080A3640: .4byte gUnk_02002A40
_080A3644: .4byte gUnk_03001000
_080A3648: .4byte gMenu
_080A364C: .4byte gUnk_08127998
_080A3650:
	cmp r0, #1
	bne _080A365C
	ldr r0, _080A3658 @ =gUnk_08127644
	b _080A365E
	.align 2, 0
_080A3658: .4byte gUnk_08127644
_080A365C:
	ldr r0, _080A36B0 @ =gUnk_081272F0
_080A365E:
	str r0, [r2, #0xc]
	movs r0, #0
	bl sub_0801DA90
	movs r0, #0xb
	bl LoadPaletteGroup
	movs r0, #0xc
	bl LoadPaletteGroup
	movs r0, #0
	movs r1, #0
	bl sub_0801D79C
	ldr r2, _080A36B4 @ =gScreen
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r2]
	adds r1, r2, #0
	adds r1, #0x66
	ldr r0, _080A36B8 @ =0x00002442
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r0, _080A36BC @ =0x00001E4D
	strh r0, [r2, #0x14]
	subs r0, #0x8a
	strh r0, [r2, #0x20]
	bl sub_080A3210
	bl sub_0805E5B4
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #5
	bl DoFade
	pop {r4, r5, pc}
	.align 2, 0
_080A36B0: .4byte gUnk_081272F0
_080A36B4: .4byte gScreen
_080A36B8: .4byte 0x00002442
_080A36BC: .4byte 0x00001E4D

	thumb_func_start sub_080A36C0
sub_080A36C0: @ 0x080A36C0
	push {lr}
	ldr r1, _080A36D4 @ =gUnk_08127D10
	ldr r0, _080A36D8 @ =gMenu
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080A36D4: .4byte gUnk_08127D10
_080A36D8: .4byte gMenu

	thumb_func_start sub_080A36DC
sub_080A36DC: @ 0x080A36DC
	push {lr}
	ldr r1, _080A36F4 @ =gMenu
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A36F0
	bl sub_080A3954
_080A36F0:
	pop {pc}
	.align 2, 0
_080A36F4: .4byte gMenu

	thumb_func_start sub_080A36F8
sub_080A36F8: @ 0x080A36F8
	push {r4, r5, lr}
	ldr r0, _080A3754 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A3752
	ldr r5, _080A3758 @ =gMenu
	movs r0, #0x10
	ldrsh r4, [r5, r0]
	lsls r4, r4, #1
	ldr r0, _080A375C @ =gUnk_08127CEC
	adds r4, r4, r0
	ldrb r0, [r4]
	bl LoadPaletteGroup
	ldrb r0, [r4, #1]
	bl LoadGfxGroup
	ldr r0, _080A3760 @ =gUnk_02021F30
	movs r1, #0x80
	lsls r1, r1, #4
	bl _DmaZero
	ldr r1, _080A3764 @ =gScreen
	movs r2, #0
	movs r0, #1
	strh r0, [r1, #0x1a]
	ldrh r0, [r5, #0x12]
	strh r0, [r1, #0x22]
	adds r1, #0x68
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	strb r2, [r5, #5]
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	bne _080A374A
	movs r0, #1
	strb r0, [r5, #0x1a]
	movs r0, #9
	bl PlaySFX
_080A374A:
	movs r0, #4
	movs r1, #8
	bl DoFade
_080A3752:
	pop {r4, r5, pc}
	.align 2, 0
_080A3754: .4byte gFadeControl
_080A3758: .4byte gMenu
_080A375C: .4byte gUnk_08127CEC
_080A3760: .4byte gUnk_02021F30
_080A3764: .4byte gScreen

	thumb_func_start sub_080A3768
sub_080A3768: @ 0x080A3768
	push {r4, lr}
	ldr r4, _080A377C @ =gMenu
	ldrb r1, [r4, #6]
	cmp r1, #1
	beq _080A37C4
	cmp r1, #1
	bgt _080A3780
	cmp r1, #0
	beq _080A378A
	b _080A384C
	.align 2, 0
_080A377C: .4byte gMenu
_080A3780:
	cmp r1, #2
	beq _080A3804
	cmp r1, #3
	beq _080A3812
	b _080A384C
_080A378A:
	ldr r0, _080A37B8 @ =gUnk_02021F30
	movs r1, #0x80
	lsls r1, r1, #4
	bl _DmaZero
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	ldr r2, _080A37BC @ =gUnk_081272E0
	ldrb r1, [r4, #0x19]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_0805F46C
	ldr r1, _080A37C0 @ =gScreen
	movs r2, #0
	movs r0, #1
	strh r0, [r1, #0x1a]
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	strb r2, [r4, #0x18]
	b _080A385E
	.align 2, 0
_080A37B8: .4byte gUnk_02021F30
_080A37BC: .4byte gUnk_081272E0
_080A37C0: .4byte gScreen
_080A37C4:
	ldr r0, _080A37F8 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A385E
	ldr r0, _080A37FC @ =gScreenTransition
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _080A385E
	ldrb r1, [r4, #0x18]
	adds r1, #1
	strb r1, [r4, #0x18]
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	ldr r2, _080A3800 @ =gScreen
	movs r0, #0x10
	subs r0, r0, r3
	lsls r0, r0, #8
	orrs r0, r3
	adds r2, #0x68
	strh r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0xf
	bls _080A385E
	b _080A383C
	.align 2, 0
_080A37F8: .4byte gFadeControl
_080A37FC: .4byte gScreenTransition
_080A3800: .4byte gScreen
_080A3804:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A385E
	b _080A383C
_080A3812:
	ldr r0, _080A3844 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080A385E
	ldrb r1, [r4, #0x18]
	subs r1, #1
	strb r1, [r4, #0x18]
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	ldr r2, _080A3848 @ =gScreen
	movs r0, #0x10
	subs r0, r0, r3
	lsls r0, r0, #8
	orrs r0, r3
	adds r2, #0x68
	strh r0, [r2]
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _080A385E
_080A383C:
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	b _080A385E
	.align 2, 0
_080A3844: .4byte gScreenTransition
_080A3848: .4byte gScreen
_080A384C:
	ldr r1, _080A3860 @ =gFadeControl
	ldrb r0, [r1]
	cmp r0, #0
	bne _080A385E
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #4]
	bl sub_080A3954
_080A385E:
	pop {r4, pc}
	.align 2, 0
_080A3860: .4byte gFadeControl

	thumb_func_start sub_080A3864
sub_080A3864: @ 0x080A3864
	push {lr}
	ldr r1, _080A3884 @ =gMenu
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A3880
	bl sub_080A3954
	movs r0, #5
	movs r1, #8
	bl DoFade
_080A3880:
	pop {pc}
	.align 2, 0
_080A3884: .4byte gMenu

	thumb_func_start sub_080A3888
sub_080A3888: @ 0x080A3888
	push {lr}
	ldr r1, _080A38A8 @ =gFadeControl
	ldr r0, _080A38AC @ =0xFFFF7FFF
	str r0, [r1, #4]
	movs r0, #5
	movs r1, #4
	bl DoFade
	ldr r0, _080A38B0 @ =gMenu
	ldrh r0, [r0, #8]
	bl sub_08050038
	bl sub_080A3954
	pop {pc}
	.align 2, 0
_080A38A8: .4byte gFadeControl
_080A38AC: .4byte 0xFFFF7FFF
_080A38B0: .4byte gMenu

	thumb_func_start sub_080A38B4
sub_080A38B4: @ 0x080A38B4
	push {lr}
	movs r0, #4
	movs r1, #4
	bl DoFade
	ldr r0, _080A38CC @ =gMenu
	ldrh r0, [r0, #8]
	bl sub_08050038
	bl sub_080A3954
	pop {pc}
	.align 2, 0
_080A38CC: .4byte gMenu

	thumb_func_start sub_080A38D0
sub_080A38D0: @ 0x080A38D0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r0, _080A391C @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A3914
	ldr r0, _080A3920 @ =gUnk_02021F30
	movs r6, #0x80
	lsls r6, r6, #4
	adds r1, r6, #0
	bl _DmaZero
	ldr r4, _080A3924 @ =gScreen
	movs r0, #0
	mov r8, r0
	movs r5, #1
	strh r5, [r4, #0x1a]
	ldr r0, _080A3928 @ =gUnk_020344B0
	adds r1, r6, #0
	bl _DmaZero
	strh r5, [r4, #0x26]
	adds r4, #0x68
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4]
	ldr r0, _080A392C @ =gMenu
	mov r1, r8
	strb r1, [r0, #5]
	movs r0, #4
	movs r1, #8
	bl DoFade
_080A3914:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A391C: .4byte gFadeControl
_080A3920: .4byte gUnk_02021F30
_080A3924: .4byte gScreen
_080A3928: .4byte gUnk_020344B0
_080A392C: .4byte gMenu

	thumb_func_start sub_080A3930
sub_080A3930: @ 0x080A3930
	push {lr}
	ldr r0, _080A394C @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A3948
	movs r0, #7
	movs r1, #8
	bl DoFade
	ldr r1, _080A3950 @ =gUnk_03001000
	movs r0, #2
	strb r0, [r1, #3]
_080A3948:
	pop {pc}
	.align 2, 0
_080A394C: .4byte gFadeControl
_080A3950: .4byte gUnk_03001000

	thumb_func_start sub_080A3954
sub_080A3954: @ 0x080A3954
	ldr r2, _080A397C @ =gMenu
	ldr r1, [r2, #0xc]
	ldrb r0, [r1]
	movs r3, #0
	strb r0, [r2, #5]
	strb r3, [r2, #6]
	ldrh r0, [r1, #6]
	strh r0, [r2, #0x10]
	ldrh r0, [r1, #4]
	strh r0, [r2, #8]
	ldrh r0, [r1, #8]
	strh r0, [r2, #0x12]
	ldrh r0, [r1, #0xa]
	strh r0, [r2, #0x14]
	ldrb r0, [r1, #1]
	strb r0, [r2, #0x19]
	adds r1, #0xc
	str r1, [r2, #0xc]
	bx lr
	.align 2, 0
_080A397C: .4byte gMenu

	thumb_func_start sub_080A3980
sub_080A3980: @ 0x080A3980
	push {lr}
	ldr r0, _080A3990 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A398E
	bl DoSoftReset
_080A398E:
	pop {pc}
	.align 2, 0
_080A3990: .4byte gFadeControl

	thumb_func_start sub_080A3994
sub_080A3994: @ 0x080A3994
	push {r4, r5, lr}
	ldr r0, _080A39AC @ =gMenu
	ldrb r1, [r0, #6]
	adds r2, r0, #0
	cmp r1, #4
	bls _080A39A2
	b _080A3B14
_080A39A2:
	lsls r0, r1, #2
	ldr r1, _080A39B0 @ =_080A39B4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A39AC: .4byte gMenu
_080A39B0: .4byte _080A39B4
_080A39B4: @ jump table
	.4byte _080A39C8 @ case 0
	.4byte _080A3A38 @ case 1
	.4byte _080A3AB8 @ case 2
	.4byte _080A3AEE @ case 3
	.4byte _080A3B14 @ case 4
_080A39C8:
	movs r5, #1
	strb r5, [r2, #6]
	movs r4, #0
	movs r0, #0x1e
	strh r0, [r2, #8]
	strb r4, [r2, #3]
	movs r0, #1
	bl sub_0801DA90
	bl sub_080A3210
	bl sub_080A4D34
	movs r0, #0xa
	bl LoadPaletteGroup
	movs r0, #0
	movs r1, #0
	bl sub_0801D79C
	movs r0, #4
	bl LoadGfxGroup
	movs r0, #0xc0
	lsls r0, r0, #0x13
	movs r1, #0x20
	bl _DmaZero
	movs r0, #0
	movs r1, #0
	bl sub_08052418
	ldr r2, _080A3A2C @ =gScreen
	ldrh r0, [r2]
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _080A3A30 @ =0x00001C01
	strh r0, [r2, #0x14]
	ldr r0, _080A3A34 @ =0x00001D05
	strh r0, [r2, #0x20]
	strh r5, [r2, #0x26]
	movs r0, #4
	movs r1, #8
	bl DoFade
	b _080A3B36
	.align 2, 0
_080A3A2C: .4byte gScreen
_080A3A30: .4byte 0x00001C01
_080A3A34: .4byte 0x00001D05
_080A3A38:
	ldr r0, _080A3A50 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A3A42
	b _080A3B36
_080A3A42:
	ldrh r0, [r2, #8]
	cmp r0, #0
	beq _080A3A54
	subs r0, #1
	strh r0, [r2, #8]
	b _080A3B36
	.align 2, 0
_080A3A50: .4byte gFadeControl
_080A3A54:
	ldrb r4, [r2, #3]
	ldr r0, _080A3A68 @ =gUnk_03000FF0
	ldrh r0, [r0, #2]
	cmp r0, #0x40
	beq _080A3A72
	cmp r0, #0x40
	bgt _080A3A6C
	cmp r0, #1
	beq _080A3A7A
	b _080A3A9A
	.align 2, 0
_080A3A68: .4byte gUnk_03000FF0
_080A3A6C:
	cmp r0, #0x80
	beq _080A3A76
	b _080A3A9A
_080A3A72:
	movs r4, #0
	b _080A3A9A
_080A3A76:
	movs r4, #1
	b _080A3A9A
_080A3A7A:
	cmp r4, #0
	beq _080A3A82
	movs r0, #4
	b _080A3A8C
_080A3A82:
	movs r0, #8
	movs r1, #0
	bl sub_08050318
	movs r0, #2
_080A3A8C:
	ldr r1, _080A3AB4 @ =gMenu
	strb r0, [r1, #6]
	movs r0, #0x3c
	strh r0, [r1, #8]
	movs r0, #0x6a
	bl PlaySFX
_080A3A9A:
	ldr r1, _080A3AB4 @ =gMenu
	ldrb r0, [r1, #3]
	cmp r0, r4
	beq _080A3B36
	strb r4, [r1, #3]
	movs r0, #0
	adds r1, r4, #0
	bl sub_08052418
	movs r0, #0x69
	bl PlaySFX
	b _080A3B36
	.align 2, 0
_080A3AB4: .4byte gMenu
_080A3AB8:
	movs r0, #0
	bl sub_0807CDA4
	adds r1, r0, #0
	ldr r4, _080A3AD8 @ =gMenu
	strb r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080A3ADC
	cmp r1, #1
	bne _080A3B36
	movs r0, #4
	strb r0, [r4, #6]
	b _080A3B36
	.align 2, 0
_080A3AD8: .4byte gMenu
_080A3ADC:
	movs r0, #0x3c
	strh r0, [r4, #8]
	movs r0, #9
	movs r1, #0
	bl sub_08050318
	movs r0, #3
	strb r0, [r4, #6]
	b _080A3B36
_080A3AEE:
	adds r1, r2, #0
	ldrh r0, [r1, #8]
	cmp r0, #0
	beq _080A3AFC
	subs r0, #1
	strh r0, [r1, #8]
	b _080A3B36
_080A3AFC:
	ldr r0, _080A3B10 @ =gUnk_03000FF0
	ldrh r1, [r0, #2]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080A3B36
	movs r0, #1
	strb r0, [r2, #6]
	b _080A3B36
	.align 2, 0
_080A3B10: .4byte gUnk_03000FF0
_080A3B14:
	ldr r2, _080A3B38 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _080A3B3C @ =0x0000FDFF
	ands r0, r1
	movs r4, #0
	strh r0, [r2]
	bl sub_08050384
	movs r0, #7
	movs r1, #8
	bl DoFade
	ldr r1, _080A3B40 @ =gUnk_03001000
	movs r0, #3
	strb r0, [r1, #3]
	ldr r0, _080A3B44 @ =gMenu
	strb r4, [r0, #6]
_080A3B36:
	pop {r4, r5, pc}
	.align 2, 0
_080A3B38: .4byte gScreen
_080A3B3C: .4byte 0x0000FDFF
_080A3B40: .4byte gUnk_03001000
_080A3B44: .4byte gMenu

	thumb_func_start sub_080A3B48
sub_080A3B48: @ 0x080A3B48
	push {lr}
	movs r1, #0
	ldr r0, _080A3B6C @ =gUnk_02002A40
	ldr r3, _080A3B70 @ =0x0000012B
	adds r2, r0, r3
	ldrb r0, [r2]
	cmp r0, #0
	beq _080A3B66
_080A3B58:
	adds r1, #1
	cmp r1, #0x12
	bhi _080A3B66
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A3B58
_080A3B66:
	adds r0, r1, #0
	pop {pc}
	.align 2, 0
_080A3B6C: .4byte gUnk_02002A40
_080A3B70: .4byte 0x0000012B

	thumb_func_start sub_080A3B74
sub_080A3B74: @ 0x080A3B74
	ldr r0, _080A3B80 @ =gMenu
	adds r0, #0x2f
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_080A3B80: .4byte gMenu
