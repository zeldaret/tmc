	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08050154
sub_08050154: @ 0x08050154
	push {r4, r5, r6, lr}
	ldr r4, _08050180 @ =gUnk_03000FD0
	ldrh r0, [r4, #8]
	movs r5, #0x1c
	ands r5, r0
	movs r6, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _080501BE
	ldrh r0, [r4, #0xc]
	ldrh r1, [r4, #0xa]
	subs r0, r0, r1
	strh r0, [r4, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r4, #0xe]
	movs r3, #0xe
	ldrsh r1, [r4, r3]
	cmp r0, r1
	bgt _080501B8
	strh r2, [r4, #0xc]
	b _080501B8
	.align 2, 0
_08050180: .4byte gUnk_03000FD0
_08050184:
	mvns r0, r5
	adds r0, #1
	ands r0, r5
	eors r5, r0
	cmp r0, #8
	beq _080501A8
	cmp r0, #8
	bhi _0805019A
	cmp r0, #4
	beq _080501A0
	b _080501B8
_0805019A:
	cmp r0, #0x10
	beq _080501B0
	b _080501B8
_080501A0:
	adds r0, r4, #0
	bl sub_080501C0
	b _080501B6
_080501A8:
	adds r0, r4, #0
	bl sub_08050230
	b _080501B6
_080501B0:
	adds r0, r4, #0
	bl sub_080502A4
_080501B6:
	orrs r6, r0
_080501B8:
	cmp r5, #0
	bne _08050184
	strb r6, [r4]
_080501BE:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080501C0
sub_080501C0: @ 0x080501C0
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	ldrh r1, [r3, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080501DA
	movs r0, #0xc
	ldrsh r1, [r3, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	subs r5, r0, r1
	b _080501DE
_080501DA:
	movs r2, #0xc
	ldrsh r5, [r3, r2]
_080501DE:
	ldr r0, _080501F8 @ =gUnk_03000FD0
	ldr r2, [r0, #4]
	ldr r1, _080501FC @ =gUnk_020354C0
	movs r4, #0
	ldr r7, _08050200 @ =gUnk_0200B644
	movs r6, #1
_080501EA:
	adds r0, r2, #0
	ands r0, r6
	cmp r0, #0
	beq _08050204
	strb r6, [r1]
	strh r5, [r1, #2]
	b _08050208
	.align 2, 0
_080501F8: .4byte gUnk_03000FD0
_080501FC: .4byte gUnk_020354C0
_08050200: .4byte gUnk_0200B644
_08050204:
	strb r0, [r1]
	strh r0, [r1, #2]
_08050208:
	ldrb r0, [r3, #2]
	strb r0, [r1, #1]
	lsrs r2, r2, #1
	adds r4, #1
	adds r1, #4
	cmp r4, #0x1f
	bls _080501EA
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7]
	movs r0, #0xe
	ldrsh r1, [r3, r0]
	movs r2, #0xc
	ldrsh r0, [r3, r2]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08050230
sub_08050230: @ 0x08050230
	push {r4, r5, lr}
	ldrh r4, [r0, #8]
	ldrh r0, [r0, #0xc]
	lsls r5, r0, #0x10
	asrs r2, r5, #0x14
	movs r0, #0xf
	ands r2, r0
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq _0805024A
	movs r0, #0xf
	subs r2, r0, r2
_0805024A:
	ldr r3, _08050264 @ =gScreen
	ldr r1, _08050268 @ =gUnk_080FC3C4
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x64
	strh r1, [r0]
	cmp r5, #0
	beq _0805026C
	movs r0, #1
	b _08050298
	.align 2, 0
_08050264: .4byte gScreen
_08050268: .4byte gUnk_080FC3C4
_0805026C:
	ldr r1, _0805029C @ =gUnk_03000000
	movs r0, #0
	strb r0, [r1, #2]
	cmp r4, #0
	bne _08050296
	ldrh r2, [r3, #8]
	ldr r1, _080502A0 @ =0x0000FFBF
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3, #8]
	ldrh r2, [r3, #0x14]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3, #0x14]
	ldrh r2, [r3, #0x20]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3, #0x20]
	ldrh r0, [r3, #0x2c]
	ands r1, r0
	strh r1, [r3, #0x2c]
_08050296:
	movs r0, #0
_08050298:
	pop {r4, r5, pc}
	.align 2, 0
_0805029C: .4byte gUnk_03000000
_080502A0: .4byte 0x0000FFBF

	thumb_func_start sub_080502A4
sub_080502A4: @ 0x080502A4
	push {r4, lr}
	ldrh r1, [r0, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080502E4
	ldr r4, _080502E0 @ =gUnk_03000FD0
	ldrh r0, [r4, #0x10]
	ldrh r1, [r4, #0xa]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080502C4
	movs r0, #0
	strh r0, [r4, #0x10]
_080502C4:
	movs r1, #0x12
	ldrsh r0, [r4, r1]
	movs r2, #0x14
	ldrsh r1, [r4, r2]
	movs r3, #0x10
	ldrsh r2, [r4, r3]
	bl sub_0801E1EC
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08050314
	movs r0, #0
	b _08050316
	.align 2, 0
_080502E0: .4byte gUnk_03000FD0
_080502E4:
	ldr r4, _08050310 @ =gUnk_03000FD0
	ldrh r0, [r4, #0xa]
	ldrh r2, [r4, #0x10]
	adds r0, r0, r2
	strh r0, [r4, #0x10]
	movs r3, #0x12
	ldrsh r0, [r4, r3]
	movs r2, #0x14
	ldrsh r1, [r4, r2]
	movs r3, #0x10
	ldrsh r2, [r4, r3]
	bl sub_0801E1EC
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	cmp r0, #0x96
	ble _08050314
	bl sub_0801E104
	movs r0, #0
	b _08050316
	.align 2, 0
_08050310: .4byte gUnk_03000FD0
_08050314:
	movs r0, #1
_08050316:
	pop {r4, pc}

	thumb_func_start sub_08050318
sub_08050318: @ 0x08050318
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r6, r0, #0
	adds r4, r1, #0
	bl sub_08050384
	ldr r0, _08050374 @ =gUnk_080FC844
	mov r1, sp
	movs r2, #0x18
	bl sub_0801D66C
	ldr r1, _08050378 @ =gUnk_020227E8
	adds r0, r4, #0
	bl sub_08056FEC
	mov r2, sp
	mov r1, sp
	ldr r5, _0805037C @ =gUnk_080FC85C
	lsls r4, r6, #1
	adds r4, r4, r6
	lsls r4, r4, #1
	adds r0, r4, r5
	ldrh r0, [r0]
	lsls r0, r0, #0xc
	ldrh r1, [r1, #0x10]
	orrs r0, r1
	strh r0, [r2, #0x10]
	adds r0, r5, #2
	adds r0, r4, r0
	ldrh r0, [r0]
	mov r1, sp
	bl sub_0805F46C
	adds r5, #4
	adds r4, r4, r5
	ldrh r0, [r4]
	cmp r0, #0
	beq _08050368
	bl PlaySFX
_08050368:
	ldr r1, _08050380 @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.align 2, 0
_08050374: .4byte gUnk_080FC844
_08050378: .4byte gUnk_020227E8
_0805037C: .4byte gUnk_080FC85C
_08050380: .4byte gScreen

	thumb_func_start sub_08050384
sub_08050384: @ 0x08050384
	push {lr}
	movs r0, #0
	movs r1, #0
	bl sub_0801C4A0
	ldr r0, _080503A0 @ =gUnk_02034CB0
	movs r1, #0x80
	lsls r1, r1, #4
	bl _DmaZero
	ldr r1, _080503A4 @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
	pop {pc}
	.align 2, 0
_080503A0: .4byte gUnk_02034CB0
_080503A4: .4byte gScreen

	thumb_func_start sub_080503A8
sub_080503A8: @ 0x080503A8
	push {lr}
	bl sub_0801D7EC
	ldr r1, _080503B8 @ =gScreen
	movs r0, #1
	strh r0, [r1, #0x1a]
	strh r0, [r1, #0x26]
	pop {pc}
	.align 2, 0
_080503B8: .4byte gScreen

	thumb_func_start sub_080503BC
sub_080503BC: @ 0x080503BC
	push {r4, lr}
	ldr r1, _080503D8 @ =gUnk_02032EC0
	strb r0, [r1, #4]
	ldr r0, _080503DC @ =gUnk_02034CB0
	movs r4, #0x80
	lsls r4, r4, #4
	adds r1, r4, #0
	bl _DmaZero
	ldr r0, _080503E0 @ =gUnk_02021F30
	adds r1, r4, #0
	bl _DmaZero
	pop {r4, pc}
	.align 2, 0
_080503D8: .4byte gUnk_02032EC0
_080503DC: .4byte gUnk_02034CB0
_080503E0: .4byte gUnk_02021F30

	thumb_func_start sub_080503E4
sub_080503E4: @ 0x080503E4
	push {lr}
	adds r1, r0, #0
	cmp r1, #2
	bls _080503F2
	movs r2, #1
	movs r1, #1
	b _080503FE
_080503F2:
	ldr r0, _08050410 @ =0x000004B4
	muls r0, r1, r0
	ldr r1, _08050414 @ =gUnk_02019EEC
	adds r0, r0, r1
	ldrb r2, [r0, #2]
	ldrb r1, [r0, #3]
_080503FE:
	movs r0, #0x80
	lsls r0, r0, #0x12
	strb r2, [r0, #5]
	strb r1, [r0, #6]
	ldr r1, _08050418 @ =gUnk_0200B644
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	pop {pc}
	.align 2, 0
_08050410: .4byte 0x000004B4
_08050414: .4byte gUnk_02019EEC
_08050418: .4byte gUnk_0200B644

	thumb_func_start sub_0805041C
sub_0805041C: @ 0x0805041C
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #2
	bhi _0805043A
	movs r0, #0x80
	lsls r0, r0, #0x12
	strb r4, [r0, #4]
	ldr r2, _08050444 @ =0x000004B4
	adds r0, r4, #0
	muls r0, r2, r0
	ldr r1, _08050448 @ =gUnk_02019EEC
	adds r0, r0, r1
	ldr r1, _0805044C @ =gUnk_02002A40
	bl sub_0801D66C
_0805043A:
	adds r0, r4, #0
	bl sub_080503E4
	pop {r4, pc}
	.align 2, 0
_08050444: .4byte 0x000004B4
_08050448: .4byte gUnk_02019EEC
_0805044C: .4byte gUnk_02002A40

	thumb_func_start sub_08050450
sub_08050450: @ 0x08050450
	push {r4, lr}
	bl sub_080AD90C
	ldr r1, _080504D8 @ =gUnk_080FC8A4
	ldr r0, _080504DC @ =gUnk_03001000
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldr r4, _080504E0 @ =gUnk_02032EC0
	ldrb r1, [r4, #4]
	ldrb r0, [r4, #2]
	cmp r0, r1
	beq _0805048A
	movs r0, #0
	strb r1, [r4, #2]
	ldr r1, _080504E4 @ =gScreen
	strh r0, [r1, #0xa]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0x16]
	strh r0, [r1, #0x18]
	strh r0, [r1, #0x22]
	strh r0, [r1, #0x24]
	ldr r0, _080504E8 @ =gMenu
	movs r1, #0x30
	bl _DmaZero
_0805048A:
	bl sub_080507FC
	ldr r1, _080504EC @ =gUnk_080FC8B0
	ldrb r0, [r4, #2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldr r4, _080504F0 @ =gUnk_02019EE0
	movs r0, #0
	strb r0, [r4]
	bl sub_0805E5C0
	bl sub_0805066C
	bl sub_0801C1D4
	bl sub_0801C208
	bl sub_080AD9B0
	bl sub_080AD918
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r1, [r0, #7]
	ldrb r0, [r4, #3]
	cmp r0, r1
	beq _080504D4
	strb r1, [r4, #3]
	movs r0, #6
	bl sub_080503A8
	movs r0, #0xf
	bl sub_080503A8
_080504D4:
	pop {r4, pc}
	.align 2, 0
_080504D8: .4byte gUnk_080FC8A4
_080504DC: .4byte gUnk_03001000
_080504E0: .4byte gUnk_02032EC0
_080504E4: .4byte gScreen
_080504E8: .4byte gMenu
_080504EC: .4byte gUnk_080FC8B0
_080504F0: .4byte gUnk_02019EE0

	thumb_func_start sub_080504F4
sub_080504F4: @ 0x080504F4
	push {r4, lr}
	movs r0, #1
	bl sub_0801DA90
	bl sub_080A3210
	movs r0, #0xc0
	lsls r0, r0, #0x13
	movs r1, #0x80
	bl _DmaZero
	bl sub_08056418
	bl EraseAllEntities
	bl sub_08080668
	bl sub_080ADD30
	movs r0, #0
	bl sub_0801CFA8
	ldr r0, _080505DC @ =gUnk_0200AF00
	movs r1, #0xcd
	lsls r1, r1, #2
	bl _DmaZero
	ldr r4, _080505E0 @ =gUnk_02019EE0
	ldr r1, _080505E4 @ =0x00000E28
	adds r0, r4, #0
	bl _DmaZero
	movs r0, #7
	strb r0, [r4, #3]
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	movs r1, #0
	cmp r0, #1
	bls _08050546
	movs r1, #3
_08050546:
	strb r1, [r4, #6]
	ldr r4, _080505E8 @ =gUnk_02032EC0
	movs r1, #0xed
	lsls r1, r1, #2
	adds r0, r4, #0
	bl _DmaZero
	movs r0, #8
	strb r0, [r4, #2]
	movs r0, #0
	bl sub_080503BC
	bl sub_0805616C
	movs r0, #0
	bl sub_08050624
	movs r0, #1
	bl sub_08050624
	movs r0, #2
	bl sub_08050624
	bl sub_08056208
	movs r0, #5
	bl sub_080503A8
	movs r0, #9
	bl LoadPalettesByPaletteGroupIndex
	movs r4, #0
_08050586:
	movs r0, #0x48
	adds r1, r4, #0
	movs r2, #0
	bl CreateObject
	adds r4, #1
	cmp r4, #0x19
	bls _08050586
	ldr r0, _080505EC @ =gUnk_080FC8D0
	bl sub_080A70AC
	bl sub_080507FC
	ldr r1, _080505F0 @ =gScreen
	ldrh r2, [r1]
	movs r3, #0xf8
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _080505F4 @ =0x00001E0B
	strh r0, [r1, #0x2c]
	adds r2, r1, #0
	adds r2, #0x66
	ldr r0, _080505F8 @ =0x00000844
	strh r0, [r2]
	adds r1, #0x68
	ldr r0, _080505FC @ =0x00000A0F
	strh r0, [r1]
	ldr r0, _08050600 @ =gUnk_02024490
	movs r1, #1
	strb r1, [r0]
	ldr r0, _08050604 @ =gUnk_03001000
	strb r1, [r0, #3]
	movs r0, #7
	bl PlaySFX
	movs r0, #4
	movs r1, #8
	bl DoFade
	pop {r4, pc}
	.align 2, 0
_080505DC: .4byte gUnk_0200AF00
_080505E0: .4byte gUnk_02019EE0
_080505E4: .4byte 0x00000E28
_080505E8: .4byte gUnk_02032EC0
_080505EC: .4byte gUnk_080FC8D0
_080505F0: .4byte gScreen
_080505F4: .4byte 0x00001E0B
_080505F8: .4byte 0x00000844
_080505FC: .4byte 0x00000A0F
_08050600: .4byte gUnk_02024490
_08050604: .4byte gUnk_03001000

	thumb_func_start nullsub_479
nullsub_479: @ 0x08050608
	bx lr
	.align 2, 0

	thumb_func_start sub_0805060C
sub_0805060C: @ 0x0805060C
	push {lr}
	ldr r0, _08050620 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805061C
	movs r0, #2
	bl InitScreen
_0805061C:
	pop {pc}
	.align 2, 0
_08050620: .4byte gUnk_03000FD0

	thumb_func_start sub_08050624
sub_08050624: @ 0x08050624
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08050648 @ =0x000004B4
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _0805064C @ =gUnk_02019EEC
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_0807CF28
	adds r5, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	beq _08050650
	cmp r5, #0
	beq _08050656
	b _0805065C
	.align 2, 0
_08050648: .4byte 0x000004B4
_0805064C: .4byte gUnk_02019EEC
_08050650:
	adds r0, r4, #0
	bl sub_0807CF48
_08050656:
	adds r0, r4, #0
	bl sub_0805194C
_0805065C:
	ldr r0, _08050668 @ =gUnk_02019EE0
	adds r0, #8
	adds r0, r4, r0
	strb r5, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_08050668: .4byte gUnk_02019EE0

	thumb_func_start sub_0805066C
sub_0805066C: @ 0x0805066C
	push {r4, lr}
	movs r1, #0
	ldr r4, _080506F0 @ =gUnk_02019EE0
	ldrb r0, [r4, #1]
	subs r0, #1
	strb r0, [r4, #1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08050690
	movs r0, #0x10
	strb r0, [r4, #1]
	ldrb r0, [r4, #2]
	adds r0, #1
	movs r1, #0xf
	bl __modsi3
	strb r0, [r4, #2]
	movs r1, #1
_08050690:
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _080506AA
	movs r0, #1
	strb r0, [r4, #2]
	bl Random
	movs r1, #7
	ands r1, r0
	lsls r1, r1, #4
	adds r1, #8
	strb r1, [r4, #1]
	movs r1, #1
_080506AA:
	cmp r1, #0
	beq _080506EE
	ldr r1, _080506F4 @ =gUnk_080FC8DE
	ldrb r0, [r4, #2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r4, [r0]
	ldr r0, _080506F8 @ =gUnk_085A2E80
	adds r4, r4, r0
	ldr r1, _080506FC @ =0x00011AA0
	adds r0, r4, r1
	movs r1, #0xb
	movs r2, #1
	bl sub_0801D754
	ldr r1, _08050700 @ =0x00011BA0
	adds r0, r4, r1
	movs r1, #0xc
	movs r2, #1
	bl sub_0801D754
	ldr r1, _08050704 @ =0x00011CA0
	adds r0, r4, r1
	movs r1, #0xd
	movs r2, #1
	bl sub_0801D754
	ldr r0, _08050708 @ =0x00011DA0
	adds r4, r4, r0
	adds r0, r4, #0
	movs r1, #0xe
	movs r2, #1
	bl sub_0801D754
_080506EE:
	pop {r4, pc}
	.align 2, 0
_080506F0: .4byte gUnk_02019EE0
_080506F4: .4byte gUnk_080FC8DE
_080506F8: .4byte gUnk_085A2E80
_080506FC: .4byte 0x00011AA0
_08050700: .4byte 0x00011BA0
_08050704: .4byte 0x00011CA0
_08050708: .4byte 0x00011DA0

	thumb_func_start sub_0805070C
sub_0805070C: @ 0x0805070C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_0805F2C8
	adds r5, r0, #0
	cmp r5, #0
	beq _0805077A
	movs r0, #0
	strb r0, [r5, #2]
	movs r0, #5
	strb r0, [r5, #3]
	movs r0, #1
	strb r0, [r5, #1]
	movs r0, #0x30
	strh r0, [r5, #4]
	ldr r0, _08050780 @ =gUnk_02000D00
	str r0, [r5, #8]
	movs r6, #0
_08050732:
	movs r0, #0
	strh r0, [r5, #6]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	bl _DmaZero
	ldr r0, _08050784 @ =0x000004B4
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _08050788 @ =gUnk_02019F6C
	adds r7, r1, r0
	movs r4, #0
	lsls r0, r6, #9
	mov r8, r0
	adds r6, #1
_08050752:
	adds r0, r7, r4
	ldrb r0, [r0]
	adds r1, r5, #0
	bl sub_0805F7DC
	adds r4, #1
	cmp r4, #5
	ble _08050752
	ldr r0, [r5, #8]
	ldr r1, _0805078C @ =0x06014000
	add r1, r8
	movs r2, #0x80
	lsls r2, r2, #2
	bl sub_0801D66C
	cmp r6, #2
	bls _08050732
	adds r0, r5, #0
	bl sub_0805F300
_0805077A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08050780: .4byte gUnk_02000D00
_08050784: .4byte 0x000004B4
_08050788: .4byte gUnk_02019F6C
_0805078C: .4byte 0x06014000

	thumb_func_start sub_08050790
sub_08050790: @ 0x08050790
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_0805F2C8
	adds r6, r0, #0
	cmp r6, #0
	beq _080507F0
	movs r0, #0
	strb r0, [r6, #2]
	movs r0, #5
	strb r0, [r6, #3]
	movs r0, #1
	strb r0, [r6, #1]
	movs r0, #0x80
	strh r0, [r6, #4]
	ldr r0, _080507F8 @ =gUnk_02000D00
	str r0, [r6, #8]
	movs r1, #0
_080507B6:
	movs r0, #0
	strh r0, [r6, #6]
	lsls r4, r1, #4
	movs r5, #0
	lsls r7, r1, #0xa
	adds r1, #1
	mov r8, r1
_080507C4:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0805F7DC
	adds r4, #1
	adds r5, #1
	cmp r5, #0xf
	bls _080507C4
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r7, r0
	ldr r0, _080507F8 @ =gUnk_02000D00
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_0801D66C
	mov r1, r8
	cmp r1, #0xf
	bls _080507B6
	adds r0, r6, #0
	bl sub_0805F300
_080507F0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080507F8: .4byte gUnk_02000D00

	thumb_func_start sub_080507FC
sub_080507FC: @ 0x080507FC
	ldr r0, _0805080C @ =gUnk_0200AF00
	movs r1, #0xa0
	lsls r1, r1, #1
	strh r1, [r0, #0x1a]
	movs r1, #0x24
	strh r1, [r0, #0x20]
	bx lr
	.align 2, 0
_0805080C: .4byte gUnk_0200AF00

	thumb_func_start sub_08050810
sub_08050810: @ 0x08050810
	ldr r0, _0805081C @ =gUnk_0200AF00
	movs r1, #0xd0
	strh r1, [r0, #0x1a]
	movs r1, #0x24
	strh r1, [r0, #0x20]
	bx lr
	.align 2, 0
_0805081C: .4byte gUnk_0200AF00

	thumb_func_start sub_08050820
sub_08050820: @ 0x08050820
	push {lr}
	ldr r1, _0805083C @ =gUnk_080FC8FC
	ldr r0, _08050840 @ =gMenu
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldr r0, _08050844 @ =gUnk_02019EE0
	ldrb r0, [r0, #6]
	bl sub_08050A64
	pop {pc}
	.align 2, 0
_0805083C: .4byte gUnk_080FC8FC
_08050840: .4byte gMenu
_08050844: .4byte gUnk_02019EE0

	thumb_func_start sub_08050848
sub_08050848: @ 0x08050848
	push {lr}
	movs r0, #7
	bl sub_080503A8
	bl sub_0805070C
	ldr r0, _08050868 @ =gUnk_02019EE0
	movs r1, #0
	strb r1, [r0, #7]
	ldrb r0, [r0, #6]
	bl sub_08050AFC
	movs r0, #1
	bl sub_080A7114
	pop {pc}
	.align 2, 0
_08050868: .4byte gUnk_02019EE0

	thumb_func_start sub_0805086C
sub_0805086C: @ 0x0805086C
	push {lr}
	ldr r1, _08050880 @ =gUnk_080FC908
	ldr r0, _08050884 @ =gMenu
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08050880: .4byte gUnk_080FC908
_08050884: .4byte gMenu

	thumb_func_start sub_08050888
sub_08050888: @ 0x08050888
	push {r4, lr}
	ldr r0, _080508C4 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080508DC
	ldr r4, _080508C8 @ =gUnk_02019EE0
	ldrb r1, [r4, #7]
	adds r0, r4, #0
	adds r0, #8
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080508D0
	cmp r0, #1
	beq _080508D6
	adds r0, r1, #0
	bl sub_0805194C
	ldrb r1, [r4, #7]
	adds r1, #1
	movs r0, #0
	bl sub_08050318
	ldr r1, _080508CC @ =gMenu
	movs r0, #0x1e
	strh r0, [r1, #8]
	movs r0, #1
	b _080508DA
	.align 2, 0
_080508C4: .4byte gUnk_03000FD0
_080508C8: .4byte gUnk_02019EE0
_080508CC: .4byte gMenu
_080508D0:
	adds r0, r1, #0
	bl sub_0805194C
_080508D6:
	ldr r1, _080508E0 @ =gMenu
	movs r0, #2
_080508DA:
	strb r0, [r1, #6]
_080508DC:
	pop {r4, pc}
	.align 2, 0
_080508E0: .4byte gMenu

	thumb_func_start sub_080508E4
sub_080508E4: @ 0x080508E4
	push {lr}
	ldr r2, _08050900 @ =gMenu
	ldrh r0, [r2, #8]
	cmp r0, #0
	bne _08050908
	ldr r0, _08050904 @ =gUnk_03000FF0
	ldrh r1, [r0, #2]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0805090C
	movs r0, #2
	strb r0, [r2, #6]
	b _0805090C
	.align 2, 0
_08050900: .4byte gMenu
_08050904: .4byte gUnk_03000FF0
_08050908:
	subs r0, #1
	strh r0, [r2, #8]
_0805090C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08050910
sub_08050910: @ 0x08050910
	push {lr}
	bl sub_08050384
	ldr r1, _08050930 @ =gUnk_02019EE0
	ldrb r0, [r1, #7]
	adds r0, #1
	strb r0, [r1, #7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08050934
	movs r0, #2
	bl sub_080A7114
	b _0805093A
	.align 2, 0
_08050930: .4byte gUnk_02019EE0
_08050934:
	ldr r1, _0805093C @ =gMenu
	movs r0, #0
	strb r0, [r1, #6]
_0805093A:
	pop {pc}
	.align 2, 0
_0805093C: .4byte gMenu

	thumb_func_start sub_08050940
sub_08050940: @ 0x08050940
	push {r4, r5, r6, lr}
	ldr r3, _0805099C @ =gUnk_02019EE0
	ldrb r0, [r3]
	cmp r0, #0
	beq _0805094C
	b _08050A58
_0805094C:
	ldrb r4, [r3, #6]
	ldr r0, _080509A0 @ =gUnk_03000FF0
	ldrh r2, [r0, #2]
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08050974
	adds r0, r3, #0
	adds r0, #8
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08050974
	movs r0, #0xc1
	rsbs r0, r0, #0
	ands r2, r0
_08050974:
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	movs r6, #3
	cmp r0, #1
	bls _08050982
	movs r6, #4
_08050982:
	ldr r0, _080509A4 @ =gUnk_02032EC0
	ldrb r5, [r0, #2]
	adds r1, r0, #0
	cmp r2, #0x40
	beq _080509B6
	cmp r2, #0x40
	bhi _080509A8
	cmp r2, #1
	beq _080509E0
	cmp r2, #8
	beq _080509E0
	b _08050A10
	.align 2, 0
_0805099C: .4byte gUnk_02019EE0
_080509A0: .4byte gUnk_03000FF0
_080509A4: .4byte gUnk_02032EC0
_080509A8:
	cmp r2, #0x80
	beq _080509BE
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	beq _080509C8
	b _08050A10
_080509B6:
	cmp r4, #0
	ble _08050A10
	subs r4, #1
	b _08050A10
_080509BE:
	subs r0, r6, #1
	cmp r0, r4
	ble _08050A10
	adds r4, #1
	b _08050A10
_080509C8:
	ldr r0, _080509DC @ =gUnk_02019EE0
	adds r0, #8
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08050A10
	movs r5, #3
	b _08050A10
	.align 2, 0
_080509DC: .4byte gUnk_02019EE0
_080509E0:
	adds r0, r4, #0
	bl sub_0805041C
	cmp r4, #3
	bne _080509EE
	movs r5, #2
	b _08050A0E
_080509EE:
	ldr r0, _08050A04 @ =gUnk_02019EE0
	adds r0, #8
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08050A08
	cmp r0, #1
	beq _08050A0C
	b _08050A0E
	.align 2, 0
_08050A04: .4byte gUnk_02019EE0
_08050A08:
	movs r5, #1
	b _08050A0E
_08050A0C:
	movs r5, #4
_08050A0E:
	ldr r1, _08050A5C @ =gUnk_02032EC0
_08050A10:
	ldrb r0, [r1, #2]
	cmp r0, r5
	beq _08050A22
	adds r0, r5, #0
	bl sub_080503BC
	movs r0, #0x6a
	bl PlaySFX
_08050A22:
	adds r0, r4, r6
	adds r1, r6, #0
	bl __modsi3
	adds r4, r0, #0
	ldr r5, _08050A60 @ =gUnk_02019EE0
	ldrb r0, [r5, #6]
	cmp r0, r4
	beq _08050A42
	strb r4, [r5, #6]
	adds r0, r4, #0
	bl sub_08050AFC
	movs r0, #0x69
	bl PlaySFX
_08050A42:
	adds r0, r5, #0
	adds r0, #8
	ldrb r5, [r5, #6]
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08050A58
	bl sub_08050810
_08050A58:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08050A5C: .4byte gUnk_02032EC0
_08050A60: .4byte gUnk_02019EE0

	thumb_func_start sub_08050A64
sub_08050A64: @ 0x08050A64
	push {r4, lr}
	ldr r1, _08050AF0 @ =gUnk_02019EE0
	adds r1, #8
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08050AEC
	ldr r4, _08050AF4 @ =gUnk_03001010
	movs r0, #0
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #8]
	movs r0, #0x40
	bl GetInventoryValue
	cmp r0, #0
	beq _08050A9E
	movs r0, #0xa2
	strh r0, [r4]
	movs r0, #0x36
	strh r0, [r4, #2]
	ldr r0, _08050AF8 @ =0x00000145
	movs r1, #0x24
	bl sub_080ADA14
_08050A9E:
	movs r0, #0x41
	bl GetInventoryValue
	cmp r0, #0
	beq _08050AB8
	movs r0, #0x96
	strh r0, [r4]
	movs r0, #0x3d
	strh r0, [r4, #2]
	ldr r0, _08050AF8 @ =0x00000145
	movs r1, #0x22
	bl sub_080ADA14
_08050AB8:
	movs r0, #0x42
	bl GetInventoryValue
	cmp r0, #0
	beq _08050AD2
	movs r0, #0xae
	strh r0, [r4]
	movs r0, #0x3d
	strh r0, [r4, #2]
	ldr r0, _08050AF8 @ =0x00000145
	movs r1, #0x23
	bl sub_080ADA14
_08050AD2:
	movs r0, #0x43
	bl GetInventoryValue
	cmp r0, #0
	beq _08050AEC
	movs r0, #0xa2
	strh r0, [r4]
	movs r0, #0x44
	strh r0, [r4, #2]
	ldr r0, _08050AF8 @ =0x00000145
	movs r1, #0x21
	bl sub_080ADA14
_08050AEC:
	pop {r4, pc}
	.align 2, 0
_08050AF0: .4byte gUnk_02019EE0
_08050AF4: .4byte gUnk_03001010
_08050AF8: .4byte 0x00000145

	thumb_func_start sub_08050AFC
sub_08050AFC: @ 0x08050AFC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0805041C
	ldr r5, _08050B30 @ =gUnk_02021F30
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r5, #0
	bl _DmaZero
	ldr r0, _08050B34 @ =gUnk_02019EE0
	adds r0, #8
	adds r4, r4, r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #1
	bne _08050B28
	movs r1, #0xa7
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08050B3C
_08050B28:
	ldr r1, _08050B38 @ =gScreen
	movs r0, #1
	strh r0, [r1, #0x1a]
	pop {r4, r5, pc}
	.align 2, 0
_08050B30: .4byte gUnk_02021F30
_08050B34: .4byte gUnk_02019EE0
_08050B38: .4byte gScreen

	thumb_func_start sub_08050B3C
sub_08050B3C: @ 0x08050B3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	ldr r1, _08050C18 @ =gUnk_02002A40
	adds r0, r1, #0
	adds r0, #0xaa
	ldrb r0, [r0]
	lsrs r2, r0, #1
	cmp r2, #0
	bne _08050B5A
	movs r2, #1
_08050B5A:
	adds r0, r1, #0
	adds r0, #0xab
	ldrb r0, [r0]
	lsrs r3, r0, #1
	cmp r3, #0
	beq _08050C0A
	cmp r2, r3
	ble _08050B6C
	adds r2, r3, #0
_08050B6C:
	movs r0, #3
	ands r0, r2
	str r0, [sp, #4]
	adds r0, r2, #0
	asrs r5, r0, #2
	mov ip, r5
	cmp r5, #0xa
	ble _08050B80
	movs r2, #0xa
	mov ip, r2
_08050B80:
	adds r6, r5, #0
	subs r6, #0xa
	mov sb, r6
	cmp r6, #0
	bge _08050B8E
	movs r7, #0
	mov sb, r7
_08050B8E:
	adds r0, r3, #0
	asrs r3, r0, #2
	adds r0, r3, #0
	cmp r3, #0xa
	ble _08050B9A
	movs r3, #0xa
_08050B9A:
	adds r4, r0, #0
	subs r4, #0xa
	ldr r2, [sp]
	ldr r0, _08050C1C @ =0x0000F24C
	mov sl, r0
	strh r0, [r2]
	ldr r1, _08050C20 @ =0x040000D4
	movs r7, #0xa
	mov r8, r7
	mov r0, r8
	mov r7, ip
	subs r0, r0, r7
	lsls r0, r0, #1
	ldr r7, _08050C24 @ =gUnk_080FC914
	mov ip, r7
	add r0, ip
	str r0, [r1]
	adds r0, r2, #2
	str r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r3, r0
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	cmp r4, #0
	ble _08050BEE
	adds r2, #0x40
	mov r3, sl
	strh r3, [r2]
	mov r7, r8
	mov r3, sb
	subs r0, r7, r3
	lsls r0, r0, #1
	add r0, ip
	str r0, [r1]
	adds r0, r2, #2
	str r0, [r1, #4]
	movs r7, #0x80
	lsls r7, r7, #0x18
	orrs r4, r7
	str r4, [r1, #8]
	ldr r0, [r1, #8]
_08050BEE:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _08050C0A
	ldr r2, [sp]
	cmp r5, #9
	ble _08050BFE
	adds r5, r6, #0
	adds r2, #0x40
_08050BFE:
	lsls r0, r5, #1
	adds r0, r0, r2
	ldr r2, [sp, #4]
	ldr r3, _08050C28 @ =0xFFFFF24D
	adds r1, r2, r3
	strh r1, [r0, #2]
_08050C0A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08050C18: .4byte gUnk_02002A40
_08050C1C: .4byte 0x0000F24C
_08050C20: .4byte 0x040000D4
_08050C24: .4byte gUnk_080FC914
_08050C28: .4byte 0xFFFFF24D

	thumb_func_start sub_08050C2C
sub_08050C2C: @ 0x08050C2C
	push {lr}
	ldr r1, _08050C48 @ =gUnk_080FC93C
	ldr r0, _08050C4C @ =gMenu
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldr r0, _08050C50 @ =gUnk_02019EE0
	ldrb r0, [r0, #6]
	bl sub_08050A64
	pop {pc}
	.align 2, 0
_08050C48: .4byte gUnk_080FC93C
_08050C4C: .4byte gMenu
_08050C50: .4byte gUnk_02019EE0

	thumb_func_start sub_08050C54
sub_08050C54: @ 0x08050C54
	push {r4, lr}
	ldr r0, _08050C78 @ =gUnk_02019EE0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08050C60
	b _08050D60
_08050C60:
	ldr r0, _08050C7C @ =gMenu
	ldrb r4, [r0, #1]
	ldr r0, _08050C80 @ =gUnk_03000FF0
	ldrh r0, [r0, #2]
	subs r0, #1
	cmp r0, #0x1f
	bhi _08050D44
	lsls r0, r0, #2
	ldr r1, _08050C84 @ =_08050C88
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08050C78: .4byte gUnk_02019EE0
_08050C7C: .4byte gMenu
_08050C80: .4byte gUnk_03000FF0
_08050C84: .4byte _08050C88
_08050C88: @ jump table
	.4byte _08050D08 @ case 0
	.4byte _08050D30 @ case 1
	.4byte _08050D44 @ case 2
	.4byte _08050D44 @ case 3
	.4byte _08050D44 @ case 4
	.4byte _08050D44 @ case 5
	.4byte _08050D44 @ case 6
	.4byte _08050D08 @ case 7
	.4byte _08050D44 @ case 8
	.4byte _08050D44 @ case 9
	.4byte _08050D44 @ case 10
	.4byte _08050D44 @ case 11
	.4byte _08050D44 @ case 12
	.4byte _08050D44 @ case 13
	.4byte _08050D44 @ case 14
	.4byte _08050D42 @ case 15
	.4byte _08050D44 @ case 16
	.4byte _08050D44 @ case 17
	.4byte _08050D44 @ case 18
	.4byte _08050D44 @ case 19
	.4byte _08050D44 @ case 20
	.4byte _08050D44 @ case 21
	.4byte _08050D44 @ case 22
	.4byte _08050D44 @ case 23
	.4byte _08050D44 @ case 24
	.4byte _08050D44 @ case 25
	.4byte _08050D44 @ case 26
	.4byte _08050D44 @ case 27
	.4byte _08050D44 @ case 28
	.4byte _08050D44 @ case 29
	.4byte _08050D44 @ case 30
	.4byte _08050D3E @ case 31
_08050D08:
	cmp r4, #0
	bne _08050D12
	ldr r0, _08050D28 @ =0x80080000
	bl PlaySFX
_08050D12:
	ldr r1, _08050D2C @ =gMenu
	movs r0, #0xf
	strh r0, [r1, #8]
	movs r0, #1
	bl sub_080A7114
	movs r0, #0x6a
	bl PlaySFX
	b _08050D44
	.align 2, 0
_08050D28: .4byte 0x80080000
_08050D2C: .4byte gMenu
_08050D30:
	movs r0, #0x6c
	bl PlaySFX
	movs r0, #0
	bl sub_080503BC
	b _08050D44
_08050D3E:
	subs r4, #1
	b _08050D44
_08050D42:
	adds r4, #1
_08050D44:
	cmp r4, #0
	bge _08050D4A
	movs r4, #0
_08050D4A:
	cmp r4, #2
	ble _08050D50
	movs r4, #2
_08050D50:
	ldr r1, _08050D64 @ =gMenu
	ldrb r0, [r1, #1]
	cmp r0, r4
	beq _08050D60
	strb r4, [r1, #1]
	movs r0, #0x69
	bl PlaySFX
_08050D60:
	pop {r4, pc}
	.align 2, 0
_08050D64: .4byte gMenu

	thumb_func_start sub_08050D68
sub_08050D68: @ 0x08050D68
	push {lr}
	ldr r1, _08050D84 @ =gMenu
	ldrh r0, [r1, #8]
	cmp r0, #0
	bne _08050D94
	ldrb r0, [r1, #1]
	cmp r0, #1
	beq _08050D88
	cmp r0, #1
	ble _08050D80
	cmp r0, #2
	beq _08050D8C
_08050D80:
	movs r0, #7
	b _08050D8E
	.align 2, 0
_08050D84: .4byte gMenu
_08050D88:
	movs r0, #5
	b _08050D8E
_08050D8C:
	movs r0, #6
_08050D8E:
	bl sub_080503BC
	b _08050D98
_08050D94:
	subs r0, #1
	strh r0, [r1, #8]
_08050D98:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08050D9C
sub_08050D9C: @ 0x08050D9C
	push {lr}
	ldr r1, _08050DB0 @ =gUnk_080FC944
	ldr r0, _08050DB4 @ =gMenu
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08050DB0: .4byte gUnk_080FC944
_08050DB4: .4byte gMenu

	thumb_func_start sub_08050DB8
sub_08050DB8: @ 0x08050DB8
	push {lr}
	ldr r0, _08050DDC @ =gUnk_020344B0
	movs r1, #0x80
	lsls r1, r1, #4
	bl _DmaZero
	movs r0, #0xc
	bl sub_080503A8
	ldr r1, _08050DE0 @ =gMenu
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	strb r0, [r1, #4]
	movs r0, #1
	bl sub_080A7114
	pop {pc}
	.align 2, 0
_08050DDC: .4byte gUnk_020344B0
_08050DE0: .4byte gMenu

	thumb_func_start sub_08050DE4
sub_08050DE4: @ 0x08050DE4
	push {r4, lr}
	ldr r0, _08050E0C @ =gUnk_02019EE0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08050E80
	movs r1, #0x80
	lsls r1, r1, #0x12
	ldrb r4, [r1, #7]
	ldr r0, _08050E10 @ =gUnk_03000FF0
	ldrh r0, [r0, #2]
	cmp r0, #8
	beq _08050E26
	cmp r0, #8
	bgt _08050E14
	cmp r0, #1
	beq _08050E26
	cmp r0, #2
	beq _08050E50
	b _08050E62
	.align 2, 0
_08050E0C: .4byte gUnk_02019EE0
_08050E10: .4byte gUnk_03000FF0
_08050E14:
	cmp r0, #0x40
	beq _08050E1E
	cmp r0, #0x80
	beq _08050E22
	b _08050E62
_08050E1E:
	subs r4, #1
	b _08050E62
_08050E22:
	adds r4, #1
	b _08050E62
_08050E26:
	movs r0, #0x6a
	bl PlaySFX
	ldr r0, _08050E44 @ =gMenu
	ldrb r0, [r0, #4]
	cmp r0, r4
	beq _08050E48
	movs r0, #2
	bl sub_080A7114
	movs r0, #8
	movs r1, #0
	bl sub_08050318
	b _08050E62
	.align 2, 0
_08050E44: .4byte gMenu
_08050E48:
	movs r0, #0
	bl sub_080503BC
	b _08050E62
_08050E50:
	ldr r0, _08050E84 @ =gMenu
	ldrb r4, [r0, #4]
	strb r4, [r1, #7]
	movs r0, #0x6c
	bl PlaySFX
	movs r0, #0
	bl sub_080503BC
_08050E62:
	cmp r4, #1
	bgt _08050E68
	movs r4, #2
_08050E68:
	cmp r4, #6
	ble _08050E6E
	movs r4, #6
_08050E6E:
	movs r1, #0x80
	lsls r1, r1, #0x12
	ldrb r0, [r1, #7]
	cmp r0, r4
	beq _08050E80
	strb r4, [r1, #7]
	movs r0, #0x69
	bl PlaySFX
_08050E80:
	pop {r4, pc}
	.align 2, 0
_08050E84: .4byte gMenu

	thumb_func_start sub_08050E88
sub_08050E88: @ 0x08050E88
	push {lr}
	movs r0, #2
	bl sub_0807CDA4
	cmp r0, #0
	beq _08050E9A
	movs r0, #0
	bl sub_080503BC
_08050E9A:
	pop {pc}

	thumb_func_start sub_08050E9C
sub_08050E9C: @ 0x08050E9C
	push {lr}
	ldr r1, _08050EB0 @ =gUnk_080FC950
	ldr r0, _08050EB4 @ =gMenu
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08050EB0: .4byte gUnk_080FC950
_08050EB4: .4byte gMenu

	thumb_func_start sub_08050EB8
sub_08050EB8: @ 0x08050EB8
	push {lr}
	movs r0, #0xe
	bl sub_080503A8
	ldr r2, _08050EE8 @ =gUnk_02019EE0
	ldrb r1, [r2, #6]
	ldr r0, _08050EEC @ =0x000004B4
	muls r1, r0, r1
	adds r0, r2, #0
	adds r0, #0xc
	adds r1, r1, r0
	ldrb r0, [r1, #2]
	movs r3, #0
	strb r0, [r2, #4]
	ldrb r0, [r1, #3]
	strb r0, [r2, #5]
	ldr r1, _08050EF0 @ =gMenu
	strb r3, [r1, #1]
	movs r0, #0xff
	strh r0, [r1, #8]
	movs r0, #1
	bl sub_080A7114
	pop {pc}
	.align 2, 0
_08050EE8: .4byte gUnk_02019EE0
_08050EEC: .4byte 0x000004B4
_08050EF0: .4byte gMenu

	thumb_func_start sub_08050EF4
sub_08050EF4: @ 0x08050EF4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08050F40 @ =gUnk_02019EE0
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	bne _08050FF4
	ldrb r1, [r6, #6]
	ldr r0, _08050F44 @ =0x000004B4
	muls r1, r0, r1
	adds r0, r6, #0
	adds r0, #0xc
	adds r1, r1, r0
	ldr r0, _08050F48 @ =gMenu
	ldrb r3, [r0, #1]
	adds r4, r1, #3
	mov ip, r0
	cmp r3, #0
	bne _08050F1E
	adds r4, r1, #2
_08050F1E:
	ldrb r2, [r4]
	movs r5, #0
	ldr r0, _08050F4C @ =gUnk_03000FF0
	ldrh r0, [r0, #2]
	mov r8, r2
	cmp r0, #0x10
	beq _08050F7A
	cmp r0, #0x10
	bgt _08050F56
	cmp r0, #2
	beq _08050F8C
	cmp r0, #2
	bgt _08050F50
	cmp r0, #1
	beq _08050F82
	b _08050F8E
	.align 2, 0
_08050F40: .4byte gUnk_02019EE0
_08050F44: .4byte 0x000004B4
_08050F48: .4byte gMenu
_08050F4C: .4byte gUnk_03000FF0
_08050F50:
	cmp r0, #8
	beq _08050F82
	b _08050F8E
_08050F56:
	cmp r0, #0x40
	beq _08050F6A
	cmp r0, #0x40
	bgt _08050F64
	cmp r0, #0x20
	beq _08050F72
	b _08050F8E
_08050F64:
	cmp r0, #0x80
	beq _08050F6E
	b _08050F8E
_08050F6A:
	movs r3, #0
	b _08050F8E
_08050F6E:
	movs r3, #1
	b _08050F8E
_08050F72:
	cmp r2, #0
	beq _08050F8E
	subs r2, #1
	b _08050F8E
_08050F7A:
	cmp r2, #1
	bhi _08050F8E
	adds r2, #1
	b _08050F8E
_08050F82:
	ldrh r0, [r6, #4]
	movs r5, #2
	ldrh r7, [r1, #2]
	cmp r0, r7
	bne _08050F8E
_08050F8C:
	movs r5, #3
_08050F8E:
	cmp r5, #0
	beq _08050FD0
	cmp r5, #2
	beq _08050F9C
	cmp r5, #3
	beq _08050FAC
	b _08050FBA
_08050F9C:
	movs r0, #8
	movs r1, #0
	bl sub_08050318
	movs r0, #0x6a
	bl PlaySFX
	b _08050FBA
_08050FAC:
	ldrb r0, [r6, #4]
	strb r0, [r1, #2]
	ldrb r0, [r6, #5]
	strb r0, [r1, #3]
	movs r0, #0x6c
	bl PlaySFX
_08050FBA:
	adds r0, r5, #0
	bl sub_080A7114
	ldr r0, _08050FCC @ =gUnk_02019EE0
	ldrb r0, [r0, #6]
	bl sub_0805041C
	b _08050FF4
	.align 2, 0
_08050FCC: .4byte gUnk_02019EE0
_08050FD0:
	mov r1, ip
	ldrb r0, [r1, #1]
	cmp r0, r3
	beq _08050FE2
	strb r3, [r1, #1]
	movs r0, #0x69
	bl PlaySFX
	b _08050FF4
_08050FE2:
	cmp r2, r8
	beq _08050FF4
	strb r2, [r4]
	ldrb r0, [r6, #6]
	bl sub_080503E4
	movs r0, #0x69
	bl PlaySFX
_08050FF4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08050FFC
sub_08050FFC: @ 0x08050FFC
	push {lr}
	movs r0, #0
	bl sub_0807CDA4
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08051014
	cmp r1, #1
	beq _0805102A
	b _08051030
_08051014:
	ldr r1, _08051034 @ =gMenu
	movs r0, #0x1e
	strh r0, [r1, #8]
	ldr r0, _08051038 @ =gUnk_02019EE0
	ldrb r0, [r0, #6]
	bl sub_0805194C
	movs r0, #9
	movs r1, #0
	bl sub_08050318
_0805102A:
	movs r0, #3
	bl sub_080A7114
_08051030:
	pop {pc}
	.align 2, 0
_08051034: .4byte gMenu
_08051038: .4byte gUnk_02019EE0

	thumb_func_start sub_0805103C
sub_0805103C: @ 0x0805103C
	push {lr}
	ldr r0, _08051050 @ =gMenu
	ldrb r1, [r0, #8]
	adds r2, r0, #0
	cmp r1, #0
	beq _08051054
	cmp r1, #0xff
	beq _0805106C
	b _08051060
	.align 2, 0
_08051050: .4byte gMenu
_08051054:
	ldr r0, _08051068 @ =gUnk_03000FF0
	ldrh r1, [r0, #2]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08051072
_08051060:
	ldrh r0, [r2, #8]
	subs r0, #1
	strh r0, [r2, #8]
	b _08051072
	.align 2, 0
_08051068: .4byte gUnk_03000FF0
_0805106C:
	movs r0, #0
	bl sub_080503BC
_08051072:
	pop {pc}

	thumb_func_start sub_08051074
sub_08051074: @ 0x08051074
	push {lr}
	ldr r1, _08051088 @ =gUnk_080FC960
	ldr r0, _0805108C @ =gMenu
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08051088: .4byte gUnk_080FC960
_0805108C: .4byte gMenu

	thumb_func_start sub_08051090
sub_08051090: @ 0x08051090
	push {lr}
	movs r0, #8
	bl sub_080503A8
	bl sub_08050790
	bl sub_0805070C
	bl sub_08051458
	ldr r1, _080510B4 @ =gScreen
	movs r0, #0xff
	strh r0, [r1, #0x18]
	strh r0, [r1, #0x24]
	movs r0, #1
	bl sub_080A7114
	pop {pc}
	.align 2, 0
_080510B4: .4byte gScreen

	thumb_func_start sub_080510B8
sub_080510B8: @ 0x080510B8
	push {r4, r5, r6, r7, lr}
	ldr r0, _080510E4 @ =gUnk_02019EE0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080510C4
	b _0805134C
_080510C4:
	movs r7, #0
	ldr r0, _080510E8 @ =gUnk_03000FF0
	ldrh r1, [r0, #2]
	adds r2, r0, #0
	cmp r1, #8
	bne _080510D2
	b _080511C8
_080510D2:
	cmp r1, #8
	bgt _080510EC
	cmp r1, #1
	bne _080510DC
	b _080511F2
_080510DC:
	cmp r1, #2
	beq _080511B8
	b _08051100
	.align 2, 0
_080510E4: .4byte gUnk_02019EE0
_080510E8: .4byte gUnk_03000FF0
_080510EC:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _080510F6
	b _0805122C
_080510F6:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bne _08051100
	b _0805121C
_08051100:
	movs r6, #0
	movs r5, #0
	ldrh r0, [r2, #4]
	cmp r0, #0x20
	beq _08051128
	cmp r0, #0x20
	bgt _08051114
	cmp r0, #0x10
	beq _0805112E
	b _08051130
_08051114:
	cmp r0, #0x40
	beq _0805111E
	cmp r0, #0x80
	beq _08051124
	b _08051130
_0805111E:
	movs r5, #1
	rsbs r5, r5, #0
	b _08051130
_08051124:
	movs r5, #1
	b _08051130
_08051128:
	movs r6, #1
	rsbs r6, r6, #0
	b _08051130
_0805112E:
	movs r6, #1
_08051130:
	ldr r4, _0805117C @ =gMenu
	ldrb r0, [r4, #0x11]
	adds r0, r0, r5
	adds r0, #6
	movs r1, #6
	bl __modsi3
	strb r0, [r4, #0x11]
	orrs r5, r6
	cmp r5, #0
	beq _0805114C
	movs r0, #0x67
	bl PlaySFX
_0805114C:
	cmp r6, #0
	beq _0805123A
	ldrb r0, [r4, #0x11]
	cmp r0, #5
	beq _08051184
	ldrb r0, [r4, #0x10]
	adds r0, r0, r6
	adds r0, #0xd
	movs r1, #0xd
	bl __modsi3
	strb r0, [r4, #0x10]
	ldr r1, _08051180 @ =gUnk_080FC980
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _08051172
	adds r1, #0x10
_08051172:
	ldrb r0, [r4, #0x10]
	adds r0, r1, r0
	ldrb r0, [r0]
	strb r0, [r4, #0x12]
	b _0805123A
	.align 2, 0
_0805117C: .4byte gMenu
_08051180: .4byte gUnk_080FC980
_08051184:
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	adds r5, r0, #0
	movs r1, #4
	cmp r5, #0
	bne _08051194
	movs r1, #5
_08051194:
	ldrb r0, [r4, #0x12]
	adds r0, r0, r6
	adds r0, r0, r1
	bl __modsi3
	strb r0, [r4, #0x12]
	ldr r1, _080511B4 @ =gUnk_080FC9A0
	cmp r5, #0
	beq _080511A8
	adds r1, #8
_080511A8:
	ldrb r0, [r4, #0x12]
	adds r0, r1, r0
	ldrb r0, [r0]
	strb r0, [r4, #0x10]
	b _0805123A
	.align 2, 0
_080511B4: .4byte gUnk_080FC9A0
_080511B8:
	ldr r0, _080511C4 @ =gMenu
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _080511EC
	movs r7, #5
	b _0805123A
	.align 2, 0
_080511C4: .4byte gMenu
_080511C8:
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	movs r1, #3
	cmp r0, #0
	bne _080511D6
	movs r1, #4
_080511D6:
	ldr r2, _080511E8 @ =gMenu
	ldrb r0, [r2, #0x11]
	cmp r0, #5
	bne _080511EC
	ldrb r2, [r2, #0x12]
	cmp r1, r2
	bne _080511EC
	movs r7, #8
	b _0805123A
	.align 2, 0
_080511E8: .4byte gMenu
_080511EC:
	bl sub_08051358
	b _0805123A
_080511F2:
	ldr r1, _08051210 @ =gMenu
	ldrb r0, [r1, #0x11]
	cmp r0, #5
	bne _08051218
	ldr r2, _08051214 @ =gUnk_080FC970
	ldrb r1, [r1, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _0805120A
	adds r1, #8
_0805120A:
	adds r0, r1, r2
	ldrb r7, [r0]
	b _0805123A
	.align 2, 0
_08051210: .4byte gMenu
_08051214: .4byte gUnk_080FC970
_08051218:
	movs r7, #6
	b _0805123A
_0805121C:
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	movs r7, #1
	cmp r0, #0
	bne _0805123A
	movs r7, #4
	b _0805123A
_0805122C:
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	movs r7, #2
	cmp r0, #0
	bne _0805123A
	movs r7, #7
_0805123A:
	ldr r0, _08051250 @ =gMenu
	ldrb r4, [r0, #1]
	subs r0, r7, #1
	cmp r0, #7
	bhi _08051322
	lsls r0, r0, #2
	ldr r1, _08051254 @ =_08051258
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08051250: .4byte gMenu
_08051254: .4byte _08051258
_08051258: @ jump table
	.4byte _08051278 @ case 0
	.4byte _0805127C @ case 1
	.4byte _08051280 @ case 2
	.4byte _08051284 @ case 3
	.4byte _08051288 @ case 4
	.4byte _080512C0 @ case 5
	.4byte _080512B8 @ case 6
	.4byte _080512EC @ case 7
_08051278:
	movs r4, #0
	b _08051322
_0805127C:
	movs r4, #1
	b _08051322
_08051280:
	movs r4, #2
	b _08051322
_08051284:
	adds r4, #1
	b _08051322
_08051288:
	ldr r3, _080512B0 @ =gMenu
	ldrb r0, [r3, #0x13]
	cmp r0, #0
	beq _08051322
	subs r0, #1
	movs r2, #0
	strb r0, [r3, #0x13]
	ldr r1, _080512B4 @ =gUnk_02002A40
	ldrb r0, [r3, #0x13]
	adds r1, #0x80
	adds r0, r0, r1
	strb r2, [r0]
	ldrb r0, [r3, #0x13]
	adds r0, #1
	adds r0, r0, r1
	strb r2, [r0]
	movs r0, #0x6c
	bl sub_08051574
	b _08051322
	.align 2, 0
_080512B0: .4byte gMenu
_080512B4: .4byte gUnk_02002A40
_080512B8:
	movs r0, #0
	bl sub_08051480
	b _08051322
_080512C0:
	ldr r2, _080512E4 @ =gUnk_02001A40
	ldr r0, _080512E8 @ =gMenu
	ldrb r1, [r0, #0x10]
	lsls r1, r1, #1
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #6
	adds r0, #0xc3
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	lsrs r0, r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08051480
	b _08051322
	.align 2, 0
_080512E4: .4byte gUnk_02001A40
_080512E8: .4byte gMenu
_080512EC:
	movs r3, #5
	ldr r0, _08051350 @ =gUnk_02002A40
	adds r6, r0, #0
	adds r6, #0x80
	movs r5, #0
_080512F6:
	adds r2, r3, r6
	ldrb r1, [r2]
	cmp r1, #0
	beq _08051302
	cmp r1, #0x20
	bne _0805130A
_08051302:
	strb r5, [r2]
	subs r3, #1
	cmp r3, #0
	bge _080512F6
_0805130A:
	adds r0, #0x80
	ldrb r0, [r0]
	movs r7, #3
	cmp r0, #0
	beq _08051316
	movs r7, #2
_08051316:
	movs r0, #0x6a
	bl sub_08051574
	adds r0, r7, #0
	bl sub_080A7114
_08051322:
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	movs r1, #2
	cmp r0, #0
	bne _08051330
	movs r1, #3
_08051330:
	adds r0, r4, r1
	bl __modsi3
	adds r4, r0, #0
	ldr r1, _08051354 @ =gMenu
	ldrb r0, [r1, #1]
	cmp r0, r4
	beq _0805134C
	strb r4, [r1, #1]
	bl sub_08051458
	movs r0, #0x68
	bl PlaySFX
_0805134C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08051350: .4byte gUnk_02002A40
_08051354: .4byte gMenu

	thumb_func_start sub_08051358
sub_08051358: @ 0x08051358
	push {lr}
	ldr r2, _08051384 @ =gMenu
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	movs r1, #3
	cmp r0, #0
	bne _0805136A
	movs r1, #4
_0805136A:
	strb r1, [r2, #0x12]
	ldrh r1, [r2, #0x10]
	ldr r0, _08051388 @ =0x0000050B
	cmp r1, r0
	beq _08051382
	movs r0, #5
	strb r0, [r2, #0x11]
	movs r0, #0xb
	strb r0, [r2, #0x10]
	movs r0, #0x67
	bl PlaySFX
_08051382:
	pop {pc}
	.align 2, 0
_08051384: .4byte gMenu
_08051388: .4byte 0x0000050B

	thumb_func_start sub_0805138C
sub_0805138C: @ 0x0805138C
	push {lr}
	ldr r1, _080513A0 @ =gUnk_080FC9B0
	ldr r0, _080513A4 @ =gMenu
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080513A0: .4byte gUnk_080FC9B0
_080513A4: .4byte gMenu

	thumb_func_start sub_080513A8
sub_080513A8: @ 0x080513A8
	push {lr}
	movs r0, #5
	movs r1, #0
	bl sub_08050318
	ldr r1, _080513BC @ =gMenu
	movs r0, #1
	strb r0, [r1, #6]
	pop {pc}
	.align 2, 0
_080513BC: .4byte gMenu

	thumb_func_start sub_080513C0
sub_080513C0: @ 0x080513C0
	push {lr}
	movs r0, #0
	bl sub_0807CDA4
	adds r2, r0, #0
	cmp r2, #0
	beq _08051412
	cmp r2, #0
	bgt _080513DC
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _080513F8
	b _08051412
_080513DC:
	cmp r2, #1
	bne _08051412
	ldr r1, _080513F4 @ =gUnk_02019EE0
	adds r0, r1, #0
	adds r0, #8
	ldrb r1, [r1, #6]
	adds r0, r0, r1
	strb r2, [r0]
	movs r0, #3
	bl sub_080A7114
	b _08051412
	.align 2, 0
_080513F4: .4byte gUnk_02019EE0
_080513F8:
	ldr r0, _08051414 @ =gUnk_02019EE0
	ldrb r0, [r0, #6]
	bl sub_0805194C
	movs r0, #6
	movs r1, #0
	bl sub_08050318
	ldr r1, _08051418 @ =gMenu
	movs r0, #0x1e
	strh r0, [r1, #8]
	movs r0, #2
	strb r0, [r1, #6]
_08051412:
	pop {pc}
	.align 2, 0
_08051414: .4byte gUnk_02019EE0
_08051418: .4byte gMenu

	thumb_func_start sub_0805141C
sub_0805141C: @ 0x0805141C
	push {lr}
	ldr r1, _0805143C @ =gMenu
	ldrh r0, [r1, #8]
	cmp r0, #0
	bne _08051444
	ldr r0, _08051440 @ =gUnk_03000FF0
	ldrh r1, [r0, #2]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08051448
	movs r0, #3
	bl sub_080A7114
	b _08051448
	.align 2, 0
_0805143C: .4byte gMenu
_08051440: .4byte gUnk_03000FF0
_08051444:
	subs r0, #1
	strh r0, [r1, #8]
_08051448:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0805144C
sub_0805144C: @ 0x0805144C
	push {lr}
	movs r0, #0
	bl sub_080503BC
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08051458
sub_08051458: @ 0x08051458
	push {lr}
	ldr r0, _08051474 @ =gMenu
	ldrb r0, [r0, #1]
	adds r0, #9
	bl sub_080503A8
	ldr r0, _08051478 @ =gUnk_02001B40
	ldr r1, _0805147C @ =gUnk_02022030
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_0801D66C
	pop {pc}
	.align 2, 0
_08051474: .4byte gMenu
_08051478: .4byte gUnk_02001B40
_0805147C: .4byte gUnk_02022030

	thumb_func_start sub_08051480
sub_08051480: @ 0x08051480
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080514BC
	ldr r2, _080514B4 @ =gMenu
	ldrb r1, [r2, #0x13]
	cmp r0, #0
	beq _080514B0
	cmp r0, #1
	beq _08051498
	adds r4, r0, #0
	subs r1, #1
_08051498:
	cmp r1, #5
	bls _0805149E
	movs r1, #5
_0805149E:
	adds r0, r1, #1
	strb r0, [r2, #0x13]
	ldr r0, _080514B8 @ =gUnk_02002A40
	adds r0, #0x80
	adds r0, r1, r0
	strb r4, [r0]
	movs r0, #0x6b
	bl sub_08051574
_080514B0:
	pop {r4, pc}
	.align 2, 0
_080514B4: .4byte gMenu
_080514B8: .4byte gUnk_02002A40

	thumb_func_start sub_080514BC
sub_080514BC: @ 0x080514BC
	push {lr}
	adds r2, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _080514D6
	cmp r2, #0
	beq _080514DA
	cmp r2, #0xf
	bhi _080514D6
	cmp r2, #0xe
	bhs _080514DA
_080514D6:
	movs r0, #1
	b _08051572
_080514DA:
	ldr r0, _08051500 @ =gMenu
	ldrb r1, [r0, #0x13]
	cmp r1, #0
	beq _08051570
	ldr r0, _08051504 @ =gUnk_02002A40
	adds r0, r0, r1
	adds r0, #0x7f
	ldrb r1, [r0]
	adds r0, r1, #0
	subs r0, #0xa4
	cmp r0, #0x28
	bhi _08051522
	cmp r2, #0xe
	beq _0805153C
	cmp r2, #0xe
	bhi _08051508
	cmp r2, #0
	beq _0805150E
	b _0805153C
	.align 2, 0
_08051500: .4byte gMenu
_08051504: .4byte gUnk_02002A40
_08051508:
	cmp r2, #0xf
	beq _08051518
	b _0805153C
_0805150E:
	cmp r1, #0xc2
	bhi _0805151C
	adds r0, r1, #0
	adds r0, #0x33
	b _08051572
_08051518:
	cmp r1, #0xc2
	bls _08051570
_0805151C:
	adds r0, r1, #0
	adds r0, #0xa
	b _08051572
_08051522:
	adds r0, r1, #0
	subs r0, #0xcd
	cmp r0, #9
	bhi _0805154C
	cmp r2, #0xe
	beq _08051546
	cmp r2, #0xe
	bhi _08051538
	cmp r2, #0
	beq _08051540
	b _0805154C
_08051538:
	cmp r2, #0xf
	bne _0805154C
_0805153C:
	adds r0, r1, #0
	b _08051572
_08051540:
	adds r0, r1, #0
	adds r0, #0x29
	b _08051572
_08051546:
	adds r0, r1, #0
	subs r0, #0xa
	b _08051572
_0805154C:
	adds r0, r1, #0
	subs r0, #0xd7
	cmp r0, #0x28
	bhi _08051570
	cmp r2, #0xe
	beq _08051560
	cmp r2, #0xe
	bls _08051560
	cmp r2, #0xf
	beq _08051566
_08051560:
	adds r0, r1, #0
	subs r0, #0x33
	b _08051572
_08051566:
	cmp r1, #0xf5
	bls _08051570
	adds r0, r1, #0
	subs r0, #0x29
	b _08051572
_08051570:
	movs r0, #0
_08051572:
	pop {pc}

	thumb_func_start sub_08051574
sub_08051574: @ 0x08051574
	push {lr}
	bl PlaySFX
	ldr r0, _08051594 @ =gUnk_02002A40
	ldr r3, _08051598 @ =gUnk_02019EE0
	ldrb r1, [r3, #6]
	ldr r2, _0805159C @ =0x000004B4
	muls r1, r2, r1
	adds r3, #0xc
	adds r1, r1, r3
	bl sub_0801D66C
	bl sub_0805070C
	pop {pc}
	.align 2, 0
_08051594: .4byte gUnk_02002A40
_08051598: .4byte gUnk_02019EE0
_0805159C: .4byte 0x000004B4

	thumb_func_start sub_080515A0
sub_080515A0: @ 0x080515A0
	push {lr}
	ldr r1, _080515BC @ =gUnk_080FC9BC
	ldr r0, _080515C0 @ =gMenu
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldr r0, _080515C4 @ =gUnk_02019EE0
	ldrb r0, [r0, #6]
	bl sub_08050A64
	pop {pc}
	.align 2, 0
_080515BC: .4byte gUnk_080FC9BC
_080515C0: .4byte gMenu
_080515C4: .4byte gUnk_02019EE0

	thumb_func_start sub_080515C8
sub_080515C8: @ 0x080515C8
	push {lr}
	movs r0, #1
	bl sub_080A7114
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080515D4
sub_080515D4: @ 0x080515D4
	push {r4, lr}
	ldr r0, _080515FC @ =gUnk_02019EE0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080515E0
	b _080516D8
_080515E0:
	ldr r1, _08051600 @ =gMenu
	movs r0, #4
	strh r0, [r1, #8]
	ldrb r4, [r1, #1]
	ldr r0, _08051604 @ =gUnk_03000FF0
	ldrh r0, [r0, #2]
	subs r0, #1
	cmp r0, #0x1f
	bhi _080516C8
	lsls r0, r0, #2
	ldr r1, _08051608 @ =_0805160C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080515FC: .4byte gUnk_02019EE0
_08051600: .4byte gMenu
_08051604: .4byte gUnk_03000FF0
_08051608: .4byte _0805160C
_0805160C: @ jump table
	.4byte _08051694 @ case 0
	.4byte _0805168C @ case 1
	.4byte _080516C8 @ case 2
	.4byte _080516C8 @ case 3
	.4byte _080516C8 @ case 4
	.4byte _080516C8 @ case 5
	.4byte _080516C8 @ case 6
	.4byte _08051694 @ case 7
	.4byte _080516C8 @ case 8
	.4byte _080516C8 @ case 9
	.4byte _080516C8 @ case 10
	.4byte _080516C8 @ case 11
	.4byte _080516C8 @ case 12
	.4byte _080516C8 @ case 13
	.4byte _080516C8 @ case 14
	.4byte _080516C6 @ case 15
	.4byte _080516C8 @ case 16
	.4byte _080516C8 @ case 17
	.4byte _080516C8 @ case 18
	.4byte _080516C8 @ case 19
	.4byte _080516C8 @ case 20
	.4byte _080516C8 @ case 21
	.4byte _080516C8 @ case 22
	.4byte _080516C8 @ case 23
	.4byte _080516C8 @ case 24
	.4byte _080516C8 @ case 25
	.4byte _080516C8 @ case 26
	.4byte _080516C8 @ case 27
	.4byte _080516C8 @ case 28
	.4byte _080516C8 @ case 29
	.4byte _080516C8 @ case 30
	.4byte _080516C2 @ case 31
_0805168C:
	ldr r1, _080516B0 @ =gMenu
	movs r0, #0
	strb r0, [r1, #1]
	movs r4, #0
_08051694:
	cmp r4, #1
	bne _080516B4
	movs r0, #4
	movs r1, #0
	bl sub_08050318
	movs r0, #2
	bl sub_080A7114
	movs r0, #0x6a
	bl PlaySFX
	b _080516C8
	.align 2, 0
_080516B0: .4byte gMenu
_080516B4:
	movs r0, #0
	bl sub_080503BC
	movs r0, #0x6c
	bl PlaySFX
	b _080516C8
_080516C2:
	movs r4, #0
	b _080516C8
_080516C6:
	movs r4, #1
_080516C8:
	ldr r1, _080516DC @ =gMenu
	ldrb r0, [r1, #1]
	cmp r0, r4
	beq _080516D8
	strb r4, [r1, #1]
	movs r0, #0x69
	bl PlaySFX
_080516D8:
	pop {r4, pc}
	.align 2, 0
_080516DC: .4byte gMenu

	thumb_func_start sub_080516E0
sub_080516E0: @ 0x080516E0
	push {r4, lr}
	movs r0, #1
	bl sub_0807CDA4
	cmp r0, #0
	beq _08051706
	ldr r4, _08051708 @ =gUnk_02019EE0
	ldrb r0, [r4, #6]
	bl sub_0805194C
	ldrb r0, [r4, #6]
	bl sub_08050AFC
	ldr r1, _0805170C @ =gMenu
	movs r0, #2
	strh r0, [r1, #8]
	movs r0, #0
	bl sub_080503BC
_08051706:
	pop {r4, pc}
	.align 2, 0
_08051708: .4byte gUnk_02019EE0
_0805170C: .4byte gMenu

	thumb_func_start sub_08051710
sub_08051710: @ 0x08051710
	push {lr}
	ldr r1, _0805172C @ =gUnk_080FC9C8
	ldr r0, _08051730 @ =gMenu
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldr r0, _08051734 @ =gUnk_02019EE0
	ldrb r0, [r0, #6]
	bl sub_08050A64
	pop {pc}
	.align 2, 0
_0805172C: .4byte gUnk_080FC9C8
_08051730: .4byte gMenu
_08051734: .4byte gUnk_02019EE0

	thumb_func_start sub_08051738
sub_08051738: @ 0x08051738
	push {r4, r5, r6, r7, lr}
	ldr r1, _08051768 @ =gUnk_02019EE0
	movs r0, #4
	strb r0, [r1, #7]
	movs r4, #0
	movs r3, #0
	adds r5, r1, #0
	adds r7, r5, #0
	adds r7, #8
	ldr r6, _0805176C @ =gUnk_02000090
_0805174C:
	adds r0, r3, r7
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08051770
	ldrb r1, [r5, #6]
	movs r2, #4
	eors r1, r3
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r0, r0, #0x1f
	ands r2, r0
	b _08051774
	.align 2, 0
_08051768: .4byte gUnk_02019EE0
_0805176C: .4byte gUnk_02000090
_08051770:
	adds r4, #1
	adds r2, r4, #0
_08051774:
	adds r0, r3, r6
	strb r2, [r0]
	adds r3, #1
	cmp r3, #2
	bls _0805174C
	cmp r4, #0
	bne _0805179C
	ldr r1, _08051798 @ =gMenu
	movs r0, #0x3c
	strh r0, [r1, #8]
	movs r0, #1
	movs r1, #0
	bl sub_08050318
	movs r0, #3
	bl sub_080A7114
	b _080517A2
	.align 2, 0
_08051798: .4byte gMenu
_0805179C:
	movs r0, #1
	bl sub_080A7114
_080517A2:
	adds r4, #1
	ldr r0, _080517B0 @ =gMenu
	strb r4, [r0, #0x16]
	movs r1, #4
	strb r1, [r0, #0x13]
	strb r4, [r0, #0x14]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080517B0: .4byte gMenu

	thumb_func_start sub_080517B4
sub_080517B4: @ 0x080517B4
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _080517E4 @ =gUnk_02019EE0
	ldrb r1, [r0, #7]
	adds r4, r0, #0
	cmp r2, #0
	beq _080517DE
	adds r1, r1, r2
	cmp r1, #4
	bhi _080517DC
	ldr r3, _080517E8 @ =gUnk_02000090
_080517CA:
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _080517D6
	cmp r0, #4
	bne _080517DE
_080517D6:
	adds r1, r1, r2
	cmp r1, #4
	bls _080517CA
_080517DC:
	ldrb r1, [r4, #7]
_080517DE:
	adds r0, r1, #0
	pop {r4, pc}
	.align 2, 0
_080517E4: .4byte gUnk_02019EE0
_080517E8: .4byte gUnk_02000090

	thumb_func_start sub_080517EC
sub_080517EC: @ 0x080517EC
	push {r4, lr}
	ldr r0, _08051810 @ =gUnk_02019EE0
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	bne _0805186E
	movs r4, #0
	ldr r0, _08051814 @ =gUnk_03000FF0
	ldrh r0, [r0, #2]
	cmp r0, #8
	beq _0805182C
	cmp r0, #8
	bgt _08051818
	cmp r0, #1
	beq _0805182C
	cmp r0, #2
	beq _08051848
	b _08051858
	.align 2, 0
_08051810: .4byte gUnk_02019EE0
_08051814: .4byte gUnk_03000FF0
_08051818:
	cmp r0, #0x40
	beq _08051822
	cmp r0, #0x80
	beq _08051828
	b _08051858
_08051822:
	movs r4, #1
	rsbs r4, r4, #0
	b _08051858
_08051828:
	movs r4, #1
	b _08051858
_0805182C:
	ldrb r0, [r2, #7]
	cmp r0, #2
	bhi _08051848
	movs r0, #2
	movs r1, #0
	bl sub_08050318
	movs r0, #2
	bl sub_080A7114
	movs r0, #0x6a
	bl PlaySFX
	b _08051858
_08051848:
	movs r0, #4
	strb r0, [r2, #7]
	movs r0, #0x6c
	bl PlaySFX
	movs r0, #0
	bl sub_080503BC
_08051858:
	adds r0, r4, #0
	bl sub_080517B4
	ldr r1, _08051870 @ =gUnk_02019EE0
	ldrb r2, [r1, #7]
	cmp r0, r2
	beq _0805186E
	strb r0, [r1, #7]
	movs r0, #0x69
	bl PlaySFX
_0805186E:
	pop {r4, pc}
	.align 2, 0
_08051870: .4byte gUnk_02019EE0

	thumb_func_start sub_08051874
sub_08051874: @ 0x08051874
	push {r4, lr}
	movs r1, #0x80
	lsls r1, r1, #0x12
	ldr r4, _080518B8 @ =gUnk_02019EE0
	ldrb r0, [r4, #7]
	strb r0, [r1, #4]
	movs r0, #0
	bl sub_0807CDA4
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #8
	ldrb r2, [r4, #7]
	adds r0, r0, r2
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080518C4
	cmp r1, #1
	bne _080518DE
	ldr r0, _080518BC @ =gUnk_02002A40
	ldrb r1, [r4, #7]
	ldr r2, _080518C0 @ =0x000004B4
	muls r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xc
	adds r1, r1, r3
	bl sub_0801D66C
	movs r0, #0
	bl sub_080503BC
	b _080518DE
	.align 2, 0
_080518B8: .4byte gUnk_02019EE0
_080518BC: .4byte gUnk_02002A40
_080518C0: .4byte 0x000004B4
_080518C4:
	ldrb r0, [r4, #7]
	bl sub_0805194C
	movs r0, #3
	movs r1, #0
	bl sub_08050318
	ldr r1, _080518E0 @ =gMenu
	movs r0, #0x1e
	strh r0, [r1, #8]
	movs r0, #3
	bl sub_080A7114
_080518DE:
	pop {r4, pc}
	.align 2, 0
_080518E0: .4byte gMenu

	thumb_func_start sub_080518E4
sub_080518E4: @ 0x080518E4
	push {lr}
	ldr r1, _08051904 @ =gMenu
	ldrh r0, [r1, #8]
	cmp r0, #0
	bne _0805190C
	ldr r0, _08051908 @ =gUnk_03000FF0
	ldrh r1, [r0, #2]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08051910
	movs r0, #0
	bl sub_080503BC
	b _08051910
	.align 2, 0
_08051904: .4byte gMenu
_08051908: .4byte gUnk_03000FF0
_0805190C:
	subs r0, #1
	strh r0, [r1, #8]
_08051910:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08051914
sub_08051914: @ 0x08051914
	push {lr}
	ldr r1, _08051940 @ =gMenu
	ldrb r0, [r1, #5]
	cmp r0, #0
	bne _0805193E
	movs r0, #1
	strb r0, [r1, #5]
	movs r2, #0x80
	lsls r2, r2, #0x12
	ldr r1, _08051944 @ =gUnk_02002A40
	ldrb r0, [r1, #2]
	strb r0, [r2, #5]
	ldrb r0, [r1, #3]
	strb r0, [r2, #6]
	ldr r1, _08051948 @ =gUnk_03001000
	movs r0, #2
	strb r0, [r1, #3]
	movs r0, #5
	movs r1, #8
	bl DoFade
_0805193E:
	pop {pc}
	.align 2, 0
_08051940: .4byte gMenu
_08051944: .4byte gUnk_02002A40
_08051948: .4byte gUnk_03001000

	thumb_func_start sub_0805194C
sub_0805194C: @ 0x0805194C
	push {r4, lr}
	ldr r3, _08051980 @ =gUnk_02019EE0
	adds r1, r3, #0
	adds r1, #8
	adds r1, r0, r1
	movs r2, #0
	strb r2, [r1]
	ldr r1, _08051984 @ =0x000004B4
	adds r4, r0, #0
	muls r4, r1, r4
	adds r3, #0xc
	adds r4, r4, r3
	adds r0, r4, #0
	bl _DmaZero
	movs r0, #1
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r1, r4, #0
	adds r1, #0xaa
	movs r0, #0x18
	strb r0, [r1]
	adds r4, #0xab
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_08051980: .4byte gUnk_02019EE0
_08051984: .4byte 0x000004B4

	thumb_func_start sub_08051988
sub_08051988: @ 0x08051988
	push {lr}
	ldr r1, _080519A4 @ =gScreenTransition
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _080519A8 @ =gUnk_080FC9D8
	ldr r0, _080519AC @ =gUnk_03001000
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080519A4: .4byte gScreenTransition
_080519A8: .4byte gUnk_080FC9D8
_080519AC: .4byte gUnk_03001000

	thumb_func_start sub_080519B0
sub_080519B0: @ 0x080519B0
	push {r4, r5, lr}
	ldr r0, _08051A04 @ =gUnk_03000FD0
	ldrb r5, [r0]
	cmp r5, #0
	bne _08051A02
	movs r0, #1
	bl sub_0801DA90
	bl sub_080A3210
	bl sub_0801DA7C
	bl sub_080A7124
	bl sub_0807059C
	ldr r4, _08051A08 @ =gScreenTransition
	adds r0, r4, #0
	movs r1, #0xb0
	bl _DmaZero
	bl sub_08049CD4
	bl sub_080300AC
	bl sub_0807CA18
	ldr r0, _08051A0C @ =gUnk_02002AC8
	adds r1, r4, #0
	adds r1, #0xc
	movs r2, #0x20
	bl sub_0801D66C
	movs r0, #4
	strb r0, [r4, #9]
	bl sub_08053518
	ldr r1, _08051A10 @ =gUnk_03001000
	movs r0, #1
	strb r0, [r1, #3]
	strb r5, [r1, #4]
_08051A02:
	pop {r4, r5, pc}
	.align 2, 0
_08051A04: .4byte gUnk_03000FD0
_08051A08: .4byte gScreenTransition
_08051A0C: .4byte gUnk_02002AC8
_08051A10: .4byte gUnk_03001000

	thumb_func_start sub_08051A14
sub_08051A14: @ 0x08051A14
	push {lr}
	movs r0, #1
	bl sub_0801DA90
	ldr r1, _08051A70 @ =gUnk_03000FD0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #4]
	ldr r0, _08051A74 @ =gUnk_03000000
	ldr r1, _08051A78 @ =0x00000B74
	bl _DmaZero
	ldr r0, _08051A7C @ =gUnk_02032EC0
	movs r1, #0xed
	lsls r1, r1, #2
	bl _DmaZero
	bl EraseAllEntities
	bl sub_080197AC
	bl sub_08080668
	bl sub_080ADD30
	movs r0, #1
	bl sub_0801CFA8
	bl sub_0806FD8C
	ldr r2, _08051A80 @ =gRoomControls
	ldr r1, _08051A84 @ =gScreenTransition
	ldrb r0, [r1, #0xc]
	strb r0, [r2, #4]
	ldrb r0, [r1, #0xd]
	strb r0, [r2, #5]
	bl sub_08053320
	ldr r1, _08051A88 @ =gUnk_02024490
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08051A8C @ =gUnk_03001000
	movs r0, #2
	strb r0, [r1, #3]
	pop {pc}
	.align 2, 0
_08051A70: .4byte gUnk_03000FD0
_08051A74: .4byte gUnk_03000000
_08051A78: .4byte 0x00000B74
_08051A7C: .4byte gUnk_02032EC0
_08051A80: .4byte gRoomControls
_08051A84: .4byte gScreenTransition
_08051A88: .4byte gUnk_02024490
_08051A8C: .4byte gUnk_03001000

	thumb_func_start sub_08051A90
sub_08051A90: @ 0x08051A90
	push {lr}
	ldr r1, _08051AA4 @ =gUnk_080FC9E8
	ldr r0, _08051AA8 @ =gUnk_03001000
	ldrb r0, [r0, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08051AA4: .4byte gUnk_080FC9E8
_08051AA8: .4byte gUnk_03001000

	thumb_func_start InitializeNewRoom
InitializeNewRoom: @ 0x08051AAC
	push {lr}
	bl sub_0805E5A8
	ldr r1, _08051AE4 @ =gScreen
	movs r2, #0
	movs r0, #0xba
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r1, _08051AE8 @ =gUnk_03001000
	movs r0, #1
	strb r0, [r1, #4]
	ldr r0, _08051AEC @ =gScreenTransition
	strb r2, [r0, #8]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	bl sub_08056418
	bl sub_08052CFC
	movs r0, #0
	bl sub_0801C370
	bl InitializeEntities
	bl sub_0801855C
	pop {pc}
	.align 2, 0
_08051AE4: .4byte gScreen
_08051AE8: .4byte gUnk_03001000
_08051AEC: .4byte gScreenTransition

	thumb_func_start sub_08051AF0
sub_08051AF0: @ 0x08051AF0
	push {r4, r5, lr}
	bl sub_0805E5C0
	bl sub_0805BBBC
	cmp r0, #0
	bne _08051B02
	bl sub_0807FC40
_08051B02:
	bl sub_0801B060
	bl sub_08000108
	bl sub_0801C344
	bl sub_0805E5F8
	bl sub_080AD90C
	bl sub_0801C208
	bl sub_08078CB4
	bl sub_080AD9B0
	bl sub_080AD918
	ldr r0, _08051BB0 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08051BAE
	ldr r0, _08051BB4 @ =gRoomControls
	ldrh r0, [r0]
	cmp r0, #0
	bne _08051BAE
	bl sub_08052F1C
	ldr r5, _08051BB8 @ =gArea
	movs r0, #0x86
	lsls r0, r0, #4
	adds r3, r5, r0
	ldr r1, _08051BBC @ =0x00000864
	adds r0, r5, r1
	ldr r1, [r3]
	ldr r2, [r0]
	cmp r1, r2
	beq _08051B5A
	str r2, [r3]
	ldr r0, _08051BC0 @ =0x800B0000
	orrs r2, r0
	adds r0, r2, #0
	bl PlaySFX
_08051B5A:
	bl sub_0805E9F4
	bl sub_0805BC04
	adds r4, r0, #0
	cmp r4, #0
	bne _08051BAE
	bl sub_08052C5C
	bl sub_0805E5B4
	bl sub_08051E04
	bl sub_080300C4
	ldr r1, _08051BC4 @ =gUnk_03001000
	movs r0, #2
	strb r0, [r1, #4]
	movs r0, #0
	bl sub_08078A90
	ldr r0, _08051BC8 @ =gUnk_02034490
	strb r4, [r0]
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _08051B96
	bl sub_0801855C
_08051B96:
	bl sub_08052BF8
	bl sub_08053178
	ldr r0, _08051BCC @ =gRoomVars
	ldrb r0, [r0]
	cmp r0, #0
	bne _08051BAE
	movs r0, #0
	movs r1, #1
	bl sub_0805E4E0
_08051BAE:
	pop {r4, r5, pc}
	.align 2, 0
_08051BB0: .4byte gUnk_03000FD0
_08051BB4: .4byte gRoomControls
_08051BB8: .4byte gArea
_08051BBC: .4byte 0x00000864
_08051BC0: .4byte 0x800B0000
_08051BC4: .4byte gUnk_03001000
_08051BC8: .4byte gUnk_02034490
_08051BCC: .4byte gRoomVars

	thumb_func_start sub_08051BD0
sub_08051BD0: @ 0x08051BD0
	push {lr}
	bl sub_080705AC
	cmp r0, #0
	bne _08051C9C
	bl sub_0804AA84
	cmp r0, #0
	bne _08051C9C
	bl sub_0805340C
	ldr r0, _08051C5C @ =gUnk_03001000
	ldrb r0, [r0, #4]
	cmp r0, #2
	bne _08051C9C
	ldr r0, _08051C60 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _08051C02
	ldr r0, _08051C64 @ =gUnk_03003DC0
	ldrh r0, [r0, #8]
	cmp r0, #0
	beq _08051C06
_08051C02:
	bl sub_08078B48
_08051C06:
	bl sub_080AD90C
	bl sub_0805E5C0
	bl sub_08080A40
	bl sub_080175F4
	bl sub_0807FC40
	bl sub_0801B060
	bl sub_08000108
	bl sub_08052C3C
	bl sub_0801C344
	bl sub_0805E5F8
	bl sub_0801C208
	bl sub_08078CB4
	bl sub_080AD9B0
	bl sub_0805291C
	bl sub_08052C5C
	bl sub_080528B4
	bl sub_080185F8
	bl sub_080AD918
	ldr r0, _08051C68 @ =gRoomControls
	ldrh r2, [r0]
	cmp r2, #1
	beq _08051C6C
	cmp r2, #2
	beq _08051C88
	b _08051C9C
	.align 2, 0
_08051C5C: .4byte gUnk_03001000
_08051C60: .4byte gTextBox
_08051C64: .4byte gUnk_03003DC0
_08051C68: .4byte gRoomControls
_08051C6C:
	ldr r0, _08051C80 @ =gPlayerState
	movs r1, #0x17
	strb r1, [r0, #0xc]
	ldr r0, _08051C84 @ =gUnk_03001000
	strb r2, [r0, #4]
	bl sub_0805E59C
	bl sub_08051D98
	b _08051C9C
	.align 2, 0
_08051C80: .4byte gPlayerState
_08051C84: .4byte gUnk_03001000
_08051C88:
	ldr r1, _08051CA0 @ =gPlayerState
	movs r0, #0x17
	strb r0, [r1, #0xc]
	ldr r1, _08051CA4 @ =gUnk_03001000
	movs r0, #1
	strb r0, [r1, #4]
	bl sub_0805E59C
	bl sub_08051DCC
_08051C9C:
	pop {pc}
	.align 2, 0
_08051CA0: .4byte gPlayerState
_08051CA4: .4byte gUnk_03001000

	thumb_func_start sub_08051CA8
sub_08051CA8: @ 0x08051CA8
	push {lr}
	bl sub_080705AC
	cmp r0, #0
	bne _08051CEA
	bl sub_0805E5C0
	bl sub_080175F4
	bl sub_0801C344
	bl sub_0805E5F8
	bl sub_080AD90C
	bl sub_0801C208
	bl sub_08078CB4
	bl sub_080AD9B0
	bl sub_0805291C
	bl sub_080528B4
	bl sub_080AD918
	ldr r0, _08051CEC @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08051CEA
	bl sub_0805E5B4
_08051CEA:
	pop {pc}
	.align 2, 0
_08051CEC: .4byte gUnk_03000FD0

	thumb_func_start sub_08051CF0
sub_08051CF0: @ 0x08051CF0
	push {r4, r5, r6, lr}
	bl sub_080AD90C
	bl sub_0801C208
	bl sub_080AD9B0
	ldr r5, _08051D20 @ =gUnk_03001000
	movs r6, #1
	strb r6, [r5, #0xb]
	bl sub_080AD918
	ldr r0, _08051D24 @ =gUnk_03000FD0
	ldrb r4, [r0]
	cmp r4, #0
	bne _08051D1E
	movs r0, #1
	bl sub_0801DA90
	strb r6, [r5, #3]
	strb r4, [r5, #4]
	ldr r0, _08051D28 @ =gScreenTransition
	strb r6, [r0, #8]
_08051D1E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08051D20: .4byte gUnk_03001000
_08051D24: .4byte gUnk_03000FD0
_08051D28: .4byte gScreenTransition

	thumb_func_start sub_08051D2C
sub_08051D2C: @ 0x08051D2C
	push {lr}
	movs r0, #7
	movs r1, #8
	bl DoFade
	movs r0, #3
	bl InitScreen
	pop {pc}
	.align 2, 0

	thumb_func_start InitializeEntities
InitializeEntities: @ 0x08051D40
	push {lr}
	bl sub_08052EA0
	bl sub_0804AF90
	bl sub_0804AFDC
	bl InitializePlayer
	ldr r1, _08051D90 @ =gUnk_03004030
	movs r0, #0
	str r0, [r1]
	bl sub_0807C740
	ldr r1, _08051D94 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	bl sub_0805283C
	movs r0, #0
	movs r1, #0
	bl sub_0801D79C
	bl LoadRoom
	bl CreateZeldaFollower
	bl sub_0804AFF4
	bl sub_0805329C
	bl sub_08000108
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_0805BB74
	bl sub_080531F8
	pop {pc}
	.align 2, 0
_08051D90: .4byte gUnk_03004030
_08051D94: .4byte gUnk_02000070

	thumb_func_start sub_08051D98
sub_08051D98: @ 0x08051D98
	push {lr}
	bl sub_08052EA0
	ldr r1, _08051DC8 @ =gRoomVars
	movs r0, #1
	strb r0, [r1]
	bl sub_0805E9A8
	bl sub_0804AF90
	bl sub_0804AFDC
	bl sub_0807C0DC
	bl sub_0805283C
	bl LoadRoom
	bl sub_0804AFF4
	movs r0, #1
	bl sub_08078A90
	pop {pc}
	.align 2, 0
_08051DC8: .4byte gRoomVars

	thumb_func_start sub_08051DCC
sub_08051DCC: @ 0x08051DCC
	push {r4, lr}
	ldr r1, _08051DFC @ =gRoomControls
	ldr r4, _08051E00 @ =gScreenTransition
	ldrb r0, [r4, #0xc]
	strb r0, [r1, #4]
	ldrb r0, [r4, #0xd]
	strb r0, [r1, #5]
	bl sub_080528F0
	movs r0, #3
	strb r0, [r4, #9]
	bl sub_08052CFC
	bl sub_08052EA0
	bl sub_0805E9A8
	bl sub_0804AF90
	bl sub_0804AFDC
	bl sub_0805283C
	pop {r4, pc}
	.align 2, 0
_08051DFC: .4byte gRoomControls
_08051E00: .4byte gScreenTransition

	thumb_func_start sub_08051E04
sub_08051E04: @ 0x08051E04
	push {lr}
	bl sub_08052620
	cmp r0, #0
	beq _08051E60
	ldr r1, _08051E2C @ =gPlayerEntity
	movs r2, #0x2e
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _08051E1A
	adds r0, #0xf
_08051E1A:
	asrs r2, r0, #4
	movs r3, #0x32
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _08051E26
	adds r0, #0xf
_08051E26:
	asrs r1, r0, #4
	ldr r3, _08051E30 @ =gUnk_08127F94
	b _08051E36
	.align 2, 0
_08051E2C: .4byte gPlayerEntity
_08051E30: .4byte gUnk_08127F94
_08051E34:
	adds r3, #8
_08051E36:
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _08051E60
	cmp r0, r2
	bhi _08051E34
	ldrb r0, [r3, #2]
	cmp r0, r2
	blo _08051E34
	ldrb r0, [r3, #1]
	cmp r0, r1
	bhi _08051E34
	ldrb r0, [r3, #3]
	cmp r0, r1
	blo _08051E34
	ldr r2, _08051E64 @ =gUnk_02002A40
	movs r1, #1
	ldrb r3, [r3, #4]
	lsls r1, r3
	ldr r0, [r2, #0x40]
	orrs r0, r1
	str r0, [r2, #0x40]
_08051E60:
	pop {pc}
	.align 2, 0
_08051E64: .4byte gUnk_02002A40

	thumb_func_start sub_08051E68
sub_08051E68: @ 0x08051E68
	push {lr}
	ldr r1, _08051E7C @ =gUnk_080FCA08
	ldr r0, _08051E80 @ =gMenu
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08051E7C: .4byte gUnk_080FCA08
_08051E80: .4byte gMenu

	thumb_func_start sub_08051E84
sub_08051E84: @ 0x08051E84
	push {r4, r5, r6, lr}
	ldr r0, _08051EF0 @ =gUnk_02032EC0
	ldrb r4, [r0, #3]
	lsls r4, r4, #3
	ldr r0, _08051EF4 @ =gUnk_080FCA20
	adds r4, r4, r0
	ldr r5, _08051EF8 @ =gRoomControls
	ldrb r0, [r4]
	strb r0, [r5, #4]
	ldrb r0, [r4, #1]
	strb r0, [r5, #5]
	bl sub_08053320
	ldrb r0, [r5, #4]
	bl sub_08052D58
	ldr r1, _08051EFC @ =gArea
	movs r6, #0
	strh r0, [r1, #4]
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	bl SetCurrentRoomPropertyList
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	bl sub_08052FD8
	ldrh r0, [r4, #4]
	ldrh r1, [r5, #6]
	adds r0, r0, r1
	strh r0, [r5, #0xa]
	ldrh r0, [r4, #6]
	ldrh r1, [r5, #8]
	adds r0, r0, r1
	strh r0, [r5, #0xc]
	ldr r1, _08051F00 @ =gMenu
	ldrb r0, [r4, #2]
	strb r0, [r1]
	ldrb r2, [r4, #3]
	movs r0, #0xf
	ands r0, r2
	strb r0, [r1, #3]
	str r4, [r1, #0xc]
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
	strb r6, [r1, #6]
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r1, #8]
	bl sub_08051F04
	pop {r4, r5, r6, pc}
	.align 2, 0
_08051EF0: .4byte gUnk_02032EC0
_08051EF4: .4byte gUnk_080FCA20
_08051EF8: .4byte gRoomControls
_08051EFC: .4byte gArea
_08051F00: .4byte gMenu

	thumb_func_start sub_08051F04
sub_08051F04: @ 0x08051F04
	push {lr}
	ldr r1, _08051F38 @ =gUnk_080FCA14
	ldr r0, _08051F3C @ =gMenu
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
	bl sub_0805E5F8
	bl sub_08000108
	pop {pc}
	.align 2, 0
_08051F38: .4byte gUnk_080FCA14
_08051F3C: .4byte gMenu

	thumb_func_start sub_08051F40
sub_08051F40: @ 0x08051F40
	push {lr}
	ldr r0, _08051F60 @ =gUnk_080FCA20
	ldr r2, _08051F64 @ =gUnk_02032EC0
	ldrb r1, [r2, #3]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrb r1, [r1, #3]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _08051F68
	lsrs r1, r1, #4
	movs r0, #2
	bl MenuFadeIn
	b _08051F76
	.align 2, 0
_08051F60: .4byte gUnk_080FCA20
_08051F64: .4byte gUnk_02032EC0
_08051F68:
	movs r0, #3
	strb r0, [r2]
	movs r0, #0x10
	bl sub_080500F4
	bl sub_08056418
_08051F76:
	pop {pc}

	thumb_func_start sub_08051F78
sub_08051F78: @ 0x08051F78
	push {lr}
	ldr r0, _08051F94 @ =gUnk_02032EC0
	ldrb r3, [r0, #3]
	lsls r3, r3, #3
	ldr r0, _08051F98 @ =gUnk_080FCA20
	adds r3, r3, r0
	ldrb r0, [r3]
	ldrb r1, [r3, #1]
	ldrh r2, [r3, #4]
	ldrh r3, [r3, #6]
	bl sub_08051F9C
	pop {pc}
	.align 2, 0
_08051F94: .4byte gUnk_02032EC0
_08051F98: .4byte gUnk_080FCA20

	thumb_func_start sub_08051F9C
sub_08051F9C: @ 0x08051F9C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r2, #0
	mov r8, r3
	ldr r5, _08051FE0 @ =gScreen
	ldrh r2, [r5]
	movs r4, #0xc0
	lsls r4, r4, #7
	ands r4, r2
	bl sub_08052FF4
	ldr r1, _08051FE4 @ =gRoomControls
	ldrh r0, [r1, #6]
	adds r0, r0, r6
	movs r6, #0
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #8]
	add r0, r8
	strh r0, [r1, #0xc]
	bl sub_0807C740
	ldr r1, _08051FE8 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08051FEC @ =gUnk_0200B644
	str r6, [r0]
	ldrh r0, [r5]
	orrs r4, r0
	strh r4, [r5]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, pc}
	.align 2, 0
_08051FE0: .4byte gScreen
_08051FE4: .4byte gRoomControls
_08051FE8: .4byte gUnk_02000070
_08051FEC: .4byte gUnk_0200B644

	thumb_func_start sub_08051FF0
sub_08051FF0: @ 0x08051FF0
	push {lr}
	ldr r0, _08052000 @ =gMenu
	ldr r1, [r0, #0xc]
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	bl sub_0804B0B0
	pop {pc}
	.align 2, 0
_08052000: .4byte gMenu

	thumb_func_start sub_08052004
sub_08052004: @ 0x08052004
	ldr r1, _0805200C @ =gMenu
	movs r0, #2
	strb r0, [r1, #5]
	bx lr
	.align 2, 0
_0805200C: .4byte gMenu

	thumb_func_start sub_08052010
sub_08052010: @ 0x08052010
	push {r4, lr}
	bl sub_080A3210
	bl sub_08056418
	movs r0, #1
	bl sub_0801DA90
	ldr r0, _0805207C @ =gUnk_02021F30
	movs r4, #0x80
	lsls r4, r4, #4
	adds r1, r4, #0
	bl _DmaZero
	ldr r0, _08052080 @ =gUnk_020344B0
	adds r1, r4, #0
	bl _DmaZero
	bl sub_080A4D34
	movs r0, #0xa
	bl LoadPalettesByPaletteGroupIndex
	movs r0, #0
	movs r1, #0
	bl sub_0801D79C
	movs r0, #4
	bl sub_0801D7EC
	movs r0, #0xc0
	lsls r0, r0, #0x13
	movs r1, #0x20
	bl _DmaZero
	ldr r0, _08052084 @ =gMenu
	movs r1, #0x30
	bl _DmaZero
	ldr r1, _08052088 @ =gScreen
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0805208C @ =0x00001C01
	strh r0, [r1, #0x14]
	ldr r0, _08052090 @ =0x00001D05
	strh r0, [r1, #0x20]
	movs r0, #1
	strh r0, [r1, #0x1a]
	strh r0, [r1, #0x26]
	pop {r4, pc}
	.align 2, 0
_0805207C: .4byte gUnk_02021F30
_08052080: .4byte gUnk_020344B0
_08052084: .4byte gMenu
_08052088: .4byte gScreen
_0805208C: .4byte 0x00001C01
_08052090: .4byte 0x00001D05

	thumb_func_start sub_08052094
sub_08052094: @ 0x08052094
	push {r4, lr}
	ldr r1, _080520BC @ =gUnk_080FCA70
	ldr r4, _080520C0 @ =gUnk_03001000
	ldrb r0, [r4, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _080520B8
	bl sub_080AD90C
	bl sub_080523D4
	bl sub_080AD918
_080520B8:
	pop {r4, pc}
	.align 2, 0
_080520BC: .4byte gUnk_080FCA70
_080520C0: .4byte gUnk_03001000

	thumb_func_start sub_080520C4
sub_080520C4: @ 0x080520C4
	push {lr}
	ldr r1, _080520D4 @ =gUnk_03001000
	strb r0, [r1, #3]
	movs r0, #0
	bl sub_080A7114
	pop {pc}
	.align 2, 0
_080520D4: .4byte gUnk_03001000

	thumb_func_start sub_080520D8
sub_080520D8: @ 0x080520D8
	push {r4, lr}
	ldr r4, _08052118 @ =gUnk_03000FD0
	ldrb r0, [r4]
	cmp r0, #0
	bne _08052114
	bl sub_08052010
	ldr r1, _0805211C @ =gMenu
	movs r0, #0x50
	strb r0, [r1, #0x10]
	movs r2, #0x3c
	movs r0, #0x3c
	strh r0, [r1, #8]
	ldr r0, _08052120 @ =gUnk_02002A40
	adds r0, #0xaa
	movs r1, #0x18
	strb r1, [r0]
	ldr r0, _08052124 @ =gUnk_03001000
	strb r2, [r0, #5]
	movs r0, #0xa
	bl PlaySFX
	movs r0, #4
	bl sub_080500F4
	ldr r0, _08052128 @ =0xFFFF0001
	str r0, [r4, #4]
	movs r0, #1
	bl sub_080520C4
_08052114:
	pop {r4, pc}
	.align 2, 0
_08052118: .4byte gUnk_03000FD0
_0805211C: .4byte gMenu
_08052120: .4byte gUnk_02002A40
_08052124: .4byte gUnk_03001000
_08052128: .4byte 0xFFFF0001

	thumb_func_start sub_0805212C
sub_0805212C: @ 0x0805212C
	push {r4, lr}
	ldr r4, _0805214C @ =gUnk_03000FD0
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805219C
	ldr r1, _08052150 @ =gUnk_03001000
	ldrb r0, [r1, #5]
	cmp r0, #0
	bne _08052198
	ldr r1, _08052154 @ =gMenu
	ldrb r0, [r1, #0x10]
	cmp r0, #0x25
	bls _08052158
	subs r0, #1
	strb r0, [r1, #0x10]
	b _0805219C
	.align 2, 0
_0805214C: .4byte gUnk_03000FD0
_08052150: .4byte gUnk_03001000
_08052154: .4byte gMenu
_08052158:
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805219C
	movs r0, #2
	bl sub_080520C4
	movs r0, #0
	movs r1, #0
	bl sub_08052418
	ldr r2, _08052190 @ =gScreen
	ldrh r0, [r2]
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08052194 @ =0x0000FFFF
	str r0, [r4, #4]
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	b _0805219C
	.align 2, 0
_08052190: .4byte gScreen
_08052194: .4byte 0x0000FFFF
_08052198:
	subs r0, #1
	strb r0, [r1, #5]
_0805219C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080521A0
sub_080521A0: @ 0x080521A0
	push {r4, lr}
	ldr r0, _080521C4 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080521AC
	b _080522E8
_080521AC:
	ldr r0, _080521C8 @ =gMenu
	ldrb r1, [r0, #5]
	adds r2, r0, #0
	cmp r1, #4
	bls _080521B8
	b _080522D4
_080521B8:
	lsls r0, r1, #2
	ldr r1, _080521CC @ =_080521D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080521C4: .4byte gUnk_03000FD0
_080521C8: .4byte gMenu
_080521CC: .4byte _080521D0
_080521D0: @ jump table
	.4byte _080521E4 @ case 0
	.4byte _08052208 @ case 1
	.4byte _08052278 @ case 2
	.4byte _080522B0 @ case 3
	.4byte _080522D4 @ case 4
_080521E4:
	movs r1, #0
	movs r0, #0x1e
	strh r0, [r2, #8]
	strb r1, [r2, #3]
	movs r0, #1
	bl sub_080A7114
	movs r0, #0
	movs r1, #0
	bl sub_08052418
	ldr r1, _08052204 @ =gUnk_03000FD0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #4]
	b _080522E8
	.align 2, 0
_08052204: .4byte gUnk_03000FD0
_08052208:
	ldrh r0, [r2, #8]
	cmp r0, #0
	bne _080522B6
	ldrb r4, [r2, #3]
	ldr r0, _08052224 @ =gUnk_03000FF0
	ldrh r0, [r0, #2]
	cmp r0, #0x40
	beq _0805222E
	cmp r0, #0x40
	bgt _08052228
	cmp r0, #1
	beq _08052236
	b _0805225A
	.align 2, 0
_08052224: .4byte gUnk_03000FF0
_08052228:
	cmp r0, #0x80
	beq _08052232
	b _0805225A
_0805222E:
	movs r4, #0
	b _0805225A
_08052232:
	movs r4, #1
	b _0805225A
_08052236:
	cmp r4, #0
	beq _0805223E
	movs r2, #4
	b _08052248
_0805223E:
	movs r0, #8
	movs r1, #0
	bl sub_08050318
	movs r2, #2
_08052248:
	ldr r1, _08052274 @ =gMenu
	movs r0, #0x3c
	strh r0, [r1, #8]
	adds r0, r2, #0
	bl sub_080A7114
	movs r0, #0x6a
	bl PlaySFX
_0805225A:
	ldr r1, _08052274 @ =gMenu
	ldrb r0, [r1, #3]
	cmp r0, r4
	beq _080522E8
	strb r4, [r1, #3]
	movs r0, #0
	adds r1, r4, #0
	bl sub_08052418
	movs r0, #0x69
	bl PlaySFX
	b _080522E8
	.align 2, 0
_08052274: .4byte gMenu
_08052278:
	movs r0, #0
	bl sub_0807CDA4
	adds r1, r0, #0
	ldr r2, _08052298 @ =gMenu
	strb r1, [r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0805229C
	cmp r1, #1
	bne _080522E8
	movs r0, #4
	bl sub_080A7114
	b _080522E8
	.align 2, 0
_08052298: .4byte gMenu
_0805229C:
	movs r0, #0x3c
	strh r0, [r2, #8]
	movs r0, #9
	movs r1, #0
	bl sub_08050318
	movs r0, #3
	bl sub_080A7114
	b _080522E8
_080522B0:
	ldrh r0, [r2, #8]
	cmp r0, #0
	beq _080522BC
_080522B6:
	subs r0, #1
	strh r0, [r2, #8]
	b _080522E8
_080522BC:
	ldr r0, _080522D0 @ =gUnk_03000FF0
	ldrh r1, [r0, #2]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080522E8
	movs r0, #0
	bl sub_080A7114
	b _080522E8
	.align 2, 0
_080522D0: .4byte gUnk_03000FF0
_080522D4:
	ldr r2, _080522EC @ =gScreen
	ldrh r1, [r2]
	ldr r0, _080522F0 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	bl sub_08050384
	movs r0, #3
	bl sub_080520C4
_080522E8:
	pop {r4, pc}
	.align 2, 0
_080522EC: .4byte gScreen
_080522F0: .4byte 0x0000FDFF

	thumb_func_start sub_080522F4
sub_080522F4: @ 0x080522F4
	push {r4, lr}
	ldr r0, _08052320 @ =gMenu
	ldrb r1, [r0, #5]
	adds r3, r0, #0
	cmp r1, #1
	beq _08052324
	cmp r1, #1
	bgt _080523AC
	cmp r1, #0
	bne _080523AC
	movs r1, #0
	movs r0, #0x1e
	strh r0, [r3, #8]
	strb r1, [r3, #3]
	movs r0, #1
	bl sub_080A7114
	movs r0, #1
	movs r1, #0
	bl sub_08052418
	b _080523CC
	.align 2, 0
_08052320: .4byte gMenu
_08052324:
	ldr r2, _08052340 @ =gScreen
	ldrh r1, [r2]
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldrh r0, [r3, #8]
	cmp r0, #0
	beq _08052344
	subs r0, #1
	strh r0, [r3, #8]
	b _080523CC
	.align 2, 0
_08052340: .4byte gScreen
_08052344:
	ldrb r4, [r3, #3]
	ldr r0, _08052358 @ =gUnk_03000FF0
	ldrh r0, [r0, #2]
	cmp r0, #0x40
	beq _08052362
	cmp r0, #0x40
	bgt _0805235C
	cmp r0, #1
	beq _0805236A
	b _0805238C
	.align 2, 0
_08052358: .4byte gUnk_03000FF0
_0805235C:
	cmp r0, #0x80
	beq _08052366
	b _0805238C
_08052362:
	movs r4, #0
	b _0805238C
_08052366:
	movs r4, #1
	b _0805238C
_0805236A:
	movs r0, #2
	bl sub_080A7114
	movs r0, #0x6a
	bl PlaySFX
	cmp r4, #0
	bne _08052384
	movs r0, #5
	movs r1, #8
	bl DoFade
	b _0805238C
_08052384:
	movs r0, #7
	movs r1, #8
	bl DoFade
_0805238C:
	ldr r1, _080523A8 @ =gMenu
	ldrb r0, [r1, #3]
	cmp r0, r4
	beq _080523CC
	strb r4, [r1, #3]
	movs r0, #1
	adds r1, r4, #0
	bl sub_08052418
	movs r0, #0x69
	bl PlaySFX
	b _080523CC
	.align 2, 0
_080523A8: .4byte gMenu
_080523AC:
	ldr r0, _080523C4 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080523CC
	ldrb r0, [r3, #3]
	cmp r0, #0
	bne _080523C8
	movs r0, #2
	bl InitScreen
	b _080523CC
	.align 2, 0
_080523C4: .4byte gUnk_03000FD0
_080523C8:
	bl DoSoftReset
_080523CC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_107
nullsub_107: @ 0x080523D0
	bx lr
	.align 2, 0

	thumb_func_start sub_080523D4
sub_080523D4: @ 0x080523D4
	push {r4, r5, r6, lr}
	ldr r1, _08052408 @ =gUnk_03001010
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	movs r0, #0x86
	lsls r0, r0, #8
	strh r0, [r1, #8]
	ldr r0, _0805240C @ =gMenu
	ldrb r0, [r0, #0x10]
	strh r0, [r1, #2]
	movs r4, #0
	adds r6, r1, #0
	ldr r5, _08052410 @ =gUnk_080FCA84
_080523F0:
	adds r0, r4, r5
	ldrb r0, [r0]
	strh r0, [r6]
	ldr r0, _08052414 @ =0x000001FD
	adds r1, r4, #0
	bl sub_080ADA14
	adds r4, #1
	cmp r4, #7
	bls _080523F0
	pop {r4, r5, r6, pc}
	.align 2, 0
_08052408: .4byte gUnk_03001010
_0805240C: .4byte gMenu
_08052410: .4byte gUnk_080FCA84
_08052414: .4byte 0x000001FD
