    .syntax unified
    .text

	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #0xa]
	lsls r0, r4, #2
	mov ip, r0
	ldr r2, _08062868 @ =gUnk_0810C0A0
	add r2, ip
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r3, [r0]
	movs r1, #0x1f
	adds r0, r1, #0
	ands r0, r3
	ldrb r3, [r2]
	adds r6, r0, r3
	ldrb r0, [r5, #0x1e]
	ands r1, r0
	ldrb r2, [r2, #1]
	adds r7, r1, r2
	cmp r4, #8
	bhi _08062946
	ldr r0, _0806286C @ =_08062870
	add r0, ip
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08062868: .4byte gUnk_0810C0A0
_0806286C: .4byte _08062870 @ jump table
_08062870:
	.4byte _08062894 @ case 0
	.4byte _08062894 @ case 1
	.4byte _08062894 @ case 2
	.4byte _08062894 @ case 3
	.4byte _08062894 @ case 4
	.4byte _08062894 @ case 5
	.4byte _080628D8 @ case 6
	.4byte _08062922 @ case 7
	.4byte _08062922 @ case 8
_08062894:
	adds r0, r5, #0
	adds r0, #0x5b
	ldrb r1, [r0]
	movs r0, #0x30
	ands r0, r1
	lsrs r4, r0, #4
	cmp r4, #0
	beq _080628A6
	adds r4, #0x50
_080628A6:
	subs r4, #1
	adds r0, r5, #0
	movs r1, #0
	adds r2, r6, #0
	bl SetExtraSpriteFrame
	adds r0, r5, #0
	movs r1, #1
	adds r2, r7, #0
	bl SetExtraSpriteFrame
	adds r0, r5, #0
	movs r1, #2
	adds r2, r4, #0
	bl SetExtraSpriteFrame
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl SetSpriteSubEntryOffsetData1
	adds r0, r5, #0
	movs r1, #1
	movs r2, #2
	b _08062916
_080628D8:
	adds r0, r5, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	movs r2, #0xf
	ands r2, r0
	cmp r2, #0
	beq _080628E8
	adds r2, #0x93
_080628E8:
	subs r2, #1
	adds r0, r5, #0
	movs r1, #0
	bl SetExtraSpriteFrame
	adds r0, r5, #0
	movs r1, #1
	adds r2, r6, #0
	bl SetExtraSpriteFrame
	adds r0, r5, #0
	movs r1, #2
	adds r2, r7, #0
	bl SetExtraSpriteFrame
	adds r0, r5, #0
	movs r1, #2
	movs r2, #1
	bl SetSpriteSubEntryOffsetData1
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
_08062916:
	bl SetSpriteSubEntryOffsetData2
	adds r0, r5, #0
	bl sub_0807000C
	b _08062946
_08062922:
	adds r0, r5, #0
	movs r1, #0
	adds r2, r6, #0
	bl SetExtraSpriteFrame
	adds r0, r5, #0
	movs r1, #1
	adds r2, r7, #0
	bl SetExtraSpriteFrame
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl SetSpriteSubEntryOffsetData1
	adds r0, r5, #0
	bl sub_0807000C
_08062946:
	pop {r4, r5, r6, r7, pc}

    .syntax divided
