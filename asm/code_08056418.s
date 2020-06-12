	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08056458
sub_08056458: @ 0x08056458
	push {r4, r5, lr}
	ldr r0, _08056484 @ =gTextBox
	ldrb r0, [r0]
	cmp r0, #1
	bne _08056470
	ldr r0, _08056488 @ =gUnk_02022780
	movs r1, #0xa8
	bl sub_0801D630
	movs r0, #1
	bl sub_080564C8
_08056470:
	ldr r2, _08056488 @ =gUnk_02022780
	adds r1, r2, #0
	adds r1, #0x8a
	ldrb r0, [r1]
	cmp r0, #0
	beq _0805648C
	subs r0, #1
	strb r0, [r1]
	b _080564A2
	.align 2, 0
_08056484: .4byte gTextBox
_08056488: .4byte gUnk_02022780
_0805648C:
	ldr r5, _080564C0 @ =gUnk_08107BC8
	adds r4, r2, #0
	adds r4, #0x88
_08056492:
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl _call_via_r0
	cmp r0, #0
	bne _08056492
_080564A2:
	ldr r0, _080564C4 @ =gUnk_02022780
	adds r1, r0, #0
	adds r1, #0x9d
	ldrb r0, [r1]
	cmp r0, #0
	beq _080564B6
	movs r0, #0
	strb r0, [r1]
	bl sub_08056F70
_080564B6:
	bl sub_08056C68
	bl sub_08056D70
	pop {r4, r5, pc}
	.align 2, 0
_080564C0: .4byte gUnk_08107BC8
_080564C4: .4byte gUnk_02022780

	thumb_func_start sub_080564C8
sub_080564C8: @ 0x080564C8
	ldr r1, _080564D8 @ =gUnk_02022780
	adds r2, r1, #0
	adds r2, #0x88
	movs r3, #0
	strb r0, [r2]
	adds r1, #0x89
	strb r3, [r1]
	bx lr
	.align 2, 0
_080564D8: .4byte gUnk_02022780

	thumb_func_start sub_080564DC
sub_080564DC: @ 0x080564DC
	ldr r0, _080564E8 @ =gUnk_02022780
	adds r0, #0x99
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bx lr
	.align 2, 0
_080564E8: .4byte gUnk_02022780

	thumb_func_start sub_080564EC
sub_080564EC: @ 0x080564EC
	push {r4, lr}
	ldr r0, _08056598 @ =gUnk_02036A40
	movs r1, #8
	bl sub_0801D630
	ldr r0, _0805659C @ =gUnk_02024030
	movs r1, #0x18
	bl sub_0801D630
	ldr r4, _080565A0 @ =gUnk_02022780
	adds r0, r4, #0
	movs r1, #0xa8
	bl sub_0801D630
	ldr r0, _080565A4 @ =gTextBox
	adds r1, r4, #0
	movs r2, #0x20
	bl sub_0801D66C
	ldrb r0, [r4, #2]
	cmp r0, #0x63
	bne _08056520
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #5]
	strb r0, [r4, #2]
_08056520:
	adds r1, r4, #0
	adds r1, #0x9c
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x20
	ldrh r1, [r4, #8]
	bl sub_0805EEB4
	adds r3, r4, #0
	adds r3, #0x5c
	movs r0, #2
	strb r0, [r3]
	movs r0, #0xe
	strb r0, [r3, #1]
	adds r3, #2
	movs r2, #0
	ldr r0, _080565A8 @ =gUnk_02002A40
	adds r0, #0x80
	ldrb r1, [r0]
	cmp r1, #0
	beq _08056560
	adds r4, r0, #0
_0805654E:
	strb r1, [r3]
	adds r3, #1
	adds r2, #1
	cmp r2, #5
	bhi _08056560
	adds r0, r2, r4
	ldrb r1, [r0]
	cmp r1, #0
	bne _0805654E
_08056560:
	movs r0, #2
	strb r0, [r3]
	movs r0, #0xf
	strb r0, [r3, #1]
	movs r0, #0
	strb r0, [r3, #2]
	ldr r4, _080565A0 @ =gUnk_02022780
	adds r0, r4, #0
	bl sub_08056FBC
	ldr r0, _080565AC @ =gUnk_08107BE0
	str r0, [r4, #0x2c]
	ldr r0, _080565B0 @ =gUnk_02000D00
	str r0, [r4, #0x58]
	adds r4, #0x54
	movs r0, #0xd0
	strh r0, [r4]
	movs r0, #2
	bl sub_08056C54
	movs r0, #0
	bl sub_08056BDC
	movs r0, #2
	bl sub_080564C8
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
_08056598: .4byte gUnk_02036A40
_0805659C: .4byte gUnk_02024030
_080565A0: .4byte gUnk_02022780
_080565A4: .4byte gTextBox
_080565A8: .4byte gUnk_02002A40
_080565AC: .4byte gUnk_08107BE0
_080565B0: .4byte gUnk_02000D00

	thumb_func_start sub_080565B4
sub_080565B4: @ 0x080565B4
	push {r4, lr}
	ldr r4, _080565F4 @ =gUnk_02022780
	adds r1, r4, #0
	adds r1, #0x89
	ldrb r0, [r1]
	cmp r0, #0
	bne _080565DA
	movs r0, #1
	strb r0, [r1]
	adds r1, #0x10
	strb r0, [r1]
	ldrb r0, [r4, #3]
	subs r1, #0x46
	ldrb r1, [r1]
	bl sub_08056F88
	movs r0, #0x65
	bl PlaySFX
_080565DA:
	movs r0, #1
	bl sub_08056CC0
	cmp r0, #0
	beq _080565F0
	adds r1, r4, #0
	adds r1, #0x99
	movs r0, #2
	strb r0, [r1]
	bl sub_080564C8
_080565F0:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_080565F4: .4byte gUnk_02022780

	thumb_func_start sub_080565F8
sub_080565F8: @ 0x080565F8
	push {r4, lr}
	ldr r4, _0805663C @ =gUnk_02022780
	adds r1, r4, #0
	adds r1, #0x89
	ldrb r0, [r1]
	cmp r0, #0
	bne _0805661C
	movs r0, #1
	strb r0, [r1]
	adds r1, #0x10
	movs r0, #3
	strb r0, [r1]
	movs r0, #0
	bl sub_08056BDC
	movs r0, #0x66
	bl PlaySFX
_0805661C:
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08056CC0
	cmp r0, #0
	beq _08056636
	adds r1, r4, #0
	adds r1, #0x99
	movs r0, #0
	strb r0, [r1]
	movs r0, #2
	bl sub_080564C8
_08056636:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_0805663C: .4byte gUnk_02022780

	thumb_func_start sub_08056640
sub_08056640: @ 0x08056640
	push {lr}
	movs r0, #0
	bl sub_08056C54
	movs r0, #0
	bl sub_080564C8
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08056654
sub_08056654: @ 0x08056654
	push {lr}
	movs r0, #4
	bl sub_08056C54
	ldr r2, _0805667C @ =gUnk_08107BF4
	ldr r0, _08056680 @ =gUnk_02022780
	adds r1, r0, #0
	adds r1, #0x89
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	movs r0, #0
	bl sub_08056CC0
	movs r0, #0
	pop {pc}
	.align 2, 0
_0805667C: .4byte gUnk_08107BF4
_08056680: .4byte gUnk_02022780

	thumb_func_start sub_08056684
sub_08056684: @ 0x08056684
	push {r4, lr}
	adds r2, r0, #0
	ldr r4, _080566AC @ =gUnk_02022780
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _080566B0
	adds r0, r4, #0
	adds r0, #0x99
	ldrb r0, [r0]
	cmp r0, #0
	bne _080566B6
	movs r0, #5
	bl sub_080564C8
	b _080566B6
	.align 2, 0
_080566AC: .4byte gUnk_02022780
_080566B0:
	adds r0, r2, #0
	adds r0, #0x89
	strb r3, [r0]
_080566B6:
	pop {r4, pc}

	thumb_func_start sub_080566B8
sub_080566B8: @ 0x080566B8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x95
	ldrb r0, [r1]
	cmp r0, #0
	beq _080566CC
	subs r0, #1
	strb r0, [r1]
	b _0805674E
_080566CC:
	ldr r0, _08056740 @ =gUnk_03000FF0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	movs r2, #1
	cmp r0, #0
	beq _080566DC
	movs r2, #8
_080566DC:
	adds r1, r4, #0
	adds r1, #0x92
	ldrb r0, [r1]
	subs r0, r0, r2
	strb r0, [r1]
	lsls r0, r0, #0x18
	adds r7, r1, #0
	cmp r0, #0
	bgt _0805674E
	movs r5, #0
	ldr r2, _08056744 @ =gUnk_08107C0C
_080566F2:
	adds r5, #1
	ldrb r0, [r4, #2]
	adds r0, r0, r2
	ldrb r0, [r0]
	ldrb r3, [r1]
	adds r0, r0, r3
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080566F2
	movs r6, #0
_08056708:
	adds r0, r4, #0
	bl sub_08056750
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08056732
	adds r0, r4, #0
	adds r0, #0x95
	ldrb r0, [r0]
	cmp r0, #0
	bne _08056732
	adds r0, r4, #0
	adds r0, #0x8a
	ldrb r0, [r0]
	cmp r0, #0
	bne _08056732
	adds r6, r6, r1
	subs r5, #1
	cmp r5, #0
	bgt _08056708
_08056732:
	cmp r6, #0
	beq _0805674C
	ldr r0, _08056748 @ =gUnk_02022780
	adds r0, #0x9d
	movs r1, #1
	strb r1, [r0]
	b _0805674E
	.align 2, 0
_08056740: .4byte gUnk_03000FF0
_08056744: .4byte gUnk_08107C0C
_08056748: .4byte gUnk_02022780
_0805674C:
	strb r6, [r7]
_0805674E:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08056750
sub_08056750: @ 0x08056750
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
	bl sub_0805F324
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
	bl sub_0801D5BC
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
	bl PlaySFX
	b _08056942
_08056894:
	ldr r1, _080568A8 @ =gUnk_02022780
	ldrh r0, [r5, #0x22]
	strb r0, [r1, #3]
	ldrh r0, [r5, #0x22]
	adds r1, r5, #0
	adds r1, #0x53
	ldrb r1, [r1]
	bl sub_08056F88
	b _08056942
	.align 2, 0
_080568A8: .4byte gUnk_02022780
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
	bl sub_0801D630
	ldr r4, _08056910 @ =gUnk_02024030
	adds r0, r4, #0
	movs r1, #0x18
	bl sub_0801D630
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
	ldr r0, _08056960 @ =gUnk_02022780
	adds r0, #0x99
	ldrb r0, [r0]
	cmp r0, #2
	beq _08056964
	movs r0, #3
	bl sub_080564C8
	movs r0, #0
	b _080569C2
	.align 2, 0
_08056960: .4byte gUnk_02022780
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

	thumb_func_start sub_080569C4
sub_080569C4: @ 0x080569C4
	movs r2, #7
	ands r2, r1
	adds r1, r0, #0
	adds r1, #0x8f
	strb r2, [r1]
	adds r0, #0x52
	strb r2, [r0]
	bx lr

	thumb_func_start sub_080569D4
sub_080569D4: @ 0x080569D4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _080569F0 @ =gUnk_02024030
	movs r5, #3
	ldrsb r5, [r0, r5]
	ldr r0, _080569F4 @ =gUnk_03000FF0
	ldrh r0, [r0, #2]
	cmp r0, #8
	beq _08056A02
	cmp r0, #8
	bgt _080569F8
	cmp r0, #1
	beq _08056A02
	b _08056A6A
	.align 2, 0
_080569F0: .4byte gUnk_02024030
_080569F4: .4byte gUnk_03000FF0
_080569F8:
	cmp r0, #0x10
	beq _08056A68
	cmp r0, #0x20
	beq _08056A64
	b _08056A6A
_08056A02:
	ldr r0, _08056A18 @ =gUnk_02024030
	lsls r1, r5, #1
	adds r0, #0x10
	adds r1, r1, r0
	ldrh r1, [r1]
	cmp r1, #0
	bne _08056A20
	ldr r1, _08056A1C @ =gUnk_08107C14
	adds r0, r6, #0
	adds r0, #0x20
	b _08056A30
	.align 2, 0
_08056A18: .4byte gUnk_02024030
_08056A1C: .4byte gUnk_08107C14
_08056A20:
	strh r1, [r6, #8]
	adds r4, r6, #0
	adds r4, #0x20
	adds r0, r4, #0
	bl sub_0805EEB4
	ldr r1, _08056A58 @ =gUnk_08107C0F
	adds r0, r4, #0
_08056A30:
	bl sub_0805EF40
	ldr r2, _08056A5C @ =gUnk_02000040
	ldr r0, _08056A60 @ =gUnk_02024030
	ldrb r1, [r0, #3]
	strb r1, [r2, #1]
	movs r1, #3
	strb r1, [r2]
	movs r1, #0x18
	bl sub_0801D630
	movs r0, #0x6a
	bl PlaySFX
	adds r1, r6, #0
	adds r1, #0x89
	movs r0, #1
	strb r0, [r1]
	b _08056A6A
	.align 2, 0
_08056A58: .4byte gUnk_08107C0F
_08056A5C: .4byte gUnk_02000040
_08056A60: .4byte gUnk_02024030
_08056A64:
	subs r5, #1
	b _08056A6A
_08056A68:
	adds r5, #1
_08056A6A:
	ldr r4, _08056A8C @ =gUnk_02024030
	movs r1, #2
	ldrsb r1, [r4, r1]
	adds r0, r5, r1
	bl __modsi3
	adds r5, r0, #0
	movs r6, #3
	ldrsb r6, [r4, r6]
	cmp r5, r6
	beq _08056A90
	strb r5, [r4, #3]
	movs r0, #0x69
	bl PlaySFX
	movs r1, #1
	b _08056A92
	.align 2, 0
_08056A8C: .4byte gUnk_02024030
_08056A90:
	movs r1, #0
_08056A92:
	ldr r2, _08056AB4 @ =gUnk_02000040
	ldrb r0, [r2]
	cmp r0, #1
	bne _08056AA4
	ldr r1, _08056AB8 @ =gUnk_02024030
	movs r0, #2
	strb r0, [r2]
	strb r0, [r1]
	movs r1, #1
_08056AA4:
	cmp r1, #0
	beq _08056AB0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08056ABC
_08056AB0:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08056AB4: .4byte gUnk_02000040
_08056AB8: .4byte gUnk_02024030

	thumb_func_start sub_08056ABC
sub_08056ABC: @ 0x08056ABC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r7, _08056B14 @ =gUnk_02022780
	movs r0, #0x56
	adds r0, r0, r7
	mov sb, r0
	ldrh r0, [r0]
	mov r8, r0
	ldr r4, _08056B18 @ =gUnk_02024030
	lsls r1, r1, #1
	adds r4, #8
	adds r1, r1, r4
	ldrh r0, [r1]
	mov r1, sb
	strh r0, [r1]
	adds r6, r7, #0
	adds r6, #0x50
	movs r0, #0
	adds r1, r6, #0
	bl sub_0805F8E4
	lsls r5, r5, #1
	adds r5, r5, r4
	ldrh r0, [r5]
	mov r1, sb
	strh r0, [r1]
	movs r0, #1
	adds r1, r6, #0
	bl sub_0805F8E4
	mov r1, r8
	mov r0, sb
	strh r1, [r0]
	adds r1, r7, #0
	adds r1, #0x9d
	movs r0, #1
	strb r0, [r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08056B14: .4byte gUnk_02022780
_08056B18: .4byte gUnk_02024030

	thumb_func_start sub_08056B1C
sub_08056B1C: @ 0x08056B1C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08056B44 @ =gTextBox
	movs r0, #0
	strb r0, [r1, #1]
	adds r1, r4, #0
	adds r1, #0x94
	ldrb r0, [r1]
	adds r5, r0, #0
	cmp r5, #0
	beq _08056B48
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08056B7A
	subs r1, #0xb
	movs r0, #4
	b _08056B78
	.align 2, 0
_08056B44: .4byte gTextBox
_08056B48:
	ldr r0, _08056B68 @ =gUnk_03000FF0
	ldrh r1, [r0, #2]
	ldr r0, _08056B6C @ =0x000001F3
	ands r0, r1
	cmp r0, #0
	beq _08056B70
	movs r0, #0x68
	bl PlaySFX
	adds r0, r4, #0
	adds r0, #0x9a
	strb r5, [r0]
	adds r1, r4, #0
	adds r1, #0x89
	movs r0, #4
	b _08056B78
	.align 2, 0
_08056B68: .4byte gUnk_03000FF0
_08056B6C: .4byte 0x000001F3
_08056B70:
	adds r1, r4, #0
	adds r1, #0x9a
	ldrb r0, [r1]
	adds r0, #1
_08056B78:
	strb r0, [r1]
_08056B7A:
	pop {r4, r5, pc}

	thumb_func_start sub_08056B7C
sub_08056B7C: @ 0x08056B7C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	bl sub_08056BDC
	adds r0, r4, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	movs r1, #0x40
	orrs r1, r0
	adds r0, r4, #0
	bl sub_080569C4
	adds r4, #0x89
	movs r0, #1
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08056BA0
sub_08056BA0: @ 0x08056BA0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08056BD0 @ =gTextBox
	movs r0, #0
	strb r0, [r1, #1]
	movs r0, #7
	bl sub_08056C54
	adds r4, #0x8e
	ldrb r0, [r4]
	cmp r0, #1
	beq _08056BCE
	cmp r0, #2
	beq _08056BC8
	ldr r0, _08056BD4 @ =gUnk_03000FF0
	ldrh r1, [r0, #2]
	ldr r0, _08056BD8 @ =0x000001F3
	ands r0, r1
	cmp r0, #0
	beq _08056BCE
_08056BC8:
	movs r0, #4
	bl sub_080564C8
_08056BCE:
	pop {r4, pc}
	.align 2, 0
_08056BD0: .4byte gTextBox
_08056BD4: .4byte gUnk_03000FF0
_08056BD8: .4byte 0x000001F3

	thumb_func_start sub_08056BDC
sub_08056BDC: @ 0x08056BDC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08056C24 @ =gUnk_02022780
	adds r0, r4, #0
	adds r0, #0x98
	strb r5, [r0]
	cmp r5, #0
	bne _08056C30
	movs r0, #1
	rsbs r0, r0, #0
	ldr r1, _08056C28 @ =gUnk_02000D00
	movs r2, #0xd0
	lsls r2, r2, #4
	bl _DmaFill32
	bl sub_08056F70
	adds r1, r4, #0
	adds r1, #0x9e
	ldr r0, _08056C2C @ =0x0000F082
	strh r0, [r1]
	adds r1, #2
	adds r0, #1
	strh r0, [r1]
	adds r1, #2
	adds r0, #0x33
	strh r0, [r1]
	adds r1, #2
	adds r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x56
	strh r5, [r0]
	subs r1, #0x50
	movs r0, #0xd0
	b _08056C3C
	.align 2, 0
_08056C24: .4byte gUnk_02022780
_08056C28: .4byte gUnk_02000D00
_08056C2C: .4byte 0x0000F082
_08056C30:
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #0xd0
	strh r0, [r1]
	subs r1, #2
	adds r0, #0xd0
_08056C3C:
	strh r0, [r1]
	ldr r0, _08056C50 @ =gUnk_02022780
	adds r1, r0, #0
	adds r1, #0x8f
	ldrb r2, [r1]
	movs r1, #0x40
	orrs r1, r2
	bl sub_080569C4
	pop {r4, r5, pc}
	.align 2, 0
_08056C50: .4byte gUnk_02022780

	thumb_func_start sub_08056C54
sub_08056C54: @ 0x08056C54
	ldr r2, _08056C60 @ =gTextBox
	ldr r1, _08056C64 @ =gUnk_02022780
	strb r0, [r1]
	strb r0, [r2]
	bx lr
	.align 2, 0
_08056C60: .4byte gTextBox
_08056C64: .4byte gUnk_02022780

	thumb_func_start sub_08056C68
sub_08056C68: @ 0x08056C68
	push {r4, r5, r6, lr}
	ldr r5, _08056CB8 @ =gUnk_02036A38
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _08056CB4
	movs r0, #0
	strb r0, [r5, #1]
	ldrb r0, [r5, #5]
	lsls r0, r0, #5
	ldrb r1, [r5, #4]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08056CBC @ =gUnk_02034CB0
	adds r1, r0, r1
	ldrb r0, [r5, #7]
	adds r0, #2
	movs r6, #0
_08056C8A:
	movs r2, #0
	adds r4, r1, #0
	adds r4, #0x40
	subs r3, r0, #1
_08056C92:
	strh r6, [r1]
	adds r1, #2
	adds r2, #1
	ldrb r0, [r5, #6]
	adds r0, #2
	cmp r2, r0
	blt _08056C92
	adds r1, r4, #0
	adds r0, r3, #0
	cmp r0, #0
	bgt _08056C8A
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #7]
	bl sub_0801C4A0
	bl sub_0801C494
_08056CB4:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08056CB8: .4byte gUnk_02036A38
_08056CBC: .4byte gUnk_02034CB0

	thumb_func_start sub_08056CC0
sub_08056CC0: @ 0x08056CC0
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	ldr r2, _08056CE0 @ =gUnk_02022780
	adds r3, r2, #0
	adds r3, #0x9b
	ldrb r1, [r3]
	adds r1, r1, r0
	strb r1, [r3]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mov ip, r2
	cmp r1, #0
	bgt _08056CE4
	strb r7, [r3]
	b _08056CEC
	.align 2, 0
_08056CE0: .4byte gUnk_02022780
_08056CE4:
	cmp r1, #7
	ble _08056CEE
	movs r0, #8
	strb r0, [r3]
_08056CEC:
	movs r7, #1
_08056CEE:
	ldr r2, _08056D54 @ =gUnk_02036A40
	mov r4, ip
	adds r1, r4, #0
	adds r1, #0x9b
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08056D58
	adds r5, r0, #0
	ldrb r0, [r4, #4]
	lsls r0, r0, #1
	muls r0, r5, r0
	lsrs r3, r0, #4
	strb r3, [r2, #6]
	movs r6, #1
	adds r0, r3, #0
	ands r0, r6
	ldrb r1, [r4, #4]
	cmp r0, #0
	beq _08056D1A
	adds r0, r3, #1
	strb r0, [r2, #6]
_08056D1A:
	lsrs r1, r1, #1
	ldrb r0, [r4, #6]
	adds r1, r1, r0
	ldrb r0, [r2, #6]
	lsrs r0, r0, #1
	subs r1, r1, r0
	strb r1, [r2, #4]
	ldrb r0, [r4, #5]
	lsls r0, r0, #1
	muls r0, r5, r0
	lsrs r3, r0, #4
	strb r3, [r2, #7]
	adds r0, r3, #0
	ands r0, r6
	ldrb r1, [r4, #5]
	cmp r0, #0
	beq _08056D40
	adds r0, r3, #1
	strb r0, [r2, #7]
_08056D40:
	lsrs r1, r1, #1
	mov r3, ip
	ldrb r3, [r3, #7]
	adds r1, r1, r3
	ldrb r0, [r2, #7]
	lsrs r0, r0, #1
	subs r1, r1, r0
	strb r1, [r2, #5]
	b _08056D66
	.align 2, 0
_08056D54: .4byte gUnk_02036A40
_08056D58:
	movs r0, #0xff
	strb r0, [r2, #5]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2, #4]
	strb r0, [r2, #7]
	strb r0, [r2, #6]
_08056D66:
	movs r0, #1
	strb r0, [r2, #1]
	adds r0, r7, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08056D70
sub_08056D70: @ 0x08056D70
	push {r4, lr}
	ldr r0, _08056DB4 @ =gUnk_02022780
	adds r0, #0x9b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08056DB0
	ldr r4, _08056DB8 @ =gUnk_02036A40
	ldrb r0, [r4, #5]
	lsls r0, r0, #5
	ldrb r1, [r4, #4]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08056DBC @ =gUnk_02034CB0
	adds r0, r0, r1
	ldr r3, _08056DC0 @ =0x0000F07B
	ldrb r1, [r4, #6]
	ldrb r2, [r4, #7]
	bl sub_08056DC8
	bl sub_08056EC0
	bl sub_08056F1C
	ldr r2, _08056DC4 @ =gUnk_02036A38
	ldr r0, [r4]
	ldr r1, [r4, #4]
	str r0, [r2]
	str r1, [r2, #4]
	bl sub_0801C494
_08056DB0:
	pop {r4, pc}
	.align 2, 0
_08056DB4: .4byte gUnk_02022780
_08056DB8: .4byte gUnk_02036A40
_08056DBC: .4byte gUnk_02034CB0
_08056DC0: .4byte 0x0000F07B
_08056DC4: .4byte gUnk_02036A38

	thumb_func_start sub_08056DC8
sub_08056DC8: @ 0x08056DC8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	mov r8, r3
	adds r3, r7, #0
	lsls r0, r6, #6
	adds r0, #0x40
	adds r2, r3, r0
	mov r0, r8
	strh r0, [r3]
	adds r3, #2
	movs r1, #0x80
	lsls r1, r1, #4
	mov sb, r1
	mov r0, r8
	mov r5, sb
	orrs r0, r5
	strh r0, [r2]
	adds r2, #2
	cmp r4, #0
	ble _08056E4C
	mov r0, r8
	adds r0, #1
	strh r0, [r3]
	adds r3, #2
	adds r1, r0, #0
	orrs r1, r5
	strh r1, [r2]
	adds r2, #2
	subs r4, #2
	adds r1, r4, #0
	subs r4, #1
	mov ip, r0
	cmp r1, #0
	ble _08056E30
	mov r5, r8
	adds r5, #2
	adds r1, r5, #0
	mov r0, sb
	orrs r1, r0
_08056E20:
	strh r5, [r3]
	adds r3, #2
	strh r1, [r2]
	adds r2, #2
	adds r0, r4, #0
	subs r4, #1
	cmp r0, #0
	bgt _08056E20
_08056E30:
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	mov r1, ip
	orrs r1, r0
	strh r1, [r3]
	adds r3, #2
	movs r5, #0xc0
	lsls r5, r5, #4
	adds r0, r5, #0
	mov r1, ip
	orrs r1, r0
	strh r1, [r2]
	adds r2, #2
_08056E4C:
	movs r0, #0x80
	lsls r0, r0, #3
	adds r5, r0, #0
	mov r0, r8
	orrs r0, r5
	strh r0, [r3]
	movs r0, #0xc0
	lsls r0, r0, #4
	adds r1, r0, #0
	mov r0, r8
	orrs r0, r1
	strh r0, [r2]
	adds r7, #0x40
	adds r3, #0x40
	cmp r6, #0
	ble _08056EB6
	mov r0, r8
	adds r0, #3
	strh r0, [r7]
	adds r1, r0, #0
	orrs r1, r5
	strh r1, [r3]
	adds r7, #0x40
	adds r3, #0x40
	subs r6, #2
	adds r1, r6, #0
	subs r6, #1
	adds r2, r0, #0
	cmp r1, #0
	ble _08056EA0
	mov r4, r8
	adds r4, #4
	adds r1, r4, #0
	orrs r1, r5
_08056E90:
	strh r4, [r7]
	strh r1, [r3]
	adds r7, #0x40
	adds r3, #0x40
	adds r0, r6, #0
	subs r6, #1
	cmp r0, #0
	bgt _08056E90
_08056EA0:
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r1, #0
	adds r1, r2, #0
	orrs r1, r0
	strh r1, [r7]
	movs r5, #0xc0
	lsls r5, r5, #4
	adds r0, r5, #0
	orrs r2, r0
	strh r2, [r3]
_08056EB6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08056EC0
sub_08056EC0: @ 0x08056EC0
	push {r4, r5, r6, r7, lr}
	ldr r6, _08056F10 @ =gUnk_02036A40
	ldrb r0, [r6, #6]
	cmp r0, #0
	beq _08056F0E
	ldrb r0, [r6, #7]
	cmp r0, #0
	beq _08056F0E
	adds r4, r0, #0
	ldrb r0, [r6, #5]
	lsls r0, r0, #5
	ldrb r1, [r6, #4]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08056F14 @ =gUnk_02034CB2
	adds r5, r0, r1
	movs r0, #4
	subs r0, r0, r4
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r1, r0, #1
	ldr r7, _08056F18 @ =gUnk_0202281E
_08056EEC:
	ldrb r3, [r6, #6]
	lsls r0, r1, #1
	adds r0, r0, r7
	ldrh r2, [r0]
	adds r5, #0x40
	adds r0, r1, #1
	subs r4, #1
	adds r1, r5, #0
_08056EFC:
	strh r2, [r1]
	adds r1, #2
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bgt _08056EFC
	adds r1, r0, #0
	cmp r4, #0
	bne _08056EEC
_08056F0E:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08056F10: .4byte gUnk_02036A40
_08056F14: .4byte gUnk_02034CB2
_08056F18: .4byte gUnk_0202281E

	thumb_func_start sub_08056F1C
sub_08056F1C: @ 0x08056F1C
	push {lr}
	ldr r0, _08056F58 @ =gUnk_02022780
	adds r0, #0x98
	ldr r0, [r0]
	ldr r1, _08056F5C @ =0x0010FF00
	ands r0, r1
	ldr r1, _08056F60 @ =0x00100200
	cmp r0, r1
	bne _08056F54
	ldr r2, _08056F64 @ =gUnk_02036A40
	ldrb r1, [r2, #5]
	lsls r1, r1, #5
	ldrb r0, [r2, #4]
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r0, _08056F68 @ =gUnk_02034CB0
	adds r1, r1, r0
	ldrb r0, [r2, #7]
	adds r0, #1
	lsls r0, r0, #5
	subs r0, #2
	ldrb r2, [r2, #6]
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r2, _08056F6C @ =0x0000F080
	adds r0, r2, #0
	strh r0, [r1]
_08056F54:
	pop {pc}
	.align 2, 0
_08056F58: .4byte gUnk_02022780
_08056F5C: .4byte 0x0010FF00
_08056F60: .4byte 0x00100200
_08056F64: .4byte gUnk_02036A40
_08056F68: .4byte gUnk_02034CB0
_08056F6C: .4byte 0x0000F080

	thumb_func_start sub_08056F70
sub_08056F70: @ 0x08056F70
	push {lr}
	ldr r0, _08056F80 @ =gUnk_02000D00
	ldr r1, _08056F84 @ =0x0600D040
	movs r2, #0xd0
	lsls r2, r2, #4
	bl sub_08000E96
	pop {pc}
	.align 2, 0
_08056F80: .4byte gUnk_02000D00
_08056F84: .4byte 0x0600D040

	thumb_func_start sub_08056F88
sub_08056F88: @ 0x08056F88
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	cmp r3, #0xf
	bls _08056F94
	movs r3, #0
_08056F94:
	lsls r2, r3, #4
	orrs r2, r4
	ldr r0, _08056FB4 @ =gUnk_02022780
	adds r1, r0, #0
	adds r1, #0x9c
	ldrb r0, [r1]
	cmp r0, r2
	beq _08056FB0
	strb r2, [r1]
	ldr r2, _08056FB8 @ =0x0600CF60
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_0805F918
_08056FB0:
	pop {r4, pc}
	.align 2, 0
_08056FB4: .4byte gUnk_02022780
_08056FB8: .4byte 0x0600CF60

	thumb_func_start sub_08056FBC
sub_08056FBC: @ 0x08056FBC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x68
	bl sub_08056FEC
	ldr r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x70
	bl sub_08056FEC
	ldr r0, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x78
	bl sub_08056FEC
	ldr r0, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x80
	bl sub_08056FEC
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08056FEC
sub_08056FEC: @ 0x08056FEC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r2, r0, #0
	adds r5, r1, #0
	bl sub_0801D51C
	adds r2, r0, #0
	ldr r0, _08057040 @ =0x0FFFFFFF
	ands r2, r0
	movs r4, #0
	movs r3, #0xf
_08057002:
	mov r0, sp
	adds r1, r0, r4
	adds r0, r2, #0
	ands r0, r3
	strb r0, [r1]
	adds r4, #1
	lsrs r2, r2, #4
	cmp r2, #0
	bne _08057002
	movs r3, #0
	subs r2, r4, #1
	cmp r2, #0
	blt _08057032
	movs r6, #0x30
_0805701E:
	adds r1, r5, r3
	mov r7, sp
	adds r0, r7, r2
	ldrb r0, [r0]
	orrs r0, r6
	strb r0, [r1]
	adds r3, #1
	subs r2, #1
	cmp r2, #0
	bge _0805701E
_08057032:
	adds r1, r5, r3
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08057040: .4byte 0x0FFFFFFF

	thumb_func_start sub_08057044
sub_08057044: @ 0x08057044
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r1, #0
	adds r4, r2, #0
	mov r1, sp
	bl sub_08056FEC
	ldr r2, [sp]
	movs r1, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	lsls r2, r1
	orrs r2, r4
	str r2, [r5]
	add sp, #8
	pop {r4, r5, pc}

	thumb_func_start sub_08057064
sub_08057064: @ 0x08057064
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _080570AC @ =gUnk_08107C5C
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r1, _080570B0 @ =gUnk_08107C48
	adds r5, r4, #0
	adds r5, #0x21
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r1, _080570B4 @ =gUnk_08107C40
	ldrb r0, [r5]
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #0
	beq _080570AA
	adds r2, r4, #0
	adds r2, #0x20
	ldrb r0, [r2]
	cmp r0, r1
	beq _080570AA
	strb r1, [r2]
	adds r0, r1, #0
	bl sub_0801D7EC
_080570AA:
	pop {r4, r5, pc}
	.align 2, 0
_080570AC: .4byte gUnk_08107C5C
_080570B0: .4byte gUnk_08107C48
_080570B4: .4byte gUnk_08107C40

	thumb_func_start sub_080570B8
sub_080570B8: @ 0x080570B8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x20
	ldrb r0, [r0]
	bl sub_0801D7EC
	movs r0, #0
	str r0, [r4, #0x34]
	adds r1, r4, #0
	adds r1, #0x21
	ldrb r0, [r1]
	cmp r0, #3
	bne _080570E0
	ldr r1, _080570DC @ =gScreen
	movs r0, #1
	strh r0, [r1, #0x32]
	b _080570F0
	.align 2, 0
_080570DC: .4byte gScreen
_080570E0:
	ldr r0, _080570F4 @ =gUnk_08107C48
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_080570F0:
	pop {r4, pc}
	.align 2, 0
_080570F4: .4byte gUnk_08107C48

	thumb_func_start sub_080570F8
sub_080570F8: @ 0x080570F8
	push {lr}
	ldr r1, _08057110 @ =gScreen
	ldrh r2, [r1]
	ldr r0, _08057114 @ =0x0000F7FF
	ands r0, r2
	movs r2, #0
	strh r0, [r1]
	adds r1, #0x66
	strh r2, [r1]
	bl sub_08056250
	pop {pc}
	.align 2, 0
_08057110: .4byte gScreen
_08057114: .4byte 0x0000F7FF

	thumb_func_start sub_08057118
sub_08057118: @ 0x08057118
	push {r4, lr}
	adds r3, r0, #0
	movs r1, #0
	strb r1, [r3, #0xe]
	adds r0, #0x20
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	movs r0, #1
	strb r0, [r3, #0xc]
	ldr r1, _08057160 @ =gScreen
	ldr r0, _08057164 @ =0x00001E04
	strh r0, [r1, #0x2c]
	ldrh r0, [r1]
	movs r4, #0x80
	lsls r4, r4, #4
	adds r2, r4, #0
	orrs r0, r2
	strh r0, [r1]
	adds r2, r1, #0
	adds r2, #0x66
	ldr r0, _08057168 @ =0x00003648
	strh r0, [r2]
	adds r1, #0x68
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r1, _0805716C @ =sub_080570B8
	ldr r2, _08057170 @ =sub_080570F8
	adds r0, r3, #0
	bl sub_08052D74
	pop {r4, pc}
	.align 2, 0
_08057160: .4byte gScreen
_08057164: .4byte 0x00001E04
_08057168: .4byte 0x00003648
_0805716C: .4byte sub_080570B8
_08057170: .4byte sub_080570F8

	thumb_func_start sub_08057174
sub_08057174: @ 0x08057174
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	bl sub_0804B128
	adds r3, r0, #0
	ldrb r0, [r3]
	cmp r0, #0xff
	bne _08057188
	b _0805728A
_08057188:
	ldr r1, _080571E8 @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _08057194
	adds r0, #0xf
_08057194:
	asrs r6, r0, #4
	movs r7, #0x32
	ldrsh r0, [r1, r7]
	cmp r0, #0
	bge _080571A0
	adds r0, #0xf
_080571A0:
	asrs r5, r0, #4
	movs r0, #0x21
	adds r0, r0, r4
	mov ip, r0
_080571A8:
	ldrb r0, [r3]
	mov r1, ip
	ldrb r1, [r1]
	cmp r0, r1
	beq _08057282
	ldr r1, _080571EC @ =gRoomControls
	ldrh r0, [r1, #6]
	lsrs r0, r0, #4
	ldrb r7, [r3, #1]
	adds r2, r0, r7
	ldrh r0, [r1, #8]
	lsrs r0, r0, #4
	ldrb r1, [r3, #2]
	adds r0, r0, r1
	subs r0, r5, r0
	ldrb r7, [r3, #4]
	cmp r0, r7
	bhs _08057282
	subs r0, r6, r2
	ldrb r1, [r3, #3]
	cmp r0, r1
	bhs _08057282
	ldrb r0, [r3]
	subs r0, #1
	cmp r0, #5
	bhi _08057268
	lsls r0, r0, #2
	ldr r1, _080571F0 @ =_080571F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080571E8: .4byte gLinkEntity
_080571EC: .4byte gRoomControls
_080571F0: .4byte _080571F4
_080571F4: @ jump table
	.4byte _0805720C @ case 0
	.4byte _08057220 @ case 1
	.4byte _08057258 @ case 2
	.4byte _08057246 @ case 3
	.4byte _08057216 @ case 4
	.4byte _08057236 @ case 5
_0805720C:
	mov r2, ip
	ldrb r0, [r2]
	cmp r0, #2
	bne _08057268
	b _08057260
_08057216:
	mov r7, ip
	ldrb r0, [r7]
	cmp r0, #6
	bne _08057268
	b _08057260
_08057220:
	mov r0, ip
	ldrb r1, [r0]
	cmp r1, #0
	bne _08057268
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	b _08057268
_08057236:
	mov r2, ip
	ldrb r1, [r2]
	cmp r1, #0
	bne _08057268
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	b _08057268
_08057246:
	mov r7, ip
	ldrb r1, [r7]
	cmp r1, #0
	bne _08057268
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	str r1, [r4, #0x34]
	b _08057268
_08057258:
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #4
	bne _08057268
_08057260:
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #9
	strb r0, [r4, #0xe]
_08057268:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _08057282
	movs r0, #8
	strb r0, [r4, #0xf]
	ldrb r0, [r3]
	mov r2, ip
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #1
	strb r0, [r1]
	b _0805728A
_08057282:
	adds r3, #5
	ldrb r0, [r3]
	cmp r0, #0xff
	bne _080571A8
_0805728A:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0805728C
sub_0805728C: @ 0x0805728C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080572CA
	movs r0, #8
	strb r0, [r4, #0xf]
	ldr r2, _080572CC @ =gScreen
	ldr r3, _080572D0 @ =gUnk_08107C1C
	ldrb r0, [r4, #0xe]
	adds r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r3
	ldrh r0, [r0]
	adds r2, #0x68
	strh r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0xa
	bne _080572CA
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #0
	strb r0, [r1]
_080572CA:
	pop {r4, pc}
	.align 2, 0
_080572CC: .4byte gScreen
_080572D0: .4byte gUnk_08107C1C

	thumb_func_start sub_080572D4
sub_080572D4: @ 0x080572D4
	push {r4, r5, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xf]
	subs r0, #1
	strb r0, [r3, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08057320
	movs r0, #8
	strb r0, [r3, #0xf]
	ldr r5, _08057324 @ =gScreen
	ldr r2, _08057328 @ =gUnk_08107C1C
	ldrb r0, [r3, #0xe]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r3, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r5, #0
	adds r0, #0x68
	movs r4, #0
	strh r2, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0xff
	bne _08057320
	movs r0, #1
	strb r0, [r3, #0xc]
	adds r0, r3, #0
	adds r0, #0x22
	strb r4, [r0]
	subs r0, #1
	strb r4, [r0]
	adds r0, r5, #0
	adds r0, #0x6c
	strb r4, [r0]
_08057320:
	pop {r4, r5, pc}
	.align 2, 0
_08057324: .4byte gScreen
_08057328: .4byte gUnk_08107C1C

	thumb_func_start sub_0805732C
sub_0805732C: @ 0x0805732C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r2, _08057390 @ =gUnk_03003DE4
	ldrb r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _08057394 @ =gUnk_02017AA0
	adds r4, r0, r1
	movs r3, #0
	mov ip, r2
	mov r8, r1
	ldr r0, _08057398 @ =gUnk_080C9160
	mov sb, r0
	movs r2, #0xff
	ldr r1, _0805739C @ =gScreen
_08057354:
	adds r0, r5, r3
	ands r0, r2
	lsls r0, r0, #1
	add r0, sb
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r0, r6, r0
	lsrs r0, r0, #8
	ldrh r7, [r1, #0x2e]
	adds r0, r0, r7
	strh r0, [r4]
	adds r4, #2
	adds r3, #1
	cmp r3, #0x9f
	bls _08057354
	mov r0, ip
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	add r0, r8
	ldr r1, _080573A0 @ =0x0400001C
	ldr r2, _080573A4 @ =0xA2600001
	bl sub_0805622C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08057390: .4byte gUnk_03003DE4
_08057394: .4byte gUnk_02017AA0
_08057398: .4byte gUnk_080C9160
_0805739C: .4byte gScreen
_080573A0: .4byte 0x0400001C
_080573A4: .4byte 0xA2600001

	thumb_func_start nullsub_494
nullsub_494: @ 0x080573A8
	bx lr
	.align 2, 0

	thumb_func_start sub_080573AC
sub_080573AC: @ 0x080573AC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r2, _08057434 @ =gRoomControls
	ldr r0, [r2, #0x28]
	ldr r1, _08057438 @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r2, #0x28]
	ldr r0, [r2, #0x2c]
	ldr r1, _0805743C @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r2, #0x2c]
	ldr r5, _08057440 @ =gScreen
	movs r1, #0xa
	ldrsh r0, [r2, r1]
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #1
	ldrh r1, [r2, #0x2a]
	adds r0, r0, r1
	strh r0, [r5, #0x2e]
	movs r1, #0xc
	ldrsh r0, [r2, r1]
	ldrh r1, [r2, #8]
	subs r0, r0, r1
	asrs r0, r0, #1
	ldrh r2, [r2, #0x2e]
	adds r0, r0, r2
	strh r0, [r5, #0x30]
	ldr r2, _08057444 @ =gUnk_080C9160
	ldr r4, _08057448 @ =gUnk_030010A0
	ldr r1, [r4]
	ldrb r0, [r4]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r0, r0, #5
	adds r0, #0x10
	bl sub_0805732C
	adds r0, r6, #0
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r0, #0
	bne _08057430
	ldr r0, [r4]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _08057430
	adds r2, r6, #0
	adds r2, #0x24
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0805744C @ =gUnk_08107C30
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x68
	strh r1, [r0]
_08057430:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08057434: .4byte gRoomControls
_08057438: .4byte 0xFFFFE000
_0805743C: .4byte 0xFFFFF000
_08057440: .4byte gScreen
_08057444: .4byte gUnk_080C9160
_08057448: .4byte gUnk_030010A0
_0805744C: .4byte gUnk_08107C30

	thumb_func_start sub_08057450
sub_08057450: @ 0x08057450
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r4, _08057504 @ =gScreen
	movs r0, #0x10
	strh r0, [r4, #0x2e]
	ldr r0, _08057508 @ =gRoomControls
	movs r2, #0xc
	ldrsh r1, [r0, r2]
	ldrh r0, [r0, #8]
	subs r1, r1, r0
	asrs r1, r1, #2
	movs r2, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r4, #0x30]
	cmp r1, #0
	bge _08057474
	adds r1, #0x3f
_08057474:
	asrs r0, r1, #6
	lsls r0, r0, #9
	ldr r1, _0805750C @ =gUnk_02001A40
	adds r1, r0, r1
	str r1, [r4, #0x34]
	ldr r0, [r3, #0x34]
	cmp r0, r1
	beq _0805748A
	str r1, [r3, #0x34]
	movs r0, #1
	strh r0, [r4, #0x32]
_0805748A:
	adds r0, r3, #0
	adds r0, #0x22
	ldrb r0, [r0]
	ldr r5, _08057510 @ =gUnk_030010A0
	cmp r0, #0
	bne _080574BE
	ldr r0, [r5]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _080574BE
	adds r2, r3, #0
	adds r2, #0x24
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08057514 @ =gUnk_08107C30
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x68
	strh r1, [r0]
_080574BE:
	ldr r0, [r5]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08057502
	adds r0, r3, #0
	adds r0, #0x23
	ldrb r1, [r0]
	lsls r1, r1, #5
	ldr r2, _08057518 @ =gUnk_085B4180
	adds r1, r1, r2
	movs r5, #0
	adds r6, r0, #0
	adds r4, r1, #0
	adds r4, #0xe
_080574DC:
	adds r0, r5, #0
	adds r0, #0x87
	ldrh r1, [r4]
	bl sub_0801D79C
	adds r0, r5, #0
	adds r0, #0x8c
	ldrh r1, [r4, #0xa]
	bl sub_0801D79C
	adds r4, #2
	adds r5, #1
	cmp r5, #3
	bls _080574DC
	ldrb r0, [r6]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r6]
_08057502:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08057504: .4byte gScreen
_08057508: .4byte gRoomControls
_0805750C: .4byte gUnk_02001A40
_08057510: .4byte gUnk_030010A0
_08057514: .4byte gUnk_08107C30
_08057518: .4byte gUnk_085B4180

	thumb_func_start sub_0805751C
sub_0805751C: @ 0x0805751C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	bne _0805753A
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _08057544 @ =gScreen
	strh r1, [r0, #0x32]
	strh r1, [r0, #0x1a]
	ldr r1, _08057548 @ =sub_080576A0
	adds r0, r4, #0
	movs r2, #0
	bl sub_08052D74
_0805753A:
	adds r0, r4, #0
	bl sub_0805754C
	pop {r4, pc}
	.align 2, 0
_08057544: .4byte gScreen
_08057548: .4byte sub_080576A0

	thumb_func_start sub_0805754C
sub_0805754C: @ 0x0805754C
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r3, _080575BC @ =gRoomControls
	movs r0, #0xc
	ldrsh r1, [r3, r0]
	ldrh r0, [r3, #8]
	subs r1, r1, r0
	asrs r0, r1, #3
	adds r1, r1, r0
	ldr r4, _080575C0 @ =gScreen
	movs r6, #0x3f
	adds r0, r1, #0
	ands r0, r6
	strh r0, [r4, #0x30]
	adds r0, r1, #0
	cmp r1, #0
	bge _08057570
	adds r0, #0x3f
_08057570:
	asrs r0, r0, #6
	lsls r0, r0, #9
	ldr r5, _080575C4 @ =gUnk_02002F00
	adds r1, r0, r5
	str r1, [r4, #0x34]
	ldr r0, [r2, #0x38]
	cmp r0, r1
	beq _08057586
	str r1, [r2, #0x38]
	movs r0, #1
	strh r0, [r4, #0x32]
_08057586:
	movs r0, #0xc
	ldrsh r1, [r3, r0]
	ldrh r0, [r3, #8]
	subs r1, r1, r0
	asrs r0, r1, #2
	adds r1, r1, r0
	adds r0, r1, #0
	ands r0, r6
	strh r0, [r4, #0x18]
	adds r0, r1, #0
	cmp r0, #0
	bge _080575A0
	adds r0, #0x3f
_080575A0:
	asrs r0, r0, #6
	lsls r0, r0, #9
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r5, r3
	adds r1, r0, r1
	str r1, [r4, #0x1c]
	ldr r0, [r2, #0x3c]
	cmp r0, r1
	beq _080575BA
	str r1, [r2, #0x3c]
	movs r0, #1
	strh r0, [r4, #0x1a]
_080575BA:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080575BC: .4byte gRoomControls
_080575C0: .4byte gScreen
_080575C4: .4byte gUnk_02002F00

	thumb_func_start sub_080575C8
sub_080575C8: @ 0x080575C8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08057664 @ =gUnk_0200B650
	movs r5, #0
	str r5, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	strh r5, [r0]
	adds r0, r4, #0
	bl sub_0801D7EC
	ldr r0, _08057668 @ =gRoomVars
	strb r4, [r0, #0x10]
	ldr r3, _0805766C @ =gRoomControls
	movs r0, #0xc
	ldrsh r1, [r3, r0]
	ldrh r0, [r3, #8]
	subs r1, r1, r0
	asrs r0, r1, #3
	adds r1, r1, r0
	ldr r2, _08057670 @ =gScreen
	movs r7, #0x3f
	adds r0, r1, #0
	ands r0, r7
	strh r0, [r2, #0x30]
	strh r5, [r2, #0x2e]
	adds r0, r1, #0
	cmp r1, #0
	bge _08057604
	adds r0, #0x3f
_08057604:
	asrs r0, r0, #6
	lsls r0, r0, #9
	ldr r4, _08057674 @ =gUnk_02002F00
	adds r0, r0, r4
	str r0, [r2, #0x34]
	ldr r0, _08057678 @ =0x00001D49
	strh r0, [r2, #0x2c]
	movs r6, #1
	strh r6, [r2, #0x32]
	movs r0, #0xc
	ldrsh r1, [r3, r0]
	ldrh r0, [r3, #8]
	subs r1, r1, r0
	asrs r0, r1, #2
	adds r1, r1, r0
	adds r0, r1, #0
	ands r0, r7
	strh r0, [r2, #0x18]
	strh r5, [r2, #0x16]
	adds r0, r1, #0
	cmp r0, #0
	bge _08057632
	adds r0, #0x3f
_08057632:
	asrs r0, r0, #6
	lsls r0, r0, #9
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r4, r3
	adds r0, r0, r1
	str r0, [r2, #0x1c]
	ldr r0, _0805767C @ =0x00001E49
	strh r0, [r2, #0x14]
	strh r6, [r2, #0x1a]
	adds r1, r2, #0
	adds r1, #0x66
	ldr r0, _08057680 @ =0x00003C48
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08057684 @ =0x00000609
	strh r0, [r1]
	ldrh r0, [r2]
	movs r3, #0xa0
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08057664: .4byte gUnk_0200B650
_08057668: .4byte gRoomVars
_0805766C: .4byte gRoomControls
_08057670: .4byte gScreen
_08057674: .4byte gUnk_02002F00
_08057678: .4byte 0x00001D49
_0805767C: .4byte 0x00001E49
_08057680: .4byte 0x00003C48
_08057684: .4byte 0x00000609

	thumb_func_start sub_08057688
sub_08057688: @ 0x08057688
	ldr r0, _08057694 @ =gScreen
	ldr r1, _08057698 @ =0x00001D48
	strh r1, [r0, #0x2c]
	ldr r1, _0805769C @ =0x00001E48
	strh r1, [r0, #0x14]
	bx lr
	.align 2, 0
_08057694: .4byte gScreen
_08057698: .4byte 0x00001D48
_0805769C: .4byte 0x00001E48

	thumb_func_start sub_080576A0
sub_080576A0: @ 0x080576A0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080576BC @ =gRoomVars
	ldrb r0, [r0, #0x10]
	bl sub_0801D7EC
	movs r0, #0
	str r0, [r4, #0x38]
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_0805754C
	pop {r4, pc}
	.align 2, 0
_080576BC: .4byte gRoomVars

	thumb_func_start sub_080576C0
sub_080576C0: @ 0x080576C0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080576EC
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0x38]
	ldr r2, _080576E8 @ =gRoomControls
	ldrh r1, [r2, #6]
	adds r0, r0, r1
	subs r0, #0x20
	str r0, [r4, #0x20]
	ldrh r0, [r4, #0x3a]
	ldrh r1, [r2, #8]
	adds r0, r0, r1
	subs r0, #0x20
	str r0, [r4, #0x24]
	b _080577AA
	.align 2, 0
_080576E8: .4byte gRoomControls
_080576EC:
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x24]
	movs r2, #0x40
	movs r3, #0x40
	bl sub_0806FBFC
	cmp r0, #0
	beq _080577A8
	ldr r5, _08057738 @ =gUnk_02033A90
	ldr r0, [r4, #0x20]
	adds r0, #0x20
	strh r0, [r5, #0x12]
	ldr r1, [r4, #0x24]
	ldr r2, _0805773C @ =gUnk_08107C6C
	ldrb r0, [r4, #0xa]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #0x20
	adds r1, r1, r0
	strh r1, [r5, #0x14]
	adds r0, r4, #0
	adds r0, #0x34
	ldrb r0, [r0]
	strb r0, [r5, #0x16]
	ldrb r0, [r4, #0xa]
	strb r0, [r5, #0x17]
	movs r0, #0x14
	bl CheckGlobalFlag
	cmp r0, #0
	bne _08057740
	movs r0, #1
	strb r0, [r5, #0x18]
	movs r0, #5
	strb r0, [r5, #0x17]
	b _080577AA
	.align 2, 0
_08057738: .4byte gUnk_02033A90
_0805773C: .4byte gUnk_08107C6C
_08057740:
	ldr r2, _08057758 @ =gLinkState
	ldr r0, [r2, #0x30]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0805775C
	ldrb r0, [r2, #2]
	cmp r0, #0
	bne _0805775C
	movs r0, #2
	strb r0, [r5, #0x18]
	b _0805776A
	.align 2, 0
_08057758: .4byte gLinkState
_0805775C:
	bl sub_08057810
	cmp r0, #0
	beq _0805776A
	ldr r1, _080577A0 @ =gUnk_02033A90
	movs r0, #3
	strb r0, [r1, #0x18]
_0805776A:
	ldrh r0, [r4, #0x38]
	ldrh r1, [r4, #0x3a]
	ldrb r2, [r4, #0xe]
	bl sub_080002C0
	cmp r0, #0x3d
	bne _080577AA
	ldrh r0, [r4, #0x38]
	ldr r2, _080577A4 @ =gRoomControls
	ldrh r1, [r2, #6]
	adds r0, r0, r1
	ldrh r1, [r4, #0x3a]
	ldrh r2, [r2, #8]
	adds r1, r1, r2
	ldrb r2, [r4, #0xe]
	bl sub_080577AC
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _080577AA
	movs r0, #1
	strb r0, [r4, #0xf]
	movs r0, #0xa9
	lsls r0, r0, #1
	bl PlaySFX
	b _080577AA
	.align 2, 0
_080577A0: .4byte gUnk_02033A90
_080577A4: .4byte gRoomControls
_080577A8:
	strb r0, [r4, #0xf]
_080577AA:
	pop {r4, r5, pc}

	thumb_func_start sub_080577AC
sub_080577AC: @ 0x080577AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	bl Random
	adds r5, r0, #0
	movs r0, #7
	ands r0, r5
	cmp r0, #0
	bne _08057808
	movs r0, #0xf
	movs r1, #0x26
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08057808
	lsrs r3, r5, #8
	movs r0, #0xf
	ands r3, r0
	lsrs r2, r5, #0x10
	ands r2, r0
	cmp r2, #4
	ble _080577E6
	rsbs r2, r2, #0
_080577E6:
	lsrs r0, r5, #0x18
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080577F2
	rsbs r3, r3, #0
_080577F2:
	adds r0, r6, r3
	strh r0, [r4, #0x2e]
	adds r0, r7, r2
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	adds r0, #0x38
	mov r1, r8
	strb r1, [r0]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
_08057808:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08057810
sub_08057810: @ 0x08057810
	push {lr}
	ldr r2, _08057848 @ =gLinkState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08057850
	adds r0, r2, #0
	adds r0, #0xaa
	ldrb r0, [r0]
	cmp r0, #0
	bne _08057850
	ldr r0, _0805784C @ =gUnk_02033A90
	ldrb r0, [r0, #0x17]
	cmp r0, #6
	beq _08057850
	ldrb r0, [r2, #5]
	cmp r0, #0
	bne _08057850
	adds r0, r2, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #1
	bgt _08057850
	cmp r0, #0
	blt _08057850
	movs r0, #1
	b _08057852
	.align 2, 0
_08057848: .4byte gLinkState
_0805784C: .4byte gUnk_02033A90
_08057850:
	movs r0, #0
_08057852:
	pop {pc}

	thumb_func_start sub_08057854
sub_08057854: @ 0x08057854
	push {lr}
	ldr r2, _08057868 @ =gUnk_08107C70
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08057868: .4byte gUnk_08107C70

	thumb_func_start sub_0805786C
sub_0805786C: @ 0x0805786C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	bl sub_080805F8
	ldr r6, _080578D4 @ =gUnk_03004030
	ldrb r0, [r6, #8]
	cmp r0, #0
	beq _08057914
	ldr r0, [r6]
	cmp r0, #0
	bne _080578C0
	movs r0, #0xff
	strb r0, [r6, #0xa]
	ldr r0, _080578D8 @ =gRoomControls
	ldrb r5, [r0, #5]
	ldr r7, _080578DC @ =gUnk_08107DC0
	ldrb r0, [r0, #4]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r4, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08057AA8
	adds r4, r0, #0
	cmp r4, #0
	beq _080578C0
	ldrb r5, [r4, #5]
	ldrb r0, [r4, #4]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r4, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08057AA8
	adds r4, r0, #0
	cmp r4, #0
	beq _080578C0
	str r4, [r6]
_080578C0:
	ldr r0, _080578D8 @ =gRoomControls
	ldrb r5, [r0, #5]
	ldr r1, _080578DC @ =gUnk_08107DC0
	ldrb r0, [r0, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r6, #0x81
	lsls r6, r6, #7
	b _08057906
	.align 2, 0
_080578D4: .4byte gUnk_03004030
_080578D8: .4byte gRoomControls
_080578DC: .4byte gUnk_08107DC0
_080578E0:
	ldrh r1, [r4]
	adds r1, #0x3f
	adds r0, r6, #0
	movs r2, #1
	bl SetTile
	ldrh r1, [r4]
	adds r1, #0x40
	adds r0, r6, #0
	movs r2, #1
	bl SetTile
	ldrh r1, [r4]
	adds r1, #0x41
	adds r0, r6, #0
	movs r2, #1
	bl SetTile
	adds r4, #8
_08057906:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08057AA8
	adds r4, r0, #0
	cmp r4, #0
	bne _080578E0
_08057914:
	movs r0, #1
	mov r1, r8
	strb r0, [r1, #0xc]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08057920
sub_08057920: @ 0x08057920
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _08057934 @ =gRoomControls
	ldrb r5, [r0, #5]
	ldr r1, _08057938 @ =gUnk_08107DC0
	ldrb r0, [r0, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	b _0805793E
	.align 2, 0
_08057934: .4byte gRoomControls
_08057938: .4byte gUnk_08107DC0
_0805793C:
	adds r4, #8
_0805793E:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08057AA8
	adds r4, r0, #0
	cmp r4, #0
	beq _08057958
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0805795C
	cmp r0, #0
	beq _0805793C
_08057958:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0805795C
sub_0805795C: @ 0x0805795C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r0, _080579BC @ =gUnk_03004030
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _080579C8
	ldr r1, _080579C0 @ =gLinkEntity
	ldr r3, _080579C4 @ =gRoomControls
	ldrh r2, [r1, #0x2e]
	ldrh r0, [r3, #6]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldrh r0, [r1, #0x32]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r3, [r6]
	movs r1, #0x3f
	ands r1, r3
	lsls r1, r1, #4
	adds r1, #8
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r3
	lsls r0, r0, #0xe
	movs r3, #0xc0
	lsls r3, r3, #0xd
	adds r0, r0, r3
	lsrs r3, r0, #0x10
	subs r2, r2, r1
	adds r0, r2, #0
	adds r0, #0x18
	cmp r0, #0x30
	bhi _08057A14
	subs r0, r4, r3
	adds r0, #8
	cmp r0, #0x10
	bhi _08057A14
	cmp r4, r3
	bhs _08057A00
	adds r0, r2, #0
	adds r0, #0xc
	cmp r0, #0x18
	bls _08057A14
	b _08057A00
	.align 2, 0
_080579BC: .4byte gUnk_03004030
_080579C0: .4byte gLinkEntity
_080579C4: .4byte gRoomControls
_080579C8:
	ldr r3, _08057A0C @ =gLinkEntity
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	ldr r2, _08057A10 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r4, r0, #4
	movs r1, #0x3f
	ands r4, r1
	movs r0, #0x32
	ldrsh r5, [r3, r0]
	ldrh r2, [r2, #8]
	subs r0, r5, r2
	asrs r0, r0, #4
	ands r0, r1
	lsls r0, r0, #6
	orrs r4, r0
	ldrh r1, [r6]
	cmp r4, r1
	bne _08057A14
	lsrs r0, r4, #6
	lsls r0, r0, #4
	adds r0, r2, r0
	adds r0, #6
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r5, r3
	bge _08057A14
_08057A00:
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08057A18
	movs r0, #1
	b _08057A16
	.align 2, 0
_08057A0C: .4byte gLinkEntity
_08057A10: .4byte gRoomControls
_08057A14:
	movs r0, #0
_08057A16:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08057A18
sub_08057A18: @ 0x08057A18
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	bl sub_0805E5A8
	ldr r6, _08057A94 @ =gUnk_03004030
	ldrb r0, [r6, #9]
	strb r0, [r6, #0xa]
	ldr r3, _08057A98 @ =gRoomControls
	ldrb r0, [r3, #4]
	strb r0, [r6, #9]
	ldr r1, _08057A9C @ =gUnk_030010A0
	ldrb r0, [r5, #4]
	strb r0, [r1, #0xc]
	ldrb r0, [r5, #5]
	strb r0, [r1, #0xd]
	ldrb r0, [r5, #4]
	strb r0, [r3, #4]
	ldrb r0, [r5, #5]
	strb r0, [r3, #5]
	str r5, [r6]
	ldr r4, _08057AA0 @ =gLinkEntity
	ldrh r1, [r4, #0x2e]
	ldrh r0, [r3, #6]
	subs r1, r1, r0
	ldrh r2, [r5]
	movs r0, #0x3f
	ands r0, r2
	lsls r0, r0, #4
	subs r1, r1, r0
	strh r1, [r6, #4]
	ldrh r1, [r4, #0x32]
	ldrh r0, [r3, #8]
	subs r1, r1, r0
	ldrh r2, [r5]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r2
	lsrs r0, r0, #2
	subs r1, r1, r0
	strh r1, [r6, #6]
	ldrb r1, [r6, #8]
	cmp r1, #0
	bne _08057A86
	ldrb r0, [r5, #5]
	movs r2, #0x80
	orrs r0, r2
	ldrb r3, [r6, #0xb]
	cmp r0, r3
	beq _08057A80
	ldr r0, _08057AA4 @ =gUnk_02034480
	strh r1, [r0]
_08057A80:
	ldrb r0, [r5, #5]
	orrs r0, r2
	strb r0, [r6, #0xb]
_08057A86:
	ldrb r0, [r5, #3]
	bl sub_08080930
	adds r0, r7, #0
	bl sub_0805E900
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08057A94: .4byte gUnk_03004030
_08057A98: .4byte gRoomControls
_08057A9C: .4byte gUnk_030010A0
_08057AA0: .4byte gLinkEntity
_08057AA4: .4byte gUnk_02034480

	thumb_func_start sub_08057AA8
sub_08057AA8: @ 0x08057AA8
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2]
	ldr r3, _08057AC0 @ =0x0000FFFF
	cmp r0, r3
	beq _08057ACC
_08057AB4:
	ldrb r0, [r2, #2]
	cmp r0, r1
	bne _08057AC4
	adds r0, r2, #0
	b _08057ACE
	.align 2, 0
_08057AC0: .4byte 0x0000FFFF
_08057AC4:
	adds r2, #8
	ldrh r0, [r2]
	cmp r0, r3
	bne _08057AB4
_08057ACC:
	movs r0, #0
_08057ACE:
	pop {pc}

	thumb_func_start sub_08057AD0
sub_08057AD0: @ 0x08057AD0
	push {lr}
	ldr r2, _08057AE4 @ =gUnk_08108044
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08057AE4: .4byte gUnk_08108044

	thumb_func_start sub_08057AE8
sub_08057AE8: @ 0x08057AE8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #1
	ldrb r0, [r5, #0xe]
	cmp r0, #1
	bne _08057B04
	ldr r0, _08057B00 @ =0x00000323
	strh r0, [r5, #0x30]
	b _08057B12
	.align 2, 0
_08057B00: .4byte 0x00000323
_08057B04:
	movs r0, #2
	ands r0, r1
	movs r2, #0x36
	cmp r0, #0
	beq _08057B10
	movs r2, #0x37
_08057B10:
	strh r2, [r5, #0x30]
_08057B12:
	ldr r2, _08057B9C @ =gUnk_08108024
	lsls r3, r1, #1
	adds r0, r3, r2
	ldrh r0, [r0]
	movs r4, #0
	strh r0, [r5, #0x28]
	adds r1, #1
	lsls r1, r1, #1
	adds r2, r1, r2
	ldrh r0, [r2]
	strh r0, [r5, #0x2a]
	ldr r2, _08057BA0 @ =gUnk_08108034
	adds r3, r3, r2
	ldrh r0, [r3]
	strh r0, [r5, #0x2c]
	adds r1, r1, r2
	ldrh r0, [r1]
	strh r0, [r5, #0x2e]
	ldrb r2, [r5, #0xb]
	lsrs r0, r2, #2
	movs r1, #0xf
	ands r0, r1
	adds r0, #1
	strh r0, [r5, #0x32]
	movs r0, #0x1c
	strb r0, [r5, #0xe]
	strb r4, [r5, #0xf]
	movs r0, #0x80
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _08057B54
	movs r1, #2
_08057B54:
	strb r1, [r5, #0xc]
	cmp r1, #2
	bne _08057B9A
	ldrh r0, [r5, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _08057B9A
	ldrh r0, [r5, #0x32]
	cmp r0, #0
	beq _08057B94
_08057B6A:
	ldrh r1, [r5, #0x28]
	ldrh r2, [r5, #0x2a]
	adds r0, r5, #0
	bl sub_08057CA4
	ldrh r0, [r5, #0x30]
	movs r2, #0x38
	ldrsh r1, [r5, r2]
	movs r3, #0x3a
	ldrsh r2, [r5, r3]
	lsls r2, r2, #6
	orrs r1, r2
	ldrh r2, [r5, #0x3c]
	bl sub_0807B7D8
	ldrh r0, [r5, #0x32]
	subs r0, #1
	strh r0, [r5, #0x32]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08057B6A
_08057B94:
	adds r0, r5, #0
	bl sub_0805E900
_08057B9A:
	pop {r4, r5, pc}
	.align 2, 0
_08057B9C: .4byte gUnk_08108024
_08057BA0: .4byte gUnk_08108034

	thumb_func_start sub_08057BA4
sub_08057BA4: @ 0x08057BA4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08057C24
	movs r0, #8
	strb r0, [r4, #0xe]
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _08057BF6
	ldrh r0, [r4, #0x32]
	ldrb r1, [r4, #0xf]
	cmp r0, r1
	beq _08057C24
	ldrh r1, [r4, #0x28]
	ldrh r2, [r4, #0x2a]
	adds r0, r4, #0
	bl sub_08057CA4
	ldrh r0, [r4, #0x30]
	movs r2, #0x38
	ldrsh r1, [r4, r2]
	movs r3, #0x3a
	ldrsh r2, [r4, r3]
	lsls r2, r2, #6
	orrs r1, r2
	ldrh r2, [r4, #0x3c]
	bl sub_0807B7D8
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	movs r0, #0x71
	bl PlaySFX
	b _08057C24
_08057BF6:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08057C24
	movs r1, #0x38
	ldrsh r0, [r4, r1]
	movs r2, #0x3a
	ldrsh r1, [r4, r2]
	lsls r1, r1, #6
	orrs r0, r1
	ldrh r1, [r4, #0x3c]
	bl sub_0807BA8C
	ldrh r1, [r4, #0x2c]
	ldrh r2, [r4, #0x2e]
	adds r0, r4, #0
	bl sub_08057CA4
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	movs r0, #0x71
	bl PlaySFX
_08057C24:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08057C28
sub_08057C28: @ 0x08057C28
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _08057C44
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _08057C9C
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	b _08057C9C
_08057C44:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08057C9C
	movs r0, #8
	strb r0, [r4, #0xe]
	ldrh r0, [r4, #0x32]
	ldrb r1, [r4, #0xf]
	cmp r0, r1
	beq _08057C88
	ldrh r1, [r4, #0x28]
	ldrh r2, [r4, #0x2a]
	adds r0, r4, #0
	bl sub_08057CA4
	ldrh r0, [r4, #0x30]
	movs r2, #0x38
	ldrsh r1, [r4, r2]
	movs r3, #0x3a
	ldrsh r2, [r4, r3]
	lsls r2, r2, #6
	orrs r1, r2
	ldrh r2, [r4, #0x3c]
	bl sub_0807B7D8
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	movs r0, #0x71
	bl PlaySFX
	b _08057C9C
_08057C88:
	ldrh r1, [r4, #0x30]
	ldr r0, _08057CA0 @ =0x00000323
	cmp r1, r0
	beq _08057C96
	movs r0, #0x72
	bl PlaySFX
_08057C96:
	adds r0, r4, #0
	bl sub_0805E900
_08057C9C:
	pop {r4, pc}
	.align 2, 0
_08057CA0: .4byte 0x00000323

	thumb_func_start sub_08057CA4
sub_08057CA4: @ 0x08057CA4
	ldrh r3, [r0, #0x38]
	adds r3, r3, r1
	strh r3, [r0, #0x38]
	ldrh r1, [r0, #0x3a]
	adds r1, r1, r2
	strh r1, [r0, #0x3a]
	bx lr
	.align 2, 0

	thumb_func_start sub_08057CB4
sub_08057CB4: @ 0x08057CB4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08057CD6
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	bl sub_0804B128
	str r0, [r4, #0x20]
	cmp r0, #0
	bne _08057CD6
	adds r0, r4, #0
	bl sub_0805E900
	b _08057D42
_08057CD6:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08057CE4
	ldr r0, _08057D44 @ =gLinkState
	ldrb r0, [r0, #0x12]
	cmp r0, #0x1e
	bne _08057D42
_08057CE4:
	ldr r4, [r4, #0x20]
	ldrh r0, [r4]
	ldr r1, _08057D48 @ =0x0000FFFF
	cmp r0, r1
	beq _08057D42
	ldr r5, _08057D4C @ =gLinkEntity
	adds r6, r1, #0
_08057CF2:
	ldrb r2, [r4, #7]
	movs r0, #3
	ands r0, r2
	adds r1, r5, #0
	adds r1, #0x38
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08057D3A
	ldr r0, _08057D44 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08057D18
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08057D3A
_08057D18:
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	ldrb r2, [r4, #4]
	ldrb r3, [r4, #5]
	bl CheckPlayerInRegion
	cmp r0, #0
	beq _08057D3A
	movs r1, #0x36
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _08057D3A
	ldrb r0, [r4, #6]
	bl sub_0804B128
	bl sub_08080840
_08057D3A:
	adds r4, #8
	ldrh r0, [r4]
	cmp r0, r6
	bne _08057CF2
_08057D42:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08057D44: .4byte gLinkState
_08057D48: .4byte 0x0000FFFF
_08057D4C: .4byte gLinkEntity

	thumb_func_start sub_08057D50
sub_08057D50: @ 0x08057D50
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08057D7C
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	ldr r1, _08057DC0 @ =sub_08057E30
	adds r0, r4, #0
	movs r2, #0
	bl sub_08052D74
_08057D7C:
	adds r0, r4, #0
	bl sub_08057E40
	cmp r0, #0
	beq _08057D9A
	ldr r0, _08057DC4 @ =gRoomVars
	ldrb r5, [r0, #0x10]
	adds r1, r4, #0
	adds r1, #0x20
	ldrb r0, [r1]
	cmp r0, r5
	beq _08057D9A
	movs r0, #0
	strb r5, [r1]
	strb r0, [r4, #0xe]
_08057D9A:
	ldr r0, _08057DC8 @ =gRoomControls
	ldrh r3, [r0]
	cmp r3, #0
	bne _08057E2A
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r5, [r0]
	lsls r1, r5, #6
	ldr r0, _08057DCC @ =gUnk_081080A4
	adds r2, r1, r0
	ldrb r1, [r4, #0xe]
	cmp r1, #7
	bgt _08057DD0
	cmp r1, #1
	bge _08057E04
	cmp r1, #0
	beq _08057DD6
	b _08057E2A
	.align 2, 0
_08057DC0: .4byte sub_08057E30
_08057DC4: .4byte gRoomVars
_08057DC8: .4byte gRoomControls
_08057DCC: .4byte gUnk_081080A4
_08057DD0:
	cmp r1, #8
	beq _08057E20
	b _08057E2A
_08057DD6:
	ldr r1, _08057DF8 @ =gUnk_02034490
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r2]
	ldr r1, _08057DFC @ =gUnk_085A2E80
	adds r0, r0, r1
	ldr r1, [r2, #4]
	movs r2, #0x80
	lsls r2, r2, #5
	bl sub_08000E96
	ldr r0, _08057E00 @ =gUnk_081081E4
	adds r0, r5, r0
	ldrb r0, [r0]
	bl sub_0801D714
	b _08057E24
	.align 2, 0
_08057DF8: .4byte gUnk_02034490
_08057DFC: .4byte gUnk_085A2E80
_08057E00: .4byte gUnk_081081E4
_08057E04:
	lsls r1, r1, #3
	adds r1, r1, r2
	ldr r0, [r1]
	ldr r2, _08057E1C @ =gUnk_085A2E80
	adds r0, r0, r2
	ldr r1, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #5
	bl sub_08000E96
	b _08057E24
	.align 2, 0
_08057E1C: .4byte gUnk_085A2E80
_08057E20:
	ldr r0, _08057E2C @ =gUnk_02034490
	strb r3, [r0]
_08057E24:
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
_08057E2A:
	pop {r4, r5, pc}
	.align 2, 0
_08057E2C: .4byte gUnk_02034490

	thumb_func_start sub_08057E30
sub_08057E30: @ 0x08057E30
	push {lr}
	ldr r0, _08057E3C @ =gRoomVars
	ldrb r0, [r0, #0x10]
	bl sub_08057E7C
	pop {pc}
	.align 2, 0
_08057E3C: .4byte gRoomVars

	thumb_func_start sub_08057E40
sub_08057E40: @ 0x08057E40
	push {lr}
	ldr r0, _08057E54 @ =gUnk_08108050
	bl sub_08056300
	adds r1, r0, #0
	cmp r1, #0xff
	bne _08057E58
	movs r0, #0
	b _08057E5E
	.align 2, 0
_08057E54: .4byte gUnk_08108050
_08057E58:
	ldr r0, _08057E60 @ =gRoomVars
	strb r1, [r0, #0x10]
	movs r0, #1
_08057E5E:
	pop {pc}
	.align 2, 0
_08057E60: .4byte gRoomVars

	thumb_func_start sub_08057E64
sub_08057E64: @ 0x08057E64
	push {lr}
	ldr r0, _08057E78 @ =gUnk_08108050
	bl sub_08056300
	cmp r0, #0xff
	beq _08057E74
	bl sub_08057E7C
_08057E74:
	pop {pc}
	.align 2, 0
_08057E78: .4byte gUnk_08108050

	thumb_func_start sub_08057E7C
sub_08057E7C: @ 0x08057E7C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	cmp r4, #4
	bhi _08057EB6
	ldr r0, _08057EB8 @ =gUnk_081081E4
	adds r0, r4, r0
	ldrb r0, [r0]
	bl sub_0801D714
	lsls r1, r4, #6
	ldr r0, _08057EBC @ =gUnk_081080A4
	adds r1, r1, r0
	movs r3, #0
	ldr r2, _08057EC0 @ =0x040000D4
	ldr r6, _08057EC4 @ =gUnk_085A2E80
	ldr r5, _08057EC8 @ =0x84000400
_08057E9C:
	ldr r0, [r1]
	adds r0, r0, r6
	str r0, [r2]
	ldr r0, [r1, #4]
	str r0, [r2, #4]
	str r5, [r2, #8]
	ldr r0, [r2, #8]
	adds r3, #1
	adds r1, #8
	cmp r3, #7
	bls _08057E9C
	ldr r0, _08057ECC @ =gRoomVars
	strb r4, [r0, #0x10]
_08057EB6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08057EB8: .4byte gUnk_081081E4
_08057EBC: .4byte gUnk_081080A4
_08057EC0: .4byte 0x040000D4
_08057EC4: .4byte gUnk_085A2E80
_08057EC8: .4byte 0x84000400
_08057ECC: .4byte gRoomVars

	thumb_func_start sub_08057ED0
sub_08057ED0: @ 0x08057ED0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08057F20
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	bne _08057EF2
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _08057EF4 @ =gScreen
	strh r1, [r0, #0x1a]
	strh r1, [r0, #0x32]
	ldr r1, _08057EF8 @ =sub_08057EFC
	adds r0, r4, #0
	movs r2, #0
	bl sub_08052D74
_08057EF2:
	pop {r4, pc}
	.align 2, 0
_08057EF4: .4byte gScreen
_08057EF8: .4byte sub_08057EFC

	thumb_func_start sub_08057EFC
sub_08057EFC: @ 0x08057EFC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08057F1C @ =gRoomVars
	ldrb r0, [r0, #0x10]
	bl sub_0801D7EC
	bl sub_08058034
	movs r0, #0
	str r0, [r4, #0x3c]
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08057F20
	pop {r4, pc}
	.align 2, 0
_08057F1C: .4byte gRoomVars

	thumb_func_start sub_08057F20
sub_08057F20: @ 0x08057F20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r5, _08057FF4 @ =gRoomControls
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	ldrh r0, [r5, #6]
	subs r4, r1, r0
	lsrs r2, r4, #3
	adds r2, r4, r2
	ldrh r0, [r5, #0x1e]
	movs r1, #0x80
	lsls r1, r1, #3
	subs r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r4, r2, r0
	ldr r6, _08057FF8 @ =gScreen
	adds r0, r4, #0
	movs r1, #0xf
	ands r0, r1
	strh r0, [r6, #0x2e]
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	ldrh r1, [r5, #8]
	subs r0, r0, r1
	movs r1, #0x30
	subs r0, r1, r0
	asrs r0, r0, #2
	mov sl, r1
	mov r1, sl
	subs r0, r1, r0
	strh r0, [r6, #0x30]
	ldr r0, _08057FFC @ =gUnk_02001A40
	mov r8, r0
	str r0, [r6, #0x34]
	ldr r1, _08058000 @ =gUnk_02006F00
	mov sb, r1
	adds r0, r4, #0
	mov r2, r8
	bl sub_08058004
	lsrs r0, r4, #4
	lsls r4, r0, #1
	ldr r0, [r7, #0x38]
	cmp r0, r4
	beq _08057F8C
	str r4, [r7, #0x38]
	movs r0, #1
	strh r0, [r6, #0x32]
_08057F8C:
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	ldrh r0, [r5, #6]
	subs r4, r1, r0
	lsrs r2, r4, #2
	adds r2, r4, r2
	ldrh r0, [r5, #0x1e]
	movs r1, #0x80
	lsls r1, r1, #3
	subs r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r4, r2, r0
	adds r0, r4, #0
	movs r1, #0xf
	ands r0, r1
	strh r0, [r6, #0x16]
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	ldrh r1, [r5, #8]
	subs r0, r0, r1
	movs r1, #0x30
	subs r0, r1, r0
	asrs r0, r0, #1
	mov r1, sl
	subs r0, r1, r0
	strh r0, [r6, #0x18]
	movs r2, #0x80
	lsls r2, r2, #4
	add r2, r8
	str r2, [r6, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #6
	add r1, sb
	adds r0, r4, #0
	bl sub_08058004
	lsrs r0, r4, #4
	lsls r4, r0, #1
	ldr r0, [r7, #0x3c]
	cmp r0, r4
	beq _08057FE8
	str r4, [r7, #0x3c]
	movs r0, #1
	strh r0, [r6, #0x1a]
_08057FE8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08057FF4: .4byte gRoomControls
_08057FF8: .4byte gScreen
_08057FFC: .4byte gUnk_02001A40
_08058000: .4byte gUnk_02006F00

	thumb_func_start sub_08058004
sub_08058004: @ 0x08058004
	push {r4, r5, r6, lr}
	movs r4, #0x20
	lsrs r0, r0, #4
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r3, _0805802C @ =0x040000D4
	ldr r6, _08058030 @ =0x80000020
	movs r5, #0x80
	lsls r5, r5, #1
_08058016:
	str r1, [r3]
	str r2, [r3, #4]
	str r6, [r3, #8]
	ldr r0, [r3, #8]
	adds r1, r1, r5
	adds r2, #0x40
	subs r4, #1
	cmp r4, #0
	bne _08058016
	pop {r4, r5, r6, pc}
	.align 2, 0
_0805802C: .4byte 0x040000D4
_08058030: .4byte 0x80000020

	thumb_func_start sub_08058034
sub_08058034: @ 0x08058034
	push {r4, r5, r6, lr}
	ldr r6, _08058080 @ =gUnk_02002F00
	movs r0, #0x80
	lsls r0, r0, #7
	adds r5, r6, r0
	movs r4, #0
_08058040:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08058084
	movs r1, #0x80
	lsls r1, r1, #4
	adds r6, r6, r1
	adds r5, #0x40
	adds r4, #1
	cmp r4, #3
	bls _08058040
	ldr r0, _08058080 @ =gUnk_02002F00
	movs r1, #0x80
	lsls r1, r1, #6
	adds r6, r0, r1
	movs r1, #0xc0
	lsls r1, r1, #7
	adds r5, r0, r1
	movs r4, #0
_08058066:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08058084
	movs r0, #0x80
	lsls r0, r0, #4
	adds r6, r6, r0
	adds r5, #0x40
	adds r4, #1
	cmp r4, #3
	bls _08058066
	pop {r4, r5, r6, pc}
	.align 2, 0
_08058080: .4byte gUnk_02002F00

	thumb_func_start sub_08058084
sub_08058084: @ 0x08058084
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r4, #0
	ldr r2, _080580A8 @ =0x040000D4
	ldr r6, _080580AC @ =0x80000020
	movs r5, #0x80
	lsls r5, r5, #1
_08058092:
	str r3, [r2]
	str r1, [r2, #4]
	str r6, [r2, #8]
	ldr r0, [r2, #8]
	adds r4, #1
	adds r3, #0x40
	adds r1, r1, r5
	cmp r4, #0x1f
	bls _08058092
	pop {r4, r5, r6, pc}
	.align 2, 0
_080580A8: .4byte 0x040000D4
_080580AC: .4byte 0x80000020

	thumb_func_start sub_080580B0
sub_080580B0: @ 0x080580B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080581B0 @ =gUnk_0200B650
	movs r1, #0
	str r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_0801D7EC
	ldr r0, _080581B4 @ =gRoomVars
	strb r4, [r0, #0x10]
	bl sub_08058034
	ldr r5, _080581B8 @ =gRoomControls
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	ldrh r0, [r5, #6]
	subs r7, r1, r0
	asrs r2, r7, #3
	adds r2, r7, r2
	ldrh r0, [r5, #0x1e]
	movs r4, #0x80
	lsls r4, r4, #3
	subs r0, r4, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r7, r2, r0
	ldr r1, _080581BC @ =gUnk_02006F00
	mov sb, r1
	ldr r2, _080581C0 @ =gUnk_02001A40
	mov r8, r2
	adds r0, r7, #0
	bl sub_08058004
	ldr r0, _080581C4 @ =gScreen
	mov sl, r0
	movs r1, #0xf
	ands r7, r1
	strh r7, [r0, #0x2e]
	movs r2, #0xc
	ldrsh r0, [r5, r2]
	ldrh r1, [r5, #8]
	subs r0, r0, r1
	movs r6, #0x30
	subs r0, r6, r0
	asrs r0, r0, #1
	movs r3, #0x30
	subs r0, r3, r0
	mov r1, sl
	strh r0, [r1, #0x30]
	ldr r0, _080581C8 @ =0x00001D09
	strh r0, [r1, #0x2c]
	mov r2, r8
	str r2, [r1, #0x34]
	movs r0, #1
	strh r0, [r1, #0x32]
	movs r2, #0xa
	ldrsh r1, [r5, r2]
	ldrh r0, [r5, #6]
	subs r7, r1, r0
	asrs r1, r7, #2
	adds r1, r7, r1
	ldrh r0, [r5, #0x1e]
	subs r4, r4, r0
	lsrs r0, r4, #0x1f
	adds r4, r4, r0
	asrs r4, r4, #1
	adds r7, r1, r4
	movs r0, #0x80
	lsls r0, r0, #6
	add sb, r0
	movs r1, #0x80
	lsls r1, r1, #4
	add r8, r1
	adds r0, r7, #0
	mov r1, sb
	mov r2, r8
	str r3, [sp]
	bl sub_08058004
	movs r2, #0xf
	ands r7, r2
	mov r0, sl
	strh r7, [r0, #0x16]
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	ldrh r1, [r5, #8]
	subs r0, r0, r1
	subs r6, r6, r0
	asrs r6, r6, #1
	ldr r3, [sp]
	subs r3, r3, r6
	mov r2, sl
	strh r3, [r2, #0x18]
	ldr r0, _080581CC @ =0x00001E09
	strh r0, [r2, #0x14]
	mov r0, r8
	str r0, [r2, #0x1c]
	movs r1, #1
	strh r1, [r2, #0x1a]
	mov r1, sl
	adds r1, #0x66
	ldr r0, _080581D0 @ =0x00003C48
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080581D4 @ =0x00000609
	strh r0, [r1]
	ldrh r1, [r2]
	movs r2, #0xa0
	lsls r2, r2, #4
	adds r0, r2, #0
	orrs r0, r1
	mov r1, sl
	strh r0, [r1]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080581B0: .4byte gUnk_0200B650
_080581B4: .4byte gRoomVars
_080581B8: .4byte gRoomControls
_080581BC: .4byte gUnk_02006F00
_080581C0: .4byte gUnk_02001A40
_080581C4: .4byte gScreen
_080581C8: .4byte 0x00001D09
_080581CC: .4byte 0x00001E09
_080581D0: .4byte 0x00003C48
_080581D4: .4byte 0x00000609

	thumb_func_start sub_080581D8
sub_080581D8: @ 0x080581D8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08058210
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	bne _080581F8
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _080581FC @ =gScreen
	strh r1, [r0, #0x1a]
	ldr r1, _08058200 @ =sub_08058204
	adds r0, r4, #0
	movs r2, #0
	bl sub_08052D74
_080581F8:
	pop {r4, pc}
	.align 2, 0
_080581FC: .4byte gScreen
_08058200: .4byte sub_08058204

	thumb_func_start sub_08058204
sub_08058204: @ 0x08058204
	push {lr}
	ldrb r0, [r0, #0xa]
	bl sub_08058324
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08058210
sub_08058210: @ 0x08058210
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	bl sub_08058244
	adds r3, r0, #0
	ldr r0, [r4, #0x3c]
	cmp r0, r3
	beq _08058234
	str r3, [r4, #0x3c]
	ldr r1, _08058238 @ =gUnk_02006F00
	ldr r2, _0805823C @ =gUnk_02001A40
	adds r0, r3, #0
	bl sub_080582A0
	ldr r1, _08058240 @ =gScreen
	movs r0, #1
	strh r0, [r1, #0x1a]
_08058234:
	pop {r4, pc}
	.align 2, 0
_08058238: .4byte gUnk_02006F00
_0805823C: .4byte gUnk_02001A40
_08058240: .4byte gScreen

	thumb_func_start sub_08058244
sub_08058244: @ 0x08058244
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r0, #0
	ldr r5, _08058294 @ =gRoomControls
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	ldrh r4, [r5, #8]
	subs r0, r0, r4
	lsls r0, r0, #5
	ldrh r1, [r5, #0x20]
	subs r1, #0xa0
	bl __divsi3
	ldr r2, _08058298 @ =gScreen
	mov r8, r2
	adds r4, r4, r0
	strh r4, [r2, #0x18]
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	ldrh r0, [r5, #6]
	subs r1, r1, r0
	ldr r0, _0805829C @ =gUnk_081081EC
	lsls r6, r6, #1
	adds r6, r6, r0
	ldrh r0, [r6]
	muls r0, r1, r0
	ldrh r1, [r5, #0x1e]
	subs r1, #0xf0
	bl __divsi3
	movs r2, #0xf
	adds r1, r0, #0
	ands r1, r2
	mov r2, r8
	strh r1, [r2, #0x16]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, pc}
	.align 2, 0
_08058294: .4byte gRoomControls
_08058298: .4byte gScreen
_0805829C: .4byte gUnk_081081EC

	thumb_func_start sub_080582A0
sub_080582A0: @ 0x080582A0
	push {r4, r5, r6, lr}
	movs r4, #0x20
	lsrs r0, r0, #4
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r3, _080582C8 @ =0x040000D4
	ldr r6, _080582CC @ =0x80000020
	movs r5, #0x80
	lsls r5, r5, #1
_080582B2:
	str r1, [r3]
	str r2, [r3, #4]
	str r6, [r3, #8]
	ldr r0, [r3, #8]
	adds r1, r1, r5
	adds r2, #0x40
	subs r4, #1
	cmp r4, #0
	bne _080582B2
	pop {r4, r5, r6, pc}
	.align 2, 0
_080582C8: .4byte 0x040000D4
_080582CC: .4byte 0x80000020

	thumb_func_start sub_080582D0
sub_080582D0: @ 0x080582D0
	push {r4, r5, lr}
	ldr r4, _080582F4 @ =gUnk_02002F00
	movs r0, #0x80
	lsls r0, r0, #7
	adds r5, r4, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080582F8
	movs r0, #0x80
	lsls r0, r0, #4
	adds r4, r4, r0
	adds r5, #0x40
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080582F8
	pop {r4, r5, pc}
	.align 2, 0
_080582F4: .4byte gUnk_02002F00

	thumb_func_start sub_080582F8
sub_080582F8: @ 0x080582F8
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r4, #0
	ldr r2, _0805831C @ =0x040000D4
	ldr r6, _08058320 @ =0x80000020
	movs r5, #0x80
	lsls r5, r5, #1
_08058306:
	str r3, [r2]
	str r1, [r2, #4]
	str r6, [r2, #8]
	ldr r0, [r2, #8]
	adds r4, #1
	adds r3, #0x40
	adds r1, r1, r5
	cmp r4, #0x1f
	bls _08058306
	pop {r4, r5, r6, pc}
	.align 2, 0
_0805831C: .4byte 0x040000D4
_08058320: .4byte 0x80000020

	thumb_func_start sub_08058324
sub_08058324: @ 0x08058324
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805836C @ =gUnk_0200B650
	movs r0, #0
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x86
	bl sub_0801D714
	adds r0, r4, #0
	adds r0, #0x36
	bl sub_0801D7EC
	bl sub_080582D0
	adds r0, r4, #0
	bl sub_08058244
	ldr r1, _08058370 @ =gUnk_02006F00
	ldr r4, _08058374 @ =gUnk_02001A40
	adds r2, r4, #0
	bl sub_080582A0
	ldr r1, _08058378 @ =gScreen
	ldr r0, _0805837C @ =0x00001D47
	strh r0, [r1, #0x14]
	str r4, [r1, #0x1c]
	movs r0, #1
	strh r0, [r1, #0x1a]
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
	pop {r4, pc}
	.align 2, 0
_0805836C: .4byte gUnk_0200B650
_08058370: .4byte gUnk_02006F00
_08058374: .4byte gUnk_02001A40
_08058378: .4byte gScreen
_0805837C: .4byte 0x00001D47

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
	ldr r0, _080585D8 @ =gUnk_02033A90
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
_080585D8: .4byte gUnk_02033A90

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

	thumb_func_start sub_080585F0
sub_080585F0: @ 0x080585F0
	push {lr}
	ldr r2, _08058604 @ =gUnk_08108208
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08058604: .4byte gUnk_08108208

	thumb_func_start sub_08058608
sub_08058608: @ 0x08058608
	push {lr}
	ldr r2, _0805861C @ =gUnk_08108210
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805861C: .4byte gUnk_08108210

	thumb_func_start sub_08058620
sub_08058620: @ 0x08058620
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	bne _08058648
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	bne _0805863E
	adds r0, r4, #0
	bl sub_080586EC
_0805863E:
	adds r0, r4, #0
	movs r1, #3
	bl sub_0805E3A0
	b _0805864C
_08058648:
	bl DeleteThisEntity
_0805864C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08058650
sub_08058650: @ 0x08058650
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3c]
	bl CheckFlags
	cmp r0, #0
	beq _08058698
	adds r0, r4, #0
	bl sub_080586EC
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	bne _08058692
	ldr r1, _0805869C @ =gRoomVars
	ldrb r0, [r1, #9]
	movs r3, #0x33
	cmp r0, #0
	beq _0805867A
	adds r3, r0, #0
_0805867A:
	ldr r0, _080586A0 @ =gUnk_02033A90
	movs r1, #0x86
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r2, [r0]
	adds r1, r4, #0
	adds r1, #0x20
	strb r2, [r1]
	str r3, [r0]
	adds r0, r3, #0
	bl PlaySFX
_08058692:
	ldr r0, _080586A4 @ =0x00000B0F
	bl sub_080186C0
_08058698:
	pop {r4, pc}
	.align 2, 0
_0805869C: .4byte gRoomVars
_080586A0: .4byte gUnk_02033A90
_080586A4: .4byte 0x00000B0F

	thumb_func_start sub_080586A8
sub_080586A8: @ 0x080586A8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _080586E4
	ldrh r0, [r4, #0x3e]
	bl SetFlag
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	beq _080586E0
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	bne _080586E0
	ldr r1, _080586E8 @ =gUnk_02033A90
	movs r0, #0x86
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	str r0, [r1]
	bl PlaySFX
	bl sub_0801855C
_080586E0:
	bl DeleteThisEntity
_080586E4:
	pop {r4, pc}
	.align 2, 0
_080586E8: .4byte gUnk_02033A90

	thumb_func_start sub_080586EC
sub_080586EC: @ 0x080586EC
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r1, #0
	movs r0, #2
	strb r0, [r7, #0xc]
	strb r1, [r7, #0xe]
	movs r6, #0
	adds r0, r7, #0
	bl sub_08058760
	adds r5, r0, #0
	cmp r5, #0
	bne _0805870A
	bl DeleteThisEntity
_0805870A:
	ldrb r0, [r7, #0xb]
	bl sub_0804B128
	adds r4, r0, #0
	cmp r4, #0
	beq _0805875C
	b _08058756
_08058718:
	adds r0, r4, #0
	adds r4, #0x10
	bl CreateEntity
	adds r3, r0, #0
	cmp r3, #0
	beq _08058744
	ldrb r0, [r3, #8]
	cmp r0, #3
	bne _08058744
	adds r2, r3, #0
	adds r2, #0x6d
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r1, r0
	strb r1, [r2]
	adds r2, r6, #0
	adds r6, #1
	adds r0, r5, #0
	adds r1, r3, #0
	bl sub_08058798
_08058744:
	cmp r6, #6
	bls _08058756
	movs r6, #0
	adds r0, r7, #0
	bl sub_08058760
	adds r5, r0, #0
	cmp r5, #0
	beq _0805875C
_08058756:
	ldrb r0, [r4]
	cmp r0, #0xff
	bne _08058718
_0805875C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08058760
sub_08058760: @ 0x08058760
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0805E8D4
	adds r4, r0, #0
	cmp r4, #0
	beq _08058794
	movs r0, #9
	strb r0, [r4, #8]
	movs r0, #0xb
	strb r0, [r4, #9]
	movs r0, #1
	strb r0, [r4, #0xa]
	str r5, [r4, #0x14]
	ldrb r0, [r5, #0xe]
	adds r0, #1
	strb r0, [r5, #0xe]
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #0x20
	bl sub_0801D630
	adds r0, r4, #0
	movs r1, #8
	bl sub_0805EA2C
_08058794:
	adds r0, r4, #0
	pop {r4, r5, pc}

	thumb_func_start sub_08058798
sub_08058798: @ 0x08058798
	lsls r2, r2, #2
	adds r3, r0, #0
	adds r3, #0x20
	adds r3, r3, r2
	str r1, [r3]
	ldrb r1, [r0, #0xe]
	adds r1, #1
	strb r1, [r0, #0xe]
	bx lr
	.align 2, 0

	thumb_func_start sub_080587AC
sub_080587AC: @ 0x080587AC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080587C2
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #3
	bl sub_0805E3A0
_080587C2:
	movs r3, #0
	movs r2, #0
	adds r5, r4, #0
	adds r5, #0x20
_080587CA:
	lsls r0, r2, #2
	adds r1, r5, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _080587E0
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080587DE
	str r0, [r1]
	b _080587E0
_080587DE:
	movs r3, #1
_080587E0:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _080587CA
	cmp r3, #0
	bne _080587FE
	ldr r1, [r4, #0x14]
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	beq _080587FA
	subs r0, #1
	strb r0, [r1, #0xe]
_080587FA:
	bl DeleteThisEntity
_080587FE:
	pop {r4, r5, pc}

	thumb_func_start sub_08058800
sub_08058800: @ 0x08058800
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r6, _08058830 @ =gUnk_03003DB0
	ldr r3, [r6, #4]
	cmp r3, r6
	beq _0805884A
	ldr r0, _08058834 @ =0x0000FFFF
	mov ip, r0
	ldr r7, _08058838 @ =0x00000B09
_08058814:
	ldrh r1, [r3, #8]
	mov r0, ip
	ands r0, r1
	cmp r0, r7
	bne _08058844
	movs r2, #0
	adds r1, r3, #0
	adds r1, #0x20
_08058824:
	ldr r0, [r1]
	cmp r4, r0
	bne _0805883C
	str r5, [r1]
	b _0805884A
	.align 2, 0
_08058830: .4byte gUnk_03003DB0
_08058834: .4byte 0x0000FFFF
_08058838: .4byte 0x00000B09
_0805883C:
	adds r1, #4
	adds r2, #1
	cmp r2, #7
	bls _08058824
_08058844:
	ldr r3, [r3, #4]
	cmp r3, r6
	bne _08058814
_0805884A:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0805884C
sub_0805884C: @ 0x0805884C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08058880 @ =gUnk_0810821C
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08058BC8
	ldr r0, _08058884 @ =gUnk_03003DE4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _08058888 @ =gUnk_02017AA0
	adds r0, r0, r1
	ldr r1, _0805888C @ =0x04000020
	ldr r2, _08058890 @ =0xA2600008
	bl sub_0805622C
	pop {r4, pc}
	.align 2, 0
_08058880: .4byte gUnk_0810821C
_08058884: .4byte gUnk_03003DE4
_08058888: .4byte gUnk_02017AA0
_0805888C: .4byte 0x04000020
_08058890: .4byte 0xA2600008

	thumb_func_start sub_08058894
sub_08058894: @ 0x08058894
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _080588C4 @ =0x00001234
	str r0, [r4, #0x28]
	movs r0, #0x15
	movs r1, #2
	bl CheckLocalFlags
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	strb r1, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08058CB0
	ldr r1, _080588C8 @ =sub_08058D34
	adds r0, r4, #0
	movs r2, #0
	bl sub_08052D74
	pop {r4, pc}
	.align 2, 0
_080588C4: .4byte 0x00001234
_080588C8: .4byte sub_08058D34

	thumb_func_start sub_080588CC
sub_080588CC: @ 0x080588CC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08058CFC
	adds r0, r4, #0
	bl sub_08058A04
	ldr r0, _080588E8 @ =gUnk_030010A0
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _080588EC
	movs r0, #2
	strb r0, [r4, #0xc]
	b _080588F2
	.align 2, 0
_080588E8: .4byte gUnk_030010A0
_080588EC:
	adds r0, r4, #0
	bl sub_080588F8
_080588F2:
	pop {r4, pc}

	thumb_func_start nullsub_108
nullsub_108: @ 0x080588F4
	bx lr
	.align 2, 0

	thumb_func_start sub_080588F8
sub_080588F8: @ 0x080588F8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _08058952
	movs r0, #0x26
	ldrsh r2, [r4, r0]
	ldr r0, [r4, #0x28]
	subs r1, r0, r2
	cmp r1, #0
	blt _08058914
	cmp r1, #8
	bhi _0805891A
	b _08058968
_08058914:
	subs r0, r2, r0
	cmp r0, #8
	bls _08058968
_0805891A:
	ldr r0, _08058934 @ =0x00001234
	str r0, [r4, #0x28]
	movs r2, #0x26
	ldrsh r1, [r4, r2]
	ldr r0, _08058938 @ =0x0000FFFE
	ands r1, r0
	cmp r1, #0xa0
	beq _08058940
	cmp r1, #0xa0
	bgt _0805893C
	cmp r1, #0x48
	beq _08058940
	b _08058968
	.align 2, 0
_08058934: .4byte 0x00001234
_08058938: .4byte 0x0000FFFE
_0805893C:
	cmp r1, #0xf0
	bne _08058968
_08058940:
	movs r3, #0x26
	ldrsh r0, [r4, r3]
	str r0, [r4, #0x28]
	movs r0, #0x2d
	strb r0, [r4, #0xf]
	movs r0, #0x8c
	bl PlaySFX
	b _08058968
_08058952:
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x29
	bls _08058964
	ldr r0, [r4, #0x28]
	subs r0, #2
	b _08058966
_08058964:
	ldr r0, [r4, #0x28]
_08058966:
	strh r0, [r4, #0x26]
_08058968:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080589DE
	ldr r0, _080589A4 @ =gLinkEntity
	movs r2, #0x32
	ldrsh r1, [r0, r2]
	ldr r0, _080589A8 @ =gRoomControls
	ldrh r0, [r0, #8]
	subs r2, r1, r0
	adds r1, r2, #0
	subs r1, #0x50
	cmp r1, #0
	bge _08058986
	movs r1, #0x50
	subs r1, r1, r2
_08058986:
	lsrs r1, r1, #3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0xc
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r0, r3
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _080589DE
	cmp r2, #0x48
	bgt _080589AC
	ldr r0, [r4, #0x24]
	subs r0, r0, r1
	b _080589B4
	.align 2, 0
_080589A4: .4byte gLinkEntity
_080589A8: .4byte gRoomControls
_080589AC:
	cmp r2, #0x57
	ble _080589B6
	ldr r0, [r4, #0x24]
	adds r0, r0, r1
_080589B4:
	str r0, [r4, #0x24]
_080589B6:
	ldr r2, [r4, #0x2c]
	ldr r0, [r4, #0x24]
	subs r1, r2, r0
	adds r3, r0, #0
	cmp r1, #0
	blt _080589CC
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r1, r0
	bhi _080589D6
	b _080589DE
_080589CC:
	subs r1, r3, r2
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r1, r0
	bls _080589DE
_080589D6:
	str r3, [r4, #0x2c]
	movs r0, #0x8b
	bl PlaySFX
_080589DE:
	movs r0, #0x26
	ldrsh r1, [r4, r0]
	str r1, [r4, #0x20]
	cmp r1, #0
	bge _080589F0
	ldr r0, _080589EC @ =0x000001FF
	b _080589F8
	.align 2, 0
_080589EC: .4byte 0x000001FF
_080589F0:
	ldr r0, _08058A00 @ =0x000001FF
	cmp r1, r0
	ble _080589FC
	movs r0, #0
_080589F8:
	str r0, [r4, #0x20]
	strh r0, [r4, #0x26]
_080589FC:
	pop {r4, pc}
	.align 2, 0
_08058A00: .4byte 0x000001FF

	thumb_func_start sub_08058A04
sub_08058A04: @ 0x08058A04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r6, _08058A68 @ =gLinkEntity
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	ldr r7, _08058A6C @ =gRoomControls
	ldrh r0, [r7, #6]
	subs r1, r1, r0
	mov r8, r1
	movs r0, #0x32
	ldrsh r1, [r6, r0]
	ldrh r0, [r7, #8]
	subs r5, r1, r0
	ldr r0, [r4, #0x20]
	ldr r1, _08058A70 @ =0xFFFFFEE8
	adds r0, r0, r1
	cmp r0, #0xc
	bhi _08058A78
	movs r0, #0x17
	bl CheckGlobalFlag
	cmp r0, #0
	beq _08058A78
	mov r0, r8
	subs r0, #0x6d
	cmp r0, #0x16
	bhi _08058A78
	adds r0, r5, #0
	subs r0, #0x45
	cmp r0, #0x16
	bhi _08058A78
	movs r0, #0x36
	ldrsh r2, [r6, r0]
	cmp r2, #0
	bne _08058A78
	ldr r0, _08058A74 @ =gLinkState
	movs r1, #3
	strb r1, [r0, #0xc]
	adds r0, #0x38
	strb r2, [r0]
	ldrh r0, [r7, #6]
	adds r0, #0x78
	strh r0, [r6, #0x2e]
	ldrh r0, [r7, #8]
	adds r0, #0x50
	strh r0, [r6, #0x32]
	b _08058AFC
	.align 2, 0
_08058A68: .4byte gLinkEntity
_08058A6C: .4byte gRoomControls
_08058A70: .4byte 0xFFFFFEE8
_08058A74: .4byte gLinkState
_08058A78:
	mov r1, r8
	cmp r1, #0x77
	bgt _08058AC0
	cmp r5, #0x4f
	bgt _08058AA0
	ldr r3, _08058A9C @ =gUnk_08108228
	adds r0, r4, #0
	movs r1, #0x88
	movs r2, #0xb0
	bl sub_08058B08
	cmp r0, #0
	beq _08058AFC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08058B5C
	b _08058AFC
	.align 2, 0
_08058A9C: .4byte gUnk_08108228
_08058AA0:
	ldr r3, _08058ABC @ =gUnk_08108258
	adds r0, r4, #0
	movs r1, #0x38
	movs r2, #0x60
	bl sub_08058B08
	cmp r0, #0
	beq _08058AFC
	adds r0, r4, #0
	movs r1, #1
	bl sub_08058B5C
	b _08058AFC
	.align 2, 0
_08058ABC: .4byte gUnk_08108258
_08058AC0:
	cmp r5, #0x4f
	bgt _08058AE4
	movs r2, #0x84
	lsls r2, r2, #1
	ldr r3, _08058AE0 @ =gUnk_08108288
	adds r0, r4, #0
	movs r1, #0xe0
	bl sub_08058B08
	cmp r0, #0
	beq _08058AFC
	adds r0, r4, #0
	movs r1, #2
	bl sub_08058B5C
	b _08058AFC
	.align 2, 0
_08058AE0: .4byte gUnk_08108288
_08058AE4:
	ldr r3, _08058B04 @ =gUnk_081082B8
	adds r0, r4, #0
	movs r1, #0x90
	movs r2, #0xb8
	bl sub_08058B08
	cmp r0, #0
	beq _08058AFC
	adds r0, r4, #0
	movs r1, #3
	bl sub_08058B5C
_08058AFC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08058B04: .4byte gUnk_081082B8

	thumb_func_start sub_08058B08
sub_08058B08: @ 0x08058B08
	push {r4, r5, lr}
	adds r4, r3, #0
	ldr r0, [r0, #0x20]
	cmp r0, r1
	blo _08058B16
	cmp r0, r2
	bls _08058B1A
_08058B16:
	movs r0, #0
	b _08058B50
_08058B1A:
	subs r0, r0, r1
	lsrs r0, r0, #3
	lsls r0, r0, #3
	adds r4, r4, r0
	ldr r3, _08058B54 @ =gLinkEntity
	movs r0, #0x2e
	ldrsh r2, [r3, r0]
	ldr r1, _08058B58 @ =gRoomControls
	ldrh r0, [r1, #6]
	subs r2, r2, r0
	ldrh r0, [r4]
	subs r2, r2, r0
	movs r5, #0x32
	ldrsh r0, [r3, r5]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	movs r1, #0
	ldrh r3, [r4, #4]
	cmp r2, r3
	bhs _08058B4E
	ldrh r4, [r4, #6]
	cmp r0, r4
	bhs _08058B4E
	movs r1, #1
_08058B4E:
	adds r0, r1, #0
_08058B50:
	pop {r4, r5, pc}
	.align 2, 0
_08058B54: .4byte gLinkEntity
_08058B58: .4byte gRoomControls

	thumb_func_start sub_08058B5C
sub_08058B5C: @ 0x08058B5C
	push {r4, r5, lr}
	ldr r3, _08058BB4 @ =gUnk_030010A0
	movs r0, #0
	movs r4, #1
	strb r4, [r3, #8]
	strb r0, [r3, #9]
	movs r5, #4
	movs r0, #4
	strb r0, [r3, #0xf]
	ldr r0, _08058BB8 @ =gRoomControls
	ldrb r0, [r0, #4]
	strb r0, [r3, #0xc]
	movs r0, #6
	strb r0, [r3, #0xd]
	adds r2, r1, #0
	ands r2, r4
	rsbs r0, r2, #0
	orrs r0, r2
	asrs r0, r0, #0x1f
	ands r0, r5
	strb r0, [r3, #0xe]
	ldr r4, _08058BBC @ =gUnk_081082E8
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r0, r2, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r3, #0x10]
	adds r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r3, #0x12]
	ldr r1, _08058BC0 @ =gUnk_02002A40
	adds r2, #2
	lsls r2, r2, #1
	adds r2, r2, r4
	ldrh r0, [r2]
	strb r0, [r1, #7]
	ldr r0, _08058BC4 @ =0x00000121
	bl PlaySFX
	pop {r4, r5, pc}
	.align 2, 0
_08058BB4: .4byte gUnk_030010A0
_08058BB8: .4byte gRoomControls
_08058BBC: .4byte gUnk_081082E8
_08058BC0: .4byte gUnk_02002A40
_08058BC4: .4byte 0x00000121

	thumb_func_start sub_08058BC8
sub_08058BC8: @ 0x08058BC8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	mov sb, r0
	ldr r0, _08058C9C @ =gUnk_03003DE4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _08058CA0 @ =gUnk_02017AA0
	adds r4, r0, r1
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [sp]
	mov r1, sp
	movs r2, #0
	movs r0, #0x78
	strh r0, [r1, #8]
	movs r0, #0x80
	strh r0, [r1, #0xa]
	mov r0, sp
	strh r2, [r0, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xc]
	movs r5, #0
	mov r6, sp
	ldr r0, _08058CA4 @ =gUnk_080C9160
	mov r8, r0
	adds r7, r1, #0
_08058C0A:
	lsls r0, r5, #7
	movs r1, #0xa0
	bl __divsi3
	movs r1, #0xff
	ands r0, r1
	lsls r1, r0, #1
	add r1, r8
	movs r3, #0
	ldrsh r2, [r1, r3]
	lsls r1, r2, #1
	adds r1, r1, r2
	asrs r1, r1, #2
	adds r1, r1, r7
	strh r1, [r6, #0xc]
	lsls r0, r0, #2
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	asrs r0, r0, #4
	subs r0, r7, r0
	strh r0, [r6, #0xe]
	mov r3, sb
	ldr r0, [r3, #0x20]
	adds r0, r0, r5
	lsls r0, r0, #8
	str r0, [sp, #4]
	mov r0, sp
	adds r1, r4, #0
	movs r2, #1
	bl BgAffineSet
	adds r4, #0x10
	adds r5, #1
	cmp r5, #0x9f
	bls _08058C0A
	ldr r0, _08058C9C @ =gUnk_03003DE4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _08058CA8 @ =gUnk_02017BA0
	adds r4, r0, r1
	ldr r2, _08058CAC @ =gScreen
	ldrh r0, [r4]
	strh r0, [r2, #0x38]
	ldrh r0, [r4, #2]
	strh r0, [r2, #0x3a]
	ldrh r0, [r4, #4]
	strh r0, [r2, #0x3c]
	ldrh r0, [r4, #6]
	strh r0, [r2, #0x3e]
	ldrh r1, [r4, #8]
	adds r0, r2, #0
	adds r0, #0x40
	strh r1, [r0]
	ldrh r0, [r4, #0xa]
	adds r1, r2, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r4, #0xc]
	adds r0, r2, #0
	adds r0, #0x44
	strh r1, [r0]
	ldrh r1, [r4, #0xe]
	adds r0, #2
	strh r1, [r0]
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08058C9C: .4byte gUnk_03003DE4
_08058CA0: .4byte gUnk_02017AA0
_08058CA4: .4byte gUnk_080C9160
_08058CA8: .4byte gUnk_02017BA0
_08058CAC: .4byte gScreen

	thumb_func_start sub_08058CB0
sub_08058CB0: @ 0x08058CB0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08058CD8 @ =gLinkEntity
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	ldr r3, _08058CDC @ =gRoomControls
	ldrh r0, [r3, #6]
	subs r1, r1, r0
	movs r0, #0x32
	ldrsh r2, [r2, r0]
	ldrh r0, [r3, #8]
	subs r2, r2, r0
	cmp r1, #0x77
	bhi _08058CE0
	movs r1, #1
	cmp r2, #0x4f
	bhi _08058CE8
	movs r1, #0
	b _08058CE8
	.align 2, 0
_08058CD8: .4byte gLinkEntity
_08058CDC: .4byte gRoomControls
_08058CE0:
	movs r1, #3
	cmp r2, #0x4f
	bhi _08058CE8
	movs r1, #2
_08058CE8:
	ldr r0, _08058CF8 @ =gUnk_08108300
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	str r0, [r4, #0x20]
	strh r0, [r4, #0x26]
	pop {r4, pc}
	.align 2, 0
_08058CF8: .4byte gUnk_08108300

	thumb_func_start sub_08058CFC
sub_08058CFC: @ 0x08058CFC
	push {r4, r5, lr}
	ldr r5, _08058D2C @ =gLinkEntity
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	ldr r1, _08058D30 @ =gRoomControls
	movs r2, #0xc
	ldrsh r1, [r1, r2]
	subs r4, r0, r1
	cmp r4, #0x4b
	bhi _08058D1A
	adds r0, r5, #0
	movs r1, #0xc0
	movs r2, #0x10
	bl sub_080044AE
_08058D1A:
	cmp r4, #0x54
	bls _08058D28
	adds r0, r5, #0
	movs r1, #0xc0
	movs r2, #0
	bl sub_080044AE
_08058D28:
	pop {r4, r5, pc}
	.align 2, 0
_08058D2C: .4byte gLinkEntity
_08058D30: .4byte gRoomControls

	thumb_func_start sub_08058D34
sub_08058D34: @ 0x08058D34
	push {r4, lr}
	movs r0, #0x28
	bl sub_0801D714
	ldr r0, _08058DAC @ =gUnk_02017700
	movs r2, #0x90
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0x20
	bl sub_0801D66C
	ldr r2, _08058DB0 @ =gUnk_0200B644
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2]
	movs r0, #0x16
	bl sub_0801D7EC
	ldr r1, _08058DB4 @ =gScreen
	ldrh r0, [r1]
	movs r3, #0
	movs r2, #1
	movs r4, #0
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08058DB8 @ =0x0000BC82
	strh r0, [r1, #0x20]
	ldr r0, _08058DBC @ =0x00005E86
	strh r0, [r1, #0x14]
	strh r3, [r1, #0x16]
	strh r3, [r1, #0x18]
	adds r2, r1, #0
	adds r2, #0x66
	ldr r0, _08058DC0 @ =0x00003456
	strh r0, [r2]
	adds r1, #0x68
	ldr r0, _08058DC4 @ =0x00000909
	strh r0, [r1]
	ldr r0, _08058DC8 @ =gUnk_02033A90
	movs r2, #0x86
	lsls r2, r2, #4
	adds r1, r0, r2
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _08058DCC @ =gUnk_02000070
	strb r4, [r0]
	movs r0, #0x17
	bl CheckGlobalFlag
	cmp r0, #0
	beq _08058DA8
	movs r0, #0x4a
	bl sub_0801D7EC
_08058DA8:
	pop {r4, pc}
	.align 2, 0
_08058DAC: .4byte gUnk_02017700
_08058DB0: .4byte gUnk_0200B644
_08058DB4: .4byte gScreen
_08058DB8: .4byte 0x0000BC82
_08058DBC: .4byte 0x00005E86
_08058DC0: .4byte 0x00003456
_08058DC4: .4byte 0x00000909
_08058DC8: .4byte gUnk_02033A90
_08058DCC: .4byte gUnk_02000070

	thumb_func_start sub_08058DD0
sub_08058DD0: @ 0x08058DD0
	push {lr}
	ldr r2, _08058DE4 @ =gUnk_08108308
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08058DE4: .4byte gUnk_08108308

	thumb_func_start sub_08058DE8
sub_08058DE8: @ 0x08058DE8
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _08058DFC
	bl DeleteThisEntity
	b _08058E14
_08058DFC:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0x3a]
	bl GetLayerByIndex
	ldrh r1, [r4, #0x38]
	lsls r1, r1, #1
	adds r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x30]
	ldrh r0, [r0]
	strh r0, [r4, #0x28]
_08058E14:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08058E18
sub_08058E18: @ 0x08058E18
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x30]
	ldrh r0, [r2, #0x28]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08058E30
	ldrb r0, [r2, #0xc]
	adds r0, #1
	strb r0, [r2, #0xc]
	movs r0, #0xf
	strb r0, [r2, #0xe]
_08058E30:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08058E34
sub_08058E34: @ 0x08058E34
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08058E5E
	ldrh r0, [r4, #0x3e]
	bl SetFlag
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08058E58
	bl sub_0804B128
	bl LoadRoomEntityList
_08058E58:
	adds r0, r4, #0
	bl sub_0805E900
_08058E5E:
	pop {r4, pc}

	thumb_func_start sub_08058E60
sub_08058E60: @ 0x08058E60
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08058E80
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _08058E80
	adds r0, r4, #0
	bl sub_0805E900
	b _08058EC8
_08058E80:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _08058EC8
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _08058E9E
	movs r0, #0
	strb r0, [r4, #0xb]
	movs r0, #0xff
	bl sub_08078A90
	bl sub_08078B48
_08058E9E:
	ldrh r1, [r4, #0x3a]
	movs r2, #0x3a
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _08058EC4
	movs r1, #0x38
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08058EB4
	bl PlaySFX
_08058EB4:
	ldrb r0, [r4, #0xa]
	bl sub_0804B128
	bl LoadRoomEntityList
	bl DeleteThisEntity
	b _08058EC8
_08058EC4:
	subs r0, r1, #1
	strh r0, [r4, #0x3a]
_08058EC8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08058ECC
sub_08058ECC: @ 0x08058ECC
	push {lr}
	ldr r2, _08058EE0 @ =gUnk_08108314
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08058EE0: .4byte gUnk_08108314

	thumb_func_start sub_08058EE4
sub_08058EE4: @ 0x08058EE4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _08058EF2
	movs r0, #1
	strb r0, [r6, #0xc]
_08058EF2:
	ldrb r0, [r6, #0xb]
	bl CheckRoomFlag
	cmp r0, #0
	beq _08058F40
	movs r5, #0x94
	lsls r5, r5, #1
	ldrb r2, [r6, #0xb]
	adds r2, #1
	adds r0, r5, #0
	movs r1, #0x68
	bl sub_08058F44
	movs r4, #0xac
	lsls r4, r4, #1
	ldrb r2, [r6, #0xb]
	adds r2, #2
	adds r0, r4, #0
	movs r1, #0x68
	bl sub_08058F44
	ldrb r2, [r6, #0xb]
	adds r2, #3
	adds r0, r5, #0
	movs r1, #0x98
	bl sub_08058F44
	ldrb r2, [r6, #0xb]
	adds r2, #4
	adds r0, r4, #0
	movs r1, #0x98
	bl sub_08058F44
	movs r0, #0x92
	lsls r0, r0, #1
	bl PlaySFX
	bl DeleteThisEntity
_08058F40:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08058F44
sub_08058F44: @ 0x08058F44
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, r2, #0
	bl CheckRoomFlag
	cmp r0, #0
	bne _08058F80
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl sub_080002A8
	cmp r0, #0x61
	bne _08058F80
	lsrs r1, r4, #4
	movs r2, #0x3f
	ands r1, r2
	lsrs r0, r5, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r1, r0
	movs r0, #0x26
	movs r2, #1
	bl SetTileType
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08058F84
_08058F80:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08058F84
sub_08058F84: @ 0x08058F84
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0x21
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _08058FA8
	ldr r0, _08058FAC @ =gRoomControls
	ldrh r1, [r0, #6]
	adds r1, r1, r4
	strh r1, [r2, #0x2e]
	ldrh r0, [r0, #8]
	adds r0, r0, r5
	strh r0, [r2, #0x32]
_08058FA8:
	pop {r4, r5, pc}
	.align 2, 0
_08058FAC: .4byte gRoomControls

	thumb_func_start sub_08058FB0
sub_08058FB0: @ 0x08058FB0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _08058FF6
	cmp r0, #1
	bgt _08058FC4
	cmp r0, #0
	beq _08058FCA
	b _08059050
_08058FC4:
	cmp r0, #2
	beq _08059018
	b _08059050
_08058FCA:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _08058FDC
	movs r0, #7
	strb r0, [r4, #0xd]
	movs r0, #6
	b _08058FE2
_08058FDC:
	movs r0, #8
	strb r0, [r4, #0xd]
	movs r0, #2
_08058FE2:
	strb r0, [r4, #0xf]
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _08059060
	adds r0, r4, #0
	bl sub_0805E900
	b _08059060
_08058FF6:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _08059060
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0xf0
	bl sub_0805E4E0
	adds r0, r4, #0
	bl sub_08059064
	b _08059060
_08059018:
	ldrb r0, [r4, #0xe]
	cmp r0, #0x5a
	bne _08059028
	movs r0, #2
	bl sub_08078A90
	bl sub_08077B20
_08059028:
	ldrb r2, [r4, #0xe]
	cmp r2, #0x3c
	bne _08059034
	ldr r1, _0805904C @ =gLinkEntity
	ldrb r0, [r4, #0xf]
	strb r0, [r1, #0x14]
_08059034:
	subs r0, r2, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08059060
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xd]
	movs r0, #5
	bl sub_080A7138
	b _08059060
	.align 2, 0
_0805904C: .4byte gLinkEntity
_08059050:
	ldrh r0, [r4, #0x3e]
	bl SetFlag
	movs r0, #1
	bl sub_08078A90
	bl DeleteThisEntity
_08059060:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08059064
sub_08059064: @ 0x08059064
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x53
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0805908E
	movs r0, #2
	strb r0, [r2, #0xe]
	ldr r1, _08059090 @ =gRoomControls
	ldrh r0, [r1, #6]
	ldrh r3, [r4, #0x38]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #8]
	ldrh r4, [r4, #0x3a]
	adds r0, r0, r4
	strh r0, [r2, #0x32]
_0805908E:
	pop {r4, pc}
	.align 2, 0
_08059090: .4byte gRoomControls

	thumb_func_start sub_08059094
sub_08059094: @ 0x08059094
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080590B6
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x60
	bl CheckLocalFlag
	cmp r0, #0
	bne _080590CC
	movs r0, #0x5f
	bl SetLocalFlag
	b _080590C8
_080590B6:
	movs r0, #0x60
	bl CheckLocalFlag
	cmp r0, #0
	beq _080590C8
	movs r0, #0x5f
	bl ClearLocalFlag
	movs r5, #1
_080590C8:
	cmp r5, #0
	beq _080590D8
_080590CC:
	ldr r0, _080590DC @ =gUnk_080F4B88
	bl LoadRoomEntityList
	adds r0, r4, #0
	bl sub_0805E900
_080590D8:
	pop {r4, r5, pc}
	.align 2, 0
_080590DC: .4byte gUnk_080F4B88

	thumb_func_start sub_080590E0
sub_080590E0: @ 0x080590E0
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	bne _080590F6
	movs r0, #1
	strb r0, [r1, #0xc]
	adds r0, r1, #0
	movs r1, #6
	bl sub_0805E3A0
_080590F6:
	movs r0, #0x6c
	bl CheckLocalFlag
	cmp r0, #0
	beq _0805911A
	movs r0, #0x4b
	bl CheckLocalFlag
	cmp r0, #0
	beq _08059112
	movs r0, #0x4a
	bl SetLocalFlag
	b _08059120
_08059112:
	movs r0, #0x4a
	bl ClearLocalFlag
	b _08059120
_0805911A:
	movs r0, #0x4a
	bl ClearLocalFlag
_08059120:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08059124
sub_08059124: @ 0x08059124
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _08059174
	cmp r0, #1
	beq _080591AC
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080591C8
	movs r1, #0x38
	ldrsh r0, [r4, r1]
	movs r2, #0x3a
	ldrsh r1, [r4, r2]
	ldrb r2, [r4, #0xb]
	bl sub_080A29C8
	ldrh r0, [r4, #0x38]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	movs r2, #0x3f
	ands r0, r2
	ldrh r1, [r4, #0x3a]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	ands r1, r2
	lsls r1, r1, #6
	orrs r0, r1
	ldrb r1, [r4, #0xb]
	bl sub_0807BA8C
	movs r0, #0xcd
	bl PlaySFX
	bl DeleteThisEntity
	b _080591C8
_08059174:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _08059182
	bl DeleteThisEntity
_08059182:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _080591A8 @ =0x00000365
	ldrh r1, [r4, #0x38]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	movs r3, #0x3f
	ands r1, r3
	ldrh r2, [r4, #0x3a]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	ands r2, r3
	lsls r2, r2, #6
	orrs r1, r2
	ldrb r2, [r4, #0xb]
	bl SetTileType
	b _080591C8
	.align 2, 0
_080591A8: .4byte 0x00000365
_080591AC:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _080591C8
	adds r0, r4, #0
	movs r1, #0x4b
	bl sub_0805E4E0
	movs r0, #0x2d
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_080591C8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080591CC
sub_080591CC: @ 0x080591CC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080591F4
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	strb r0, [r4, #0xb]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08059214
	ldr r1, _080591F0 @ =gRoomVars
	ldrh r0, [r4, #0x3a]
	b _08059218
	.align 2, 0
_080591F0: .4byte gRoomVars
_080591F4:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	adds r1, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, r1
	beq _0805921A
	strb r1, [r4, #0xb]
	cmp r1, #0
	beq _08059214
	ldr r1, _08059210 @ =gRoomVars
	ldrh r0, [r4, #0x3a]
	b _08059218
	.align 2, 0
_08059210: .4byte gRoomVars
_08059214:
	ldr r1, _0805921C @ =gRoomVars
	ldrh r0, [r4, #0x38]
_08059218:
	strh r0, [r1, #0xc]
_0805921A:
	pop {r4, pc}
	.align 2, 0
_0805921C: .4byte gRoomVars

	thumb_func_start sub_08059220
sub_08059220: @ 0x08059220
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r2, _08059268 @ =gRoomVars
	movs r0, #0
	strh r0, [r2, #0xc]
	ldr r4, _0805926C @ =gUnk_08108354
	ldrh r0, [r4]
	ldr r1, _08059270 @ =0x0000FFFF
	cmp r0, r1
	beq _08059254
	adds r7, r2, #0
	adds r6, r1, #0
_08059238:
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	ldrh r2, [r4, #4]
	ldrh r3, [r4, #6]
	bl CheckPlayerInRegion
	cmp r0, #0
	beq _0805924C
	ldrh r0, [r4, #8]
	strh r0, [r7, #0xc]
_0805924C:
	adds r4, #0xa
	ldrh r0, [r4]
	cmp r0, r6
	bne _08059238
_08059254:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _08059266
	movs r0, #1
	strb r0, [r5, #0xc]
	ldr r1, _08059274 @ =gUnk_02033A90
	ldr r0, _08059268 @ =gRoomVars
	ldrh r0, [r0, #0xc]
	strh r0, [r1, #0xa]
_08059266:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08059268: .4byte gRoomVars
_0805926C: .4byte gUnk_08108354
_08059270: .4byte 0x0000FFFF
_08059274: .4byte gUnk_02033A90

	thumb_func_start sub_08059278
sub_08059278: @ 0x08059278
	push {lr}
	movs r0, #9
	movs r1, #0xf
	movs r2, #6
	bl sub_0805EB00
	cmp r0, #0
	beq _0805928C
	bl sub_08058ECC
_0805928C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08059290
sub_08059290: @ 0x08059290
	movs r1, #1
	strb r1, [r0, #0xc]
	ldr r1, _0805929C @ =gRoomControls
	ldr r0, _080592A0 @ =gLinkEntity
	str r0, [r1, #0x30]
	bx lr
	.align 2, 0
_0805929C: .4byte gRoomControls
_080592A0: .4byte gLinkEntity

	thumb_func_start sub_080592A4
sub_080592A4: @ 0x080592A4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080592C8
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _080592EA
	adds r0, r4, #0
	bl sub_080592EC
	bl DeleteThisEntity
	b _080592EA
_080592C8:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _080592EA
	adds r0, r4, #0
	bl sub_080592EC
	adds r0, r4, #0
	bl sub_0805930C
	movs r0, #0xb7
	lsls r0, r0, #1
	bl PlaySFX
	bl DeleteThisEntity
_080592EA:
	pop {r4, pc}

	thumb_func_start sub_080592EC
sub_080592EC: @ 0x080592EC
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x38]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	movs r2, #0x3f
	ands r0, r2
	ldrh r1, [r1, #0x3a]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	ands r1, r2
	lsls r1, r1, #6
	orrs r0, r1
	bl sub_08059340
	pop {pc}

	thumb_func_start sub_0805930C
sub_0805930C: @ 0x0805930C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xf
	movs r1, #0x43
	movs r2, #0x40
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0805933A
	ldr r1, _0805933C @ =gRoomControls
	ldrh r0, [r1, #6]
	ldrh r3, [r4, #0x38]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #8]
	ldrh r4, [r4, #0x3a]
	adds r0, r0, r4
	strh r0, [r2, #0x32]
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
_0805933A:
	pop {r4, pc}
	.align 2, 0
_0805933C: .4byte gRoomControls

	thumb_func_start sub_08059340
sub_08059340: @ 0x08059340
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x1d
	adds r1, r4, #0
	movs r2, #1
	bl SetTileType
	movs r0, #0
	adds r1, r4, #0
	movs r2, #2
	bl SetTileType
	subs r4, #0x40
	movs r0, #0
	adds r1, r4, #0
	movs r2, #2
	bl SetTileType
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08059368
sub_08059368: @ 0x08059368
	push {lr}
	adds r2, r0, #0
	movs r0, #1
	strb r0, [r2, #0xc]
	ldr r1, _08059388 @ =gUnk_02022780
	ldrh r0, [r2, #0x3c]
	ldrh r1, [r1, #0x28]
	cmp r0, r1
	bne _08059384
	ldrh r0, [r2, #0x3e]
	bl SetFlag
	bl DeleteThisEntity
_08059384:
	pop {pc}
	.align 2, 0
_08059388: .4byte gUnk_02022780

	thumb_func_start sub_0805938C
sub_0805938C: @ 0x0805938C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080593CC
	cmp r0, #0
	beq _080593C8
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _080593CA
	movs r1, #0x38
	ldrsh r0, [r4, r1]
	ldr r2, _080593C4 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	movs r3, #0x3a
	ldrsh r1, [r4, r3]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	movs r2, #0xff
	movs r3, #0xa
	bl sub_080806BC
	b _080593CA
	.align 2, 0
_080593C4: .4byte gRoomControls
_080593C8:
	strb r0, [r4, #0xe]
_080593CA:
	pop {r4, pc}

	thumb_func_start sub_080593CC
sub_080593CC: @ 0x080593CC
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, _08059418 @ =gLinkState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08059420
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _08059420
	ldr r4, _0805941C @ =gLinkEntity
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _08059420
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r0, r1
	bne _08059420
	movs r0, #0x38
	ldrsh r1, [r3, r0]
	movs r0, #0x3a
	ldrsh r2, [r3, r0]
	adds r2, #0xc
	adds r0, r4, #0
	movs r3, #6
	bl sub_0806FCB8
	b _08059422
	.align 2, 0
_08059418: .4byte gLinkState
_0805941C: .4byte gLinkEntity
_08059420:
	movs r0, #0
_08059422:
	pop {r4, pc}

	thumb_func_start sub_08059424
sub_08059424: @ 0x08059424
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _08059436
	bl DeleteThisEntity
_08059436:
	ldrh r0, [r4, #0x3c]
	bl CheckFlags
	cmp r0, #0
	beq _08059476
	movs r0, #0xf
	movs r1, #0x35
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _08059476
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	ldr r1, _08059478 @ =gRoomControls
	ldrh r0, [r1, #6]
	ldrh r3, [r4, #0x38]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #8]
	ldrh r4, [r4, #0x3a]
	adds r0, r0, r4
	strh r0, [r2, #0x32]
	movs r0, #0xd8
	lsls r0, r0, #1
	bl sub_08004488
	bl DeleteThisEntity
_08059476:
	pop {r4, pc}
	.align 2, 0
_08059478: .4byte gRoomControls

	thumb_func_start sub_0805947C
sub_0805947C: @ 0x0805947C
	push {lr}
	ldrh r0, [r0, #0x3e]
	bl CheckFlags
	cmp r0, #0
	bne _080594CE
	movs r0, #3
	bl sub_08078A90
	ldr r1, _080594B0 @ =gRoomControls
	ldrh r0, [r1]
	cmp r0, #0
	bne _080594D2
	ldr r0, _080594B4 @ =gRoomVars
	ldrb r0, [r0]
	cmp r0, #0
	beq _080594BC
	ldr r0, _080594B8 @ =gUnk_08108380
	ldrb r1, [r1, #0x10]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl StartPlayerScript
	b _080594CE
	.align 2, 0
_080594B0: .4byte gRoomControls
_080594B4: .4byte gRoomVars
_080594B8: .4byte gUnk_08108380
_080594BC:
	ldr r1, _080594D4 @ =gUnk_08108380
	ldr r0, _080594D8 @ =gLinkEntity
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl StartPlayerScript
_080594CE:
	bl DeleteThisEntity
_080594D2:
	pop {pc}
	.align 2, 0
_080594D4: .4byte gUnk_08108380
_080594D8: .4byte gLinkEntity

	thumb_func_start sub_080594DC
sub_080594DC: @ 0x080594DC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _080594F2
	cmp r0, #1
	bgt _0805951C
	cmp r0, #0
	bne _0805951C
	movs r0, #1
	strb r0, [r4, #0xc]
_080594F2:
	movs r0, #6
	bl GetInventoryValue
	cmp r0, #0
	beq _08059540
	movs r0, #0x8c
	lsls r0, r0, #4
	movs r1, #0x85
	bl CheckLocalFlagByOffset
	cmp r0, #0
	bne _08059540
	movs r0, #2
	strb r0, [r4, #0xc]
	ldr r0, _08059518 @ =0x00000B0F
	bl sub_080186C0
	b _08059540
	.align 2, 0
_08059518: .4byte 0x00000B0F
_0805951C:
	ldr r0, _08059544 @ =gUnk_02033A90
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _0805952A
	bl DeleteThisEntity
_0805952A:
	movs r0, #0x8c
	lsls r0, r0, #4
	movs r1, #0x85
	bl CheckLocalFlagByOffset
	cmp r0, #0
	beq _08059540
	bl sub_0801855C
	bl DeleteThisEntity
_08059540:
	pop {r4, pc}
	.align 2, 0
_08059544: .4byte gUnk_02033A90

	thumb_func_start sub_08059548
sub_08059548: @ 0x08059548
	push {lr}
	movs r1, #6
	bl sub_0805E3A0
	ldr r0, _08059568 @ =gLinkEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #0x16
	bne _0805955C
	bl DeleteThisEntity
_0805955C:
	ldr r2, _0805956C @ =gUnk_03000FF0
	ldrh r1, [r2]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2]
	pop {pc}
	.align 2, 0
_08059568: .4byte gLinkEntity
_0805956C: .4byte gUnk_03000FF0

	thumb_func_start sub_08059570
sub_08059570: @ 0x08059570
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	bne _080595C8
	movs r6, #1
	strb r6, [r4, #0xc]
	adds r0, #0x21
	strb r5, [r0]
	adds r0, #2
	strb r5, [r0]
	bl sub_0805986C
	cmp r0, #0
	beq _080595A8
	adds r0, r4, #0
	adds r0, #0x20
	strb r6, [r0]
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080595A4 @ =gUnk_0200B650
	str r5, [r0]
	b _080595B8
	.align 2, 0
_080595A4: .4byte gUnk_0200B650
_080595A8:
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #0x1f
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #5
	strb r0, [r1]
_080595B8:
	ldr r0, _080595DC @ =gRoomVars
	movs r1, #0xff
	strb r1, [r0, #0x10]
	ldr r1, _080595E0 @ =sub_080595E4
	adds r0, r4, #0
	movs r2, #0
	bl sub_08052D74
_080595C8:
	adds r0, r4, #0
	bl sub_08059608
	adds r0, r4, #0
	bl sub_08059690
	adds r0, r4, #0
	bl sub_080596E0
	pop {r4, r5, r6, pc}
	.align 2, 0
_080595DC: .4byte gRoomVars
_080595E0: .4byte sub_080595E4

	thumb_func_start sub_080595E4
sub_080595E4: @ 0x080595E4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08059604 @ =gRoomVars
	movs r0, #0xff
	strb r0, [r1, #0x10]
	adds r0, r4, #0
	bl sub_08059690
	adds r0, r4, #0
	bl sub_080596E0
	movs r0, #0
	bl sub_0805B4D0
	pop {r4, pc}
	.align 2, 0
_08059604: .4byte gRoomVars

	thumb_func_start sub_08059608
sub_08059608: @ 0x08059608
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x23
	ldrb r0, [r4]
	cmp r0, #0
	beq _08059638
	subs r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08059682
	ldr r0, _08059634 @ =gUnk_02033A90
	movs r2, #0x86
	lsls r2, r2, #4
	adds r1, r0, r2
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	bl PlaySFX
	b _08059682
	.align 2, 0
_08059634: .4byte gUnk_02033A90
_08059638:
	bl sub_0805986C
	cmp r0, #0
	beq _08059668
	ldr r0, _0805965C @ =gUnk_02033A90
	ldr r2, _08059660 @ =0x00000864
	adds r1, r0, r2
	ldr r0, [r1]
	cmp r0, #0x1e
	beq _08059682
	movs r0, #0x1e
	str r0, [r1]
	movs r0, #0x78
	strb r0, [r4]
	ldr r0, _08059664 @ =0x800D0000
	bl PlaySFX
	b _08059682
	.align 2, 0
_0805965C: .4byte gUnk_02033A90
_08059660: .4byte 0x00000864
_08059664: .4byte 0x800D0000
_08059668:
	ldr r0, _08059684 @ =gUnk_02033A90
	ldr r2, _08059688 @ =0x00000864
	adds r1, r0, r2
	ldr r0, [r1]
	cmp r0, #0x37
	beq _08059682
	movs r0, #0x37
	str r0, [r1]
	movs r0, #0x78
	strb r0, [r4]
	ldr r0, _0805968C @ =0x800D0000
	bl PlaySFX
_08059682:
	pop {r4, pc}
	.align 2, 0
_08059684: .4byte gUnk_02033A90
_08059688: .4byte 0x00000864
_0805968C: .4byte 0x800D0000

	thumb_func_start sub_08059690
sub_08059690: @ 0x08059690
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08059844
	cmp r0, #0
	beq _080596BC
	adds r4, #0x20
	ldrb r0, [r4]
	cmp r0, #0
	beq _080596D8
	ldr r0, _080596B8 @ =gUnk_085A7320
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrb r2, [r4]
	bl sub_08059894
	ldrb r0, [r4]
	subs r0, #1
	b _080596D6
	.align 2, 0
_080596B8: .4byte gUnk_085A7320
_080596BC:
	adds r4, #0x20
	ldrb r0, [r4]
	cmp r0, #0x1f
	bhi _080596D8
	ldr r0, _080596DC @ =gUnk_085A7320
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrb r2, [r4]
	bl sub_08059894
	ldrb r0, [r4]
	adds r0, #1
_080596D6:
	strb r0, [r4]
_080596D8:
	pop {r4, pc}
	.align 2, 0
_080596DC: .4byte gUnk_085A7320

	thumb_func_start sub_080596E0
sub_080596E0: @ 0x080596E0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _08059730 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080596FC
	ldr r0, _08059734 @ =gScreen
	ldrh r1, [r0, #0x16]
	adds r1, #8
	movs r2, #0x1f
	ands r1, r2
	strh r1, [r0, #0x16]
_080596FC:
	bl sub_0805986C
	cmp r0, #0
	beq _08059740
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r1, [r0]
	adds r5, r0, #0
	adds r2, r4, #0
	adds r2, #0x22
	cmp r1, #0
	bne _08059764
	ldrb r0, [r2]
	cmp r0, #2
	beq _08059764
	movs r0, #1
	strb r0, [r5]
	movs r0, #3
	strb r0, [r2]
	ldr r0, _08059738 @ =gUnk_08108390
	ldrb r0, [r0, #3]
	strb r0, [r4, #0xe]
	ldr r0, _0805973C @ =gUnk_0200B650
	str r1, [r0]
	b _08059764
	.align 2, 0
_08059730: .4byte gUnk_030010A0
_08059734: .4byte gScreen
_08059738: .4byte gUnk_08108390
_0805973C: .4byte gUnk_0200B650
_08059740:
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r1, [r0]
	adds r5, r0, #0
	adds r2, r4, #0
	adds r2, #0x22
	cmp r1, #0
	bne _08059764
	ldrb r0, [r2]
	cmp r0, #5
	beq _08059764
	movs r0, #2
	strb r0, [r5]
	ldr r1, _08059774 @ =gUnk_08108390
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
_08059764:
	adds r6, r5, #0
	ldrb r0, [r6]
	cmp r0, #1
	beq _08059778
	cmp r0, #2
	beq _080597A8
	b _080597D0
	.align 2, 0
_08059774: .4byte gUnk_08108390
_08059778:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r3, #0xff
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _080597D0
	ldr r1, _080597A4 @ =gUnk_08108390
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	ands r0, r3
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	ldrb r0, [r2]
	cmp r0, #2
	bne _080597D0
	strb r5, [r6]
	b _080597D0
	.align 2, 0
_080597A4: .4byte gUnk_08108390
_080597A8:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r3, #0xff
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _080597D0
	ldr r1, _080597EC @ =gUnk_08108390
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ands r0, r3
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	ldrb r0, [r2]
	cmp r0, #5
	bne _080597D0
	strb r6, [r5]
_080597D0:
	ldr r3, _080597F0 @ =gRoomVars
	ldrb r1, [r2]
	ldrb r0, [r3, #0x10]
	cmp r0, r1
	beq _08059838
	strb r1, [r3, #0x10]
	ldrb r0, [r2]
	cmp r0, #4
	beq _08059800
	cmp r0, #4
	ble _080597F4
	cmp r0, #5
	beq _08059824
	b _08059838
	.align 2, 0
_080597EC: .4byte gUnk_08108390
_080597F0: .4byte gRoomVars
_080597F4:
	cmp r0, #0
	blt _08059838
	adds r0, #0x2b
	bl sub_0801D7EC
	b _08059838
_08059800:
	ldr r4, _0805981C @ =gUnk_02001A40
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0801D630
	ldr r1, _08059820 @ =0x0600E800
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_08000E96
	b _08059838
	.align 2, 0
_0805981C: .4byte gUnk_02001A40
_08059820: .4byte 0x0600E800
_08059824:
	ldr r0, _0805983C @ =gUnk_0200B650
	ldr r1, _08059840 @ =gBG1Settings
	str r1, [r0]
	subs r1, #0x14
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
_08059838:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0805983C: .4byte gUnk_0200B650
_08059840: .4byte gBG1Settings

	thumb_func_start sub_08059844
sub_08059844: @ 0x08059844
	push {lr}
	movs r3, #0
	ldr r0, _08059864 @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	ldr r2, _08059868 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	ldrh r0, [r2, #0x1e]
	lsrs r0, r0, #1
	cmp r1, r0
	ble _0805985E
	movs r3, #1
_0805985E:
	adds r0, r3, #0
	pop {pc}
	.align 2, 0
_08059864: .4byte gLinkEntity
_08059868: .4byte gRoomControls

	thumb_func_start sub_0805986C
sub_0805986C: @ 0x0805986C
	push {lr}
	movs r2, #0
	ldr r0, _0805988C @ =gLinkEntity
	movs r3, #0x2e
	ldrsh r1, [r0, r3]
	ldr r0, _08059890 @ =gRoomControls
	ldrh r0, [r0, #6]
	subs r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _08059886
	movs r2, #1
_08059886:
	adds r0, r2, #0
	pop {pc}
	.align 2, 0
_0805988C: .4byte gLinkEntity
_08059890: .4byte gRoomControls

	thumb_func_start sub_08059894
sub_08059894: @ 0x08059894
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _080598E8 @ =gUnk_020176E0
	mov sb, r0
	movs r6, #0
	lsls r2, r2, #0x18
	mov r8, r2
_080598AA:
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, sb
	mov r7, r8
	lsrs r3, r7, #0x18
	bl sub_08059960
	adds r5, #0x20
	adds r4, #0x20
	movs r0, #0x20
	add sb, r0
	adds r6, #1
	cmp r6, #0xc
	bls _080598AA
	ldr r0, _080598EC @ =gUnk_02017700
	movs r2, #0x90
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0x20
	bl sub_0801D66C
	ldr r2, _080598F0 @ =gUnk_0200B644
	ldr r0, [r2]
	ldr r1, _080598F4 @ =0x00207FFC
	orrs r0, r1
	str r0, [r2]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080598E8: .4byte gUnk_020176E0
_080598EC: .4byte gUnk_02017700
_080598F0: .4byte gUnk_0200B644
_080598F4: .4byte 0x00207FFC

	thumb_func_start sub_080598F8
sub_080598F8: @ 0x080598F8
	push {r4, r5, r6, r7, lr}
	movs r4, #0x1f
	adds r3, r0, #0
	ands r3, r4
	lsls r6, r3, #8
	adds r3, r6, #0
	muls r3, r2, r3
	lsrs r6, r3, #5
	adds r3, r1, #0
	ands r3, r4
	lsls r3, r3, #8
	movs r4, #0x20
	subs r4, r4, r2
	muls r3, r4, r3
	lsrs r3, r3, #5
	adds r3, r6, r3
	lsrs r6, r3, #8
	movs r5, #0xf8
	lsls r5, r5, #2
	adds r3, r0, #0
	ands r3, r5
	lsls r7, r3, #3
	adds r3, r7, #0
	muls r3, r2, r3
	lsrs r7, r3, #5
	adds r3, r1, #0
	ands r3, r5
	lsls r3, r3, #3
	muls r3, r4, r3
	lsrs r3, r3, #5
	adds r3, r7, r3
	lsrs r7, r3, #8
	movs r3, #0xf8
	lsls r3, r3, #7
	ands r0, r3
	lsrs r5, r0, #2
	adds r0, r5, #0
	muls r0, r2, r0
	lsrs r5, r0, #5
	ands r1, r3
	lsrs r0, r1, #2
	muls r0, r4, r0
	lsrs r0, r0, #5
	adds r0, r5, r0
	lsrs r5, r0, #8
	lsls r0, r7, #5
	orrs r6, r0
	lsls r0, r5, #0xa
	orrs r6, r0
	adds r0, r6, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08059960
sub_08059960: @ 0x08059960
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	movs r7, #0
_08059974:
	ldrh r0, [r6]
	adds r6, #2
	ldrh r1, [r5]
	adds r5, #2
	mov r2, r8
	bl sub_080598F8
	strh r0, [r4]
	adds r4, #2
	adds r7, #1
	cmp r7, #0xf
	bls _08059974
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08059994
sub_08059994: @ 0x08059994
	push {lr}
	bl sub_0805986C
	cmp r0, #0
	beq _080599AE
	movs r0, #0x5b
	bl sub_0801D714
	ldr r0, _080599B0 @ =gUnk_02033A90
	ldr r1, _080599B4 @ =0x00000864
	adds r0, r0, r1
	movs r1, #0x1e
	str r1, [r0]
_080599AE:
	pop {pc}
	.align 2, 0
_080599B0: .4byte gUnk_02033A90
_080599B4: .4byte 0x00000864

	thumb_func_start sub_080599B8
sub_080599B8: @ 0x080599B8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080599D6
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0x3c]
	bl CheckFlags
	cmp r0, #0
	beq _080599EA
	bl DeleteThisEntity
	b _080599EA
_080599D6:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _080599EA
	ldrh r0, [r4, #0x3c]
	bl SetFlag
	bl DeleteThisEntity
_080599EA:
	pop {r4, pc}

	thumb_func_start sub_080599EC
sub_080599EC: @ 0x080599EC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08059A20
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #0xff
	strb r0, [r1]
	subs r1, #1
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	ldr r1, _08059A28 @ =sub_08059A2C
	adds r0, r4, #0
	movs r2, #0
	bl sub_08052D74
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
_08059A20:
	adds r0, r4, #0
	bl sub_08059A58
	pop {r4, pc}
	.align 2, 0
_08059A28: .4byte sub_08059A2C

	thumb_func_start sub_08059A2C
sub_08059A2C: @ 0x08059A2C
	push {lr}
	adds r2, r0, #0
	ldr r1, _08059A54 @ =gRoomVars
	movs r0, #0xff
	strb r0, [r1, #0x12]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x11]
	strb r0, [r1, #0x10]
	adds r1, r2, #0
	adds r1, #0x22
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_08059A58
	pop {pc}
	.align 2, 0
_08059A54: .4byte gRoomVars

	thumb_func_start sub_08059A58
sub_08059A58: @ 0x08059A58
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08059AC4 @ =gRoomControls
	ldrb r0, [r0, #4]
	cmp r0, #0x15
	beq _08059AD4
	adds r4, r5, #0
	adds r4, #0x20
	ldr r3, _08059AC8 @ =gUnk_08108398
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_08059C8C
	cmp r0, #0
	beq _08059A80
	ldrb r1, [r4]
	movs r0, #0
	bl sub_08059CC0
_08059A80:
	adds r4, r5, #0
	adds r4, #0x21
	ldr r3, _08059ACC @ =gUnk_081083AE
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	bl sub_08059C8C
	cmp r0, #0
	beq _08059AA6
	ldrb r1, [r4]
	movs r0, #1
	bl sub_08059CC0
	ldrb r0, [r4]
	cmp r0, #2
	bne _08059AA6
	bl sub_08059B18
_08059AA6:
	adds r4, r5, #0
	adds r4, #0x22
	ldr r3, _08059AD0 @ =gUnk_081083C4
	adds r0, r5, #0
	movs r1, #2
	adds r2, r4, #0
	bl sub_08059C8C
	cmp r0, #0
	beq _08059B0C
	ldrb r1, [r4]
	movs r0, #2
	bl sub_08059CC0
	b _08059B0C
	.align 2, 0
_08059AC4: .4byte gRoomControls
_08059AC8: .4byte gUnk_08108398
_08059ACC: .4byte gUnk_081083AE
_08059AD0: .4byte gUnk_081083C4
_08059AD4:
	adds r4, r5, #0
	adds r4, #0x20
	ldr r3, _08059B10 @ =gUnk_081083DA
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_08059C8C
	cmp r0, #0
	beq _08059AF0
	ldrb r1, [r4]
	movs r0, #0
	bl sub_08059CC0
_08059AF0:
	adds r4, r5, #0
	adds r4, #0x22
	ldr r3, _08059B14 @ =gUnk_081083F2
	adds r0, r5, #0
	movs r1, #2
	adds r2, r4, #0
	bl sub_08059C8C
	cmp r0, #0
	beq _08059B0C
	ldrb r1, [r4]
	movs r0, #2
	bl sub_08059CC0
_08059B0C:
	pop {r4, r5, pc}
	.align 2, 0
_08059B10: .4byte gUnk_081083DA
_08059B14: .4byte gUnk_081083F2

	thumb_func_start sub_08059B18
sub_08059B18: @ 0x08059B18
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	movs r0, #0x18
	bl CheckGlobalFlag
	cmp r0, #0
	beq _08059BEC
	movs r6, #0
	movs r0, #0x3f
	mov sb, r0
	movs r2, #0xc4
	lsls r2, r2, #1
	mov r8, r2
_08059B38:
	movs r5, #0
	lsls r1, r6, #4
	mov r2, r8
	lsrs r0, r2, #4
	mov r2, sb
	ands r0, r2
	lsls r3, r0, #6
	movs r7, #0x28
	ldr r0, _08059BD8 @ =0x000004AB
	adds r4, r1, r0
_08059B4C:
	lsrs r1, r7, #4
	mov r2, sb
	ands r1, r2
	orrs r1, r3
	adds r0, r4, #0
	movs r2, #1
	str r3, [sp]
	bl sub_0807B9B8
	adds r7, #0x10
	adds r4, #1
	adds r5, #1
	ldr r3, [sp]
	cmp r5, #3
	bls _08059B4C
	movs r0, #0x10
	add r8, r0
	adds r6, #1
	cmp r6, #3
	bls _08059B38
	movs r6, #0
	movs r3, #0x3f
_08059B78:
	movs r5, #0
	lsls r1, r6, #4
	adds r6, #1
	mov r8, r6
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r0, r1, r2
	lsrs r0, r0, #4
	ands r0, r3
	lsls r7, r0, #6
	movs r6, #0x28
	movs r0, #0x88
	lsls r0, r0, #3
	adds r4, r1, r0
_08059B94:
	lsrs r1, r6, #4
	ands r1, r3
	orrs r1, r7
	adds r0, r4, #0
	movs r2, #2
	str r3, [sp]
	bl sub_0807B9B8
	adds r6, #0x10
	adds r4, #1
	adds r5, #1
	ldr r3, [sp]
	cmp r5, #3
	bls _08059B94
	mov r6, r8
	cmp r6, #2
	bls _08059B78
	ldr r1, _08059BDC @ =0x000005C2
	movs r0, #0xd6
	movs r2, #2
	bl sub_0807B9B8
	ldr r1, _08059BE0 @ =0x000005C3
	movs r0, #0xd7
	movs r2, #2
	bl sub_0807B9B8
	ldr r0, _08059BE4 @ =gUnk_086E8460
	ldr r1, _08059BE8 @ =0x06001800
	movs r2, #0x80
	lsls r2, r2, #4
	bl sub_08000E96
	b _08059C5E
	.align 2, 0
_08059BD8: .4byte 0x000004AB
_08059BDC: .4byte 0x000005C2
_08059BE0: .4byte 0x000005C3
_08059BE4: .4byte gUnk_086E8460
_08059BE8: .4byte 0x06001800
_08059BEC:
	movs r0, #0x19
	bl CheckGlobalFlag
	cmp r0, #0
	beq _08059C5E
	movs r6, #0
	movs r3, #0x3f
_08059BFA:
	movs r5, #0
	lsls r1, r6, #4
	adds r6, #1
	mov r8, r6
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r0, r1, r2
	lsrs r0, r0, #4
	ands r0, r3
	lsls r7, r0, #6
	movs r6, #0x28
	ldr r0, _08059C68 @ =0x000004A6
	adds r4, r1, r0
_08059C14:
	lsrs r1, r6, #4
	ands r1, r3
	orrs r1, r7
	adds r0, r4, #0
	movs r2, #1
	str r3, [sp]
	bl sub_0807B9B8
	adds r6, #0x10
	adds r4, #1
	adds r5, #1
	ldr r3, [sp]
	cmp r5, #3
	bls _08059C14
	mov r6, r8
	cmp r6, #4
	bls _08059BFA
	ldr r0, _08059C6C @ =0x00000444
	ldr r1, _08059C70 @ =0x00000602
	movs r2, #2
	bl sub_0807B9B8
	ldr r0, _08059C74 @ =0x00000445
	ldr r1, _08059C78 @ =0x00000605
	movs r2, #2
	bl sub_0807B9B8
	ldr r0, _08059C7C @ =0x00000454
	ldr r1, _08059C80 @ =0x00000642
	movs r2, #2
	bl sub_0807B9B8
	ldr r0, _08059C84 @ =0x00000455
	ldr r1, _08059C88 @ =0x00000645
	movs r2, #2
	bl sub_0807B9B8
_08059C5E:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08059C68: .4byte 0x000004A6
_08059C6C: .4byte 0x00000444
_08059C70: .4byte 0x00000602
_08059C74: .4byte 0x00000445
_08059C78: .4byte 0x00000605
_08059C7C: .4byte 0x00000454
_08059C80: .4byte 0x00000642
_08059C84: .4byte 0x00000455
_08059C88: .4byte 0x00000645

	thumb_func_start sub_08059C8C
sub_08059C8C: @ 0x08059C8C
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	adds r0, r3, #0
	bl sub_08056300
	adds r2, r0, #0
	strb r2, [r4]
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xff
	beq _08059CBC
	ldr r0, _08059CB8 @ =gRoomVars
	adds r0, #0x10
	adds r1, r5, r0
	ldrb r0, [r1]
	cmp r0, r3
	beq _08059CBC
	strb r2, [r1]
	movs r0, #1
	b _08059CBE
	.align 2, 0
_08059CB8: .4byte gRoomVars
_08059CBC:
	movs r0, #0
_08059CBE:
	pop {r4, r5, pc}

	thumb_func_start sub_08059CC0
sub_08059CC0: @ 0x08059CC0
	push {r4, r5, r6, lr}
	adds r2, r1, #0
	ldr r1, _08059CDC @ =gRoomVars
	adds r1, #0x10
	adds r0, r0, r1
	strb r2, [r0]
	ldr r0, _08059CE0 @ =gRoomControls
	ldrb r0, [r0, #4]
	cmp r0, #0x15
	beq _08059CE8
	lsls r1, r2, #4
	ldr r0, _08059CE4 @ =gUnk_08108408
	b _08059CEC
	.align 2, 0
_08059CDC: .4byte gRoomVars
_08059CE0: .4byte gRoomControls
_08059CE4: .4byte gUnk_08108408
_08059CE8:
	lsls r1, r2, #4
	ldr r0, _08059D10 @ =gUnk_08108468
_08059CEC:
	adds r6, r1, r0
	ldr r0, [r6]
	ldr r4, _08059D14 @ =gUnk_085A2E80
	adds r0, r0, r4
	ldr r1, [r6, #4]
	movs r5, #0x80
	lsls r5, r5, #5
	adds r2, r5, #0
	bl sub_08000E96
	ldr r0, [r6, #8]
	adds r0, r0, r4
	ldr r1, [r6, #0xc]
	adds r2, r5, #0
	bl sub_08000E96
	pop {r4, r5, r6, pc}
	.align 2, 0
_08059D10: .4byte gUnk_08108468
_08059D14: .4byte gUnk_085A2E80

	thumb_func_start sub_08059D18
sub_08059D18: @ 0x08059D18
	push {r4, lr}
	ldr r0, _08059D68 @ =gRoomControls
	ldrb r0, [r0, #4]
	cmp r0, #0x15
	beq _08059D78
	ldr r0, _08059D6C @ =gUnk_08108398
	bl sub_08056300
	adds r4, r0, #0
	cmp r4, #0xff
	beq _08059D36
	movs r0, #0
	adds r1, r4, #0
	bl sub_08059CC0
_08059D36:
	ldr r0, _08059D70 @ =gUnk_081083AE
	bl sub_08056300
	adds r4, r0, #0
	cmp r4, #0xff
	beq _08059D52
	movs r0, #1
	adds r1, r4, #0
	bl sub_08059CC0
	cmp r4, #2
	bne _08059D52
	bl sub_08059B18
_08059D52:
	ldr r0, _08059D74 @ =gUnk_081083C4
	bl sub_08056300
	adds r4, r0, #0
	cmp r4, #0xff
	beq _08059DA0
	movs r0, #2
	adds r1, r4, #0
	bl sub_08059CC0
	b _08059DA0
	.align 2, 0
_08059D68: .4byte gRoomControls
_08059D6C: .4byte gUnk_08108398
_08059D70: .4byte gUnk_081083AE
_08059D74: .4byte gUnk_081083C4
_08059D78:
	ldr r0, _08059DA4 @ =gUnk_081083DA
	bl sub_08056300
	adds r4, r0, #0
	cmp r4, #0xff
	beq _08059D8C
	movs r0, #0
	adds r1, r4, #0
	bl sub_08059CC0
_08059D8C:
	ldr r0, _08059DA8 @ =gUnk_081083F2
	bl sub_08056300
	adds r4, r0, #0
	cmp r4, #0xff
	beq _08059DA0
	movs r0, #2
	adds r1, r4, #0
	bl sub_08059CC0
_08059DA0:
	pop {r4, pc}
	.align 2, 0
_08059DA4: .4byte gUnk_081083DA
_08059DA8: .4byte gUnk_081083F2

	thumb_func_start sub_08059DAC
sub_08059DAC: @ 0x08059DAC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _08059DBE
	movs r0, #1
	strb r0, [r5, #0xc]
_08059DBE:
	ldr r1, _08059E4C @ =gRoomControls
	ldrb r0, [r1, #4]
	ldr r4, _08059E50 @ =gUnk_081084C8
	cmp r0, #0x15
	bne _08059DCA
	ldr r4, _08059E54 @ =gUnk_08108530
_08059DCA:
	movs r7, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _08059E46
	mov r8, r1
_08059DD4:
	movs r6, #1
	lsls r6, r7
	ldr r0, [r5, #0x20]
	ands r0, r6
	cmp r0, #0
	bne _08059E38
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	movs r2, #0x10
	movs r3, #0x10
	bl CheckRectOnScreen
	cmp r0, #0
	beq _08059E38
	ldrb r1, [r4, #4]
	movs r0, #0x1c
	adds r2, r7, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _08059E38
	ldrb r0, [r4, #5]
	strb r0, [r2, #0x1e]
	ldrh r0, [r4]
	mov r1, r8
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
	ldrh r0, [r4, #2]
	mov r3, r8
	ldrh r3, [r3, #8]
	adds r0, r0, r3
	strh r0, [r2, #0x32]
	str r5, [r2, #0x50]
	ldrh r1, [r4]
	adds r0, r2, #0
	adds r0, #0x80
	strh r1, [r0]
	ldrh r0, [r4, #2]
	adds r1, r2, #0
	adds r1, #0x82
	strh r0, [r1]
	ldrb r1, [r4, #6]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	ldr r0, [r5, #0x20]
	orrs r0, r6
	str r0, [r5, #0x20]
_08059E38:
	adds r4, #8
	adds r7, #1
	ldrh r0, [r4]
	cmp r0, #0
	beq _08059E46
	cmp r7, #0x1f
	bls _08059DD4
_08059E46:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08059E4C: .4byte gRoomControls
_08059E50: .4byte gUnk_081084C8
_08059E54: .4byte gUnk_08108530

	thumb_func_start sub_08059E58
sub_08059E58: @ 0x08059E58
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x20]
	adds r0, #1
	strh r0, [r4, #0x20]
	ldr r1, _08059E7C @ =gUnk_081085A4
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0805A1D8
	pop {r4, pc}
	.align 2, 0
_08059E7C: .4byte gUnk_081085A4

	thumb_func_start sub_08059E80
sub_08059E80: @ 0x08059E80
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0805EABC
	cmp r0, #0
	beq _08059E90
	bl DeleteThisEntity
_08059E90:
	adds r1, r4, #0
	adds r1, #0x22
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0
	strh r2, [r4, #0x20]
	strb r0, [r4, #0xe]
	movs r0, #4
	strb r0, [r4, #0xf]
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldr r3, _08059EE4 @ =gScreen
	ldr r0, _08059EE8 @ =0x00001E04
	strh r0, [r3, #0x2c]
	ldrh r0, [r3]
	movs r5, #0x80
	lsls r5, r5, #4
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r3]
	adds r1, r3, #0
	adds r1, #0x66
	ldr r0, _08059EEC @ =0x00003E48
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r3, #0x2e]
	strh r2, [r3, #0x30]
	ldr r1, _08059EF0 @ =nullsub_495
	ldr r2, _08059EF4 @ =sub_0805A25C
	adds r0, r4, #0
	bl sub_08052D74
	pop {r4, r5, pc}
	.align 2, 0
_08059EE4: .4byte gScreen
_08059EE8: .4byte 0x00001E04
_08059EEC: .4byte 0x00003E48
_08059EF0: .4byte nullsub_495
_08059EF4: .4byte sub_0805A25C

	thumb_func_start sub_08059EF8
sub_08059EF8: @ 0x08059EF8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	movs r6, #0xff
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _08059F90
	movs r0, #4
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08059F9C
	cmp r0, #0
	beq _08059F64
	ldr r2, _08059F50 @ =gUnk_08108588
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldr r0, _08059F54 @ =0x00000808
	cmp r1, r0
	beq _08059F5C
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x24
	strb r5, [r0]
	ldr r1, _08059F58 @ =gScreen
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	ands r0, r6
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, #0x68
	strh r0, [r1]
	b _08059F90
	.align 2, 0
_08059F50: .4byte gUnk_08108588
_08059F54: .4byte 0x00000808
_08059F58: .4byte gScreen
_08059F5C:
	adds r0, r4, #0
	adds r0, #0x22
	strb r5, [r0]
	b _08059F90
_08059F64:
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #1
	strb r0, [r1]
	ldr r3, _08059F94 @ =gUnk_08108588
	ldrb r2, [r4, #0xe]
	lsls r0, r2, #1
	adds r0, r0, r3
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	beq _08059F90
	ldr r0, _08059F98 @ =gScreen
	subs r1, r2, #1
	strb r1, [r4, #0xe]
	ands r1, r6
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r1, [r1]
	adds r0, #0x68
	strh r1, [r0]
_08059F90:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08059F94: .4byte gUnk_08108588
_08059F98: .4byte gScreen

	thumb_func_start sub_08059F9C
sub_08059F9C: @ 0x08059F9C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08059FB4 @ =gRoomControls
	ldrb r0, [r0, #5]
	cmp r0, #0x17
	bhi _0805A03A
	lsls r0, r0, #2
	ldr r1, _08059FB8 @ =_08059FBC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08059FB4: .4byte gRoomControls
_08059FB8: .4byte _08059FBC
_08059FBC: @ jump table
	.4byte _0805A036 @ case 0
	.4byte _0805A01C @ case 1
	.4byte _0805A03A @ case 2
	.4byte _0805A03A @ case 3
	.4byte _0805A03A @ case 4
	.4byte _0805A03A @ case 5
	.4byte _0805A03A @ case 6
	.4byte _0805A02A @ case 7
	.4byte _0805A036 @ case 8
	.4byte _0805A036 @ case 9
	.4byte _0805A03A @ case 10
	.4byte _0805A03A @ case 11
	.4byte _0805A03A @ case 12
	.4byte _0805A03A @ case 13
	.4byte _0805A03A @ case 14
	.4byte _0805A03A @ case 15
	.4byte _0805A03A @ case 16
	.4byte _0805A03A @ case 17
	.4byte _0805A03A @ case 18
	.4byte _0805A03A @ case 19
	.4byte _0805A03A @ case 20
	.4byte _0805A03A @ case 21
	.4byte _0805A03A @ case 22
	.4byte _0805A036 @ case 23
_0805A01C:
	movs r0, #0x16
	bl CheckLocalFlag
	cmp r0, #0
	beq _0805A02A
	movs r0, #0
	b _0805A03C
_0805A02A:
	adds r0, r4, #0
	bl sub_0805A25C
	bl DeleteThisEntity
	b _0805A03C
_0805A036:
	movs r0, #1
	b _0805A03C
_0805A03A:
	movs r0, #0
_0805A03C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805A040
sub_0805A040: @ 0x0805A040
	push {lr}
	bl sub_0805A098
	pop {pc}

	thumb_func_start sub_0805A048
sub_0805A048: @ 0x0805A048
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805A086
	movs r0, #4
	strb r0, [r4, #0xf]
	ldr r2, _0805A090 @ =gScreen
	ldr r3, _0805A094 @ =gUnk_08108588
	ldrb r0, [r4, #0xe]
	adds r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r3
	ldrh r0, [r0]
	adds r2, #0x68
	strh r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #9
	bne _0805A086
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #0
	strb r0, [r1]
_0805A086:
	adds r0, r4, #0
	bl sub_0805A098
	pop {r4, pc}
	.align 2, 0
_0805A090: .4byte gScreen
_0805A094: .4byte gUnk_08108588

	thumb_func_start sub_0805A098
sub_0805A098: @ 0x0805A098
	push {lr}
	adds r1, r0, #0
	ldr r0, _0805A0B0 @ =gRoomControls
	ldrb r0, [r0, #5]
	cmp r0, #9
	bgt _0805A0B4
	cmp r0, #8
	bge _0805A0BC
	cmp r0, #0
	beq _0805A0BC
	b _0805A0B8
	.align 2, 0
_0805A0B0: .4byte gRoomControls
_0805A0B4:
	cmp r0, #0x17
	beq _0805A0BC
_0805A0B8:
	movs r0, #3
	strb r0, [r1, #0xc]
_0805A0BC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0805A0C0
sub_0805A0C0: @ 0x0805A0C0
	push {r4, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xf]
	subs r0, #1
	strb r0, [r3, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805A106
	movs r0, #4
	strb r0, [r3, #0xf]
	ldr r4, _0805A108 @ =gScreen
	ldr r2, _0805A10C @ =gUnk_08108588
	ldrb r0, [r3, #0xe]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r3, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r4, #0
	adds r0, #0x68
	strh r2, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0xff
	bne _0805A106
	ldrh r1, [r4]
	ldr r0, _0805A110 @ =0x0000F7FF
	ands r0, r1
	strh r0, [r4]
	bl sub_08056250
	bl DeleteThisEntity
_0805A106:
	pop {r4, pc}
	.align 2, 0
_0805A108: .4byte gScreen
_0805A10C: .4byte gUnk_08108588
_0805A110: .4byte 0x0000F7FF

	thumb_func_start sub_0805A114
sub_0805A114: @ 0x0805A114
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r2, _0805A154 @ =gUnk_03003DE4
	ldrb r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _0805A158 @ =gUnk_02017AA0
	adds r4, r0, r1
	movs r5, #0
	mov r8, r2
	mov sb, r1
	ldr r2, _0805A15C @ =gScreen
	ldr r0, _0805A160 @ =gUnk_080C9160
	mov ip, r0
_0805A13A:
	movs r1, #0x30
	ldrsh r0, [r2, r1]
	adds r3, r5, r0
	asrs r1, r3, #3
	movs r0, #7
	ands r1, r0
	cmp r1, #7
	bhi _0805A190
	lsls r0, r1, #2
	ldr r1, _0805A164 @ =_0805A168
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805A154: .4byte gUnk_03003DE4
_0805A158: .4byte gUnk_02017AA0
_0805A15C: .4byte gScreen
_0805A160: .4byte gUnk_080C9160
_0805A164: .4byte _0805A168
_0805A168: @ jump table
	.4byte _0805A190 @ case 0
	.4byte _0805A18C @ case 1
	.4byte _0805A190 @ case 2
	.4byte _0805A190 @ case 3
	.4byte _0805A188 @ case 4
	.4byte _0805A190 @ case 5
	.4byte _0805A190 @ case 6
	.4byte _0805A18C @ case 7
_0805A188:
	subs r3, #8
	b _0805A190
_0805A18C:
	movs r0, #0xf0
	b _0805A192
_0805A190:
	movs r0, #0xf8
_0805A192:
	ands r3, r0
	adds r0, r6, r3
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #1
	add r0, ip
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r7, r0
	lsrs r0, r0, #8
	ldrh r1, [r2, #0x2e]
	adds r0, r0, r1
	strh r0, [r4]
	adds r4, #2
	adds r5, #1
	cmp r5, #0x9f
	ble _0805A13A
	mov r0, r8
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	add r0, sb
	ldr r1, _0805A1D0 @ =0x0400001C
	ldr r2, _0805A1D4 @ =0xA2600001
	bl sub_0805622C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805A1D0: .4byte 0x0400001C
_0805A1D4: .4byte 0xA2600001

	thumb_func_start sub_0805A1D8
sub_0805A1D8: @ 0x0805A1D8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _0805A244 @ =gRoomControls
	ldr r0, [r1, #0x28]
	ldr r2, _0805A248 @ =0xFFFFF000
	adds r0, r0, r2
	str r0, [r1, #0x28]
	ldr r5, _0805A24C @ =gScreen
	ldrh r0, [r1, #0x2a]
	strh r0, [r5, #0x2e]
	ldr r0, [r1, #0x2c]
	adds r0, r0, r2
	str r0, [r1, #0x2c]
	ldrh r0, [r1, #0x2e]
	strh r0, [r5, #0x30]
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0805A240
	ldrh r1, [r4, #0x20]
	lsrs r1, r1, #1
	movs r0, #6
	bl sub_0805A114
	adds r0, r4, #0
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805A240
	ldr r0, _0805A250 @ =gUnk_03001000
	ldrh r1, [r0, #0xc]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0805A240
	adds r2, r4, #0
	adds r2, #0x24
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0805A254 @ =gUnk_0810859A
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x68
	strh r1, [r0]
_0805A240:
	pop {r4, r5, pc}
	.align 2, 0
_0805A244: .4byte gRoomControls
_0805A248: .4byte 0xFFFFF000
_0805A24C: .4byte gScreen
_0805A250: .4byte gUnk_03001000
_0805A254: .4byte gUnk_0810859A

	thumb_func_start nullsub_495
nullsub_495: @ 0x0805A258
	bx lr
	.align 2, 0

	thumb_func_start sub_0805A25C
sub_0805A25C: @ 0x0805A25C
	push {lr}
	ldr r1, _0805A278 @ =gScreen
	adds r2, r1, #0
	adds r2, #0x66
	movs r0, #0
	strh r0, [r2]
	ldrh r2, [r1]
	ldr r0, _0805A27C @ =0x0000F7FF
	ands r0, r2
	strh r0, [r1]
	bl sub_08056250
	pop {pc}
	.align 2, 0
_0805A278: .4byte gScreen
_0805A27C: .4byte 0x0000F7FF

	thumb_func_start sub_0805A280
sub_0805A280: @ 0x0805A280
	push {lr}
	ldr r2, _0805A294 @ =gUnk_081085D8
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805A294: .4byte gUnk_081085D8

	thumb_func_start sub_0805A298
sub_0805A298: @ 0x0805A298
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805A2D6
	adds r0, r4, #0
	bl sub_0805A89C
	ldrh r0, [r4, #0x3e]
	bl CheckLocalFlag
	cmp r0, #0
	bne _0805A2BA
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #1
	b _0805A2C0
_0805A2BA:
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #2
_0805A2C0:
	strb r0, [r1]
	ldrb r0, [r1]
	bl sub_0805AAF0
	ldr r2, _0805A2E0 @ =gScreen
	ldrh r1, [r2]
	movs r3, #0x90
	lsls r3, r3, #7
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
_0805A2D6:
	adds r0, r4, #0
	bl sub_0805A8EC
	pop {r4, pc}
	.align 2, 0
_0805A2E0: .4byte gScreen

	thumb_func_start sub_0805A2E4
sub_0805A2E4: @ 0x0805A2E4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805A34C
	adds r0, r4, #0
	bl sub_0805A89C
	adds r0, r4, #0
	adds r0, #0x23
	movs r5, #1
	strb r5, [r0]
	movs r0, #1
	bl sub_0805AAF0
	ldrh r0, [r4, #0x3e]
	bl CheckLocalFlag
	cmp r0, #0
	bne _0805A324
	strb r5, [r4, #0xc]
	ldr r2, _0805A31C @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805A320 @ =0x0000B7FF
	ands r0, r1
	strh r0, [r2]
	b _0805A35C
	.align 2, 0
_0805A31C: .4byte gScreen
_0805A320: .4byte 0x0000B7FF
_0805A324:
	movs r0, #0x48
	bl CheckLocalFlag
	cmp r0, #0
	beq _0805A332
	movs r0, #4
	b _0805A334
_0805A332:
	movs r0, #3
_0805A334:
	strb r0, [r4, #0xc]
	ldr r2, _0805A348 @ =gScreen
	ldrh r1, [r2]
	movs r3, #0x90
	lsls r3, r3, #7
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	b _0805A35C
	.align 2, 0
_0805A348: .4byte gScreen
_0805A34C:
	ldr r0, _0805A36C @ =gUnk_081085F8
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0805A35C:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0805A368
	adds r0, r4, #0
	bl sub_0805A8EC
_0805A368:
	pop {r4, r5, pc}
	.align 2, 0
_0805A36C: .4byte gUnk_081085F8

	thumb_func_start sub_0805A370
sub_0805A370: @ 0x0805A370
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0805A38A
	ldr r0, _0805A38C @ =gUnk_080E4C08
	bl LoadRoomEntityList
	movs r0, #3
	strb r0, [r4, #0xc]
	ldr r0, _0805A390 @ =0x80100000
	bl PlaySFX
_0805A38A:
	pop {r4, pc}
	.align 2, 0
_0805A38C: .4byte gUnk_080E4C08
_0805A390: .4byte 0x80100000

	thumb_func_start sub_0805A394
sub_0805A394: @ 0x0805A394
	push {lr}
	movs r0, #3
	movs r1, #0x13
	movs r2, #4
	bl sub_0805EB00
	cmp r0, #0
	beq _0805A3AA
	ldrb r0, [r0, #0xa]
	cmp r0, #4
	bne _0805A3C4
_0805A3AA:
	movs r0, #0x48
	bl SetLocalFlag
	movs r0, #0
	bl ClearRoomFlag
	ldr r2, _0805A3C8 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805A3CC @ =0x0000B7FF
	ands r0, r1
	strh r0, [r2]
	bl DeleteThisEntity
_0805A3C4:
	pop {pc}
	.align 2, 0
_0805A3C8: .4byte gScreen
_0805A3CC: .4byte 0x0000B7FF

	thumb_func_start nullsub_496
nullsub_496: @ 0x0805A3D0
	bx lr
	.align 2, 0

	thumb_func_start sub_0805A3D4
sub_0805A3D4: @ 0x0805A3D4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805A448
	adds r0, r4, #0
	bl sub_0805A89C
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _0805A3F2
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #2
	b _0805A3F8
_0805A3F2:
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #1
_0805A3F8:
	strb r0, [r1]
	ldrb r0, [r1]
	bl sub_0805AAF0
	ldrh r0, [r4, #0x3e]
	bl CheckLocalFlag
	cmp r0, #0
	bne _0805A428
	ldrh r0, [r4, #0x3c]
	bl ClearFlag
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r2, _0805A420 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805A424 @ =0x0000B7FF
	ands r0, r1
	strh r0, [r2]
	b _0805A458
	.align 2, 0
_0805A420: .4byte gScreen
_0805A424: .4byte 0x0000B7FF
_0805A428:
	ldrh r0, [r4, #0x3c]
	bl SetFlag
	movs r0, #3
	strb r0, [r4, #0xc]
	ldr r2, _0805A444 @ =gScreen
	ldrh r1, [r2]
	movs r3, #0x90
	lsls r3, r3, #7
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	b _0805A458
	.align 2, 0
_0805A444: .4byte gScreen
_0805A448:
	ldr r0, _0805A460 @ =gUnk_0810860C
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0805A458:
	adds r0, r4, #0
	bl sub_0805A8EC
	pop {r4, pc}
	.align 2, 0
_0805A460: .4byte gUnk_0810860C

	thumb_func_start sub_0805A464
sub_0805A464: @ 0x0805A464
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckLocalFlag
	cmp r0, #0
	beq _0805A47E
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0805A4CC
_0805A47E:
	pop {r4, pc}

	thumb_func_start sub_0805A480
sub_0805A480: @ 0x0805A480
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xd]
	cmp r0, #0
	beq _0805A494
	movs r0, #3
	strb r0, [r1, #0xc]
	ldrh r0, [r1, #0x3c]
	bl SetFlag
_0805A494:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0805A498
sub_0805A498: @ 0x0805A498
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckLocalFlag
	cmp r0, #0
	bne _0805A4B2
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805A4CC
_0805A4B2:
	pop {r4, pc}

	thumb_func_start sub_0805A4B4
sub_0805A4B4: @ 0x0805A4B4
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xd]
	cmp r0, #0
	beq _0805A4C8
	movs r0, #1
	strb r0, [r1, #0xc]
	ldrh r0, [r1, #0x3c]
	bl ClearFlag
_0805A4C8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0805A4CC
sub_0805A4CC: @ 0x0805A4CC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x8e
	movs r2, #0
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _0805A4F8
	ldr r1, _0805A4FC @ =gRoomControls
	ldrh r0, [r1, #6]
	ldrh r2, [r4, #0x38]
	adds r0, r0, r2
	movs r2, #0
	strh r0, [r3, #0x2e]
	ldrh r0, [r1, #8]
	ldrh r1, [r4, #0x3a]
	adds r0, r0, r1
	subs r0, #0x30
	strh r0, [r3, #0x32]
	str r4, [r3, #0x50]
	strb r2, [r4, #0xd]
_0805A4F8:
	pop {r4, pc}
	.align 2, 0
_0805A4FC: .4byte gRoomControls

	thumb_func_start sub_0805A500
sub_0805A500: @ 0x0805A500
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	bne _0805A588
	bl sub_0805A89C
	str r5, [r4, #0x28]
	movs r0, #0x36
	bl CheckLocalFlag
	cmp r0, #0
	beq _0805A538
	adds r3, r4, #0
	adds r3, #0x23
	movs r0, #3
	strb r0, [r3]
	movs r0, #5
	strb r0, [r4, #0xc]
	ldr r2, _0805A534 @ =gScreen
	ldrh r1, [r2]
	movs r5, #0x90
	lsls r5, r5, #7
	adds r0, r5, #0
	orrs r0, r1
	b _0805A574
	.align 2, 0
_0805A534: .4byte gScreen
_0805A538:
	movs r0, #0x34
	bl CheckLocalFlag
	cmp r0, #0
	beq _0805A560
	adds r3, r4, #0
	adds r3, #0x23
	movs r0, #4
	strb r0, [r3]
	movs r0, #3
	strb r0, [r4, #0xc]
	ldr r2, _0805A55C @ =gScreen
	ldrh r1, [r2]
	movs r5, #0x90
	lsls r5, r5, #7
	adds r0, r5, #0
	orrs r0, r1
	b _0805A574
	.align 2, 0
_0805A55C: .4byte gScreen
_0805A560:
	adds r3, r4, #0
	adds r3, #0x23
	movs r0, #4
	strb r0, [r3]
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r2, _0805A580 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805A584 @ =0x0000B7FF
	ands r0, r1
_0805A574:
	strh r0, [r2]
	ldrb r0, [r3]
	bl sub_0805AAF0
	b _0805A598
	.align 2, 0
_0805A580: .4byte gScreen
_0805A584: .4byte 0x0000B7FF
_0805A588:
	ldr r0, _0805A5C0 @ =gUnk_08108620
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0805A598:
	adds r0, r4, #0
	bl sub_0805AA58
	adds r0, r4, #0
	bl sub_0805A9CC
	ldr r1, _0805A5C4 @ =gRoomControls
	ldrh r3, [r1]
	cmp r3, #1
	bne _0805A5CC
	ldr r2, _0805A5C8 @ =gScreen
	ldrh r1, [r2]
	movs r5, #0x80
	lsls r5, r5, #7
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r2]
	strb r3, [r4, #0xd]
	b _0805A5F0
	.align 2, 0
_0805A5C0: .4byte gUnk_08108620
_0805A5C4: .4byte gRoomControls
_0805A5C8: .4byte gScreen
_0805A5CC:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0805A5F0
	movs r0, #0
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	ldrb r1, [r1, #5]
	cmp r0, r1
	beq _0805A5F0
	ldr r2, _0805A5F4 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805A5F8 @ =0x0000B7FF
	ands r0, r1
	strh r0, [r2]
	bl DeleteThisEntity
_0805A5F0:
	pop {r4, r5, pc}
	.align 2, 0
_0805A5F4: .4byte gScreen
_0805A5F8: .4byte 0x0000B7FF

	thumb_func_start sub_0805A5FC
sub_0805A5FC: @ 0x0805A5FC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x34
	bl CheckLocalFlag
	cmp r0, #0
	beq _0805A616
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805A4CC
_0805A616:
	pop {r4, pc}

	thumb_func_start sub_0805A618
sub_0805A618: @ 0x0805A618
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xd]
	cmp r0, #0
	beq _0805A626
	movs r0, #3
	strb r0, [r1, #0xc]
_0805A626:
	pop {pc}

	thumb_func_start sub_0805A628
sub_0805A628: @ 0x0805A628
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x36
	bl CheckLocalFlag
	cmp r0, #0
	beq _0805A64A
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #3
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #3
	bl sub_0805A4CC
_0805A64A:
	pop {r4, pc}

	thumb_func_start sub_0805A64C
sub_0805A64C: @ 0x0805A64C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xd]
	cmp r0, #0
	beq _0805A65A
	movs r0, #5
	strb r0, [r1, #0xc]
_0805A65A:
	pop {pc}

	thumb_func_start sub_0805A65C
sub_0805A65C: @ 0x0805A65C
	bx lr
	.align 2, 0

	thumb_func_start sub_0805A660
sub_0805A660: @ 0x0805A660
	bx lr
	.align 2, 0

	thumb_func_start sub_0805A664
sub_0805A664: @ 0x0805A664
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805A688 @ =gUnk_08108638
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0805A8EC
	adds r0, r4, #0
	bl sub_0805A68C
	pop {r4, pc}
	.align 2, 0
_0805A688: .4byte gUnk_08108638

	thumb_func_start sub_0805A68C
sub_0805A68C: @ 0x0805A68C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x38
	ldrsh r0, [r4, r1]
	subs r0, #0x18
	movs r2, #0x3a
	ldrsh r1, [r4, r2]
	subs r1, #0x18
	movs r2, #0x30
	movs r3, #0x30
	bl sub_0806FBFC
	cmp r0, #0
	beq _0805A6CC
	ldrh r1, [r4, #0x2c]
	ldr r0, _0805A6C4 @ =0x00001007
	cmp r1, r0
	bhi _0805A6E2
	ldr r0, _0805A6C8 @ =gScreen
	adds r1, #1
	movs r2, #0
	strh r1, [r4, #0x2c]
	adds r0, #0x68
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x22
	strb r2, [r0]
	b _0805A6E2
	.align 2, 0
_0805A6C4: .4byte 0x00001007
_0805A6C8: .4byte gScreen
_0805A6CC:
	ldrh r1, [r4, #0x2c]
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	bls _0805A6DA
	subs r0, r1, #1
	strh r0, [r4, #0x2c]
_0805A6DA:
	ldr r0, _0805A6E4 @ =gScreen
	ldrh r1, [r4, #0x2c]
	adds r0, #0x68
	strh r1, [r0]
_0805A6E2:
	pop {r4, pc}
	.align 2, 0
_0805A6E4: .4byte gScreen

	thumb_func_start sub_0805A6E8
sub_0805A6E8: @ 0x0805A6E8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0805A89C
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #0
	strb r0, [r1]
	bl sub_0805AAF0
	ldr r1, _0805A734 @ =gRoomControls
	ldrh r0, [r1, #6]
	ldrh r2, [r4, #0x38]
	adds r0, r0, r2
	strh r0, [r4, #0x38]
	ldrh r0, [r1, #8]
	ldrh r3, [r4, #0x3a]
	adds r0, r0, r3
	strh r0, [r4, #0x3a]
	adds r0, r4, #0
	bl sub_0805A73C
	cmp r0, #0
	bne _0805A71E
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_0805A71E:
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #0x2c]
	ldr r2, _0805A738 @ =gScreen
	ldrh r1, [r2]
	movs r3, #0x90
	lsls r3, r3, #7
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r4, pc}
	.align 2, 0
_0805A734: .4byte gRoomControls
_0805A738: .4byte gScreen

	thumb_func_start sub_0805A73C
sub_0805A73C: @ 0x0805A73C
	push {lr}
	adds r1, r0, #0
	movs r2, #0x38
	ldrsh r0, [r1, r2]
	subs r0, #6
	movs r2, #0x3a
	ldrsh r1, [r1, r2]
	subs r1, #6
	movs r2, #0xc
	movs r3, #0xc
	bl sub_0806FBFC
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0805A758
sub_0805A758: @ 0x0805A758
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0805A73C
	cmp r0, #0
	bne _0805A76A
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_0805A76A:
	pop {r4, pc}

	thumb_func_start sub_0805A76C
sub_0805A76C: @ 0x0805A76C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _0805A7D4 @ =gLinkEntity
	adds r0, r5, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805A7D0
	movs r1, #0x36
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0805A7D0
	ldr r0, _0805A7D8 @ =gLinkState
	ldr r6, [r0, #0x2c]
	cmp r6, #0
	bne _0805A7D0
	adds r0, #0xa9
	ldrb r0, [r0]
	cmp r0, #1
	bgt _0805A7D0
	cmp r0, #0
	blt _0805A7D0
	adds r0, r4, #0
	bl sub_0805A73C
	cmp r0, #0
	beq _0805A7D0
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r5, #0
	bl sub_08004168
	movs r0, #4
	strb r0, [r5, #0x14]
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_0805E4E0
	movs r0, #0xff
	bl sub_08078A90
	ldr r1, _0805A7DC @ =gUnk_02034490
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0805A7E0 @ =gRoomControls
	str r6, [r0, #0x30]
	bl sub_08077B20
_0805A7D0:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0805A7D4: .4byte gLinkEntity
_0805A7D8: .4byte gLinkState
_0805A7DC: .4byte gUnk_02034490
_0805A7E0: .4byte gRoomControls

	thumb_func_start sub_0805A7E4
sub_0805A7E4: @ 0x0805A7E4
	push {lr}
	ldr r2, _0805A800 @ =gLinkState
	ldrb r0, [r2, #0xc]
	cmp r0, #0x12
	beq _0805A7FE
	movs r1, #0
	movs r0, #0x12
	strb r0, [r2, #0xc]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
_0805A7FE:
	pop {pc}
	.align 2, 0
_0805A800: .4byte gLinkState

	thumb_func_start sub_0805A804
sub_0805A804: @ 0x0805A804
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	bhi _0805A896
	lsls r0, r0, #2
	ldr r1, _0805A818 @ =_0805A81C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805A818: .4byte _0805A81C
_0805A81C: @ jump table
	.4byte _0805A830 @ case 0
	.4byte _0805A858 @ case 1
	.4byte _0805A866 @ case 2
	.4byte _0805A872 @ case 3
	.4byte _0805A88A @ case 4
_0805A830:
	ldrh r0, [r4, #0x3e]
	bl CheckLocalFlag
	cmp r0, #0
	beq _0805A83E
	movs r0, #1
	b _0805A840
_0805A83E:
	movs r0, #2
_0805A840:
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	b _0805A89A
_0805A858:
	ldrh r0, [r4, #0x3e]
	bl CheckLocalFlag
	cmp r0, #0
	bne _0805A89A
	movs r0, #2
	b _0805A87E
_0805A866:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0805A89A
	movs r0, #3
	strb r0, [r4, #0xc]
	b _0805A89A
_0805A872:
	ldrh r0, [r4, #0x3e]
	bl CheckLocalFlag
	cmp r0, #0
	beq _0805A89A
	movs r0, #4
_0805A87E:
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #4
	bl sub_0805A4CC
	b _0805A89A
_0805A88A:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0805A89A
	movs r0, #1
	strb r0, [r4, #0xc]
	b _0805A89A
_0805A896:
	bl DeleteThisEntity
_0805A89A:
	pop {r4, pc}

	thumb_func_start sub_0805A89C
sub_0805A89C: @ 0x0805A89C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #6
	bl sub_0805E3A0
	movs r2, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #8
	strb r0, [r4, #0xe]
	movs r0, #0x10
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x21
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	ldr r1, _0805A8E4 @ =gRoomControls
	ldrb r2, [r1, #5]
	subs r0, #2
	strb r2, [r0]
	ldrh r0, [r1, #6]
	strh r0, [r4, #0x24]
	ldrh r0, [r1, #8]
	strh r0, [r4, #0x26]
	ldr r1, _0805A8E8 @ =sub_0805AAC8
	adds r0, r4, #0
	movs r2, #0
	bl sub_08052D74
	pop {r4, pc}
	.align 2, 0
_0805A8E4: .4byte gRoomControls
_0805A8E8: .4byte sub_0805AAC8

	thumb_func_start sub_0805A8EC
sub_0805A8EC: @ 0x0805A8EC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0805AA58
	adds r0, r4, #0
	bl sub_0805A94C
	ldr r1, _0805A914 @ =gRoomControls
	ldrh r3, [r1]
	cmp r3, #1
	bne _0805A91C
	ldr r2, _0805A918 @ =gScreen
	ldrh r1, [r2]
	movs r5, #0x80
	lsls r5, r5, #7
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r2]
	strb r3, [r4, #0xd]
	b _0805A940
	.align 2, 0
_0805A914: .4byte gRoomControls
_0805A918: .4byte gScreen
_0805A91C:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0805A940
	movs r0, #0
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	ldrb r1, [r1, #5]
	cmp r0, r1
	beq _0805A940
	ldr r2, _0805A944 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805A948 @ =0x0000B7FF
	ands r0, r1
	strh r0, [r2]
	bl DeleteThisEntity
_0805A940:
	pop {r4, r5, pc}
	.align 2, 0
_0805A944: .4byte gScreen
_0805A948: .4byte 0x0000B7FF

	thumb_func_start sub_0805A94C
sub_0805A94C: @ 0x0805A94C
	push {r4, lr}
	ldr r4, _0805A9C4 @ =gScreen
	ldr r3, _0805A9C8 @ =gRoomControls
	ldrh r1, [r3, #0xa]
	ldrh r2, [r0, #0x24]
	subs r1, r1, r2
	ldrh r2, [r0, #0x34]
	adds r1, r1, r2
	strh r1, [r4, #0x2e]
	ldrh r1, [r3, #0xc]
	ldrh r2, [r0, #0x26]
	subs r1, r1, r2
	ldrh r0, [r0, #0x36]
	adds r1, r1, r0
	strh r1, [r4, #0x30]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r0, r2
	cmp r0, #0
	bge _0805A97C
	movs r0, #0
_0805A97C:
	cmp r0, #0xf0
	ble _0805A982
	movs r0, #0xf0
_0805A982:
	cmp r1, #0
	bge _0805A988
	movs r1, #0
_0805A988:
	cmp r1, #0xf0
	ble _0805A98E
	movs r1, #0xf0
_0805A98E:
	lsls r0, r0, #8
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x5a
	strh r0, [r1]
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	adds r1, r0, r2
	cmp r0, #0
	bge _0805A9A6
	movs r0, #0
_0805A9A6:
	cmp r0, #0xa0
	ble _0805A9AC
	movs r0, #0xa0
_0805A9AC:
	cmp r1, #0
	bge _0805A9B2
	movs r1, #0
_0805A9B2:
	cmp r1, #0xa0
	ble _0805A9B8
	movs r1, #0xa0
_0805A9B8:
	lsls r0, r0, #8
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x5e
	strh r0, [r1]
	pop {r4, pc}
	.align 2, 0
_0805A9C4: .4byte gScreen
_0805A9C8: .4byte gRoomControls

	thumb_func_start sub_0805A9CC
sub_0805A9CC: @ 0x0805A9CC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, _0805AA4C @ =gScreen
	ldr r5, _0805AA50 @ =gRoomControls
	ldrh r0, [r5, #0xa]
	ldrh r1, [r4, #0x24]
	subs r0, r0, r1
	ldrh r1, [r4, #0x34]
	adds r0, r0, r1
	strh r0, [r3, #0x2e]
	movs r2, #0x2e
	ldrsh r0, [r3, r2]
	rsbs r2, r0, #0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r2, r0
	cmp r2, #0
	bge _0805A9F2
	movs r2, #0
_0805A9F2:
	cmp r2, #0xf0
	ble _0805A9F8
	movs r2, #0xf0
_0805A9F8:
	cmp r1, #0
	bge _0805A9FE
	movs r1, #0
_0805A9FE:
	cmp r1, #0xf0
	ble _0805AA04
	movs r1, #0xf0
_0805AA04:
	lsls r0, r2, #8
	orrs r0, r1
	adds r1, r3, #0
	adds r1, #0x5a
	strh r0, [r1]
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	ldrh r1, [r4, #0x26]
	subs r0, r0, r1
	movs r2, #0x36
	ldrsh r1, [r4, r2]
	adds r2, r0, r1
	movs r1, #0x3f
	adds r0, r2, #0
	ands r0, r1
	strh r0, [r3, #0x30]
	adds r0, r2, #0
	cmp r0, #0
	bge _0805AA2C
	adds r0, #0x3f
_0805AA2C:
	asrs r0, r0, #6
	lsls r0, r0, #9
	ldr r1, _0805AA54 @ =gUnk_02001A40
	adds r1, r0, r1
	str r1, [r3, #0x34]
	adds r2, r3, #0
	adds r2, #0x5e
	movs r0, #0xa0
	strh r0, [r2]
	ldr r0, [r4, #0x28]
	cmp r0, r1
	beq _0805AA4A
	str r1, [r4, #0x28]
	movs r0, #1
	strh r0, [r3, #0x32]
_0805AA4A:
	pop {r4, r5, pc}
	.align 2, 0
_0805AA4C: .4byte gScreen
_0805AA50: .4byte gRoomControls
_0805AA54: .4byte gUnk_02001A40

	thumb_func_start sub_0805AA58
sub_0805AA58: @ 0x0805AA58
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r5, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805AA8C
	movs r0, #8
	strb r0, [r4, #0xe]
	adds r2, r4, #0
	adds r2, #0x21
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r2]
	lsls r0, r0, #5
	ldr r1, _0805AABC @ =gUnk_085A97A0
	adds r0, r0, r1
	movs r1, #5
	movs r2, #1
	bl sub_0801D754
_0805AA8C:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r5
	cmp r0, #0
	bne _0805AABA
	movs r0, #0x10
	strb r0, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x22
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0805AAC0 @ =gScreen
	ldr r3, _0805AAC4 @ =gUnk_081085B8
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	adds r1, #0x68
	strh r0, [r1]
_0805AABA:
	pop {r4, r5, pc}
	.align 2, 0
_0805AABC: .4byte gUnk_085A97A0
_0805AAC0: .4byte gScreen
_0805AAC4: .4byte gUnk_081085B8

	thumb_func_start sub_0805AAC8
sub_0805AAC8: @ 0x0805AAC8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x23
	ldrb r0, [r0]
	bl sub_0805AAF0
	adds r0, r4, #0
	bl sub_0805A280
	pop {r4, pc}

	thumb_func_start sub_0805AADC
sub_0805AADC: @ 0x0805AADC
	push {lr}
	ldr r1, _0805AAEC @ =gUnk_08108648
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_0801D7EC
	pop {pc}
	.align 2, 0
_0805AAEC: .4byte gUnk_08108648

	thumb_func_start sub_0805AAF0
sub_0805AAF0: @ 0x0805AAF0
	push {lr}
	bl sub_0805AADC
	ldr r3, _0805AB34 @ =gScreen
	adds r1, r3, #0
	adds r1, #0x66
	movs r2, #0
	ldr r0, _0805AB38 @ =0x00003E48
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0805AB3C @ =0x00001008
	strh r0, [r1]
	ldr r0, _0805AB40 @ =0x00001E04
	strh r0, [r3, #0x2c]
	ldr r0, _0805AB44 @ =gUnk_02001A40
	str r0, [r3, #0x34]
	strh r2, [r3, #0x2e]
	strh r2, [r3, #0x30]
	movs r0, #1
	strh r0, [r3, #0x32]
	subs r1, #8
	ldr r0, _0805AB48 @ =0x00003F3F
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x37
	strh r0, [r1]
	subs r1, #8
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0xa0
	strh r0, [r1]
	pop {pc}
	.align 2, 0
_0805AB34: .4byte gScreen
_0805AB38: .4byte 0x00003E48
_0805AB3C: .4byte 0x00001008
_0805AB40: .4byte 0x00001E04
_0805AB44: .4byte gUnk_02001A40
_0805AB48: .4byte 0x00003F3F

	thumb_func_start sub_0805AB4C
sub_0805AB4C: @ 0x0805AB4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldrb r0, [r6, #0xa]
	bl sub_0804B128
	adds r4, r0, #0
	cmp r4, #0
	bne _0805AB68
	bl DeleteThisEntity
_0805AB68:
	ldrb r0, [r6, #0xc]
	movs r1, #0x20
	adds r1, r1, r6
	mov r8, r1
	cmp r0, #0
	bne _0805ABC8
	adds r0, #1
	strb r0, [r6, #0xc]
	ldr r0, _0805ABF0 @ =gUnk_02033A90
	ldrb r0, [r0, #8]
	strb r0, [r1]
	adds r0, r6, #0
	movs r1, #6
	bl sub_0805E3A0
	ldr r2, _0805ABF4 @ =gUnk_02031EC0
	ldrb r0, [r6, #0xb]
	mov r3, r8
	ldrb r1, [r3]
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, r0, r2
	movs r5, #0
	mov sl, r5
	ldrb r0, [r4]
	movs r7, #0x21
	adds r7, r7, r6
	mov ip, r7
	cmp r0, #0xff
	beq _0805ABBE
_0805ABA4:
	adds r1, r2, #0
	adds r0, r4, #0
	ldm r0!, {r3, r5, r7}
	stm r1!, {r3, r5, r7}
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #1
	add sl, r0
	adds r4, #0x10
	adds r2, #0x10
	ldrb r0, [r4]
	cmp r0, #0xff
	bne _0805ABA4
_0805ABBE:
	movs r0, #0xff
	strb r0, [r2]
	mov r2, sl
	mov r1, ip
	strb r2, [r1]
_0805ABC8:
	ldr r4, _0805ABF4 @ =gUnk_02031EC0
	ldrb r2, [r6, #0xb]
	mov r3, r8
	ldrb r1, [r3]
	adds r0, r2, r1
	lsls r0, r0, #4
	adds r4, r0, r4
	ldr r0, _0805ABF8 @ =gUnk_02002A40
	movs r5, #1
	mov sl, r5
	mov r7, sl
	ldrb r0, [r0, #8]
	lsls r7, r0
	mov sl, r7
	adds r0, r1, #7
	asrs r0, r0, #3
	ldr r1, _0805ABFC @ =gUnk_020342F8
	adds r7, r0, r1
	adds r5, r2, #0
	b _0805ACAA
	.align 2, 0
_0805ABF0: .4byte gUnk_02033A90
_0805ABF4: .4byte gUnk_02031EC0
_0805ABF8: .4byte gUnk_02002A40
_0805ABFC: .4byte gUnk_020342F8
_0805AC00:
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #6]
	movs r2, #0x18
	movs r3, #0x20
	bl CheckRectOnScreen
	cmp r0, #0
	bne _0805AC1A
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0801D5D4
	b _0805ACA6
_0805AC1A:
	ldrh r0, [r4, #0xe]
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _0805ACA6
	ldr r0, _0805AC5C @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x46
	bhi _0805ACA6
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0801D5BC
	cmp r0, #0
	bne _0805ACA6
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0805AC48
	bl sub_0807DAA0
	mov sb, r0
	cmp r0, #0
	beq _0805ACA6
_0805AC48:
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	bne _0805AC60
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	ldrb r2, [r4, #2]
	bl CreateNPC
	b _0805AC6A
	.align 2, 0
_0805AC5C: .4byte gUnk_03003DBC
_0805AC60:
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	ldrb r2, [r4, #2]
	bl CreateObject
_0805AC6A:
	adds r3, r0, #0
	mov r2, r8
	ldrb r0, [r2]
	adds r0, #1
	adds r0, r5, r0
	adds r1, r3, #0
	adds r1, #0x45
	strb r0, [r1]
	ldrh r0, [r4, #0xc]
	strb r0, [r3, #0xe]
	ldr r1, _0805ACBC @ =gRoomControls
	ldrh r0, [r1, #6]
	ldrh r2, [r4, #4]
	adds r0, r0, r2
	strh r0, [r3, #0x2e]
	ldrh r0, [r1, #8]
	ldrh r1, [r4, #6]
	adds r0, r0, r1
	strh r0, [r3, #0x32]
	ldrb r1, [r4, #3]
	adds r0, r3, #0
	adds r0, #0x38
	strb r1, [r0]
	ldr r2, [r4, #8]
	cmp r2, #0
	beq _0805ACA6
	adds r0, r3, #0
	mov r1, sb
	bl sub_0807DAF0
_0805ACA6:
	adds r4, #0x10
	adds r5, #1
_0805ACAA:
	ldrb r0, [r4]
	cmp r0, #0xff
	bne _0805AC00
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805ACBC: .4byte gRoomControls

	thumb_func_start sub_0805ACC0
sub_0805ACC0: @ 0x0805ACC0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r0, #0x45
	ldrb r1, [r0]
	cmp r1, #0
	bne _0805ACF0
	b _0805AD32
_0805ACD0:
	ldrb r0, [r4, #0xb]
	subs r0, r5, r0
	lsls r0, r0, #4
	adds r3, r3, r0
	ldrh r0, [r3, #4]
	ldr r2, _0805ACEC @ =gRoomControls
	ldrh r1, [r2, #6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	ldrh r1, [r3, #6]
	orrs r0, r1
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	b _0805AD34
	.align 2, 0
_0805ACEC: .4byte gRoomControls
_0805ACF0:
	movs r0, #0x7f
	ands r0, r1
	subs r5, r0, #1
	ldr r6, _0805AD3C @ =gUnk_03003DA0
	ldr r4, [r6, #4]
	cmp r4, r6
	beq _0805AD32
	ldr r0, _0805AD40 @ =0x00001609
	mov r8, r0
	ldr r0, _0805AD44 @ =0x0000FFFF
	adds r7, r0, #0
_0805AD06:
	ldrh r0, [r4, #8]
	ands r0, r7
	cmp r0, r8
	bne _0805AD2C
	ldrb r1, [r4, #0xb]
	cmp r1, r5
	bgt _0805AD2C
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	adds r0, r1, r0
	cmp r0, r5
	ble _0805AD2C
	ldrb r0, [r4, #0xa]
	bl sub_0804B128
	adds r3, r0, #0
	cmp r3, #0
	bne _0805ACD0
_0805AD2C:
	ldr r4, [r4, #4]
	cmp r4, r6
	bne _0805AD06
_0805AD32:
	movs r0, #0
_0805AD34:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805AD3C: .4byte gUnk_03003DA0
_0805AD40: .4byte 0x00001609
_0805AD44: .4byte 0x0000FFFF

	thumb_func_start sub_0805AD48
sub_0805AD48: @ 0x0805AD48
	push {lr}
	ldr r2, _0805AD5C @ =gUnk_08108654
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805AD5C: .4byte gUnk_08108654

	thumb_func_start sub_0805AD60
sub_0805AD60: @ 0x0805AD60
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0x3c]
	bl CheckFlags
	cmp r0, #0
	beq _0805AD76
	bl DeleteThisEntity
_0805AD76:
	adds r0, r4, #0
	bl sub_0805AD80
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805AD80
sub_0805AD80: @ 0x0805AD80
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805ADD0
	ldrb r1, [r4, #0xa]
	ldrb r2, [r4, #0xb]
	movs r0, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0805ADCC
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r0, [r0]
	strb r0, [r2, #0xe]
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	ldr r1, _0805ADD4 @ =gRoomControls
	ldrh r0, [r1, #6]
	ldrh r3, [r4, #0x38]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #8]
	ldrh r1, [r4, #0x3a]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	ldrh r1, [r4, #0x3c]
	adds r0, r2, #0
	adds r0, #0x86
	strh r1, [r0]
_0805ADCC:
	bl DeleteThisEntity
_0805ADD0:
	pop {r4, pc}
	.align 2, 0
_0805ADD4: .4byte gRoomControls

	thumb_func_start sub_0805ADD8
sub_0805ADD8: @ 0x0805ADD8
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0
	bne _0805AE04
	ldr r0, _0805ADF8 @ =gUnk_02033A90
	ldr r1, _0805ADFC @ =0x0000088C
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0805AE00 @ =sub_0805AEDC
	cmp r0, r1
	beq _0805AEC4
	movs r0, #0
	bl _call_via_r1
	b _0805AEC4
	.align 2, 0
_0805ADF8: .4byte gUnk_02033A90
_0805ADFC: .4byte 0x0000088C
_0805AE00: .4byte sub_0805AEDC
_0805AE04:
	ldrb r2, [r4, #0xc]
	cmp r2, #0
	bne _0805AE5E
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x10]
	strb r2, [r4, #0xe]
	movs r0, #8
	strb r0, [r4, #0xf]
	ldr r0, _0805AE44 @ =gUnk_0810865C
	ldrh r0, [r0]
	strh r0, [r4, #0x20]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	ldr r0, _0805AE48 @ =gUnk_02033A90
	ldr r2, _0805AE4C @ =0x0000088C
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _0805AE58
	ldr r1, _0805AE50 @ =sub_0805AEDC
	ldr r2, _0805AE54 @ =sub_0805AF3C
	adds r0, r4, #0
	bl sub_08052D74
	b _0805AEC4
	.align 2, 0
_0805AE44: .4byte gUnk_0810865C
_0805AE48: .4byte gUnk_02033A90
_0805AE4C: .4byte 0x0000088C
_0805AE50: .4byte sub_0805AEDC
_0805AE54: .4byte sub_0805AF3C
_0805AE58:
	bl DeleteThisEntity
	b _0805AEC4
_0805AE5E:
	ldr r2, _0805AEC8 @ =gUnk_0810865C
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	ldr r3, _0805AECC @ =gScreen
	cmp r0, #0
	beq _0805AEA2
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	movs r1, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805AEA2
	movs r0, #4
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #0
	beq _0805AEA2
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	strh r1, [r4, #0x20]
	adds r0, r3, #0
	adds r0, #0x68
	strh r1, [r0]
_0805AEA2:
	ldr r1, _0805AED0 @ =gRoomControls
	ldr r0, [r1, #0x28]
	ldr r2, _0805AED4 @ =0xFFFFE000
	adds r0, r0, r2
	str r0, [r1, #0x28]
	ldr r0, [r1, #0x2c]
	ldr r2, _0805AED8 @ =0xFFFFF000
	adds r0, r0, r2
	str r0, [r1, #0x2c]
	ldrh r0, [r1, #0x2a]
	ldrh r2, [r1, #0xa]
	adds r0, r0, r2
	strh r0, [r3, #0x2e]
	ldrh r0, [r1, #0x2e]
	ldrh r1, [r1, #0xc]
	adds r0, r0, r1
	strh r0, [r3, #0x30]
_0805AEC4:
	pop {r4, pc}
	.align 2, 0
_0805AEC8: .4byte gUnk_0810865C
_0805AECC: .4byte gScreen
_0805AED0: .4byte gRoomControls
_0805AED4: .4byte 0xFFFFE000
_0805AED8: .4byte 0xFFFFF000

	thumb_func_start sub_0805AEDC
sub_0805AEDC: @ 0x0805AEDC
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, _0805AF2C @ =gScreen
	ldr r0, _0805AF30 @ =0x00001E05
	strh r0, [r2, #0x2c]
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #4
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	adds r1, r2, #0
	adds r1, #0x66
	ldr r0, _0805AF34 @ =0x00003648
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	adds r1, r0, #0
	cmp r3, #0
	beq _0805AF06
	ldrh r1, [r3, #0x20]
_0805AF06:
	adds r0, r2, #0
	adds r0, #0x68
	strh r1, [r0]
	ldr r1, _0805AF38 @ =gRoomControls
	ldrh r0, [r1, #0x2a]
	ldrh r4, [r1, #0xa]
	adds r0, r0, r4
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #0x2e]
	ldrh r1, [r1, #0xc]
	adds r0, r0, r1
	strh r0, [r2, #0x30]
	cmp r3, #0
	beq _0805AF28
	adds r0, r3, #0
	bl sub_0805ADD8
_0805AF28:
	pop {r4, pc}
	.align 2, 0
_0805AF2C: .4byte gScreen
_0805AF30: .4byte 0x00001E05
_0805AF34: .4byte 0x00003648
_0805AF38: .4byte gRoomControls

	thumb_func_start sub_0805AF3C
sub_0805AF3C: @ 0x0805AF3C
	ldrb r2, [r0, #0x10]
	movs r1, #0xdf
	ands r1, r2
	movs r3, #0
	strb r1, [r0, #0x10]
	ldr r1, _0805AF58 @ =gScreen
	ldrh r2, [r1]
	ldr r0, _0805AF5C @ =0x0000F7FF
	ands r0, r2
	strh r0, [r1]
	adds r1, #0x66
	strh r3, [r1]
	bx lr
	.align 2, 0
_0805AF58: .4byte gScreen
_0805AF5C: .4byte 0x0000F7FF

	thumb_func_start sub_0805AF60
sub_0805AF60: @ 0x0805AF60
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0
	bne _0805AF8C
	ldr r0, _0805AF80 @ =gUnk_02033A90
	ldr r1, _0805AF84 @ =0x0000088C
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0805AF88 @ =sub_0805AFFC
	cmp r0, r1
	beq _0805AFEE
	movs r0, #0
	bl _call_via_r1
	b _0805AFEE
	.align 2, 0
_0805AF80: .4byte gUnk_02033A90
_0805AF84: .4byte 0x0000088C
_0805AF88: .4byte sub_0805AFFC
_0805AF8C:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805AFD2
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	ldr r0, _0805AFC0 @ =gUnk_02033A90
	ldr r2, _0805AFC4 @ =0x0000088C
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _0805AFCC
	ldr r1, _0805AFC8 @ =sub_0805AFFC
	adds r0, r4, #0
	movs r2, #0
	bl sub_08052D74
	b _0805AFEE
	.align 2, 0
_0805AFC0: .4byte gUnk_02033A90
_0805AFC4: .4byte 0x0000088C
_0805AFC8: .4byte sub_0805AFFC
_0805AFCC:
	bl DeleteThisEntity
	b _0805AFEE
_0805AFD2:
	ldr r1, _0805AFF0 @ =gRoomControls
	ldr r0, [r1, #0x28]
	ldr r3, _0805AFF4 @ =0xFFFFE000
	adds r0, r0, r3
	str r0, [r1, #0x28]
	ldr r2, _0805AFF8 @ =gScreen
	ldrh r0, [r1, #0x2a]
	ldrh r3, [r1, #0xa]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #0x2e]
	ldrh r1, [r1, #0xc]
	adds r0, r0, r1
	strh r0, [r2, #0x30]
_0805AFEE:
	pop {r4, pc}
	.align 2, 0
_0805AFF0: .4byte gRoomControls
_0805AFF4: .4byte 0xFFFFE000
_0805AFF8: .4byte gScreen

	thumb_func_start sub_0805AFFC
sub_0805AFFC: @ 0x0805AFFC
	ldr r2, _0805B024 @ =gScreen
	ldr r0, _0805B028 @ =0x00001E03
	strh r0, [r2, #0x2c]
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0805B02C @ =gRoomControls
	ldrh r0, [r1, #0x2a]
	ldrh r3, [r1, #0xa]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #0x2e]
	ldrh r1, [r1, #0xc]
	adds r0, r0, r1
	strh r0, [r2, #0x30]
	bx lr
	.align 2, 0
_0805B024: .4byte gScreen
_0805B028: .4byte 0x00001E03
_0805B02C: .4byte gRoomControls

	thumb_func_start sub_0805B030
sub_0805B030: @ 0x0805B030
	push {lr}
	ldr r2, _0805B044 @ =gUnk_08108668
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805B044: .4byte gUnk_08108668

	thumb_func_start sub_0805B048
sub_0805B048: @ 0x0805B048
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #6
	bl sub_0805E3A0
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #0x20
	bl sub_0801D630
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r2, _0805B08C @ =gRoomControls
	ldrb r0, [r2, #5]
	adds r1, r4, #0
	adds r1, #0x3f
	strb r0, [r1]
	ldrb r1, [r4, #0xa]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805B090 @ =gUnk_08108764
	adds r5, r0, r1
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _0805B094
	ldrh r0, [r2, #6]
	strh r0, [r4, #0x20]
	ldrh r0, [r2, #8]
	strh r0, [r4, #0x22]
	ldrh r0, [r2, #0x1e]
	strh r0, [r4, #0x24]
	ldrh r0, [r2, #0x20]
	b _0805B0B2
	.align 2, 0
_0805B08C: .4byte gRoomControls
_0805B090: .4byte gUnk_08108764
_0805B094:
	ldrb r0, [r5, #8]
	lsls r0, r0, #4
	ldrh r1, [r2, #6]
	adds r0, r0, r1
	strh r0, [r4, #0x20]
	ldrb r0, [r5, #9]
	lsls r0, r0, #4
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	strh r0, [r4, #0x22]
	ldrb r0, [r5, #0xa]
	lsls r0, r0, #4
	strh r0, [r4, #0x24]
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #4
_0805B0B2:
	strh r0, [r4, #0x26]
	ldr r1, [r5, #0xc]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	strb r0, [r4, #0xb]
	cmp r0, #0
	beq _0805B0FC
	ldrb r0, [r4, #0x10]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	ldrh r0, [r0, #4]
	strh r0, [r4, #0x34]
	ldr r0, [r5, #0xc]
	ldrh r0, [r0, #6]
	strh r0, [r4, #0x36]
	ldr r0, [r5, #0xc]
	ldrh r0, [r0, #8]
	strh r0, [r4, #0x30]
	ldr r0, [r5, #0xc]
	ldrh r0, [r0, #0xa]
	strh r0, [r4, #0x32]
	bl sub_0805BC4C
	adds r0, r4, #0
	bl sub_0805B2B0
	adds r0, r4, #0
	bl sub_0805B328
	ldr r1, _0805B160 @ =sub_0805B328
	adds r0, r4, #0
	movs r2, #0
	bl sub_08052D74
_0805B0FC:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0805B15E
	ldrb r1, [r0]
	ldrb r2, [r0, #1]
	movs r0, #0x28
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _0805B128
	ldr r1, [r5, #0x10]
	ldr r2, _0805B164 @ =gRoomControls
	ldrh r0, [r2, #6]
	ldrh r1, [r1, #4]
	adds r0, r0, r1
	strh r0, [r3, #0x2e]
	ldr r1, [r5, #0x10]
	ldrh r0, [r2, #8]
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	strh r0, [r3, #0x32]
_0805B128:
	ldrb r0, [r4, #0xa]
	cmp r0, #0xa
	bne _0805B15E
	movs r0, #0x4b
	bl CheckLocalFlag
	cmp r0, #0
	bne _0805B15E
	movs r0, #0x28
	movs r1, #3
	movs r2, #3
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _0805B15E
	ldr r1, [r5, #0x10]
	ldr r2, _0805B164 @ =gRoomControls
	ldrh r0, [r2, #6]
	ldrh r1, [r1, #4]
	adds r0, r0, r1
	strh r0, [r3, #0x2e]
	ldr r1, [r5, #0x10]
	ldrh r0, [r2, #8]
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	strh r0, [r3, #0x32]
_0805B15E:
	pop {r4, r5, pc}
	.align 2, 0
_0805B160: .4byte sub_0805B328
_0805B164: .4byte gRoomControls

	thumb_func_start sub_0805B168
sub_0805B168: @ 0x0805B168
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0805B1CC
	adds r5, r0, #0
	cmp r5, #0
	beq _0805B182
	adds r0, r4, #0
	bl sub_0805B210
	bl DeleteThisEntity
	b _0805B1C0
_0805B182:
	adds r0, r4, #0
	bl sub_0805B2B0
	ldr r1, _0805B194 @ =gRoomControls
	ldrh r0, [r1]
	cmp r0, #1
	bne _0805B198
	strb r0, [r4, #0xd]
	b _0805B1C0
	.align 2, 0
_0805B194: .4byte gRoomControls
_0805B198:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0805B1C0
	strb r5, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	ldrb r1, [r1, #5]
	cmp r0, r1
	beq _0805B1C0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0805B1BC
	ldr r2, _0805B1C4 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805B1C8 @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2]
_0805B1BC:
	bl DeleteThisEntity
_0805B1C0:
	pop {r4, r5, pc}
	.align 2, 0
_0805B1C4: .4byte gScreen
_0805B1C8: .4byte 0x0000F7FF

	thumb_func_start sub_0805B1CC
sub_0805B1CC: @ 0x0805B1CC
	push {r4, r5, lr}
	movs r5, #0
	movs r1, #0x20
	ldrsh r4, [r0, r1]
	movs r2, #0x22
	ldrsh r1, [r0, r2]
	ldrh r2, [r0, #0x24]
	ldrh r3, [r0, #0x26]
	adds r0, r4, #0
	bl sub_0806FBFC
	cmp r0, #0
	beq _0805B20C
	ldr r2, _0805B1FC @ =gLinkState
	ldr r1, [r2, #0x30]
	movs r0, #5
	ands r0, r1
	cmp r0, #5
	bne _0805B200
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r2, #0x30]
	b _0805B20C
	.align 2, 0
_0805B1FC: .4byte gLinkState
_0805B200:
	movs r0, #0x80
	lsls r0, r0, #8
	ands r1, r0
	cmp r1, #0
	beq _0805B20C
	movs r5, #1
_0805B20C:
	adds r0, r5, #0
	pop {r4, r5, pc}

	thumb_func_start sub_0805B210
sub_0805B210: @ 0x0805B210
	push {r4, r5, lr}
	ldr r2, _0805B248 @ =gUnk_030010A0
	movs r1, #1
	strb r1, [r2, #8]
	strb r1, [r2, #9]
	movs r1, #4
	strb r1, [r2, #0xe]
	ldrb r1, [r0, #0xa]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805B24C @ =gUnk_08108764
	adds r4, r0, r1
	ldrb r0, [r4, #1]
	strb r0, [r2, #0xc]
	ldrb r0, [r4, #2]
	strb r0, [r2, #0xd]
	ldrb r0, [r4, #3]
	strb r0, [r2, #0x14]
	ldr r0, _0805B250 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _0805B254
	movs r0, #6
	b _0805B256
	.align 2, 0
_0805B248: .4byte gUnk_030010A0
_0805B24C: .4byte gUnk_08108764
_0805B250: .4byte gLinkState
_0805B254:
	movs r0, #2
_0805B256:
	strb r0, [r5, #0xf]
	ldrb r0, [r4]
	cmp r0, #1
	beq _0805B278
	cmp r0, #1
	bgt _0805B268
	cmp r0, #0
	beq _0805B26E
	b _0805B2AC
_0805B268:
	cmp r0, #2
	beq _0805B2A0
	b _0805B2AC
_0805B26E:
	ldrh r0, [r4, #4]
	strh r0, [r5, #0x10]
	ldrh r0, [r4, #6]
	strh r0, [r5, #0x12]
	b _0805B2AC
_0805B278:
	ldr r2, _0805B298 @ =gLinkEntity
	ldr r3, _0805B29C @ =gRoomControls
	ldrh r0, [r2, #0x2e]
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	strh r0, [r5, #0x10]
	ldrh r0, [r2, #0x32]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	ldrh r4, [r4, #6]
	adds r0, r0, r4
	strh r0, [r5, #0x12]
	b _0805B2AC
	.align 2, 0
_0805B298: .4byte gLinkEntity
_0805B29C: .4byte gRoomControls
_0805B2A0:
	ldrh r0, [r4, #4]
	strh r0, [r5, #0x10]
	ldrh r0, [r4, #6]
	strh r0, [r5, #0x12]
	movs r0, #6
	strb r0, [r5, #0xf]
_0805B2AC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0805B2B0
sub_0805B2B0: @ 0x0805B2B0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _0805B31E
	ldrh r1, [r5, #0x30]
	ldr r6, _0805B320 @ =gRoomControls
	movs r2, #0xa
	ldrsh r0, [r6, r2]
	subs r1, r1, r0
	cmp r1, #0
	bge _0805B2CA
	adds r1, #3
_0805B2CA:
	asrs r4, r1, #2
	ldrh r1, [r5, #0x32]
	movs r7, #0xc
	ldrsh r0, [r6, r7]
	subs r1, r1, r0
	cmp r1, #0
	bge _0805B2DA
	adds r1, #3
_0805B2DA:
	asrs r3, r1, #2
	movs r0, #0xc
	rsbs r0, r0, #0
	cmp r4, r0
	bge _0805B2E6
	adds r4, r0, #0
_0805B2E6:
	cmp r4, #0xc
	ble _0805B2EC
	movs r4, #0xc
_0805B2EC:
	cmp r3, r0
	bge _0805B2F2
	adds r3, r0, #0
_0805B2F2:
	cmp r3, #0xc
	ble _0805B2F8
	movs r3, #0xc
_0805B2F8:
	ldr r2, _0805B324 @ =gScreen
	ldrh r1, [r2]
	movs r7, #0x80
	lsls r7, r7, #4
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r2]
	ldrh r0, [r5, #0x34]
	ldrh r1, [r6, #0xa]
	adds r0, r0, r1
	adds r0, r0, r4
	strh r0, [r6, #0x2a]
	strh r0, [r2, #0x2e]
	ldrh r0, [r5, #0x36]
	ldrh r7, [r6, #0xc]
	adds r0, r0, r7
	adds r0, r0, r3
	strh r0, [r6, #0x2e]
	strh r0, [r2, #0x30]
_0805B31E:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805B320: .4byte gRoomControls
_0805B324: .4byte gScreen

	thumb_func_start sub_0805B328
sub_0805B328: @ 0x0805B328
	push {r4, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xb]
	cmp r0, #0
	beq _0805B372
	ldrb r1, [r1, #0xa]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805B374 @ =gUnk_08108764
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	ldr r0, [r0]
	ldr r1, _0805B378 @ =gUnk_085A2E80
	adds r0, r0, r1
	ldr r1, _0805B37C @ =0x0600F000
	movs r4, #0x80
	lsls r4, r4, #4
	adds r2, r4, #0
	bl sub_08000E96
	ldr r1, _0805B380 @ =gScreen
	ldr r0, _0805B384 @ =0x00001E07
	strh r0, [r1, #0x2c]
	ldrh r0, [r1]
	orrs r4, r0
	strh r4, [r1]
	ldr r2, _0805B388 @ =gRoomControls
	ldrh r0, [r2, #0x2a]
	strh r0, [r1, #0x2e]
	ldrh r0, [r2, #0x2e]
	strh r0, [r1, #0x30]
	adds r1, #0x66
	ldrh r2, [r1]
	ldr r0, _0805B38C @ =0x0000FFF7
	ands r0, r2
	strh r0, [r1]
_0805B372:
	pop {r4, pc}
	.align 2, 0
_0805B374: .4byte gUnk_08108764
_0805B378: .4byte gUnk_085A2E80
_0805B37C: .4byte 0x0600F000
_0805B380: .4byte gScreen
_0805B384: .4byte 0x00001E07
_0805B388: .4byte gRoomControls
_0805B38C: .4byte 0x0000FFF7

	thumb_func_start sub_0805B390
sub_0805B390: @ 0x0805B390
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0805E8D4
	adds r1, r0, #0
	cmp r1, #0
	beq _0805B3B0
	movs r0, #9
	strb r0, [r1, #8]
	movs r0, #0x1a
	strb r0, [r1, #9]
	strb r4, [r1, #0xa]
	adds r0, r1, #0
	movs r1, #6
	bl sub_0805EA2C
_0805B3B0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805B3B4
sub_0805B3B4: @ 0x0805B3B4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0805EABC
	cmp r0, #0
	beq _0805B3C4
	bl DeleteThisEntity
_0805B3C4:
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	ldr r1, _0805B438 @ =gUnk_08108C28
	adds r5, r0, r1
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805B41E
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0805B3F6
	ldr r1, _0805B43C @ =sub_0805B4B4
	adds r0, r4, #0
	movs r2, #0
	bl sub_08052D74
_0805B3F6:
	ldr r0, _0805B440 @ =gRoomControls
	ldrh r1, [r0, #0x20]
	movs r0, #0x80
	lsls r0, r0, #1
	subs r1, r0, r1
	cmp r1, #0
	bge _0805B406
	movs r1, #0
_0805B406:
	movs r0, #2
	ldrsb r0, [r5, r0]
	adds r0, r1, r0
	str r0, [r4, #0x20]
	ldr r1, _0805B444 @ =gUnk_08108C54
	ldrb r0, [r5, #1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
_0805B41E:
	ldr r0, _0805B440 @ =gRoomControls
	ldrh r0, [r0]
	cmp r0, #0
	bne _0805B436
	ldr r0, _0805B444 @ =gUnk_08108C54
	ldrb r1, [r5, #1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0805B436:
	pop {r4, r5, pc}
	.align 2, 0
_0805B438: .4byte gUnk_08108C28
_0805B43C: .4byte sub_0805B4B4
_0805B440: .4byte gRoomControls
_0805B444: .4byte gUnk_08108C54

	thumb_func_start sub_0805B448
sub_0805B448: @ 0x0805B448
	push {r4, lr}
	ldr r4, _0805B46C @ =gScreen
	ldr r3, _0805B470 @ =gRoomControls
	movs r2, #0xa
	ldrsh r1, [r3, r2]
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #2
	strh r1, [r4, #0x2e]
	movs r2, #0xc
	ldrsh r1, [r3, r2]
	ldrh r2, [r3, #8]
	subs r1, r1, r2
	asrs r1, r1, #1
	ldr r0, [r0, #0x20]
	adds r0, r0, r1
	strh r0, [r4, #0x30]
	pop {r4, pc}
	.align 2, 0
_0805B46C: .4byte gScreen
_0805B470: .4byte gRoomControls

	thumb_func_start sub_0805B474
sub_0805B474: @ 0x0805B474
	push {r4, r5, lr}
	ldr r5, _0805B4A8 @ =gRoomControls
	movs r0, #0xc
	ldrsh r1, [r5, r0]
	ldrh r4, [r5, #8]
	subs r1, r1, r4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	ldrh r1, [r5, #0x20]
	subs r1, #0xa0
	bl __divsi3
	ldr r2, _0805B4AC @ =gScreen
	adds r4, r4, r0
	strh r4, [r2, #0x30]
	ldrh r0, [r5, #0x1e]
	ldr r1, _0805B4B0 @ =0xFFFFFF00
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldrh r1, [r5, #0xa]
	subs r1, r1, r0
	strh r1, [r2, #0x2e]
	pop {r4, r5, pc}
	.align 2, 0
_0805B4A8: .4byte gRoomControls
_0805B4AC: .4byte gScreen
_0805B4B0: .4byte 0xFFFFFF00

	thumb_func_start sub_0805B4B4
sub_0805B4B4: @ 0x0805B4B4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	bl sub_0805B4D0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0805B4C8
	bl sub_0806D0F8
_0805B4C8:
	adds r0, r4, #0
	bl sub_0805B3B4
	pop {r4, pc}

	thumb_func_start sub_0805B4D0
sub_0805B4D0: @ 0x0805B4D0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0805B528 @ =gUnk_08108C5C
	adds r0, r5, r0
	ldrb r0, [r0]
	bl sub_0801D7EC
	ldr r4, _0805B52C @ =gScreen
	ldr r0, _0805B530 @ =0x00001E07
	strh r0, [r4, #0x2c]
	ldrh r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r2, _0805B534 @ =gRoomControls
	movs r1, #0xa
	ldrsh r0, [r2, r1]
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #2
	strh r0, [r4, #0x2e]
	movs r1, #0xc
	ldrsh r0, [r2, r1]
	ldrh r1, [r2, #8]
	subs r0, r0, r1
	asrs r3, r0, #1
	ldrh r1, [r2, #0x20]
	movs r0, #0x80
	lsls r0, r0, #1
	subs r2, r0, r1
	cmp r2, #0
	bge _0805B516
	movs r2, #0
_0805B516:
	ldr r0, _0805B538 @ =gUnk_08108C44
	lsls r1, r5, #1
	adds r1, r1, r0
	adds r0, r3, r2
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x30]
	pop {r4, r5, pc}
	.align 2, 0
_0805B528: .4byte gUnk_08108C5C
_0805B52C: .4byte gScreen
_0805B530: .4byte 0x00001E07
_0805B534: .4byte gRoomControls
_0805B538: .4byte gUnk_08108C44

	thumb_func_start sub_0805B53C
sub_0805B53C: @ 0x0805B53C
	push {lr}
	ldr r2, _0805B550 @ =gUnk_08108C64
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805B550: .4byte gUnk_08108C64

	thumb_func_start sub_0805B554
sub_0805B554: @ 0x0805B554
	movs r1, #1
	strb r1, [r0, #0xc]
	strb r1, [r0, #0xe]
	bx lr

	thumb_func_start sub_0805B55C
sub_0805B55C: @ 0x0805B55C
	push {r4, r5, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805B5B4
	movs r0, #0xf
	strb r0, [r1, #0xe]
	movs r0, #0x19
	movs r1, #0
	bl CreateEnemy
	adds r5, r0, #0
	cmp r5, #0
	beq _0805B5B4
	bl Random
	ldr r4, _0805B5B8 @ =gRoomControls
	ldr r2, _0805B5BC @ =gUnk_08108C6C
	movs r1, #7
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r0, #0x78
	ldrh r1, [r4, #0xa]
	adds r0, r0, r1
	strh r0, [r5, #0x2e]
	bl Random
	ldr r2, _0805B5C0 @ =gUnk_08108C7C
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, #0x50
	ldrh r4, [r4, #0xc]
	adds r0, r0, r4
	strh r0, [r5, #0x32]
	ldr r0, _0805B5C4 @ =0x0000FF38
	strh r0, [r5, #0x36]
_0805B5B4:
	pop {r4, r5, pc}
	.align 2, 0
_0805B5B8: .4byte gRoomControls
_0805B5BC: .4byte gUnk_08108C6C
_0805B5C0: .4byte gUnk_08108C7C
_0805B5C4: .4byte 0x0000FF38

	thumb_func_start sub_0805B5C8
sub_0805B5C8: @ 0x0805B5C8
	push {lr}
	ldr r2, _0805B5DC @ =gUnk_08108C80
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805B5DC: .4byte gUnk_08108C80

	thumb_func_start sub_0805B5E0
sub_0805B5E0: @ 0x0805B5E0
	push {r4, r5, lr}
	movs r4, #0
	movs r1, #1
	strb r1, [r0, #0xc]
	ldr r3, _0805B618 @ =gScreen
	ldrh r2, [r3]
	movs r5, #0x80
	lsls r5, r5, #4
	adds r1, r5, #0
	orrs r1, r2
	strh r1, [r3]
	ldr r2, _0805B61C @ =gUnk_08108C88
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r3, #0x2c]
	ldr r1, _0805B620 @ =gRoomControls
	str r4, [r1, #0x2c]
	str r4, [r1, #0x28]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _0805B612
	cmp r0, #1
	beq _0805B624
_0805B612:
	strh r4, [r3, #0x30]
	strh r4, [r3, #0x2e]
	b _0805B634
	.align 2, 0
_0805B618: .4byte gScreen
_0805B61C: .4byte gUnk_08108C88
_0805B620: .4byte gRoomControls
_0805B624:
	ldrh r0, [r1, #0x2a]
	ldrh r2, [r1, #0xa]
	adds r0, r0, r2
	strh r0, [r3, #0x2e]
	ldrh r0, [r1, #0x2e]
	ldrh r1, [r1, #0xc]
	adds r0, r0, r1
	strh r0, [r3, #0x30]
_0805B634:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0805B638
sub_0805B638: @ 0x0805B638
	push {lr}
	ldrb r0, [r0, #0xa]
	cmp r0, #1
	bne _0805B65E
	ldr r1, _0805B660 @ =gRoomControls
	ldr r0, [r1, #0x28]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r0, r2
	str r0, [r1, #0x28]
	ldr r2, _0805B664 @ =gScreen
	ldrh r0, [r1, #0x2a]
	ldrh r3, [r1, #0xa]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #0x2e]
	ldrh r1, [r1, #0xc]
	adds r0, r0, r1
	strh r0, [r2, #0x30]
_0805B65E:
	pop {pc}
	.align 2, 0
_0805B660: .4byte gRoomControls
_0805B664: .4byte gScreen

	thumb_func_start sub_0805B668
sub_0805B668: @ 0x0805B668
	push {lr}
	ldr r2, _0805B67C @ =gUnk_08108C8C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805B67C: .4byte gUnk_08108C8C

	thumb_func_start sub_0805B680
sub_0805B680: @ 0x0805B680
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r1, [r4, #0x34]
	lsrs r1, r1, #1
	strh r1, [r4, #0x34]
	ldrh r0, [r4, #0x38]
	adds r0, r0, r1
	strh r0, [r4, #0x38]
	ldrh r1, [r4, #0x36]
	lsrs r1, r1, #1
	strh r1, [r4, #0x36]
	ldrh r0, [r4, #0x3a]
	adds r0, r0, r1
	strh r0, [r4, #0x3a]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0805B6B8
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805B6B8
	adds r0, r4, #0
	bl sub_0805E900
	b _0805B6BE
_0805B6B8:
	adds r0, r4, #0
	bl sub_0805B6C0
_0805B6BE:
	pop {r4, pc}

	thumb_func_start sub_0805B6C0
sub_0805B6C0: @ 0x0805B6C0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x38
	ldrsh r0, [r4, r1]
	movs r2, #0x3a
	ldrsh r1, [r4, r2]
	ldrh r2, [r4, #0x34]
	ldrh r3, [r4, #0x36]
	bl CheckPlayerInRegion
	cmp r0, #0
	beq _0805B6EC
	ldrh r0, [r4, #0x3e]
	bl SetFlag
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0805B6F2
	adds r0, r4, #0
	bl sub_0805E900
	b _0805B6F2
_0805B6EC:
	ldrh r0, [r4, #0x3e]
	bl ClearFlag
_0805B6F2:
	pop {r4, pc}

	thumb_func_start sub_0805B6F4
sub_0805B6F4: @ 0x0805B6F4
	push {lr}
	ldr r2, _0805B708 @ =gUnk_08108C94
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805B708: .4byte gUnk_08108C94

	thumb_func_start sub_0805B70C
sub_0805B70C: @ 0x0805B70C
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805B71E
	movs r0, #1
	strb r0, [r4, #0xb]
_0805B71E:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r1, [r4, #0x38]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	movs r2, #0x3f
	ands r1, r2
	ldrh r0, [r4, #0x3a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ands r0, r2
	lsls r0, r0, #6
	orrs r1, r0
	strh r1, [r4, #0x38]
	adds r0, r4, #0
	bl sub_0805B778
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805B744
sub_0805B744: @ 0x0805B744
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	adds r1, r0, #0
	cmp r1, #0
	beq _0805B766
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0805B774
	movs r0, #1
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	bl sub_0805B778
	b _0805B774
_0805B766:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bne _0805B774
	strb r1, [r4, #0xb]
	adds r0, r4, #0
	bl sub_0805B778
_0805B774:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805B778
sub_0805B778: @ 0x0805B778
	push {lr}
	ldr r2, _0805B79C @ =gUnk_08108C9C
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #1
	ldrb r3, [r0, #0xb]
	adds r1, r1, r3
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r3, [r1]
	movs r2, #0x38
	ldrsh r1, [r0, r2]
	adds r0, #0x36
	ldrb r2, [r0]
	adds r0, r3, #0
	bl SetTileType
	pop {pc}
	.align 2, 0
_0805B79C: .4byte gUnk_08108C9C

	thumb_func_start sub_0805B7A0
sub_0805B7A0: @ 0x0805B7A0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	ldrb r1, [r5, #0xa]
	ldrb r2, [r5, #0xb]
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0805B81A
	ldrh r0, [r5, #0x3e]
	adds r1, r4, #0
	adds r1, #0x86
	strh r0, [r1]
	ldrh r0, [r5, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805B7EC
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r1, [r0]
	adds r0, #1
	ldrb r2, [r0]
	movs r0, #0xf
	ands r0, r2
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r4, #0x2e]
	ldrh r1, [r5, #0x3c]
	ldr r0, _0805B7E8 @ =0x00000FFF
	ands r0, r1
	strh r0, [r4, #0x32]
	ldrh r0, [r5, #0x3c]
	lsrs r0, r0, #0xc
	b _0805B7FC
	.align 2, 0
_0805B7E8: .4byte 0x00000FFF
_0805B7EC:
	ldrh r0, [r5, #0x38]
	strh r0, [r4, #0x2e]
	ldrh r0, [r5, #0x3a]
	strh r0, [r4, #0x32]
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r0, [r0]
	lsrs r0, r0, #4
_0805B7FC:
	adds r1, r4, #0
	adds r1, #0x38
	strb r0, [r1]
	ldr r0, _0805B81C @ =gRoomControls
	ldrh r1, [r0, #6]
	ldrh r2, [r4, #0x2e]
	adds r1, r1, r2
	strh r1, [r4, #0x2e]
	ldrh r0, [r0, #8]
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	adds r0, r5, #0
	bl sub_0805E900
_0805B81A:
	pop {r4, r5, pc}
	.align 2, 0
_0805B81C: .4byte gRoomControls

	thumb_func_start sub_0805B820
sub_0805B820: @ 0x0805B820
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldrb r1, [r5, #0xc]
	cmp r1, #0
	bne _0805B834
	movs r0, #1
	strb r0, [r5, #0xc]
	str r1, [r5, #0x20]
_0805B834:
	ldrb r0, [r5, #0xa]
	bl sub_0804B128
	adds r4, r0, #0
	movs r7, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0805B8C4
	ldr r0, _0805B8A8 @ =gRoomControls
	mov r8, r0
_0805B848:
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	movs r2, #4
	movs r3, #4
	bl CheckRectOnScreen
	cmp r0, #0
	beq _0805B8AC
	movs r6, #1
	lsls r6, r7
	ldr r0, [r5, #0x20]
	ands r0, r6
	cmp r0, #0
	bne _0805B8B6
	ldrh r0, [r4, #4]
	bl sub_0805B8CC
	cmp r0, #0
	beq _0805B8B6
	movs r0, #0x4e
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _0805B8B6
	ldrh r0, [r4, #6]
	strb r0, [r1, #0xe]
	strb r7, [r1, #0xf]
	ldrh r0, [r4]
	mov r2, r8
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	strh r0, [r1, #0x2e]
	ldrh r0, [r4, #2]
	mov r3, r8
	ldrh r3, [r3, #8]
	adds r0, r0, r3
	strh r0, [r1, #0x32]
	str r5, [r1, #0x50]
	adds r0, r1, #0
	bl sub_08016A30
	ldr r0, [r5, #0x20]
	orrs r0, r6
	b _0805B8B4
	.align 2, 0
_0805B8A8: .4byte gRoomControls
_0805B8AC:
	movs r1, #1
	lsls r1, r7
	ldr r0, [r5, #0x20]
	bics r0, r1
_0805B8B4:
	str r0, [r5, #0x20]
_0805B8B6:
	adds r4, #8
	adds r7, #1
	ldrh r0, [r4]
	cmp r0, #0
	beq _0805B8C4
	cmp r7, #0x1f
	bls _0805B848
_0805B8C4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0805B8CC
sub_0805B8CC: @ 0x0805B8CC
	push {lr}
	cmp r0, #4
	bne _0805B8DA
	movs r0, #0x18
	bl CheckGlobalFlag
	b _0805B8E8
_0805B8DA:
	cmp r0, #4
	bls _0805B8E6
	cmp r0, #6
	bhi _0805B8E6
	movs r0, #0
	b _0805B8E8
_0805B8E6:
	movs r0, #1
_0805B8E8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0805B8EC
sub_0805B8EC: @ 0x0805B8EC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, _0805B964 @ =gUnk_02033A90
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805B90A
	bl sub_0801E104
	ldr r2, _0805B968 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805B96C @ =0x0000D7FF
	ands r0, r1
	strh r0, [r2]
	bl DeleteThisEntity
_0805B90A:
	ldrb r2, [r5, #0xc]
	cmp r2, #0
	bne _0805B934
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r5, #0x10]
	movs r0, #0x11
	strb r0, [r5, #0xe]
	str r2, [r5, #0x20]
	adds r0, r5, #0
	movs r1, #6
	bl sub_0805E3A0
	bl sub_0801E120
	ldrb r0, [r5, #0xe]
	bl sub_0801E154
_0805B934:
	ldr r0, _0805B970 @ =gUnk_03001000
	ldrb r0, [r0, #4]
	cmp r0, #2
	bne _0805B952
	ldr r2, _0805B968 @ =gScreen
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	bl sub_0805BA78
	bl sub_0805BAD4
_0805B952:
	ldrb r0, [r4, #0xc]
	cmp r0, #2
	bne _0805B978
	ldr r2, _0805B968 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805B974 @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	b _0805BA6C
	.align 2, 0
_0805B964: .4byte gUnk_02033A90
_0805B968: .4byte gScreen
_0805B96C: .4byte 0x0000D7FF
_0805B970: .4byte gUnk_03001000
_0805B974: .4byte 0x0000DFFF
_0805B978:
	ldr r3, _0805B9A8 @ =gLinkEntity
	movs r4, #0x2e
	ldrsh r0, [r3, r4]
	ldr r2, _0805B9AC @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	movs r6, #0x32
	ldrsh r1, [r3, r6]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	movs r2, #0
	movs r3, #0
	bl CheckRectOnScreen
	cmp r0, #0
	beq _0805B9B4
	ldr r2, _0805B9B0 @ =gScreen
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	orrs r0, r1
	b _0805B9BC
	.align 2, 0
_0805B9A8: .4byte gLinkEntity
_0805B9AC: .4byte gRoomControls
_0805B9B0: .4byte gScreen
_0805B9B4:
	ldr r2, _0805B9E8 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805B9EC @ =0x0000DFFF
	ands r0, r1
_0805B9BC:
	strh r0, [r2]
	ldrb r4, [r5, #0xe]
	ldr r0, _0805B9F0 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805BA2C
	ldr r0, _0805B9F4 @ =gUnk_02033A90
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	beq _0805BA2C
	cmp r4, #0x47
	bhi _0805B9F8
	adds r4, #4
	adds r0, r4, #0
	bl sub_0801E154
	movs r0, #0
	str r0, [r5, #0x20]
	b _0805BA42
	.align 2, 0
_0805B9E8: .4byte gScreen
_0805B9EC: .4byte 0x0000DFFF
_0805B9F0: .4byte gLinkState
_0805B9F4: .4byte gUnk_02033A90
_0805B9F8:
	ldr r0, _0805BA24 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0805BA42
	ldrb r0, [r5, #0xf]
	adds r0, #0x10
	strb r0, [r5, #0xf]
	ldr r1, _0805BA28 @ =gUnk_080C9160
	ldrb r0, [r5, #0xf]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r6, #0
	ldrsh r0, [r0, r6]
	asrs r0, r0, #7
	str r0, [r5, #0x20]
	adds r0, r4, r0
	bl sub_0801E154
	b _0805BA42
	.align 2, 0
_0805BA24: .4byte gUnk_030010A0
_0805BA28: .4byte gUnk_080C9160
_0805BA2C:
	movs r0, #0
	str r0, [r5, #0x20]
	cmp r4, #0x11
	bls _0805BA42
	subs r4, #4
	cmp r4, #0x10
	bhi _0805BA3C
	movs r4, #0x11
_0805BA3C:
	adds r0, r4, #0
	bl sub_0801E154
_0805BA42:
	strb r4, [r5, #0xe]
	ldr r3, _0805BA70 @ =gLinkEntity
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	ldr r2, _0805BA74 @ =gRoomControls
	movs r6, #0xa
	ldrsh r1, [r2, r6]
	subs r0, r0, r1
	movs r6, #0x32
	ldrsh r1, [r3, r6]
	movs r6, #0xc
	ldrsh r2, [r2, r6]
	subs r1, r1, r2
	movs r6, #0x36
	ldrsh r2, [r3, r6]
	subs r2, #9
	adds r1, r1, r2
	ldr r2, [r5, #0x20]
	adds r2, r4, r2
	bl sub_0801E160
_0805BA6C:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0805BA70: .4byte gLinkEntity
_0805BA74: .4byte gRoomControls

	thumb_func_start sub_0805BA78
sub_0805BA78: @ 0x0805BA78
	push {r4, lr}
	ldr r1, _0805BAA8 @ =gUnk_02033A90
	movs r0, #0xa
	ldrsh r3, [r1, r0]
	ldr r0, _0805BAAC @ =gRoomVars
	movs r4, #0xc
	ldrsh r2, [r0, r4]
	cmp r2, #0
	bge _0805BA8C
	movs r2, #0
_0805BA8C:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	ble _0805BA96
	adds r2, r0, #0
_0805BA96:
	cmp r3, r2
	beq _0805BACE
	subs r0, r2, r3
	cmp r0, #0
	blt _0805BAB0
	cmp r0, #4
	bls _0805BAB6
	b _0805BABA
	.align 2, 0
_0805BAA8: .4byte gUnk_02033A90
_0805BAAC: .4byte gRoomVars
_0805BAB0:
	subs r0, r3, r2
	cmp r0, #4
	bhi _0805BABA
_0805BAB6:
	adds r3, r2, #0
	b _0805BAC8
_0805BABA:
	cmp r2, r3
	bge _0805BAC2
	subs r3, #4
	b _0805BAC8
_0805BAC2:
	cmp r2, r3
	ble _0805BAC8
	adds r3, #4
_0805BAC8:
	strh r3, [r1, #0xa]
	movs r0, #1
	b _0805BAD0
_0805BACE:
	movs r0, #0
_0805BAD0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805BAD4
sub_0805BAD4: @ 0x0805BAD4
	push {lr}
	ldr r3, _0805BAF4 @ =gUnk_02033A90
	ldrb r0, [r3, #0xc]
	cmp r0, #0
	beq _0805BAF2
	ldr r1, _0805BAF8 @ =gScreen
	ldr r2, _0805BAFC @ =gUnk_08108CA8
	ldrh r0, [r3, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, #0x68
	strh r0, [r1]
_0805BAF2:
	pop {pc}
	.align 2, 0
_0805BAF4: .4byte gUnk_02033A90
_0805BAF8: .4byte gScreen
_0805BAFC: .4byte gUnk_08108CA8

	thumb_func_start sub_0805BB00
sub_0805BB00: @ 0x0805BB00
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0805BB50 @ =gUnk_02033A90
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	bne _0805BB28
	bl sub_0805E8D4
	adds r1, r0, #0
	cmp r1, #0
	beq _0805BB28
	movs r0, #9
	strb r0, [r1, #8]
	movs r0, #0x22
	strb r0, [r1, #9]
	adds r0, r1, #0
	movs r1, #0
	bl sub_0805EA2C
_0805BB28:
	ldr r1, _0805BB54 @ =0x0600F000
	movs r2, #0x80
	lsls r2, r2, #4
	movs r0, #0xf
	bl sub_0801D5EC
	ldr r0, _0805BB58 @ =gScreen
	ldr r1, _0805BB5C @ =0x00001E0C
	strh r1, [r0, #0x2c]
	adds r0, #0x66
	ldr r1, _0805BB60 @ =0x00003E48
	strh r1, [r0]
	ldr r0, _0805BB64 @ =gRoomVars
	strh r4, [r0, #0xc]
	cmp r5, #0
	beq _0805BB68
	ldr r1, _0805BB50 @ =gUnk_02033A90
	movs r0, #1
	b _0805BB6C
	.align 2, 0
_0805BB50: .4byte gUnk_02033A90
_0805BB54: .4byte 0x0600F000
_0805BB58: .4byte gScreen
_0805BB5C: .4byte 0x00001E0C
_0805BB60: .4byte 0x00003E48
_0805BB64: .4byte gRoomVars
_0805BB68:
	ldr r1, _0805BB70 @ =gUnk_02033A90
	movs r0, #2
_0805BB6C:
	strb r0, [r1, #0xc]
	pop {r4, r5, pc}
	.align 2, 0
_0805BB70: .4byte gUnk_02033A90

	thumb_func_start sub_0805BB74
sub_0805BB74: @ 0x0805BB74
	push {lr}
	adds r1, r0, #0
	ldr r2, _0805BBB0 @ =gRoomVars
	cmp r1, #0
	bge _0805BB82
	movs r0, #0xc
	ldrsh r1, [r2, r0]
_0805BB82:
	ldr r0, _0805BBB4 @ =gUnk_02033A90
	strh r1, [r0, #0xa]
	strh r1, [r2, #0xc]
	movs r0, #9
	movs r1, #0x22
	bl sub_0805EB9C
	cmp r0, #0
	beq _0805BBAE
	bl sub_0805B8EC
	ldr r0, _0805BBB8 @ =gScreen
	ldrh r1, [r0]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	bl sub_0805BA78
	bl sub_0805BAD4
_0805BBAE:
	pop {pc}
	.align 2, 0
_0805BBB0: .4byte gRoomVars
_0805BBB4: .4byte gUnk_02033A90
_0805BBB8: .4byte gScreen

	thumb_func_start sub_0805BBBC
sub_0805BBBC: @ 0x0805BBBC
	push {r4, lr}
	movs r4, #0
	ldr r2, _0805BBF8 @ =gUnk_02033A90
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	beq _0805BBF2
	ldr r0, _0805BBFC @ =gRoomVars
	movs r3, #0xc
	ldrsh r1, [r0, r3]
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	cmp r1, r0
	bge _0805BBF2
	ldr r2, _0805BC00 @ =gScreen
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	bl sub_0805BA78
	adds r4, r0, #0
	cmp r4, #0
	beq _0805BBF2
	bl sub_0805BAD4
_0805BBF2:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0805BBF8: .4byte gUnk_02033A90
_0805BBFC: .4byte gRoomVars
_0805BC00: .4byte gScreen

	thumb_func_start sub_0805BC04
sub_0805BC04: @ 0x0805BC04
	push {r4, lr}
	movs r4, #0
	ldr r2, _0805BC40 @ =gUnk_02033A90
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	beq _0805BC3A
	ldr r0, _0805BC44 @ =gRoomVars
	movs r3, #0xc
	ldrsh r1, [r0, r3]
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	cmp r1, r0
	ble _0805BC3A
	ldr r2, _0805BC48 @ =gScreen
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	bl sub_0805BA78
	adds r4, r0, #0
	cmp r4, #0
	beq _0805BC3A
	bl sub_0805BAD4
_0805BC3A:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0805BC40: .4byte gUnk_02033A90
_0805BC44: .4byte gRoomVars
_0805BC48: .4byte gScreen

	thumb_func_start sub_0805BC4C
sub_0805BC4C: @ 0x0805BC4C
	push {lr}
	ldr r1, _0805BC68 @ =gUnk_02033A90
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	beq _0805BC64
	movs r0, #0
	strb r0, [r1, #0xc]
	ldr r2, _0805BC6C @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805BC70 @ =0x0000D7FF
	ands r0, r1
	strh r0, [r2]
_0805BC64:
	pop {pc}
	.align 2, 0
_0805BC68: .4byte gUnk_02033A90
_0805BC6C: .4byte gScreen
_0805BC70: .4byte 0x0000D7FF

	thumb_func_start sub_0805BC74
sub_0805BC74: @ 0x0805BC74
	push {lr}
	ldr r2, _0805BC88 @ =gUnk_08108CCC
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805BC88: .4byte gUnk_08108CCC

	thumb_func_start sub_0805BC8C
sub_0805BC8C: @ 0x0805BC8C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805BCAE
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805BCAE
	adds r0, r4, #0
	bl sub_0805BE94
_0805BCAE:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805BCD0
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805BCD0
	adds r0, r4, #0
	bl sub_0805BEC4
	adds r0, r4, #0
	bl sub_0805BE94
_0805BCD0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805BCD4
sub_0805BCD4: @ 0x0805BCD4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0805BD0E
	cmp r0, #1
	bgt _0805BCE8
	cmp r0, #0
	beq _0805BCEE
	b _0805BD5A
_0805BCE8:
	cmp r0, #2
	beq _0805BD38
	b _0805BD5A
_0805BCEE:
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805BD5A
	adds r0, r4, #0
	movs r1, #0x75
	bl sub_0805BE70
	movs r0, #2
	strb r0, [r4, #0xc]
	b _0805BD5A
_0805BD0E:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805BD5A
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805BD5A
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_0805BEC4
	adds r0, r4, #0
	movs r1, #0x76
	bl sub_0805BE70
	b _0805BD5A
_0805BD38:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	bne _0805BD5A
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805BD5A
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0x75
	bl sub_0805BE70
_0805BD5A:
	pop {r4, pc}

	thumb_func_start sub_0805BD5C
sub_0805BD5C: @ 0x0805BD5C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805BD94
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805BD76
	adds r0, r4, #0
	bl sub_0805BE94
_0805BD76:
	ldrh r1, [r4, #0x38]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	movs r2, #0x3f
	ands r1, r2
	ldrh r0, [r4, #0x3a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ands r0, r2
	lsls r0, r0, #6
	orrs r1, r0
	strh r1, [r4, #0x20]
	movs r0, #1
	strb r0, [r4, #0xc]
	b _0805BDB0
_0805BD94:
	ldrh r0, [r4, #0x20]
	ldrb r1, [r4, #0xb]
	bl GetTileType
	cmp r0, #0x76
	bne _0805BDB0
	ldrh r0, [r4, #0x3e]
	bl SetFlag
	ldrb r0, [r4, #0xe]
	bl sub_0805308C
	bl DeleteThisEntity
_0805BDB0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805BDB4
sub_0805BDB4: @ 0x0805BDB4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0805BDF4
	cmp r0, #1
	beq _0805BE2C
	ldrh r0, [r4, #0x22]
	subs r0, #1
	strh r0, [r4, #0x22]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805BE58
	movs r1, #0x38
	ldrsh r0, [r4, r1]
	movs r2, #0x3a
	ldrsh r1, [r4, r2]
	ldrb r2, [r4, #0xb]
	bl sub_080A29C8
	ldrh r0, [r4, #0x3e]
	bl ClearFlag
	ldrh r0, [r4, #0x20]
	ldrb r1, [r4, #0xb]
	bl sub_0807BA8C
	ldrb r0, [r4, #0xe]
	rsbs r0, r0, #0
	bl sub_0805308C
	b _0805BE26
_0805BDF4:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	bne _0805BE08
	ldrh r0, [r4, #0x3c]
	bl CheckFlags
	cmp r0, #0
	beq _0805BE0E
_0805BE08:
	adds r0, r4, #0
	bl sub_0805BE94
_0805BE0E:
	ldrh r1, [r4, #0x38]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	movs r2, #0x3f
	ands r1, r2
	ldrh r0, [r4, #0x3a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ands r0, r2
	lsls r0, r0, #6
	orrs r1, r0
	strh r1, [r4, #0x20]
_0805BE26:
	movs r0, #1
	strb r0, [r4, #0xc]
	b _0805BE6C
_0805BE2C:
	ldrh r0, [r4, #0x20]
	ldrb r1, [r4, #0xb]
	bl GetTileType
	cmp r0, #0x76
	bne _0805BE6C
	ldrh r0, [r4, #0x3e]
	bl SetFlag
	ldrb r0, [r4, #0xe]
	bl sub_0805308C
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	strh r0, [r4, #0x22]
	b _0805BE6C
_0805BE58:
	ldrh r0, [r4, #0x3c]
	bl CheckFlags
	cmp r0, #0
	beq _0805BE6C
	adds r0, r4, #0
	bl sub_0805BEC4
	bl DeleteThisEntity
_0805BE6C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805BE70
sub_0805BE70: @ 0x0805BE70
	push {r4, lr}
	adds r4, r1, #0
	ldrh r1, [r0, #0x38]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	movs r3, #0x3f
	ands r1, r3
	ldrh r2, [r0, #0x3a]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	ands r2, r3
	lsls r2, r2, #6
	orrs r1, r2
	ldrb r2, [r0, #0xb]
	adds r0, r4, #0
	bl SetTileType
	pop {r4, pc}

	thumb_func_start sub_0805BE94
sub_0805BE94: @ 0x0805BE94
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x38]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	movs r2, #0x3f
	ands r1, r2
	ldrh r0, [r4, #0x3a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ands r0, r2
	lsls r0, r0, #6
	orrs r1, r0
	ldrb r2, [r4, #0xb]
	movs r0, #0x76
	bl SetTileType
	ldrb r0, [r4, #0xe]
	bl sub_0805308C
	bl DeleteThisEntity
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805BEC4
sub_0805BEC4: @ 0x0805BEC4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x2a
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0805BF10
	ldrb r1, [r2, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldr r1, _0805BF14 @ =gRoomControls
	ldrh r0, [r1, #6]
	ldrh r3, [r4, #0x38]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #8]
	ldrh r1, [r4, #0x3a]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	ldrb r1, [r4, #0xb]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_0805BF10:
	pop {r4, pc}
	.align 2, 0
_0805BF14: .4byte gRoomControls

	thumb_func_start sub_0805BF18
sub_0805BF18: @ 0x0805BF18
	push {lr}
	ldr r2, _0805BF2C @ =gUnk_08108CDC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805BF2C: .4byte gUnk_08108CDC

	thumb_func_start sub_0805BF30
sub_0805BF30: @ 0x0805BF30
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r1, [r4, #0x38]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	movs r2, #0x3f
	ands r1, r2
	ldrh r0, [r4, #0x3a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ands r0, r2
	lsls r0, r0, #6
	orrs r1, r0
	strh r1, [r4, #0x3c]
	ldrh r0, [r4, #0x3c]
	adds r1, r4, #0
	adds r1, #0x35
	ldrb r1, [r1]
	bl sub_0805BFC4
	strb r0, [r4, #0xa]
	ldrh r0, [r4, #0x3e]
	bl CheckLocalFlag
	cmp r0, #0
	beq _0805BF74
	adds r0, r4, #0
	bl sub_0805C02C
	adds r0, r4, #0
	bl sub_0805E900
_0805BF74:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805BF78
sub_0805BF78: @ 0x0805BF78
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3c]
	adds r1, r4, #0
	adds r1, #0x35
	ldrb r1, [r1]
	bl sub_080002C8
	cmp r0, #0x2e
	beq _0805BFA0
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x5a
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_0805C02C
	ldrh r0, [r4, #0x3e]
	bl SetLocalFlag
_0805BFA0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805BFA4
sub_0805BFA4: @ 0x0805BFA4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805BFC0
	movs r0, #0x72
	bl PlaySFX
	adds r0, r4, #0
	bl sub_0805E900
_0805BFC0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805BFC4
sub_0805BFC4: @ 0x0805BFC4
	push {lr}
	bl GetTileType
	adds r1, r0, #0
	cmp r1, #0xec
	beq _0805C018
	cmp r1, #0xec
	bhi _0805BFEC
	cmp r1, #0xbf
	beq _0805C024
	cmp r1, #0xbf
	bhi _0805BFE2
	cmp r1, #0xaf
	beq _0805C014
	b _0805C028
_0805BFE2:
	cmp r1, #0xcc
	beq _0805C01C
	cmp r1, #0xdf
	beq _0805C020
	b _0805C028
_0805BFEC:
	movs r0, #0x84
	lsls r0, r0, #1
	cmp r1, r0
	beq _0805C01C
	cmp r1, r0
	bhi _0805C004
	cmp r1, #0xff
	beq _0805C014
	subs r0, #3
	cmp r1, r0
	beq _0805C024
	b _0805C028
_0805C004:
	movs r0, #0x88
	lsls r0, r0, #1
	cmp r1, r0
	beq _0805C020
	adds r0, #5
	cmp r1, r0
	beq _0805C018
	b _0805C028
_0805C014:
	movs r0, #0
	b _0805C02A
_0805C018:
	movs r0, #1
	b _0805C02A
_0805C01C:
	movs r0, #2
	b _0805C02A
_0805C020:
	movs r0, #3
	b _0805C02A
_0805C024:
	movs r0, #4
	b _0805C02A
_0805C028:
	movs r0, #0xff
_0805C02A:
	pop {pc}

	thumb_func_start sub_0805C02C
sub_0805C02C: @ 0x0805C02C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	cmp r0, #0xff
	beq _0805C04A
	ldr r0, _0805C04C @ =gUnk_08108CE8
	ldrb r2, [r1, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrh r0, [r1, #0x3c]
	adds r1, #0x35
	ldrb r1, [r1]
	ldr r2, [r2]
	bl _call_via_r2
_0805C04A:
	pop {pc}
	.align 2, 0
_0805C04C: .4byte gUnk_08108CE8

	thumb_func_start sub_0805C050
sub_0805C050: @ 0x0805C050
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r5, #0
	subs r1, #0x41
	movs r0, #0xb1
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #0
	subs r1, #0x40
	movs r0, #0xb2
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #0
	subs r1, #0x3f
	movs r0, #0xb3
	adds r2, r4, #0
	bl SetTileType
	subs r1, r5, #1
	movs r0, #0xb4
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #1
	movs r0, #0xb7
	adds r2, r4, #0
	bl SetTileType
	cmp r4, #1
	bne _0805C11C
	bl sub_08052670
	cmp r0, #0
	beq _0805C0D8
	movs r0, #0x4f
	movs r1, #0xe
	movs r2, #0
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _0805C0E0
	movs r1, #0x3f
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #8
	ldr r2, _0805C0D0 @ =gRoomControls
	ldrh r1, [r2, #6]
	adds r1, r1, r0
	strh r1, [r3, #0x2e]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r5
	lsrs r0, r0, #2
	ldr r1, _0805C0D4 @ =0x0000FFF8
	adds r0, r0, r1
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	strh r0, [r3, #0x32]
	b _0805C0E0
	.align 2, 0
_0805C0D0: .4byte gRoomControls
_0805C0D4: .4byte 0x0000FFF8
_0805C0D8:
	bl sub_08052660
	cmp r0, #0
	beq _0805C0EC
_0805C0E0:
	movs r0, #0xb5
	adds r1, r5, #0
	movs r2, #1
	bl SetTileType
	b _0805C0F6
_0805C0EC:
	movs r0, #0xb6
	adds r1, r5, #0
	movs r2, #1
	bl SetTileType
_0805C0F6:
	adds r1, r5, #0
	subs r1, #0x41
	movs r0, #0xb8
	movs r2, #2
	bl SetTileType
	adds r1, r5, #0
	subs r1, #0x40
	movs r0, #0xb9
	movs r2, #2
	bl SetTileType
	adds r1, r5, #0
	subs r1, #0x3f
	movs r0, #0xba
	movs r2, #2
	bl SetTileType
	b _0805C16E
_0805C11C:
	movs r0, #0xb5
	adds r1, r5, #0
	movs r2, #2
	bl SetTileType
	bl sub_08052660
	cmp r0, #0
	beq _0805C16E
	bl sub_0805C608
	adds r1, r0, #0
	movs r0, #0x4f
	movs r2, #6
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _0805C16E
	movs r1, #0x3f
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #8
	ldr r2, _0805C170 @ =gRoomControls
	ldrh r1, [r2, #6]
	adds r1, r1, r0
	strh r1, [r3, #0x2e]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r5
	lsrs r0, r0, #2
	ldr r1, _0805C174 @ =0x0000FFF0
	adds r0, r0, r1
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	strh r0, [r3, #0x32]
	adds r1, r3, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
_0805C16E:
	pop {r4, r5, pc}
	.align 2, 0
_0805C170: .4byte gRoomControls
_0805C174: .4byte 0x0000FFF0

	thumb_func_start sub_0805C178
sub_0805C178: @ 0x0805C178
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r5, #0
	subs r1, #0x40
	movs r0, #0xf1
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #0
	subs r1, #0x3f
	movs r0, #0xf5
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #1
	movs r0, #0xf6
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0xf4
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #0
	adds r1, #0x41
	movs r0, #0xf7
	adds r2, r4, #0
	bl SetTileType
	cmp r4, #1
	bne _0805C23E
	bl sub_08052670
	cmp r0, #0
	beq _0805C1FC
	movs r0, #0x4f
	movs r1, #0xe
	movs r2, #1
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0805C204
	movs r1, #0x3f
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #4
	ldr r1, _0805C1F8 @ =gRoomControls
	adds r0, #0x18
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r5
	lsrs r0, r0, #2
	adds r0, #8
	ldrh r1, [r1, #8]
	adds r1, r1, r0
	strh r1, [r2, #0x32]
	b _0805C204
	.align 2, 0
_0805C1F8: .4byte gRoomControls
_0805C1FC:
	bl sub_08052660
	cmp r0, #0
	beq _0805C210
_0805C204:
	movs r0, #0xf2
	adds r1, r5, #0
	movs r2, #1
	bl SetTileType
	b _0805C21A
_0805C210:
	movs r0, #0xf3
	adds r1, r5, #0
	movs r2, #1
	bl SetTileType
_0805C21A:
	adds r1, r5, #0
	subs r1, #0x3f
	movs r0, #0xf8
	movs r2, #2
	bl SetTileType
	adds r1, r5, #1
	movs r0, #0xf9
	movs r2, #2
	bl SetTileType
	adds r1, r5, #0
	adds r1, #0x41
	movs r0, #0xfa
	movs r2, #2
	bl SetTileType
	b _0805C28E
_0805C23E:
	movs r0, #0xf2
	adds r1, r5, #0
	movs r2, #2
	bl SetTileType
	bl sub_08052660
	cmp r0, #0
	beq _0805C28E
	bl sub_0805C608
	adds r1, r0, #0
	movs r0, #0x4f
	movs r2, #7
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0805C28E
	movs r1, #0x3f
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #4
	ldr r1, _0805C290 @ =gRoomControls
	adds r0, #0x20
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r5
	lsrs r0, r0, #2
	adds r0, #8
	ldrh r1, [r1, #8]
	adds r1, r1, r0
	strh r1, [r2, #0x32]
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
_0805C28E:
	pop {r4, r5, pc}
	.align 2, 0
_0805C290: .4byte gRoomControls

	thumb_func_start sub_0805C294
sub_0805C294: @ 0x0805C294
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	subs r1, r5, #1
	movs r0, #0xd1
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #1
	movs r0, #0xd4
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0xd5
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0xd6
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #0
	adds r1, #0x41
	movs r0, #0xd7
	adds r2, r4, #0
	bl SetTileType
	cmp r4, #1
	bne _0805C35C
	bl sub_08052670
	cmp r0, #0
	beq _0805C318
	movs r0, #0x4f
	movs r1, #0xe
	movs r2, #2
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _0805C320
	movs r1, #0x3f
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #8
	ldr r2, _0805C314 @ =gRoomControls
	ldrh r1, [r2, #6]
	adds r1, r1, r0
	strh r1, [r3, #0x2e]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r5
	lsrs r0, r0, #2
	adds r0, #0x20
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	strh r0, [r3, #0x32]
	b _0805C320
	.align 2, 0
_0805C314: .4byte gRoomControls
_0805C318:
	bl sub_08052660
	cmp r0, #0
	beq _0805C32C
_0805C320:
	movs r0, #0xd2
	adds r1, r5, #0
	movs r2, #1
	bl SetTileType
	b _0805C336
_0805C32C:
	movs r0, #0xd3
	adds r1, r5, #0
	movs r2, #1
	bl SetTileType
_0805C336:
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0xd8
	movs r2, #2
	bl SetTileType
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0xd9
	movs r2, #2
	bl SetTileType
	adds r1, r5, #0
	adds r1, #0x41
	movs r0, #0xda
	movs r2, #2
	bl SetTileType
	b _0805C3AC
_0805C35C:
	movs r0, #0xd2
	adds r1, r5, #0
	movs r2, #2
	bl SetTileType
	bl sub_08052660
	cmp r0, #0
	beq _0805C3AC
	bl sub_0805C608
	adds r1, r0, #0
	movs r0, #0x4f
	movs r2, #8
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _0805C3AC
	movs r1, #0x3f
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #8
	ldr r2, _0805C3B0 @ =gRoomControls
	ldrh r1, [r2, #6]
	adds r1, r1, r0
	strh r1, [r3, #0x2e]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r5
	lsrs r0, r0, #2
	adds r0, #0x20
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	strh r0, [r3, #0x32]
	adds r1, r3, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
_0805C3AC:
	pop {r4, r5, pc}
	.align 2, 0
_0805C3B0: .4byte gRoomControls

	thumb_func_start sub_0805C3B4
sub_0805C3B4: @ 0x0805C3B4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r5, #0
	subs r1, #0x41
	movs r0, #0xe1
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #0
	subs r1, #0x40
	movs r0, #0xe4
	adds r2, r4, #0
	bl SetTileType
	subs r1, r5, #1
	movs r0, #0xe2
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0xe3
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0xe7
	adds r2, r4, #0
	bl SetTileType
	cmp r4, #1
	bne _0805C482
	bl sub_08052670
	cmp r0, #0
	beq _0805C440
	movs r0, #0x4f
	movs r1, #0xe
	movs r2, #3
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0805C448
	movs r1, #0x3f
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #4
	ldr r1, _0805C438 @ =gRoomControls
	ldr r3, _0805C43C @ =0x0000FFF0
	adds r0, r0, r3
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r5
	lsrs r0, r0, #2
	adds r0, #8
	ldrh r1, [r1, #8]
	adds r1, r1, r0
	strh r1, [r2, #0x32]
	b _0805C448
	.align 2, 0
_0805C438: .4byte gRoomControls
_0805C43C: .4byte 0x0000FFF0
_0805C440:
	bl sub_08052660
	cmp r0, #0
	beq _0805C454
_0805C448:
	movs r0, #0xe5
	adds r1, r5, #0
	movs r2, #1
	bl SetTileType
	b _0805C45E
_0805C454:
	movs r0, #0xe6
	adds r1, r5, #0
	movs r2, #1
	bl SetTileType
_0805C45E:
	adds r1, r5, #0
	subs r1, #0x41
	movs r0, #0xe8
	movs r2, #2
	bl SetTileType
	subs r1, r5, #1
	movs r0, #0xe9
	movs r2, #2
	bl SetTileType
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0xea
	movs r2, #2
	bl SetTileType
	b _0805C4D4
_0805C482:
	movs r0, #0xe5
	adds r1, r5, #0
	movs r2, #2
	bl SetTileType
	bl sub_08052660
	cmp r0, #0
	beq _0805C4D4
	bl sub_0805C608
	adds r1, r0, #0
	movs r0, #0x4f
	movs r2, #9
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0805C4D4
	movs r1, #0x3f
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #4
	ldr r1, _0805C4D8 @ =gRoomControls
	ldr r3, _0805C4DC @ =0x0000FFF0
	adds r0, r0, r3
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r5
	lsrs r0, r0, #2
	adds r0, #8
	ldrh r1, [r1, #8]
	adds r1, r1, r0
	strh r1, [r2, #0x32]
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
_0805C4D4:
	pop {r4, r5, pc}
	.align 2, 0
_0805C4D8: .4byte gRoomControls
_0805C4DC: .4byte 0x0000FFF0

	thumb_func_start sub_0805C4E0
sub_0805C4E0: @ 0x0805C4E0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r5, #0
	subs r1, #0x41
	movs r0, #0xc1
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #0
	subs r1, #0x40
	movs r0, #0xc2
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #0
	subs r1, #0x3f
	movs r0, #0xc3
	adds r2, r4, #0
	bl SetTileType
	subs r1, r5, #1
	movs r0, #0xc4
	adds r2, r4, #0
	bl SetTileType
	adds r1, r5, #1
	movs r0, #0xc7
	adds r2, r4, #0
	bl SetTileType
	cmp r4, #1
	bne _0805C5AC
	bl sub_08052670
	cmp r0, #0
	beq _0805C568
	movs r0, #0x4f
	movs r1, #0xe
	movs r2, #0
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _0805C570
	movs r1, #0x3f
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #8
	ldr r2, _0805C560 @ =gRoomControls
	ldrh r1, [r2, #6]
	adds r1, r1, r0
	strh r1, [r3, #0x2e]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r5
	lsrs r0, r0, #2
	ldr r1, _0805C564 @ =0x0000FFF0
	adds r0, r0, r1
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	strh r0, [r3, #0x32]
	b _0805C570
	.align 2, 0
_0805C560: .4byte gRoomControls
_0805C564: .4byte 0x0000FFF0
_0805C568:
	bl sub_08052660
	cmp r0, #0
	beq _0805C57C
_0805C570:
	movs r0, #0xc5
	adds r1, r5, #0
	movs r2, #1
	bl SetTileType
	b _0805C586
_0805C57C:
	movs r0, #0xc6
	adds r1, r5, #0
	movs r2, #1
	bl SetTileType
_0805C586:
	adds r1, r5, #0
	subs r1, #0x41
	movs r0, #0xc8
	movs r2, #2
	bl SetTileType
	adds r1, r5, #0
	subs r1, #0x40
	movs r0, #0xc9
	movs r2, #2
	bl SetTileType
	adds r1, r5, #0
	subs r1, #0x3f
	movs r0, #0xca
	movs r2, #2
	bl SetTileType
	b _0805C5FE
_0805C5AC:
	movs r0, #0xc5
	adds r1, r5, #0
	movs r2, #2
	bl SetTileType
	bl sub_08052660
	cmp r0, #0
	beq _0805C5FE
	bl sub_0805C608
	adds r1, r0, #0
	movs r0, #0x4f
	movs r2, #6
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _0805C5FE
	movs r1, #0x3f
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #8
	ldr r2, _0805C600 @ =gRoomControls
	ldrh r1, [r2, #6]
	adds r1, r1, r0
	strh r1, [r3, #0x2e]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r5
	lsrs r0, r0, #2
	ldr r1, _0805C604 @ =0x0000FFF0
	adds r0, r0, r1
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	strh r0, [r3, #0x32]
	adds r1, r3, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
_0805C5FE:
	pop {r4, r5, pc}
	.align 2, 0
_0805C600: .4byte gRoomControls
_0805C604: .4byte 0x0000FFF0

	thumb_func_start sub_0805C608
sub_0805C608: @ 0x0805C608
	ldr r1, _0805C614 @ =gUnk_08108CFC
	ldr r0, _0805C618 @ =gUnk_02033A90
	ldrb r0, [r0, #3]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0805C614: .4byte gUnk_08108CFC
_0805C618: .4byte gUnk_02033A90

	thumb_func_start sub_0805C61C
sub_0805C61C: @ 0x0805C61C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805C674
	movs r0, #0x38
	ldrsh r1, [r4, r0]
	ldr r2, _0805C668 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x3a
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	strh r1, [r4, #0x38]
	movs r1, #0x38
	ldrsh r0, [r4, r1]
	movs r1, #2
	bl GetTileType
	cmp r0, #0x75
	bne _0805C670
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _0805C66C @ =0x0000406A
	movs r2, #0x38
	ldrsh r1, [r4, r2]
	movs r2, #1
	bl SetTile
	b _0805C674
	.align 2, 0
_0805C668: .4byte gRoomControls
_0805C66C: .4byte 0x0000406A
_0805C670:
	bl DeleteThisEntity
_0805C674:
	movs r5, #0x38
	ldrsh r0, [r4, r5]
	movs r1, #1
	bl GetTileType
	ldr r5, _0805C6B4 @ =0x0000406B
	cmp r0, r5
	bne _0805C694
	movs r0, #0x38
	ldrsh r1, [r4, r0]
	movs r0, #0x76
	movs r2, #2
	bl sub_0807B7D8
	bl DeleteThisEntity
_0805C694:
	movs r1, #0x38
	ldrsh r0, [r4, r1]
	movs r1, #2
	bl GetTileType
	cmp r0, #0x76
	bne _0805C6B2
	movs r2, #0x38
	ldrsh r1, [r4, r2]
	adds r0, r5, #0
	movs r2, #1
	bl SetTile
	bl DeleteThisEntity
_0805C6B2:
	pop {r4, r5, pc}
	.align 2, 0
_0805C6B4: .4byte 0x0000406B

	thumb_func_start sub_0805C6B8
sub_0805C6B8: @ 0x0805C6B8
	push {lr}
	ldr r2, _0805C6CC @ =gUnk_08108D04
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805C6CC: .4byte gUnk_08108D04

	thumb_func_start sub_0805C6D0
sub_0805C6D0: @ 0x0805C6D0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	bl sub_0804B128
	adds r4, r0, #0
	cmp r4, #0
	bne _0805C6EA
	adds r0, r5, #0
	bl sub_0805E900
	b _0805C79A
_0805C6EA:
	ldr r3, _0805C784 @ =gRoomControls
	ldrh r0, [r3, #8]
	ldrb r1, [r5, #0xe]
	adds r0, r0, r1
	movs r1, #0
	strh r0, [r5, #0x2a]
	strb r1, [r5, #0xe]
	adds r0, r5, #0
	adds r0, #0x28
	strb r1, [r0]
	adds r2, r5, #0
	adds r2, #0x29
	strb r1, [r2]
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _0805C778
	ldrb r0, [r5, #0xe]
	cmp r0, #0x1f
	bhi _0805C778
	adds r7, r3, #0
	movs r3, #1
	adds r6, r2, #0
_0805C716:
	ldrb r1, [r4, #1]
	ldrb r2, [r4, #2]
	movs r0, #0x4c
	str r3, [sp]
	bl CreateObject
	adds r2, r0, #0
	ldr r3, [sp]
	cmp r2, #0
	beq _0805C762
	ldrb r0, [r4, #3]
	strb r0, [r2, #0xe]
	ldrh r0, [r4, #4]
	ldrh r1, [r7, #6]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
	ldrh r0, [r4, #6]
	ldrh r1, [r7, #8]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	str r5, [r2, #0x50]
	adds r0, r2, #0
	adds r0, #0x38
	strb r3, [r0]
	ldrb r0, [r5, #0xe]
	adds r1, r2, #0
	adds r1, #0x83
	strb r0, [r1]
	ldrb r1, [r4]
	adds r0, r2, #0
	adds r0, #0x82
	strb r1, [r0]
	adds r0, r3, #0
	ldrb r1, [r5, #0xe]
	lsls r0, r1
	ldrb r1, [r6]
	orrs r0, r1
	strb r0, [r6]
_0805C762:
	adds r4, #8
	ldrb r0, [r5, #0xe]
	adds r1, r0, #1
	strb r1, [r5, #0xe]
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _0805C778
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1f
	bls _0805C716
_0805C778:
	ldrb r0, [r5, #0xb]
	cmp r0, #0xff
	bne _0805C788
	movs r0, #2
	b _0805C798
	.align 2, 0
_0805C784: .4byte gRoomControls
_0805C788:
	ldrb r0, [r5, #0xb]
	bl CheckLocalFlag
	cmp r0, #0
	beq _0805C796
	movs r0, #2
	b _0805C798
_0805C796:
	movs r0, #1
_0805C798:
	strb r0, [r5, #0xc]
_0805C79A:
	add sp, #4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0805C7A0
sub_0805C7A0: @ 0x0805C7A0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x28
	adds r1, r4, #0
	adds r1, #0x29
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0805C7BC
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xb]
	bl SetLocalFlag
_0805C7BC:
	adds r0, r4, #0
	bl sub_0805C7CC
	pop {r4, pc}

	thumb_func_start sub_0805C7C4
sub_0805C7C4: @ 0x0805C7C4
	push {lr}
	bl sub_0805C7CC
	pop {pc}

	thumb_func_start sub_0805C7CC
sub_0805C7CC: @ 0x0805C7CC
	push {lr}
	adds r2, r0, #0
	ldr r0, _0805C7F0 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0805C7FC
	ldr r0, _0805C7F4 @ =gLinkEntity
	movs r3, #0x32
	ldrsh r1, [r0, r3]
	ldrh r0, [r2, #0x2a]
	adds r0, #0x10
	cmp r1, r0
	bge _0805C7F8
	movs r0, #1
	b _0805C816
	.align 2, 0
_0805C7F0: .4byte gLinkState
_0805C7F4: .4byte gLinkEntity
_0805C7F8:
	movs r0, #0
	b _0805C816
_0805C7FC:
	ldr r0, _0805C810 @ =gLinkEntity
	movs r3, #0x32
	ldrsh r1, [r0, r3]
	ldrh r0, [r2, #0x2a]
	adds r0, #0x28
	cmp r1, r0
	bge _0805C814
	movs r0, #3
	b _0805C816
	.align 2, 0
_0805C810: .4byte gLinkEntity
_0805C814:
	movs r0, #2
_0805C816:
	strb r0, [r2, #0xd]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0805C81C
sub_0805C81C: @ 0x0805C81C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805C854 @ =gUnk_08108D10
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	movs r0, #0xc0
	lsls r0, r0, #2
	ldrb r1, [r4, #0xa]
	adds r1, #0x67
	bl CheckLocalFlagByOffset
	cmp r0, #0
	beq _0805C85C
	ldr r0, _0805C858 @ =gUnk_030010A0
	adds r0, #0xac
	movs r1, #1
	ldrb r4, [r4, #0xa]
	lsls r1, r4
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	b _0805C86C
	.align 2, 0
_0805C854: .4byte gUnk_08108D10
_0805C858: .4byte gUnk_030010A0
_0805C85C:
	ldr r2, _0805C870 @ =gUnk_030010A0
	adds r2, #0xac
	movs r1, #1
	ldrb r4, [r4, #0xa]
	lsls r1, r4
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
_0805C86C:
	pop {r4, pc}
	.align 2, 0
_0805C870: .4byte gUnk_030010A0

	thumb_func_start sub_0805C874
sub_0805C874: @ 0x0805C874
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0805C920
	cmp r0, #0
	beq _0805C884
	movs r0, #2
	b _0805C886
_0805C884:
	movs r0, #1
_0805C886:
	strb r0, [r4, #0xc]
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805C894
sub_0805C894: @ 0x0805C894
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0805C920
	cmp r0, #0
	beq _0805C8B0
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0x8d
	lsls r0, r0, #1
	bl PlaySFX
_0805C8B0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805C8B4
sub_0805C8B4: @ 0x0805C8B4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r2, #0xff
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0805C8F4
	movs r0, #0x14
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	ands r0, r2
	cmp r0, #5
	bls _0805C8DA
	strb r1, [r4, #0xf]
_0805C8DA:
	ldr r1, _0805C904 @ =gUnk_08108D20
	ldrb r0, [r4, #0xf]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_0801D714
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _0805C8F4
	movs r0, #0x8d
	lsls r0, r0, #1
	bl PlaySFX
_0805C8F4:
	adds r0, r4, #0
	bl sub_0805C920
	cmp r0, #0
	bne _0805C902
	movs r0, #3
	strb r0, [r4, #0xc]
_0805C902:
	pop {r4, pc}
	.align 2, 0
_0805C904: .4byte gUnk_08108D20

	thumb_func_start sub_0805C908
sub_0805C908: @ 0x0805C908
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xf]
	cmp r0, #0
	bne _0805C918
	movs r0, #1
	strb r0, [r1, #0xc]
	b _0805C91E
_0805C918:
	adds r0, r1, #0
	bl sub_0805C8B4
_0805C91E:
	pop {pc}

	thumb_func_start sub_0805C920
sub_0805C920: @ 0x0805C920
	push {lr}
	movs r2, #0xc0
	lsls r2, r2, #2
	ldrb r1, [r0, #0xa]
	adds r1, #0x67
	adds r0, r2, #0
	bl CheckLocalFlagByOffset
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0805C934
sub_0805C934: @ 0x0805C934
	push {lr}
	ldr r2, _0805C948 @ =gUnk_08108D28
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805C948: .4byte gUnk_08108D28

	thumb_func_start sub_0805C94C
sub_0805C94C: @ 0x0805C94C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0805C9B0
	adds r6, r4, #0
	adds r6, #0x20
	adds r1, r6, #0
	movs r2, #0
	adds r0, r4, #0
	adds r0, #0x3c
_0805C962:
	str r2, [r0]
	subs r0, #4
	cmp r0, r1
	bge _0805C962
	adds r0, r4, #0
	bl sub_0805CA6C
	adds r5, r0, #0
	cmp r5, #1
	ble _0805C9A8
	bl sub_0805E8D4
	adds r2, r0, #0
	cmp r2, #0
	beq _0805C9A8
	movs r0, #9
	strb r0, [r2, #8]
	movs r0, #0x28
	strb r0, [r2, #9]
	movs r0, #1
	strb r0, [r2, #0xa]
	strb r5, [r2, #0xe]
	adds r1, r2, #0
	adds r1, #0x20
	adds r0, r6, #0
	ldm r0!, {r3, r5, r6}
	stm r1!, {r3, r5, r6}
	ldm r0!, {r3, r5, r6}
	stm r1!, {r3, r5, r6}
	ldm r0!, {r3, r5}
	stm r1!, {r3, r5}
	adds r0, r2, #0
	movs r1, #6
	bl sub_0805EA2C
_0805C9A8:
	adds r0, r4, #0
	bl sub_0805E900
	b _0805C9B8
_0805C9B0:
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xf]
_0805C9B8:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0805C9BC
sub_0805C9BC: @ 0x0805C9BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	bl sub_0805CB48
	ldrb r0, [r6, #0xe]
	subs r0, #1
	mov sb, r0
	ldrb r1, [r6, #0xf]
	adds r0, r1, #1
	strb r0, [r6, #0xf]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805CA22
	movs r2, #0
	cmp r2, sb
	bge _0805CA62
	movs r0, #0x20
	adds r0, r0, r6
	mov r8, r0
_0805C9EC:
	lsls r1, r2, #2
	adds r0, r6, #0
	adds r0, #0x20
	adds r0, r0, r1
	ldr r3, [r0]
	adds r4, r2, #1
	adds r5, r4, #0
	ldrb r1, [r6, #0xe]
	cmp r5, r1
	bge _0805CA1A
	lsls r0, r5, #2
	mov r1, r8
	adds r7, r0, r1
_0805CA06:
	ldm r7!, {r1}
	adds r0, r3, #0
	str r3, [sp]
	bl sub_08004484
	adds r4, #1
	ldr r3, [sp]
	ldrb r0, [r6, #0xe]
	cmp r4, r0
	blt _0805CA06
_0805CA1A:
	adds r2, r5, #0
	cmp r2, sb
	blt _0805C9EC
	b _0805CA62
_0805CA22:
	movs r2, #0
	cmp r2, sb
	bge _0805CA62
	movs r1, #0x20
	adds r1, r1, r6
	mov r8, r1
_0805CA2E:
	lsls r1, r2, #2
	adds r0, r6, #0
	adds r0, #0x20
	adds r0, r0, r1
	ldr r3, [r0]
	adds r4, r2, #1
	adds r5, r4, #0
	ldrb r0, [r6, #0xe]
	cmp r5, r0
	bge _0805CA5C
	lsls r0, r5, #2
	mov r1, r8
	adds r7, r0, r1
_0805CA48:
	ldm r7!, {r0}
	adds r1, r3, #0
	str r3, [sp]
	bl sub_08004484
	adds r4, #1
	ldr r3, [sp]
	ldrb r0, [r6, #0xe]
	cmp r4, r0
	blt _0805CA48
_0805CA5C:
	adds r2, r5, #0
	cmp r2, sb
	blt _0805CA2E
_0805CA62:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0805CA6C
sub_0805CA6C: @ 0x0805CA6C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	ldrb r0, [r6, #0xb]
	bl sub_0804B128
	adds r4, r0, #0
	cmp r4, #0
	bne _0805CACE
	movs r0, #0
	b _0805CAE4
_0805CA82:
	movs r0, #8
	b _0805CAE4
_0805CA86:
	movs r0, #0xf
	ands r0, r2
	cmp r0, #3
	bne _0805CACC
	adds r0, r4, #0
	bl sub_0805CAF0
	adds r2, r0, #0
	cmp r2, #0
	beq _0805CACC
	movs r3, #0
	cmp r3, r5
	bhs _0805CAB8
	ldr r0, [r6, #0x20]
	cmp r0, r2
	beq _0805CAB8
	adds r1, r6, #0
	adds r1, #0x20
_0805CAAA:
	adds r1, #4
	adds r3, #1
	cmp r3, r5
	bhs _0805CAB8
	ldr r0, [r1]
	cmp r0, r2
	bne _0805CAAA
_0805CAB8:
	cmp r3, r5
	bne _0805CACC
	lsls r1, r5, #2
	adds r0, r6, #0
	adds r0, #0x20
	adds r0, r0, r1
	str r2, [r0]
	adds r5, #1
	cmp r5, #8
	beq _0805CA82
_0805CACC:
	adds r4, #0x10
_0805CACE:
	ldrb r2, [r4]
	adds r0, r2, #0
	cmp r0, #0xff
	beq _0805CAE2
	ldr r0, [r4]
	ldr r1, _0805CAE8 @ =0x00FF000F
	ands r0, r1
	ldr r1, _0805CAEC @ =0x00280009
	cmp r0, r1
	bne _0805CA86
_0805CAE2:
	adds r0, r5, #0
_0805CAE4:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0805CAE8: .4byte 0x00FF000F
_0805CAEC: .4byte 0x00280009

	thumb_func_start sub_0805CAF0
sub_0805CAF0: @ 0x0805CAF0
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldrh r1, [r3, #8]
	ldr r2, _0805CB34 @ =gRoomControls
	ldrh r0, [r2, #6]
	adds r5, r1, r0
	ldrh r1, [r3, #0xa]
	ldrh r0, [r2, #8]
	adds r4, r1, r0
	ldr r1, _0805CB38 @ =gUnk_03003D90
	ldr r2, [r1, #4]
	cmp r2, r1
	beq _0805CB42
_0805CB0A:
	movs r6, #0x2e
	ldrsh r0, [r2, r6]
	cmp r5, r0
	bne _0805CB3C
	movs r6, #0x32
	ldrsh r0, [r2, r6]
	cmp r4, r0
	bne _0805CB3C
	ldrb r0, [r3, #2]
	ldrb r6, [r2, #9]
	cmp r0, r6
	bne _0805CB3C
	ldrb r0, [r2, #8]
	cmp r0, #3
	bne _0805CB3C
	ldrb r0, [r3, #3]
	ldrb r6, [r2, #0xa]
	cmp r0, r6
	bne _0805CB3C
	adds r0, r2, #0
	b _0805CB44
	.align 2, 0
_0805CB34: .4byte gRoomControls
_0805CB38: .4byte gUnk_03003D90
_0805CB3C:
	ldr r2, [r2, #4]
	cmp r2, r1
	bne _0805CB0A
_0805CB42:
	movs r0, #0
_0805CB44:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0805CB48
sub_0805CB48: @ 0x0805CB48
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #0
	ldrb r1, [r4, #0xe]
	cmp r5, r1
	bge _0805CB84
	adds r3, r4, #0
	adds r3, #0x20
	adds r6, r3, #0
_0805CB5A:
	ldr r0, [r3]
	ldr r2, [r0, #4]
	cmp r2, #0
	bne _0805CB7A
	subs r0, r1, #1
	cmp r0, r5
	bne _0805CB6C
	str r2, [r3]
	b _0805CB74
_0805CB6C:
	lsls r0, r0, #2
	adds r0, r6, r0
	ldr r0, [r0]
	str r0, [r3]
_0805CB74:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
_0805CB7A:
	adds r3, #4
	adds r5, #1
	ldrb r1, [r4, #0xe]
	cmp r5, r1
	blt _0805CB5A
_0805CB84:
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bhi _0805CB8E
	bl DeleteThisEntity
_0805CB8E:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0805CB90
sub_0805CB90: @ 0x0805CB90
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805CBB8
	adds r0, r4, #0
	bl sub_0805CBD0
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805CBCE
	adds r0, r4, #0
	bl sub_0805CC3C
	adds r0, r4, #0
	bl sub_0805E900
	b _0805CBCE
_0805CBB8:
	adds r0, r4, #0
	bl sub_0805CF80
	cmp r0, #0
	beq _0805CBCE
	ldrh r0, [r4, #0x3e]
	bl SetFlag
	adds r0, r4, #0
	bl sub_0805E900
_0805CBCE:
	pop {r4, pc}

	thumb_func_start sub_0805CBD0
sub_0805CBD0: @ 0x0805CBD0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrh r1, [r5, #0x38]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	movs r3, #0x3f
	ands r1, r3
	ldrh r0, [r5, #0x3a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	strh r1, [r5, #0x38]
	ldrh r2, [r5, #0x3c]
	lsrs r2, r2, #4
	ands r2, r3
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r1, [r0]
	adds r0, #1
	ldrb r0, [r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r2, r1
	strh r2, [r5, #0x3a]
	movs r1, #0x38
	ldrsh r0, [r5, r1]
	adds r4, r5, #0
	adds r4, #0x34
	ldrb r1, [r4]
	bl GetTileType
	strh r0, [r5, #0x3c]
	ldrb r0, [r4]
	bl GetLayerByIndex
	ldr r2, _0805CC38 @ =0x00005004
	adds r1, r0, r2
	str r1, [r5, #0x28]
	movs r2, #0x3a
	ldrsh r1, [r5, r2]
	lsls r1, r1, #1
	adds r1, #4
	adds r0, r0, r1
	str r0, [r5, #0x2c]
	pop {r4, r5, pc}
	.align 2, 0
_0805CC38: .4byte 0x00005004

	thumb_func_start sub_0805CC3C
sub_0805CC3C: @ 0x0805CC3C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r0, #0x38
	ldrsh r5, [r4, r0]
	movs r0, #0x3a
	ldrsh r1, [r4, r0]
	mov r8, r1
	adds r7, r4, #0
	adds r7, #0x34
	ldrb r0, [r7]
	ldr r6, _0805CC6C @ =0x00000322
	cmp r0, #1
	bne _0805CC5C
	subs r6, #1
_0805CC5C:
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0805CCF4
	cmp r0, #2
	bgt _0805CC70
	cmp r0, #1
	beq _0805CC94
	b _0805CC76
	.align 2, 0
_0805CC6C: .4byte 0x00000322
_0805CC70:
	cmp r0, #3
	bne _0805CC76
	b _0805CDE4
_0805CC76:
	adds r4, #0x34
	ldrb r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0807B7D8
	ldr r0, _0805CC90 @ =0x00000365
	ldrb r2, [r4]
	mov r1, r8
	bl sub_0807B7D8
	b _0805CF68
	.align 2, 0
_0805CC90: .4byte 0x00000365
_0805CC94:
	ldrb r2, [r7]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0807B7D8
	adds r1, r5, #1
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x40
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x41
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	ldrh r0, [r4, #0x3c]
	ldrb r2, [r7]
	mov r1, r8
	bl sub_0807B7D8
	ldr r0, _0805CCEC @ =0x0000036F
	mov r1, r8
	adds r1, #1
	ldrb r2, [r7]
	bl sub_0807B7D8
	movs r0, #0xdc
	lsls r0, r0, #2
	mov r1, r8
	adds r1, #0x40
	ldrb r2, [r7]
	bl sub_0807B7D8
	ldr r0, _0805CCF0 @ =0x00000371
	mov r1, r8
	adds r1, #0x41
	b _0805CDC2
	.align 2, 0
_0805CCEC: .4byte 0x0000036F
_0805CCF0: .4byte 0x00000371
_0805CCF4:
	ldrb r2, [r7]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0807B7D8
	adds r1, r5, #1
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #2
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x40
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x41
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x42
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x80
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x81
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x82
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	ldrh r0, [r4, #0x3c]
	ldrb r2, [r7]
	mov r1, r8
	bl sub_0807B7D8
	ldr r0, _0805CDCC @ =0x00000372
	mov r1, r8
	adds r1, #1
	ldrb r2, [r7]
	bl sub_0807B7D8
	ldr r0, _0805CDD0 @ =0x0000036F
	mov r1, r8
	adds r1, #2
	ldrb r2, [r7]
	bl sub_0807B7D8
	movs r0, #0xdd
	lsls r0, r0, #2
	mov r1, r8
	adds r1, #0x40
	ldrb r2, [r7]
	bl sub_0807B7D8
	ldr r0, _0805CDD4 @ =0x00000376
	mov r1, r8
	adds r1, #0x41
	ldrb r2, [r7]
	bl sub_0807B7D8
	ldr r0, _0805CDD8 @ =0x00000375
	mov r1, r8
	adds r1, #0x42
	ldrb r2, [r7]
	bl sub_0807B7D8
	movs r0, #0xdc
	lsls r0, r0, #2
	mov r1, r8
	adds r1, #0x80
	ldrb r2, [r7]
	bl sub_0807B7D8
	ldr r0, _0805CDDC @ =0x00000373
	mov r1, r8
	adds r1, #0x81
	ldrb r2, [r7]
	bl sub_0807B7D8
	ldr r0, _0805CDE0 @ =0x00000371
	mov r1, r8
	adds r1, #0x82
_0805CDC2:
	ldrb r2, [r7]
	bl sub_0807B7D8
	b _0805CF68
	.align 2, 0
_0805CDCC: .4byte 0x00000372
_0805CDD0: .4byte 0x0000036F
_0805CDD4: .4byte 0x00000376
_0805CDD8: .4byte 0x00000375
_0805CDDC: .4byte 0x00000373
_0805CDE0: .4byte 0x00000371
_0805CDE4:
	ldrb r2, [r7]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0807B7D8
	adds r1, r5, #1
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #2
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #3
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x40
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x41
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x42
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x43
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x80
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x81
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x82
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x83
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0xc0
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0xc1
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0xc2
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0xc3
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	ldrh r0, [r4, #0x3c]
	ldrb r2, [r7]
	mov r1, r8
	bl sub_0807B7D8
	ldr r4, _0805CF70 @ =0x00000372
	mov r1, r8
	adds r1, #1
	ldrb r2, [r7]
	adds r0, r4, #0
	bl sub_0807B7D8
	mov r1, r8
	adds r1, #2
	ldrb r2, [r7]
	adds r0, r4, #0
	bl sub_0807B7D8
	ldr r0, _0805CF74 @ =0x0000036F
	mov r1, r8
	adds r1, #3
	ldrb r2, [r7]
	bl sub_0807B7D8
	movs r6, #0xdd
	lsls r6, r6, #2
	mov r1, r8
	adds r1, #0x40
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r4, #4
	mov r1, r8
	adds r1, #0x41
	ldrb r2, [r7]
	adds r0, r4, #0
	bl sub_0807B7D8
	mov r1, r8
	adds r1, #0x42
	ldrb r2, [r7]
	adds r0, r4, #0
	bl sub_0807B7D8
	ldr r5, _0805CF78 @ =0x00000375
	mov r1, r8
	adds r1, #0x43
	ldrb r2, [r7]
	adds r0, r5, #0
	bl sub_0807B7D8
	mov r1, r8
	adds r1, #0x80
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	mov r1, r8
	adds r1, #0x81
	ldrb r2, [r7]
	adds r0, r4, #0
	bl sub_0807B7D8
	mov r1, r8
	adds r1, #0x82
	ldrb r2, [r7]
	adds r0, r4, #0
	bl sub_0807B7D8
	mov r1, r8
	adds r1, #0x83
	ldrb r2, [r7]
	adds r0, r5, #0
	bl sub_0807B7D8
	movs r0, #0xdc
	lsls r0, r0, #2
	mov r1, r8
	adds r1, #0xc0
	ldrb r2, [r7]
	bl sub_0807B7D8
	subs r4, #3
	mov r1, r8
	adds r1, #0xc1
	ldrb r2, [r7]
	adds r0, r4, #0
	bl sub_0807B7D8
	mov r1, r8
	adds r1, #0xc2
	ldrb r2, [r7]
	adds r0, r4, #0
	bl sub_0807B7D8
	ldr r0, _0805CF7C @ =0x00000371
	mov r1, r8
	adds r1, #0xc3
	ldrb r2, [r7]
	bl sub_0807B7D8
_0805CF68:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805CF70: .4byte 0x00000372
_0805CF74: .4byte 0x0000036F
_0805CF78: .4byte 0x00000375
_0805CF7C: .4byte 0x00000371

	thumb_func_start sub_0805CF80
sub_0805CF80: @ 0x0805CF80
	push {lr}
	ldr r1, [r0, #0x2c]
	ldrh r1, [r1]
	ldr r0, [r0, #0x28]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r1, [r1]
	movs r2, #0
	ldr r0, _0805CFBC @ =0x00000365
	cmp r1, r0
	beq _0805CFB4
	adds r0, #4
	cmp r1, r0
	beq _0805CFB4
	adds r0, #1
	cmp r1, r0
	beq _0805CFB4
	adds r0, #1
	cmp r1, r0
	beq _0805CFB4
	adds r0, #2
	cmp r1, r0
	beq _0805CFB4
	subs r0, #1
	cmp r1, r0
	bne _0805CFB6
_0805CFB4:
	movs r2, #1
_0805CFB6:
	adds r0, r2, #0
	pop {pc}
	.align 2, 0
_0805CFBC: .4byte 0x00000365

	thumb_func_start sub_0805CFC0
sub_0805CFC0: @ 0x0805CFC0
	push {r4, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	bne _0805CFCE
	adds r0, #1
	strb r0, [r1, #0xc]
_0805CFCE:
	movs r0, #3
	bl sub_0804B128
	adds r4, r0, #0
	cmp r4, #0
	beq _0805CFEE
	b _0805CFE8
_0805CFDC:
	cmp r0, #0xa
	bne _0805CFE6
	adds r0, r4, #0
	bl sub_0805CFF0
_0805CFE6:
	adds r4, #8
_0805CFE8:
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805CFDC
_0805CFEE:
	pop {r4, pc}

	thumb_func_start sub_0805CFF0
sub_0805CFF0: @ 0x0805CFF0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #2]
	bl CheckLocalFlag
	cmp r0, #0
	bne _0805D012
	ldrh r0, [r4, #4]
	ldrb r1, [r4, #1]
	bl GetTileType
	ldrh r1, [r4, #6]
	cmp r1, r0
	bne _0805D012
	ldrh r0, [r4, #2]
	bl SetLocalFlag
_0805D012:
	pop {r4, pc}

	thumb_func_start sub_0805D014
sub_0805D014: @ 0x0805D014
	push {lr}
	ldr r2, _0805D028 @ =gUnk_08108D30
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805D028: .4byte gUnk_08108D30

	thumb_func_start sub_0805D02C
sub_0805D02C: @ 0x0805D02C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldrh r0, [r6, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805D046
	bl DeleteThisEntity
_0805D046:
	ldr r0, _0805D0BC @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x43
	bhi _0805D0B0
	ldrb r0, [r6, #0xa]
	bl sub_0804B128
	adds r5, r0, #0
	movs r7, #0
	movs r0, #0x36
	adds r0, r0, r6
	mov sl, r0
	ldr r1, _0805D0C0 @ =gRoomControls
	mov r8, r1
	movs r0, #0x20
	adds r0, r0, r6
	mov sb, r0
_0805D068:
	ldrh r1, [r5, #4]
	movs r0, #0xa0
	adds r2, r7, #0
	bl CreateObject
	adds r4, r0, #0
	mov r1, r8
	ldrh r0, [r1, #6]
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	mov r1, r8
	ldrh r0, [r1, #8]
	ldrh r1, [r5, #2]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	str r6, [r4, #0x50]
	adds r0, r4, #0
	bl sub_08016A30
	mov r0, sb
	adds r0, #4
	mov sb, r0
	subs r0, #4
	stm r0!, {r4}
	adds r7, #1
	adds r5, #6
	cmp r7, #3
	bls _0805D068
	movs r0, #0
	movs r1, #1
	strb r1, [r6, #0xc]
	movs r1, #0x3c
	strb r1, [r6, #0xf]
	mov r1, sl
	strb r0, [r1]
_0805D0B0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805D0BC: .4byte gUnk_03003DBC
_0805D0C0: .4byte gRoomControls

	thumb_func_start sub_0805D0C4
sub_0805D0C4: @ 0x0805D0C4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805D0D8
	movs r0, #0xb4
	strb r0, [r4, #0xf]
_0805D0D8:
	adds r5, r4, #0
	adds r5, #0x36
	ldrb r0, [r5]
	cmp r0, #0xf
	bne _0805D0F6
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
	movs r0, #0x72
	bl PlaySFX
	adds r0, r4, #0
	bl sub_0805D11C
_0805D0F6:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5, pc}

	thumb_func_start sub_0805D0FC
sub_0805D0FC: @ 0x0805D0FC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805D118
	ldrh r0, [r4, #0x3e]
	bl SetFlag
	adds r0, r4, #0
	bl sub_0805E900
_0805D118:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805D11C
sub_0805D11C: @ 0x0805D11C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	ldr r1, _0805D170 @ =gRoomControls
	mov r8, r1
	movs r7, #0x3f
	adds r5, r0, #0
	adds r5, #0x20
_0805D12E:
	ldr r4, [r5]
	movs r0, #0
	stm r5!, {r0}
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	mov r3, r8
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r7
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	ldrh r2, [r3, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r7
	lsls r1, r1, #6
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_0807BA8C
	adds r0, r4, #0
	bl DeleteEntity
	adds r6, #1
	cmp r6, #3
	bls _0805D12E
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805D170: .4byte gRoomControls

	thumb_func_start sub_0805D174
sub_0805D174: @ 0x0805D174
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #0xc]
	cmp r1, #0
	bne _0805D184
	movs r0, #1
	strb r0, [r5, #0xc]
	strh r1, [r5, #0x3a]
_0805D184:
	movs r1, #0x38
	ldrsh r0, [r5, r1]
	movs r2, #0x3a
	ldrsh r1, [r5, r2]
	movs r2, #0x14
	movs r3, #0x40
	bl CheckPlayerInRegion
	cmp r0, #0
	beq _0805D1EE
	ldr r0, _0805D1F0 @ =gLinkEntity
	movs r4, #0x32
	ldrsh r1, [r0, r4]
	ldr r3, _0805D1F4 @ =gRoomControls
	ldrh r2, [r3, #8]
	subs r1, r1, r2
	movs r4, #0x36
	ldrsh r0, [r0, r4]
	adds r1, r1, r0
	cmp r1, #0
	bge _0805D1EE
	movs r1, #0xc
	ldrsh r0, [r3, r1]
	cmp r0, r2
	bne _0805D1EE
	ldr r4, _0805D1F8 @ =gUnk_030010AC
	adds r0, r4, #0
	movs r1, #0x20
	bl sub_0801D630
	subs r4, #0xc
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #8]
	strb r1, [r4, #9]
	movs r0, #0xb
	strb r0, [r4, #0xf]
	ldrb r0, [r5, #0xb]
	strb r0, [r4, #0xc]
	ldrb r0, [r5, #0xe]
	strb r0, [r4, #0xd]
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	ldrh r0, [r5, #0x3c]
	strh r0, [r4, #0x10]
	ldrh r0, [r5, #0x3e]
	strh r0, [r4, #0x12]
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	strb r0, [r4, #0x14]
_0805D1EE:
	pop {r4, r5, pc}
	.align 2, 0
_0805D1F0: .4byte gLinkEntity
_0805D1F4: .4byte gRoomControls
_0805D1F8: .4byte gUnk_030010AC

	thumb_func_start sub_0805D1FC
sub_0805D1FC: @ 0x0805D1FC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0805D240 @ =0x00004014
	ldr r1, _0805D244 @ =0x000005C3
	movs r2, #1
	bl SetTile
	ldr r3, _0805D248 @ =gRoomControls
	ldrh r0, [r3, #8]
	adds r0, #0xc8
	ldr r2, _0805D24C @ =gLinkEntity
	movs r5, #0x32
	ldrsh r1, [r2, r5]
	cmp r0, r1
	bge _0805D236
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	subs r0, #0x30
	cmp r0, #0x10
	bhi _0805D236
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	adds r0, r2, #0
	bl UpdateSpriteOrderAndFlip
_0805D236:
	adds r0, r4, #0
	bl sub_0805E900
	pop {r4, r5, pc}
	.align 2, 0
_0805D240: .4byte 0x00004014
_0805D244: .4byte 0x000005C3
_0805D248: .4byte gRoomControls
_0805D24C: .4byte gLinkEntity

	thumb_func_start sub_0805D250
sub_0805D250: @ 0x0805D250
	push {lr}
	ldr r2, _0805D264 @ =gUnk_08108D3C
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805D264: .4byte gUnk_08108D3C

	thumb_func_start sub_0805D268
sub_0805D268: @ 0x0805D268
	push {lr}
	ldr r2, _0805D27C @ =gUnk_08108D44
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805D27C: .4byte gUnk_08108D44

	thumb_func_start sub_0805D280
sub_0805D280: @ 0x0805D280
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3c]
	bl CheckFlags
	cmp r0, #0
	beq _0805D292
	bl DeleteThisEntity
_0805D292:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805D2A6
	ldrh r0, [r4, #0x3c]
	bl SetFlag
	bl DeleteThisEntity
_0805D2A6:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _0805D2B4
	movs r0, #0x1e
	strb r0, [r4, #0xe]
_0805D2B4:
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805D2C0
sub_0805D2C0: @ 0x0805D2C0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805D2EE
	ldr r0, _0805D2F0 @ =gUnk_03003DC0
	ldrh r0, [r0, #8]
	cmp r0, #1
	bhi _0805D2EE
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bne _0805D2E6
	adds r0, r4, #0
	bl sub_0805D2F4
_0805D2E6:
	ldrb r1, [r4, #0xe]
	adds r0, r4, #0
	bl sub_0805E4E0
_0805D2EE:
	pop {r4, pc}
	.align 2, 0
_0805D2F0: .4byte gUnk_03003DC0

	thumb_func_start sub_0805D2F4
sub_0805D2F4: @ 0x0805D2F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0805D310 @ =gUnk_03003DC0
	ldrh r0, [r0, #8]
	cmp r0, #0
	bne _0805D328
	movs r1, #0x38
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0805D314
	bl PlaySFX
	b _0805D31A
	.align 2, 0
_0805D310: .4byte gUnk_03003DC0
_0805D314:
	movs r0, #0x72
	bl PlaySFX
_0805D31A:
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	beq _0805D324
	bl SetFlag
_0805D324:
	bl DeleteThisEntity
_0805D328:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805D32C
sub_0805D32C: @ 0x0805D32C
	push {lr}
	ldr r2, _0805D340 @ =gUnk_08108D50
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805D340: .4byte gUnk_08108D50

	thumb_func_start sub_0805D344
sub_0805D344: @ 0x0805D344
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _0805D35C
	movs r0, #0x1e
	strb r0, [r4, #0xe]
_0805D35C:
	ldrb r0, [r4, #0xe]
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805D36C
sub_0805D36C: @ 0x0805D36C
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805D382
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xf]
	strb r0, [r4, #0xe]
_0805D382:
	pop {r4, pc}

	thumb_func_start sub_0805D384
sub_0805D384: @ 0x0805D384
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0805D3B2
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805D3C6
	movs r1, #0x38
	ldrsh r0, [r4, r1]
	movs r1, #0x72
	cmp r0, #0
	beq _0805D3A4
	adds r1, r0, #0
_0805D3A4:
	adds r0, r1, #0
	bl PlaySFX
	ldrh r0, [r4, #0x3c]
	bl SetFlag
	b _0805D3C6
_0805D3B2:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	bne _0805D3C6
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0x3c]
	bl ClearFlag
_0805D3C6:
	pop {r4, pc}

	thumb_func_start sub_0805D3C8
sub_0805D3C8: @ 0x0805D3C8
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0
	bne _0805D3F4
	ldr r0, _0805D3E8 @ =gUnk_02033A90
	ldr r1, _0805D3EC @ =0x0000088C
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0805D3F0 @ =sub_0805D470
	cmp r0, r1
	beq _0805D45E
	movs r0, #0
	bl _call_via_r1
	b _0805D45E
	.align 2, 0
_0805D3E8: .4byte gUnk_02033A90
_0805D3EC: .4byte 0x0000088C
_0805D3F0: .4byte sub_0805D470
_0805D3F4:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805D43A
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	ldr r0, _0805D428 @ =gUnk_02033A90
	ldr r2, _0805D42C @ =0x0000088C
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _0805D434
	ldr r1, _0805D430 @ =sub_0805D470
	adds r0, r4, #0
	movs r2, #0
	bl sub_08052D74
	b _0805D45E
	.align 2, 0
_0805D428: .4byte gUnk_02033A90
_0805D42C: .4byte 0x0000088C
_0805D430: .4byte sub_0805D470
_0805D434:
	bl DeleteThisEntity
	b _0805D45E
_0805D43A:
	ldr r1, _0805D460 @ =gRoomControls
	ldr r0, [r1, #0x28]
	ldr r3, _0805D464 @ =0xFFFFC000
	adds r0, r0, r3
	str r0, [r1, #0x28]
	ldr r0, [r1, #0x2c]
	ldr r2, _0805D468 @ =0xFFFFE000
	adds r0, r0, r2
	str r0, [r1, #0x2c]
	ldr r2, _0805D46C @ =gScreen
	ldrh r0, [r1, #0x2a]
	ldrh r3, [r1, #0xa]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #0x2e]
	ldrh r1, [r1, #0xc]
	adds r0, r0, r1
	strh r0, [r2, #0x30]
_0805D45E:
	pop {r4, pc}
	.align 2, 0
_0805D460: .4byte gRoomControls
_0805D464: .4byte 0xFFFFC000
_0805D468: .4byte 0xFFFFE000
_0805D46C: .4byte gScreen

	thumb_func_start sub_0805D470
sub_0805D470: @ 0x0805D470
	push {lr}
	movs r0, #0x4c
	bl sub_0801D7EC
	ldr r2, _0805D4A0 @ =gScreen
	ldr r0, _0805D4A4 @ =0x00001E07
	strh r0, [r2, #0x2c]
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0805D4A8 @ =gRoomControls
	ldrh r0, [r1, #0x2a]
	ldrh r3, [r1, #0xa]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #0x2e]
	ldrh r1, [r1, #0xc]
	adds r0, r0, r1
	strh r0, [r2, #0x30]
	pop {pc}
	.align 2, 0
_0805D4A0: .4byte gScreen
_0805D4A4: .4byte 0x00001E07
_0805D4A8: .4byte gRoomControls

	thumb_func_start sub_0805D4AC
sub_0805D4AC: @ 0x0805D4AC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldrb r0, [r6, #0xc]
	cmp r0, #1
	beq _0805D520
	cmp r0, #1
	bgt _0805D4C6
	cmp r0, #0
	beq _0805D4D2
	b _0805D628
_0805D4C6:
	cmp r0, #2
	beq _0805D5A4
	cmp r0, #3
	bne _0805D4D0
	b _0805D604
_0805D4D0:
	b _0805D628
_0805D4D2:
	movs r0, #1
	strb r0, [r6, #0xc]
	ldrb r0, [r6, #0xe]
	strb r0, [r6, #0xf]
	ldrh r1, [r6, #0x38]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	movs r3, #0x3f
	ands r1, r3
	ldrh r0, [r6, #0x3a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	strh r1, [r6, #0x28]
	ldr r4, _0805D518 @ =gLinkEntity
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _0805D51C @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	strh r1, [r6, #0x2e]
	strh r1, [r6, #0x2c]
	b _0805D628
	.align 2, 0
_0805D518: .4byte gLinkEntity
_0805D51C: .4byte gRoomControls
_0805D520:
	ldr r4, _0805D568 @ =gLinkEntity
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r3, _0805D56C @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r5, r0, #4
	movs r2, #0x3f
	ands r5, r2
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r5, r0
	strh r5, [r6, #0x2e]
	ldrh r2, [r6, #0x2c]
	cmp r5, r2
	beq _0805D5A4
	strh r5, [r6, #0x2c]
	ldrh r0, [r6, #0x2e]
	ldrb r1, [r6, #0xb]
	bl GetTileType
	adds r1, r0, #0
	ldr r3, _0805D570 @ =0x00000317
	cmp r1, r3
	beq _0805D574
	movs r0, #0xc6
	lsls r0, r0, #2
	cmp r1, r0
	beq _0805D580
	b _0805D5A4
	.align 2, 0
_0805D568: .4byte gLinkEntity
_0805D56C: .4byte gRoomControls
_0805D570: .4byte 0x00000317
_0805D574:
	movs r0, #2
	strb r0, [r6, #0xc]
	movs r0, #0x6d
	bl PlaySFX
	b _0805D5A4
_0805D580:
	ldrh r1, [r6, #0x2e]
	ldrb r2, [r6, #0xb]
	adds r0, r3, #0
	bl sub_0807B7D8
	movs r0, #0x6b
	bl PlaySFX
	ldrb r0, [r6, #0xe]
	subs r0, #1
	strb r0, [r6, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805D5A4
	movs r0, #3
	strb r0, [r6, #0xc]
	movs r0, #0x40
	strb r0, [r6, #0xe]
_0805D5A4:
	ldrh r0, [r6, #0x3e]
	cmp r0, #0
	beq _0805D628
	bl CheckFlags
	cmp r0, #0
	beq _0805D628
	ldrh r0, [r6, #0x3e]
	bl ClearFlag
	movs r0, #1
	strb r0, [r6, #0xc]
	ldrb r0, [r6, #0xf]
	strb r0, [r6, #0xe]
	movs r1, #0
	adds r0, r6, #0
	adds r0, #0x37
	mov sb, r0
	ldrb r5, [r0]
	cmp r1, r5
	bhs _0805D628
	movs r0, #0x36
	adds r0, r0, r6
	mov r8, r0
_0805D5D4:
	lsls r0, r1, #6
	ldrh r2, [r6, #0x28]
	adds r5, r0, r2
	movs r4, #0
	adds r7, r1, #1
	mov r0, r8
	ldrb r0, [r0]
	cmp r4, r0
	bhs _0805D5F8
_0805D5E6:
	adds r0, r5, r4
	ldrb r1, [r6, #0xb]
	bl sub_0807BA8C
	adds r4, #1
	mov r1, r8
	ldrb r1, [r1]
	cmp r4, r1
	blo _0805D5E6
_0805D5F8:
	adds r1, r7, #0
	mov r2, sb
	ldrb r2, [r2]
	cmp r1, r2
	blo _0805D5D4
	b _0805D628
_0805D604:
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	beq _0805D628
	subs r0, #1
	strb r0, [r6, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0805D622
	cmp r0, #0x20
	bne _0805D628
	ldrh r0, [r6, #0x3c]
	bl SetFlag
	b _0805D628
_0805D622:
	movs r0, #0x72
	bl PlaySFX
_0805D628:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0805D630
sub_0805D630: @ 0x0805D630
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	beq _0805D642
	b _0805D768
_0805D642:
	adds r0, #1
	strb r0, [r6, #0xc]
	movs r0, #0x42
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0805D6E4
	movs r0, #0x43
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0805D6E4
	movs r0, #0x44
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0805D6E4
	movs r0, #0x3e
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0805D680
	movs r0, #2
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0805D6E4
	movs r0, #0x3e
	bl SetGlobalFlag
	b _0805D6D2
_0805D680:
	movs r0, #0x3f
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0805D69C
	movs r0, #3
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0805D6E4
	movs r0, #0x3f
	bl SetGlobalFlag
	b _0805D6D2
_0805D69C:
	movs r0, #0x40
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0805D6B8
	movs r0, #4
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0805D6E4
	movs r0, #0x40
	bl SetGlobalFlag
	b _0805D6D2
_0805D6B8:
	movs r0, #0x41
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0805D6E4
	movs r0, #5
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0805D6E4
	movs r0, #0x41
	bl SetGlobalFlag
_0805D6D2:
	movs r0, #0x42
	bl ClearGlobalFlag
	movs r0, #0x43
	bl ClearGlobalFlag
	movs r0, #0x44
	bl ClearGlobalFlag
_0805D6E4:
	adds r1, r6, #0
	adds r1, #0x22
	movs r0, #0
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	ldr r4, _0805D79C @ =gUnk_08108D5C
	movs r5, #0
	mov sb, r1
	movs r7, #1
	ldr r0, _0805D7A0 @ =gRoomControls
	mov r8, r0
_0805D700:
	adds r0, r5, #0
	adds r0, #0x42
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0805D760
	bl Random
	ldrh r1, [r4, #2]
	bl __modsi3
	adds r2, r0, #0
	ldrh r0, [r4]
	adds r2, r2, r0
	movs r0, #2
	movs r1, #0x5c
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0805D760
	strb r7, [r2, #0xe]
	strb r5, [r2, #0xf]
	mov r1, r8
	ldrh r0, [r1, #6]
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
	mov r1, r8
	ldrh r0, [r1, #8]
	ldrh r1, [r4, #6]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	ldrh r1, [r4, #4]
	adds r0, r2, #0
	adds r0, #0x80
	strh r1, [r0]
	ldrh r0, [r4, #6]
	adds r1, r2, #0
	adds r1, #0x82
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x38
	strb r7, [r0]
	str r6, [r2, #0x50]
	mov r1, sb
	adds r0, r1, r5
	strb r7, [r0]
_0805D760:
	adds r5, #1
	adds r4, #8
	cmp r5, #2
	ble _0805D700
_0805D768:
	movs r5, #0
_0805D76A:
	adds r4, r5, #0
	adds r4, #0x42
	adds r0, r4, #0
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0805D78E
	adds r0, r6, #0
	adds r0, #0x20
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0805D78E
	adds r0, r4, #0
	bl SetGlobalFlag
_0805D78E:
	adds r5, #1
	cmp r5, #2
	ble _0805D76A
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805D79C: .4byte gUnk_08108D5C
_0805D7A0: .4byte gRoomControls

	thumb_func_start sub_0805D7A4
sub_0805D7A4: @ 0x0805D7A4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805D7D4 @ =gUnk_08108D7C
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r0, _0805D7D8 @ =gUnk_030010A0
	ldr r0, [r0]
	lsls r0, r0, #4
	str r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_0805D9D8
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x24]
	bl sub_0805DA08
	pop {r4, pc}
	.align 2, 0
_0805D7D4: .4byte gUnk_08108D7C
_0805D7D8: .4byte gUnk_030010A0

	thumb_func_start sub_0805D7DC
sub_0805D7DC: @ 0x0805D7DC
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	movs r2, #2
	cmp r0, #0
	bne _0805D7EA
	movs r2, #1
_0805D7EA:
	movs r0, #0
	strb r2, [r1, #0xc]
	str r0, [r1, #0x20]
	str r0, [r1, #0x24]
	ldr r0, _0805D80C @ =gRoomControls
	ldrb r0, [r0, #4]
	cmp r0, #0x78
	beq _0805D83C
	cmp r0, #0x78
	bgt _0805D816
	cmp r0, #7
	beq _0805D828
	cmp r0, #7
	bgt _0805D810
	cmp r0, #3
	beq _0805D82C
	b _0805D828
	.align 2, 0
_0805D80C: .4byte gRoomControls
_0805D810:
	cmp r0, #0x38
	beq _0805D840
	b _0805D828
_0805D816:
	cmp r0, #0x81
	beq _0805D830
	cmp r0, #0x81
	bgt _0805D824
	cmp r0, #0x80
	beq _0805D834
	b _0805D828
_0805D824:
	cmp r0, #0x88
	beq _0805D838
_0805D828:
	movs r1, #0
	b _0805D842
_0805D82C:
	movs r1, #1
	b _0805D842
_0805D830:
	movs r1, #2
	b _0805D842
_0805D834:
	movs r1, #3
	b _0805D842
_0805D838:
	movs r1, #4
	b _0805D842
_0805D83C:
	movs r1, #5
	b _0805D842
_0805D840:
	movs r1, #6
_0805D842:
	ldr r0, _0805D854 @ =gUnk_08108D74
	adds r0, r1, r0
	ldrb r0, [r0]
	bl sub_0801D7EC
	ldr r1, _0805D858 @ =gScreen
	ldr r0, _0805D85C @ =0x00001E04
	strh r0, [r1, #0x2c]
	pop {pc}
	.align 2, 0
_0805D854: .4byte gUnk_08108D74
_0805D858: .4byte gScreen
_0805D85C: .4byte 0x00001E04

	thumb_func_start sub_0805D860
sub_0805D860: @ 0x0805D860
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xd]
	cmp r0, #1
	beq _0805D89C
	cmp r0, #1
	bgt _0805D874
	cmp r0, #0
	beq _0805D87E
	b _0805D8D6
_0805D874:
	cmp r0, #2
	beq _0805D8B0
	cmp r0, #3
	beq _0805D8C2
	b _0805D8D6
_0805D87E:
	movs r0, #1
	strb r0, [r1, #0xd]
	movs r0, #0x80
	str r0, [r1, #0x20]
	ldr r2, _0805D898 @ =gScreen
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	b _0805D8F4
	.align 2, 0
_0805D898: .4byte gScreen
_0805D89C:
	ldr r0, [r1, #0x20]
	subs r0, #1
	str r0, [r1, #0x20]
	cmp r0, #0x10
	bne _0805D8F4
	movs r0, #2
	strb r0, [r1, #0xd]
	movs r0, #0x2d
	strb r0, [r1, #0xe]
	b _0805D8F4
_0805D8B0:
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805D8F4
	movs r0, #3
	strb r0, [r1, #0xd]
	b _0805D8F4
_0805D8C2:
	ldr r0, [r1, #0x20]
	subs r0, #1
	str r0, [r1, #0x20]
	cmp r0, #0
	bne _0805D8F4
	movs r0, #4
	strb r0, [r1, #0xd]
	movs r0, #0x3c
	strb r0, [r1, #0xe]
	b _0805D8F4
_0805D8D6:
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805D8F4
	bl sub_0801E104
	ldr r2, _0805D8F8 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805D8FC @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2]
	bl DeleteThisEntity
_0805D8F4:
	pop {pc}
	.align 2, 0
_0805D8F8: .4byte gScreen
_0805D8FC: .4byte 0x0000F7FF

	thumb_func_start sub_0805D900
sub_0805D900: @ 0x0805D900
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xd]
	cmp r0, #1
	beq _0805D938
	cmp r0, #1
	bgt _0805D914
	cmp r0, #0
	beq _0805D91A
	b _0805D966
_0805D914:
	cmp r0, #2
	beq _0805D94E
	b _0805D966
_0805D91A:
	movs r1, #1
	strb r1, [r2, #0xd]
	movs r0, #0x2d
	strb r0, [r2, #0xe]
	str r1, [r2, #0x20]
	ldr r2, _0805D934 @ =gScreen
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	b _0805D982
	.align 2, 0
_0805D934: .4byte gScreen
_0805D938:
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805D982
	movs r0, #2
	strb r0, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xe]
	b _0805D982
_0805D94E:
	ldr r0, [r2, #0x20]
	adds r0, #1
	str r0, [r2, #0x20]
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805D982
	movs r0, #3
	strb r0, [r2, #0xd]
	b _0805D982
_0805D966:
	ldr r0, [r2, #0x20]
	adds r0, #4
	str r0, [r2, #0x20]
	cmp r0, #0x80
	bls _0805D982
	bl sub_0801E104
	ldr r2, _0805D984 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805D988 @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2]
	bl DeleteThisEntity
_0805D982:
	pop {pc}
	.align 2, 0
_0805D984: .4byte gScreen
_0805D988: .4byte 0x0000F7FF

	thumb_func_start sub_0805D98C
sub_0805D98C: @ 0x0805D98C
	push {lr}
	adds r2, r0, #0
	ldr r3, _0805D9D4 @ =gUnk_03000FF0
	ldrh r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0805D9A2
	ldr r0, [r2, #0x20]
	subs r0, #1
	str r0, [r2, #0x20]
_0805D9A2:
	ldrh r1, [r3]
	movs r0, #0x80
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _0805D9B4
	ldr r0, [r2, #0x20]
	adds r0, #1
	str r0, [r2, #0x20]
_0805D9B4:
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _0805D9C2
	ldr r0, [r2, #0x28]
	subs r0, #1
	str r0, [r2, #0x28]
_0805D9C2:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805D9D0
	ldr r0, [r2, #0x28]
	adds r0, #1
	str r0, [r2, #0x28]
_0805D9D0:
	pop {pc}
	.align 2, 0
_0805D9D4: .4byte gUnk_03000FF0

	thumb_func_start sub_0805D9D8
sub_0805D9D8: @ 0x0805D9D8
	push {r4, lr}
	ldr r4, [r0, #0x14]
	cmp r4, #0
	beq _0805D9FC
	ldr r3, _0805DA00 @ =gScreen
	ldr r2, _0805DA04 @ =gRoomControls
	ldrh r1, [r4, #0x2e]
	ldrh r0, [r2, #0xa]
	subs r1, r1, r0
	movs r0, #0x80
	subs r0, r0, r1
	strh r0, [r3, #0x2e]
	ldrh r1, [r4, #0x32]
	ldrh r0, [r2, #0xc]
	subs r1, r1, r0
	movs r0, #0x8c
	subs r0, r0, r1
	strh r0, [r3, #0x30]
_0805D9FC:
	pop {r4, pc}
	.align 2, 0
_0805DA00: .4byte gScreen
_0805DA04: .4byte gRoomControls

	thumb_func_start sub_0805DA08
sub_0805DA08: @ 0x0805DA08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r2, _0805DA78 @ =gUnk_03003DE4
	ldrb r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _0805DA7C @ =gUnk_02017AA0
	adds r4, r0, r1
	movs r3, #0
	mov r8, r2
	mov sb, r1
	ldr r0, _0805DA80 @ =gUnk_080C9160
	mov ip, r0
	movs r2, #0xff
	ldr r1, _0805DA84 @ =gScreen
_0805DA34:
	adds r0, r6, r3
	adds r0, r0, r5
	ands r0, r2
	lsls r0, r0, #1
	add r0, ip
	movs r7, #0
	ldrsh r0, [r0, r7]
	mov r7, sl
	muls r7, r0, r7
	adds r0, r7, #0
	lsrs r0, r0, #8
	ldrh r7, [r1, #0x2e]
	adds r0, r0, r7
	strh r0, [r4]
	adds r4, #2
	adds r3, #1
	adds r5, #0x17
	cmp r3, #0x9f
	bls _0805DA34
	mov r0, r8
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	add r0, sb
	ldr r1, _0805DA88 @ =0x0400001C
	ldr r2, _0805DA8C @ =0xA2600001
	bl sub_0805622C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805DA78: .4byte gUnk_03003DE4
_0805DA7C: .4byte gUnk_02017AA0
_0805DA80: .4byte gUnk_080C9160
_0805DA84: .4byte gScreen
_0805DA88: .4byte 0x0400001C
_0805DA8C: .4byte 0xA2600001

	thumb_func_start sub_0805DA90
sub_0805DA90: @ 0x0805DA90
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_0805E8D4
	adds r1, r0, #0
	cmp r1, #0
	beq _0805DAB4
	movs r0, #9
	strb r0, [r1, #8]
	movs r0, #0x32
	strb r0, [r1, #9]
	strb r4, [r1, #0xa]
	str r5, [r1, #0x14]
	adds r0, r1, #0
	movs r1, #8
	bl sub_0805EA2C
_0805DAB4:
	ldr r0, _0805DAD8 @ =gUnk_02033A90
	ldr r1, _0805DADC @ =0x0000088C
	adds r4, r0, r1
	ldr r0, [r4]
	cmp r0, #0
	beq _0805DAD4
	ldr r2, _0805DAE0 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805DAE4 @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2]
	bl sub_080528F0
	ldr r0, [r4]
	bl sub_0805E900
_0805DAD4:
	pop {r4, r5, pc}
	.align 2, 0
_0805DAD8: .4byte gUnk_02033A90
_0805DADC: .4byte 0x0000088C
_0805DAE0: .4byte gScreen
_0805DAE4: .4byte 0x0000F7FF

	thumb_func_start sub_0805DAE8
sub_0805DAE8: @ 0x0805DAE8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r2, r0, #0
	ldr r5, _0805DB4C @ =gRoomControls
	ldrh r0, [r5, #6]
	movs r1, #0xfc
	lsls r1, r1, #1
	mov r8, r1
	add r0, r8
	ldr r3, _0805DB50 @ =gLinkEntity
	movs r4, #0x2e
	ldrsh r1, [r3, r4]
	subs r0, r0, r1
	adds r4, r0, #0
	adds r4, #0x10
	ldrh r0, [r5, #8]
	movs r7, #0xa0
	lsls r7, r7, #1
	adds r0, r0, r7
	movs r6, #0x32
	ldrsh r1, [r3, r6]
	subs r0, r0, r1
	adds r0, #0x10
	ldrb r6, [r2, #0xc]
	cmp r6, #0
	bne _0805DB58
	cmp r4, #0x1f
	bhi _0805DB88
	cmp r0, #0x1f
	bhi _0805DB88
	movs r0, #0x36
	ldrsh r1, [r3, r0]
	movs r0, #0x18
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0805DB88
	ldr r0, _0805DB54 @ =gLinkState
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0x14
	bne _0805DB88
	adds r0, r6, #1
	strb r0, [r2, #0xc]
	movs r0, #0x5a
	strb r0, [r2, #0xe]
	adds r0, #0xb0
	bl PlaySFX
	b _0805DB88
	.align 2, 0
_0805DB4C: .4byte gRoomControls
_0805DB50: .4byte gLinkEntity
_0805DB54: .4byte gLinkState
_0805DB58:
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805DB88
	movs r0, #0x96
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _0805DB84
	ldrh r0, [r5, #6]
	add r0, r8
	strh r0, [r1, #0x2e]
	ldrh r0, [r5, #8]
	adds r0, r0, r7
	strh r0, [r1, #0x32]
	ldr r0, _0805DB90 @ =0x0000FFE8
	strh r0, [r1, #0x36]
_0805DB84:
	bl DeleteThisEntity
_0805DB88:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805DB90: .4byte 0x0000FFE8

	thumb_func_start sub_0805DB94
sub_0805DB94: @ 0x0805DB94
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805DBB0 @ =gUnk_08108D8C
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0805DBF0
	pop {r4, pc}
	.align 2, 0
_0805DBB0: .4byte gUnk_08108D8C

	thumb_func_start sub_0805DBB4
sub_0805DBB4: @ 0x0805DBB4
	movs r1, #1
	strb r1, [r0, #0xc]
	ldr r1, _0805DBC8 @ =gUnk_030010A0
	adds r1, #0x3d
	ldrb r2, [r1]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r1, r1, #2
	strh r1, [r0, #0x20]
	bx lr
	.align 2, 0
_0805DBC8: .4byte gUnk_030010A0

	thumb_func_start sub_0805DBCC
sub_0805DBCC: @ 0x0805DBCC
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x14]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0805DBE6
	movs r0, #2
	strb r0, [r1, #0xc]
	ldrh r0, [r1, #0x20]
	ldr r2, _0805DBE8 @ =0x0000012D
	cmp r0, r2
	bls _0805DBE6
	strh r2, [r1, #0x20]
_0805DBE6:
	pop {pc}
	.align 2, 0
_0805DBE8: .4byte 0x0000012D

	thumb_func_start nullsub_498
nullsub_498: @ 0x0805DBEC
	bx lr
	.align 2, 0

	thumb_func_start sub_0805DBF0
sub_0805DBF0: @ 0x0805DBF0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x20]
	subs r1, r0, #1
	strh r1, [r4, #0x20]
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _0805DC06
	bl sub_0805DC70
	b _0805DC6C
_0805DC06:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x78
	bne _0805DC18
	movs r0, #0x78
	movs r1, #2
	bl sub_08080964
	b _0805DC36
_0805DC18:
	cmp r1, #0xd2
	bne _0805DC26
	movs r0, #0x5a
	movs r1, #1
	bl sub_08080964
	b _0805DC36
_0805DC26:
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r1, r0
	bne _0805DC36
	movs r0, #0x5a
	movs r1, #0
	bl sub_08080964
_0805DC36:
	ldrh r1, [r4, #0x20]
	adds r0, r1, #0
	cmp r0, #0x77
	bhi _0805DC42
	movs r0, #0xf
	b _0805DC48
_0805DC42:
	cmp r0, #0xd1
	bhi _0805DC58
	movs r0, #0x1f
_0805DC48:
	ands r0, r1
	cmp r0, #0
	bne _0805DC6C
	movs r0, #0x93
	lsls r0, r0, #1
	bl PlaySFX
	b _0805DC6C
_0805DC58:
	cmp r0, #0xc7
	bhi _0805DC6C
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _0805DC6C
	movs r0, #0x93
	lsls r0, r0, #1
	bl PlaySFX
_0805DC6C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805DC70
sub_0805DC70: @ 0x0805DC70
	push {lr}
	bl sub_0805E5A8
	ldr r0, _0805DC80 @ =gUnk_0813AC48
	bl sub_08080840
	pop {pc}
	.align 2, 0
_0805DC80: .4byte gUnk_0813AC48

	thumb_func_start sub_0805DC84
sub_0805DC84: @ 0x0805DC84
	push {lr}
	ldr r2, _0805DC98 @ =gUnk_08108D98
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805DC98: .4byte gUnk_08108D98

	thumb_func_start sub_0805DC9C
sub_0805DC9C: @ 0x0805DC9C
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3c]
	bl CheckFlags
	cmp r0, #0
	beq _0805DCAE
	bl DeleteThisEntity
_0805DCAE:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805DCC2
	ldrh r0, [r4, #0x3c]
	bl SetFlag
	bl DeleteThisEntity
_0805DCC2:
	movs r0, #1
	strb r0, [r4, #0xc]
	pop {r4, pc}

	thumb_func_start sub_0805DCC8
sub_0805DCC8: @ 0x0805DCC8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805DD1E
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805DCEC
	movs r0, #0x1e
	strb r0, [r4, #0xe]
_0805DCEC:
	ldr r5, _0805DD20 @ =gRoomControls
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x14]
	movs r0, #0x69
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _0805DD1E
	ldrh r0, [r5, #6]
	ldrh r2, [r4, #0x38]
	adds r0, r0, r2
	strh r0, [r1, #0x2e]
	ldrh r0, [r5, #8]
	ldrh r2, [r4, #0x3a]
	adds r0, r0, r2
	strh r0, [r1, #0x32]
	str r1, [r4, #0x18]
	str r1, [r5, #0x30]
	adds r0, r1, #0
	movs r1, #0x1e
	bl sub_0805E4E0
_0805DD1E:
	pop {r4, r5, pc}
	.align 2, 0
_0805DD20: .4byte gRoomControls

	thumb_func_start sub_0805DD24
sub_0805DD24: @ 0x0805DD24
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #8
	bl sub_0805E4E0
	ldr r0, _0805DD64 @ =gRoomControls
	ldrb r1, [r0, #0xf]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0805DD60
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805DD60
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0x3c]
	bl SetFlag
	adds r1, r4, #0
	adds r1, #0x36
	ldrb r0, [r1]
	cmp r0, #0
	bne _0805DD60
	movs r0, #1
	strb r0, [r1]
_0805DD60:
	pop {r4, pc}
	.align 2, 0
_0805DD64: .4byte gRoomControls

	thumb_func_start sub_0805DD68
sub_0805DD68: @ 0x0805DD68
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #8
	bl sub_0805E4E0
	adds r1, r4, #0
	adds r1, #0x36
	ldrb r0, [r1]
	cmp r0, #0
	beq _0805DD94
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805DDAE
	ldr r1, _0805DD90 @ =gRoomControls
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x30]
	b _0805DDAE
	.align 2, 0
_0805DD90: .4byte gRoomControls
_0805DD94:
	ldr r0, _0805DDB0 @ =gRoomControls
	ldrb r1, [r0, #0xf]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0805DDAE
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0805DDAA
	bl DeleteEntity
_0805DDAA:
	bl DeleteThisEntity
_0805DDAE:
	pop {r4, pc}
	.align 2, 0
_0805DDB0: .4byte gRoomControls

	thumb_func_start sub_0805DDB4
sub_0805DDB4: @ 0x0805DDB4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	lsls r0, r0, #2
	ldr r1, _0805DDE0 @ =gUnk_08108DA8
	adds r3, r0, r1
	ldrb r0, [r2, #0xc]
	adds r1, r0, #0
	cmp r1, #0
	bne _0805DDCE
	adds r0, #1
	strb r0, [r2, #0xc]
	strb r1, [r2, #0xe]
_0805DDCE:
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	bne _0805DDE4
	ldrh r0, [r3]
	strb r0, [r2, #0xe]
	ldrh r0, [r3, #2]
	bl PlaySFX
	b _0805DDE8
	.align 2, 0
_0805DDE0: .4byte gUnk_08108DA8
_0805DDE4:
	subs r0, #1
	strb r0, [r2, #0xe]
_0805DDE8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0805DDEC
sub_0805DDEC: @ 0x0805DDEC
	push {r4, r5, lr}
	adds r5, r1, #0
	bl sub_0805E8D4
	adds r4, r0, #0
	cmp r4, #0
	beq _0805DE16
	movs r0, #9
	strb r0, [r4, #8]
	movs r0, #0x36
	strb r0, [r4, #9]
	ldr r0, [r5, #4]
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805EA2C
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
_0805DE16:
	pop {r4, r5, pc}

	thumb_func_start sub_0805DE18
sub_0805DE18: @ 0x0805DE18
	push {lr}
	sub sp, #4
	ldr r3, [r1, #4]
	movs r0, #0
	str r0, [sp]
	movs r0, #9
	movs r1, #0x36
	movs r2, #6
	bl sub_0805EB2C
	cmp r0, #0
	beq _0805DE34
	bl sub_0805E79C
_0805DE34:
	add sp, #4
	pop {pc}

	thumb_func_start sub_0805DE38
sub_0805DE38: @ 0x0805DE38
	push {lr}
	ldr r2, _0805DE4C @ =gUnk_08108DBC
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805DE4C: .4byte gUnk_08108DBC

	thumb_func_start sub_0805DE50
sub_0805DE50: @ 0x0805DE50
	push {lr}
	ldr r2, _0805DE64 @ =gUnk_08108DC4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805DE64: .4byte gUnk_08108DC4

	thumb_func_start sub_0805DE68
sub_0805DE68: @ 0x0805DE68
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x7b
	bl CheckLocalFlag
	cmp r0, #0
	bne _0805DE7A
	bl DeleteThisEntity
_0805DE7A:
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r2, _0805DEAC @ =gUnk_030010A0
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r1, r2, #0
	adds r1, #0x39
	movs r0, #0xf
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x3a
	movs r1, #0x20
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	ldr r0, _0805DEB0 @ =gUnk_02002A40
	movs r1, #0x93
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, _0805DEB4 @ =0x00001194
	str r1, [r0]
	pop {r4, pc}
	.align 2, 0
_0805DEAC: .4byte gUnk_030010A0
_0805DEB0: .4byte gUnk_02002A40
_0805DEB4: .4byte 0x00001194

	thumb_func_start sub_0805DEB8
sub_0805DEB8: @ 0x0805DEB8
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r5, _0805DF44 @ =gLinkEntity
	movs r0, #0x2e
	ldrsh r2, [r5, r0]
	subs r2, #0x88
	ldr r4, _0805DF48 @ =gRoomControls
	ldrh r0, [r4, #6]
	subs r2, r2, r0
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	subs r0, #0x40
	ldrh r1, [r4, #8]
	subs r0, r0, r1
	adds r1, r2, #0
	muls r1, r2, r1
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	movs r0, #0x90
	lsls r0, r0, #4
	cmp r1, r0
	bgt _0805DF42
	movs r0, #0
	movs r1, #2
	strb r1, [r3, #0xc]
	strb r0, [r3, #0xd]
	movs r0, #0x78
	strb r0, [r3, #0xe]
	movs r0, #2
	bl sub_08078A90
	bl sub_08078B48
	movs r0, #0x64
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0805DF1A
	ldrh r0, [r4, #6]
	adds r0, #0x88
	strh r0, [r2, #0x2e]
	ldrh r0, [r4, #8]
	adds r0, #0x48
	strh r0, [r2, #0x32]
_0805DF1A:
	movs r2, #0x10
	rsbs r2, r2, #0
	adds r0, r5, #0
	movs r1, #8
	bl sub_080A2CFC
	adds r2, r0, #0
	cmp r2, #0
	beq _0805DF3C
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
_0805DF3C:
	movs r0, #0x32
	bl PlaySFX
_0805DF42:
	pop {r4, r5, pc}
	.align 2, 0
_0805DF44: .4byte gLinkEntity
_0805DF48: .4byte gRoomControls

	thumb_func_start sub_0805DF4C
sub_0805DF4C: @ 0x0805DF4C
	push {lr}
	adds r1, r0, #0
	ldr r2, _0805DF70 @ =gLinkEntity
	movs r0, #0
	strb r0, [r2, #0x14]
	movs r3, #0x36
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _0805DF78
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	ldr r1, _0805DF74 @ =gRoomControls
	ldrh r1, [r1, #8]
	adds r1, #0x48
	cmp r0, r1
	bge _0805DF92
	strh r1, [r2, #0x32]
	b _0805DF92
	.align 2, 0
_0805DF70: .4byte gLinkEntity
_0805DF74: .4byte gRoomControls
_0805DF78:
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805DF92
	movs r0, #3
	strb r0, [r1, #0xc]
	movs r0, #0x1e
	strb r0, [r1, #0xe]
	ldr r0, _0805DF94 @ =0x0000164F
	bl TextboxTryNoOverlap
_0805DF92:
	pop {pc}
	.align 2, 0
_0805DF94: .4byte 0x0000164F

	thumb_func_start sub_0805DF98
sub_0805DF98: @ 0x0805DF98
	push {lr}
	adds r2, r0, #0
	ldr r0, _0805DFB4 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0805DFCA
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	beq _0805DFB8
	subs r0, #1
	strb r0, [r2, #0xe]
	b _0805DFCA
	.align 2, 0
_0805DFB4: .4byte gTextBox
_0805DFB8:
	movs r0, #4
	strb r0, [r2, #0xc]
	movs r0, #7
	movs r1, #4
	bl DoFade
	movs r0, #0xf6
	bl PlaySFX
_0805DFCA:
	pop {pc}

	thumb_func_start sub_0805DFCC
sub_0805DFCC: @ 0x0805DFCC
	push {lr}
	ldr r0, _0805DFE4 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805DFE0
	movs r0, #0x1c
	bl ClearGlobalFlag
	bl sub_0805E094
_0805DFE0:
	pop {pc}
	.align 2, 0
_0805DFE4: .4byte gUnk_03000FD0

	thumb_func_start sub_0805DFE8
sub_0805DFE8: @ 0x0805DFE8
	push {lr}
	ldr r2, _0805DFFC @ =gUnk_08108DD8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805DFFC: .4byte gUnk_08108DD8

	thumb_func_start sub_0805E000
sub_0805E000: @ 0x0805E000
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x51
	movs r1, #0
	bl CreateEnemy
	adds r4, r0, #0
	cmp r4, #0
	beq _0805E062
	ldr r1, _0805E064 @ =gRoomControls
	ldrh r0, [r1, #6]
	adds r0, #0xb0
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #8]
	adds r0, #0x48
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	adds r0, #0x38
	movs r5, #1
	strb r5, [r0]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	ldr r0, _0805E068 @ =gUnk_030010A0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0805E040
	bl DeleteThisEntity
_0805E040:
	str r4, [r6, #0x18]
	strb r5, [r6, #0xc]
	movs r0, #3
	bl sub_08078A90
	ldr r0, _0805E06C @ =gUnk_02033A90
	ldr r1, _0805E070 @ =0x00000864
	adds r0, r0, r1
	ldr r1, _0805E074 @ =0x80010000
	str r1, [r0]
	movs r0, #6
	movs r1, #4
	bl DoFade
	movs r0, #0xf7
	bl PlaySFX
_0805E062:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0805E064: .4byte gRoomControls
_0805E068: .4byte gUnk_030010A0
_0805E06C: .4byte gUnk_02033A90
_0805E070: .4byte 0x00000864
_0805E074: .4byte 0x80010000

	thumb_func_start sub_0805E078
sub_0805E078: @ 0x0805E078
	push {lr}
	adds r1, r0, #0
	ldr r0, _0805E090 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805E08E
	ldr r1, [r1, #0x18]
	movs r0, #1
	strb r0, [r1, #0xd]
	bl DeleteThisEntity
_0805E08E:
	pop {pc}
	.align 2, 0
_0805E090: .4byte gUnk_03000FD0

	thumb_func_start sub_0805E094
sub_0805E094: @ 0x0805E094
	push {lr}
	bl sub_0805E5A8
	ldr r0, _0805E0A4 @ =gUnk_0813AC34
	movs r1, #7
	bl sub_0808091C
	pop {pc}
	.align 2, 0
_0805E0A4: .4byte gUnk_0813AC34

	thumb_func_start sub_0805E0A8
sub_0805E0A8: @ 0x0805E0A8
	push {lr}
	ldr r2, _0805E0BC @ =gUnk_08108DE0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805E0BC: .4byte gUnk_08108DE0

	thumb_func_start sub_0805E0C0
sub_0805E0C0: @ 0x0805E0C0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0
	movs r1, #1
	strb r1, [r5, #0xc]
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0xa]
	bl sub_0804B128
	adds r4, r0, #0
	cmp r4, #0
	bne _0805E0EC
	bl DeleteThisEntity
	b _0805E0EC
_0805E0DE:
	adds r0, r4, #0
	adds r4, #0x10
	bl CreateEntity
	str r5, [r0, #0x50]
	movs r1, #0xff
	strb r1, [r0, #0xe]
_0805E0EC:
	ldrb r0, [r4]
	cmp r0, #0xff
	bne _0805E0DE
	pop {r4, r5, pc}

	thumb_func_start sub_0805E0F4
sub_0805E0F4: @ 0x0805E0F4
	movs r1, #0
	strb r1, [r0, #0xe]
	bx lr
	.align 2, 0

	thumb_func_start sub_0805E0FC
sub_0805E0FC: @ 0x0805E0FC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805E134 @ =gUnk_08108E28
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r0, _0805E138 @ =gRoomControls
	adds r1, r4, #0
	adds r1, #0x20
	ldrb r0, [r0, #5]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0805E12A
	ldr r0, _0805E13C @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _0805E130
_0805E12A:
	adds r0, r4, #0
	bl sub_0805E1D8
_0805E130:
	pop {r4, pc}
	.align 2, 0
_0805E134: .4byte gUnk_08108E28
_0805E138: .4byte gRoomControls
_0805E13C: .4byte gTextBox

	thumb_func_start sub_0805E140
sub_0805E140: @ 0x0805E140
	push {r4, lr}
	ldrb r2, [r0, #0x10]
	movs r1, #0x20
	orrs r1, r2
	strb r1, [r0, #0x10]
	movs r1, #1
	strb r1, [r0, #0xc]
	ldr r1, _0805E180 @ =gRoomControls
	ldrb r2, [r1, #5]
	adds r1, r0, #0
	adds r1, #0x20
	strb r2, [r1]
	movs r1, #0x78
	strb r1, [r0, #0xe]
	movs r1, #0x3c
	strb r1, [r0, #0xf]
	movs r1, #7
	bl sub_0805E3A0
	ldr r1, _0805E184 @ =gUnk_08108DE8
	ldr r0, _0805E188 @ =gUnk_02033A90
	ldrb r0, [r0, #1]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r4, [r0]
	bl sub_08052660
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0805E1F8
	pop {r4, pc}
	.align 2, 0
_0805E180: .4byte gRoomControls
_0805E184: .4byte gUnk_08108DE8
_0805E188: .4byte gUnk_02033A90

	thumb_func_start sub_0805E18C
sub_0805E18C: @ 0x0805E18C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0805E1D0 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805E1CC
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0805E1BA
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0805E1BA
	strb r0, [r4, #0xb]
	ldr r0, _0805E1D4 @ =gLinkState
	adds r0, #0x8b
	movs r1, #1
	strb r1, [r0]
	bl sub_0805E5B4
_0805E1BA:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805E1CC
	adds r0, r4, #0
	bl sub_0805E1D8
_0805E1CC:
	pop {r4, pc}
	.align 2, 0
_0805E1D0: .4byte gUnk_03000FD0
_0805E1D4: .4byte gLinkState

	thumb_func_start sub_0805E1D8
sub_0805E1D8: @ 0x0805E1D8
	push {lr}
	ldr r0, _0805E1F0 @ =gUnk_02034DF0
	movs r1, #0x80
	bl sub_0801D630
	ldr r1, _0805E1F4 @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
	bl DeleteThisEntity
	pop {pc}
	.align 2, 0
_0805E1F0: .4byte gUnk_02034DF0
_0805E1F4: .4byte gScreen

	thumb_func_start sub_0805E1F8
sub_0805E1F8: @ 0x0805E1F8
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0805E234 @ =gUnk_02034DF0
	movs r1, #0x80
	bl sub_0801D630
	ldr r0, _0805E238 @ =gUnk_08108E60
	mov r1, sp
	movs r2, #9
	bl sub_0801D66C
	mov r1, sp
	lsrs r0, r4, #8
	strb r0, [r1, #4]
	mov r0, sp
	strb r4, [r0, #5]
	ldr r1, _0805E23C @ =gUnk_08108E48
	cmp r5, #0
	bne _0805E224
	ldr r1, _0805E240 @ =gUnk_08108E30
_0805E224:
	mov r0, sp
	bl sub_0805F46C
	ldr r1, _0805E244 @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0805E234: .4byte gUnk_02034DF0
_0805E238: .4byte gUnk_08108E60
_0805E23C: .4byte gUnk_08108E48
_0805E240: .4byte gUnk_08108E30
_0805E244: .4byte gScreen

	thumb_func_start sub_0805E248
sub_0805E248: @ 0x0805E248
	push {r4, r5, lr}
	ldr r0, _0805E2C8 @ =gUnk_03004030
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	ldr r0, _0805E2CC @ =gRoomControls
	ldrb r0, [r0, #4]
	cmp r0, #0xa
	beq _0805E25C
	cmp r0, #0x16
	bne _0805E2E8
_0805E25C:
	movs r0, #0x9f
	lsls r0, r0, #2
	adds r4, r5, #0
	subs r4, #0x41
	adds r1, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r0, _0805E2D0 @ =0x00000283
	adds r1, r4, #0
	movs r2, #2
	bl SetTileType
	ldr r0, _0805E2D4 @ =0x0000027D
	adds r4, #1
	adds r1, r4, #0
	movs r2, #1
	bl SetTileType
	movs r0, #0xa1
	lsls r0, r0, #2
	adds r1, r4, #0
	movs r2, #2
	bl SetTileType
	ldr r0, _0805E2D8 @ =0x0000027E
	adds r4, #1
	adds r1, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r0, _0805E2DC @ =0x00000285
	adds r1, r4, #0
	movs r2, #2
	bl SetTileType
	ldr r0, _0805E2E0 @ =0x0000027F
	subs r1, r5, #1
	movs r2, #1
	bl SetTileType
	movs r0, #0xa0
	lsls r0, r0, #2
	adds r1, r5, #0
	movs r2, #1
	bl SetTileType
	ldr r0, _0805E2E4 @ =0x00000282
	adds r1, r5, #1
	movs r2, #1
	bl SetTileType
	b _0805E350
	.align 2, 0
_0805E2C8: .4byte gUnk_03004030
_0805E2CC: .4byte gRoomControls
_0805E2D0: .4byte 0x00000283
_0805E2D4: .4byte 0x0000027D
_0805E2D8: .4byte 0x0000027E
_0805E2DC: .4byte 0x00000285
_0805E2E0: .4byte 0x0000027F
_0805E2E4: .4byte 0x00000282
_0805E2E8:
	movs r0, #0x9b
	lsls r0, r0, #2
	adds r4, r5, #0
	subs r4, #0x41
	adds r1, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r0, _0805E358 @ =0x00000273
	adds r1, r4, #0
	movs r2, #2
	bl SetTileType
	ldr r0, _0805E35C @ =0x0000026D
	adds r4, #1
	adds r1, r4, #0
	movs r2, #1
	bl SetTileType
	movs r0, #0x9d
	lsls r0, r0, #2
	adds r1, r4, #0
	movs r2, #2
	bl SetTileType
	ldr r0, _0805E360 @ =0x0000026E
	adds r4, #1
	adds r1, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r0, _0805E364 @ =0x00000275
	adds r1, r4, #0
	movs r2, #2
	bl SetTileType
	ldr r0, _0805E368 @ =0x0000026F
	subs r1, r5, #1
	movs r2, #1
	bl SetTileType
	movs r0, #0x9c
	lsls r0, r0, #2
	adds r1, r5, #0
	movs r2, #1
	bl SetTileType
	ldr r0, _0805E36C @ =0x00000272
	adds r1, r5, #1
	movs r2, #1
	bl SetTileType
_0805E350:
	ldr r1, _0805E370 @ =gUnk_02000070
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5, pc}
	.align 2, 0
_0805E358: .4byte 0x00000273
_0805E35C: .4byte 0x0000026D
_0805E360: .4byte 0x0000026E
_0805E364: .4byte 0x00000275
_0805E368: .4byte 0x0000026F
_0805E36C: .4byte 0x00000272
_0805E370: .4byte gUnk_02000070