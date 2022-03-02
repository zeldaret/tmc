	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0807FE18 @ =gUpdateVisibleTiles
	movs r0, #2
	strb r0, [r1]
	ldrh r0, [r4, #0x18]
	adds r0, #1
	strh r0, [r4, #0x18]
	ldrb r0, [r4, #0x10]
	cmp r0, #1
	beq _0807FE44
	cmp r0, #1
	bgt _0807FE1C
	cmp r0, #0
	beq _0807FE26
	b _0807FEB6
	.align 2, 0
_0807FE18: .4byte gUpdateVisibleTiles
_0807FE1C:
	cmp r0, #2
	beq _0807FE68
	cmp r0, #3
	beq _0807FE94
	b _0807FEB6
_0807FE26:
	ldrh r0, [r4, #0xc]
	subs r0, #4
	strh r0, [r4, #0xc]
	ldr r1, [r4, #0x30]
	ldr r0, _0807FE3C @ =gPlayerEntity
	cmp r1, r0
	bne _0807FE80
	ldr r0, [r1, #0x30]
	ldr r2, _0807FE40 @ =0xFFFFA000
	b _0807FE7C
	.align 2, 0
_0807FE3C: .4byte gPlayerEntity
_0807FE40: .4byte 0xFFFFA000
_0807FE44:
	ldrh r0, [r4, #0xa]
	adds r0, #4
	strh r0, [r4, #0xa]
	ldr r1, [r4, #0x30]
	ldr r0, _0807FE64 @ =gPlayerEntity
	cmp r1, r0
	bne _0807FE5C
	ldr r0, [r1, #0x2c]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
	str r0, [r1, #0x2c]
_0807FE5C:
	ldrh r0, [r4, #0x18]
	cmp r0, #0x3c
	bne _0807FEB6
	b _0807FE86
	.align 2, 0
_0807FE64: .4byte gPlayerEntity
_0807FE68:
	ldrh r0, [r4, #0xc]
	adds r0, #4
	strh r0, [r4, #0xc]
	ldr r1, [r4, #0x30]
	ldr r0, _0807FE90 @ =gPlayerEntity
	cmp r1, r0
	bne _0807FE80
	ldr r0, [r1, #0x30]
	movs r2, #0xc0
	lsls r2, r2, #7
_0807FE7C:
	adds r0, r0, r2
	str r0, [r1, #0x30]
_0807FE80:
	ldrh r0, [r4, #0x18]
	cmp r0, #0x28
	bne _0807FEB6
_0807FE86:
	adds r0, r4, #0
	bl sub_0807FEC8
	b _0807FEB6
	.align 2, 0
_0807FE90: .4byte gPlayerEntity
_0807FE94:
	ldrh r0, [r4, #0xa]
	subs r0, #4
	strh r0, [r4, #0xa]
	ldr r1, [r4, #0x30]
	ldr r0, _0807FEC0 @ =gPlayerEntity
	cmp r1, r0
	bne _0807FEAA
	ldr r0, [r1, #0x2c]
	ldr r2, _0807FEC4 @ =0xFFFFC000
	adds r0, r0, r2
	str r0, [r1, #0x2c]
_0807FEAA:
	ldrh r0, [r4, #0x18]
	cmp r0, #0x3c
	bne _0807FEB6
	adds r0, r4, #0
	bl sub_0807FEC8
_0807FEB6:
	movs r0, #0
	strh r0, [r4, #0x16]
	bl sub_08080BC4
	pop {r4, pc}
	.align 2, 0
_0807FEC0: .4byte gPlayerEntity
_0807FEC4: .4byte 0xFFFFC000
	.syntax divided
