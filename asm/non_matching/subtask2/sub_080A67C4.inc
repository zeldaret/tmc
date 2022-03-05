	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0xba
	bl LoadPaletteGroup
	adds r5, r4, #0
	adds r5, #0x5f
	cmp r4, #0xb
	beq _080A67F4
	cmp r4, #0xb
	bhi _080A67E0
	cmp r4, #9
	beq _080A67E6
	b _080A6822
_080A67E0:
	cmp r4, #0xe
	beq _080A6802
	b _080A6822
_080A67E6:
	movs r0, #0x18
	bl CheckGlobalFlag
	cmp r0, #0
	beq _080A6822
	movs r5, #0x70
	b _080A6822
_080A67F4:
	movs r0, #0xe
	bl CheckKinstoneFused
	cmp r0, #0
	beq _080A6822
	movs r5, #0x71
	b _080A6822
_080A6802:
	ldr r1, _080A68AC @ =gUI
	adds r0, r1, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #8
	bne _080A6822
	adds r0, r1, #0
	adds r0, #0x21
	ldrb r0, [r0]
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r0, #0
	adds r5, #0x72
_080A6822:
	adds r0, r5, #0
	bl LoadGfxGroup
	lsls r1, r4, #3
	ldr r0, _080A68B0 @ =gUnk_08128E94
	adds r4, r1, r0
	ldr r0, _080A68B4 @ =gUnk_03003DE4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _080A68B8 @ =gUnk_02017AA0
	adds r1, r0, r1
	ldr r2, _080A68BC @ =0x00001E0A
	adds r0, r2, #0
	movs r2, #7
_080A6842:
	strh r0, [r1]
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bge _080A6842
	movs r2, #8
	movs r0, #5
	ldrsb r0, [r4, r0]
	ldrb r3, [r4, #4]
	adds r0, r0, r3
	ldr r5, _080A68B4 @ =gUnk_03003DE4
	ldr r6, _080A68B8 @ =gUnk_02017AA0
	cmp r2, r0
	bge _080A6874
	ldr r7, _080A68C0 @ =0x00001E0B
	adds r3, r7, #0
_080A6862:
	strh r3, [r1]
	adds r1, #2
	adds r2, #1
	movs r0, #5
	ldrsb r0, [r4, r0]
	ldrb r7, [r4, #4]
	adds r0, r0, r7
	cmp r2, r0
	blt _080A6862
_080A6874:
	cmp r2, #0x9f
	bgt _080A6886
	ldr r3, _080A68BC @ =0x00001E0A
	adds r0, r3, #0
_080A687C:
	strh r0, [r1]
	adds r1, #2
	adds r2, #1
	cmp r2, #0x9f
	ble _080A687C
_080A6886:
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	adds r0, r0, r6
	ldr r1, _080A68C4 @ =0x0400000E
	ldr r2, _080A68C8 @ =0xA2600001
	bl sub_0805622C
	ldr r1, _080A68CC @ =gMenu
	ldrb r0, [r4, #2]
	lsrs r0, r0, #1
	strh r0, [r1, #0xa]
	ldr r0, _080A68D0 @ =gMapDataBottomSpecial
	movs r1, #0x80
	lsls r1, r1, #3
	bl MemClear
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A68AC: .4byte gUI
_080A68B0: .4byte gUnk_08128E94
_080A68B4: .4byte gUnk_03003DE4
_080A68B8: .4byte gUnk_02017AA0
_080A68BC: .4byte 0x00001E0A
_080A68C0: .4byte 0x00001E0B
_080A68C4: .4byte 0x0400000E
_080A68C8: .4byte 0xA2600001
_080A68CC: .4byte gMenu
_080A68D0: .4byte gMapDataBottomSpecial
	.syntax divided
