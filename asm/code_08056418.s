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
	bl _DmaZero
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
	bl _DmaZero
	ldr r0, _0805659C @ =gUnk_02024030
	movs r1, #0x18
	bl _DmaZero
	ldr r4, _080565A0 @ =gUnk_02022780
	adds r0, r4, #0
	movs r1, #0xa8
	bl _DmaZero
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
	bl _DmaZero
	ldr r4, _08056910 @ =gUnk_02024030
	adds r0, r4, #0
	movs r1, #0x18
	bl _DmaZero
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
	bl _DmaZero
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
	bl LoadAssetAsync
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
