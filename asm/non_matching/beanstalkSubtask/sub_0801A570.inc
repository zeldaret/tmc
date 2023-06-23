	.syntax unified
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
	bl GetMetaTileType
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
	bl GetMetaTileType
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
	bl GetMetaTileType
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
	bl GetMetaTileType
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
	.syntax divided
