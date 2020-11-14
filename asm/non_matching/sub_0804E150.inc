    .syntax unified
	push {r4, r5, lr}
	ldr r4, _0804E160 @ =gUnk_080EED2C
	ldr r0, _0804E164 @ =gUnk_02002A40
	movs r5, #1
	ldrb r0, [r0, #8]
	lsls r5, r0
	b _0804E17C
	.align 2, 0
_0804E160: .4byte gUnk_080EED2C
_0804E164: .4byte gUnk_02002A40
_0804E168:
	ldrh r0, [r4]
	ands r0, r5
	cmp r0, #0
	beq _0804E17A
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #2]
	movs r2, #1
	bl SetTile
_0804E17A:
	adds r4, #6
_0804E17C:
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _0804E168
	movs r0, #0xd1
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804E1BA
	ldr r4, _0804E198 @ =gUnk_080EED7A
	ldr r0, _0804E19C @ =gUnk_02002A40
	movs r5, #1
	ldrb r0, [r0, #8]
	lsls r5, r0
	b _0804E1B4
	.align 2, 0
_0804E198: .4byte gUnk_080EED7A
_0804E19C: .4byte gUnk_02002A40
_0804E1A0:
	ldrh r0, [r4]
	ands r0, r5
	cmp r0, #0
	beq _0804E1B2
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #2]
	movs r2, #1
	bl SetTile
_0804E1B2:
	adds r4, #6
_0804E1B4:
	ldrh r0, [r4]
	cmp r0, #0
	bne _0804E1A0
_0804E1BA:
	movs r0, #0x29
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804E1F2
	ldr r4, _0804E1D0 @ =gUnk_080EED8C
	ldr r0, _0804E1D4 @ =gUnk_02002A40
	movs r5, #1
	ldrb r0, [r0, #8]
	lsls r5, r0
	b _0804E1EC
	.align 2, 0
_0804E1D0: .4byte gUnk_080EED8C
_0804E1D4: .4byte gUnk_02002A40
_0804E1D8:
	ldrh r0, [r4]
	ands r0, r5
	cmp r0, #0
	beq _0804E1EA
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #2]
	movs r2, #1
	bl SetTile
_0804E1EA:
	adds r4, #6
_0804E1EC:
	ldrh r0, [r4]
	cmp r0, #0
	bne _0804E1D8
_0804E1F2:
	pop {r4, r5, pc}
    .syntax divided
