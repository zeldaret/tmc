	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0808BE84
sub_0808BE84: @ 0x0808BE84
	push {lr}
	ldr r2, _0808BE98 @ =gUnk_08121488
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808BE98: .4byte gUnk_08121488

	thumb_func_start sub_0808BE9C
sub_0808BE9C: @ 0x0808BE9C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	movs r2, #0
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x3f
	movs r5, #1
	strb r5, [r0]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #0x47
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x44
	strb r0, [r1]
	subs r1, #5
	movs r0, #0x80
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x68
	strb r2, [r0]
	ldrb r0, [r4, #0xa]
	bl sub_0807CBD0
	cmp r0, #0
	beq _0808BEEE
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808BEF8
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl LoadAnimation
	b _0808BF10
_0808BEEE:
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808BF04
_0808BEF8:
	strb r5, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl LoadAnimation
	b _0808BF10
_0808BF04:
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl LoadAnimation
_0808BF10:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0808BF14
sub_0808BF14: @ 0x0808BF14
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0808C128
	cmp r0, #0
	beq _0808BF4C
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0808C13C
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808BF3E
	ldrb r0, [r4, #0xa]
	bl sub_0807CCB4
	b _0808BF44
_0808BF3E:
	ldrb r0, [r4, #0xa]
	bl sub_0807CD34
_0808BF44:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0808C148
_0808BF4C:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0808C01C
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0808BF58
sub_0808BF58: @ 0x0808BF58
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #6
	bl sub_08003FC4
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	beq _0808BF94
	cmp r0, #1
	bgt _0808BF74
	cmp r0, #0
	beq _0808BF7A
	b _0808BFD6
_0808BF74:
	cmp r0, #2
	beq _0808BFB0
	b _0808BFD6
_0808BF7A:
	ldr r1, [r4, #0x20]
	ldr r0, _0808BF90 @ =0x00017FFF
	cmp r1, r0
	bgt _0808BFD6
	movs r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #2
	bl LoadAnimation
	b _0808BFD6
	.align 2, 0
_0808BF90: .4byte 0x00017FFF
_0808BF94:
	adds r0, r4, #0
	bl sub_080042B8
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0808BFD6
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x20]
	b _0808BFD6
_0808BFB0:
	adds r0, r4, #0
	bl sub_080042B8
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bne _0808BFD6
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #1
	bl LoadAnimation
	adds r0, r4, #0
	movs r1, #1
	bl sub_0808C148
_0808BFD6:
	pop {r4, pc}

	thumb_func_start sub_0808BFD8
sub_0808BFD8: @ 0x0808BFD8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0808C128
	cmp r0, #0
	beq _0808C010
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0808C13C
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808C002
	ldrb r0, [r4, #0xa]
	bl sub_0807CD34
	b _0808C008
_0808C002:
	ldrb r0, [r4, #0xa]
	bl sub_0807CCB4
_0808C008:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0808C148
_0808C010:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0808C01C
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0808C01C
sub_0808C01C: @ 0x0808C01C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	subs r0, #0x18
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	subs r1, #0x18
	movs r2, #0x30
	movs r3, #0x30
	bl sub_0806FBFC
	cmp r0, #0
	beq _0808C0A6
	ldr r2, _0808C06C @ =gUnk_02033A90
	ldrh r0, [r4, #0x2e]
	strh r0, [r2, #0x12]
	ldrh r0, [r4, #0x32]
	strh r0, [r2, #0x14]
	movs r6, #2
	strb r6, [r2, #0x16]
	movs r0, #4
	cmp r5, #0
	beq _0808C050
	movs r0, #2
_0808C050:
	strb r0, [r2, #0x17]
	cmp r5, #1
	bne _0808C0A6
	ldr r3, _0808C070 @ =gLinkState
	ldr r0, [r3, #0x30]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0808C074
	ldrb r0, [r3, #2]
	cmp r0, #0
	bne _0808C074
	strb r6, [r2, #0x18]
	b _0808C082
	.align 2, 0
_0808C06C: .4byte gUnk_02033A90
_0808C070: .4byte gLinkState
_0808C074:
	bl sub_08057810
	cmp r0, #0
	beq _0808C082
	ldr r1, _0808C0A8 @ =gUnk_02033A90
	movs r0, #3
	strb r0, [r1, #0x18]
_0808C082:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_080577AC
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _0808C0A6
	movs r0, #1
	strb r0, [r4, #0xf]
	movs r0, #0xa9
	lsls r0, r0, #1
	bl PlaySFX
_0808C0A6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0808C0A8: .4byte gUnk_02033A90

	thumb_func_start sub_0808C0AC
sub_0808C0AC: @ 0x0808C0AC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #6
	bl sub_08003FC4
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	beq _0808C0E8
	cmp r0, #1
	bgt _0808C0C8
	cmp r0, #0
	beq _0808C0CE
	b _0808C126
_0808C0C8:
	cmp r0, #2
	beq _0808C104
	b _0808C126
_0808C0CE:
	ldr r1, [r4, #0x20]
	ldr r0, _0808C0E4 @ =0x00017FFF
	cmp r1, r0
	bgt _0808C126
	movs r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #3
	bl LoadAnimation
	b _0808C126
	.align 2, 0
_0808C0E4: .4byte 0x00017FFF
_0808C0E8:
	adds r0, r4, #0
	bl sub_080042B8
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0808C126
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x20]
	b _0808C126
_0808C104:
	adds r0, r4, #0
	bl sub_080042B8
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0808C126
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl LoadAnimation
	adds r0, r4, #0
	movs r1, #1
	bl sub_0808C148
_0808C126:
	pop {r4, pc}

	thumb_func_start sub_0808C128
sub_0808C128: @ 0x0808C128
	push {lr}
	movs r1, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x9d
	bne _0808C136
	movs r1, #1
_0808C136:
	adds r0, r1, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0808C13C
sub_0808C13C: @ 0x0808C13C
	movs r1, #0
	strb r1, [r0, #0xd]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	str r1, [r0, #0x20]
	bx lr

	thumb_func_start sub_0808C148
sub_0808C148: @ 0x0808C148
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r2, #0x2e
	ldrsh r0, [r6, r2]
	ldr r4, _0808C1A4 @ =gRoomControls
	ldrh r2, [r4, #6]
	subs r0, r0, r2
	asrs r5, r0, #4
	movs r3, #0x3f
	ands r5, r3
	movs r2, #0x32
	ldrsh r0, [r6, r2]
	ldrh r2, [r4, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r5, r0
	cmp r1, #0
	bne _0808C1B8
	ldr r0, _0808C1A8 @ =0x00004092
	subs r1, r5, #1
	adds r4, r6, #0
	adds r4, #0x38
	ldrb r2, [r4]
	bl SetTile
	ldr r0, _0808C1AC @ =0x00004093
	ldrb r2, [r4]
	adds r1, r5, #0
	bl SetTile
	ldr r0, _0808C1B0 @ =0x00004094
	adds r1, r5, #0
	adds r1, #0x3f
	ldrb r2, [r4]
	bl SetTile
	ldr r0, _0808C1B4 @ =0x00004095
	adds r1, r5, #0
	adds r1, #0x40
	ldrb r2, [r4]
	bl SetTile
	b _0808C1E0
	.align 2, 0
_0808C1A4: .4byte gRoomControls
_0808C1A8: .4byte 0x00004092
_0808C1AC: .4byte 0x00004093
_0808C1B0: .4byte 0x00004094
_0808C1B4: .4byte 0x00004095
_0808C1B8:
	subs r0, r5, #1
	adds r4, r6, #0
	adds r4, #0x38
	ldrb r1, [r4]
	bl sub_0807BA8C
	ldrb r1, [r4]
	adds r0, r5, #0
	bl sub_0807BA8C
	adds r0, r5, #0
	adds r0, #0x3f
	ldrb r1, [r4]
	bl sub_0807BA8C
	adds r0, r5, #0
	adds r0, #0x40
	ldrb r1, [r4]
	bl sub_0807BA8C
_0808C1E0:
	pop {r4, r5, r6, pc}
	.align 2, 0
