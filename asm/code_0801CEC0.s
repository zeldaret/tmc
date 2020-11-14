	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0801CFA8
sub_0801CFA8: @ 0x0801CFA8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0801CFCC @ =gUnk_02001A00
	movs r1, #0x40
	bl _DmaZero
	movs r4, #0
_0801CFB6:
	adds r0, r4, #0
	bl sub_0801CFD0
	adds r4, #1
	cmp r4, #5
	bls _0801CFB6
	adds r0, r5, #0
	bl sub_0801D000
	pop {r4, r5, pc}
	.align 2, 0
_0801CFCC: .4byte gUnk_02001A00

	thumb_func_start sub_0801CFD0
sub_0801CFD0: @ 0x0801CFD0
	lsls r0, r0, #2
	ldr r1, _0801CFF8 @ =gUnk_02001A00
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #4
	orrs r1, r2
	movs r2, #0xf
	ands r1, r2
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	movs r1, #0x80
	strb r1, [r0, #1]
	ldr r1, _0801CFFC @ =0x0000FFFF
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_0801CFF8: .4byte gUnk_02001A00
_0801CFFC: .4byte 0x0000FFFF

	thumb_func_start sub_0801D000
sub_0801D000: @ 0x0801D000
	push {lr}
	adds r2, r0, #0
	ldr r0, _0801D024 @ =gScreenTransition
	movs r1, #0
	cmp r2, #0
	beq _0801D00E
	movs r1, #0xf
_0801D00E:
	adds r0, #0x2f
	strb r1, [r0]
	cmp r2, #0
	beq _0801D028
	bl sub_0801D34C
	movs r0, #0xf
	bl sub_0801CFD0
	b _0801D03A
	.align 2, 0
_0801D024: .4byte gScreenTransition
_0801D028:
	ldr r3, _0801D03C @ =gUnk_02001A3C
	ldrb r1, [r3]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #4
	bne _0801D03A
	strb r2, [r3]
	strb r2, [r3, #1]
	strh r2, [r3, #2]
_0801D03A:
	pop {pc}
	.align 2, 0
_0801D03C: .4byte gUnk_02001A3C

	thumb_func_start sub_0801D040
sub_0801D040: @ 0x0801D040
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	adds r6, r1, #0
	adds r0, r6, #0
	bl sub_0801D108
	adds r5, r0, #0
	cmp r5, #0
	bge _0801D0E8
	cmp r6, #0x15
	bhi _0801D064
	movs r4, #1
	b _0801D074
_0801D064:
	ldr r0, _0801D100 @ =gUnk_08133368
	adds r1, r6, #0
	subs r1, #0x16
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r4, [r1, #3]
	movs r0, #0xf
	ands r4, r0
_0801D074:
	adds r0, r4, #0
	bl sub_0801D134
	adds r5, r0, #0
	cmp r5, #0
	bge _0801D090
	bl sub_0801D34C
	adds r0, r4, #0
	bl sub_0801D134
	adds r5, r0, #0
	cmp r5, #0
	blt _0801D0E8
_0801D090:
	lsls r1, r5, #2
	ldr r0, _0801D104 @ =gUnk_02001A00
	adds r3, r1, r0
	movs r0, #0
	strh r6, [r3, #2]
	strb r0, [r3, #1]
	movs r2, #0x10
	rsbs r2, r2, #0
	lsls r0, r4, #4
	movs r1, #3
	orrs r0, r1
	strb r0, [r3]
	subs r4, #1
	cmp r4, #0
	beq _0801D0E0
	movs r0, #0
	mov sl, r0
	movs r1, #0
	mov r8, r1
	movs r0, #0xf
	mov sb, r0
	mov ip, r2
	movs r7, #2
_0801D0BE:
	adds r3, #4
	mov r1, r8
	strh r1, [r3, #2]
	mov r0, sl
	strb r0, [r3, #1]
	lsls r2, r4, #4
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	orrs r0, r2
	mov r1, ip
	ands r0, r1
	orrs r0, r7
	strb r0, [r3]
	subs r4, #1
	cmp r4, #0
	bne _0801D0BE
_0801D0E0:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0801D2C8
_0801D0E8:
	ldr r0, [sp]
	adds r1, r5, #0
	bl sub_0801D19C
	adds r0, r5, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801D100: .4byte gUnk_08133368
_0801D104: .4byte gUnk_02001A00

	thumb_func_start sub_0801D108
sub_0801D108: @ 0x0801D108
	push {lr}
	adds r2, r0, #0
	cmp r2, #5
	bhi _0801D116
	b _0801D12E
_0801D112:
	adds r0, r1, #0
	b _0801D12E
_0801D116:
	movs r1, #6
	ldr r0, _0801D130 @ =gUnk_02001A00
	adds r0, #0x18
_0801D11C:
	ldrh r3, [r0, #2]
	cmp r2, r3
	beq _0801D112
	adds r0, #4
	adds r1, #1
	cmp r1, #0xf
	bls _0801D11C
	movs r0, #1
	rsbs r0, r0, #0
_0801D12E:
	pop {pc}
	.align 2, 0
_0801D130: .4byte gUnk_02001A00

	thumb_func_start sub_0801D134
sub_0801D134: @ 0x0801D134
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r2, #6
	ldr r0, _0801D154 @ =gUnk_02001A00
	adds r3, r0, #0
	adds r3, #0x18
_0801D142:
	ldrb r0, [r3]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bne _0801D158
	adds r1, #1
	cmp r4, r1
	bhi _0801D15A
	b _0801D180
	.align 2, 0
_0801D154: .4byte gUnk_02001A00
_0801D158:
	movs r1, #0
_0801D15A:
	adds r3, #4
	adds r2, #1
	cmp r2, #0xf
	bls _0801D142
	movs r1, #0
	movs r2, #6
	ldr r0, _0801D188 @ =gUnk_02001A00
	adds r3, r0, #0
	adds r3, #0x18
_0801D16C:
	ldrb r0, [r3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bgt _0801D18C
	cmp r0, #0
	blt _0801D18C
	adds r1, #1
	cmp r4, r1
	bhi _0801D18E
_0801D180:
	subs r0, r1, #1
	subs r0, r2, r0
	b _0801D19A
	.align 2, 0
_0801D188: .4byte gUnk_02001A00
_0801D18C:
	movs r1, #0
_0801D18E:
	adds r3, #4
	adds r2, #1
	cmp r2, #0xf
	bls _0801D16C
	movs r0, #1
	rsbs r0, r0, #0
_0801D19A:
	pop {r4, pc}

	thumb_func_start sub_0801D19C
sub_0801D19C: @ 0x0801D19C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	cmp r3, #0
	bge _0801D1A8
	movs r3, #0
_0801D1A8:
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x7e
	bls _0801D1BE
	adds r0, r4, #0
	adds r0, #0x27
	strb r3, [r0]
_0801D1BE:
	movs r0, #0xf
	adds r1, r3, #0
	ands r1, r0
	ldrb r2, [r4, #0x1a]
	movs r5, #0x10
	rsbs r5, r5, #0
	adds r0, r5, #0
	ands r0, r2
	orrs r0, r1
	movs r2, #0xf
	adds r1, r3, #0
	ands r1, r2
	lsls r1, r1, #4
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1a]
	lsls r1, r3, #2
	ldr r0, _0801D22C @ =gUnk_02001A00
	adds r4, r1, r0
	ldr r0, [r4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #4
	beq _0801D22A
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	ldr r0, [r4]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x1c
	ldrb r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r4]
	subs r3, #1
	cmp r3, #0
	beq _0801D22A
	movs r7, #0xf
	adds r6, r5, #0
	movs r5, #2
_0801D212:
	adds r4, #4
	lsls r2, r3, #4
	ldrb r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	orrs r0, r2
	ands r0, r6
	orrs r0, r5
	strb r0, [r4]
	subs r3, #1
	cmp r3, #0
	bne _0801D212
_0801D22A:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801D22C: .4byte gUnk_02001A00

	thumb_func_start UnloadOBJPalette
UnloadOBJPalette: @ 0x0801D230
	push {lr}
	adds r0, #0x27
	ldrb r2, [r0]
	movs r1, #0
	strb r1, [r0]
	adds r0, r2, #0
	bl sub_0801D244
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801D244
sub_0801D244: @ 0x0801D244
	push {r4, r5, r6, lr}
	lsls r0, r0, #2
	ldr r1, _0801D288 @ =gUnk_02001A00
	adds r2, r0, r1
	ldr r0, [r2]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #3
	bne _0801D284
	ldrb r0, [r2, #1]
	subs r0, #1
	strb r0, [r2, #1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801D284
	ldr r0, [r2]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x1c
	movs r5, #0
	movs r6, #0x10
	rsbs r6, r6, #0
	movs r4, #1
_0801D270:
	strb r5, [r2, #1]
	ldrb r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
	adds r2, #4
	subs r3, #1
	cmp r3, #0
	bne _0801D270
_0801D284:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801D288: .4byte gUnk_02001A00

	thumb_func_start sub_0801D28C
sub_0801D28C: @ 0x0801D28C
	push {lr}
	adds r3, r1, #0
	adds r0, #0x27
	ldrb r2, [r0]
	ldr r1, _0801D2B0 @ =gUnk_02001A00
	lsls r0, r2, #2
	adds r1, r0, r1
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #3
	bne _0801D2AE
	strh r3, [r1, #2]
	adds r0, r3, #0
	adds r1, r2, #0
	bl sub_0801D2C8
_0801D2AE:
	pop {pc}
	.align 2, 0
_0801D2B0: .4byte gUnk_02001A00

	thumb_func_start sub_0801D2B4
sub_0801D2B4: @ 0x0801D2B4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl UnloadOBJPalette
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0801D040
	pop {r4, r5, pc}

	thumb_func_start sub_0801D2C8
sub_0801D2C8: @ 0x0801D2C8
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, _0801D2F8 @ =gUsedPalettes
	adds r4, r1, #0
	adds r4, #0x10
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	cmp r3, #5
	bls _0801D33C
	cmp r3, #0x15
	bne _0801D300
	ldr r2, _0801D2FC @ =gPaletteBuffer
	adds r0, r2, #0
	adds r0, #0x78
	ldrh r0, [r0]
	lsls r1, r4, #5
	adds r1, r1, r2
	movs r2, #0x20
	bl _DmaFill16
	b _0801D33C
	.align 2, 0
_0801D2F8: .4byte gUsedPalettes
_0801D2FC: .4byte gPaletteBuffer
_0801D300:
	cmp r3, #0x14
	bhi _0801D31C
	subs r0, r3, #6
	lsls r0, r0, #5
	ldr r1, _0801D318 @ =gPaletteBuffer
	adds r0, r0, r1
	adds r1, r4, #0
	movs r2, #1
	bl LoadPalettes
	b _0801D33C
	.align 2, 0
_0801D318: .4byte gPaletteBuffer
_0801D31C:
	ldr r1, _0801D340 @ =gUnk_08133368
	adds r0, r3, #0
	subs r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsrs r2, r0, #0x18
	movs r1, #0xf
	ands r2, r1
	ldr r1, _0801D344 @ =0x00FFFFFF
	ands r0, r1
	ldr r1, _0801D348 @ =gGlobalGfxAndPalettes
	adds r0, r0, r1
	adds r1, r4, #0
	bl LoadPalettes
_0801D33C:
	pop {r4, pc}
	.align 2, 0
_0801D340: .4byte gUnk_08133368
_0801D344: .4byte 0x00FFFFFF
_0801D348: .4byte gGlobalGfxAndPalettes

	thumb_func_start sub_0801D34C
sub_0801D34C: @ 0x0801D34C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	movs r2, #0
	movs r3, #0
	ldr r1, _0801D37C @ =gUnk_02001A00
_0801D356:
	mov r4, sp
	adds r0, r4, r2
	strb r2, [r0]
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bgt _0801D370
	cmp r0, #0
	blt _0801D370
	strb r3, [r1]
	strb r3, [r1, #1]
	strh r3, [r1, #2]
_0801D370:
	adds r1, #4
	adds r2, #1
	cmp r2, #0xf
	bls _0801D356
	movs r4, #6
	b _0801D390
	.align 2, 0
_0801D37C: .4byte gUnk_02001A00
_0801D380:
	cmp r4, r1
	ble _0801D390
	mov r2, sp
	adds r0, r2, r4
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0801D48C
_0801D390:
	adds r0, r4, #1
	bl sub_0801D458
	adds r4, r0, #0
	cmp r4, #0
	beq _0801D3AC
	movs r0, #1
	bl sub_0801D134
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801D380
_0801D3AC:
	movs r1, #0
	ldr r4, _0801D450 @ =gEntityLists
	mov ip, r4
_0801D3B2:
	lsls r0, r1, #3
	mov r2, ip
	adds r3, r0, r2
	adds r0, r3, #0
	ldr r3, [r3, #4]
	adds r5, r1, #1
	cmp r0, r3
	beq _0801D444
	movs r7, #0x10
	rsbs r7, r7, #0
	adds r4, r0, #0
	ldr r6, _0801D454 @ =gUnk_020000C0
_0801D3CA:
	ldrb r0, [r3, #8]
	cmp r0, #9
	beq _0801D43E
	adds r1, r3, #0
	adds r1, #0x28
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x7e
	bhi _0801D40C
	ldrb r1, [r1]
	lsls r1, r1, #6
	adds r1, r1, r6
	ldrb r0, [r1, #5]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r1, #5]
	ldrb r0, [r1, #0x15]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r1, #0x15]
	adds r2, r1, #0
	adds r2, #0x25
	ldrb r0, [r2]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r2]
	adds r1, #0x35
	ldrb r0, [r1]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r1]
_0801D40C:
	adds r1, r3, #0
	adds r1, #0x27
	ldrb r0, [r1]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r2, [r3, #0x1a]
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x1c
	add r0, sp
	ldrb r1, [r0]
	movs r0, #0xf
	ands r1, r0
	adds r0, r7, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1a]
	lsrs r1, r0, #4
	add r1, sp
	ldrb r2, [r1]
	lsls r2, r2, #4
	movs r1, #0xf
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x1a]
_0801D43E:
	ldr r3, [r3, #4]
	cmp r4, r3
	bne _0801D3CA
_0801D444:
	adds r1, r5, #0
	cmp r1, #8
	bls _0801D3B2
	add sp, #0x10
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801D450: .4byte gEntityLists
_0801D454: .4byte gUnk_020000C0

	thumb_func_start sub_0801D458
sub_0801D458: @ 0x0801D458
	push {lr}
	adds r2, r0, #0
	cmp r2, #0xf
	bhi _0801D488
	ldr r1, _0801D47C @ =gUnk_02001A00
	lsls r0, r2, #2
	adds r1, r0, r1
_0801D466:
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0
	blt _0801D478
	cmp r0, #1
	ble _0801D480
	cmp r0, #4
	beq _0801D480
_0801D478:
	adds r0, r2, #0
	b _0801D48A
	.align 2, 0
_0801D47C: .4byte gUnk_02001A00
_0801D480:
	adds r1, #4
	adds r2, #1
	cmp r2, #0xf
	bls _0801D466
_0801D488:
	movs r0, #0
_0801D48A:
	pop {pc}

	thumb_func_start sub_0801D48C
sub_0801D48C: @ 0x0801D48C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	adds r3, r1, #0
	ldr r0, _0801D50C @ =gUnk_02001A00
	mov r8, r0
	lsls r0, r6, #2
	mov r1, r8
	adds r4, r0, r1
	ldrb r0, [r4]
	lsrs r5, r0, #4
	subs r5, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	beq _0801D4F8
	ldr r2, _0801D510 @ =gPaletteBuffer
	lsls r0, r3, #5
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r7, r0, r2
	lsls r0, r3, #2
	add r8, r0
	lsls r0, r6, #5
	adds r0, r0, r1
	adds r6, r0, r2
	movs r3, #0
_0801D4C8:
	ldr r0, [r4]
	mov r1, r8
	adds r1, #4
	mov r8, r1
	subs r1, #4
	stm r1!, {r0}
	strb r3, [r4]
	strb r3, [r4, #1]
	strh r3, [r4, #2]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0x20
	str r3, [sp]
	bl _DmaCopy
	adds r6, #0x20
	adds r4, #4
	adds r7, #0x20
	subs r5, #1
	movs r0, #1
	rsbs r0, r0, #0
	ldr r3, [sp]
	cmp r5, r0
	bne _0801D4C8
_0801D4F8:
	ldr r0, _0801D514 @ =gUsedPalettes
	ldr r1, [r0]
	ldr r2, _0801D518 @ =0xFFFF0000
	orrs r1, r2
	str r1, [r0]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801D50C: .4byte gUnk_02001A00
_0801D510: .4byte gPaletteBuffer
_0801D514: .4byte gUsedPalettes
_0801D518: .4byte 0xFFFF0000

	thumb_func_start sub_0801D51C
sub_0801D51C: @ 0x0801D51C
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _0801D58C @ =0x05F5E0FF
	cmp r2, r0
	bhi _0801D5A0
	ldr r1, _0801D590 @ =0x00989680
	adds r0, r2, #0
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x1c
	ldr r2, _0801D594 @ =0x000F4240
	adds r0, r1, #0
	adds r1, r2, #0
	bl Div
	lsls r0, r0, #0x18
	adds r4, r4, r0
	ldr r2, _0801D598 @ =0x000186A0
	adds r0, r1, #0
	adds r1, r2, #0
	bl Div
	lsls r0, r0, #0x14
	adds r4, r4, r0
	ldr r2, _0801D59C @ =0x00002710
	adds r0, r1, #0
	adds r1, r2, #0
	bl Div
	lsls r0, r0, #0x10
	adds r4, r4, r0
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r1, #0
	adds r1, r2, #0
	bl Div
	lsls r0, r0, #0xc
	adds r4, r4, r0
	adds r0, r1, #0
	movs r1, #0x64
	bl Div
	lsls r0, r0, #8
	adds r4, r4, r0
	adds r0, r1, #0
	movs r1, #0xa
	bl Div
	lsls r0, r0, #4
	adds r4, r4, r0
	adds r4, r4, r1
	adds r0, r4, #0
	b _0801D5A2
	.align 2, 0
_0801D58C: .4byte 0x05F5E0FF
_0801D590: .4byte 0x00989680
_0801D594: .4byte 0x000F4240
_0801D598: .4byte 0x000186A0
_0801D59C: .4byte 0x00002710
_0801D5A0:
	ldr r0, _0801D5A4 @ =0x99999999
_0801D5A2:
	pop {r4, pc}
	.align 2, 0
_0801D5A4: .4byte 0x99999999

	thumb_func_start ReadBit
ReadBit: @ 0x0801D5A8
	lsrs r2, r1, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	movs r2, #7
	ands r2, r1
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0

	thumb_func_start WriteBit
WriteBit: @ 0x0801D5BC
	lsrs r2, r1, #3
	adds r3, r0, r2
	movs r2, #7
	ands r1, r2
	movs r2, #1
	lsls r2, r1
	ldrb r0, [r3]
	adds r1, r0, #0
	orrs r1, r2
	strb r1, [r3]
	ands r0, r2
	bx lr

	thumb_func_start ClearBit
ClearBit: @ 0x0801D5D4
	lsrs r2, r1, #3
	adds r3, r0, r2
	movs r2, #7
	ands r1, r2
	movs r2, #1
	lsls r2, r1
	ldrb r0, [r3]
	adds r1, r0, #0
	bics r1, r2
	strb r1, [r3]
	ands r0, r2
	bx lr
