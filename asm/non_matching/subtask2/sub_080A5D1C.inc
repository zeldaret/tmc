	.syntax unified
.ifdef EU
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080A5690 @ =gArea
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	ldr r1, _080A5694 @ =gUnk_080C9C6C
	adds r7, r0, r1
	ldr r1, _080A5698EU @ =gUnk_08128D3C
	ldrb r0, [r7]
	adds r0, r0, r1
	ldrb r6, [r0]
	bl sub_0801DB94
	mov r8, r0
	ldr r5, _080A569CEU @ =gOamCmd
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #4]
	movs r0, #0
	strh r0, [r5, #6]
	strh r0, [r5, #8]
	movs r0, #0x34
	strh r0, [r5]
	ldr r0, _080A56A0 @ =gMenu
	ldrb r1, [r0, #3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r6, r0
	strh r0, [r5, #2]
	ldr r1, _080A56A4 @ =gMain
	mov sl, r1
	ldrh r1, [r1, #0xc]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0x74
	cmp r0, #0
	bne _080A5560
	movs r1, #0x75
_080A5560:
	movs r0, #0xfd
	lsls r0, r0, #1
	bl DrawDirect
	movs r0, #0x20
	mov sb, r0
	mov r1, sb
	strh r1, [r5]
	mov r1, r8
	lsls r0, r1, #1
	add r0, r8
	lsls r0, r0, #2
	adds r0, r6, r0
	strh r0, [r5, #2]
	mov r0, sl
	ldrh r1, [r0, #0xc]
	mov r0, sb
	ands r0, r1
	movs r1, #0x79
	cmp r0, #0
	beq _080A558C
	movs r1, #0x78
_080A558C:
	movs r0, #0xfd
	lsls r0, r0, #1
	bl DrawDirect
	movs r0, #0x7e
	strh r0, [r5, #2]
	movs r0, #0x87
	lsls r0, r0, #7
	strh r0, [r5, #8]
	bl HasDungeonSmallKey
	cmp r0, #0
	beq _080A55BE
	movs r0, #0x18
	strh r0, [r5]
	ldr r0, _080A56A8 @ =gSpriteAnimations_322
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r4, [r0]
	ldr r0, _080A56ACEU @ =0x00000143
	adds r1, r4, #0
	bl DrawDirect
_080A55BE:
	bl HasDungeonCompass
	cmp r0, #0
	beq _080A55DE
	movs r0, #0x2e
	strh r0, [r5]
	ldr r0, _080A56A8 @ =gSpriteAnimations_322
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r4, [r0]
	ldr r0, _080A56ACEU @ =0x00000143
	adds r1, r4, #0
	bl DrawDirect
_080A55DE:
	bl HasDungeonBigKey
	cmp r0, #0
	beq _080A563CEU
	movs r0, #0x45
	strh r0, [r5]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r5, #8]
	ldr r0, _080A56A8 @ =gSpriteAnimations_322
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r4, [r0]
	ldr r0, _080A56ACEU @ =0x00000143
	adds r1, r4, #0
	bl DrawDirect
	bl sub_080A5F24
	cmp r0, #0
	beq _080A563CEU
	movs r0, #0
	strh r0, [r5, #8]
	movs r0, #0x46
	strh r0, [r5]
	ldrb r1, [r7, #1]
	ldrb r0, [r7, #2]
	subs r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r6, r0
	strh r0, [r5, #2]
	mov r0, sl
	ldrh r1, [r0, #0xc]
	mov r0, sb
	ands r0, r1
	movs r1, #0x7b
	cmp r0, #0
	beq _080A5634EU
	movs r1, #0x7a
_080A5634EU:
	movs r0, #0xfd
	lsls r0, r0, #1
	bl DrawDirect
_080A563CEU:
	ldr r1, _080A569CEU @ =gOamCmd
	movs r0, #0
	strh r0, [r1, #8]
	movs r0, #0x34
	strh r0, [r1]
	strh r6, [r1, #2]
	ldrb r0, [r7, #1]
	adds r4, r0, #0
	adds r4, #0x82
	movs r5, #0
	ldrb r0, [r7]
	cmp r5, r0
	bhs _080A5672
	adds r6, r1, #0
_080A5658:
	movs r0, #0xfd
	lsls r0, r0, #1
	adds r1, r4, #0
	bl DrawDirect
	subs r4, #1
	ldrh r0, [r6, #2]
	adds r0, #0xc
	strh r0, [r6, #2]
	adds r5, #1
	ldrb r1, [r7]
	cmp r5, r1
	blo _080A5658
_080A5672:
	ldr r5, _080A56B0 @ =gMapDataBottomSpecial
	ldrb r0, [r5]
	cmp r0, #0
	beq _080A570E
	ldr r7, _080A569CEU @ =gOamCmd
	ldr r6, _080A56B4 @ =gScreen
_080A567E:
	ldrb r0, [r5]
	cmp r0, #2
	beq _080A56D4EU
	cmp r0, #2
	bgt _080A56B8
	cmp r0, #1
	beq _080A56C2
	b _080A56E6
	.align 2, 0
_080A5690: .4byte gArea
_080A5694: .4byte gUnk_080C9C6C
_080A5698EU: .4byte gUnk_08128D3C
_080A569CEU: .4byte gOamCmd
_080A56A0: .4byte gMenu
_080A56A4: .4byte gMain
_080A56A8: .4byte gSpriteAnimations_322
_080A56ACEU: .4byte 0x00000143
_080A56B0: .4byte gMapDataBottomSpecial
_080A56B4: .4byte gScreen
_080A56B8:
	cmp r0, #3
	beq _080A56D8EU
	cmp r0, #4
	beq _080A56DCEU
	b _080A56E6
_080A56C2:
	movs r4, #0x7d
	ldr r0, _080A56D0EU @ =gMenu
	ldrb r0, [r0, #3]
	cmp r8, r0
	beq _080A56E8
	movs r4, #0x7e
	b _080A56E8
	.align 2, 0
_080A56D0EU: .4byte gMenu
_080A56D4EU:
	movs r4, #0x80
	b _080A56E8
_080A56D8EU:
	movs r4, #0x81
	b _080A56E8
_080A56DCEU:
	bl sub_080A5F24
	movs r4, #0x7f
	cmp r0, #0
	bne _080A56E8
_080A56E6:
	movs r4, #0xff
_080A56E8:
	ldrb r0, [r5, #1]
	adds r0, #0x50
	ldrh r1, [r6, #0x16]
	subs r0, r0, r1
	strh r0, [r7]
	ldrb r0, [r5, #2]
	adds r0, #0x10
	ldrh r1, [r6, #0x18]
	subs r0, r0, r1
	strh r0, [r7, #2]
	movs r0, #0xfd
	lsls r0, r0, #1
	adds r1, r4, #0
	bl DrawDirect
	adds r5, #3
	ldrb r0, [r5]
	cmp r0, #0
	bne _080A567E
_080A570E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
.else
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080A5E98 @ =gArea
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	ldr r1, _080A5E9C @ =gUnk_080C9C6C
	adds r7, r0, r1
	ldr r1, _080A5EA0 @ =gUnk_08128D3C
	ldrb r0, [r7]
	adds r0, r0, r1
	ldrb r6, [r0]
	bl sub_0801DB94
	mov r8, r0
	ldr r5, _080A5EA4 @ =gOamCmd
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #4]
	movs r0, #0
	strh r0, [r5, #6]
	strh r0, [r5, #8]
	movs r0, #0x34
	strh r0, [r5]
	ldr r0, _080A5EA8 @ =gMenu
	ldrb r1, [r0, #3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r6, r0
	strh r0, [r5, #2]
	ldr r1, _080A5EAC @ =gMain
	mov sl, r1
	ldrh r1, [r1, #0xc]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0x74
	cmp r0, #0
	bne _080A5D70
	movs r1, #0x75
_080A5D70:
	ldr r0, _080A5EB0 @ =0x000001FB
	bl DrawDirect
	movs r0, #0x20
	mov sb, r0
	mov r1, sb
	strh r1, [r5]
	mov r1, r8
	lsls r0, r1, #1
	add r0, r8
	lsls r0, r0, #2
	adds r0, r6, r0
	strh r0, [r5, #2]
	mov r0, sl
	ldrh r1, [r0, #0xc]
	mov r0, sb
	ands r0, r1
	movs r1, #0x79
	cmp r0, #0
	beq _080A5D9A
	movs r1, #0x78
_080A5D9A:
	ldr r0, _080A5EB0 @ =0x000001FB
	bl DrawDirect
	movs r0, #0x7e
	strh r0, [r5, #2]
	movs r0, #0x87
	lsls r0, r0, #7
	strh r0, [r5, #8]
	bl HasDungeonSmallKey
	cmp r0, #0
	beq _080A5DCC
	movs r0, #0x18
	strh r0, [r5]
	ldr r0, _080A5EB4 @ =gSpriteAnimations_322
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r4, [r0]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, #0
	bl DrawDirect
_080A5DCC:
	bl HasDungeonCompass
	cmp r0, #0
	beq _080A5DEE
	movs r0, #0x2e
	strh r0, [r5]
	ldr r0, _080A5EB4 @ =gSpriteAnimations_322
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r4, [r0]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, #0
	bl DrawDirect
_080A5DEE:
	bl HasDungeonBigKey
	cmp r0, #0
	beq _080A5E48
	movs r0, #0x45
	strh r0, [r5]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r5, #8]
	ldr r1, _080A5EB4 @ =gSpriteAnimations_322
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r1, [r1]
	ldrb r4, [r1]
	adds r1, r4, #0
	bl DrawDirect
	bl sub_080A5F24
	cmp r0, #0
	beq _080A5E48
	movs r0, #0
	strh r0, [r5, #8]
	movs r0, #0x46
	strh r0, [r5]
	ldrb r1, [r7, #1]
	ldrb r0, [r7, #2]
	subs r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r6, r0
	strh r0, [r5, #2]
	mov r0, sl
	ldrh r1, [r0, #0xc]
	mov r0, sb
	ands r0, r1
	movs r1, #0x7b
	cmp r0, #0
	beq _080A5E42
	movs r1, #0x7a
_080A5E42:
	ldr r0, _080A5EB0 @ =0x000001FB
	bl DrawDirect
_080A5E48:
	ldr r1, _080A5EA4 @ =gOamCmd
	movs r0, #0
	strh r0, [r1, #8]
	movs r0, #0x34
	strh r0, [r1]
	strh r6, [r1, #2]
	ldrb r0, [r7, #1]
	adds r4, r0, #0
	adds r4, #0x82
	movs r5, #0
	ldrb r0, [r7]
	cmp r5, r0
	bhs _080A5E7C
	adds r6, r1, #0
_080A5E64:
	ldr r0, _080A5EB0 @ =0x000001FB
	adds r1, r4, #0
	bl DrawDirect
	subs r4, #1
	ldrh r0, [r6, #2]
	adds r0, #0xc
	strh r0, [r6, #2]
	adds r5, #1
	ldrb r1, [r7]
	cmp r5, r1
	blo _080A5E64
_080A5E7C:
	ldr r5, _080A5EB8 @ =gMapDataBottomSpecial
	ldrb r0, [r5]
	cmp r0, #0
	beq _080A5F14
	ldr r7, _080A5EA4 @ =gOamCmd
	ldr r6, _080A5EBC @ =gScreen
_080A5E88:
	ldrb r0, [r5]
	cmp r0, #2
	beq _080A5EDC
	cmp r0, #2
	bgt _080A5EC0
	cmp r0, #1
	beq _080A5ECA
	b _080A5EEE
	.align 2, 0
_080A5E98: .4byte gArea
_080A5E9C: .4byte gUnk_080C9C6C
_080A5EA0: .4byte gUnk_08128D3C
_080A5EA4: .4byte gOamCmd
_080A5EA8: .4byte gMenu
_080A5EAC: .4byte gMain
_080A5EB0: .4byte 0x000001FB
_080A5EB4: .4byte gSpriteAnimations_322
_080A5EB8: .4byte gMapDataBottomSpecial
_080A5EBC: .4byte gScreen
_080A5EC0:
	cmp r0, #3
	beq _080A5EE0
	cmp r0, #4
	beq _080A5EE4
	b _080A5EEE
_080A5ECA:
	movs r4, #0x7d
	ldr r0, _080A5ED8 @ =gMenu
	ldrb r0, [r0, #3]
	cmp r8, r0
	beq _080A5EF0
	movs r4, #0x7e
	b _080A5EF0
	.align 2, 0
_080A5ED8: .4byte gMenu
_080A5EDC:
	movs r4, #0x80
	b _080A5EF0
_080A5EE0:
	movs r4, #0x81
	b _080A5EF0
_080A5EE4:
	bl sub_080A5F24
	movs r4, #0x7f
	cmp r0, #0
	bne _080A5EF0
_080A5EEE:
	movs r4, #0xff
_080A5EF0:
	ldrb r0, [r5, #1]
	adds r0, #0x50
	ldrh r1, [r6, #0x16]
	subs r0, r0, r1
	strh r0, [r7]
	ldrb r0, [r5, #2]
	adds r0, #0x10
	ldrh r1, [r6, #0x18]
	subs r0, r0, r1
	strh r0, [r7, #2]
	ldr r0, _080A5F20 @ =0x000001FB
	adds r1, r4, #0
	bl DrawDirect
	adds r5, #3
	ldrb r0, [r5]
	cmp r0, #0
	bne _080A5E88
_080A5F14:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A5F20: .4byte 0x000001FB
.endif
	.syntax divided
