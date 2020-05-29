	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_0801D79C
sub_0801D79C: @ 0x0801D79C
	ldr r3, _0801D7B4 @ =gUnk_020176A0
	lsls r2, r0, #1
	adds r2, r2, r3
	strh r1, [r2]
	ldr r2, _0801D7B8 @ =gUnk_0200B644
	lsrs r0, r0, #4
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_0801D7B4: .4byte gUnk_020176A0
_0801D7B8: .4byte gUnk_0200B644

	thumb_func_start sub_0801D7BC
sub_0801D7BC: @ 0x0801D7BC
	push {lr}
	adds r2, r0, #0
	cmp r1, #0
	beq _0801D7D4
	ldr r1, _0801D7CC @ =gLCDControls
	ldr r0, _0801D7D0 @ =0x0000E0FF
	b _0801D7D8
	.align 2, 0
_0801D7CC: .4byte gLCDControls
_0801D7D0: .4byte 0x0000E0FF
_0801D7D4:
	ldr r1, _0801D7E4 @ =gLCDControls
	ldr r0, _0801D7E8 @ =0x0000FFFF
_0801D7D8:
	strh r0, [r1, #6]
	movs r0, #0
	adds r1, r2, #0
	bl sub_0801D79C
	pop {pc}
	.align 2, 0
_0801D7E4: .4byte gLCDControls
_0801D7E8: .4byte 0x0000FFFF

	thumb_func_start sub_0801D7EC
sub_0801D7EC: @ 0x0801D7EC
	push {r4, r5, r6, lr}
	ldr r1, _0801D814 @ =gUnk_08100AA8
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r6, #0x80
	lsls r6, r6, #0x12
	ldr r5, _0801D818 @ =0x040000D4
_0801D7FC:
	movs r2, #0
	ldrb r1, [r4, #3]
	movs r0, #0xf
	ands r1, r0
	cmp r1, #0xd
	beq _0801D894
	cmp r1, #0xd
	bhi _0801D81C
	cmp r1, #7
	beq _0801D842
	b _0801D836
	.align 2, 0
_0801D814: .4byte gUnk_08100AA8
_0801D818: .4byte 0x040000D4
_0801D81C:
	cmp r1, #0xe
	beq _0801D826
	cmp r1, #0xf
	beq _0801D82E
	b _0801D836
_0801D826:
	ldrb r0, [r6, #7]
	cmp r0, #1
	bls _0801D83E
	b _0801D842
_0801D82E:
	ldrb r0, [r6, #7]
	cmp r0, #0
	beq _0801D83E
	b _0801D842
_0801D836:
	ldrb r0, [r6, #7]
	cmp r1, r0
	bne _0801D83E
	movs r2, #1
_0801D83E:
	cmp r2, #0
	beq _0801D888
_0801D842:
	ldr r0, [r4]
	ldr r1, _0801D868 @ =0x00FFFFFF
	ands r0, r1
	ldr r1, _0801D86C @ =gUnk_085A2E80
	adds r2, r0, r1
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0801D87C
	ldr r0, _0801D870 @ =0x05FFFFFF
	cmp r1, r0
	bls _0801D874
	adds r0, r2, #0
	bl LZ77UnCompVram
	b _0801D888
	.align 2, 0
_0801D868: .4byte 0x00FFFFFF
_0801D86C: .4byte gUnk_085A2E80
_0801D870: .4byte 0x05FFFFFF
_0801D874:
	adds r0, r2, #0
	bl LZ77UnCompWram
	b _0801D888
_0801D87C:
	str r2, [r5]
	str r1, [r5, #4]
	lsrs r0, r0, #1
	orrs r0, r3
	str r0, [r5, #8]
	ldr r0, [r5, #8]
_0801D888:
	ldrb r1, [r4, #3]
	movs r0, #0x80
	ands r1, r0
	adds r4, #0xc
	cmp r1, #0
	bne _0801D7FC
_0801D894:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0801D898
sub_0801D898: @ 0x0801D898
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r3
	movs r1, #0x20
	mov ip, r1
	cmp r0, #0
	beq _0801D8B2
	movs r0, #0x40
	mov ip, r0
_0801D8B2:
	ldr r0, _0801D8D8 @ =0x00007FFF
	ands r3, r0
	ldr r1, _0801D8DC @ =0x040000D4
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r2, r6
	lsls r7, r6, #1
	mov r0, ip
	lsls r6, r0, #1
_0801D8C4:
	str r4, [r1]
	str r5, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	adds r4, r4, r7
	adds r5, r5, r6
	subs r3, #1
	cmp r3, #0
	bne _0801D8C4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801D8D8: .4byte 0x00007FFF
_0801D8DC: .4byte 0x040000D4

	thumb_func_start sub_0801D8E0
sub_0801D8E0: @ 0x0801D8E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	movs r0, #3
	add ip, r0
	subs r0, #7
	mov r1, ip
	ands r1, r0
	mov ip, r1
	ldr r6, _0801D90C @ =gUnk_02035540
	mov sb, r6
	ldrh r7, [r6]
	movs r5, #1
	movs r3, #0x80
	lsls r3, r3, #5
	add r3, sb
	subs r4, r3, r1
	movs r2, #0
	b _0801D926
	.align 2, 0
_0801D90C: .4byte gUnk_02035540
_0801D910:
	cmp r1, r4
	bhi _0801D918
	cmp r3, r0
	bls _0801D952
_0801D918:
	cmp r4, r1
	bhi _0801D920
	cmp r0, r3
	bls _0801D952
_0801D920:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0801D926:
	cmp r2, r7
	bhs _0801D94A
	lsls r0, r2, #2
	add r0, sb
	ldrh r1, [r0, #2]
	ldr r6, _0801D95C @ =gUnk_02035540
	adds r1, r1, r6
	ldrh r0, [r0, #4]
	adds r0, r0, r6
	cmp r1, r4
	bhi _0801D940
	cmp r4, r0
	bls _0801D952
_0801D940:
	cmp r1, r3
	bhi _0801D910
	cmp r3, r0
	bhi _0801D910
	movs r5, #0
_0801D94A:
	lsls r0, r7, #2
	mov sl, r0
	cmp r5, #0
	bne _0801D9D8
_0801D952:
	movs r1, #0
	mov r8, r1
	lsls r6, r7, #2
	mov sl, r6
	b _0801D970
	.align 2, 0
_0801D95C: .4byte gUnk_02035540
_0801D960:
	movs r5, #0
_0801D962:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r8, r7
	bhs _0801D9D4
_0801D970:
	mov r1, r8
	lsls r0, r1, #2
	add r0, sb
	ldrh r0, [r0, #2]
	ldr r6, _0801D994 @ =gUnk_02035540
	adds r3, r0, r6
	mov r0, ip
	subs r4, r3, r0
	movs r5, #0
	mov r0, sl
	adds r0, #2
	add r0, sb
	adds r0, #4
	cmp r4, r0
	blo _0801D962
	movs r5, #1
	movs r2, #0
	b _0801D9AE
	.align 2, 0
_0801D994: .4byte gUnk_02035540
_0801D998:
	cmp r1, r4
	bhi _0801D9A0
	cmp r3, r0
	bls _0801D960
_0801D9A0:
	cmp r4, r1
	bhi _0801D9A8
	cmp r0, r3
	bls _0801D960
_0801D9A8:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0801D9AE:
	cmp r2, r7
	bhs _0801D9D0
	lsls r0, r2, #2
	add r0, sb
	ldrh r1, [r0, #2]
	adds r1, r1, r6
	ldrh r0, [r0, #4]
	adds r0, r0, r6
	cmp r1, r4
	bhi _0801D9C6
	cmp r4, r0
	blo _0801D960
_0801D9C6:
	cmp r1, r3
	bhs _0801D998
	cmp r3, r0
	bhi _0801D998
	movs r5, #0
_0801D9D0:
	cmp r5, #0
	beq _0801D962
_0801D9D4:
	cmp r5, #0
	beq _0801DA00
_0801D9D8:
	ldr r0, _0801D9FC @ =gUnk_02035542
	mov r1, sl
	adds r2, r1, r0
	subs r3, r0, #2
	subs r1, r4, r3
	strh r1, [r2]
	adds r0, #2
	add r0, sl
	add r1, ip
	strh r1, [r0]
	adds r0, r7, #1
	strh r0, [r3]
	adds r0, r4, #0
	mov r1, ip
	bl sub_0801D630
	adds r0, r4, #0
	b _0801DA02
	.align 2, 0
_0801D9FC: .4byte gUnk_02035542
_0801DA00:
	movs r0, #0
_0801DA02:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0801DA0C
sub_0801DA0C: @ 0x0801DA0C
	push {r4, r5, lr}
	ldr r3, _0801DA44 @ =gUnk_02035540
	subs r1, r0, r3
	ldr r0, _0801DA48 @ =0x00000FFF
	cmp r1, r0
	bhi _0801DA74
	adds r4, r3, #0
	ldrh r5, [r4]
	adds r4, #2
	movs r2, #0
	cmp r2, r5
	bhs _0801DA74
	ldrh r0, [r4]
	cmp r0, r1
	bne _0801DA4C
	lsls r0, r5, #2
	subs r1, r3, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r4]
	strh r2, [r0]
	adds r0, #2
	ldrh r1, [r0]
	strh r1, [r4, #2]
	strh r2, [r0]
	subs r0, r5, #1
	strh r0, [r3]
	b _0801DA74
	.align 2, 0
_0801DA44: .4byte gUnk_02035540
_0801DA48: .4byte 0x00000FFF
_0801DA4C:
	adds r4, #4
	adds r2, #1
	cmp r2, r5
	bhs _0801DA74
	ldrh r0, [r4]
	cmp r0, r1
	bne _0801DA4C
	lsls r1, r5, #2
	ldr r3, _0801DA78 @ =gUnk_0203553E
	adds r1, r1, r3
	ldrh r0, [r1]
	strh r0, [r4]
	movs r2, #0
	strh r2, [r1]
	adds r1, #2
	ldrh r0, [r1]
	strh r0, [r4, #2]
	strh r2, [r1]
	subs r0, r5, #1
	strh r0, [r3, #2]
_0801DA74:
	pop {r4, r5, pc}
	.align 2, 0
_0801DA78: .4byte gUnk_0203553E

	thumb_func_start sub_0801DA7C
sub_0801DA7C: @ 0x0801DA7C
	push {lr}
	ldr r0, _0801DA8C @ =gUnk_02035540
	movs r1, #0x80
	lsls r1, r1, #5
	bl sub_0801D630
	pop {pc}
	.align 2, 0
_0801DA8C: .4byte gUnk_02035540

	thumb_func_start sub_0801DA90
sub_0801DA90: @ 0x0801DA90
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _0801DAEC @ =gUnk_03001000
	ldrb r0, [r1]
	movs r3, #0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0801DAF0 @ =gUnk_03003DE0
	strb r3, [r0]
	ldr r0, _0801DAF4 @ =gUnk_03000FD0
	strb r3, [r0]
	ldr r5, _0801DAF8 @ =gLCDControls
	adds r0, r5, #0
	adds r0, #0x6d
	strb r3, [r0]
	subs r0, #1
	strb r3, [r0]
	ldr r1, _0801DAFC @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r0, _0801DB00 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _0801DB04 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	movs r0, #0x80
	lsls r0, r0, #0x13
	strh r3, [r0]
	bl sub_0801DB10
	bl sub_0801DB34
	ldr r0, _0801DB08 @ =0x0600C000
	movs r1, #0x20
	bl sub_0801D630
	ldr r0, _0801DB0C @ =gUnk_02034CB0
	movs r1, #0x80
	lsls r1, r1, #4
	bl sub_0801D630
	strh r4, [r5, #0xe]
	pop {r4, r5, pc}
	.align 2, 0
_0801DAEC: .4byte gUnk_03001000
_0801DAF0: .4byte gUnk_03003DE0
_0801DAF4: .4byte gUnk_03000FD0
_0801DAF8: .4byte gLCDControls
_0801DAFC: .4byte 0x040000B0
_0801DB00: .4byte 0x0000C5FF
_0801DB04: .4byte 0x00007FFF
_0801DB08: .4byte 0x0600C000
_0801DB0C: .4byte gUnk_02034CB0

	thumb_func_start sub_0801DB10
sub_0801DB10: @ 0x0801DB10
	push {r4, lr}
	ldr r3, _0801DB30 @ =gUnk_03000020
	movs r1, #0xe0
	lsls r1, r1, #0x13
	movs r0, #0x80
	movs r4, #0xa8
	lsls r4, r4, #2
	adds r2, r4, #0
_0801DB20:
	strh r2, [r3]
	adds r3, #8
	strh r2, [r1]
	adds r1, #8
	subs r0, #1
	cmp r0, #0
	bne _0801DB20
	pop {r4, pc}
	.align 2, 0
_0801DB30: .4byte gUnk_03000020

	thumb_func_start sub_0801DB34
sub_0801DB34: @ 0x0801DB34
	push {r4, lr}
	ldr r4, _0801DB6C @ =gLCDControls
	adds r0, r4, #0
	movs r1, #0x7c
	bl sub_0801D630
	ldr r0, _0801DB70 @ =gUnk_02034CB0
	str r0, [r4, #0x10]
	ldr r0, _0801DB74 @ =0x00001F0C
	strh r0, [r4, #8]
	ldr r0, _0801DB78 @ =gUnk_02021F30
	str r0, [r4, #0x1c]
	ldr r0, _0801DB7C @ =0x00001C01
	strh r0, [r4, #0x14]
	ldr r0, _0801DB80 @ =gUnk_020344B0
	str r0, [r4, #0x28]
	ldr r0, _0801DB84 @ =0x00001D02
	strh r0, [r4, #0x20]
	ldr r0, _0801DB88 @ =gUnk_02001A40
	str r0, [r4, #0x34]
	ldr r0, _0801DB8C @ =0x00001E03
	strh r0, [r4, #0x2c]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4]
	ldr r0, _0801DB90 @ =0x0000FFFF
	strh r0, [r4, #6]
	pop {r4, pc}
	.align 2, 0
_0801DB6C: .4byte gLCDControls
_0801DB70: .4byte gUnk_02034CB0
_0801DB74: .4byte 0x00001F0C
_0801DB78: .4byte gUnk_02021F30
_0801DB7C: .4byte 0x00001C01
_0801DB80: .4byte gUnk_020344B0
_0801DB84: .4byte 0x00001D02
_0801DB88: .4byte gUnk_02001A40
_0801DB8C: .4byte 0x00001E03
_0801DB90: .4byte 0x0000FFFF

	thumb_func_start sub_0801DB94
sub_0801DB94: @ 0x0801DB94
	ldr r0, _0801DB9C @ =gUnk_030010A0
	ldrh r0, [r0, #0x1e]
	lsrs r0, r0, #0xb
	bx lr
	.align 2, 0
_0801DB9C: .4byte gUnk_030010A0

	thumb_func_start sub_0801DBA0
sub_0801DBA0: @ 0x0801DBA0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r1, r2, #0
	adds r0, r5, #0
	bl sub_0801D630
	movs r0, #1
	strb r0, [r5]
	ldr r2, _0801DBE4 @ =gUnk_030010A0
	ldrh r0, [r2, #0x1c]
	lsrs r0, r0, #4
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r5, #1]
	ldrh r0, [r2, #0x1e]
	lsrs r0, r0, #4
	ands r0, r1
	strb r0, [r5, #2]
	adds r5, #3
	ldr r1, _0801DBE8 @ =gUnk_080C9C50
	ldr r0, _0801DBEC @ =gUnk_02033A90
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r6, [r4]
	b _0801DD3A
	.align 2, 0
_0801DBE4: .4byte gUnk_030010A0
_0801DBE8: .4byte gUnk_080C9C50
_0801DBEC: .4byte gUnk_02033A90
_0801DBF0:
	ldrb r0, [r6]
	ldrb r1, [r6, #1]
	movs r2, #3
	bl sub_0804B0FC
	adds r4, r0, #0
	cmp r4, #0
	bne _0801DC04
	adds r6, #8
	b _0801DD3A
_0801DC04:
	adds r0, r6, #0
	bl sub_0801DF10
	mov r8, r0
	bl sub_0805279C
	movs r1, #8
	adds r1, r1, r6
	mov sb, r1
	cmp r0, #0
	beq _0801DCAE
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801DCAE
	movs r3, #0xfc
	lsls r3, r3, #2
	ldr r7, _0801DC84 @ =0x000007FF
_0801DC26:
	ldrb r0, [r4]
	cmp r0, #3
	bgt _0801DCA6
	cmp r0, #2
	blt _0801DCA6
	ldrb r1, [r4, #1]
	mov r0, r8
	str r3, [sp]
	bl GetProgressFlagWithOffset
	ldr r3, [sp]
	cmp r0, #0
	bne _0801DCA6
	ldr r0, _0801DC88 @ =gUnk_0811E214
	ldrb r2, [r6]
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r1, [r6, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, [r2]
	adds r2, r1, r0
	movs r0, #2
	strb r0, [r5]
	ldrb r0, [r4]
	cmp r0, #2
	bne _0801DC8C
	ldrh r0, [r4, #4]
	lsls r0, r0, #4
	ands r0, r3
	movs r1, #8
	orrs r0, r1
	ldrh r1, [r2]
	ands r1, r7
	adds r0, r0, r1
	asrs r0, r0, #4
	strb r0, [r5, #1]
	ldrh r0, [r4, #4]
	lsrs r0, r0, #2
	ands r0, r3
	movs r1, #8
	orrs r0, r1
	ldrh r1, [r2, #2]
	ands r1, r7
	b _0801DC9E
	.align 2, 0
_0801DC84: .4byte 0x000007FF
_0801DC88: .4byte gUnk_0811E214
_0801DC8C:
	ldrh r0, [r2]
	ands r0, r7
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	asrs r0, r0, #4
	strb r0, [r5, #1]
	ldrh r0, [r2, #2]
	ands r0, r7
	ldrh r1, [r4, #6]
_0801DC9E:
	adds r0, r0, r1
	asrs r0, r0, #4
	strb r0, [r5, #2]
	adds r5, #3
_0801DCA6:
	adds r4, #8
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801DC26
_0801DCAE:
	bl sub_0805279C
	cmp r0, #0
	beq _0801DD16
	ldrb r1, [r6, #2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801DD16
	ldr r0, _0801DD4C @ =gUnk_02033A90
	ldrb r0, [r0, #3]
	adds r0, #1
	bl GetProgressFlag
	cmp r0, #0
	bne _0801DD16
	ldr r0, _0801DD50 @ =gUnk_0811E214
	ldrb r2, [r6]
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r1, [r6, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, [r2]
	adds r2, r1, r0
	movs r0, #4
	strb r0, [r5]
	ldrh r0, [r2, #4]
	lsrs r0, r0, #1
	ldrh r1, [r2]
	adds r0, r0, r1
	asrs r1, r0, #4
	adds r0, r1, #0
	cmp r1, #0
	bge _0801DCF8
	adds r0, #0x7f
_0801DCF8:
	asrs r0, r0, #7
	lsls r0, r0, #7
	subs r0, r1, r0
	strb r0, [r5, #1]
	ldrh r0, [r2, #6]
	lsrs r0, r0, #1
	ldrh r2, [r2, #2]
	adds r0, r0, r2
	asrs r1, r0, #4
	adds r0, r1, #0
	asrs r0, r0, #7
	lsls r0, r0, #7
	subs r0, r1, r0
	strb r0, [r5, #2]
	adds r5, #3
_0801DD16:
	ldr r2, _0801DD54 @ =gUnk_030010A0
	ldrh r0, [r6]
	ldrh r1, [r2, #0x16]
	cmp r0, r1
	bne _0801DD38
	movs r0, #3
	strb r0, [r5]
	ldrh r0, [r2, #0x18]
	lsrs r0, r0, #4
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r5, #1]
	ldrh r0, [r2, #0x1a]
	lsrs r0, r0, #4
	ands r0, r1
	strb r0, [r5, #2]
	adds r5, #3
_0801DD38:
	mov r6, sb
_0801DD3A:
	ldrb r0, [r6]
	cmp r0, #0
	beq _0801DD42
	b _0801DBF0
_0801DD42:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801DD4C: .4byte gUnk_02033A90
_0801DD50: .4byte gUnk_0811E214
_0801DD54: .4byte gUnk_030010A0

	thumb_func_start sub_0801DD58
sub_0801DD58: @ 0x0801DD58
	ldr r2, _0801DD7C @ =gUnk_0811E214
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r2, r1, #2
	adds r2, r2, r1
	lsls r2, r2, #1
	ldr r3, [r0]
	adds r3, r3, r2
	ldr r0, _0801DD80 @ =gUnk_02033A90
	ldr r1, _0801DD84 @ =0x0000085C
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r3]
	strh r1, [r2, #4]
	ldr r1, [r0]
	ldrh r0, [r3, #2]
	strh r0, [r1, #6]
	bx lr
	.align 2, 0
_0801DD7C: .4byte gUnk_0811E214
_0801DD80: .4byte gUnk_02033A90
_0801DD84: .4byte 0x0000085C

	thumb_func_start sub_0801DD88
sub_0801DD88: @ 0x0801DD88
	push {lr}
	ldr r0, _0801DD98 @ =gUnk_0201AEE0
	ldr r1, _0801DD9C @ =0x06006000
	movs r2, #0x80
	lsls r2, r2, #6
	bl sub_08000E96
	pop {pc}
	.align 2, 0
_0801DD98: .4byte gUnk_0201AEE0
_0801DD9C: .4byte 0x06006000

	thumb_func_start sub_0801DDA0
sub_0801DDA0: @ 0x0801DDA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r4, r0, #0
	bl sub_08052690
	cmp r0, #0
	bne _0801DDB8
	b _0801DEEA
_0801DDB8:
	ldr r1, _0801DDD8 @ =gUnk_080C9C50
	ldr r0, _0801DDDC @ =gUnk_02033A90
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r0, _0801DDE0 @ =gUnk_02019EE0
	movs r1, #0x80
	lsls r1, r1, #8
	bl sub_0801D630
	b _0801DEE2
	.align 2, 0
_0801DDD8: .4byte gUnk_080C9C50
_0801DDDC: .4byte gUnk_02033A90
_0801DDE0: .4byte gUnk_02019EE0
_0801DDE4:
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	movs r2, #3
	bl sub_0804B0FC
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_0801DF10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp, #0xc]
	ldrh r2, [r4]
	ldr r0, _0801DE14 @ =gUnk_02032EC0
	ldrh r3, [r0, #0x20]
	ldr r1, _0801DE18 @ =0x0000FFFF
	ands r1, r2
	ldr r0, _0801DE18 @ =0x0000FFFF
	ands r0, r3
	cmp r1, r0
	bne _0801DE1C
	movs r3, #8
	b _0801DE36
	.align 2, 0
_0801DE14: .4byte gUnk_02032EC0
_0801DE18: .4byte 0x0000FFFF
_0801DE1C:
	bl sub_080527CC
	cmp r0, #0
	beq _0801DE28
	movs r0, #2
	str r0, [sp, #0xc]
_0801DE28:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0801DF90
	cmp r0, #0
	beq _0801DE38
	movs r3, #3
_0801DE36:
	str r3, [sp, #0xc]
_0801DE38:
	ldrb r1, [r4, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801DE46
	movs r0, #0
	str r0, [sp, #0xc]
_0801DE46:
	adds r3, r4, #0
	adds r3, #8
	str r3, [sp, #0x10]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0801DEE0
	ldr r2, _0801DEF8 @ =0x040000D4
	ldr r0, [r4, #4]
	ldr r1, _0801DEFC @ =gUnk_08324AE4
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _0801DF00 @ =gUnk_02019EE0
	str r0, [r2, #4]
	ldr r0, _0801DF04 @ =0x84000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0801DF08 @ =gUnk_0811E214
	ldrb r2, [r4]
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r1, [r4, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r2, [r2]
	adds r2, r2, r0
	ldrh r0, [r2]
	lsrs r0, r0, #4
	str r0, [sp]
	ldrh r0, [r2, #2]
	ldr r1, _0801DF0C @ =0x000007FF
	ands r0, r1
	lsrs r0, r0, #4
	str r0, [sp, #4]
	ldrh r0, [r2, #4]
	lsrs r7, r0, #4
	ldrh r0, [r2, #6]
	lsrs r0, r0, #4
	mov sl, r0
	adds r0, r7, #3
	lsrs r0, r0, #2
	str r0, [sp, #8]
	movs r6, #0
	cmp r6, sl
	bhs _0801DEE0
_0801DEA0:
	ldr r3, [sp, #8]
	adds r1, r6, #0
	muls r1, r3, r1
	ldr r0, _0801DF00 @ =gUnk_02019EE0
	adds r1, r1, r0
	mov r8, r1
	movs r5, #0
	adds r0, r6, #1
	mov sb, r0
	cmp r5, r7
	bhs _0801DEDA
_0801DEB6:
	ldr r3, [sp]
	adds r4, r3, r5
	adds r0, r5, #0
	mov r1, r8
	bl sub_0801DF60
	ldr r1, [sp, #0xc]
	bl sub_0801DF78
	adds r2, r0, #0
	adds r0, r4, #0
	ldr r3, [sp, #4]
	adds r1, r3, r6
	bl sub_0801DF28
	adds r5, #1
	cmp r5, r7
	blo _0801DEB6
_0801DEDA:
	mov r6, sb
	cmp r6, sl
	blo _0801DEA0
_0801DEE0:
	ldr r4, [sp, #0x10]
_0801DEE2:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801DEEA
	b _0801DDE4
_0801DEEA:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801DEF8: .4byte 0x040000D4
_0801DEFC: .4byte gUnk_08324AE4
_0801DF00: .4byte gUnk_02019EE0
_0801DF04: .4byte 0x84000100
_0801DF08: .4byte gUnk_0811E214
_0801DF0C: .4byte 0x000007FF

	thumb_func_start sub_0801DF10
sub_0801DF10: @ 0x0801DF10
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #3]
	cmp r0, #1
	bne _0801DF20
	movs r0, #0xc0
	lsls r0, r0, #2
	b _0801DF26
_0801DF20:
	ldrb r0, [r1]
	bl sub_08052D58
_0801DF26:
	pop {pc}

	thumb_func_start sub_0801DF28
sub_0801DF28: @ 0x0801DF28
	push {r4, lr}
	lsrs r4, r1, #3
	lsls r4, r4, #4
	lsrs r3, r0, #3
	adds r4, r4, r3
	lsls r4, r4, #5
	ldr r3, _0801DF58 @ =gUnk_0201AEE0
	adds r4, r4, r3
	movs r3, #7
	ands r1, r3
	lsls r1, r1, #2
	adds r4, r4, r1
	ands r0, r3
	lsls r0, r0, #2
	lsls r2, r0
	ldr r1, _0801DF5C @ =gUnk_080C9460
	adds r0, r0, r1
	ldr r1, [r4]
	ldr r0, [r0]
	ands r1, r0
	orrs r1, r2
	str r1, [r4]
	pop {r4, pc}
	.align 2, 0
_0801DF58: .4byte gUnk_0201AEE0
_0801DF5C: .4byte gUnk_080C9460

	thumb_func_start sub_0801DF60
sub_0801DF60: @ 0x0801DF60
	adds r3, r0, #0
	lsrs r0, r3, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r2, #3
	adds r1, r2, #0
	bics r1, r3
	lsls r1, r1, #1
	asrs r0, r1
	ands r0, r2
	bx lr
	.align 2, 0

	thumb_func_start sub_0801DF78
sub_0801DF78: @ 0x0801DF78
	push {lr}
	cmp r0, #2
	beq _0801DF88
	cmp r0, #2
	blo _0801DF8E
	cmp r0, #3
	beq _0801DF8C
	b _0801DF8E
_0801DF88:
	adds r0, r1, #0
	b _0801DF8E
_0801DF8C:
	movs r0, #7
_0801DF8E:
	pop {pc}

	thumb_func_start sub_0801DF90
sub_0801DF90: @ 0x0801DF90
	push {lr}
	adds r2, r1, #0
	cmp r0, #0
	bne _0801DFAA
	b _0801DFB0
_0801DF9A:
	ldrb r1, [r0, #1]
	adds r0, r2, #0
	bl GetProgressFlagWithOffset
	b _0801DFB2
_0801DFA4:
	cmp r1, #1
	beq _0801DF9A
	adds r0, #8
_0801DFAA:
	ldrb r1, [r0]
	cmp r1, #0
	bne _0801DFA4
_0801DFB0:
	movs r0, #0
_0801DFB2:
	pop {pc}

	thumb_func_start sub_0801DFB4
sub_0801DFB4: @ 0x0801DFB4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r7, _0801E004 @ =gUnk_02022740
	adds r0, r7, #0
	movs r1, #0x10
	bl sub_0801D630
	strh r4, [r7, #6]
	strh r5, [r7, #8]
	strh r6, [r7, #0xa]
	mov r0, r8
	str r0, [r7, #0xc]
	ldr r0, _0801E008 @ =gUnk_03003DF0
	ldrb r0, [r0, #2]
	strb r0, [r7, #3]
	mov r1, r8
	cmp r1, #0
	beq _0801DFF8
	ldrb r1, [r1, #0x11]
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	strb r0, [r7, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	mov r1, r8
	strb r0, [r1, #0x11]
_0801DFF8:
	movs r0, #0
	strb r0, [r7]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801E004: .4byte gUnk_02022740
_0801E008: .4byte gUnk_03003DF0

	thumb_func_start sub_0801E00C
sub_0801E00C: @ 0x0801E00C
	push {r4, lr}
	ldr r1, _0801E024 @ =gUnk_080C9CAC
	ldr r4, _0801E028 @ =gUnk_02022740
	ldrb r0, [r4, #1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldrb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_0801E024: .4byte gUnk_080C9CAC
_0801E028: .4byte gUnk_02022740

	thumb_func_start sub_0801E02C
sub_0801E02C: @ 0x0801E02C
	push {r4, lr}
	ldr r4, _0801E040 @ =gUnk_02022740
	ldrh r0, [r4, #6]
	bl sub_0801E0E0
	movs r0, #3
	strb r0, [r4]
	movs r0, #1
	strb r0, [r4, #1]
	pop {r4, pc}
	.align 2, 0
_0801E040: .4byte gUnk_02022740

	thumb_func_start sub_0801E044
sub_0801E044: @ 0x0801E044
	push {lr}
	ldr r0, _0801E06C @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0801E06A
	movs r0, #4
	movs r1, #0
	bl sub_080A7138
	ldr r0, _0801E070 @ =gUnk_02022740
	movs r1, #4
	strb r1, [r0]
	movs r1, #2
	strb r1, [r0, #1]
	movs r0, #0x6b
	bl PlaySFX
_0801E06A:
	pop {pc}
	.align 2, 0
_0801E06C: .4byte gTextBox
_0801E070: .4byte gUnk_02022740

	thumb_func_start sub_0801E074
sub_0801E074: @ 0x0801E074
	push {lr}
	ldr r0, _0801E084 @ =gUnk_02022740
	ldrb r1, [r0]
	cmp r1, #5
	beq _0801E088
	cmp r1, #6
	beq _0801E08C
	b _0801E098
	.align 2, 0
_0801E084: .4byte gUnk_02022740
_0801E088:
	ldrh r0, [r0, #8]
	b _0801E08E
_0801E08C:
	ldrh r0, [r0, #0xa]
_0801E08E:
	bl sub_0801E0E0
	ldr r1, _0801E09C @ =gUnk_02022740
	movs r0, #3
	strb r0, [r1, #1]
_0801E098:
	pop {pc}
	.align 2, 0
_0801E09C: .4byte gUnk_02022740

	thumb_func_start sub_0801E0A0
sub_0801E0A0: @ 0x0801E0A0
	push {r4, lr}
	ldr r0, _0801E0D8 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0801E0D4
	ldr r4, _0801E0DC @ =gUnk_02022740
	ldr r3, [r4, #0xc]
	cmp r3, #0
	beq _0801E0C8
	ldrb r0, [r4, #4]
	movs r1, #0xf
	ands r1, r0
	ldrb r2, [r3, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
_0801E0C8:
	ldrb r0, [r4]
	movs r1, #1
	cmp r0, #6
	bne _0801E0D2
	movs r1, #2
_0801E0D2:
	strb r1, [r4]
_0801E0D4:
	pop {r4, pc}
	.align 2, 0
_0801E0D8: .4byte gTextBox
_0801E0DC: .4byte gUnk_02022740

	thumb_func_start sub_0801E0E0
sub_0801E0E0: @ 0x0801E0E0
	push {lr}
	adds r2, r0, #0
	cmp r2, #0
	beq _0801E102
	ldr r0, _0801E0F8 @ =gUnk_02022740
	ldr r1, [r0, #0xc]
	cmp r1, #0
	beq _0801E0FC
	adds r0, r2, #0
	bl TextboxNoOverlap
	b _0801E102
	.align 2, 0
_0801E0F8: .4byte gUnk_02022740
_0801E0FC:
	adds r0, r2, #0
	bl TextboxTryNoOverlap
_0801E102:
	pop {pc}

	thumb_func_start sub_0801E104
sub_0801E104: @ 0x0801E104
	ldr r1, _0801E118 @ =gLCDControls
	ldrh r2, [r1]
	ldr r0, _0801E11C @ =0x00009FFF
	ands r0, r2
	movs r2, #0
	strh r0, [r1]
	adds r1, #0x6c
	strb r2, [r1]
	bx lr
	.align 2, 0
_0801E118: .4byte gLCDControls
_0801E11C: .4byte 0x00009FFF

	thumb_func_start sub_0801E120
sub_0801E120: @ 0x0801E120
	ldr r3, _0801E14C @ =gLCDControls
	ldrh r1, [r3]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	movs r2, #0
	orrs r0, r1
	strh r0, [r3]
	adds r1, r3, #0
	adds r1, #0x60
	ldr r0, _0801E150 @ =0x00003F37
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x3f
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x58
	strh r2, [r0]
	subs r1, #6
	movs r0, #0xa0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0801E14C: .4byte gLCDControls
_0801E150: .4byte 0x00003F37

	thumb_func_start sub_0801E154
sub_0801E154: @ 0x0801E154
	push {lr}
	movs r1, #0
	bl sub_0801E24C
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801E160
sub_0801E160: @ 0x0801E160
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r6, r0, #0
	mov r8, r1
	mov sb, r2
	ldr r5, _0801E1A8 @ =gUnk_03003DE4
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r4, _0801E1AC @ =gUnk_02017AA0
	adds r0, r0, r4
	movs r1, #0xa0
	lsls r1, r1, #4
	bl sub_0801D630
	adds r0, r6, #0
	mov r1, r8
	mov r2, sb
	bl sub_0801E290
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	adds r0, r0, r4
	ldr r1, _0801E1B0 @ =0x04000040
	ldr r2, _0801E1B4 @ =0xA2600001
	bl sub_0805622C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801E1A8: .4byte gUnk_03003DE4
_0801E1AC: .4byte gUnk_02017AA0
_0801E1B0: .4byte 0x04000040
_0801E1B4: .4byte 0xA2600001

	thumb_func_start sub_0801E1B8
sub_0801E1B8: @ 0x0801E1B8
	push {r4, lr}
	ldr r2, _0801E1E8 @ =gLCDControls
	mov ip, r2
	ldrh r3, [r2]
	movs r4, #0x80
	lsls r4, r4, #6
	adds r2, r4, #0
	movs r4, #0
	orrs r2, r3
	mov r3, ip
	strh r2, [r3]
	mov r2, ip
	adds r2, #0x60
	strh r0, [r2]
	mov r0, ip
	adds r0, #0x62
	strh r1, [r0]
	subs r0, #0xa
	strh r4, [r0]
	mov r1, ip
	adds r1, #0x5c
	movs r0, #0xa0
	strh r0, [r1]
	pop {r4, pc}
	.align 2, 0
_0801E1E8: .4byte gLCDControls

	thumb_func_start sub_0801E1EC
sub_0801E1EC: @ 0x0801E1EC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	mov r8, r0
	mov sb, r1
	adds r4, r2, #0
	ldr r6, _0801E23C @ =gUnk_03003DE4
	ldrb r1, [r6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r5, _0801E240 @ =gUnk_02017AA0
	adds r0, r0, r5
	movs r1, #0xa0
	lsls r1, r1, #4
	bl sub_0801D630
	adds r0, r4, #0
	movs r1, #0
	bl sub_0801E24C
	mov r0, r8
	mov r1, sb
	adds r2, r4, #0
	bl sub_0801E290
	ldrb r1, [r6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	adds r0, r0, r5
	ldr r1, _0801E244 @ =0x04000040
	ldr r2, _0801E248 @ =0xA2600001
	bl sub_0805622C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801E23C: .4byte gUnk_03003DE4
_0801E240: .4byte gUnk_02017AA0
_0801E244: .4byte 0x04000040
_0801E248: .4byte 0xA2600001

	thumb_func_start sub_0801E24C
sub_0801E24C: @ 0x0801E24C
	push {r4, r5, lr}
	lsls r1, r1, #1
	ldr r2, _0801E278 @ =gUnk_02018EE0
	adds r5, r1, r2
	movs r3, #0
	adds r2, r0, #0
	lsls r4, r2, #1
	movs r0, #3
	subs r1, r0, r4
	cmp r3, r2
	bgt _0801E28E
	adds r4, r4, r5
_0801E264:
	lsls r0, r3, #1
	adds r0, r0, r5
	strh r2, [r0]
	strh r3, [r4]
	cmp r1, #0
	bge _0801E27C
	adds r1, #6
	lsls r0, r3, #2
	adds r1, r1, r0
	b _0801E288
	.align 2, 0
_0801E278: .4byte gUnk_02018EE0
_0801E27C:
	adds r1, #0xa
	subs r0, r3, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	subs r4, #2
	subs r2, #1
_0801E288:
	adds r3, #1
	cmp r3, r2
	ble _0801E264
_0801E28E:
	pop {r4, r5, pc}

	thumb_func_start sub_0801E290
sub_0801E290: @ 0x0801E290
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	adds r6, r2, #0
	ldr r0, _0801E2BC @ =gUnk_03003DE4
	ldrb r0, [r0]
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #9
	lsls r0, r1, #1
	ldr r3, _0801E2C0 @ =gUnk_02017AA0
	adds r0, r0, r3
	adds r2, r2, r0
	adds r4, r2, #0
	adds r5, r1, #0
	mov sb, r5
	ldr r0, _0801E2C4 @ =gUnk_02018EE0
	mov r8, r0
	b _0801E30A
	.align 2, 0
_0801E2BC: .4byte gUnk_03003DE4
_0801E2C0: .4byte gUnk_02017AA0
_0801E2C4: .4byte gUnk_02018EE0
_0801E2C8:
	mov r1, r8
	movs r3, #0
	ldrsh r0, [r1, r3]
	movs r7, #2
	add r8, r7
	mov r3, ip
	subs r1, r3, r0
	adds r3, r3, r0
	cmp r1, #0
	bge _0801E2DE
	movs r1, #0
_0801E2DE:
	cmp r3, #0xef
	ble _0801E2E4
	movs r3, #0xf0
_0801E2E4:
	mov r7, sb
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x9f
	bhi _0801E2F2
	strb r3, [r4]
	strb r1, [r4, #1]
_0801E2F2:
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x9f
	bhi _0801E2FE
	strb r3, [r2]
	strb r1, [r2, #1]
_0801E2FE:
	subs r4, #2
	adds r2, #2
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	adds r5, #1
_0801E30A:
	adds r0, r6, #0
	subs r6, #1
	cmp r0, #0
	bne _0801E2C8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0801E31C
sub_0801E31C: @ 0x0801E31C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	str r0, [sp]
	str r1, [sp, #4]
	mov sl, r2
	mov sb, r3
	ldr r0, _0801E3AC @ =gUnk_03003DE4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _0801E3B0 @ =gUnk_02017AA0
	adds r0, r0, r1
	movs r1, #0xa0
	lsls r1, r1, #4
	bl sub_0801D630
	cmp sl, sb
	bge _0801E3DC
	movs r6, #0
	mov r8, sl
	mov r7, r8
	mov r0, r8
	lsls r1, r0, #1
	movs r0, #3
	subs r5, r0, r1
	cmp r6, r8
	ble _0801E35E
	b _0801E45E
_0801E35E:
	mov r1, r8
	lsls r0, r1, #2
	ldr r4, _0801E3B4 @ =gUnk_02018EE0
	adds r0, r0, r4
	str r0, [sp, #0x10]
	mov r1, sb
	mov r0, r8
	muls r0, r1, r0
	str r0, [sp, #0x14]
	movs r3, #0
_0801E372:
	adds r0, r3, #0
	mov r1, sl
	str r3, [sp, #0x18]
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	mov r1, sl
	bl Div
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r6, #2
	ldr r4, _0801E3B4 @ =gUnk_02018EE0
	adds r1, r2, r4
	str r0, [r1]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x10]
	str r0, [r1]
	ldr r3, [sp, #0x18]
	cmp r5, #0
	bge _0801E3B8
	adds r0, r5, #6
	adds r5, r0, r2
	b _0801E3D2
	.align 2, 0
_0801E3AC: .4byte gUnk_03003DE4
_0801E3B0: .4byte gUnk_02017AA0
_0801E3B4: .4byte gUnk_02018EE0
_0801E3B8:
	adds r1, r5, #0
	adds r1, #0xa
	subs r0, r6, r7
	lsls r0, r0, #2
	adds r5, r1, r0
	ldr r4, [sp, #0x10]
	subs r4, #4
	str r4, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r1, sb
	subs r0, r0, r1
	str r0, [sp, #0x14]
	subs r7, #1
_0801E3D2:
	add r3, sb
	adds r6, #1
	cmp r6, r7
	ble _0801E372
	b _0801E45E
_0801E3DC:
	movs r6, #0
	mov r8, sb
	mov r7, r8
	mov r4, r8
	lsls r1, r4, #1
	movs r0, #3
	subs r5, r0, r1
	cmp r6, r8
	bgt _0801E45E
	lsls r0, r4, #2
	ldr r1, _0801E438 @ =gUnk_02018EE0
	adds r0, r0, r1
	str r0, [sp, #8]
	mov r0, sl
	mov r4, r8
	muls r4, r0, r4
	str r4, [sp, #0xc]
	movs r3, #0
_0801E400:
	adds r0, r3, #0
	mov r1, sb
	str r3, [sp, #0x18]
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	mov r1, sb
	bl Div
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r6, #2
	ldr r4, _0801E438 @ =gUnk_02018EE0
	adds r1, r2, r4
	str r0, [r1]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #8]
	str r0, [r1]
	ldr r3, [sp, #0x18]
	cmp r5, #0
	bge _0801E43C
	adds r0, r5, #6
	adds r5, r0, r2
	b _0801E456
	.align 2, 0
_0801E438: .4byte gUnk_02018EE0
_0801E43C:
	adds r1, r5, #0
	adds r1, #0xa
	subs r0, r6, r7
	lsls r0, r0, #2
	adds r5, r1, r0
	ldr r4, [sp, #8]
	subs r4, #4
	str r4, [sp, #8]
	ldr r0, [sp, #0xc]
	mov r1, sl
	subs r0, r0, r1
	str r0, [sp, #0xc]
	subs r7, #1
_0801E456:
	add r3, sl
	adds r6, #1
	cmp r6, r7
	ble _0801E400
_0801E45E:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	mov r2, r8
	bl sub_0801E290
	ldr r0, _0801E48C @ =gUnk_03003DE4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _0801E490 @ =gUnk_02017AA0
	adds r0, r0, r1
	ldr r1, _0801E494 @ =0x04000040
	ldr r2, _0801E498 @ =0xA2600001
	bl sub_0805622C
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801E48C: .4byte gUnk_03003DE4
_0801E490: .4byte gUnk_02017AA0
_0801E494: .4byte 0x04000040
_0801E498: .4byte 0xA2600001

	thumb_func_start sub_0801E49C
sub_0801E49C: @ 0x0801E49C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	str r1, [sp, #4]
	mov sb, r2
	adds r5, r3, #0
	ldr r0, _0801E5E4 @ =0x0000FFFF
	movs r2, #0xf0
	lsls r2, r2, #3
	ldr r1, _0801E5E8 @ =gUnk_02018EE0
	bl sub_0801D5EC
	adds r3, r5, #0
	subs r3, #0x40
	movs r2, #0xff
	ands r3, r2
	ldr r1, _0801E5EC @ =gUnk_080C9160
	adds r0, r3, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	mov r4, sb
	muls r4, r0, r4
	adds r0, r4, #0
	asrs r0, r0, #8
	mov r4, r8
	adds r7, r4, r0
	lsls r0, r3, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r4, sb
	muls r4, r0, r4
	adds r0, r4, #0
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	adds r3, r3, r0
	mov sl, r3
	adds r3, r5, #0
	adds r3, #0x68
	ands r3, r2
	adds r0, r3, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	mov r4, sb
	muls r4, r0, r4
	adds r0, r4, #0
	asrs r0, r0, #8
	mov r4, r8
	adds r6, r4, r0
	lsls r0, r3, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r4, sb
	muls r4, r0, r4
	adds r0, r4, #0
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	adds r4, r3, r0
	adds r3, r5, #0
	subs r3, #0xe8
	ands r3, r2
	adds r0, r3, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r2, sb
	muls r2, r0, r2
	adds r0, r2, #0
	asrs r0, r0, #8
	mov r2, r8
	adds r5, r2, r0
	lsls r0, r3, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r0, r0, #8
	ldr r2, [sp, #4]
	adds r2, r2, r0
	mov r8, r2
	movs r0, #0
	str r0, [sp]
	adds r0, r7, #0
	mov r1, sl
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0801E64C
	movs r0, #1
	str r0, [sp]
	adds r0, r7, #0
	mov r1, sl
	adds r2, r5, #0
	mov r3, r8
	bl sub_0801E64C
	movs r0, #2
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	mov r3, r8
	bl sub_0801E64C
	ldr r5, _0801E5F0 @ =gUnk_03003DE4
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r6, _0801E5F4 @ =gUnk_02017AA0
	adds r0, r0, r6
	movs r1, #0xa0
	lsls r1, r1, #4
	bl sub_0801D630
	ldr r2, _0801E5E8 @ =gUnk_02018EE0
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	adds r1, r0, r6
	movs r3, #0xa0
	mov sl, r3
_0801E5B0:
	ldr r7, [r2]
	ldr r6, [r2, #4]
	ldr r5, [r2, #8]
	adds r2, #0xc
	cmp r7, r6
	ble _0801E5C2
	adds r4, r7, #0
	adds r7, r6, #0
	adds r6, r4, #0
_0801E5C2:
	cmp r7, r5
	ble _0801E5CC
	adds r4, r7, #0
	adds r7, r5, #0
	adds r5, r4, #0
_0801E5CC:
	cmp r6, r5
	ble _0801E5D6
	adds r4, r6, #0
	adds r6, r5, #0
	adds r5, r4, #0
_0801E5D6:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	beq _0801E5F8
	strb r5, [r1]
	strb r7, [r1, #1]
	b _0801E60A
	.align 2, 0
_0801E5E4: .4byte 0x0000FFFF
_0801E5E8: .4byte gUnk_02018EE0
_0801E5EC: .4byte gUnk_080C9160
_0801E5F0: .4byte gUnk_03003DE4
_0801E5F4: .4byte gUnk_02017AA0
_0801E5F8:
	cmp r6, r7
	beq _0801E602
	strb r5, [r1]
	strb r6, [r1, #1]
	b _0801E60A
_0801E602:
	cmp r5, r7
	beq _0801E60A
	strb r7, [r1, #1]
	strb r7, [r1]
_0801E60A:
	movs r4, #1
	rsbs r4, r4, #0
	add sl, r4
	adds r1, #2
	mov r0, sl
	cmp r0, #0
	bgt _0801E5B0
	ldr r0, _0801E63C @ =gUnk_03003DE4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _0801E640 @ =gUnk_02017AA0
	adds r0, r0, r1
	ldr r1, _0801E644 @ =0x04000040
	ldr r2, _0801E648 @ =0xA2600001
	bl sub_0805622C
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801E63C: .4byte gUnk_03003DE4
_0801E640: .4byte gUnk_02017AA0
_0801E644: .4byte 0x04000040
_0801E648: .4byte 0xA2600001

	thumb_func_start sub_0801E64C
sub_0801E64C: @ 0x0801E64C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r3, #0
	ldr r7, _0801E6C4 @ =gUnk_02018EE0
	cmp r4, #0
	bge _0801E65E
	cmp r6, #0
	blt _0801E6C2
_0801E65E:
	cmp r4, #0x9f
	ble _0801E666
	cmp r6, #0x9f
	bgt _0801E6C2
_0801E666:
	cmp r4, r6
	ble _0801E676
	adds r1, r4, #0
	adds r4, r6, #0
	adds r6, r1, #0
	adds r1, r5, #0
	adds r5, r2, #0
	adds r2, r1, #0
_0801E676:
	cmp r4, r6
	beq _0801E6C2
	subs r0, r2, r5
	lsls r0, r0, #0x10
	subs r1, r6, r4
	bl Div
	adds r3, r0, #0
	cmp r4, #0
	bge _0801E694
	rsbs r0, r4, #0
	muls r0, r3, r0
	asrs r0, r0, #0x10
	adds r5, r5, r0
	movs r4, #0
_0801E694:
	cmp r6, #0x9f
	ble _0801E69A
	movs r6, #0x9f
_0801E69A:
	lsls r2, r5, #0x10
	lsls r0, r4, #1
	adds r0, r0, r4
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r7, r0, r7
_0801E6A8:
	cmp r5, #0
	bge _0801E6AE
	movs r5, #0
_0801E6AE:
	cmp r5, #0xf0
	ble _0801E6B4
	movs r5, #0xf0
_0801E6B4:
	str r5, [r7]
	adds r2, r2, r3
	asrs r5, r2, #0x10
	adds r4, #1
	adds r7, #0xc
	cmp r4, r6
	ble _0801E6A8
_0801E6C2:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801E6C4: .4byte gUnk_02018EE0

	thumb_func_start sub_0801E6C8
sub_0801E6C8: @ 0x0801E6C8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	subs r0, r4, #1
	cmp r0, #0x63
	bhi _0801E722
	movs r1, #0
	ldr r5, _0801E724 @ =gUnk_02022740
	ldr r3, _0801E728 @ =gUnk_02002C01
	movs r2, #0xf1
_0801E6DA:
	adds r0, r1, r3
	ldrb r6, [r0]
	cmp r4, r6
	bne _0801E6E4
	strb r2, [r0]
_0801E6E4:
	adds r1, #1
	cmp r1, #0x7f
	bls _0801E6DA
	ldr r0, [r5, #0xc]
	bl sub_08002632
	adds r1, r0, #0
	subs r0, r1, #1
	cmp r0, #0x7e
	bhi _0801E70A
	ldr r0, _0801E72C @ =gUnk_02002A40
	ldr r2, _0801E730 @ =0x000001C1
	adds r0, r0, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0xf1
	bne _0801E70A
	movs r0, #0xf2
	strb r0, [r1]
_0801E70A:
	movs r1, #0
	ldr r0, _0801E734 @ =gUnk_03003DF0
	movs r2, #0xf1
	adds r0, #0xb
_0801E712:
	ldrb r3, [r0]
	cmp r4, r3
	bne _0801E71A
	strb r2, [r0]
_0801E71A:
	adds r0, #0xc
	adds r1, #1
	cmp r1, #0x1f
	bls _0801E712
_0801E722:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801E724: .4byte gUnk_02022740
_0801E728: .4byte gUnk_02002C01
_0801E72C: .4byte gUnk_02002A40
_0801E730: .4byte 0x000001C1
_0801E734: .4byte gUnk_03003DF0

	thumb_func_start sub_0801E738
sub_0801E738: @ 0x0801E738
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E82C
	adds r0, r4, #0
	subs r0, #0x65
	cmp r0, #0x10
	bhi _0801E790
	adds r0, r4, #0
	bl sub_0801E8B0
	adds r1, r0, #0
	cmp r1, #0
	bge _0801E76E
	movs r1, #0
	ldr r0, _0801E794 @ =gUnk_02002A40
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r2, r0, r3
	ldrb r0, [r2]
	cmp r0, #0
	beq _0801E76E
_0801E764:
	adds r1, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801E764
_0801E76E:
	cmp r1, #0x11
	bhi _0801E790
	ldr r2, _0801E794 @ =gUnk_02002A40
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r0, r2, r3
	adds r0, r1, r0
	strb r4, [r0]
	adds r3, #0x13
	adds r0, r2, r3
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	cmp r0, #0x63
	ble _0801E78E
	movs r0, #0x63
_0801E78E:
	strb r0, [r1]
_0801E790:
	pop {r4, pc}
	.align 2, 0
_0801E794: .4byte gUnk_02002A40

	thumb_func_start sub_0801E798
sub_0801E798: @ 0x0801E798
	push {r4, lr}
	bl sub_0801E8B0
	adds r1, r0, #0
	cmp r1, #0
	blt _0801E7C4
	ldr r2, _0801E7C8 @ =gUnk_02002A40
	ldr r3, _0801E7CC @ =0x0000012B
	adds r0, r2, r3
	adds r3, r1, r0
	ldrb r0, [r3]
	subs r0, #1
	cmp r0, #0
	bgt _0801E7C2
	movs r4, #0x8c
	lsls r4, r4, #1
	adds r0, r2, r4
	adds r0, r1, r0
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
_0801E7C2:
	strb r0, [r3]
_0801E7C4:
	pop {r4, pc}
	.align 2, 0
_0801E7C8: .4byte gUnk_02002A40
_0801E7CC: .4byte 0x0000012B

	thumb_func_start sub_0801E7D0
sub_0801E7D0: @ 0x0801E7D0
	push {lr}
	bl sub_0801E8B0
	adds r1, r0, #0
	cmp r1, #0
	blt _0801E7F0
	ldr r0, _0801E7E8 @ =gUnk_02002A40
	ldr r2, _0801E7EC @ =0x0000012B
	adds r0, r0, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	b _0801E7F2
	.align 2, 0
_0801E7E8: .4byte gUnk_02002A40
_0801E7EC: .4byte 0x0000012B
_0801E7F0:
	movs r0, #0
_0801E7F2:
	pop {pc}

	thumb_func_start sub_0801E7F4
sub_0801E7F4: @ 0x0801E7F4
	push {lr}
	adds r1, r0, #0
	subs r0, r1, #1
	cmp r0, #0x63
	bhi _0801E80C
	ldr r0, _0801E808 @ =gUnk_02002C81
	bl sub_0801D5A8
	b _0801E80E
	.align 2, 0
_0801E808: .4byte gUnk_02002C81
_0801E80C:
	movs r0, #0
_0801E80E:
	pop {pc}

	thumb_func_start sub_0801E810
sub_0801E810: @ 0x0801E810
	push {lr}
	adds r1, r0, #0
	subs r0, r1, #1
	cmp r0, #0x63
	bhi _0801E828
	ldr r0, _0801E824 @ =gUnk_02002C8E
	bl sub_0801D5A8
	b _0801E82A
	.align 2, 0
_0801E824: .4byte gUnk_02002C8E
_0801E828:
	movs r0, #0
_0801E82A:
	pop {pc}

	thumb_func_start sub_0801E82C
sub_0801E82C: @ 0x0801E82C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _0801E8AC @ =gUnk_02002B54
	movs r5, #0
	adds r2, r1, #4
_0801E83C:
	ldrb r0, [r2, #0x13]
	adds r3, r1, #4
	mov sl, r3
	cmp r0, #0
	bne _0801E848
	strb r0, [r2]
_0801E848:
	adds r2, #1
	adds r5, #1
	cmp r5, #0x12
	bls _0801E83C
	movs r0, #0
	strb r0, [r1, #0x16]
	adds r2, r1, #0
	adds r2, #0x29
	strb r0, [r2]
	movs r5, #0
	movs r0, #0x17
	adds r0, r0, r1
	mov sb, r0
	movs r3, #0x18
	adds r3, r3, r1
	mov r8, r3
	adds r7, r1, #4
	adds r6, r1, #5
_0801E86C:
	mov r1, sl
	adds r0, r1, r5
	ldrb r0, [r0]
	subs r0, #0x65
	cmp r0, #0x10
	bls _0801E890
	movs r4, #0x12
	subs r4, r4, r5
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_0801D66C
	mov r0, r8
	mov r1, sb
	adds r2, r4, #0
	bl sub_0801D66C
_0801E890:
	movs r3, #1
	add sb, r3
	add r8, r3
	adds r7, #1
	adds r6, #1
	adds r5, #1
	cmp r5, #0x11
	bls _0801E86C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801E8AC: .4byte gUnk_02002B54

	thumb_func_start sub_0801E8B0
sub_0801E8B0: @ 0x0801E8B0
	push {lr}
	adds r2, r0, #0
	movs r1, #0
	ldr r3, _0801E8C4 @ =gUnk_02002B58
_0801E8B8:
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r2, r0
	bne _0801E8C8
	adds r0, r1, #0
	b _0801E8D2
	.align 2, 0
_0801E8C4: .4byte gUnk_02002B58
_0801E8C8:
	adds r1, #1
	cmp r1, #0x11
	bls _0801E8B8
	movs r0, #1
	rsbs r0, r0, #0
_0801E8D2:
	pop {pc}

	thumb_func_start sub_0801E8D4
sub_0801E8D4: @ 0x0801E8D4
	push {r4, r5, lr}
	movs r5, #0xa
_0801E8D8:
	adds r0, r5, #0
	bl sub_0801E7F4
	cmp r0, #0
	beq _0801E990
	adds r0, r5, #0
	bl sub_0801E810
	cmp r0, #0
	bne _0801E990
	ldr r1, _0801E910 @ =gUnk_080C9CBC
	lsls r0, r5, #3
	adds r0, r0, r1
	ldrb r1, [r0, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0801E914 @ =gUnk_080FE320
	adds r2, r0, r1
	ldrh r3, [r2, #0x12]
	ldrb r0, [r2, #0x10]
	cmp r0, #0xa
	bhi _0801E97C
	lsls r0, r0, #2
	ldr r1, _0801E918 @ =_0801E91C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801E910: .4byte gUnk_080C9CBC
_0801E914: .4byte gUnk_080FE320
_0801E918: .4byte _0801E91C
_0801E91C: @ jump table
	.4byte _0801E948 @ case 0
	.4byte _0801E94C @ case 1
	.4byte _0801E950 @ case 2
	.4byte _0801E954 @ case 3
	.4byte _0801E958 @ case 4
	.4byte _0801E95C @ case 5
	.4byte _0801E962 @ case 6
	.4byte _0801E968 @ case 7
	.4byte _0801E96E @ case 8
	.4byte _0801E972 @ case 9
	.4byte _0801E978 @ case 10
_0801E948:
	movs r4, #0
	b _0801E97C
_0801E94C:
	ldrb r4, [r2, #0x11]
	b _0801E97C
_0801E950:
	movs r4, #0xf
	b _0801E97C
_0801E954:
	movs r4, #0x10
	b _0801E97C
_0801E958:
	movs r4, #0x11
	b _0801E97C
_0801E95C:
	movs r4, #4
	movs r3, #0x83
	b _0801E97C
_0801E962:
	movs r4, #4
	movs r3, #0x84
	b _0801E97C
_0801E968:
	movs r4, #4
	movs r3, #0x87
	b _0801E97C
_0801E96E:
	movs r4, #4
	b _0801E97A
_0801E972:
	movs r4, #4
	movs r3, #0x8b
	b _0801E97C
_0801E978:
	movs r4, #5
_0801E97A:
	movs r3, #0x88
_0801E97C:
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_0807CB24
	cmp r0, #0
	beq _0801E990
	ldr r0, _0801E998 @ =gUnk_02002C8E
	adds r1, r5, #0
	bl sub_0801D5BC
_0801E990:
	adds r5, #1
	cmp r5, #0x64
	bls _0801E8D8
	pop {r4, r5, pc}
	.align 2, 0
_0801E998: .4byte gUnk_02002C8E

	thumb_func_start sub_0801E99C
sub_0801E99C: @ 0x0801E99C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08002632
	mov r8, r0
	ldr r1, _0801E9E4 @ =gUnk_08001DCC
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r7, [r0]
	movs r0, #0x67
	bl GetInventoryValue
	cmp r0, #0
	beq _0801EA56
	ldr r1, _0801E9E8 @ =gUnk_02002A40
	ldrb r0, [r7]
	ldrb r2, [r1, #8]
	cmp r0, r2
	bhi _0801EA56
	ldr r2, _0801E9EC @ =0x000001C1
	adds r0, r1, r2
	add r0, r8
	ldrb r5, [r0]
	subs r2, #0x80
	adds r0, r1, r2
	add r0, r8
	ldrb r6, [r0]
	adds r4, r6, r7
_0801E9D6:
	cmp r5, #0xf1
	beq _0801E9F6
	cmp r5, #0xf1
	bhi _0801E9F0
	cmp r5, #0
	beq _0801E9F6
	b _0801EA10
	.align 2, 0
_0801E9E4: .4byte gUnk_08001DCC
_0801E9E8: .4byte gUnk_02002A40
_0801E9EC: .4byte 0x000001C1
_0801E9F0:
	cmp r5, #0xf2
	beq _0801EA0A
	b _0801EA10
_0801E9F6:
	ldrb r5, [r4, #5]
	cmp r5, #0
	beq _0801EA10
	cmp r5, #0xff
	beq _0801EA14
	adds r0, r5, #0
	bl sub_0801E7F4
	cmp r0, #0
	beq _0801EA10
_0801EA0A:
	adds r4, #1
	adds r6, #1
	ldrb r5, [r4, #5]
_0801EA10:
	cmp r5, #0xff
	bne _0801EA1C
_0801EA14:
	adds r0, r7, #0
	bl sub_0801EA74
	adds r5, r0, #0
_0801EA1C:
	cmp r5, #0
	beq _0801EA32
	cmp r5, #0xf2
	beq _0801E9D6
	adds r0, r5, #0
	bl sub_0801E7F4
	cmp r0, #0
	beq _0801EA34
	movs r5, #0xf1
	b _0801E9D6
_0801EA32:
	movs r5, #0xf3
_0801EA34:
	ldr r1, _0801EA5C @ =gUnk_02002A40
	ldr r2, _0801EA60 @ =0x000001C1
	adds r0, r1, r2
	add r0, r8
	strb r5, [r0]
	subs r2, #0x80
	adds r0, r1, r2
	add r0, r8
	strb r6, [r0]
	bl sub_08000E50
	ldrb r4, [r7, #1]
	movs r1, #0x64
	bl __modsi3
	cmp r4, r0
	bhi _0801EA64
_0801EA56:
	movs r0, #0
	b _0801EA6E
	.align 2, 0
_0801EA5C: .4byte gUnk_02002A40
_0801EA60: .4byte 0x000001C1
_0801EA64:
	subs r0, r5, #1
	cmp r0, #0x63
	bls _0801EA6C
	movs r5, #0
_0801EA6C:
	adds r0, r5, #0
_0801EA6E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0801EA74
sub_0801EA74: @ 0x0801EA74
	push {r4, r5, r6, lr}
	bl sub_08000E50
	movs r1, #0x12
	bl __modsi3
	adds r5, r0, #0
	movs r6, #0
_0801EA84:
	ldr r0, _0801EA98 @ =gUnk_080CA11C
	adds r0, r5, r0
	ldrb r4, [r0]
	adds r0, r4, #0
	bl sub_0801E7F4
	cmp r0, #0
	bne _0801EA9C
	adds r0, r4, #0
	b _0801EAAE
	.align 2, 0
_0801EA98: .4byte gUnk_080CA11C
_0801EA9C:
	adds r0, r5, #1
	movs r1, #0x12
	bl __modsi3
	adds r5, r0, #0
	adds r6, #1
	cmp r6, #0x11
	bls _0801EA84
	movs r0, #0xf2
_0801EAAE:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0801EAB0
sub_0801EAB0: @ 0x0801EAB0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0801EACC @ =gUnk_080CA130
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_0801EACC: .4byte gUnk_080CA130

	thumb_func_start sub_0801EAD0
sub_0801EAD0: @ 0x0801EAD0
	push {lr}
	ldr r2, _0801EAE4 @ =gUnk_080CA148
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0801EAE4: .4byte gUnk_080CA148

	thumb_func_start sub_0801EAE8
sub_0801EAE8: @ 0x0801EAE8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801EAFC
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0801EAFC:
	ldr r1, _0801EB08 @ =gUnk_080CA130
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_0801EB08: .4byte gUnk_080CA130

	thumb_func_start sub_0801EB0C
sub_0801EB0C: @ 0x0801EB0C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne _0801EB1E
	adds r0, r1, #0
	bl sub_0804A7D4
	b _0801EB28
_0801EB1E:
	adds r0, r1, #0
	movs r1, #0xf1
	movs r2, #0
	bl sub_0804A7E0
_0801EB28:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801EB2C
sub_0801EB2C: @ 0x0801EB2C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	bhi _0801EB50
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	bne _0801EB50
	adds r0, r4, #0
	bl sub_0801ECFC
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
	b _0801EB60
_0801EB50:
	ldr r0, _0801EB64 @ =gUnk_080CA158
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0801EB60:
	pop {r4, pc}
	.align 2, 0
_0801EB64: .4byte gUnk_080CA158

	thumb_func_start sub_0801EB68
sub_0801EB68: @ 0x0801EB68
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_0801EB74
sub_0801EB74: @ 0x0801EB74
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_0801EB7C
sub_0801EB7C: @ 0x0801EB7C
	push {lr}
	bl sub_0806F3E4
	pop {pc}

	thumb_func_start sub_0801EB84
sub_0801EB84: @ 0x0801EB84
	push {lr}
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #2
	bl sub_08004276
	pop {pc}
	.align 2, 0

	thumb_func_start nullsub_3
nullsub_3: @ 0x0801EB98
	bx lr
	.align 2, 0

	thumb_func_start sub_0801EB9C
sub_0801EB9C: @ 0x0801EB9C
	push {lr}
	adds r2, r0, #0
	ldrb r3, [r2, #0x10]
	movs r0, #0x80
	ands r0, r3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0801EBC0
	movs r0, #0x80
	orrs r0, r3
	strb r0, [r2, #0x10]
	adds r2, #0x3a
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	b _0801EBC6
_0801EBC0:
	adds r0, r2, #0
	adds r0, #0x45
	strb r1, [r0]
_0801EBC6:
	pop {pc}

	thumb_func_start sub_0801EBC8
sub_0801EBC8: @ 0x0801EBC8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0801EBDE
	bl sub_08000E50
	movs r1, #3
	ands r0, r1
_0801EBDE:
	strb r0, [r4, #0x14]
	movs r0, #0x12
	strb r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0801ECFC
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
	pop {r4, pc}

	thumb_func_start sub_0801EBF4
sub_0801EBF4: @ 0x0801EBF4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801EC1E
	movs r0, #2
	strb r0, [r4, #0xc]
	bl sub_08000E50
	ldr r2, _0801EC28 @ =gUnk_080CA170
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_0801ED14
_0801EC1E:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0
_0801EC28: .4byte gUnk_080CA170

	thumb_func_start sub_0801EC2C
sub_0801EC2C: @ 0x0801EC2C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080AEF88
	adds r0, r5, #0
	bl sub_08004274
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801EC7E
	adds r0, r5, #0
	bl sub_0801EDEC
	cmp r0, #0
	beq _0801EC78
	ldr r1, _0801EC74 @ =gUnk_080CA174
	ldrb r0, [r5, #0xa]
	adds r0, r0, r1
	ldrb r4, [r0]
	bl sub_08000E50
	movs r1, #3
	ands r0, r1
	cmp r4, r0
	bhi _0801EC78
	strb r1, [r5, #0xc]
	ldrb r1, [r5, #0x14]
	adds r1, #4
	adds r0, r5, #0
	bl sub_08004260
	b _0801EC7E
	.align 2, 0
_0801EC74: .4byte gUnk_080CA174
_0801EC78:
	adds r0, r5, #0
	bl sub_0801ECFC
_0801EC7E:
	pop {r4, r5, pc}

	thumb_func_start sub_0801EC80
sub_0801EC80: @ 0x0801EC80
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801ECD8
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_0804A98C
	adds r2, r0, #0
	cmp r2, #0
	beq _0801ECD8
	ldrb r0, [r4, #0x15]
	strb r0, [r2, #0x15]
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #2
	ldr r0, _0801ECF0 @ =gUnk_080CA176
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r3, [r2, #0x2e]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	movs r0, #1
	ldrsb r0, [r1, r0]
	ldrh r1, [r2, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	ldr r0, _0801ECF4 @ =0x0000FFFD
	strh r0, [r2, #0x36]
	ldrb r1, [r5]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r5]
	ldr r0, _0801ECF8 @ =0x0000018D
	bl sub_08004488
_0801ECD8:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801ECEC
	adds r0, r4, #0
	bl sub_0801ECFC
_0801ECEC:
	pop {r4, r5, pc}
	.align 2, 0
_0801ECF0: .4byte gUnk_080CA176
_0801ECF4: .4byte 0x0000FFFD
_0801ECF8: .4byte 0x0000018D

	thumb_func_start sub_0801ECFC
sub_0801ECFC: @ 0x0801ECFC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	bl sub_08000E50
	movs r1, #0x38
	ands r0, r1
	adds r0, #0x18
	strb r0, [r4, #0xe]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801ED14
sub_0801ED14: @ 0x0801ED14
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _0801ED7E
	adds r0, r5, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _0801ED4C
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _0801ED46
	bl sub_08000E50
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	bne _0801ED46
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	bne _0801EDC4
_0801ED46:
	bl sub_08000E50
	b _0801EDD0
_0801ED4C:
	bl sub_08000E50
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _0801ED78
	adds r0, r5, #0
	bl sub_08049EE4
	adds r4, r0, #0
	bl sub_08000E50
	ldr r2, _0801ED74 @ =gUnk_080CA17E
	movs r1, #1
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, r0, r4
	b _0801EDD0
	.align 2, 0
_0801ED74: .4byte gUnk_080CA17E
_0801ED78:
	bl sub_08000E50
	b _0801EDD0
_0801ED7E:
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	bne _0801EDC4
	adds r0, r5, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _0801ED9A
	bl sub_08000E50
	b _0801EDD0
_0801ED9A:
	bl sub_08000E50
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _0801EDC4
	adds r0, r5, #0
	bl sub_08049EE4
	adds r4, r0, #0
	bl sub_08000E50
	ldr r2, _0801EDC0 @ =gUnk_080CA17E
	movs r1, #1
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, r0, r4
	b _0801EDD0
	.align 2, 0
_0801EDC0: .4byte gUnk_080CA17E
_0801EDC4:
	ldr r0, _0801EDE8 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_080045C4
	adds r0, #4
_0801EDD0:
	movs r1, #0x18
	ands r0, r1
	strb r0, [r5, #0x15]
	ldrb r0, [r5, #0x15]
	lsrs r0, r0, #3
	strb r0, [r5, #0x14]
	ldrb r1, [r5, #0x14]
	adds r0, r5, #0
	bl sub_08004260
	pop {r4, r5, pc}
	.align 2, 0
_0801EDE8: .4byte gUnk_020000B0

	thumb_func_start sub_0801EDEC
sub_0801EDEC: @ 0x0801EDEC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_08049DF4
	adds r1, r0, #0
	cmp r1, #0
	beq _0801EE12
	adds r0, r4, #0
	bl sub_080045C4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	ldrb r4, [r4, #0x15]
	cmp r0, r4
	bne _0801EE12
	movs r0, #1
	b _0801EE14
_0801EE12:
	movs r0, #0
_0801EE14:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801EE18
sub_0801EE18: @ 0x0801EE18
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080012DC
	adds r4, r0, #0
	cmp r4, #0
	beq _0801EE9E
	cmp r4, #2
	beq _0801EE40
	ldr r0, _0801EE3C @ =gUnk_080012C8
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
	b _0801EEE0
	.align 2, 0
_0801EE3C: .4byte gUnk_080012C8
_0801EE40:
	adds r2, r5, #0
	adds r2, #0x3a
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r4, r0
	beq _0801EE9E
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _0801EE9E
	cmp r0, #1
	bgt _0801EE66
	cmp r0, #0
	beq _0801EE6C
	b _0801EE9E
_0801EE66:
	cmp r0, #2
	beq _0801EE96
	b _0801EE9E
_0801EE6C:
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801EE9E
	movs r0, #6
	strb r0, [r5, #0xc]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	movs r0, #0x20
	strh r0, [r5, #0x24]
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0x5c
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #5
	bl sub_08004260
	b _0801EE9E
_0801EE96:
	adds r0, r5, #0
	bl sub_080043A8
	b _0801EEE0
_0801EE9E:
	adds r0, r5, #0
	adds r0, #0x81
	strb r4, [r0]
	ldr r4, _0801EED0 @ =gUnk_080CA21C
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	ldr r0, [r5, #0x68]
	ldrb r0, [r0, #0xa]
	cmp r0, #0x1c
	bne _0801EED4
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	b _0801EEE0
	.align 2, 0
_0801EED0: .4byte gUnk_080CA21C
_0801EED4:
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bne _0801EEE0
	adds r0, r5, #0
	bl sub_0801FB34
_0801EEE0:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0801EEE4
sub_0801EEE4: @ 0x0801EEE4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0801EF0C
	cmp r0, #1
	bgt _0801EEF8
	cmp r0, #0
	beq _0801EEFE
	b _0801EF38
_0801EEF8:
	cmp r0, #2
	beq _0801EF28
	b _0801EF38
_0801EEFE:
	adds r0, r4, #0
	bl sub_0801F3AC
	ldr r0, _0801EF08 @ =gUnk_080CA234
	b _0801EF14
	.align 2, 0
_0801EF08: .4byte gUnk_080CA234
_0801EF0C:
	adds r0, r4, #0
	bl sub_0801F764
	ldr r0, _0801EF24 @ =gUnk_080CA25C
_0801EF14:
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _0801EF38
	.align 2, 0
_0801EF24: .4byte gUnk_080CA25C
_0801EF28:
	ldr r0, _0801EF3C @ =gUnk_080CA288
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0801EF38:
	pop {r4, pc}
	.align 2, 0
_0801EF3C: .4byte gUnk_080CA288

	thumb_func_start sub_0801EF40
sub_0801EF40: @ 0x0801EF40
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0801EF68
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x8e
	beq _0801EF58
	cmp r0, #0x95
	bne _0801EF68
_0801EF58:
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	movs r0, #0
	strb r1, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x45
	strb r0, [r1]
_0801EF68:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r6, [r0]
	adds r7, r0, #0
	cmp r6, #0
	beq _0801EFB0
	subs r0, #4
	ldrb r0, [r0]
	cmp r0, #0x94
	bne _0801EF94
	adds r0, r4, #0
	bl sub_0801FB68
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
	adds r0, r4, #0
	movs r1, #6
	bl sub_08004260
	b _0801EFC0
_0801EF94:
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, r6
	beq _0801EFC4
	adds r0, r4, #0
	bl sub_0801FB68
	adds r0, r4, #0
	movs r1, #6
	bl sub_08004260
	b _0801EFC4
_0801EFB0:
	adds r0, r4, #0
	bl sub_0804AA1C
	str r6, [r4, #0x20]
	adds r0, r4, #0
	movs r1, #9
	bl sub_08004260
_0801EFC0:
	adds r5, r4, #0
	adds r5, #0x80
_0801EFC4:
	ldrb r0, [r7]
	strb r0, [r5]
	ldr r1, _0801EFD4 @ =gUnk_080CA21C
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801EFD4: .4byte gUnk_080CA21C

	thumb_func_start sub_0801EFD8
sub_0801EFD8: @ 0x0801EFD8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	bne _0801F000
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801F000
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
	adds r0, r4, #0
	movs r1, #6
	bl sub_08004260
	b _0801F028
_0801F000:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #8
	beq _0801F018
	adds r0, r4, #0
	bl sub_0801FB68
	adds r0, r4, #0
	movs r1, #8
	bl sub_08004260
_0801F018:
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	adds r0, r4, #0
	bl sub_08004274
_0801F028:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F02C
sub_0801F02C: @ 0x0801F02C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #6
	bne _0801F03E
	adds r0, r4, #0
	bl sub_08004274
_0801F03E:
	adds r0, r4, #0
	bl sub_08001318
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F048
sub_0801F048: @ 0x0801F048
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0801F068
	adds r0, r4, #0
	bl sub_0804A7D4
	b _0801F082
_0801F068:
	cmp r0, #1
	bne _0801F078
	adds r0, r4, #0
	movs r1, #0xf2
	movs r2, #0
	bl sub_0804A7E0
	b _0801F082
_0801F078:
	adds r0, r4, #0
	movs r1, #0xf1
	movs r2, #0
	bl sub_0804A7E0
_0801F082:
	pop {r4, pc}

	thumb_func_start sub_0801F084
sub_0801F084: @ 0x0801F084
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801F09A
	adds r0, r4, #0
	bl sub_08004274
_0801F09A:
	adds r0, r4, #0
	bl sub_08001242
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F0A4
sub_0801F0A4: @ 0x0801F0A4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r2, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r0, #0x3b
	strb r1, [r0]
	adds r4, #0x82
	strb r2, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_4
nullsub_4: @ 0x0801F0C4
	bx lr
	.align 2, 0

	thumb_func_start sub_0801F0C8
sub_0801F0C8: @ 0x0801F0C8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08004274
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F12A
	movs r4, #3
	movs r0, #3
	strb r0, [r5, #0xc]
	bl sub_08000E50
	ands r0, r4
	adds r0, #0xc
	strb r0, [r5, #0xe]
	bl sub_08000E50
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r5, #0x15]
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	movs r1, #2
	bl sub_08004260
_0801F12A:
	pop {r4, r5, pc}

	thumb_func_start sub_0801F12C
sub_0801F12C: @ 0x0801F12C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801FBD0
	cmp r0, #0
	beq _0801F140
	adds r0, r4, #0
	bl sub_0801F328
	b _0801F1AC
_0801F140:
	ldrb r1, [r4, #0xf]
	adds r0, r1, #1
	strb r0, [r4, #0xf]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0801F158
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
_0801F158:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F1AC
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x38
	bl sub_08049F64
	cmp r0, #0
	beq _0801F18A
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0801FBE4
	b _0801F1AC
_0801F18A:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x48
	bl sub_08049F64
	cmp r0, #0
	beq _0801F1A6
	bl sub_08000E50
	movs r1, #3
	ands r0, r1
	adds r0, #0xc
	strb r0, [r4, #0xe]
	b _0801F1AC
_0801F1A6:
	adds r0, r4, #0
	bl sub_0801F328
_0801F1AC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F1B0
sub_0801F1B0: @ 0x0801F1B0
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801F1FA
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F1DE
	movs r0, #1
	eors r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x5a
	strb r0, [r1]
	adds r0, #0xd1
	bl sub_08004488
_0801F1DE:
	adds r0, r4, #0
	bl sub_080AEFE0
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0801F200
	adds r0, r4, #0
	bl sub_08004274
	b _0801F200
_0801F1FA:
	adds r0, r4, #0
	bl sub_08004274
_0801F200:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F226
	adds r0, r4, #0
	bl sub_0801FBD0
	cmp r0, #0
	beq _0801F220
	adds r0, r4, #0
	bl sub_0801F328
	b _0801F226
_0801F220:
	adds r0, r4, #0
	bl sub_0801F340
_0801F226:
	pop {r4, pc}

	thumb_func_start sub_0801F228
sub_0801F228: @ 0x0801F228
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F246
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
_0801F246:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F250
sub_0801F250: @ 0x0801F250
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F26C
	adds r0, r4, #0
	bl sub_0801F360
_0801F26C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F270
sub_0801F270: @ 0x0801F270
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xf]
	adds r0, r1, #1
	strb r0, [r4, #0xf]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0801F28C
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
_0801F28C:
	adds r0, r4, #0
	bl sub_080AF160
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0801FBD0
	cmp r0, #0
	bne _0801F2CA
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F2CA
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801F2C6
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
	b _0801F2CA
_0801F2C6:
	movs r0, #8
	strb r0, [r4, #0xe]
_0801F2CA:
	pop {r4, pc}

	thumb_func_start sub_0801F2CC
sub_0801F2CC: @ 0x0801F2CC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F2F6
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
_0801F2F6:
	pop {r4, pc}

	thumb_func_start sub_0801F2F8
sub_0801F2F8: @ 0x0801F2F8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F324
	adds r0, r4, #0
	bl sub_0801F340
	adds r0, r4, #0
	bl sub_0804AA1C
_0801F324:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F328
sub_0801F328: @ 0x0801F328
	push {lr}
	movs r1, #6
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #5
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801F340
sub_0801F340: @ 0x0801F340
	push {lr}
	movs r1, #5
	strb r1, [r0, #0xc]
	movs r1, #0x3c
	strb r1, [r0, #0xe]
	movs r1, #0x20
	strh r1, [r0, #0x24]
	adds r2, r0, #0
	adds r2, #0x3f
	movs r1, #0x5c
	strb r1, [r2]
	movs r1, #2
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801F360
sub_0801F360: @ 0x0801F360
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #7
	strb r0, [r4, #0xc]
	bl sub_08000E50
	movs r1, #0x38
	ands r0, r1
	adds r0, #0xb4
	strb r0, [r4, #0xe]
	bl sub_08000E50
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F3AC
sub_0801F3AC: @ 0x0801F3AC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #9
	beq _0801F426
	cmp r0, #0
	beq _0801F426
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0801F408
	adds r5, r4, #0
	adds r5, #0x82
	ldrb r0, [r5]
	cmp r0, #0
	bne _0801F3DE
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x48
	bl sub_08049F64
	cmp r0, #0
	beq _0801F400
_0801F3DE:
	ldrb r2, [r4, #0xc]
	cmp r2, #1
	bne _0801F426
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	strb r2, [r5]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	b _0801F426
_0801F400:
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	bne _0801F426
	b _0801F40E
_0801F408:
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	bne _0801F416
_0801F40E:
	adds r0, r4, #0
	bl sub_0801F328
	b _0801F426
_0801F416:
	cmp r0, #7
	bne _0801F426
	movs r0, #8
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #7
	bl sub_08004260
_0801F426:
	pop {r4, r5, pc}

	thumb_func_start sub_0801F428
sub_0801F428: @ 0x0801F428
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0804A720
	movs r4, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	bl sub_08000E50
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r0, #0x3b
	strb r1, [r0]
	adds r0, #2
	strb r4, [r0]
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _0801F488
	movs r0, #3
	strb r0, [r5, #0xc]
	movs r0, #0x1e
	strb r0, [r5, #0xf]
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x18]
	adds r0, r5, #0
	movs r1, #2
	bl sub_08004260
_0801F488:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0801F48C
sub_0801F48C: @ 0x0801F48C
	push {lr}
	bl sub_08004274
	pop {pc}

	thumb_func_start sub_0801F494
sub_0801F494: @ 0x0801F494
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F4E8
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
_0801F4E8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F4EC
sub_0801F4EC: @ 0x0801F4EC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F504
	movs r0, #4
	strb r0, [r4, #0xc]
_0801F504:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F508
sub_0801F508: @ 0x0801F508
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0801FBD0
	cmp r0, #0
	beq _0801F51C
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0
	b _0801F55C
_0801F51C:
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	adds r5, r0, #0
	ands r5, r1
	movs r0, #7
	ands r5, r0
	cmp r5, #0
	bne _0801F566
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x38
	bl sub_08049F64
	cmp r0, #0
	beq _0801F566
	bl sub_08000E50
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0801F556
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0801FBE4
	b _0801F580
_0801F556:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x78
_0801F55C:
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0801F730
	b _0801F580
_0801F566:
	cmp r5, #4
	bne _0801F574
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
_0801F574:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
_0801F580:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0801F584
sub_0801F584: @ 0x0801F584
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801F5CE
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F5B2
	movs r0, #1
	eors r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x5b
	strb r0, [r1]
	adds r0, #0xd0
	bl sub_08004488
_0801F5B2:
	adds r0, r4, #0
	bl sub_080AEFE0
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0801F5D4
	adds r0, r4, #0
	bl sub_08004274
	b _0801F5D4
_0801F5CE:
	adds r0, r4, #0
	bl sub_08004274
_0801F5D4:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F618
	adds r0, r4, #0
	bl sub_0801FBD0
	cmp r0, #0
	beq _0801F5FC
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0801F730
	b _0801F618
_0801F5FC:
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xf]
	movs r0, #0x20
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x5c
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
_0801F618:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F61C
sub_0801F61C: @ 0x0801F61C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xf]
	subs r0, #1
	strb r0, [r1, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F630
	movs r0, #4
	strb r0, [r1, #0xc]
_0801F630:
	adds r0, r1, #0
	bl sub_08004274
	pop {pc}

	thumb_func_start sub_0801F638
sub_0801F638: @ 0x0801F638
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F684
	movs r0, #8
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_0801F684:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F688
sub_0801F688: @ 0x0801F688
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x83
	ldrb r0, [r5]
	cmp r0, #0
	beq _0801F69A
	subs r0, #1
	strb r0, [r5]
_0801F69A:
	adds r0, r4, #0
	bl sub_0801FBD0
	cmp r0, #0
	bne _0801F6AA
	ldrb r0, [r5]
	cmp r0, #0
	beq _0801F6C2
_0801F6AA:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080AF160
	adds r0, r4, #0
	bl sub_08004274
	b _0801F6C8
_0801F6C2:
	adds r0, r4, #0
	bl sub_0801F748
_0801F6C8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0801F6CC
sub_0801F6CC: @ 0x0801F6CC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F6F6
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
_0801F6F6:
	pop {r4, pc}

	thumb_func_start sub_0801F6F8
sub_0801F6F8: @ 0x0801F6F8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F72E
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x20
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_0804AA1C
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
_0801F72E:
	pop {r4, pc}

	thumb_func_start sub_0801F730
sub_0801F730: @ 0x0801F730
	push {lr}
	movs r1, #7
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #5
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801F748
sub_0801F748: @ 0x0801F748
	push {lr}
	movs r1, #2
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	subs r1, #6
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0, #0x18]
	movs r1, #4
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801F764
sub_0801F764: @ 0x0801F764
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0xa
	beq _0801F7D6
	cmp r0, #0
	beq _0801F7D6
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0801F7B8
	ldrb r6, [r4, #0xc]
	cmp r6, #1
	bne _0801F7D6
	adds r5, r4, #0
	adds r5, #0x82
	ldrb r0, [r5]
	cmp r0, #0
	bne _0801F79C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x48
	bl sub_08049F64
	cmp r0, #0
	beq _0801F7D6
_0801F79C:
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	strb r6, [r5]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	b _0801F7D6
_0801F7B8:
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	bne _0801F7C6
	adds r0, r4, #0
	bl sub_0801F730
	b _0801F7D6
_0801F7C6:
	cmp r0, #8
	bne _0801F7D6
	movs r0, #9
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #7
	bl sub_08004260
_0801F7D6:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0801F7D8
sub_0801F7D8: @ 0x0801F7D8
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r5, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	bl sub_08000E50
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r0, #0x3b
	strb r1, [r0]
	adds r4, #0x82
	strb r5, [r4]
	pop {r4, r5, pc}

	thumb_func_start sub_0801F7FC
sub_0801F7FC: @ 0x0801F7FC
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0801F83E
	adds r5, r4, #0
	adds r5, #0x82
	ldrb r0, [r5]
	cmp r0, #0
	bne _0801F822
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x48
	bl sub_08049F64
	cmp r0, #0
	beq _0801F83E
_0801F822:
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #1
	strb r0, [r5]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_0801F83E:
	pop {r4, r5, pc}

	thumb_func_start sub_0801F840
sub_0801F840: @ 0x0801F840
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F880
	adds r0, r4, #0
	bl sub_0801FB14
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
_0801F880:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F884
sub_0801F884: @ 0x0801F884
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0801F898
	subs r0, #1
	strb r0, [r4, #0xf]
	b _0801F8BC
_0801F898:
	adds r0, r4, #0
	movs r1, #0x1b
	bl sub_0804A9FC
	adds r1, r0, #0
	cmp r1, #0
	beq _0801F8BC
	movs r0, #0x40
	strb r0, [r1, #0xb]
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0xa5
	strb r0, [r1]
	adds r0, #0xee
	bl sub_08004488
_0801F8BC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F8C0
sub_0801F8C0: @ 0x0801F8C0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0801FBD0
	cmp r0, #0
	beq _0801F8D4
	adds r0, r4, #0
	bl sub_0801FAE0
	b _0801F938
_0801F8D4:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	bne _0801F8E8
	adds r0, r4, #0
	bl sub_0801F730
	b _0801F938
_0801F8E8:
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	adds r5, r0, #0
	ands r5, r1
	movs r0, #7
	ands r5, r0
	cmp r5, #0
	bne _0801F91C
	ldr r0, _0801F918 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0x38
	bl sub_08049F1C
	cmp r0, #0
	beq _0801F91C
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0801FBE4
	b _0801F938
	.align 2, 0
_0801F918: .4byte gUnk_020000B0
_0801F91C:
	cmp r5, #4
	bne _0801F92C
	ldr r0, _0801F93C @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
_0801F92C:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
_0801F938:
	pop {r4, r5, pc}
	.align 2, 0
_0801F93C: .4byte gUnk_020000B0

	thumb_func_start sub_0801F940
sub_0801F940: @ 0x0801F940
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801F988
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F966
	movs r0, #1
	eors r0, r1
	strb r0, [r2]
	ldr r0, _0801F984 @ =0x0000012B
	bl sub_08004488
_0801F966:
	adds r0, r4, #0
	bl sub_080AEFE0
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0801F98E
	adds r0, r4, #0
	bl sub_08004274
	b _0801F98E
	.align 2, 0
_0801F984: .4byte 0x0000012B
_0801F988:
	adds r0, r4, #0
	bl sub_08004274
_0801F98E:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F9C2
	adds r0, r4, #0
	bl sub_0801FBD0
	cmp r0, #0
	beq _0801F9AE
	adds r0, r4, #0
	bl sub_0801FAE0
	b _0801F9C2
_0801F9AE:
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xf]
	movs r0, #0x20
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
_0801F9C2:
	pop {r4, pc}

	thumb_func_start sub_0801F9C4
sub_0801F9C4: @ 0x0801F9C4
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xf]
	subs r0, #1
	strb r0, [r1, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F9D8
	movs r0, #4
	strb r0, [r1, #0xc]
_0801F9D8:
	adds r0, r1, #0
	bl sub_08004274
	pop {pc}

	thumb_func_start sub_0801F9E0
sub_0801F9E0: @ 0x0801F9E0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801FA2C
	movs r0, #8
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_0801FA2C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801FA30
sub_0801FA30: @ 0x0801FA30
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801FBD0
	cmp r0, #0
	beq _0801FA54
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080AF160
	adds r0, r4, #0
	bl sub_08004274
	b _0801FA74
_0801FA54:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	bne _0801FA6E
	movs r0, #9
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #7
	bl sub_08004260
	b _0801FA74
_0801FA6E:
	adds r0, r4, #0
	bl sub_0801FAF8
_0801FA74:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801FA78
sub_0801FA78: @ 0x0801FA78
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801FAA8
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
	adds r0, r4, #0
	bl sub_0804AA1C
_0801FAA8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801FAAC
sub_0801FAAC: @ 0x0801FAAC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801FADC
	adds r0, r4, #0
	bl sub_0801FB14
	movs r0, #0x20
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_0804AA1C
_0801FADC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801FAE0
sub_0801FAE0: @ 0x0801FAE0
	push {lr}
	movs r1, #7
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #5
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801FAF8
sub_0801FAF8: @ 0x0801FAF8
	push {lr}
	movs r1, #2
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	subs r1, #6
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0, #0x18]
	movs r1, #4
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801FB14
sub_0801FB14: @ 0x0801FB14
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
	pop {r4, pc}

	thumb_func_start sub_0801FB34
sub_0801FB34: @ 0x0801FB34
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, [r4, #0x68]
	cmp r3, #0
	beq _0801FB62
	ldr r2, _0801FB64 @ =gUnk_080CA2B4
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	adds r0, r0, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r4, #0
	adds r1, r3, #0
	movs r3, #1
	bl sub_0806FA90
	ldr r1, [r4, #0x68]
	adds r1, #0x63
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
_0801FB62:
	pop {r4, pc}
	.align 2, 0
_0801FB64: .4byte gUnk_080CA2B4

	thumb_func_start sub_0801FB68
sub_0801FB68: @ 0x0801FB68
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0801FB88
	cmp r0, #1
	bgt _0801FB7C
	cmp r0, #0
	beq _0801FB82
	b _0801FBC8
_0801FB7C:
	cmp r0, #2
	beq _0801FBB6
	b _0801FBC8
_0801FB82:
	movs r0, #9
	strb r0, [r4, #0xc]
	b _0801FBC8
_0801FB88:
	movs r0, #0xa
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	b _0801FBC8
_0801FBB6:
	movs r0, #0xa
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x5c
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0804AA1C
_0801FBC8:
	movs r0, #0
	str r0, [r4, #0x20]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801FBD0
sub_0801FBD0: @ 0x0801FBD0
	push {lr}
	bl sub_080002B8
	cmp r0, #0x10
	beq _0801FBDE
	movs r0, #0
	b _0801FBE0
_0801FBDE:
	movs r0, #1
_0801FBE0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801FBE4
sub_0801FBE4: @ 0x0801FBE4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08004260
	pop {r4, pc}

	thumb_func_start sub_0801FC08
sub_0801FC08: @ 0x0801FC08
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0801FC24 @ =gUnk_080CA49C
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_0801FC24: .4byte gUnk_080CA49C

	thumb_func_start sub_0801FC28
sub_0801FC28: @ 0x0801FC28
	push {lr}
	ldr r2, _0801FC3C @ =gUnk_080CA4B4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0801FC3C: .4byte gUnk_080CA4B4

	thumb_func_start sub_0801FC40
sub_0801FC40: @ 0x0801FC40
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _0801FC5C
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	bne _0801FC6E
	adds r1, r4, #0
	adds r1, #0x74
	movs r0, #1
	strh r0, [r1]
	b _0801FC6E
_0801FC5C:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801FC6E
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0801FC6E:
	ldr r1, _0801FC78 @ =gUnk_080CA49C
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_0801FC78: .4byte gUnk_080CA49C

	thumb_func_start sub_0801FC7C
sub_0801FC7C: @ 0x0801FC7C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne _0801FC8E
	adds r0, r1, #0
	bl sub_0804A7D4
	b _0801FC98
_0801FC8E:
	adds r0, r1, #0
	movs r1, #0xf1
	movs r2, #0
	bl sub_0804A7E0
_0801FC98:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801FC9C
sub_0801FC9C: @ 0x0801FC9C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	bl sub_08000E50
	strb r0, [r4, #0xe]
	pop {r4, pc}

	thumb_func_start sub_0801FCB0
sub_0801FCB0: @ 0x0801FCB0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801FD28
	bl sub_08000E50
	movs r1, #0x1f
	ands r1, r0
	adds r0, r5, #0
	bl sub_0801FE68
	cmp r0, #0
	beq _0801FD1C
	movs r0, #2
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x18]
	ldr r0, _0801FD14 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_080045C4
	adds r4, r0, #0
	bl sub_08000E50
	ldr r2, _0801FD18 @ =gUnk_080CA4C8
	movs r1, #1
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, r0, r4
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08004260
	adds r0, r5, #0
	bl UpdateSpriteOrderAndFlip
	b _0801FD28
	.align 2, 0
_0801FD14: .4byte gUnk_020000B0
_0801FD18: .4byte gUnk_080CA4C8
_0801FD1C:
	bl sub_08000E50
	movs r1, #0x18
	ands r0, r1
	adds r0, #8
	strb r0, [r5, #0xe]
_0801FD28:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0801FD2C
sub_0801FD2C: @ 0x0801FD2C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801FD66
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0801FD54
	adds r1, r4, #0
	adds r1, #0x74
	movs r0, #0xb4
	b _0801FD5A
_0801FD54:
	adds r1, r4, #0
	adds r1, #0x74
	movs r0, #0x6e
_0801FD5A:
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
	b _0801FD7C
_0801FD66:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801FD7C
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
_0801FD7C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801FD80
sub_0801FD80: @ 0x0801FD80
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801FED4
	adds r0, r4, #0
	bl sub_08004274
	adds r1, r4, #0
	adds r1, #0x74
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801FDB2
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_0801FDB2:
	pop {r4, pc}

	thumb_func_start sub_0801FDB4
sub_0801FDB4: @ 0x0801FDB4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801FED4
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801FDE0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xf0
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0xf4
	ands r0, r1
	strb r0, [r4, #0x18]
_0801FDE0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801FDE4
sub_0801FDE4: @ 0x0801FDE4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r7, _0801FE04 @ =gUnk_020000B0
	ldr r0, [r7]
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080002D4
	cmp r0, #0
	beq _0801FE34
	b _0801FE5C
	.align 2, 0
_0801FE04: .4byte gUnk_020000B0
_0801FE08:
	movs r0, #0x10
	rsbs r0, r0, #0
	adds r1, r0, #0
	ands r4, r1
	adds r0, r4, #0
	adds r0, #8
	strh r0, [r6, #0x2e]
	ands r5, r1
	adds r0, r5, #0
	adds r0, #8
	strh r0, [r6, #0x32]
	ldr r0, _0801FE30 @ =gUnk_020000B0
	ldr r0, [r0]
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x38
	strb r1, [r0]
	movs r0, #1
	b _0801FE5E
	.align 2, 0
_0801FE30: .4byte gUnk_020000B0
_0801FE34:
	ldr r0, [r7]
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080002BC
	adds r3, r0, #0
	ldr r1, _0801FE60 @ =gUnk_080CA4CA
	ldrh r0, [r1]
	ldr r2, _0801FE64 @ =0x0000FFFF
	cmp r0, r2
	beq _0801FE5C
_0801FE4E:
	ldrh r0, [r1]
	adds r1, #2
	cmp r0, r3
	beq _0801FE08
	ldrh r0, [r1]
	cmp r0, r2
	bne _0801FE4E
_0801FE5C:
	movs r0, #0
_0801FE5E:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801FE60: .4byte gUnk_080CA4CA
_0801FE64: .4byte 0x0000FFFF

	thumb_func_start sub_0801FE68
sub_0801FE68: @ 0x0801FE68
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r6, r1, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	bne _0801FE82
_0801FE7E:
	movs r0, #0
	b _0801FEC4
_0801FE82:
	ldr r0, _0801FECC @ =gUnk_020000B0
	ldr r0, [r0]
	ldr r5, [r0, #0x2c]
	ldr r4, [r0, #0x30]
	ldr r1, _0801FED0 @ =gUnk_080C9160
	lsls r0, r6, #4
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #0xb
	mov sb, r0
	lsls r0, r6, #4
	adds r0, #0x80
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0xb
	mov r8, r0
	movs r6, #0
_0801FEA8:
	add r5, sb
	mov r2, r8
	subs r4, r4, r2
	asrs r1, r5, #0x10
	asrs r2, r4, #0x10
	adds r0, r7, #0
	bl sub_0801FDE4
	cmp r0, #0
	beq _0801FE7E
	adds r6, #1
	cmp r6, #7
	bls _0801FEA8
	movs r0, #1
_0801FEC4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801FECC: .4byte gUnk_020000B0
_0801FED0: .4byte gUnk_080C9160

	thumb_func_start sub_0801FED4
sub_0801FED4: @ 0x0801FED4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	bne _0801FEEA
	adds r1, r4, #0
	adds r1, #0x74
	movs r0, #1
	strh r0, [r1]
_0801FEEA:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	lsls r1, r1, #5
	strh r1, [r4, #0x24]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0801FF28
	ldrb r1, [r4, #0xf]
	adds r0, r1, #1
	strb r0, [r4, #0xf]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0801FF4E
	ldr r0, _0801FF24 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_0800132C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
	b _0801FF4E
	.align 2, 0
_0801FF24: .4byte gUnk_020000B0
_0801FF28:
	adds r0, r1, #0
	adds r0, #0x40
	strh r0, [r4, #0x24]
	ldrb r1, [r4, #0xf]
	adds r0, r1, #1
	strb r0, [r4, #0xf]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0801FF4E
	ldr r0, _0801FF58 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_0800132C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
_0801FF4E:
	adds r0, r4, #0
	bl sub_080AEF88
	pop {r4, pc}
	.align 2, 0
_0801FF58: .4byte gUnk_020000B0

	thumb_func_start sub_0801FF5C
sub_0801FF5C: @ 0x0801FF5C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0801FF84
	ldr r1, _0801FF80 @ =gUnk_080CA570
	adds r0, r4, #0
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	b _0801FF94
	.align 2, 0
_0801FF80: .4byte gUnk_080CA570
_0801FF84:
	ldr r0, _0801FF98 @ =gUnk_080CA588
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0801FF94:
	pop {r4, pc}
	.align 2, 0
_0801FF98: .4byte gUnk_080CA588

	thumb_func_start sub_0801FF9C
sub_0801FF9C: @ 0x0801FF9C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0801FFD4 @ =gUnk_080CA590
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801FFD2
	ldr r2, _0801FFD8 @ =gUnk_080CA5B8
	ldrb r1, [r4, #0xf]
	adds r0, r1, #1
	strb r0, [r4, #0xf]
	movs r0, #0x30
	ands r0, r1
	lsrs r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x36]
_0801FFD2:
	pop {r4, pc}
	.align 2, 0
_0801FFD4: .4byte gUnk_080CA590
_0801FFD8: .4byte gUnk_080CA5B8

	thumb_func_start sub_0801FFDC
sub_0801FFDC: @ 0x0801FFDC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x82
	ldrb r0, [r6]
	cmp r0, #0
	beq _08020068
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	cmp r1, #0x94
	bne _08020018
	movs r0, #3
	movs r1, #1
	bl CreateEnemy
	adds r5, r0, #0
	cmp r5, #0
	beq _08020010
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806FA24
	ldrh r0, [r5, #0x36]
	subs r0, #8
	strh r0, [r5, #0x36]
_08020010:
	movs r0, #0
	strb r0, [r6]
	movs r0, #2
	b _0802001E
_08020018:
	cmp r1, #0x9b
	bne _08020042
	movs r0, #1
_0802001E:
	strb r0, [r4, #0x14]
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r1, #0
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r2, r4, #0
	adds r2, #0x3d
	movs r0, #0xe2
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x81
	strb r1, [r0]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
	b _08020068
_08020042:
	cmp r1, #0x80
	bne _08020068
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _08020068
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	strh r1, [r4, #0x24]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x78
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08004274
_08020068:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802007A
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0802007A:
	ldr r1, _08020084 @ =gUnk_080CA570
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, r6, pc}
	.align 2, 0
_08020084: .4byte gUnk_080CA570

	thumb_func_start sub_08020088
sub_08020088: @ 0x08020088
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	bhi _0802009C
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	beq _080200AC
_0802009C:
	ldr r0, _080200B0 @ =gUnk_080CA5BC
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_080200AC:
	pop {r4, pc}
	.align 2, 0
_080200B0: .4byte gUnk_080CA5BC

	thumb_func_start sub_080200B4
sub_080200B4: @ 0x080200B4
	push {lr}
	adds r2, r0, #0
	movs r1, #1
	strb r1, [r2, #0xd]
	movs r0, #0x3c
	strb r0, [r2, #0x1d]
	ldrb r3, [r2, #0x14]
	cmp r3, #0
	bne _080200E2
	strb r1, [r2, #0x14]
	movs r0, #5
	strb r0, [r2, #0xc]
	adds r1, r2, #0
	adds r1, #0x3f
	movs r0, #0x71
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x81
	strb r3, [r0]
	ldrb r1, [r2, #0x14]
	adds r0, r2, #0
	bl sub_08004260
_080200E2:
	pop {pc}

	thumb_func_start sub_080200E4
sub_080200E4: @ 0x080200E4
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_080200EC
sub_080200EC: @ 0x080200EC
	push {lr}
	bl sub_0806F3E4
	pop {pc}

	thumb_func_start sub_080200F4
sub_080200F4: @ 0x080200F4
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_5
nullsub_5: @ 0x08020100
	bx lr
	.align 2, 0

	thumb_func_start sub_08020104
sub_08020104: @ 0x08020104
	push {lr}
	adds r2, r0, #0
	ldrb r3, [r2, #0x10]
	movs r0, #0x80
	ands r0, r3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _08020128
	movs r0, #0x80
	orrs r0, r3
	strb r0, [r2, #0x10]
	adds r2, #0x3a
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	b _0802012E
_08020128:
	adds r0, r2, #0
	adds r0, #0x45
	strb r1, [r0]
_0802012E:
	pop {pc}

	thumb_func_start sub_08020130
sub_08020130: @ 0x08020130
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r5, #1
	strb r5, [r4, #0xc]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	bl sub_08000E50
	strb r0, [r4, #0xf]
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	movs r0, #0x12
	strb r0, [r4, #0x1c]
	bl sub_08000E50
	ands r0, r5
	movs r1, #0xfe
	cmp r0, #0
	beq _08020162
	movs r1, #2
_08020162:
	adds r0, r4, #0
	adds r0, #0x80
	strb r1, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	movs r0, #0
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08020180
sub_08020180: @ 0x08020180
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x83
	ldrb r0, [r5]
	cmp r0, #0
	beq _08020192
	subs r0, #1
	strb r0, [r5]
_08020192:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _080201D4
	ldrb r0, [r5]
	cmp r0, #0
	bne _080201D4
	ldrb r1, [r4, #0xf]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080201D4
	ldr r0, _0802021C @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0x30
	bl sub_08049F1C
	cmp r0, #0
	beq _080201D4
	movs r0, #2
	strb r0, [r4, #0xc]
	bl sub_08000E50
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	movs r0, #0xa0
	strh r0, [r4, #0x24]
_080201D4:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802020C
	movs r0, #0x10
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08020604
	bl sub_08000E50
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	bne _0802020C
	bl sub_08000E50
	movs r1, #1
	ands r1, r0
	movs r2, #0xfe
	cmp r1, #0
	beq _08020206
	movs r2, #2
_08020206:
	adds r0, r4, #0
	adds r0, #0x80
	strb r2, [r0]
_0802020C:
	adds r0, r4, #0
	bl sub_080AEFE0
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, r5, pc}
	.align 2, 0
_0802021C: .4byte gUnk_020000B0

	thumb_func_start sub_08020220
sub_08020220: @ 0x08020220
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08020284
	ldrb r0, [r5, #0xe]
	subs r1, r0, #1
	strb r1, [r5, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	beq _0802024C
	lsrs r0, r0, #0x1c
	movs r1, #3
	ands r0, r1
	movs r1, #4
	subs r1, r1, r0
	adds r0, r5, #0
	bl sub_08004276
	b _08020292
_0802024C:
	movs r0, #3
	strb r0, [r5, #0xc]
	movs r0, #0x78
	strb r0, [r5, #0xe]
	movs r0, #0xc0
	strh r0, [r5, #0x24]
	ldr r0, _0802027C @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_080045C4
	adds r4, r0, #0
	bl sub_08000E50
	ldr r2, _08020280 @ =gUnk_080CA5D4
	movs r1, #1
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, r0, r4
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5, #0x15]
	b _0802028A
	.align 2, 0
_0802027C: .4byte gUnk_020000B0
_08020280: .4byte gUnk_080CA5D4
_08020284:
	adds r0, r5, #0
	bl sub_080205F8
_0802028A:
	adds r0, r5, #0
	movs r1, #4
	bl sub_08004276
_08020292:
	pop {r4, r5, pc}

	thumb_func_start sub_08020294
sub_08020294: @ 0x08020294
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _080202F8
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080202B4
	adds r0, r4, #0
	bl sub_080205F8
_080202B4:
	ldrb r1, [r4, #0xe]
	cmp r1, #0x3c
	bls _080202E6
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080202C8
	ldrh r0, [r4, #0x24]
	adds r0, #4
	strh r0, [r4, #0x24]
_080202C8:
	ldr r0, _080202F0 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080202E6
	ldr r0, _080202F4 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
_080202E6:
	adds r0, r4, #0
	bl sub_080AEFE0
	b _080202FE
	.align 2, 0
_080202F0: .4byte gUnk_030010A0
_080202F4: .4byte gUnk_020000B0
_080202F8:
	adds r0, r4, #0
	bl sub_080205F8
_080202FE:
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004276
	pop {r4, pc}

	thumb_func_start sub_08020308
sub_08020308: @ 0x08020308
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _08020332
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xe]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x78
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08004274
	b _0802034E
_08020332:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08020340
	ldrh r0, [r4, #0x24]
	subs r0, #8
	strh r0, [r4, #0x24]
_08020340:
	adds r0, r4, #0
	bl sub_080AEFE0
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004276
_0802034E:
	pop {r4, pc}

	thumb_func_start sub_08020350
sub_08020350: @ 0x08020350
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x14]
	cmp r0, #2
	beq _08020398
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #0
	bne _0802037C
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0xf0
	strb r0, [r4, #0xe]
	movs r0, #0xa
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x71
	strb r0, [r1]
_0802037C:
	ldrb r0, [r4, #0x15]
	cmp r0, #0xff
	bne _0802038A
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r4, #0x15]
_0802038A:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
	b _080203BE
_08020398:
	movs r1, #0xe0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080203BE
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #0x96
	strb r0, [r4, #0xe]
	movs r0, #0xa
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x71
	strb r0, [r1]
_080203BE:
	pop {r4, pc}

	thumb_func_start sub_080203C0
sub_080203C0: @ 0x080203C0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _080203DC
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080203DC
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_080203DC:
	adds r0, r4, #0
	bl sub_0800442E
	cmp r0, #0
	bne _080203F2
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08020418
_080203F2:
	movs r0, #9
	strb r0, [r4, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0804AA1C
	movs r0, #5
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #5
	bl sub_08004260
_08020418:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802041C
sub_0802041C: @ 0x0802041C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08020438
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08020438
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08020438:
	adds r0, r4, #0
	bl sub_0800442E
	cmp r0, #0
	bne _0802044E
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08020466
_0802044E:
	movs r0, #8
	strb r0, [r4, #0xc]
	movs r0, #0xf0
	strb r0, [r4, #0xe]
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0804AA1C
_08020466:
	pop {r4, pc}

	thumb_func_start sub_08020468
sub_08020468: @ 0x08020468
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080204A6
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080204A2
	movs r0, #9
	strb r0, [r4, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r0, #4
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
	b _080204A6
_080204A2:
	movs r0, #1
	strb r0, [r4, #0xe]
_080204A6:
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080204C4
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r5]
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
_080204C4:
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080204D6
	adds r0, r4, #0
	bl sub_0800442E
	b _080204DC
_080204D6:
	adds r0, r4, #0
	bl sub_080AEF88
_080204DC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080204E0
sub_080204E0: @ 0x080204E0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802051A
	movs r2, #0
	movs r1, #1
	strb r1, [r4, #0xc]
	adds r3, r4, #0
	adds r3, #0x3f
	movs r0, #0x70
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x82
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	strb r2, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	b _0802053A
_0802051A:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802052A
	adds r0, r4, #0
	bl sub_0800442E
	b _0802053A
_0802052A:
	movs r1, #0xe0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	adds r0, r4, #0
	bl sub_080AEF88
_0802053A:
	pop {r4, pc}

	thumb_func_start sub_0802053C
sub_0802053C: @ 0x0802053C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xf0
	strb r0, [r4, #0xe]
	movs r0, #0x28
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x18]
	movs r2, #4
	rsbs r2, r2, #0
	ands r2, r0
	orrs r2, r1
	ldrb r3, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	movs r3, #0x40
	orrs r0, r3
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	orrs r1, r3
	strb r1, [r4, #0x1b]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r2, r0
	strb r2, [r4, #0x18]
	movs r0, #0x20
	strh r0, [r4, #0x24]
	bl sub_08000E50
	movs r1, #0x10
	ands r0, r1
	adds r0, #8
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08004260
	pop {r4, pc}

	thumb_func_start sub_08020590
sub_08020590: @ 0x08020590
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r1, r0, #1
	strb r1, [r4, #0xe]
	movs r5, #0xff
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _080205AE
	adds r0, r4, #0
	bl sub_0805E7BC
	b _080205F2
_080205AE:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bhi _080205C8
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_080205C8:
	ldr r0, [r4, #0x34]
	ldr r1, _080205F4 @ =0xFFFF4000
	adds r0, r0, r1
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r5
	cmp r0, #0
	bne _080205F2
	movs r0, #0x28
	strb r0, [r4, #0xf]
	bl sub_08000E50
	movs r1, #0x10
	ands r0, r1
	adds r0, #8
	strb r0, [r4, #0x15]
_080205F2:
	pop {r4, r5, pc}
	.align 2, 0
_080205F4: .4byte 0xFFFF4000

	thumb_func_start sub_080205F8
sub_080205F8: @ 0x080205F8
	movs r1, #4
	strb r1, [r0, #0xc]
	movs r1, #0x3c
	strb r1, [r0, #0xe]
	bx lr
	.align 2, 0

	thumb_func_start sub_08020604
sub_08020604: @ 0x08020604
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08020624
	bl sub_08000E50
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _08020624
	adds r0, r4, #0
	bl sub_08049EE4
	b _08020632
_08020624:
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	ldrb r1, [r4, #0x15]
	adds r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
_08020632:
	strb r0, [r4, #0x15]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08020638
sub_08020638: @ 0x08020638
	push {lr}
	ldr r1, _08020644 @ =gUnk_080CA66C
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_08020644: .4byte gUnk_080CA66C

	thumb_func_start sub_08020648
sub_08020648: @ 0x08020648
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08020AD0
	ldr r1, _08020664 @ =gUnk_080CA684
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_08020664: .4byte gUnk_080CA684

	thumb_func_start sub_08020668
sub_08020668: @ 0x08020668
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x3f
	ldrb r0, [r2]
	cmp r0, #0x22
	bne _080206A2
	adds r1, r4, #0
	adds r1, #0x45
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080206A2
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	movs r0, #0x23
	strb r0, [r2]
	ldrb r1, [r4, #0x14]
	adds r1, #8
	adds r0, r4, #0
	bl sub_08004260
_080206A2:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x80
	beq _080206D0
	ldrb r0, [r4, #0xc]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080206D0
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0xb4
	strb r0, [r4, #0xe]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	adds r1, #0x10
	adds r0, r4, #0
	bl sub_08004260
_080206D0:
	ldrb r0, [r5]
	cmp r0, #0x93
	bne _080206DC
	adds r0, r4, #0
	bl sub_08020648
_080206DC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080206E0
sub_080206E0: @ 0x080206E0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08020AD0
	cmp r0, #0
	beq _080206F6
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strb r0, [r1]
	b _08020730
_080206F6:
	adds r0, r4, #0
	bl sub_08020B6C
	cmp r0, #0
	beq _0802072A
	adds r1, r4, #0
	adds r1, #0x42
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	adds r5, r4, #0
	adds r5, #0x3e
	ldrb r1, [r5]
	adds r0, r4, #0
	movs r2, #0xa
	bl sub_080AE58C
	adds r0, r4, #0
	adds r0, #0x46
	ldrh r1, [r0]
	ldrb r2, [r5]
	adds r0, r4, #0
	movs r3, #0xa
	bl sub_080AE7E8
	b _08020730
_0802072A:
	adds r0, r4, #0
	bl sub_08001324
_08020730:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08020734
sub_08020734: @ 0x08020734
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	bhi _08020764
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	bne _08020764
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	adds r1, #0x10
	adds r0, r4, #0
	bl sub_08004260
	b _08020774
_08020764:
	ldr r0, _08020778 @ =gUnk_080CA6A4
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08020774:
	pop {r4, pc}
	.align 2, 0
_08020778: .4byte gUnk_080CA6A4

	thumb_func_start sub_0802077C
sub_0802077C: @ 0x0802077C
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_08020788
sub_08020788: @ 0x08020788
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_08020790
sub_08020790: @ 0x08020790
	push {lr}
	bl sub_0806F3E4
	pop {pc}

	thumb_func_start sub_08020798
sub_08020798: @ 0x08020798
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_6
nullsub_6: @ 0x080207A4
	bx lr
	.align 2, 0

	thumb_func_start sub_080207A8
sub_080207A8: @ 0x080207A8
	push {lr}
	movs r3, #4
	movs r1, #4
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x80
	orrs r1, r2
	strb r1, [r0, #0x10]
	movs r1, #0x29
	adds r1, r1, r0
	mov ip, r1
	ldrb r2, [r1]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r3
	mov r2, ip
	strb r1, [r2]
	adds r3, r0, #0
	adds r3, #0x3a
	ldrb r2, [r3]
	movs r1, #0xfb
	ands r1, r2
	strb r1, [r3]
	ldrb r1, [r0, #0x15]
	movs r2, #0x10
	eors r1, r2
	strb r1, [r0, #0x15]
	movs r1, #0xc0
	lsls r1, r1, #9
	str r1, [r0, #0x20]
	movs r1, #0x80
	strh r1, [r0, #0x24]
	ldrb r1, [r0, #0x14]
	adds r1, #0x10
	bl sub_08004260
	pop {pc}

	thumb_func_start sub_080207F4
sub_080207F4: @ 0x080207F4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r1, #0
	movs r0, #0x30
	strb r0, [r4, #0x16]
	movs r0, #0x12
	strb r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x84
	strb r1, [r0]
	bl sub_08000E50
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08020A30
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08020820
sub_08020820: @ 0x08020820
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0802084A
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _0802084A
	strb r5, [r4, #0xe]
_0802084A:
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08020872
	movs r0, #0xef
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08020872
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
_08020872:
	pop {r4, r5, pc}

	thumb_func_start sub_08020874
sub_08020874: @ 0x08020874
	push {lr}
	ldr r2, _08020888 @ =gUnk_080CA6BC
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08020888: .4byte gUnk_080CA6BC

	thumb_func_start sub_0802088C
sub_0802088C: @ 0x0802088C
	movs r1, #1
	strb r1, [r0, #0xd]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	ldr r1, _080208B0 @ =gLinkEntity
	ldrb r1, [r1, #0x14]
	adds r2, r0, #0
	adds r2, #0x85
	strb r1, [r2]
	adds r0, #0x29
	ldrb r2, [r0]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_080208B0: .4byte gLinkEntity

	thumb_func_start sub_080208B4
sub_080208B4: @ 0x080208B4
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r4, r2, #0
	adds r4, #0x85
	ldrb r0, [r4]
	ldr r5, _080208EC @ =gLinkEntity
	ldrb r1, [r5, #0x14]
	subs r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	beq _080208E6
	ldrb r0, [r2, #0x14]
	adds r0, r0, r1
	movs r1, #3
	ands r0, r1
	strb r0, [r2, #0x14]
	ldrb r1, [r2, #0x14]
	adds r1, #0x10
	adds r0, r2, #0
	bl sub_08004260
_080208E6:
	ldrb r0, [r5, #0x14]
	strb r0, [r4]
	pop {r4, r5, pc}
	.align 2, 0
_080208EC: .4byte gLinkEntity

	thumb_func_start sub_080208F0
sub_080208F0: @ 0x080208F0
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

	thumb_func_start sub_08020904
sub_08020904: @ 0x08020904
	push {lr}
	movs r1, #4
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x80
	orrs r1, r2
	strb r1, [r0, #0x10]
	movs r1, #0xff
	strb r1, [r0, #0x15]
	ldrb r1, [r0, #0x14]
	adds r1, #0x10
	bl sub_08004260
	pop {pc}

	thumb_func_start sub_08020920
sub_08020920: @ 0x08020920
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08020936
	adds r0, r1, #0
	bl sub_08020A30
_08020936:
	pop {pc}

	thumb_func_start sub_08020938
sub_08020938: @ 0x08020938
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r5, #0x80
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08020950
	adds r0, r4, #0
	bl sub_08004274
_08020950:
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #0
	bne _08020980
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08020978
	movs r0, #5
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x14]
	adds r1, #0xc
	adds r0, r4, #0
	bl sub_08004260
_08020978:
	adds r0, r4, #0
	bl sub_08078930
	b _0802099C
_08020980:
	cmp r0, #1
	bne _0802098C
	movs r0, #0x82
	lsls r0, r0, #1
	bl sub_08004488
_0802098C:
	ldrb r1, [r4, #0x15]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _0802099C
	adds r0, r4, #0
	bl sub_080AEFE0
_0802099C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080209A0
sub_080209A0: @ 0x080209A0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080209E2
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x22
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08020A30
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #3
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
	b _080209F0
_080209E2:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080209F0
	adds r0, r4, #0
	bl sub_08078930
_080209F0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080209F4
sub_080209F4: @ 0x080209F4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xe0
	lsls r1, r1, #5
	bl sub_08003FC4
	cmp r0, #0
	bne _08020A14
	movs r1, #7
	movs r0, #7
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
_08020A14:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	bne _08020A24
	adds r0, r4, #0
	bl sub_08004274
_08020A24:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08020A28
sub_08020A28: @ 0x08020A28
	push {lr}
	bl sub_08004274
	pop {pc}

	thumb_func_start sub_08020A30
sub_08020A30: @ 0x08020A30
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x84
	ldrb r0, [r5]
	cmp r0, #1
	bhi _08020A68
	bl sub_08000E50
	ldr r2, _08020A64 @ =gUnk_080CA6CC
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #0xe]
	cmp r0, #0
	bne _08020A68
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	b _08020A7A
	.align 2, 0
_08020A64: .4byte gUnk_080CA6CC
_08020A68:
	movs r0, #0
	movs r1, #1
	strb r1, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x84
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08020A7C
_08020A7A:
	pop {r4, r5, pc}

	thumb_func_start sub_08020A7C
sub_08020A7C: @ 0x08020A7C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_08000E50
	ldrb r5, [r6, #0x15]
	ldr r4, _08020ACC @ =gUnk_080CA6D4
	movs r1, #3
	bl __modsi3
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r5, r0
	movs r4, #0x18
	ands r5, r4
	adds r0, r6, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08020ABA
	adds r0, r6, #0
	bl sub_08049EE4
	adds r0, #4
	ands r0, r4
	movs r1, #0x10
	eors r1, r5
	cmp r1, r0
	bne _08020ABA
	adds r5, r1, #0
_08020ABA:
	strb r5, [r6, #0x15]
	lsrs r0, r5, #3
	strb r0, [r6, #0x14]
	ldrb r1, [r6, #0x14]
	adds r0, r6, #0
	bl sub_08004260
	pop {r4, r5, r6, pc}
	.align 2, 0
_08020ACC: .4byte gUnk_080CA6D4

	thumb_func_start sub_08020AD0
sub_08020AD0: @ 0x08020AD0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_08020B6C
	cmp r0, #0
	beq _08020B68
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08020B68
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r3, _08020B5C @ =gRoomControls
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
	adds r6, r4, #0
	adds r6, #0x38
	ldrb r1, [r6]
	adds r0, r5, #0
	bl sub_080002B0
	lsls r0, r0, #0x10
	ldr r1, _08020B60 @ =0xFF8F0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08020B68
	movs r0, #6
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrh r2, [r4, #0x2e]
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	adds r0, #8
	strh r0, [r4, #0x2e]
	ldrh r0, [r4, #0x32]
	ands r1, r0
	adds r1, #0xd
	strh r1, [r4, #0x32]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	ldrb r1, [r4, #0x14]
	adds r1, #0x14
	adds r0, r4, #0
	bl sub_08004260
	ldr r0, _08020B64 @ =0x00004034
	ldrb r2, [r6]
	adds r1, r5, #0
	bl sub_0800015E
	movs r0, #1
	b _08020B6A
	.align 2, 0
_08020B5C: .4byte gRoomControls
_08020B60: .4byte 0xFF8F0000
_08020B64: .4byte 0x00004034
_08020B68:
	movs r0, #0
_08020B6A:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08020B6C
sub_08020B6C: @ 0x08020B6C
	push {lr}
	adds r0, #0x58
	ldrb r0, [r0]
	subs r0, #0x10
	cmp r0, #3
	bls _08020B7C
	movs r0, #0
	b _08020B7E
_08020B7C:
	movs r0, #1
_08020B7E:
	pop {pc}

	thumb_func_start sub_08020B80
sub_08020B80: @ 0x08020B80
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08020B9C @ =gUnk_080CAA98
	bl sub_0800129E
	movs r3, #0x16
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_08020B9C: .4byte gUnk_080CAA98

	thumb_func_start sub_08020BA0
sub_08020BA0: @ 0x08020BA0
	push {lr}
	ldr r2, _08020BB4 @ =gUnk_080CAAB0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08020BB4: .4byte gUnk_080CAAB0

	thumb_func_start sub_08020BB8
sub_08020BB8: @ 0x08020BB8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r2, #0x7f
	adds r1, r2, #0
	ands r1, r0
	cmp r1, #0x1c
	beq _08020BE0
	cmp r1, #0x1c
	bgt _08020BD4
	cmp r1, #0x16
	beq _08020C24
	b _08020D32
_08020BD4:
	cmp r1, #0x4b
	beq _08020C68
	cmp r1, #0x4c
	bne _08020BDE
	b _08020CF0
_08020BDE:
	b _08020D32
_08020BE0:
	movs r0, #0xb
	strb r0, [r4, #0xc]
	ldr r1, _08020C20 @ =gUnk_080CAB0C
	ldrb r0, [r4, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x51
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r2, #0x10
	eors r2, r0
	adds r2, #4
	movs r0, #0x18
	ands r2, r0
	asrs r2, r2, #3
	adds r0, r4, #0
	movs r1, #8
	bl sub_08021218
	adds r0, r4, #0
	bl sub_08021588
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
	b _08020CE2
	.align 2, 0
_08020C20: .4byte gUnk_080CAB0C
_08020C24:
	movs r0, #0xb
	strb r0, [r4, #0xc]
	ldr r1, _08020C64 @ =gUnk_080CAB10
	ldrb r0, [r4, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x51
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r2, #0x10
	eors r2, r0
	adds r2, #4
	movs r0, #0x18
	ands r2, r0
	asrs r2, r2, #3
	adds r0, r4, #0
	movs r1, #8
	bl sub_08021218
	adds r0, r4, #0
	bl sub_08021588
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
	b _08020CE2
	.align 2, 0
_08020C64: .4byte gUnk_080CAB10
_08020C68:
	ldrb r0, [r4, #0xc]
	adds r6, r4, #0
	adds r6, #0x45
	adds r5, r4, #0
	adds r5, #0x78
	cmp r0, #0xd
	beq _08020D58
	cmp r0, #0xf
	beq _08020D58
	cmp r0, #0x13
	beq _08020D58
	cmp r0, #0x12
	beq _08020D58
	adds r0, r4, #0
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r0, #4
	blt _08020CC0
	cmp r0, #6
	ble _08020CAC
	cmp r0, #0xc
	bgt _08020CC0
	cmp r0, #8
	blt _08020CC0
	ldr r0, _08020CA8 @ =gUnk_080CAB04
	ldrb r1, [r4, #0xa]
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x7a
	b _08020CC6
	.align 2, 0
_08020CA8: .4byte gUnk_080CAB04
_08020CAC:
	ldr r0, _08020CBC @ =gUnk_080CAB00
	ldrb r1, [r4, #0xa]
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x7a
	b _08020CC6
	.align 2, 0
_08020CBC: .4byte gUnk_080CAB00
_08020CC0:
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #0
_08020CC6:
	strb r0, [r1]
	movs r0, #0xa
	strb r0, [r4, #0xc]
	ldrb r2, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #0xb
	bl sub_08021218
	ldr r0, _08020CEC @ =0x0000015D
	bl sub_08004488
	adds r0, r4, #0
	bl sub_08021588
_08020CE2:
	adds r6, r4, #0
	adds r6, #0x45
	adds r5, r4, #0
	adds r5, #0x78
	b _08020D58
	.align 2, 0
_08020CEC: .4byte 0x0000015D
_08020CF0:
	ldrb r0, [r4, #0xc]
	adds r6, r4, #0
	adds r6, #0x45
	adds r5, r4, #0
	adds r5, #0x78
	cmp r0, #0xf
	bne _08020D58
	movs r1, #0xff
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _08020D0E
	adds r0, #0x41
	ldrb r0, [r0]
	adds r1, r2, #0
	ands r1, r0
_08020D0E:
	cmp r1, #2
	bne _08020D28
	ldr r0, _08020D24 @ =gUnk_080CAB08
	ldrb r1, [r4, #0xa]
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_080213D0
	b _08020D58
	.align 2, 0
_08020D24: .4byte gUnk_080CAB08
_08020D28:
	adds r0, r4, #0
	movs r1, #0
	bl sub_080213D0
	b _08020D58
_08020D32:
	adds r2, r4, #0
	adds r2, #0x45
	adds r0, r4, #0
	adds r0, #0x78
	ldrb r1, [r2]
	adds r6, r2, #0
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r1, r0
	beq _08020D58
	adds r0, r4, #0
	bl sub_08021588
	adds r0, r4, #0
	bl sub_08021390
	adds r0, r4, #0
	bl sub_0804AA1C
_08020D58:
	ldrb r0, [r6]
	strb r0, [r5]
	ldr r1, _08020D68 @ =gUnk_080CAA98
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, r6, pc}
	.align 2, 0
_08020D68: .4byte gUnk_080CAA98

	thumb_func_start nullsub_129
nullsub_129: @ 0x08020D6C
	bx lr
	.align 2, 0

	thumb_func_start sub_08020D70
sub_08020D70: @ 0x08020D70
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x75
	strb r1, [r0]
	subs r0, #0x30
	ldrb r1, [r0]
	adds r0, #0x33
	strb r1, [r0]
	movs r0, #0xff
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #2
	bl sub_08021218
	pop {r4, pc}

	thumb_func_start sub_08020D9C
sub_08020D9C: @ 0x08020D9C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08020DB0
	adds r0, r4, #0
	bl sub_080213F0
_08020DB0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08020DB4
sub_08020DB4: @ 0x08020DB4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08020DD0
	adds r0, r4, #0
	bl sub_08021390
_08020DD0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08020DD4
sub_08020DD4: @ 0x08020DD4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080214FC
	cmp r0, #0
	beq _08020DE8
	adds r0, r4, #0
	bl sub_080213F0
	b _08020E26
_08020DE8:
	adds r1, r4, #0
	adds r1, #0x76
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08020E08
	movs r0, #5
	strb r0, [r4, #0xc]
	ldrb r2, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #5
	bl sub_08021218
	b _08020E26
_08020E08:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08020E1A
	adds r0, r4, #0
	bl sub_08021540
_08020E1A:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_080042B8
_08020E26:
	pop {r4, pc}

	thumb_func_start sub_08020E28
sub_08020E28: @ 0x08020E28
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08020E44
	adds r0, r4, #0
	bl sub_080213B0
_08020E44:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08020E48
sub_08020E48: @ 0x08020E48
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080214FC
	cmp r0, #0
	beq _08020E5C
	adds r0, r4, #0
	bl sub_080213F0
	b _08020E76
_08020E5C:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08020E76
	adds r0, r4, #0
	bl sub_080213B0
_08020E76:
	pop {r4, pc}

	thumb_func_start sub_08020E78
sub_08020E78: @ 0x08020E78
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08020E94
	adds r0, r4, #0
	bl sub_08021390
_08020E94:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08020E98
sub_08020E98: @ 0x08020E98
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #1
	movs r2, #0x38
	bl sub_08049F64
	cmp r0, #0
	beq _08020EF6
	ldr r5, _08020EDC @ =gUnk_020000B0
	ldr r1, [r5]
	adds r0, r4, #0
	bl sub_0802169C
	cmp r0, #0
	bne _08020ECA
	ldr r0, [r5]
	adds r1, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _08020EE0
_08020ECA:
	movs r0, #8
	strb r0, [r4, #0xc]
	ldrb r2, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #7
	bl sub_08021218
	b _08020F26
	.align 2, 0
_08020EDC: .4byte gUnk_020000B0
_08020EE0:
	ldrb r0, [r4, #0x15]
	movs r1, #0x10
	eors r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0802124C
	adds r0, r4, #0
	bl sub_08021644
	b _08020F26
_08020EF6:
	ldr r0, _08020F08 @ =gUnk_020000B0
	ldr r1, [r0]
	cmp r1, #0
	bne _08020F0C
	adds r0, r4, #0
	bl sub_08021414
	b _08020F26
	.align 2, 0
_08020F08: .4byte gUnk_020000B0
_08020F0C:
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_0802124C
	adds r0, r4, #0
	bl sub_08021644
_08020F26:
	pop {r4, r5, pc}

	thumb_func_start sub_08020F28
sub_08020F28: @ 0x08020F28
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08020F44
	adds r0, r4, #0
	bl sub_08021400
_08020F44:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08020F48
sub_08020F48: @ 0x08020F48
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #1
	movs r2, #0x48
	bl sub_08049F64
	cmp r0, #0
	beq _08020FA4
	ldr r5, _08020F98 @ =gUnk_020000B0
	ldr r1, [r5]
	adds r0, r4, #0
	bl sub_08021664
	cmp r0, #0
	beq _08020F9C
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #9
	bl sub_0804A044
	adds r2, r0, #0
	cmp r2, #0xff
	beq _08020F9C
	movs r0, #0xe
	strb r0, [r4, #0xc]
	lsrs r2, r2, #3
	adds r0, r4, #0
	movs r1, #0xd
	bl sub_08021218
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A98C
	cmp r0, #0
	beq _08020FAA
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
	b _08020FAA
	.align 2, 0
_08020F98: .4byte gUnk_020000B0
_08020F9C:
	adds r0, r4, #0
	bl sub_08021424
	b _08020FAA
_08020FA4:
	adds r0, r4, #0
	bl sub_08021390
_08020FAA:
	pop {r4, r5, pc}

	thumb_func_start sub_08020FAC
sub_08020FAC: @ 0x08020FAC
	push {lr}
	adds r2, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08020FDC
	adds r1, r2, #0
	adds r1, #0x7a
	ldrb r0, [r1]
	cmp r0, #0
	beq _08020FCC
	subs r0, #1
	strb r0, [r1]
	b _08020FE2
_08020FCC:
	adds r1, r2, #0
	adds r1, #0x3d
	movs r0, #0xf8
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_08021390
	b _08020FE2
_08020FDC:
	adds r0, r2, #0
	bl sub_080042B8
_08020FE2:
	pop {pc}

	thumb_func_start sub_08020FE4
sub_08020FE4: @ 0x08020FE4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802100C
	movs r0, #0xc
	strb r0, [r4, #0xc]
	ldrb r2, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #9
	bl sub_08021218
	adds r0, r4, #0
	bl sub_0804AA1C
_0802100C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08021010
sub_08021010: @ 0x08021010
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08021034
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x56
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080213F0
_08021034:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08021038
sub_08021038: @ 0x08021038
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _08021066
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	beq _08021066
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_0804A98C
	cmp r0, #0
	beq _0802105E
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
_0802105E:
	movs r0, #0x87
	lsls r0, r0, #1
	bl sub_08004488
_08021066:
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08021090
	adds r0, r4, #0
	bl sub_08021588
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	cmp r0, #0
	beq _08021088
	subs r0, #1
	b _080210A2
_08021088:
	adds r0, r4, #0
	bl sub_08021390
	b _080210A4
_08021090:
	adds r0, r4, #0
	bl sub_080042B8
	ldrb r0, [r5]
	cmp r0, #4
	bne _080210A4
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x51
_080210A2:
	strb r0, [r1]
_080210A4:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080210A8
sub_080210A8: @ 0x080210A8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080210D4
	movs r0, #0
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_08021588
	ldr r0, _080210D0 @ =0x0000015D
	bl sub_08004488
	b _080210E2
	.align 2, 0
_080210D0: .4byte 0x0000015D
_080210D4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080210E2
	adds r0, r4, #0
	bl sub_08021390
_080210E2:
	pop {r4, pc}

	thumb_func_start sub_080210E4
sub_080210E4: @ 0x080210E4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802111A
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #2
	bl sub_0804A98C
	cmp r0, #0
	beq _08021112
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
_08021112:
	movs r0, #0x87
	lsls r0, r0, #1
	bl sub_08004488
_0802111A:
	adds r0, r4, #0
	bl sub_08021644
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08021154
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	beq _0802114A
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _08021154
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08021154
_0802114A:
	adds r0, r4, #0
	movs r1, #0
	bl sub_080213D0
	b _0802116C
_08021154:
	adds r1, r4, #0
	adds r1, #0x76
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802116C
	adds r0, r4, #0
	movs r1, #0
	bl sub_080213D0
_0802116C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08021170
sub_08021170: @ 0x08021170
	push {lr}
	adds r2, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08021198
	adds r1, r2, #0
	adds r1, #0x7b
	ldrb r0, [r1]
	cmp r0, #0
	beq _08021190
	subs r0, #1
	strb r0, [r1]
	b _0802119E
_08021190:
	adds r0, r2, #0
	bl sub_08021390
	b _0802119E
_08021198:
	adds r0, r2, #0
	bl sub_080042B8
_0802119E:
	pop {pc}

	thumb_func_start sub_080211A0
sub_080211A0: @ 0x080211A0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080214FC
	cmp r0, #0
	beq _080211B4
	adds r0, r4, #0
	bl sub_08021390
	b _080211CE
_080211B4:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080211CE
	adds r0, r4, #0
	bl sub_080213B0
_080211CE:
	pop {r4, pc}

	thumb_func_start sub_080211D0
sub_080211D0: @ 0x080211D0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_0802159C
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080211F2
	adds r0, r4, #0
	bl sub_08021390
_080211F2:
	pop {r4, pc}

	thumb_func_start sub_080211F4
sub_080211F4: @ 0x080211F4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_08021600
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08021216
	adds r0, r4, #0
	bl sub_08021390
_08021216:
	pop {r4, pc}

	thumb_func_start sub_08021218
sub_08021218: @ 0x08021218
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r4, #0x74
	ldrb r0, [r4]
	cmp r0, r1
	bne _0802122C
	ldrb r0, [r3, #0x14]
	cmp r0, r2
	beq _08021244
_0802122C:
	strb r2, [r3, #0x14]
	strb r1, [r4]
	lsls r0, r1, #1
	ldr r1, _08021248 @ =gUnk_080CAB14
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	strh r1, [r3, #0x12]
	ldrb r1, [r0]
	adds r1, r1, r2
	adds r0, r3, #0
	bl sub_080042AC
_08021244:
	pop {r4, pc}
	.align 2, 0
_08021248: .4byte gUnk_080CAB14

	thumb_func_start sub_0802124C
sub_0802124C: @ 0x0802124C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0x15]
	bl sub_08021274
	adds r2, r0, #0
	cmp r2, #0xff
	beq _0802126C
	adds r0, r4, #0
	adds r0, #0x74
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_08021218
	b _08021272
_0802126C:
	adds r0, r4, #0
	bl sub_080042B8
_08021272:
	pop {r4, pc}

	thumb_func_start sub_08021274
sub_08021274: @ 0x08021274
	push {lr}
	adds r2, r0, #0
	movs r0, #7
	ands r0, r1
	subs r0, #3
	cmp r0, #2
	bhi _0802129A
	movs r3, #0x18
	adds r0, r1, #0
	ands r0, r3
	lsrs r0, r0, #3
	cmp r0, r2
	beq _080212AA
	adds r0, r1, #0
	adds r0, #8
	ands r0, r3
	lsrs r0, r0, #3
	cmp r0, r2
	beq _080212AA
_0802129A:
	adds r0, r1, #4
	movs r1, #0x18
	ands r0, r1
	lsrs r1, r0, #3
	cmp r2, r1
	beq _080212AA
	adds r0, r1, #0
	b _080212AC
_080212AA:
	movs r0, #0xff
_080212AC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080212B0
sub_080212B0: @ 0x080212B0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x75
	ldrb r0, [r1]
	cmp r0, #1
	beq _080212D0
	cmp r0, #2
	beq _080212DC
	movs r0, #1
	strb r0, [r1]
	ldr r4, _080212CC @ =gUnk_080CAB3A
	b _080212E2
	.align 2, 0
_080212CC: .4byte gUnk_080CAB3A
_080212D0:
	movs r0, #2
	strb r0, [r1]
	ldr r4, _080212D8 @ =gUnk_080CAB42
	b _080212E2
	.align 2, 0
_080212D8: .4byte gUnk_080CAB42
_080212DC:
	movs r0, #0
	strb r0, [r1]
	ldr r4, _0802131C @ =gUnk_080CAB4A
_080212E2:
	bl sub_08000E50
	movs r1, #7
	ands r1, r0
	adds r1, r1, r4
	ldrb r2, [r1]
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bhi _08021306
	cmp r2, #2
	bne _08021306
	ldr r4, _08021320 @ =gUnk_080CAB52
	bl sub_08000E50
	movs r1, #3
	ands r1, r0
	adds r1, r1, r4
	ldrb r2, [r1]
_08021306:
	movs r0, #0
	str r0, [r5, #0x54]
	ldr r1, _08021324 @ =gUnk_080CAB58
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_0802131C: .4byte gUnk_080CAB4A
_08021320: .4byte gUnk_080CAB52
_08021324: .4byte gUnk_080CAB58

	thumb_func_start sub_08021328
sub_08021328: @ 0x08021328
	push {lr}
	movs r1, #0xd
	strb r1, [r0, #0xc]
	ldr r2, _08021348 @ =gUnk_080CAB68
	ldrb r1, [r0, #0xa]
	adds r1, r1, r2
	ldrb r2, [r1]
	adds r1, r0, #0
	adds r1, #0x7c
	strb r2, [r1]
	ldrb r2, [r0, #0x14]
	movs r1, #0xc
	bl sub_08021218
	pop {pc}
	.align 2, 0
_08021348: .4byte gUnk_080CAB68

	thumb_func_start sub_0802134C
sub_0802134C: @ 0x0802134C
	push {lr}
	movs r1, #0xf
	strb r1, [r0, #0xc]
	ldrb r1, [r0, #0x14]
	lsls r1, r1, #3
	strb r1, [r0, #0x15]
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0, #0x24]
	adds r2, r0, #0
	adds r2, #0x76
	movs r1, #0x78
	strh r1, [r2]
	ldrb r2, [r0, #0x14]
	movs r1, #0xe
	bl sub_08021218
	pop {pc}

	thumb_func_start sub_08021370
sub_08021370: @ 0x08021370
	push {lr}
	movs r1, #0x12
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x14]
	movs r1, #0x10
	bl sub_08021218
	pop {pc}

	thumb_func_start sub_08021380
sub_08021380: @ 0x08021380
	push {lr}
	movs r1, #0x13
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x14]
	movs r1, #0x11
	bl sub_08021218
	pop {pc}

	thumb_func_start sub_08021390
sub_08021390: @ 0x08021390
	push {lr}
	movs r1, #7
	strb r1, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0, #0x24]
	adds r2, r0, #0
	adds r2, #0x3f
	movs r1, #0x56
	strb r1, [r2]
	ldrb r2, [r0, #0x14]
	movs r1, #6
	bl sub_08021218
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080213B0
sub_080213B0: @ 0x080213B0
	push {lr}
	movs r1, #3
	strb r1, [r0, #0xc]
	movs r1, #1
	strb r1, [r0, #0xe]
	movs r1, #0xc0
	strh r1, [r0, #0x24]
	adds r2, r0, #0
	adds r2, #0x76
	movs r1, #0xf0
	strh r1, [r2]
	ldrb r2, [r0, #0x14]
	movs r1, #3
	bl sub_08021218
	pop {pc}

	thumb_func_start sub_080213D0
sub_080213D0: @ 0x080213D0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x10
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x7b
	strb r1, [r0]
	ldrb r2, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_08021218
	adds r0, r4, #0
	bl sub_08021588
	pop {r4, pc}

	thumb_func_start sub_080213F0
sub_080213F0: @ 0x080213F0
	push {lr}
	movs r1, #6
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x14]
	movs r1, #1
	bl sub_08021218
	pop {pc}

	thumb_func_start sub_08021400
sub_08021400: @ 0x08021400
	push {lr}
	movs r1, #9
	strb r1, [r0, #0xc]
	movs r1, #0x60
	strh r1, [r0, #0x24]
	ldrb r2, [r0, #0x14]
	movs r1, #0xa
	bl sub_08021218
	pop {pc}

	thumb_func_start sub_08021414
sub_08021414: @ 0x08021414
	push {lr}
	movs r1, #0x11
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x14]
	movs r1, #5
	bl sub_08021218
	pop {pc}

	thumb_func_start sub_08021424
sub_08021424: @ 0x08021424
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08021450 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_080045C4
	adds r1, r0, #0
	ldrb r0, [r5, #0x14]
	bl sub_08021274
	adds r4, r0, #0
	cmp r4, #0xff
	beq _08021454
	adds r0, r5, #0
	adds r0, #0x74
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08021218
	b _08021456
	.align 2, 0
_08021450: .4byte gUnk_020000B0
_08021454:
	ldrb r4, [r5, #0x14]
_08021456:
	cmp r4, #1
	beq _08021490
	cmp r4, #1
	blo _08021478
	cmp r4, #2
	beq _080214A8
	ldr r0, _08021474 @ =gUnk_020000B0
	ldr r1, [r0]
	movs r2, #0x2e
	ldrsh r0, [r1, r2]
	adds r2, r0, #0
	adds r2, #0x24
	movs r4, #0x32
	ldrsh r3, [r1, r4]
	b _080214B8
	.align 2, 0
_08021474: .4byte gUnk_020000B0
_08021478:
	ldr r0, _0802148C @ =gUnk_020000B0
	ldr r0, [r0]
	movs r1, #0x2e
	ldrsh r2, [r0, r1]
	movs r4, #0x32
	ldrsh r0, [r0, r4]
	adds r3, r0, #0
	adds r3, #0x2c
	b _080214B8
	.align 2, 0
_0802148C: .4byte gUnk_020000B0
_08021490:
	ldr r0, _080214A4 @ =gUnk_020000B0
	ldr r1, [r0]
	movs r2, #0x2e
	ldrsh r0, [r1, r2]
	adds r2, r0, #0
	subs r2, #0x24
	movs r4, #0x32
	ldrsh r3, [r1, r4]
	b _080214B8
	.align 2, 0
_080214A4: .4byte gUnk_020000B0
_080214A8:
	ldr r0, _080214F0 @ =gUnk_020000B0
	ldr r0, [r0]
	movs r1, #0x2e
	ldrsh r2, [r0, r1]
	movs r4, #0x32
	ldrsh r0, [r0, r4]
	adds r3, r0, #0
	subs r3, #0x1d
_080214B8:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	subs r0, r2, r0
	adds r0, #3
	cmp r0, #6
	bhi _080214D0
	movs r4, #0x32
	ldrsh r0, [r5, r4]
	subs r0, r3, r0
	adds r0, #2
	cmp r0, #4
	bls _080214E8
_080214D0:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	movs r4, #0x32
	ldrsh r1, [r5, r4]
	bl sub_080045D4
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _080214F4
_080214E8:
	adds r0, r5, #0
	bl sub_080212B0
	b _080214FA
	.align 2, 0
_080214F0: .4byte gUnk_020000B0
_080214F4:
	adds r0, r5, #0
	bl sub_080042B8
_080214FA:
	pop {r4, r5, pc}

	thumb_func_start sub_080214FC
sub_080214FC: @ 0x080214FC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0802153C
	ldr r0, _08021538 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x1f
	ands r0, r1
	subs r0, r2, r0
	subs r0, #2
	cmp r0, #4
	bhi _0802153C
	adds r0, r2, #4
	movs r1, #0x18
	ands r0, r1
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	movs r0, #1
	b _0802153E
	.align 2, 0
_08021538: .4byte gUnk_020000B0
_0802153C:
	movs r0, #0
_0802153E:
	pop {r4, pc}

	thumb_func_start sub_08021540
sub_08021540: @ 0x08021540
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08000E50
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08021566
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08021566
	adds r0, r4, #0
	bl sub_08049EE4
	adds r1, r0, #4
	b _08021568
_08021566:
	lsrs r1, r5, #0x10
_08021568:
	movs r0, #0x18
	ands r1, r0
	strb r1, [r4, #0x15]
	ldrb r0, [r4, #0x14]
	bl sub_08021274
	adds r2, r0, #0
	cmp r2, #0xff
	beq _08021582
	adds r0, r4, #0
	movs r1, #3
	bl sub_08021218
_08021582:
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	pop {r4, r5, pc}

	thumb_func_start sub_08021588
sub_08021588: @ 0x08021588
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x54]
	cmp r1, #0
	beq _08021598
	movs r0, #0
	str r0, [r1, #0x50]
	str r0, [r2, #0x54]
_08021598:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0802159C
sub_0802159C: @ 0x0802159C
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #1
	bne _080215D4
	movs r0, #0
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x51
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #3
	bl sub_0804A98C
	cmp r0, #0
	beq _080215CA
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
_080215CA:
	movs r0, #0x8b
	lsls r0, r0, #1
	bl sub_08004488
	b _080215F8
_080215D4:
	cmp r0, #2
	bne _080215E4
	movs r0, #0
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_08021588
	b _080215F8
_080215E4:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080215F8
	movs r0, #0xdf
	ands r0, r1
	strb r0, [r2]
	ldr r0, _080215FC @ =0x00000115
	bl sub_08004488
_080215F8:
	pop {r4, pc}
	.align 2, 0
_080215FC: .4byte 0x00000115

	thumb_func_start sub_08021600
sub_08021600: @ 0x08021600
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x5a
	ldrb r0, [r1]
	cmp r0, #1
	bne _08021634
	movs r0, #0
	strb r0, [r1]
	subs r1, #0x1b
	movs r0, #0x51
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #4
	bl sub_0804A98C
	cmp r0, #0
	beq _0802162A
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
_0802162A:
	movs r0, #0x87
	lsls r0, r0, #1
	bl sub_08004488
	b _08021642
_08021634:
	cmp r0, #2
	bne _08021642
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08021588
_08021642:
	pop {r4, pc}

	thumb_func_start sub_08021644
sub_08021644: @ 0x08021644
	push {lr}
	adds r2, r0, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08021660
	movs r0, #0xdf
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x7d
	bl sub_08004488
_08021660:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08021664
sub_08021664: @ 0x08021664
	push {lr}
	ldrb r2, [r0, #0x14]
	cmp r2, #1
	beq _08021690
	cmp r2, #1
	bgt _08021676
	cmp r2, #0
	beq _08021680
	b _08021698
_08021676:
	cmp r2, #2
	beq _08021688
	cmp r2, #3
	beq _08021690
	b _08021698
_08021680:
	movs r2, #0x22
	bl sub_08049F1C
	b _0802169A
_08021688:
	movs r2, #0x13
	bl sub_08049F1C
	b _0802169A
_08021690:
	movs r2, #0x1a
	bl sub_08049F1C
	b _0802169A
_08021698:
	movs r0, #0
_0802169A:
	pop {pc}

	thumb_func_start sub_0802169C
sub_0802169C: @ 0x0802169C
	push {lr}
	ldrb r2, [r0, #0x14]
	cmp r2, #1
	beq _080216C0
	cmp r2, #1
	bgt _080216AE
	cmp r2, #0
	beq _080216B8
	b _080216CE
_080216AE:
	cmp r2, #2
	beq _080216BC
	cmp r2, #3
	beq _080216C0
	b _080216CE
_080216B8:
	movs r2, #0x2c
	b _080216C2
_080216BC:
	movs r2, #0x1d
	b _080216C2
_080216C0:
	movs r2, #0x24
_080216C2:
	bl sub_08049F1C
	cmp r0, #0
	bne _080216CE
	movs r0, #1
	b _080216D0
_080216CE:
	movs r0, #0
_080216D0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080216D4
sub_080216D4: @ 0x080216D4
	push {lr}
	ldr r1, _080216E0 @ =gUnk_080CB570
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_080216E0: .4byte gUnk_080CB570

	thumb_func_start sub_080216E4
sub_080216E4: @ 0x080216E4
	push {lr}
	ldr r2, _080216F8 @ =gUnk_080CB588
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080216F8: .4byte gUnk_080CB588

	thumb_func_start sub_080216FC
sub_080216FC: @ 0x080216FC
	push {lr}
	adds r2, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802171A
	adds r0, r2, #0
	movs r1, #3
	movs r2, #0x80
	bl CreateFX
	bl sub_0805E780
_0802171A:
	pop {pc}

	thumb_func_start nullsub_7
nullsub_7: @ 0x0802171C
	bx lr
	.align 2, 0

	thumb_func_start sub_08021720
sub_08021720: @ 0x08021720
	movs r3, #1
	movs r1, #1
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	subs r1, #5
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x18]
	ldrb r1, [r0, #0xa]
	strb r1, [r0, #0x1e]
	ldrb r2, [r0, #0x19]
	movs r1, #0x3f
	ands r1, r2
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x19]
	adds r0, #0x29
	ldrb r2, [r0]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #3
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_08
nullsub_08: @ 0x08021754
	bx lr
	.align 2, 0

	thumb_func_start sub_08021758
sub_08021758: @ 0x08021758
	push {lr}
	ldr r1, _08021764 @ =gUnk_080CB590
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_08021764: .4byte gUnk_080CB590

	thumb_func_start sub_08021768
sub_08021768: @ 0x08021768
	push {lr}
	ldr r2, _0802177C @ =gUnk_080CB5A8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802177C: .4byte gUnk_080CB5A8

	thumb_func_start sub_08021780
sub_08021780: @ 0x08021780
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	beq _08021792
	cmp r0, #0x93
	beq _080217F4
	b _080217FA
_08021792:
	ldr r0, _080217A4 @ =gUnk_03003F80
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0x18
	bne _080217A8
	adds r0, r4, #0
	bl sub_08021768
	b _080217FA
	.align 2, 0
_080217A4: .4byte gUnk_03003F80
_080217A8:
	movs r1, #0
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #0xb4
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080217EC @ =gLinkEntity
	adds r1, r4, #0
	bl sub_0806FA6C
	ldr r0, _080217F0 @ =0x0000FFFF
	strh r0, [r4, #0x36]
	adds r1, r4, #0
	adds r1, #0x87
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #6
	bl sub_08004260
	b _080217FA
	.align 2, 0
_080217EC: .4byte gLinkEntity
_080217F0: .4byte 0x0000FFFF
_080217F4:
	adds r0, r4, #0
	bl sub_08021768
_080217FA:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	cmp r1, #0
	bne _08021808
	subs r0, #3
	strb r1, [r0]
_08021808:
	ldr r1, _08021814 @ =gUnk_080CB590
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_08021814: .4byte gUnk_080CB590

	thumb_func_start sub_08021818
sub_08021818: @ 0x08021818
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xa]
	cmp r0, #0
	bne _0802182A
	adds r0, r3, #0
	bl sub_0804A7D4
	b _08021844
_0802182A:
	ldr r2, [r3, #0x50]
	cmp r2, #0
	beq _0802183A
	ldrb r0, [r2, #0xf]
	subs r0, #1
	movs r1, #0
	strb r0, [r2, #0xf]
	str r1, [r3, #0x50]
_0802183A:
	adds r0, r3, #0
	movs r1, #0xf0
	movs r2, #0
	bl sub_0804A7E0
_08021844:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08021848
sub_08021848: @ 0x08021848
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	adds r1, r0, #0
	cmp r1, #0
	beq _0802186C
	ldr r0, _08021868 @ =gUnk_080CB5C8
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _0802187A
	.align 2, 0
_08021868: .4byte gUnk_080CB5C8
_0802186C:
	movs r0, #3
	strb r0, [r4, #0xc]
	strh r1, [r4, #0x36]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
_0802187A:
	pop {r4, pc}

	thumb_func_start sub_0802187C
sub_0802187C: @ 0x0802187C
	movs r1, #2
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_130
nullsub_130: @ 0x08021884
	bx lr
	.align 2, 0

	thumb_func_start sub_08021888
sub_08021888: @ 0x08021888
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _0802189A
	adds r0, r4, #0
	bl sub_08021818
_0802189A:
	pop {r4, pc}

	thumb_func_start sub_0802189C
sub_0802189C: @ 0x0802189C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r4, #0x1c]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08004260
	pop {r4, pc}

	thumb_func_start sub_080218B4
sub_080218B4: @ 0x080218B4
	push {lr}
	ldr r2, _080218C8 @ =gUnk_080CB5D4
	ldrb r1, [r0, #0xb]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080218C8: .4byte gUnk_080CB5D4

	thumb_func_start sub_080218CC
sub_080218CC: @ 0x080218CC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _08021916
	movs r2, #1
	movs r0, #1
	strb r0, [r5, #0xd]
	ldrb r1, [r5, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049F84
	adds r4, r0, #0
	bl sub_08000E50
	movs r1, #0x10
	eors r4, r1
	ldr r2, _08021980 @ =gUnk_080CB5DC
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, r0, r4
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5, #0x15]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	movs r0, #0x90
	lsls r0, r0, #9
	str r0, [r5, #0x20]
_08021916:
	adds r0, r5, #0
	bl sub_08004274
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _08021948
	adds r0, r5, #0
	bl sub_080AEFE0
	movs r1, #0xe0
	lsls r1, r1, #5
	adds r0, r5, #0
	bl sub_080044EC
	cmp r0, #0
	bne _08021948
	adds r0, r5, #0
	adds r0, #0x59
	strb r6, [r0]
_08021948:
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802197C
	movs r0, #2
	strb r0, [r5, #0xc]
	bl sub_08000E50
	movs r1, #0x38
	ands r0, r1
	adds r0, #8
	strb r0, [r5, #0xe]
	movs r0, #1
	strb r0, [r5, #0xf]
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08004260
_0802197C:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08021980: .4byte gUnk_080CB5DC

	thumb_func_start sub_08021984
sub_08021984: @ 0x08021984
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080219C2
	movs r0, #1
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldr r0, _08021A08 @ =0x0000FF80
	strh r0, [r4, #0x36]
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1b]
	ldr r0, _08021A0C @ =0x0000012D
	bl sub_08004488
_080219C2:
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08021A04
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x86
	movs r0, #0x3c
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
_08021A04:
	pop {r4, pc}
	.align 2, 0
_08021A08: .4byte 0x0000FF80
_08021A0C: .4byte 0x0000012D

	thumb_func_start sub_08021A10
sub_08021A10: @ 0x08021A10
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldr r1, _08021A60 @ =gLinkEntity
	adds r0, r4, #0
	movs r2, #0x78
	movs r3, #0x50
	bl sub_080041A0
	cmp r0, #0
	beq _08021A5E
	adds r0, r4, #0
	bl sub_08021D00
	cmp r0, #0
	bne _08021A5E
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08021A5E
	movs r0, #3
	strb r0, [r4, #0xc]
	bl sub_08000E50
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x1e
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08021D44
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
_08021A5E:
	pop {r4, pc}
	.align 2, 0
_08021A60: .4byte gLinkEntity

	thumb_func_start sub_08021A64
sub_08021A64: @ 0x08021A64
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08021D00
	cmp r0, #0
	bne _08021AD4
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r5, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08021A96
	movs r0, #2
	strb r0, [r4, #0xc]
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x1e
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_08021A96:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r5
	cmp r0, #0
	bne _08021AC8
	movs r0, #8
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	adds r1, r0, #0
	cmp r1, #0xff
	bne _08021AC2
	movs r0, #7
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
	b _08021AD4
_08021AC2:
	adds r0, r4, #0
	bl sub_08021D44
_08021AC8:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
_08021AD4:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08021AD8
sub_08021AD8: @ 0x08021AD8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08021B3A
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08021B1E
	movs r0, #0
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	cmp r0, #0xff
	bne _08021B16
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	b _08021B60
_08021B16:
	strb r0, [r4, #0x15]
	movs r0, #0x7c
	bl sub_08004488
_08021B1E:
	adds r0, r4, #0
	bl sub_080AEFE0
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08021B3A
	adds r1, r4, #0
	adds r1, #0x59
	movs r0, #1
	strb r0, [r1]
_08021B3A:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08021B60
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x14
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x86
	movs r0, #0x3c
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_08021B60:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08021B64
sub_08021B64: @ 0x08021B64
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _08021B88 @ =gUnk_03003F80
	ldr r1, [r0, #0x30]
	movs r2, #4
	ands r1, r2
	adds r6, r0, #0
	cmp r1, #0
	beq _08021B8C
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	str r1, [r4, #0x34]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
	b _08021C4E
	.align 2, 0
_08021B88: .4byte gUnk_03003F80
_08021B8C:
	movs r5, #1
	adds r0, r6, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0xb
	beq _08021BBA
	cmp r0, #0x14
	beq _08021BBA
	bl sub_0807953C
	cmp r0, #0
	beq _08021BAE
	ldrb r1, [r4, #0xa]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r5, r0, #0
	adds r5, #8
_08021BAE:
	ldrb r0, [r4, #0xe]
	subs r5, r0, r5
	cmp r5, #0
	bge _08021BB8
	movs r5, #0
_08021BB8:
	strb r5, [r4, #0xe]
_08021BBA:
	ldr r0, [r6, #0x30]
	movs r1, #0x88
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08021BC8
	movs r5, #0
_08021BC8:
	cmp r5, #0
	bne _08021C04
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x87
	strb r5, [r0]
	ldr r2, _08021BEC @ =gLinkEntity
	ldrb r1, [r2, #0x15]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _08021BF0
	movs r0, #0x10
	b _08021BF6
	.align 2, 0
_08021BEC: .4byte gLinkEntity
_08021BF0:
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #2
	movs r1, #0x10
_08021BF6:
	eors r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #5
	bl sub_08004260
	b _08021C4E
_08021C04:
	ldrb r1, [r6, #0x1a]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r6, #0x1a]
	adds r1, r6, #0
	adds r1, #0x80
	ldrh r0, [r1]
	subs r0, #0x50
	strh r0, [r1]
	adds r1, #0x2a
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, _08021C50 @ =gLinkEntity
	adds r1, r4, #0
	bl sub_0806FA6C
	ldr r2, _08021C54 @ =gUnk_080CB5E4
	ldrb r1, [r4, #0xf]
	adds r0, r1, #1
	strb r0, [r4, #0xf]
	movs r0, #0xe
	ands r0, r1
	lsrs r0, r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_08004274
_08021C4E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08021C50: .4byte gLinkEntity
_08021C54: .4byte gUnk_080CB5E4

	thumb_func_start sub_08021C58
sub_08021C58: @ 0x08021C58
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08021C8A
	adds r0, r4, #0
	bl sub_080AEFE0
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08021C8A
	adds r0, r4, #0
	adds r0, #0x59
	strb r5, [r0]
_08021C8A:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08021CCC
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r2, #0x3c
	strb r2, [r4, #0xe]
	movs r0, #1
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x86
	strb r2, [r0]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_08021CCC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08021CD0
sub_08021CD0: @ 0x08021CD0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08021CE6
	adds r0, r4, #0
	bl sub_08004274
_08021CE6:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	cmp r0, #0xff
	beq _08021CFE
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
_08021CFE:
	pop {r4, pc}

	thumb_func_start sub_08021D00
sub_08021D00: @ 0x08021D00
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x86
	ldrb r0, [r1]
	cmp r0, #0
	beq _08021D16
	subs r0, #1
	strb r0, [r1]
	movs r0, #0
	b _08021D40
_08021D16:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x10
	bl sub_08049F64
	cmp r0, #0
	bne _08021D28
	movs r0, #0
	b _08021D40
_08021D28:
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
	movs r0, #1
_08021D40:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08021D44
sub_08021D44: @ 0x08021D44
	push {lr}
	adds r2, r0, #0
	adds r1, #4
	movs r0, #0x18
	ands r1, r0
	strb r1, [r2, #0x15]
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	beq _08021D5E
	movs r0, #0xc0
	lsls r0, r0, #1
	b _08021D60
_08021D5E:
	movs r0, #0xc0
_08021D60:
	strh r0, [r2, #0x24]
	pop {pc}

	thumb_func_start sub_08021D64
sub_08021D64: @ 0x08021D64
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08021D7C @ =gUnk_080CB69C
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_08021D7C: .4byte gUnk_080CB69C

	thumb_func_start sub_08021D80
sub_08021D80: @ 0x08021D80
	push {lr}
	ldr r2, _08021D94 @ =gUnk_080CB6B4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08021D94: .4byte gUnk_080CB6B4

	thumb_func_start sub_08021D98
sub_08021D98: @ 0x08021D98
	push {lr}
	ldr r1, _08021DA4 @ =gUnk_080CB69C
	bl sub_0804AA30
	pop {pc}
	.align 2, 0
_08021DA4: .4byte gUnk_080CB69C

	thumb_func_start sub_08021DA8
sub_08021DA8: @ 0x08021DA8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	beq _08021DC4
	ldr r0, _08021DC8 @ =gUnk_080CB6C4
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08021DC4:
	pop {r4, pc}
	.align 2, 0
_08021DC8: .4byte gUnk_080CB6C4

	thumb_func_start sub_08021DCC
sub_08021DCC: @ 0x08021DCC
	movs r1, #2
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start sub_08021DD4
sub_08021DD4: @ 0x08021DD4
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_08021DDC
sub_08021DDC: @ 0x08021DDC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _08021DEE
	adds r0, r4, #0
	bl sub_0804A7D4
_08021DEE:
	pop {r4, pc}

	thumb_func_start sub_08021DF0
sub_08021DF0: @ 0x08021DF0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08021E14
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08021E48 @ =0x0000FFF0
	strh r0, [r4, #0x36]
_08021E14:
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	movs r0, #1
	strb r0, [r4, #0x1c]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #9
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	adds r0, r4, #0
	bl sub_08021EF0
	pop {r4, pc}
	.align 2, 0
_08021E48: .4byte 0x0000FFF0

	thumb_func_start sub_08021E4C
sub_08021E4C: @ 0x08021E4C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	cmp r0, #0
	beq _08021E5E
	subs r0, #1
	strh r0, [r1]
_08021E5E:
	adds r1, r4, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	cmp r0, #0
	beq _08021E6C
	subs r0, #1
	strh r0, [r1]
_08021E6C:
	adds r0, r4, #0
	bl sub_08004274
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08021E8A
	adds r0, r4, #0
	bl sub_08021F24
	b _08021E90
_08021E8A:
	adds r0, r4, #0
	bl sub_080AEFB4
_08021E90:
	ldr r1, _08021EA0 @ =gUnk_080CB6D0
	ldrb r0, [r5]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x63
	strb r1, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_08021EA0: .4byte gUnk_080CB6D0

	thumb_func_start sub_08021EA4
sub_08021EA4: @ 0x08021EA4
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08021EBA
	adds r0, r1, #0
	bl sub_08021EF0
_08021EBA:
	pop {pc}

	thumb_func_start sub_08021EBC
sub_08021EBC: @ 0x08021EBC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08021ECC
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08021EE8
_08021ECC:
	ldr r0, _08021EEC @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	movs r3, #0x70
	bl sub_0806FCB8
	cmp r0, #0
	beq _08021EE8
	adds r0, r4, #0
	bl sub_08021EF0
_08021EE8:
	pop {r4, pc}
	.align 2, 0
_08021EEC: .4byte gLinkEntity

	thumb_func_start sub_08021EF0
sub_08021EF0: @ 0x08021EF0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	bl sub_08000E50
	ldr r2, _08021F20 @ =gUnk_080CB6D6
	movs r1, #0xf
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x78
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #0x3c
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	pop {r4, pc}
	.align 2, 0
_08021F20: .4byte gUnk_080CB6D6

	thumb_func_start sub_08021F24
sub_08021F24: @ 0x08021F24
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r0, #0
	bne _08021F48
	movs r0, #2
	strb r0, [r4, #0xc]
	bl sub_08000E50
	ldr r2, _08021F44 @ =gUnk_080CB6F6
	movs r1, #0xf
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	b _08021F6E
	.align 2, 0
_08021F44: .4byte gUnk_080CB6F6
_08021F48:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	cmp r0, #0
	bne _08021F80
	ldr r0, _08021F7C @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	movs r3, #0x70
	bl sub_0806FCB8
	cmp r0, #0
	bne _08021F80
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x1e
_08021F6E:
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
	b _08021FA4
	.align 2, 0
_08021F7C: .4byte gLinkEntity
_08021F80:
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _08021F94
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	b _08021F9A
_08021F94:
	adds r0, r4, #0
	bl sub_08049EE4
_08021F9A:
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_08021FA4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08021FA8
sub_08021FA8: @ 0x08021FA8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08021FD4 @ =gUnk_080CB734
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r1, _08021FD8 @ =gUnk_080CB8A4
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r4, #0x1e]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r4, #0x48]
	pop {r4, r5, pc}
	.align 2, 0
_08021FD4: .4byte gUnk_080CB734
_08021FD8: .4byte gUnk_080CB8A4

	thumb_func_start sub_08021FDC
sub_08021FDC: @ 0x08021FDC
	push {lr}
	ldr r2, _08021FF0 @ =gUnk_080CB74C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08021FF0: .4byte gUnk_080CB74C

	thumb_func_start sub_08021FF4
sub_08021FF4: @ 0x08021FF4
	push {lr}
	ldr r1, _08022000 @ =gUnk_080CB734
	bl sub_0804AA30
	pop {pc}
	.align 2, 0
_08022000: .4byte gUnk_080CB734

	thumb_func_start sub_08022004
sub_08022004: @ 0x08022004
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x7e
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	bl CreateFX
	adds r0, r4, #0
	bl sub_08049CF4
	bl sub_0805E780
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08022034
sub_08022034: @ 0x08022034
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	movs r0, #3
	ands r0, r1
	strb r0, [r4, #0xb]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _08022098 @ =gUnk_080CB764
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x78
	strh r0, [r1]
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x7a
	strh r0, [r1]
	ldrb r1, [r4, #0xb]
	adds r0, r4, #0
	bl sub_08004260
	adds r0, r4, #0
	bl sub_080221C0
	pop {r4, pc}
	.align 2, 0
_08022098: .4byte gUnk_080CB764

	thumb_func_start sub_0802209C
sub_0802209C: @ 0x0802209C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _080220D2
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x7a
	ldrh r1, [r1]
	movs r2, #0x10
	movs r3, #0x10
	bl sub_0806FBFC
	cmp r0, #0
	beq _080220D6
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x12
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0xb]
	adds r1, #4
	adds r0, r4, #0
	bl sub_08004260
	b _080220D6
_080220D2:
	subs r0, #1
	strb r0, [r4, #0xe]
_080220D6:
	pop {r4, pc}

	thumb_func_start sub_080220D8
sub_080220D8: @ 0x080220D8
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080220EC
	movs r0, #3
	strb r0, [r1, #0xc]
_080220EC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080220F0
sub_080220F0: @ 0x080220F0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_08004274
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08022160
	movs r1, #0
	movs r0, #4
	strb r0, [r5, #0xc]
	movs r0, #0x78
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	adds r0, #0x44
	strb r1, [r0]
	ldrb r1, [r5, #0xb]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0802215C @ =gUnk_080CB76C
	adds r4, r0, r1
	movs r6, #0
_08022124:
	adds r0, r5, #0
	movs r1, #0x11
	movs r2, #0
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _08022148
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldrh r2, [r1, #0x2e]
	adds r0, r0, r2
	strh r0, [r1, #0x2e]
	movs r0, #1
	ldrsb r0, [r4, r0]
	ldrh r2, [r1, #0x32]
	adds r0, r0, r2
	strh r0, [r1, #0x32]
_08022148:
	adds r6, #1
	adds r4, #2
	cmp r6, #5
	bls _08022124
	movs r0, #0x82
	lsls r0, r0, #1
	bl sub_08004488
	b _08022170
	.align 2, 0
_0802215C: .4byte gUnk_080CB76C
_08022160:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08022170
	adds r1, r5, #0
	adds r1, #0x44
	movs r0, #4
	strb r0, [r1]
_08022170:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08022174
sub_08022174: @ 0x08022174
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800445C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08022196
	movs r0, #5
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xb]
	adds r1, #8
	adds r0, r4, #0
	bl sub_08004260
_08022196:
	pop {r4, pc}

	thumb_func_start sub_08022198
sub_08022198: @ 0x08022198
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800445C
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080221BC
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x5a
	strb r0, [r4, #0xe]
_080221BC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080221C0
sub_080221C0: @ 0x080221C0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x2e
	ldrsh r4, [r6, r0]
	ldr r1, _08022220 @ =gRoomControls
	ldrh r0, [r1, #6]
	subs r4, r4, r0
	asrs r4, r4, #4
	movs r2, #0x3f
	ands r4, r2
	movs r3, #0x32
	ldrsh r0, [r6, r3]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	ldr r1, _08022224 @ =gUnk_080B4488
	ldrb r0, [r6, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r4, r4, r0
	adds r0, r6, #0
	adds r0, #0x7e
	strh r4, [r0]
	adds r5, r6, #0
	adds r5, #0x38
	ldrb r1, [r5]
	adds r0, r4, #0
	bl sub_080001DA
	adds r1, r6, #0
	adds r1, #0x7c
	strh r0, [r1]
	ldr r1, _08022228 @ =gUnk_080CB79C
	ldrb r0, [r6, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrb r2, [r5]
	adds r1, r4, #0
	bl sub_0800015E
	pop {r4, r5, r6, pc}
	.align 2, 0
_08022220: .4byte gRoomControls
_08022224: .4byte gUnk_080B4488
_08022228: .4byte gUnk_080CB79C

	thumb_func_start sub_0802222C
sub_0802222C: @ 0x0802222C
	push {lr}
	ldr r1, _08022238 @ =gUnk_080CB948
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_08022238: .4byte gUnk_080CB948

	thumb_func_start sub_0802223C
sub_0802223C: @ 0x0802223C
	push {lr}
	ldr r2, _08022250 @ =gUnk_080CB960
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08022250: .4byte gUnk_080CB960

	thumb_func_start sub_08022254
sub_08022254: @ 0x08022254
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _08022344
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	subs r0, #4
	cmp r0, #0x18
	bhi _08022356
	lsls r0, r0, #2
	ldr r1, _0802227C @ =_08022280
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802227C: .4byte _08022280
_08022280: @ jump table
	.4byte _080222E4 @ case 0
	.4byte _080222E4 @ case 1
	.4byte _080222E4 @ case 2
	.4byte _08022356 @ case 3
	.4byte _080222E4 @ case 4
	.4byte _080222E4 @ case 5
	.4byte _080222E4 @ case 6
	.4byte _080222E4 @ case 7
	.4byte _080222E4 @ case 8
	.4byte _080222E4 @ case 9
	.4byte _08022356 @ case 10
	.4byte _08022356 @ case 11
	.4byte _080222E4 @ case 12
	.4byte _080222E4 @ case 13
	.4byte _080222E4 @ case 14
	.4byte _08022356 @ case 15
	.4byte _08022356 @ case 16
	.4byte _08022356 @ case 17
	.4byte _080222F2 @ case 18
	.4byte _08022356 @ case 19
	.4byte _080222E4 @ case 20
	.4byte _080222E4 @ case 21
	.4byte _080222E4 @ case 22
	.4byte _08022356 @ case 23
	.4byte _080222F2 @ case 24
_080222E4:
	ldr r0, _08022340 @ =gUnk_03003F80
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08022356
_080222F2:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	bl CreateFX
	movs r0, #1
	movs r1, #1
	bl CreateEnemy
	adds r5, r0, #0
	cmp r5, #0
	beq _08022356
	movs r0, #1
	strb r0, [r5, #0xb]
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #0xf8
	strb r0, [r1]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0804A4E4
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r4, #0x15]
	str r5, [r4, #0x54]
	b _08022356
	.align 2, 0
_08022340: .4byte gUnk_03003F80
_08022344:
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x94
	beq _08022356
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
_08022356:
	ldr r1, _08022360 @ =gUnk_080CB948
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_08022360: .4byte gUnk_080CB948

	thumb_func_start nullsub_131
nullsub_131: @ 0x08022364
	bx lr
	.align 2, 0

	thumb_func_start sub_08022368
sub_08022368: @ 0x08022368
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	bl sub_08000E50
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08022390
sub_08022390: @ 0x08022390
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _080223D4
	ldrb r1, [r4, #0xe]
	adds r0, r1, #1
	strb r0, [r4, #0xe]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080223C0
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	bl sub_08000E50
	movs r1, #4
	ands r0, r1
	strb r0, [r4, #0xf]
_080223C0:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _080223CE
	adds r0, r4, #0
	bl sub_080AEF88
	b _080223DA
_080223CE:
	subs r0, #1
	strb r0, [r4, #0xf]
	b _080223DA
_080223D4:
	bl sub_08000E50
	strb r0, [r4, #0xe]
_080223DA:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080223E4
sub_080223E4: @ 0x080223E4
	push {lr}
	adds r3, r0, #0
	ldr r2, [r3, #0x54]
	cmp r2, #0
	beq _0802240A
	adds r1, r2, #0
	adds r1, #0x41
	movs r0, #0x94
	strb r0, [r1]
	subs r1, #4
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #5
	movs r0, #0xc
	strb r0, [r1]
	ldrb r1, [r3, #0x15]
	adds r0, r2, #0
	adds r0, #0x3e
	strb r1, [r0]
_0802240A:
	adds r0, r3, #0
	bl sub_0805E7BC
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08022414
sub_08022414: @ 0x08022414
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08022430 @ =gUnk_080CBA28
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_08022430: .4byte gUnk_080CBA28

	thumb_func_start sub_08022434
sub_08022434: @ 0x08022434
	push {lr}
	ldr r2, _08022448 @ =gUnk_080CBA40
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08022448: .4byte gUnk_080CBA40

	thumb_func_start sub_0802244C
sub_0802244C: @ 0x0802244C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x45
	ldrb r0, [r5]
	cmp r0, #0
	bne _0802245C
	b _08022582
_0802245C:
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0x65
	bne _08022522
	adds r0, #2
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	subs r0, #2
	cmp r0, #0x18
	bhi _08022540
	lsls r0, r0, #2
	ldr r1, _08022480 @ =_08022484
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08022480: .4byte _08022484
_08022484: @ jump table
	.4byte _080224E8 @ case 0
	.4byte _080224E8 @ case 1
	.4byte _08022540 @ case 2
	.4byte _08022540 @ case 3
	.4byte _08022540 @ case 4
	.4byte _08022540 @ case 5
	.4byte _08022508 @ case 6
	.4byte _08022508 @ case 7
	.4byte _08022508 @ case 8
	.4byte _08022508 @ case 9
	.4byte _08022508 @ case 10
	.4byte _08022540 @ case 11
	.4byte _08022540 @ case 12
	.4byte _08022540 @ case 13
	.4byte _08022540 @ case 14
	.4byte _08022540 @ case 15
	.4byte _08022540 @ case 16
	.4byte _08022540 @ case 17
	.4byte _08022540 @ case 18
	.4byte _08022540 @ case 19
	.4byte _08022508 @ case 20
	.4byte _08022540 @ case 21
	.4byte _08022508 @ case 22
	.4byte _08022508 @ case 23
	.4byte _08022508 @ case 24
_080224E8:
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xf]
	movs r0, #0x5c
	strb r0, [r6]
	ldr r0, _08022504 @ =gUnk_080FD468
	str r0, [r4, #0x48]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	b _08022540
	.align 2, 0
_08022504: .4byte gUnk_080FD468
_08022508:
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #0x5c
	strb r0, [r6]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
	b _08022540
_08022522:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x94
	bne _08022540
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_08022540:
	adds r0, r4, #0
	adds r0, #0x80
	adds r1, r4, #0
	adds r1, #0x45
	ldrb r2, [r0]
	adds r5, r1, #0
	adds r7, r0, #0
	ldrb r0, [r5]
	cmp r2, r0
	beq _08022566
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #0x5c
	strb r0, [r6]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
	b _0802258E
_08022566:
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	bne _0802258E
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08004260
	movs r0, #0xca
	lsls r0, r0, #1
	bl sub_08004488
	b _0802258E
_08022582:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
	adds r7, r4, #0
	adds r7, #0x80
_0802258E:
	ldrb r0, [r5]
	strb r0, [r7]
	ldr r1, _0802259C @ =gUnk_080CBA28
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0802259C: .4byte gUnk_080CBA28

	thumb_func_start sub_080225A0
sub_080225A0: @ 0x080225A0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #1
	bne _080225B2
	adds r0, r4, #0
	bl sub_08004274
_080225B2:
	adds r0, r4, #0
	bl sub_08001318
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080225BC
sub_080225BC: @ 0x080225BC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080225DE
	adds r0, r4, #0
	bl sub_0804A7D4
	b _080225E4
_080225DE:
	adds r0, r4, #0
	bl sub_08004274
_080225E4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_9
nullsub_9: @ 0x080225E8
	bx lr
	.align 2, 0

	thumb_func_start sub_080225EC
sub_080225EC: @ 0x080225EC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r0, #0x3b
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0x5a
	strb r0, [r1]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _0802261A
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	b _0802264C
_0802261A:
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1b]
	ldr r0, _08022650 @ =0x0000FF80
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	movs r1, #6
	bl sub_08004260
_0802264C:
	pop {r4, pc}
	.align 2, 0
_08022650: .4byte 0x0000FF80

	thumb_func_start sub_08022654
sub_08022654: @ 0x08022654
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	beq _0802268C
	cmp r0, #1
	bgt _08022668
	cmp r0, #0
	beq _0802266E
	b _080226E4
_08022668:
	cmp r0, #2
	beq _080226BE
	b _080226E4
_0802266E:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080226E4
	movs r0, #1
	strb r0, [r4, #0xd]
	ldr r0, _080226E8 @ =0x0000012D
	bl PlaySFX
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_0802268C:
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080226E4
	movs r0, #2
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #5
	bl sub_08004260
	movs r0, #0x7d
	bl sub_08004488
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
_080226BE:
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080226E4
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x65
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
_080226E4:
	pop {r4, pc}
	.align 2, 0
_080226E8: .4byte 0x0000012D

	thumb_func_start sub_080226EC
sub_080226EC: @ 0x080226EC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08022776
	adds r0, r4, #0
	bl sub_080228CC
	cmp r0, #0
	beq _0802271A
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x65
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
	b _0802277C
_0802271A:
	adds r0, r4, #0
	bl sub_080228F0
	cmp r0, #0
	beq _08022758
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0x90
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	ldr r0, _08022754 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x5a
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
	b _0802277C
	.align 2, 0
_08022754: .4byte gUnk_020000B0
_08022758:
	ldrb r1, [r4, #0xe]
	adds r0, r1, #1
	strb r0, [r4, #0xe]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08022770
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
_08022770:
	adds r0, r4, #0
	bl sub_080AEF88
_08022776:
	adds r0, r4, #0
	bl sub_08004274
_0802277C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08022780
sub_08022780: @ 0x08022780
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080227AA
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08004260
	movs r0, #0xca
	lsls r0, r0, #1
	bl sub_08004488
_080227AA:
	pop {r4, pc}

	thumb_func_start sub_080227AC
sub_080227AC: @ 0x080227AC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080227CC
	ldr r0, _080227C8 @ =gUnk_080FD470
	b _080227CE
	.align 2, 0
_080227C8: .4byte gUnk_080FD470
_080227CC:
	ldr r0, _08022814 @ =gUnk_080FD468
_080227CE:
	str r0, [r4, #0x48]
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r3, #2
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080227EE
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x5c
	strb r0, [r1]
_080227EE:
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08022812
	strb r3, [r4, #0xc]
	bl sub_08000E50
	ldr r2, _08022818 @ =gUnk_080CBA60
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_08022812:
	pop {r4, pc}
	.align 2, 0
_08022814: .4byte gUnk_080FD468
_08022818: .4byte gUnk_080CBA60

	thumb_func_start sub_0802281C
sub_0802281C: @ 0x0802281C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08022852
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x20
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	adds r0, r4, #0
	bl sub_0804AA1C
_08022852:
	pop {r4, pc}

	thumb_func_start sub_08022854
sub_08022854: @ 0x08022854
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08022898
	adds r0, r4, #0
	bl sub_080AEFE0
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08022898
	movs r0, #7
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x5c
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #5
	bl sub_08004260
	movs r0, #0x7d
	bl sub_08004488
_08022898:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802289C
sub_0802289C: @ 0x0802289C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080228CA
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x20
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0x78
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_080228CA:
	pop {r4, pc}

	thumb_func_start sub_080228CC
sub_080228CC: @ 0x080228CC
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xf]
	cmp r0, #0
	bne _080228E8
	adds r0, r1, #0
	movs r1, #1
	movs r2, #0x28
	bl sub_08049F64
	cmp r0, #0
	beq _080228EC
	movs r0, #1
	b _080228EE
_080228E8:
	subs r0, #1
	strb r0, [r1, #0xf]
_080228EC:
	movs r0, #0
_080228EE:
	pop {pc}

	thumb_func_start sub_080228F0
sub_080228F0: @ 0x080228F0
	push {lr}
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x81
	ldrb r0, [r2]
	cmp r0, #0
	bne _08022910
	adds r0, r1, #0
	movs r1, #1
	movs r2, #0x40
	bl sub_08049F64
	cmp r0, #0
	beq _08022914
	movs r0, #1
	b _08022916
_08022910:
	subs r0, #1
	strb r0, [r2]
_08022914:
	movs r0, #0
_08022916:
	pop {pc}

	thumb_func_start sub_08022918
sub_08022918: @ 0x08022918
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08022930 @ =gUnk_080CBB64
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_08022930: .4byte gUnk_080CBB64

	thumb_func_start sub_08022934
sub_08022934: @ 0x08022934
	push {lr}
	ldr r2, _08022948 @ =gUnk_080CBB7C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08022948: .4byte gUnk_080CBB7C

	thumb_func_start sub_0802294C
sub_0802294C: @ 0x0802294C
	push {lr}
	ldr r1, _08022958 @ =gUnk_080CBB64
	bl sub_0804AA30
	pop {pc}
	.align 2, 0
_08022958: .4byte gUnk_080CBB64

	thumb_func_start nullsub_132
nullsub_132: @ 0x0802295C
	bx lr
	.align 2, 0

	thumb_func_start sub_08022960
sub_08022960: @ 0x08022960
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	adds r0, r4, #0
	bl sub_08022A88
	pop {r4, pc}

	thumb_func_start sub_08022970
sub_08022970: @ 0x08022970
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08022986
	adds r0, r1, #0
	bl sub_08022AA4
_08022986:
	pop {pc}

	thumb_func_start sub_08022988
sub_08022988: @ 0x08022988
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080229A6
	adds r0, r4, #0
	bl sub_08022B20
	cmp r0, #0
	beq _080229A6
	adds r0, r4, #0
	bl sub_08022B0C
	b _080229F6
_080229A6:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _080229C6
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080229F6
	movs r0, #1
	strb r0, [r4, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r0, #0xd6
	bl sub_08004488
_080229C6:
	adds r0, r4, #0
	bl sub_080AEF88
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	adds r1, r0, #0
	cmp r1, #0
	bne _080229F6
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080229F0
	adds r0, r4, #0
	bl sub_08022A88
	b _080229F6
_080229F0:
	movs r0, #4
	strb r0, [r4, #0xf]
	strb r1, [r4, #0x1e]
_080229F6:
	pop {r4, pc}

	thumb_func_start sub_080229F8
sub_080229F8: @ 0x080229F8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa0
	lsls r1, r1, #6
	bl sub_08003FC4
	cmp r0, #0
	bne _08022A3C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08022A30
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #8
	strb r0, [r4, #0xf]
	strb r1, [r4, #0x1e]
	movs r0, #0xc0
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_08022B44
	b _08022A3C
_08022A30:
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r0, #0xd6
	bl sub_08004488
_08022A3C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08022A40
sub_08022A40: @ 0x08022A40
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08022A58
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08022A86
	movs r0, #1
	strb r0, [r4, #0x1e]
_08022A58:
	adds r0, r4, #0
	bl sub_080AEF88
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08022A86
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08022A80
	adds r0, r4, #0
	bl sub_08022A88
	b _08022A86
_08022A80:
	adds r0, r4, #0
	bl sub_08022B44
_08022A86:
	pop {r4, pc}

	thumb_func_start sub_08022A88
sub_08022A88: @ 0x08022A88
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	bl sub_08000E50
	movs r1, #0xf
	ands r0, r1
	adds r0, #8
	strb r0, [r4, #0xe]
	strb r5, [r4, #0x1e]
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08022AA4
sub_08022AA4: @ 0x08022AA4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08000E50
	adds r5, r0, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r1, #3
	adds r0, r5, #0
	ands r0, r1
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r0, #1
	strb r0, [r4, #0xf]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08022AE0
	lsrs r0, r5, #8
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08022AE0
	adds r0, r4, #0
	bl sub_08049EE4
	b _08022AE6
_08022AE0:
	lsrs r0, r5, #0x10
	movs r1, #0x1f
	ands r0, r1
_08022AE6:
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x15]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08022B08
	lsrs r1, r1, #4
	movs r0, #1
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_08022B08:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08022B0C
sub_08022B0C: @ 0x08022B0C
	push {lr}
	movs r1, #3
	strb r1, [r0, #0xc]
	strb r1, [r0, #0xe]
	movs r1, #8
	strb r1, [r0, #0xf]
	bl sub_08022B44
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08022B20
sub_08022B20: @ 0x08022B20
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	bl sub_08049DF4
	cmp r0, #0
	beq _08022B40
	ldr r1, _08022B3C @ =gLinkEntity
	adds r0, r4, #0
	movs r2, #0x24
	movs r3, #0x24
	bl sub_080041A0
	b _08022B42
	.align 2, 0
_08022B3C: .4byte gLinkEntity
_08022B40:
	movs r0, #0
_08022B42:
	pop {r4, pc}

	thumb_func_start sub_08022B44
sub_08022B44: @ 0x08022B44
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	str r0, [r4, #0x20]
	ldr r1, _08022B84 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	strb r1, [r4, #0x15]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08022B7A
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	movs r0, #1
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_08022B7A:
	movs r0, #0xd6
	bl sub_08004488
	pop {r4, pc}
	.align 2, 0
_08022B84: .4byte gLinkEntity

	thumb_func_start sub_08022B88
sub_08022B88: @ 0x08022B88
	push {lr}
	ldr r2, _08022B9C @ =gUnk_080CBB90
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08022B9C: .4byte gUnk_080CBB90

	thumb_func_start sub_08022BA0
sub_08022BA0: @ 0x08022BA0
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x79
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x74
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	ldr r1, _08022BD0 @ =gUnk_080CBBA0
	adds r0, r4, #0
	bl sub_0800129E
	adds r0, r4, #0
	bl sub_08022EAC
	pop {r4, pc}
	.align 2, 0
_08022BD0: .4byte gUnk_080CBBA0

	thumb_func_start sub_08022BD4
sub_08022BD4: @ 0x08022BD4
	push {lr}
	ldr r2, _08022BE8 @ =gUnk_080CBBB4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08022BE8: .4byte gUnk_080CBBB4

	thumb_func_start sub_08022BEC
sub_08022BEC: @ 0x08022BEC
	push {lr}
	adds r2, r0, #0
	movs r0, #0x7a
	adds r0, r0, r2
	mov ip, r0
	adds r3, r2, #0
	adds r3, #0x45
	ldrb r0, [r0]
	ldrb r1, [r3]
	cmp r0, r1
	beq _08022C0A
	adds r1, r2, #0
	adds r1, #0x7b
	movs r0, #0x1e
	strb r0, [r1]
_08022C0A:
	ldrb r0, [r3]
	mov r1, ip
	strb r0, [r1]
	movs r0, #1
	strb r0, [r2, #0xe]
	adds r0, r2, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r2, #0x15]
	ldrb r0, [r2, #0x15]
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r2, #0x14]
	strb r0, [r2, #0x1e]
	ldr r0, [r2, #0x54]
	adds r3, r2, #0
	adds r3, #0x3d
	ldrb r1, [r3]
	adds r0, #0x3d
	strb r1, [r0]
	ldr r0, [r2, #0x7c]
	ldrb r1, [r3]
	adds r0, #0x3d
	strb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x80
	ldr r0, [r0]
	ldrb r1, [r3]
	adds r0, #0x3d
	strb r1, [r0]
	ldr r1, _08022C54 @ =gUnk_080CBBA0
	adds r0, r2, #0
	bl sub_0804AA30
	pop {pc}
	.align 2, 0
_08022C54: .4byte gUnk_080CBBA0

	thumb_func_start sub_08022C58
sub_08022C58: @ 0x08022C58
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldrb r1, [r7, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r7, #0x10]
	ldr r0, _08022D3C @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x44
	bhi _08022D34
	movs r0, #0xd
	movs r1, #1
	bl CreateEnemy
	mov sb, r0
	str r0, [r7, #0x54]
	mov r2, sb
	adds r2, #0x29
	ldrb r1, [r2]
	movs r4, #8
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r1, #5
	mov r8, r1
	mov r1, r8
	orrs r0, r1
	strb r0, [r2]
	mov r0, sb
	str r7, [r0, #0x50]
	adds r0, r7, #0
	mov r1, sb
	bl sub_0806FA24
	movs r0, #0xd
	movs r1, #2
	bl CreateEnemy
	adds r6, r0, #0
	mov r1, sb
	str r6, [r1, #0x54]
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	mov r1, r8
	orrs r0, r1
	strb r0, [r2]
	str r7, [r6, #0x50]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0806FA24
	movs r0, #0xd
	movs r1, #3
	bl CreateEnemy
	adds r5, r0, #0
	str r5, [r6, #0x54]
	adds r1, r5, #0
	adds r1, #0x29
	ldrb r0, [r1]
	ands r4, r0
	mov r0, r8
	orrs r4, r0
	strb r4, [r1]
	str r7, [r5, #0x50]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0806FA24
	adds r0, r7, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r7, #0xc]
	strb r0, [r7, #0xe]
	strb r0, [r7, #0xf]
	ldrb r0, [r7, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r7, #0x10]
	str r7, [r7, #0x50]
	mov r1, sb
	str r1, [r7, #0x54]
	str r6, [r7, #0x7c]
	adds r0, r7, #0
	adds r0, #0x80
	str r5, [r0]
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r7, #0x15]
	ldrb r0, [r7, #0x15]
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r7, #0x14]
	strb r0, [r7, #0x1e]
	adds r0, r7, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r0, #0x35
	strb r1, [r0]
_08022D34:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08022D3C: .4byte gUnk_03003DBC

	thumb_func_start sub_08022D40
sub_08022D40: @ 0x08022D40
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x7b
	ldrb r1, [r2]
	cmp r1, #0
	beq _08022D66
	adds r0, r1, #0
	adds r0, #0xff
	strb r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08022D8E
	ldrb r0, [r4, #0x14]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	b _08022D8A
_08022D66:
	adds r0, r4, #0
	bl sub_08022F14
	adds r0, r4, #0
	bl sub_080AEF88
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _08022D8E
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800417E
	ldrb r0, [r4, #0x15]
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	asrs r0, r0, #2
_08022D8A:
	strb r0, [r4, #0x14]
	strb r0, [r4, #0x1e]
_08022D8E:
	pop {r4, pc}

	thumb_func_start sub_08022D90
sub_08022D90: @ 0x08022D90
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _08022DE0
	ldr r1, _08022DDC @ =gUnk_080CBBBC
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	ldr r4, [r5, #0x50]
	ldrb r2, [r4, #0x1b]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r5, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r5, #0x1b]
	ldrb r0, [r4, #0x19]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r5, #0x19]
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x19]
	adds r4, #0x38
	ldrb r1, [r4]
	adds r0, r5, #0
	adds r0, #0x38
	strb r1, [r0]
	b _08022DE6
	.align 2, 0
_08022DDC: .4byte gUnk_080CBBBC
_08022DE0:
	adds r0, r5, #0
	bl sub_0805E7BC
_08022DE6:
	pop {r4, r5, pc}

	thumb_func_start sub_08022DE8
sub_08022DE8: @ 0x08022DE8
	push {lr}
	adds r3, r0, #0
	movs r0, #1
	strb r0, [r3, #0xc]
	adds r0, r3, #0
	adds r0, #0x7c
	movs r1, #0x88
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	ldr r0, [r3, #0x50]
	ldrb r0, [r0, #0x14]
	strb r0, [r3, #0x14]
	adds r2, r3, #0
	adds r2, #0x84
	ldrb r1, [r3, #0x14]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	str r0, [r2]
	ldrb r0, [r3, #0xa]
	cmp r0, #3
	beq _08022E38
	adds r0, #7
	b _08022E3C
_08022E38:
	ldrb r0, [r3, #0x14]
	adds r0, #0xa
_08022E3C:
	strb r0, [r3, #0x1e]
	pop {pc}

	thumb_func_start sub_08022E40
sub_08022E40: @ 0x08022E40
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x2e]
	adds r0, #0x74
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	ldr r2, [r4, #0x50]
	adds r2, #0x79
	ldrb r0, [r2]
	adds r0, #1
	movs r3, #7
	ands r0, r3
	adds r0, #0x7c
	adds r0, r4, r0
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	subs r0, #8
	lsrs r1, r1, #4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r5, [r4, #0x2e]
	adds r0, r0, r5
	strh r0, [r4, #0x2e]
	subs r1, #8
	ldrh r0, [r4, #0x32]
	adds r1, r1, r0
	strh r1, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x84
	ldrb r0, [r2]
	adds r0, #1
	ands r0, r3
	lsls r0, r0, #2
	ldr r1, [r1]
	lsrs r1, r0
	movs r0, #7
	ands r1, r0
	strb r1, [r4, #0x14]
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _08022EA2
	adds r0, r1, #0
	adds r0, #0xa
	strb r0, [r4, #0x1e]
	b _08022EA8
_08022EA2:
	adds r0, r4, #0
	bl sub_08022EAC
_08022EA8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08022EAC
sub_08022EAC: @ 0x08022EAC
	push {r4, r5, lr}
	mov ip, r0
	ldr r1, [r0, #0x54]
	cmp r1, #0
	beq _08022F12
	ldr r0, [r0, #0x50]
	adds r0, #0x79
	ldrb r0, [r0]
	movs r4, #7
	adds r3, r4, #0
	ands r3, r0
	adds r3, r3, r1
	adds r3, #0x7c
	mov r0, ip
	ldrh r1, [r0, #0x2e]
	adds r0, #0x74
	ldrb r0, [r0]
	subs r1, r1, r0
	adds r1, #8
	movs r5, #0xf
	ands r1, r5
	mov r2, ip
	ldrh r0, [r2, #0x32]
	adds r2, #0x76
	ldrb r2, [r2]
	subs r0, r0, r2
	adds r0, #8
	ands r0, r5
	lsls r0, r0, #4
	adds r1, r1, r0
	strb r1, [r3]
	mov r1, ip
	ldr r0, [r1, #0x50]
	adds r0, #0x79
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #2
	mov r2, ip
	ldrb r1, [r2, #0x14]
	ands r4, r1
	lsls r4, r0
	movs r2, #0xf
	lsls r2, r0
	mov r0, ip
	ldr r1, [r0, #0x54]
	adds r1, #0x84
	ldr r0, [r1]
	bics r0, r2
	orrs r4, r0
	str r4, [r1]
_08022F12:
	pop {r4, r5, pc}

	thumb_func_start sub_08022F14
sub_08022F14: @ 0x08022F14
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08022F4E
	adds r0, r4, #0
	bl sub_08049EE4
	ldrb r1, [r4, #0x15]
	subs r2, r0, r1
	movs r1, #0x1f
	ands r2, r1
	adds r0, r2, #4
	ands r0, r1
	cmp r0, #8
	bls _08022F4E
	movs r0, #8
	strb r0, [r4, #0xf]
	cmp r2, #0xf
	bhi _08022F46
	adds r1, r4, #0
	adds r1, #0x78
	movs r0, #1
	b _08022F4C
_08022F46:
	adds r1, r4, #0
	adds r1, #0x78
	movs r0, #0xff
_08022F4C:
	strb r0, [r1]
_08022F4E:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08022F9E
	movs r0, #4
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r1
	adds r5, r4, #0
	adds r5, #0x78
	cmp r0, #0
	bne _08022F84
	movs r0, #8
	strb r0, [r4, #0xf]
	bl sub_08000E50
	ldr r2, _08022FA0 @ =gUnk_080CBBC4
	movs r1, #1
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r5]
_08022F84:
	ldrb r0, [r5]
	ldrb r1, [r4, #0x15]
	adds r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r4, #0x14]
	strb r0, [r4, #0x1e]
_08022F9E:
	pop {r4, r5, pc}
	.align 2, 0
_08022FA0: .4byte gUnk_080CBBC4

	thumb_func_start sub_08022FA4
sub_08022FA4: @ 0x08022FA4
	push {lr}
	ldr r1, _08022FB0 @ =gUnk_080CBBC8
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_08022FB0: .4byte gUnk_080CBBC8

	thumb_func_start sub_08022FB4
sub_08022FB4: @ 0x08022FB4
	push {lr}
	ldr r2, _08022FC8 @ =gUnk_080CBBDC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08022FC8: .4byte gUnk_080CBBDC

	thumb_func_start nullsub_133
nullsub_133: @ 0x08022FCC
	bx lr
	.align 2, 0

	thumb_func_start sub_08022FD0
sub_08022FD0: @ 0x08022FD0
	push {lr}
	movs r3, #1
	movs r1, #1
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	subs r1, #5
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x18]
	movs r1, #0
	bl sub_08023000
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08022FEC
sub_08022FEC: @ 0x08022FEC
	push {lr}
	movs r1, #0x80
	bl sub_08023000
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08022FF8
sub_08022FF8: @ 0x08022FF8
	bx lr
	.align 2, 0

	thumb_func_start sub_08022FFC
sub_08022FFC: @ 0x08022FFC
	bx lr
	.align 2, 0

	thumb_func_start sub_08023000
sub_08023000: @ 0x08023000
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0x80
	bne _0802300E
	bl sub_080042B8
	b _08023014
_0802300E:
	adds r0, r4, #0
	bl sub_080042AC
_08023014:
	movs r2, #0x80
	adds r0, r4, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	cmp r0, #0x40
	bne _08023022
	rsbs r2, r2, #0
_08023022:
	ldrb r0, [r4, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r2, #0x80
	movs r3, #0
	bl sub_0805EC9C
	pop {r4, pc}

	thumb_func_start sub_08023038
sub_08023038: @ 0x08023038
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r5, [r4, #0x2e]
	ldrh r6, [r4, #0x32]
	ldrb r1, [r4, #0xa]
	cmp r1, #0
	bne _0802306C
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _08023052
	adds r0, r4, #0
	bl sub_0802390C
_08023052:
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x7d
	strb r0, [r1]
	ldr r1, _08023068 @ =gUnk_080CBC38
	adds r0, r4, #0
	bl sub_0800129E
	b _08023090
	.align 2, 0
_08023068: .4byte gUnk_080CBC38
_0802306C:
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _08023088
	cmp r1, #8
	beq _08023080
	adds r0, r4, #0
	bl sub_080235BC
	b _08023090
_08023080:
	adds r0, r4, #0
	bl sub_08023730
	b _08023090
_08023088:
	adds r0, r4, #0
	bl sub_0805E7BC
	b _080230CA
_08023090:
	ldr r0, [r4, #0x50]
	adds r2, r0, #0
	adds r2, #0x7c
	adds r0, #0x7d
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	beq _080230CA
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _080230CA
	ldrb r2, [r2]
	subs r2, #1
	movs r0, #0xf
	ands r2, r0
	adds r2, #0x78
	adds r2, r1, r2
	ldrh r1, [r4, #0x2e]
	subs r1, r1, r5
	adds r1, #8
	movs r3, #0xf
	ands r1, r3
	lsls r1, r1, #4
	ldrh r0, [r4, #0x32]
	subs r0, r0, r6
	adds r0, #8
	ands r0, r3
	orrs r1, r0
	strb r1, [r2]
_080230CA:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080230CC
sub_080230CC: @ 0x080230CC
	push {lr}
	ldr r2, _080230E0 @ =gUnk_080CBC50
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080230E0: .4byte gUnk_080CBC50

	thumb_func_start sub_080230E4
sub_080230E4: @ 0x080230E4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xd]
	cmp r0, #0xff
	bne _08023132
	movs r2, #0
	movs r0, #7
	strb r0, [r5, #0xc]
	movs r3, #1
	strb r3, [r5, #0xe]
	strb r2, [r5, #0xd]
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0x85
	strb r0, [r1]
	subs r1, #2
	movs r0, #0xf8
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x7f
	strb r2, [r0]
	subs r0, #4
	strb r2, [r0]
	subs r0, #0x3a
	ldrb r0, [r0]
	cmp r0, #0x80
	beq _0802311E
	cmp r0, #0x9e
	bne _08023128
_0802311E:
	strb r2, [r5, #0xb]
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #0x14
	b _08023130
_08023128:
	strb r3, [r5, #0xb]
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #8
_08023130:
	strb r0, [r1]
_08023132:
	adds r0, r5, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802318A
	adds r0, r5, #0
	adds r0, #0x7f
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802318A
	ldrb r0, [r5, #0xc]
	cmp r0, #7
	bne _0802318A
	ldr r4, _08023194 @ =gLinkEntity
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA24
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	adds r4, #0x3d
	movs r0, #0xec
	strb r0, [r4]
	ldr r2, _08023198 @ =gUnk_03003F80
	movs r0, #0x41
	strb r0, [r2, #2]
	ldr r0, [r2, #0x30]
	ldr r1, _0802319C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r2, #0x30]
_0802318A:
	ldr r1, _080231A0 @ =gUnk_080CBC38
	adds r0, r5, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_08023194: .4byte gLinkEntity
_08023198: .4byte gUnk_03003F80
_0802319C: .4byte 0xFFF7FFFF
_080231A0: .4byte gUnk_080CBC38

	thumb_func_start sub_080231A4
sub_080231A4: @ 0x080231A4
	push {lr}
	adds r2, r0, #0
	adds r2, #0x7c
	ldrb r1, [r2]
	adds r1, #1
	strb r1, [r2]
	bl sub_08001324

	thumb_func_start nullsub_134
nullsub_134: @ 0x080231B4
	pop {pc}
	.align 2, 0

	thumb_func_start nullsub_135
nullsub_135: @ 0x080231B8
	bx lr
	.align 2, 0

	thumb_func_start sub_080231BC
sub_080231BC: @ 0x080231BC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _08023280 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x3f
	bhi _0802327E
	movs r0, #0xf
	movs r1, #1
	bl CreateEnemy
	adds r4, r0, #0
	str r4, [r6, #0x54]
	str r6, [r4, #0x50]
	movs r0, #0xf
	movs r1, #2
	bl CreateEnemy
	adds r5, r0, #0
	str r5, [r4, #0x54]
	str r6, [r5, #0x50]
	movs r0, #0xf
	movs r1, #3
	bl CreateEnemy
	adds r4, r0, #0
	str r4, [r5, #0x54]
	str r6, [r4, #0x50]
	movs r0, #0xf
	movs r1, #4
	bl CreateEnemy
	adds r5, r0, #0
	str r5, [r4, #0x54]
	str r6, [r5, #0x50]
	movs r0, #0xf
	movs r1, #5
	bl CreateEnemy
	adds r4, r0, #0
	str r4, [r5, #0x54]
	str r6, [r4, #0x50]
	movs r0, #0xf
	movs r1, #6
	bl CreateEnemy
	adds r5, r0, #0
	str r5, [r4, #0x54]
	str r6, [r5, #0x50]
	movs r0, #0xf
	movs r1, #7
	bl CreateEnemy
	adds r4, r0, #0
	str r4, [r5, #0x54]
	str r6, [r4, #0x50]
	movs r0, #0xf
	movs r1, #8
	bl CreateEnemy
	str r0, [r4, #0x54]
	str r4, [r0, #0x74]
	str r6, [r0, #0x50]
	movs r1, #0
	str r1, [r0, #0x54]
	adds r0, r6, #0
	bl sub_0804A720
	movs r0, #6
	strb r0, [r6, #0xc]
	movs r1, #0x1e
	strb r1, [r6, #0xe]
	str r6, [r6, #0x50]
	adds r0, r6, #0
	adds r0, #0x78
	strh r1, [r0]
	ldrb r1, [r6, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r6, #0x1a]
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r6, #0x15]
	ldrb r0, [r6, #0x15]
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r6, #0x14]
	ldrb r1, [r6, #0x14]
	adds r0, r6, #0
	bl sub_08004260
_0802327E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08023280: .4byte gUnk_03003DBC

	thumb_func_start nullsub_136
nullsub_136: @ 0x08023284
	bx lr
	.align 2, 0

	thumb_func_start sub_08023288
sub_08023288: @ 0x08023288
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08023324
	ldrb r1, [r7, #0xe]
	adds r0, r1, #1
	strb r0, [r7, #0xe]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08023324
	bl sub_08000E50
	adds r4, r0, #0
	movs r0, #0x1e
	ands r4, r0
	movs r0, #0
	mov r8, r0
	ldr r2, _08023308 @ =gLinkEntity
	mov sb, r2
	ldr r0, _0802330C @ =gUnk_080CBC70
	mov sl, r0
_080232C2:
	mov r2, sb
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	mov r2, sl
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r1, r0
	mov r0, sb
	movs r2, #0x32
	ldrsh r1, [r0, r2]
	adds r0, r4, #1
	add r0, sl
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r1, r0
	ldr r0, _08023310 @ =gUnk_03001198
	ldrb r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080002A4
	bl sub_08023A38
	cmp r0, #0
	beq _08023314
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_08023990
	b _08023324
	.align 2, 0
_08023308: .4byte gLinkEntity
_0802330C: .4byte gUnk_080CBC70
_08023310: .4byte gUnk_03001198
_08023314:
	adds r4, #2
	movs r0, #0x1e
	ands r4, r0
	movs r2, #1
	add r8, r2
	mov r0, r8
	cmp r0, #0xf
	bls _080232C2
_08023324:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08023330
sub_08023330: @ 0x08023330
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08004274
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08023394
	movs r0, #4
	strb r0, [r5, #0xc]
	movs r0, #0x19
	strb r0, [r5, #0xe]
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x78
	movs r4, #0
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r1]
	bl sub_08000E50
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r5, #0x15]
	lsrs r0, r0, #2
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0x7b
	strb r4, [r0]
	adds r0, #4
	strb r4, [r0]
	ldrb r1, [r5, #0x14]
	adds r0, r5, #0
	bl sub_08023A88
	ldr r1, [r5, #0x54]
	adds r0, r5, #0
	bl sub_0806FA24
	adds r0, r5, #0
	movs r1, #4
	movs r2, #0
	bl CreateFX
_08023394:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08023398
sub_08023398: @ 0x08023398
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	adds r0, #3
	ldrb r0, [r0]
	cmp r0, #0
	beq _080233C0
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	bne _080233C0
	adds r1, r5, #0
	adds r1, #0x78
	movs r0, #1
	strh r0, [r1]
_080233C0:
	adds r4, r5, #0
	adds r4, #0x78
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08023416
	adds r0, r5, #0
	bl sub_080002A0
	bl sub_08023A38
	cmp r0, #0
	beq _08023412
	movs r0, #5
	strb r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x7f
	movs r0, #0
	strb r0, [r1]
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0x85
	strb r0, [r1]
	ldr r1, [r5, #0x54]
	movs r0, #1
	strb r0, [r1, #0xe]
	adds r0, r5, #0
	bl sub_08023A68
	adds r0, r5, #0
	movs r1, #4
	movs r2, #0
	bl CreateFX
	b _0802349C
_08023412:
	movs r0, #0x28
	strh r0, [r4]
_08023416:
	adds r0, r5, #0
	adds r0, #0x7f
	ldrb r0, [r0]
	cmp r0, #0
	beq _08023426
	adds r0, r5, #0
	bl sub_08023AB0
_08023426:
	ldrb r0, [r5, #0xe]
	subs r1, r0, #1
	strb r1, [r5, #0xe]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08023440
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0802349C
	movs r0, #0x19
	strb r0, [r5, #0xe]
	b _0802349C
_08023440:
	ldr r4, [r5, #0x2c]
	ldr r6, [r5, #0x30]
	adds r0, r5, #0
	bl sub_080AEF88
	ldr r0, [r5, #0x2c]
	cmp r0, r4
	bne _08023460
	ldr r0, [r5, #0x30]
	cmp r0, r6
	bne _08023460
	adds r1, r5, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
_08023460:
	ldr r0, _080234A0 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0802349C
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049F84
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_08004596
	ldrb r0, [r5, #0x15]
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	asrs r0, r0, #2
	ldrb r1, [r5, #0x14]
	cmp r0, r1
	beq _0802349C
	strb r0, [r5, #0x14]
	adds r1, r5, #0
	adds r1, #0x7b
	ldrb r1, [r1]
	adds r1, r0, r1
	adds r0, r5, #0
	bl sub_08004260
_0802349C:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080234A0: .4byte gUnk_030010A0

	thumb_func_start sub_080234A4
sub_080234A4: @ 0x080234A4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x7f
	ldrb r0, [r0]
	cmp r0, #0
	beq _080234D6
	movs r0, #6
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #0xa
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x78
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r1]
_080234D6:
	pop {r4, pc}

	thumb_func_start sub_080234D8
sub_080234D8: @ 0x080234D8
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802351A
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x1a]
	subs r0, #0x12
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r4, #0x1a]
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08023A88
_0802351A:
	pop {r4, pc}

	thumb_func_start sub_0802351C
sub_0802351C: @ 0x0802351C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldrb r0, [r7, #0xe]
	cmp r0, #0
	beq _0802355A
	ldrb r0, [r7, #0xb]
	cmp r0, #1
	beq _08023534
	ldr r0, _080235A8 @ =gLinkEntity
	ldrb r0, [r0, #0x1e]
	cmp r0, #0xff
	bne _0802355A
_08023534:
	movs r0, #0
	strb r0, [r7, #0xe]
	ldr r1, [r7, #0x54]
	movs r0, #3
	strb r0, [r1, #0xc]
	ldr r1, [r7, #0x54]
	adds r0, r7, #0
	adds r0, #0x80
	ldrb r0, [r0]
	strb r0, [r1, #0xf]
	ldr r0, [r7, #0x54]
	ldrb r1, [r0, #0x14]
	adds r1, #1
	bl sub_08004260
	ldrb r1, [r7, #0x14]
	adds r0, r7, #0
	bl sub_08004260
_0802355A:
	adds r0, r7, #0
	adds r0, #0x7f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080235B4
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	bne _080235B8
	ldr r5, _080235A8 @ =gLinkEntity
	ldrb r0, [r7, #0x14]
	movs r4, #7
	adds r2, r4, #0
	ands r2, r0
	strb r2, [r5, #0x14]
	ldr r3, _080235AC @ =gUnk_03003F80
	ldr r0, [r3, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r3, #0x30]
	ldr r6, _080235B0 @ =gUnk_080CBC90
	adds r2, r2, r6
	movs r3, #0
	ldrsb r3, [r2, r3]
	lsls r3, r3, #0x10
	adds r0, r7, #0
	adds r1, r5, #0
	movs r2, #0
	bl PositionRelative
	ldrb r0, [r7, #0x14]
	ands r4, r0
	adds r4, r4, r6
	ldrb r0, [r4]
	rsbs r0, r0, #0
	adds r5, #0x63
	strb r0, [r5]
	b _080235B8
	.align 2, 0
_080235A8: .4byte gLinkEntity
_080235AC: .4byte gUnk_03003F80
_080235B0: .4byte gUnk_080CBC90
_080235B4:
	movs r0, #4
	strb r0, [r7, #0xc]
_080235B8:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080235BC
sub_080235BC: @ 0x080235BC
	push {lr}
	ldr r2, _080235D0 @ =gUnk_080CBC98
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080235D0: .4byte gUnk_080CBC98

	thumb_func_start sub_080235D4
sub_080235D4: @ 0x080235D4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r1, [r4, #0x50]
	ldrh r0, [r1, #0x2e]
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #0x32]
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl sub_080239F0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _080235F6
	movs r0, #0x10
	b _080235F8
_080235F6:
	movs r0, #0x12
_080235F8:
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
	pop {r4, pc}

	thumb_func_start sub_08023604
sub_08023604: @ 0x08023604
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x50]
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	adds r0, r0, r2
	adds r0, #0x78
	ldrb r0, [r0]
	cmp r0, #0x88
	beq _08023640
	movs r1, #0
	movs r0, #2
	strb r0, [r2, #0xc]
	strb r1, [r2, #0xe]
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	adds r0, r2, #0
	bl sub_08023644
_08023640:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08023644
sub_08023644: @ 0x08023644
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0x17
	bne _08023692
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08023692
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bne _08023692
	movs r6, #0x32
	ldrsh r1, [r4, r6]
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bne _08023692
	movs r2, #1
	strb r2, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0x54]
	strb r2, [r0, #0xe]
	adds r0, r4, #0
	bl sub_080239F0
_08023692:
	adds r0, r5, #0
	adds r0, #0x7c
	adds r1, r5, #0
	adds r1, #0x7d
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080236F2
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	adds r1, #0x78
	adds r1, r4, r1
	ldrb r0, [r1]
	lsrs r0, r0, #4
	ldr r3, _080236F4 @ =0x0000FFF8
	adds r0, r0, r3
	ldrh r6, [r4, #0x2e]
	adds r0, r0, r6
	strh r0, [r4, #0x2e]
	ldrb r0, [r1]
	ands r2, r0
	adds r2, r2, r3
	ldrh r0, [r4, #0x32]
	adds r2, r2, r0
	strh r2, [r4, #0x32]
	ldrb r2, [r5, #0x1b]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r5, #0x19]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r4, #0x19]
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x19]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
_080236F2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080236F4: .4byte 0x0000FFF8

	thumb_func_start sub_080236F8
sub_080236F8: @ 0x080236F8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802372E
	movs r0, #2
	strb r0, [r4, #0xc]
	ldr r1, [r4, #0x54]
	movs r0, #3
	strb r0, [r1, #0xc]
	ldr r1, [r4, #0x54]
	ldr r0, [r4, #0x50]
	adds r0, #0x80
	ldrb r0, [r0]
	strb r0, [r1, #0xf]
	ldr r0, [r4, #0x54]
	ldrb r1, [r0, #0x14]
	adds r1, #1
	bl sub_08004260
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
_0802372E:
	pop {r4, pc}

	thumb_func_start sub_08023730
sub_08023730: @ 0x08023730
	push {lr}
	ldr r2, _08023744 @ =gUnk_080CBCA8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08023744: .4byte gUnk_080CBCA8

	thumb_func_start sub_08023748
sub_08023748: @ 0x08023748
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x14
	strb r0, [r4, #0x14]
	ldr r1, [r4, #0x50]
	ldrh r0, [r1, #0x2e]
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #0x32]
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl sub_080239F0
	adds r0, r4, #0
	bl sub_08023A68
	pop {r4, pc}

	thumb_func_start sub_0802376C
sub_0802376C: @ 0x0802376C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	ldrb r0, [r5, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _0802379A
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0xf
	bhi _0802379A
	ldrb r0, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #0x18]
	adds r0, r4, #0
	bl sub_08004274
_0802379A:
	adds r0, r5, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	adds r0, r0, r4
	adds r0, #0x78
	ldrb r0, [r0]
	cmp r0, #0x88
	beq _080237D4
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldr r0, [r4, #0x50]
	adds r0, #0x7f
	movs r1, #1
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #0x14
	bl sub_08023A88
	adds r0, r4, #0
	bl sub_080237D8
_080237D4:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080237D8
sub_080237D8: @ 0x080237D8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0x17
	bne _0802382E
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802382E
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bne _0802382E
	movs r6, #0x32
	ldrsh r1, [r4, r6]
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bne _0802382E
	movs r2, #1
	strb r2, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r5, #0
	adds r0, #0x7f
	strb r2, [r0]
	adds r0, r4, #0
	bl sub_080239F0
	adds r0, r4, #0
	bl sub_08023A68
_0802382E:
	adds r0, r5, #0
	adds r0, #0x7c
	adds r1, r5, #0
	adds r1, #0x7d
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0802388E
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	adds r1, #0x78
	adds r1, r4, r1
	ldrb r0, [r1]
	lsrs r0, r0, #4
	ldr r3, _08023890 @ =0x0000FFF8
	adds r0, r0, r3
	ldrh r6, [r4, #0x2e]
	adds r0, r0, r6
	strh r0, [r4, #0x2e]
	ldrb r0, [r1]
	ands r2, r0
	adds r2, r2, r3
	ldrh r0, [r4, #0x32]
	adds r2, r2, r0
	strh r2, [r4, #0x32]
	ldrb r2, [r5, #0x1b]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r5, #0x19]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r4, #0x19]
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x19]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
_0802388E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08023890: .4byte 0x0000FFF8

	thumb_func_start sub_08023894
sub_08023894: @ 0x08023894
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08023900
	movs r0, #2
	strb r0, [r5, #0xc]
	ldr r0, [r5, #0x50]
	adds r0, #0x7f
	movs r1, #1
	strb r1, [r0]
	ldrb r1, [r5, #0x14]
	adds r0, r5, #0
	bl sub_08004260
	ldr r0, [r5, #0x50]
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	bne _08023900
	ldr r2, _08023904 @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2, #0x30]
	ldr r4, _08023908 @ =gLinkEntity
	ldrh r0, [r5, #0x2e]
	strh r0, [r4, #0x2e]
	ldrh r0, [r5, #0x32]
	strh r0, [r4, #0x32]
	ldr r0, [r5, #0x74]
	adds r1, r5, #0
	bl sub_080045C4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xc
	strb r0, [r1]
	subs r0, #0x1c
	bl ModHealth
	adds r0, r4, #0
	movs r1, #0x7a
	bl sub_0800449C
_08023900:
	pop {r4, r5, pc}
	.align 2, 0
_08023904: .4byte gUnk_03003F80
_08023908: .4byte gLinkEntity

	thumb_func_start sub_0802390C
sub_0802390C: @ 0x0802390C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08023932
	ldr r2, [r5, #0x54]
	adds r3, r5, #0
	adds r3, #0x3d
_08023922:
	ldrb r0, [r3]
	adds r1, r2, #0
	adds r1, #0x3d
	strb r0, [r1]
	ldr r2, [r2, #0x54]
	cmp r2, #0
	bne _08023922
	b _0802398C
_08023932:
	ldr r2, [r5, #0x54]
	b _0802393C
_08023936:
	ldr r2, [r2, #0x54]
	cmp r2, #0
	beq _0802398C
_0802393C:
	adds r0, r2, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08023936
	movs r0, #0x45
	adds r0, r0, r2
	mov ip, r0
	ldrb r1, [r0]
	movs r4, #0xff
	subs r0, r4, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _08023936
	adds r0, r1, #0
	orrs r0, r4
	mov r1, ip
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x3d
	ldrb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x45
	ldrb r0, [r1]
	cmp r0, r3
	blo _0802397A
	subs r0, r0, r3
	b _0802397C
_0802397A:
	movs r0, #0
_0802397C:
	strb r0, [r1]
	adds r2, r5, #0
_08023980:
	adds r0, r2, #0
	adds r0, #0x3d
	strb r4, [r0]
	ldr r2, [r2, #0x54]
	cmp r2, #0
	bne _08023980
_0802398C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08023990
sub_08023990: @ 0x08023990
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #3
	strb r0, [r5, #0xc]
	ldrb r3, [r5, #0x18]
	subs r0, #7
	ands r0, r3
	movs r3, #1
	orrs r0, r3
	strb r0, [r5, #0x18]
	movs r0, #0x55
	strb r0, [r5, #0x1a]
	adds r4, r5, #0
	adds r4, #0x29
	ldrb r0, [r4]
	movs r3, #7
	orrs r0, r3
	strb r0, [r4]
	strh r1, [r5, #0x2e]
	strh r2, [r5, #0x32]
	ldr r0, _080239EC @ =gLinkEntity
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, r5, #0
	bl UpdateSpriteOrderAndFlip
	adds r0, r5, #0
	movs r1, #0x16
	bl sub_08004260
	ldr r4, [r5, #0x54]
_080239D4:
	adds r0, r4, #0
	bl sub_080239F0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA24
	ldr r4, [r4, #0x54]
	cmp r4, #0
	bne _080239D4
	pop {r4, r5, pc}
	.align 2, 0
_080239EC: .4byte gLinkEntity

	thumb_func_start sub_080239F0
sub_080239F0: @ 0x080239F0
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x78
	movs r0, #0x88
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	bx lr

	thumb_func_start sub_08023A38
sub_08023A38: @ 0x08023A38
	push {lr}
	adds r1, r0, #0
	cmp r1, #0x1a
	beq _08023A5A
	cmp r1, #0x29
	beq _08023A5A
	ldr r0, _08023A60 @ =gUnk_080B37A0
	adds r0, r1, r0
	ldrb r1, [r0]
	cmp r1, #9
	beq _08023A5A
	cmp r1, #0xb
	beq _08023A5A
	cmp r1, #0xa
	beq _08023A5A
	cmp r1, #0xc
	bne _08023A64
_08023A5A:
	movs r0, #1
	b _08023A66
	.align 2, 0
_08023A60: .4byte gUnk_080B37A0
_08023A64:
	movs r0, #0
_08023A66:
	pop {pc}

	thumb_func_start sub_08023A68
sub_08023A68: @ 0x08023A68
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #5
	bl sub_0801D2B4
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0x17
	bl sub_08004260
	pop {r4, pc}

	thumb_func_start sub_08023A88
sub_08023A88: @ 0x08023A88
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0x22
	bl sub_0801D2B4
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08004260
	pop {r4, r5, pc}

	thumb_func_start sub_08023AB0
sub_08023AB0: @ 0x08023AB0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r4, #0
	adds r7, #0x7b
	ldrb r0, [r7]
	cmp r0, #8
	bne _08023AF6
	adds r5, r4, #0
	adds r5, #0x7e
	ldrb r0, [r5]
	adds r6, r0, #0
	cmp r6, #0
	bne _08023B00
	adds r0, r4, #0
	bl sub_08023B38
	cmp r0, #0
	beq _08023ADE
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r0, #0x1d
	bhi _08023B34
_08023ADE:
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x85
	strb r0, [r1]
	strb r6, [r7]
	movs r0, #0x1e
	strb r0, [r5]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
	b _08023B34
_08023AF6:
	adds r5, r4, #0
	adds r5, #0x7e
	ldrb r0, [r5]
	cmp r0, #0
	beq _08023B06
_08023B00:
	subs r0, #1
	strb r0, [r5]
	b _08023B34
_08023B06:
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r0, #0x59
	bls _08023B34
	adds r0, r4, #0
	bl sub_08023B38
	cmp r0, #0
	beq _08023B34
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x87
	strb r0, [r1]
	movs r0, #8
	strb r0, [r7]
	movs r0, #0xa
	strb r0, [r5]
	ldrb r1, [r4, #0x14]
	adds r1, #8
	adds r0, r4, #0
	bl sub_08004260
_08023B34:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08023B38
sub_08023B38: @ 0x08023B38
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_08049DF4
	adds r5, r0, #0
	cmp r5, #0
	bne _08023B4C
	movs r0, #0
	b _08023B8E
_08023B4C:
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	ldr r3, _08023B90 @ =gUnk_080CBCB8
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #1
	adds r1, r0, r3
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r2, r1
	movs r6, #0x32
	ldrsh r1, [r4, r6]
	adds r0, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	movs r3, #0
	movs r4, #0x2e
	ldrsh r0, [r5, r4]
	subs r0, r0, r2
	adds r0, #0x14
	cmp r0, #0x28
	bhi _08023B8C
	movs r6, #0x32
	ldrsh r0, [r5, r6]
	subs r0, r0, r1
	adds r0, #0x14
	cmp r0, #0x28
	bhi _08023B8C
	movs r3, #1
_08023B8C:
	adds r0, r3, #0
_08023B8E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08023B90: .4byte gUnk_080CBCB8

	thumb_func_start sub_08023B94
sub_08023B94: @ 0x08023B94
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _08023BAC
	ldr r1, _08023BA8 @ =gUnk_080CBDBC
	adds r0, r5, #0
	bl sub_0800129E
	b _08023BEC
	.align 2, 0
_08023BA8: .4byte gUnk_080CBDBC
_08023BAC:
	cmp r0, #0
	bne _08023C00
	movs r1, #0x36
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _08023BD8
	adds r0, r5, #0
	bl sub_080012DC
	adds r1, r0, #0
	cmp r1, #0
	beq _08023BD8
	ldr r0, _08023BD4 @ =gUnk_080012C8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
	b _08023C06
	.align 2, 0
_08023BD4: .4byte gUnk_080012C8
_08023BD8:
	ldr r4, _08023BFC @ =gUnk_080CBDD4
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
_08023BEC:
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	b _08023C06
	.align 2, 0
_08023BFC: .4byte gUnk_080CBDD4
_08023C00:
	adds r0, r5, #0
	bl sub_08023E10
_08023C06:
	pop {r4, r5, pc}

	thumb_func_start sub_08023C08
sub_08023C08: @ 0x08023C08
	push {lr}
	ldr r2, _08023C1C @ =gUnk_080CBDEC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08023C1C: .4byte gUnk_080CBDEC

	thumb_func_start sub_08023C20
sub_08023C20: @ 0x08023C20
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08023C34
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08023C34:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _08023C48
	ldr r1, _08023C44 @ =gUnk_080CBDBC
	adds r0, r4, #0
	bl sub_0804AA30
	b _08023C50
	.align 2, 0
_08023C44: .4byte gUnk_080CBDBC
_08023C48:
	ldr r1, _08023C54 @ =gUnk_080CBDD4
	adds r0, r4, #0
	bl sub_0804AA30
_08023C50:
	pop {r4, pc}
	.align 2, 0
_08023C54: .4byte gUnk_080CBDD4

	thumb_func_start nullsub_137
nullsub_137: @ 0x08023C58
	bx lr
	.align 2, 0

	thumb_func_start sub_08023C5C
sub_08023C5C: @ 0x08023C5C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	bl sub_08000E50
	movs r1, #0x30
	ands r0, r1
	adds r0, #0xb4
	strb r0, [r4, #0xe]
	bl sub_08000E50
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
	pop {r4, pc}

	thumb_func_start sub_08023C8C
sub_08023C8C: @ 0x08023C8C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_08023E54
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08023CDC
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #1
	beq _08023CBC
	movs r0, #8
	strb r0, [r4, #0xe]
	b _08023CDC
_08023CBC:
	bl sub_08000E50
	movs r1, #0x30
	ands r0, r1
	adds r0, #0xb4
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08023E9C
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08004260
_08023CDC:
	pop {r4, pc}
	.align 2, 0
