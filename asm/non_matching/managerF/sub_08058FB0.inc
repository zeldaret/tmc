	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _08058FF6
	cmp r0, #1
	bgt _08058FC4
	cmp r0, #0
	beq _08058FCA
	b _08059050
_08058FC4:
	cmp r0, #2
	beq _08059018
	b _08059050
_08058FCA:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _08058FDC
	movs r0, #7
	strb r0, [r4, #0xd]
	movs r0, #6
	b _08058FE2
_08058FDC:
	movs r0, #8
	strb r0, [r4, #0xd]
	movs r0, #2
_08058FE2:
	strb r0, [r4, #0xf]
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _08059060
	adds r0, r4, #0
	bl DeleteManager
	b _08059060
_08058FF6:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _08059060
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0xf0
	bl sub_0805E4E0
	adds r0, r4, #0
	bl sub_08059064
	b _08059060
_08059018:
	ldrb r0, [r4, #0xe]
	cmp r0, #0x5a
	bne _08059028
	movs r0, #2
	bl sub_08078A90
	bl sub_08077B20
_08059028:
	ldrb r2, [r4, #0xe]
	cmp r2, #0x3c
	bne _08059034
	ldr r1, _0805904C @ =gPlayerEntity
	ldrb r0, [r4, #0xf]
	strb r0, [r1, #0x14]
_08059034:
	subs r0, r2, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08059060
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xd]
	movs r0, #5
	bl MenuFadeIn
	b _08059060
	.align 2, 0
_0805904C: .4byte gPlayerEntity
_08059050:
	ldrh r0, [r4, #0x3e]
	bl SetFlag
	movs r0, #1
	bl sub_08078A90
	bl DeleteThisEntity
_08059060:
	pop {r4, pc}
	.align 2, 0
	.syntax divided
