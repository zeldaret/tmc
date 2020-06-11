	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08085194
sub_08085194: @ 0x08085194
	push {lr}
	ldr r2, _080851A8 @ =gUnk_081205D0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080851A8: .4byte gUnk_081205D0

	thumb_func_start sub_080851AC
sub_080851AC: @ 0x080851AC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r2, #1
	movs r3, #1
	strb r3, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r5, #0xb]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080851E8
	adds r1, r5, #0
	adds r1, #0x7c
	ldr r0, _080851E4 @ =0x0000FFFF
	strh r0, [r1]
	b _080851EE
	.align 2, 0
_080851E4: .4byte 0x0000FFFF
_080851E8:
	adds r0, r5, #0
	adds r0, #0x7c
	strh r3, [r0]
_080851EE:
	ldrb r1, [r5, #0xb]
	movs r0, #2
	ands r0, r1
	strb r0, [r5, #0x14]
	ldrb r4, [r5, #0xa]
	cmp r4, #3
	bne _0808521E
	adds r0, r5, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	adds r1, r5, #0
	adds r1, #0x7a
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0808521E
	ldrb r0, [r5, #0x14]
	adds r0, #2
	movs r1, #3
	ands r0, r1
	strb r0, [r5, #0x14]
	strb r4, [r5, #0xc]
_0808521E:
	ldrb r1, [r5, #0x14]
	adds r0, r5, #0
	bl UpdateSprite
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	bl GetLayerByIndex
	movs r1, #0x2e
	ldrsh r2, [r5, r1]
	ldr r3, _08085260 @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r2, r2, r1
	asrs r2, r2, #4
	movs r4, #0x3f
	ands r2, r4
	movs r6, #0x32
	ldrsh r1, [r5, r6]
	ldrh r3, [r3, #8]
	subs r1, r1, r3
	asrs r1, r1, #4
	ands r1, r4
	lsls r1, r1, #6
	orrs r2, r1
	lsls r2, r2, #1
	adds r2, #4
	adds r0, r0, r2
	str r0, [r5, #0x70]
	adds r0, r5, #0
	bl sub_08085394
	pop {r4, r5, r6, pc}
	.align 2, 0
_08085260: .4byte gRoomControls

	thumb_func_start sub_08085264
sub_08085264: @ 0x08085264
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x86
	ldrh r0, [r5]
	bl sub_0807CBE4
	cmp r0, #0
	beq _080852AE
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _0808528A
	ldrh r0, [r5]
	bl sub_0807CD48
_0808528A:
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	ldrb r1, [r4, #0x14]
	adds r0, r0, r1
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_0808543C
	ldr r0, _080852B0 @ =0x00000151
	bl sub_08004488
_080852AE:
	pop {r4, r5, pc}
	.align 2, 0
_080852B0: .4byte 0x00000151

	thumb_func_start sub_080852B4
sub_080852B4: @ 0x080852B4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08085300
	movs r4, #3
	movs r0, #3
	strb r0, [r5, #0xc]
	ldrb r0, [r5, #0xe]
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	adds r1, r5, #0
	adds r1, #0x7a
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	ldrb r1, [r5, #0x14]
	adds r0, r0, r1
	ands r0, r4
	strb r0, [r5, #0x14]
	ldrb r1, [r5, #0x14]
	adds r0, r5, #0
	bl UpdateSprite
	adds r0, r5, #0
	bl sub_08085394
	ldr r0, _08085304 @ =0x00000151
	bl sub_08004488
_08085300:
	pop {r4, r5, pc}
	.align 2, 0
_08085304: .4byte 0x00000151

	thumb_func_start sub_08085308
sub_08085308: @ 0x08085308
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080854A8
	cmp r0, #0
	bne _0808538C
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _08085324
	cmp r0, #2
	ble _08085354
	cmp r0, #3
	beq _08085338
	b _08085354
_08085324:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	bne _08085354
	movs r0, #1
	strb r0, [r4, #0xc]
	b _0808538C
_08085338:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	adds r1, r4, #0
	adds r1, #0x7a
	ldrh r1, [r1]
	cmp r0, r1
	bne _08085350
	movs r0, #0xff
	b _08085352
_08085350:
	movs r0, #1
_08085352:
	strb r0, [r4, #0xf]
_08085354:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808538C
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	ldrb r1, [r4, #0x14]
	adds r0, r0, r1
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_0808543C
	ldr r0, _08085390 @ =0x00000151
	bl sub_08004488
_0808538C:
	pop {r4, pc}
	.align 2, 0
_08085390: .4byte 0x00000151

	thumb_func_start sub_08085394
sub_08085394: @ 0x08085394
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, _08085430 @ =gUnk_081205E0
	ldrb r2, [r7, #0x14]
	lsrs r2, r2, #1
	lsls r2, r2, #1
	adds r0, r2, r0
	ldrh r0, [r0]
	mov sl, r0
	ldr r0, _08085434 @ =gUnk_080B4488
	adds r2, r2, r0
	ldr r0, [r7, #0x70]
	mov sb, r0
	movs r1, #0x2e
	ldrsh r4, [r7, r1]
	ldr r1, _08085438 @ =gRoomControls
	ldrh r0, [r1, #6]
	subs r4, r4, r0
	asrs r4, r4, #4
	movs r3, #0x3f
	ands r4, r3
	movs r5, #0x32
	ldrsh r0, [r7, r5]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r4, r0
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	mov r8, r2
	lsls r5, r2, #1
	mov r1, sb
	subs r0, r1, r5
	ldrh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x74
	strh r1, [r0]
	subs r1, r4, r2
	adds r6, r7, #0
	adds r6, #0x38
	ldrb r2, [r6]
	mov r0, sl
	bl SetTile
	mov r1, sb
	ldrh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x76
	strh r0, [r1]
	ldrb r2, [r6]
	mov r0, sl
	adds r1, r4, #0
	bl SetTile
	add r5, sb
	ldrh r1, [r5]
	adds r0, r7, #0
	adds r0, #0x78
	strh r1, [r0]
	add r4, r8
	ldrb r2, [r6]
	mov r0, sl
	adds r1, r4, #0
	bl SetTile
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08085430: .4byte gUnk_081205E0
_08085434: .4byte gUnk_080B4488
_08085438: .4byte gRoomControls

	thumb_func_start sub_0808543C
sub_0808543C: @ 0x0808543C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _080854A0 @ =gUnk_080B4488
	ldrb r2, [r7, #0x14]
	lsrs r2, r2, #1
	lsls r2, r2, #1
	adds r2, r2, r0
	movs r0, #0x2e
	ldrsh r4, [r7, r0]
	ldr r1, _080854A4 @ =gRoomControls
	ldrh r0, [r1, #6]
	subs r4, r4, r0
	asrs r4, r4, #4
	movs r3, #0x3f
	ands r4, r3
	movs r5, #0x32
	ldrsh r0, [r7, r5]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r4, r0
	adds r0, r7, #0
	adds r0, #0x74
	ldrh r0, [r0]
	movs r6, #0
	ldrsb r6, [r2, r6]
	subs r1, r4, r6
	adds r5, r7, #0
	adds r5, #0x38
	ldrb r2, [r5]
	bl SetTile
	adds r0, r7, #0
	adds r0, #0x76
	ldrh r0, [r0]
	ldrb r2, [r5]
	adds r1, r4, #0
	bl SetTile
	adds r0, r7, #0
	adds r0, #0x78
	ldrh r0, [r0]
	adds r4, r4, r6
	ldrb r2, [r5]
	adds r1, r4, #0
	bl SetTile
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080854A0: .4byte gUnk_080B4488
_080854A4: .4byte gRoomControls

	thumb_func_start sub_080854A8
sub_080854A8: @ 0x080854A8
	push {r4, lr}
	ldr r2, _080854E0 @ =gUnk_081205E0
	ldrb r1, [r0, #0x14]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	adds r2, r1, r2
	ldrh r3, [r2]
	adds r4, r3, #0
	ldr r2, _080854E4 @ =gUnk_080B4488
	adds r1, r1, r2
	ldr r2, [r0, #0x70]
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r1, r0, #1
	subs r0, r2, r1
	ldrh r0, [r0]
	cmp r3, r0
	bne _080854E8
	ldrh r0, [r2]
	cmp r3, r0
	bne _080854E8
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r4, r0
	bne _080854E8
	movs r0, #0
	b _080854EA
	.align 2, 0
_080854E0: .4byte gUnk_081205E0
_080854E4: .4byte gUnk_080B4488
_080854E8:
	movs r0, #1
_080854EA:
	pop {r4, pc}
