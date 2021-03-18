    .syntax unified
	push {r4, r5, r6, r7, lr}
	ldr r0, _080510E4 @ =gUnk_02019EE0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080510C4
	b _0805134C
_080510C4:
	movs r7, #0
	ldr r0, _080510E8 @ =gInput
	ldrh r1, [r0, #2]
	adds r2, r0, #0
	cmp r1, #8
	bne _080510D2
	b _080511C8
_080510D2:
	cmp r1, #8
	bgt _080510EC
	cmp r1, #1
	bne _080510DC
	b _080511F2
_080510DC:
	cmp r1, #2
	beq _080511B8
	b _08051100
	.align 2, 0
_080510E4: .4byte gUnk_02019EE0
_080510E8: .4byte gInput
_080510EC:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _080510F6
	b _0805122C
_080510F6:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bne _08051100
	b _0805121C
_08051100:
	movs r6, #0
	movs r5, #0
	ldrh r0, [r2, #4]
	cmp r0, #0x20
	beq _08051128
	cmp r0, #0x20
	bgt _08051114
	cmp r0, #0x10
	beq _0805112E
	b _08051130
_08051114:
	cmp r0, #0x40
	beq _0805111E
	cmp r0, #0x80
	beq _08051124
	b _08051130
_0805111E:
	movs r5, #1
	rsbs r5, r5, #0
	b _08051130
_08051124:
	movs r5, #1
	b _08051130
_08051128:
	movs r6, #1
	rsbs r6, r6, #0
	b _08051130
_0805112E:
	movs r6, #1
_08051130:
	ldr r4, _0805117C @ =gMenu
	ldrb r0, [r4, #0x11]
	adds r0, r0, r5
	adds r0, #6
	movs r1, #6
	bl __modsi3
	strb r0, [r4, #0x11]
	orrs r5, r6
	cmp r5, #0
	beq _0805114C
	movs r0, #0x67
	bl SoundReq
_0805114C:
	cmp r6, #0
	beq _0805123A
	ldrb r0, [r4, #0x11]
	cmp r0, #5
	beq _08051184
	ldrb r0, [r4, #0x10]
	adds r0, r0, r6
	adds r0, #0xd
	movs r1, #0xd
	bl __modsi3
	strb r0, [r4, #0x10]
	ldr r1, _08051180 @ =gUnk_080FC980
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _08051172
	adds r1, #0x10
_08051172:
	ldrb r0, [r4, #0x10]
	adds r0, r1, r0
	ldrb r0, [r0]
	strb r0, [r4, #0x12]
	b _0805123A
	.align 2, 0
_0805117C: .4byte gMenu
_08051180: .4byte gUnk_080FC980
_08051184:
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	adds r5, r0, #0
	movs r1, #4
	cmp r5, #0
	bne _08051194
	movs r1, #5
_08051194:
	ldrb r0, [r4, #0x12]
	adds r0, r0, r6
	adds r0, r0, r1
	bl __modsi3
	strb r0, [r4, #0x12]
	ldr r1, _080511B4 @ =gUnk_080FC9A0
	cmp r5, #0
	beq _080511A8
	adds r1, #8
_080511A8:
	ldrb r0, [r4, #0x12]
	adds r0, r1, r0
	ldrb r0, [r0]
	strb r0, [r4, #0x10]
	b _0805123A
	.align 2, 0
_080511B4: .4byte gUnk_080FC9A0
_080511B8:
	ldr r0, _080511C4 @ =gMenu
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _080511EC
	movs r7, #5
	b _0805123A
	.align 2, 0
_080511C4: .4byte gMenu
_080511C8:
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	movs r1, #3
	cmp r0, #0
	bne _080511D6
	movs r1, #4
_080511D6:
	ldr r2, _080511E8 @ =gMenu
	ldrb r0, [r2, #0x11]
	cmp r0, #5
	bne _080511EC
	ldrb r2, [r2, #0x12]
	cmp r1, r2
	bne _080511EC
	movs r7, #8
	b _0805123A
	.align 2, 0
_080511E8: .4byte gMenu
_080511EC:
	bl sub_08051358
	b _0805123A
_080511F2:
	ldr r1, _08051210 @ =gMenu
	ldrb r0, [r1, #0x11]
	cmp r0, #5
	bne _08051218
	ldr r2, _08051214 @ =gUnk_080FC970
	ldrb r1, [r1, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _0805120A
	adds r1, #8
_0805120A:
	adds r0, r1, r2
	ldrb r7, [r0]
	b _0805123A
	.align 2, 0
_08051210: .4byte gMenu
_08051214: .4byte gUnk_080FC970
_08051218:
	movs r7, #6
	b _0805123A
_0805121C:
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	movs r7, #1
	cmp r0, #0
	bne _0805123A
	movs r7, #4
	b _0805123A
_0805122C:
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	movs r7, #2
	cmp r0, #0
	bne _0805123A
	movs r7, #7
_0805123A:
	ldr r0, _08051250 @ =gMenu
	ldrb r4, [r0, #1]
	subs r0, r7, #1
	cmp r0, #7
	bhi _08051322
	lsls r0, r0, #2
	ldr r1, _08051254 @ =_08051258
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08051250: .4byte gMenu
_08051254: .4byte _08051258
_08051258: @ jump table
	.4byte _08051278 @ case 0
	.4byte _0805127C @ case 1
	.4byte _08051280 @ case 2
	.4byte _08051284 @ case 3
	.4byte _08051288 @ case 4
	.4byte _080512C0 @ case 5
	.4byte _080512B8 @ case 6
	.4byte _080512EC @ case 7
_08051278:
	movs r4, #0
	b _08051322
_0805127C:
	movs r4, #1
	b _08051322
_08051280:
	movs r4, #2
	b _08051322
_08051284:
	adds r4, #1
	b _08051322
_08051288:
	ldr r3, _080512B0 @ =gMenu
	ldrb r0, [r3, #0x13]
	cmp r0, #0
	beq _08051322
	subs r0, #1
	movs r2, #0
	strb r0, [r3, #0x13]
	ldr r1, _080512B4 @ =gSave
	ldrb r0, [r3, #0x13]
	adds r1, #0x80
	adds r0, r0, r1
	strb r2, [r0]
	ldrb r0, [r3, #0x13]
	adds r0, #1
	adds r0, r0, r1
	strb r2, [r0]
	movs r0, #0x6c
	bl sub_08051574
	b _08051322
	.align 2, 0
_080512B0: .4byte gMenu
_080512B4: .4byte gSave
_080512B8:
	movs r0, #0
	bl sub_08051480
	b _08051322
_080512C0:
	ldr r2, _080512E4 @ =gBG3Buffer
	ldr r0, _080512E8 @ =gMenu
	ldrb r1, [r0, #0x10]
	lsls r1, r1, #1
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #6
	adds r0, #0xc3
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	lsrs r0, r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08051480
	b _08051322
	.align 2, 0
_080512E4: .4byte gBG3Buffer
_080512E8: .4byte gMenu
_080512EC:
	movs r3, #5
	ldr r0, _08051350 @ =gSave
	adds r6, r0, #0
	adds r6, #0x80
	movs r5, #0
_080512F6:
	adds r2, r3, r6
	ldrb r1, [r2]
	cmp r1, #0
	beq _08051302
	cmp r1, #0x20
	bne _0805130A
_08051302:
	strb r5, [r2]
	subs r3, #1
	cmp r3, #0
	bge _080512F6
_0805130A:
	adds r0, #0x80
	ldrb r0, [r0]
	movs r7, #3
	cmp r0, #0
	beq _08051316
	movs r7, #2
_08051316:
	movs r0, #0x6a
	bl sub_08051574
	adds r0, r7, #0
	bl sub_080A7114
_08051322:
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	movs r1, #2
	cmp r0, #0
	bne _08051330
	movs r1, #3
_08051330:
	adds r0, r4, r1
	bl __modsi3
	adds r4, r0, #0
	ldr r1, _08051354 @ =gMenu
	ldrb r0, [r1, #1]
	cmp r0, r4
	beq _0805134C
	strb r4, [r1, #1]
	bl sub_08051458
	movs r0, #0x68
	bl SoundReq
_0805134C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08051350: .4byte gSave
_08051354: .4byte gMenu
    .syntax divided
