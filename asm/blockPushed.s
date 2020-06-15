	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start BlockPushed
BlockPushed: @ 0x08082E9C
	push {lr}
	ldr r2, _08082EB0 @ =gUnk_0811F624
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08082EB0: .4byte gUnk_0811F624

	thumb_func_start sub_08082EB4
sub_08082EB4: @ 0x08082EB4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _08082EE0 @ =gRoomControls
	ldrb r1, [r0, #4]
	adds r6, r0, #0
	cmp r1, #0x11
	bne _08082EF6
	adds r0, r4, #0
	bl sub_080AE068
	ldr r1, _08082EE4 @ =0x000001C1
	adds r0, r4, #0
	bl sub_080ADF80
	cmp r0, #0
	bne _08082EE8
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	b _0808308E
	.align 2, 0
_08082EE0: .4byte gRoomControls
_08082EE4: .4byte 0x000001C1
_08082EE8:
	ldrb r0, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #0x18]
_08082EF6:
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x20
	strb r0, [r4, #0xe]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x88
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldrh r1, [r6, #6]
	subs r0, r0, r1
	asrs r5, r0, #4
	movs r2, #0x3f
	ands r5, r2
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldrh r1, [r6, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r5, r0
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #3
	ldrh r0, [r4, #0x2e]
	adds r0, r1, r0
	strh r0, [r4, #0x2e]
	ldrh r0, [r4, #0x32]
	adds r1, r1, r0
	strh r1, [r4, #0x32]
	ldr r1, _08082F6C @ =gUnk_0811F64C
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r5, #0
	bl GetTileType
	str r0, [r4, #0x68]
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _08082F7A
	cmp r0, #1
	bgt _08082F70
	cmp r0, #0
	beq _08082F76
	b _08082FF0
	.align 2, 0
_08082F6C: .4byte gUnk_0811F64C
_08082F70:
	cmp r0, #2
	beq _08082F9A
	b _08082FF0
_08082F76:
	adds r0, r5, #0
	b _08082FE8
_08082F7A:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #1
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x40
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x41
	b _08082FE8
_08082F9A:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #1
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #2
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x40
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x41
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x42
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x80
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x81
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x82
_08082FE8:
	adds r1, r4, #0
	bl sub_080832D8
	b _08083088
_08082FF0:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #1
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #2
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #3
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x40
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x41
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x42
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x43
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x80
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x81
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x82
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0x83
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0xc0
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0xc1
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0xc2
	adds r1, r4, #0
	bl sub_080832D8
	adds r0, r5, #0
	adds r0, #0xc3
	adds r1, r4, #0
	bl sub_080832D8
_08083088:
	ldr r0, _08083090 @ =0x0000010F
	bl sub_08004488
_0808308E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08083090: .4byte 0x0000010F

	thumb_func_start sub_08083094
sub_08083094: @ 0x08083094
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_0800445C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080830B4
	adds r0, r4, #0
	bl sub_080830B8
_080830B4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080830B8
sub_080830B8: @ 0x080830B8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	ldrb r5, [r0, #0xa]
	lsls r4, r5, #3
	movs r1, #0x2e
	ldrsh r0, [r0, r1]
	subs r0, r0, r4
	ldr r3, _080830FC @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r7, r0, #4
	movs r2, #0x3f
	ands r7, r2
	mov r6, sb
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	subs r0, r0, r4
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r7, r0
	cmp r5, #1
	beq _08083128
	cmp r5, #1
	bgt _08083100
	cmp r5, #0
	beq _08083106
	b _080831EC
	.align 2, 0
_080830FC: .4byte gRoomControls
_08083100:
	cmp r5, #2
	beq _08083160
	b _080831EC
_08083106:
	mov r0, sb
	bl sub_0800442E
	cmp r0, #0
	beq _08083112
	b _080832C0
_08083112:
	ldr r0, _08083124 @ =0x00000365
	mov r1, sb
	adds r1, #0x38
	ldrb r2, [r1]
	adds r1, r7, #0
	bl sub_0807B7D8
	b _080832BA
	.align 2, 0
_08083124: .4byte 0x00000365
_08083128:
	mov r2, sb
	ldr r0, [r2, #0x68]
	mov r4, sb
	adds r4, #0x38
	ldrb r2, [r4]
	adds r1, r7, #0
	bl sub_0807B7D8
	ldr r0, _08083158 @ =0x0000036F
	adds r1, r7, #1
	ldrb r2, [r4]
	bl sub_0807B7D8
	movs r0, #0xdc
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x40
	ldrb r2, [r4]
	bl sub_0807B7D8
	ldr r0, _0808315C @ =0x00000371
	adds r1, r7, #0
	adds r1, #0x41
	b _080831CA
	.align 2, 0
_08083158: .4byte 0x0000036F
_0808315C: .4byte 0x00000371
_08083160:
	mov r6, sb
	ldr r0, [r6, #0x68]
	mov r4, sb
	adds r4, #0x38
	ldrb r2, [r4]
	adds r1, r7, #0
	bl sub_0807B7D8
	ldr r0, _080831D4 @ =0x00000372
	adds r1, r7, #1
	ldrb r2, [r4]
	bl sub_0807B7D8
	ldr r0, _080831D8 @ =0x0000036F
	adds r1, r7, #2
	ldrb r2, [r4]
	bl sub_0807B7D8
	movs r0, #0xdd
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x40
	ldrb r2, [r4]
	bl sub_0807B7D8
	ldr r0, _080831DC @ =0x00000376
	adds r1, r7, #0
	adds r1, #0x41
	ldrb r2, [r4]
	bl sub_0807B7D8
	ldr r0, _080831E0 @ =0x00000375
	adds r1, r7, #0
	adds r1, #0x42
	ldrb r2, [r4]
	bl sub_0807B7D8
	movs r0, #0xdc
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x80
	ldrb r2, [r4]
	bl sub_0807B7D8
	ldr r0, _080831E4 @ =0x00000373
	adds r1, r7, #0
	adds r1, #0x81
	ldrb r2, [r4]
	bl sub_0807B7D8
	ldr r0, _080831E8 @ =0x00000371
	adds r1, r7, #0
	adds r1, #0x82
_080831CA:
	ldrb r2, [r4]
	bl sub_0807B7D8
	b _080832BA
	.align 2, 0
_080831D4: .4byte 0x00000372
_080831D8: .4byte 0x0000036F
_080831DC: .4byte 0x00000376
_080831E0: .4byte 0x00000375
_080831E4: .4byte 0x00000373
_080831E8: .4byte 0x00000371
_080831EC:
	mov r1, sb
	ldr r0, [r1, #0x68]
	mov r4, sb
	adds r4, #0x38
	ldrb r2, [r4]
	adds r1, r7, #0
	bl sub_0807B7D8
	ldr r5, _080832C8 @ =0x00000372
	adds r1, r7, #1
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_0807B7D8
	adds r1, r7, #2
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_0807B7D8
	ldr r0, _080832CC @ =0x0000036F
	adds r1, r7, #3
	ldrb r2, [r4]
	bl sub_0807B7D8
	movs r2, #0xdd
	lsls r2, r2, #2
	mov r8, r2
	adds r1, r7, #0
	adds r1, #0x40
	ldrb r2, [r4]
	mov r0, r8
	bl sub_0807B7D8
	adds r5, #4
	adds r1, r7, #0
	adds r1, #0x41
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_0807B7D8
	adds r1, r7, #0
	adds r1, #0x42
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_0807B7D8
	ldr r6, _080832D0 @ =0x00000375
	adds r1, r7, #0
	adds r1, #0x43
	ldrb r2, [r4]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r7, #0
	adds r1, #0x80
	ldrb r2, [r4]
	mov r0, r8
	bl sub_0807B7D8
	adds r1, r7, #0
	adds r1, #0x81
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_0807B7D8
	adds r1, r7, #0
	adds r1, #0x82
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_0807B7D8
	adds r1, r7, #0
	adds r1, #0x83
	ldrb r2, [r4]
	adds r0, r6, #0
	bl sub_0807B7D8
	movs r0, #0xdc
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0xc0
	ldrb r2, [r4]
	bl sub_0807B7D8
	subs r5, #3
	adds r1, r7, #0
	adds r1, #0xc1
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_0807B7D8
	adds r1, r7, #0
	adds r1, #0xc2
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_0807B7D8
	ldr r0, _080832D4 @ =0x00000371
	adds r1, r7, #0
	adds r1, #0xc3
	ldrb r2, [r4]
	bl sub_0807B7D8
_080832BA:
	mov r0, sb
	bl DeleteEntity
_080832C0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080832C8: .4byte 0x00000372
_080832CC: .4byte 0x0000036F
_080832D0: .4byte 0x00000375
_080832D4: .4byte 0x00000371

	thumb_func_start sub_080832D8
sub_080832D8: @ 0x080832D8
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	adds r2, #0x38
	ldrb r0, [r2]
	cmp r0, #2
	beq _080832FC
	ldrb r1, [r1, #0x15]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080832F6
	ldrb r2, [r2]
	movs r0, #0x21
	b _0808330A
_080832F6:
	ldrb r2, [r2]
	movs r0, #0x20
	b _0808330A
_080832FC:
	ldrb r1, [r1, #0x15]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08083312
	ldrb r2, [r2]
	movs r0, #0x2f
_0808330A:
	adds r1, r3, #0
	bl sub_0807B7D8
	b _0808331C
_08083312:
	ldrb r2, [r2]
	movs r0, #0x2e
	adds r1, r3, #0
	bl sub_0807B7D8
_0808331C:
	pop {pc}
	.align 2, 0
