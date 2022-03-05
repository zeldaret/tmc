	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r1, [r4]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	adds r0, r4, #0
	bl sub_0801CC80
	adds r1, r0, #0
	cmp r1, #0
	beq _0801CD90
	ldrb r0, [r4, #8]
	cmp r0, r1
	beq _0801CCE0
	strb r1, [r4, #8]
	ldr r0, _0801CD1C @ =gSpriteAnimations_322
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl sub_0801CAB8
_0801CCE0:
	ldrb r0, [r4, #1]
	movs r1, #3
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r6, r1, #0x1f
	ldr r3, _0801CD20 @ =gUnk_0200AF13
	cmp r6, #0
	beq _0801CCF4
	adds r3, #1
_0801CCF4:
	ldrb r0, [r4, #8]
	cmp r0, #7
	blt _0801CD60
	cmp r0, #8
	ble _0801CD28
	cmp r0, #0xa
	bgt _0801CD60
	ldr r1, _0801CD24 @ =gSave
	adds r0, r1, #0
	adds r0, #0xad
	ldrb r2, [r0]
	ldrb r0, [r3]
	adds r5, r1, #0
	cmp r0, r2
	beq _0801CD4C
	adds r0, r2, #0
	adds r0, #0x80
	strb r0, [r3]
	b _0801CD4C
	.align 2, 0
_0801CD1C: .4byte gSpriteAnimations_322
_0801CD20: .4byte gUnk_0200AF13
_0801CD24: .4byte gSave
_0801CD28:
	ldr r5, _0801CD44 @ =gSave
	adds r0, r5, #0
	adds r0, #0xac
	ldrb r2, [r0]
	ldrb r0, [r3]
	cmp r0, r2
	beq _0801CD3C
	adds r0, r2, #0
	adds r0, #0x80
	strb r0, [r3]
_0801CD3C:
	ldr r1, _0801CD48 @ =gBombBagSizes
	adds r0, r5, #0
	adds r0, #0xae
	b _0801CD52
	.align 2, 0
_0801CD44: .4byte gSave
_0801CD48: .4byte gBombBagSizes
_0801CD4C:
	ldr r1, _0801CD5C @ =gQuiverSizes
	adds r0, r5, #0
	adds r0, #0xaf
_0801CD52:
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	b _0801CD64
	.align 2, 0
_0801CD5C: .4byte gQuiverSizes
_0801CD60:
	movs r0, #1
	movs r2, #0
_0801CD64:
	movs r1, #3
	cmp r0, r2
	bhi _0801CD6C
	movs r1, #4
_0801CD6C:
	strb r1, [r4, #0x18]
	adds r0, r6, #0
	bl FindUIElement
	adds r1, r0, #0
	cmp r1, #0
	beq _0801CD90
	ldrh r0, [r1, #0xc]
	strh r0, [r4, #0xc]
	ldrh r0, [r1, #0xe]
	strh r0, [r4, #0xe]
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
	adds r0, r4, #0
	bl sub_0801CAD0
_0801CD90:
	pop {r4, r5, r6, pc}
	.align 2, 0
	.syntax divided
