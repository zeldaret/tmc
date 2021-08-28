	.syntax unified
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
	bl LoadGfxGroup
	ldr r1, _0805D858 @ =gScreen
	ldr r0, _0805D85C @ =0x00001E04
	strh r0, [r1, #0x2c]
	pop {pc}
	.align 2, 0
_0805D854: .4byte gUnk_08108D74
_0805D858: .4byte gScreen
_0805D85C: .4byte 0x00001E04
	.syntax divided
