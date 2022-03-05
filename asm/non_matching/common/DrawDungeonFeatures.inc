    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r4, r0, #0
	bl AreaHasMap
	cmp r0, #0
	bne _0801DDB8
	b _0801DEEA
_0801DDB8:
	ldr r1, _0801DDD8 @ =gUnk_080C9C50
	ldr r0, _0801DDDC @ =gArea
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r0, _0801DDE0 @ =gMapDataBottomSpecial
	movs r1, #0x80
	lsls r1, r1, #8
	bl MemClear
	b _0801DEE2
	.align 2, 0
_0801DDD8: .4byte gUnk_080C9C50
_0801DDDC: .4byte gArea
_0801DDE0: .4byte gMapDataBottomSpecial
_0801DDE4:
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	movs r2, #3
	bl GetRoomProperty
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_0801DF10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp, #0xc]
	ldrh r2, [r4]
	ldr r0, _0801DE14 @ =gUI
	ldrh r3, [r0, #0x20]
	ldr r1, _0801DE18 @ =0x0000FFFF
	ands r1, r2
	ldr r0, _0801DE18 @ =0x0000FFFF
	ands r0, r3
	cmp r1, r0
	bne _0801DE1C
	movs r3, #8
	b _0801DE36
	.align 2, 0
_0801DE14: .4byte gUI
_0801DE18: .4byte 0x0000FFFF
_0801DE1C:
	bl HasDungeonSmallKey
	cmp r0, #0
	beq _0801DE28
	movs r0, #2
	str r0, [sp, #0xc]
_0801DE28:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0801DF90
	cmp r0, #0
	beq _0801DE38
	movs r3, #3
_0801DE36:
	str r3, [sp, #0xc]
_0801DE38:
	ldrb r1, [r4, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801DE46
	movs r0, #0
	str r0, [sp, #0xc]
_0801DE46:
	adds r3, r4, #0
	adds r3, #8
	str r3, [sp, #0x10]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0801DEE0
	ldr r2, _0801DEF8 @ =0x040000D4
	ldr r0, [r4, #4]
	ldr r1, _0801DEFC @ =gMapData
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _0801DF00 @ =gMapDataBottomSpecial
	str r0, [r2, #4]
	ldr r0, _0801DF04 @ =0x84000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0801DF08 @ =gAreaRoomHeaders
	ldrb r2, [r4]
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r1, [r4, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r2, [r2]
	adds r2, r2, r0
	ldrh r0, [r2]
	lsrs r0, r0, #4
	str r0, [sp]
	ldrh r0, [r2, #2]
	ldr r1, _0801DF0C @ =0x000007FF
	ands r0, r1
	lsrs r0, r0, #4
	str r0, [sp, #4]
	ldrh r0, [r2, #4]
	lsrs r7, r0, #4
	ldrh r0, [r2, #6]
	lsrs r0, r0, #4
	mov sl, r0
	adds r0, r7, #3
	lsrs r0, r0, #2
	str r0, [sp, #8]
	movs r6, #0
	cmp r6, sl
	bhs _0801DEE0
_0801DEA0:
	ldr r3, [sp, #8]
	adds r1, r6, #0
	muls r1, r3, r1
	ldr r0, _0801DF00 @ =gMapDataBottomSpecial
	adds r1, r1, r0
	mov r8, r1
	movs r5, #0
	adds r0, r6, #1
	mov sb, r0
	cmp r5, r7
	bhs _0801DEDA
_0801DEB6:
	ldr r3, [sp]
	adds r4, r3, r5
	adds r0, r5, #0
	mov r1, r8
	bl sub_0801DF60
	ldr r1, [sp, #0xc]
	bl sub_0801DF78
	adds r2, r0, #0
	adds r0, r4, #0
	ldr r3, [sp, #4]
	adds r1, r3, r6
	bl sub_0801DF28
	adds r5, #1
	cmp r5, r7
	blo _0801DEB6
_0801DEDA:
	mov r6, sb
	cmp r6, sl
	blo _0801DEA0
_0801DEE0:
	ldr r4, [sp, #0x10]
_0801DEE2:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801DEEA
	b _0801DDE4
_0801DEEA:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801DEF8: .4byte 0x040000D4
_0801DEFC: .4byte gMapData
_0801DF00: .4byte gMapDataBottomSpecial
_0801DF04: .4byte 0x84000100
_0801DF08: .4byte gAreaRoomHeaders
_0801DF0C: .4byte 0x000007FF
    .syntax divided
