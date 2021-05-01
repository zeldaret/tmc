
    .section .text

    .syntax unified

	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r7, [r5, #0x24]
	cmp r7, #0
	beq _0805675C
	b _0805694C
_0805675C:
	adds r4, r5, #0
	adds r4, #0x20
	adds r0, r4, #0
	bl sub_0805EFE8
	adds r7, r0, #0
	cmp r7, #0xe
	bls _0805676E
	b _08056942
_0805676E:
	lsls r0, r7, #2
	ldr r1, _08056778 @ =_0805677C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08056778: .4byte _0805677C
_0805677C: @ jump table
	.4byte _080567B8 @ case 0
	.4byte _080567DE @ case 1
	.4byte _08056802 @ case 2
	.4byte _0805680A @ case 3
	.4byte _08056812 @ case 4
	.4byte _08056838 @ case 5
	.4byte _08056844 @ case 6
	.4byte _08056858 @ case 7
	.4byte _0805688C @ case 8
	.4byte _08056894 @ case 9
	.4byte _080568AC @ case 10
	.4byte _08056942 @ case 11
	.4byte _080568B2 @ case 12
	.4byte _08056914 @ case 13
	.4byte _0805693A @ case 14
_080567B8:
	ldr r0, _080567D4 @ =gUnk_02000040
	ldrb r0, [r0]
	cmp r0, #1
	bne _080567D8
	adds r1, r5, #0
	adds r1, #0x89
	movs r0, #5
	strb r0, [r1]
	movs r0, #0
	movs r1, #0
	bl sub_08056ABC
	b _08056942
	.align 2, 0
_080567D4: .4byte gUnk_02000040
_080567D8:
	adds r1, r5, #0
	adds r1, #0x89
	b _0805692C
_080567DE:
	adds r1, r5, #0
	adds r1, #0x8a
	movs r0, #2
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x98
	ldrb r0, [r0]
	cmp r0, #0
	bne _080567F8
	movs r0, #1
	bl sub_08056BDC
	b _08056942
_080567F8:
	adds r1, r5, #0
	adds r1, #0x89
	movs r0, #3
	strb r0, [r1]
	b _08056942
_08056802:
	movs r0, #3
	bl sub_080564C8
	b _08056942
_0805680A:
	movs r0, #4
	bl sub_080564C8
	b _08056942
_08056812:
	adds r0, r4, #0
	movs r1, #0
	bl sub_GetFontStrWidth
	adds r3, r0, #0
	adds r4, r5, #0
	adds r4, #0x56
	adds r0, r5, #0
	adds r0, #0x54
	ldrh r0, [r0]
	ldrh r2, [r4]
	subs r0, r0, r2
	subs r0, r0, r3
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r2, r2, r0
	strh r2, [r4]
	b _08056942
_08056838:
	ldr r1, _08056840 @ =gTextBox
	ldrh r0, [r5, #0x22]
	strb r0, [r1, #1]
	b _08056942
	.align 2, 0
_08056840: .4byte gTextBox
_08056844:
	ldr r0, _08056854 @ =gUnk_0200005C
	ldrh r1, [r5, #0x22]
	movs r2, #0x1f
	ands r1, r2
	bl WriteBit
	b _08056942
	.align 2, 0
_08056854: .4byte gUnk_0200005C
_08056858:
	ldrh r3, [r5, #0x22]
	cmp r3, #0xe
	beq _08056864
	cmp r3, #0xf
	beq _08056874
	b _0805687A
_08056864:
	adds r0, r5, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x91
	strb r0, [r1]
	movs r3, #2
	b _0805687A
_08056874:
	adds r0, r5, #0
	adds r0, #0x91
	ldrb r3, [r0]
_0805687A:
	adds r1, r5, #0
	adds r1, #0x90
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	adds r1, r3, #0
	bl sub_080569C4
	b _08056942
_0805688C:
	ldrh r0, [r5, #0x22]
	bl SoundReq
	b _08056942
_08056894:
	ldr r1, _080568A8 @ =gCurrentTextBox
	ldrh r0, [r5, #0x22]
	strb r0, [r1, #3]
	ldrh r0, [r5, #0x22]
	adds r1, r5, #0
	adds r1, #0x53
	ldrb r1, [r1]
	bl sub_08056F88
	b _08056942
	.align 2, 0
_080568A8: .4byte gCurrentTextBox
_080568AC:
	ldrh r0, [r5, #0x22]
	strb r0, [r5, #7]
	b _08056942
_080568B2:
	ldr r6, _0805690C @ =gUnk_02000040
	ldrb r0, [r6]
	cmp r0, #1
	beq _080568D2
	adds r0, r6, #0
	movs r1, #4
	bl MemClear
	ldr r4, _08056910 @ =gUnk_02024030
	adds r0, r4, #0
	movs r1, #0x18
	bl MemClear
	movs r0, #1
	strb r0, [r4]
	strb r0, [r6]
_080568D2:
	ldr r2, _08056910 @ =gUnk_02024030
	movs r0, #2
	ldrsb r0, [r2, r0]
	cmp r0, #3
	bgt _08056942
	lsls r0, r0, #1
	adds r1, r2, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldrh r1, [r5, #0x26]
	strh r1, [r0]
	movs r0, #2
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	adds r1, r2, #0
	adds r1, #8
	adds r0, r0, r1
	adds r3, r5, #0
	adds r3, #0x56
	ldrh r1, [r3]
	strh r1, [r0]
	ldrb r0, [r2, #2]
	adds r0, #1
	strb r0, [r2, #2]
	ldrh r0, [r3]
	adds r0, #8
	strh r0, [r3]
	b _08056942
	.align 2, 0
_0805690C: .4byte gUnk_02000040
_08056910: .4byte gUnk_02024030
_08056914:
	ldrh r3, [r5, #0x22]
	cmp r3, #0xfe
	beq _08056928
	cmp r3, #0xff
	bne _08056932
	adds r1, r5, #0
	adds r1, #0x8e
	movs r0, #1
	strb r0, [r1]
	b _08056942
_08056928:
	adds r1, r5, #0
	adds r1, #0x8e
_0805692C:
	movs r0, #2
	strb r0, [r1]
	b _08056942
_08056932:
	adds r0, r5, #0
	adds r0, #0x95
	strb r3, [r0]
	b _08056942
_0805693A:
	ldrh r1, [r5, #0x22]
	adds r0, r5, #0
	adds r0, #0x94
	strb r1, [r0]
_08056942:
	lsrs r0, r7, #8
	cmp r0, #0
	bne _0805694C
	movs r0, #0
	b _080569C2
_0805694C:
	ldr r0, _08056960 @ =gCurrentTextBox
	adds r0, #0x99
	ldrb r0, [r0]
	cmp r0, #2
	beq _08056964
	movs r0, #3
	bl sub_080564C8
	movs r0, #0
	b _080569C2
	.align 2, 0
_08056960: .4byte gCurrentTextBox
_08056964:
	ldr r1, _08056994 @ =gTextBox
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne _08056970
	movs r0, #0x80
	strb r0, [r1, #1]
_08056970:
	movs r0, #0
	strh r0, [r5, #0x24]
	lsrs r0, r7, #8
	cmp r0, #7
	bne _08056998
	adds r0, r5, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	movs r1, #0x80
	adds r2, r5, #0
	adds r2, #0x90
	orrs r1, r0
	strb r1, [r2]
	adds r0, r5, #0
	movs r1, #0
	bl sub_080569C4
	b _080569B4
	.align 2, 0
_08056994: .4byte gTextBox
_08056998:
	adds r2, r5, #0
	adds r2, #0x90
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080569B4
	ldrb r3, [r2]
	movs r0, #0
	strb r0, [r2]
	adds r0, r5, #0
	adds r1, r3, #0
	bl sub_080569C4
_080569B4:
	adds r1, r5, #0
	adds r1, #0x50
	adds r0, r7, #0
	bl sub_0805F7DC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_080569C2:
	pop {r4, r5, r6, r7, pc}

    .syntax divided
