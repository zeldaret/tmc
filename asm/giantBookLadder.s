	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start GiantBookLadder
GiantBookLadder: @ 0x0808E4A8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0xa]
	lsls r1, r2, #1
	ldr r0, _0808E540 @ =gUnk_08121C40
	adds r3, r1, r0
	ldrb r6, [r4, #0xc]
	cmp r6, #0
	bne _0808E54C
	movs r5, #1
	strb r5, [r4, #0xc]
	movs r2, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0808E4C8
	movs r2, #1
_0808E4C8:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #0x1e]
	adds r0, r4, #0
	adds r0, #0x38
	strb r5, [r0]
	ldrb r1, [r3]
	lsls r1, r1, #6
	ldrb r2, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x19]
	ldrb r0, [r3, #1]
	adds r3, r4, #0
	adds r3, #0x29
	movs r1, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x76
	strh r6, [r0]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _0808E544 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r4, #0
	adds r0, #0x74
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_0808E55C
	ldr r1, _0808E548 @ =sub_0808E55C
	adds r0, r4, #0
	movs r2, #0
	bl sub_08052D74
	b _0808E55A
	.align 2, 0
_0808E540: .4byte gUnk_08121C40
_0808E544: .4byte gRoomControls
_0808E548: .4byte sub_0808E55C
_0808E54C:
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	bne _0808E55A
	adds r0, r4, #0
	bl sub_0808E670
_0808E55A:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0808E55C
sub_0808E55C: @ 0x0808E55C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	ldrb r0, [r0, #0xa]
	cmp r0, #1
	beq _0808E614
	cmp r0, #1
	bgt _0808E576
	cmp r0, #0
	beq _0808E57A
	b _0808E63A
_0808E576:
	cmp r0, #2
	bne _0808E63A
_0808E57A:
	mov r0, r8
	adds r0, #0x74
	ldrh r6, [r0]
	ldr r0, _0808E5FC @ =0xFFFFFEFF
	adds r7, r6, r0
	ldr r4, _0808E600 @ =0x0000408F
	mov r5, r8
	adds r5, #0x38
	ldrb r2, [r5]
	adds r0, r4, #0
	adds r1, r7, #0
	bl SetTile
	ldr r2, _0808E604 @ =0xFFFFFF00
	adds r1, r6, r2
	ldrb r2, [r5]
	adds r0, r4, #0
	bl SetTile
	ldr r0, _0808E608 @ =0x0000406C
	ldr r2, _0808E60C @ =0xFFFFFEFE
	adds r1, r6, r2
	ldrb r2, [r5]
	bl SetTile
	ldr r0, _0808E610 @ =0x0000406D
	adds r1, r6, #0
	subs r1, #0xff
	ldrb r2, [r5]
	bl SetTile
	mov r1, r8
	ldrb r0, [r1, #0xa]
	movs r2, #6
	mov sb, r2
	cmp r0, #0
	beq _0808E63A
	movs r0, #4
	mov sb, r0
	subs r4, #0x1d
	adds r1, r6, #0
	adds r1, #0x3f
	ldrb r2, [r5]
	adds r0, r4, #0
	bl SetTile
	adds r1, r6, #0
	adds r1, #0x40
	ldrb r2, [r5]
	adds r0, r4, #0
	bl SetTile
	adds r1, r6, #0
	adds r1, #0x7f
	ldrb r2, [r5]
	adds r0, r4, #0
	bl SetTile
	adds r1, r6, #0
	adds r1, #0x80
	ldrb r2, [r5]
	adds r0, r4, #0
	bl SetTile
	b _0808E63A
	.align 2, 0
_0808E5FC: .4byte 0xFFFFFEFF
_0808E600: .4byte 0x0000408F
_0808E604: .4byte 0xFFFFFF00
_0808E608: .4byte 0x0000406C
_0808E60C: .4byte 0xFFFFFEFE
_0808E610: .4byte 0x0000406D
_0808E614:
	mov r0, r8
	adds r0, #0x74
	ldrh r6, [r0]
	subs r7, r6, #1
	ldr r5, _0808E66C @ =0x0000408E
	mov r4, r8
	adds r4, #0x38
	ldrb r2, [r4]
	adds r0, r5, #0
	adds r1, r7, #0
	bl SetTile
	ldrb r2, [r4]
	adds r0, r5, #0
	adds r1, r6, #0
	bl SetTile
	movs r1, #2
	mov sb, r1
_0808E63A:
	movs r5, #0
	cmp r5, sb
	bhs _0808E662
	ldr r6, _0808E66C @ =0x0000408E
	mov r4, r8
	adds r4, #0x38
_0808E646:
	adds r7, #0x40
	ldrb r2, [r4]
	adds r0, r6, #0
	adds r1, r7, #0
	bl SetTile
	adds r1, r7, #1
	ldrb r2, [r4]
	adds r0, r6, #0
	bl SetTile
	adds r5, #1
	cmp r5, sb
	blo _0808E646
_0808E662:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0808E66C: .4byte 0x0000408E

	thumb_func_start sub_0808E670
sub_0808E670: @ 0x0808E670
	push {lr}
	adds r0, #0x74
	ldrh r0, [r0]
	ldr r1, _0808E684 @ =0xFFFFFEFF
	adds r0, r0, r1
	movs r1, #1
	bl GetTileType
	pop {pc}
	.align 2, 0
_0808E684: .4byte 0xFFFFFEFF
