.syntax unified
.ifdef EU
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r5, _080A432C @ =gOamCmd
	movs r0, #0
	strh r0, [r5, #4]
	strh r0, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r5, #8]
	movs r0, #0x9c
	strh r0, [r5]
	movs r0, #0x48
	strh r0, [r5, #2]
	ldr r7, _080A4330 @ =0x000001FB
	adds r0, r7, #0
	movs r1, #0
	bl DrawDirect
	ldr r0, _080A4334 @ =gSave
	ldrb r0, [r0, #6]
	movs r2, #0x88
	cmp r0, #0
	bne _080A41C2
	movs r2, #0x82
_080A41C2:
	ldr r3, _080A4338 @ =gChooseFileState
	ldrb r1, [r3, #1]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080A4226
	ldrb r4, [r3, #0x1c]
	cmp r2, r4
	blt _080A4226
	movs r6, #0xe8
	strh r6, [r5]
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r1, r2, #0
	bl __divsi3
	subs r1, r4, #1
	muls r0, r1, r0
	cmp r0, #0
	bge _080A41EC
	adds r0, #0xff
_080A41EC:
	asrs r0, r0, #8
	adds r0, #0x20
	strh r0, [r5, #2]
	adds r0, r7, #0
	movs r1, #1
	bl DrawDirect
	ldr r0, _080A433C @ =gMain
	ldrh r1, [r0, #0xc]
	movs r0, #0x10
	ands r0, r1
	movs r4, #2
	cmp r0, #0
	beq _080A420A
	movs r4, #4
_080A420A:
	strh r6, [r5]
	movs r0, #0x1a
	strh r0, [r5, #2]
	adds r0, r7, #0
	adds r1, r4, #0
	bl DrawDirect
	strh r6, [r5]
	movs r0, #0x76
	strh r0, [r5, #2]
	adds r1, r4, #1
	adds r0, r7, #0
	bl DrawDirect
_080A4226:
	ldr r0, _080A433C @ =gMain
	ldrh r1, [r0, #0xc]
	movs r2, #0x10
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080A427C
	ldr r5, _080A4338 @ =gChooseFileState
	ldrb r1, [r5, #1]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080A427C
	ldrb r0, [r5, #0x1e]
	cmp r0, #0
	beq _080A427C
	ldr r4, _080A432C @ =gOamCmd
	strh r2, [r4, #2]
	movs r0, #0x1f
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _080A4262
	movs r0, #6
	strh r0, [r4]
	movs r0, #0x9c
	strh r0, [r4, #2]
	ldr r0, _080A4330 @ =0x000001FB
	movs r1, #6
	bl DrawDirect
_080A4262:
	ldrb r1, [r5, #0x1e]
	movs r0, #0x1f
	ldrsb r0, [r5, r0]
	cmp r1, r0
	ble _080A427C
	movs r0, #0xea
	strh r0, [r4]
	movs r0, #0x9c
	strh r0, [r4, #2]
	ldr r0, _080A4330 @ =0x000001FB
	movs r1, #7
	bl DrawDirect
_080A427C:
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _080A42D0
	ldr r2, _080A4338 @ =gChooseFileState
	ldrb r1, [r2, #1]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080A42D0
	ldr r1, _080A432C @ =gOamCmd
	movs r0, #0x10
	strh r0, [r1, #2]
	ldrb r4, [r2, #0x1c]
	movs r6, #2
	adds r7, r1, #0
	movs r5, #0x6b
_080A42A0:
	strh r5, [r7]
	adds r0, r4, #0
	movs r1, #0xa
	bl __modsi3
	lsls r0, r0, #1
	movs r2, #0x9e
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r7, #8]
	movs r0, #0
	movs r1, #9
	bl DrawDirect
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	adds r4, r0, #0
	subs r5, #7
	subs r6, #1
	cmp r6, #0
	bge _080A42A0
_080A42D0:
	ldr r4, _080A4338 @ =gChooseFileState
	ldrb r1, [r4, #1]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080A4352
	ldrb r0, [r4, #0x1c]
	bl sub_080A4948
	cmp r0, #0
	beq _080A4352
	ldr r1, _080A432C @ =gOamCmd
	movs r0, #0x2c
	strh r0, [r1]
	movs r0, #0x48
	strh r0, [r1, #2]
	movs r0, #0xd4
	lsls r0, r0, #7
	strh r0, [r1, #8]
	ldr r0, _080A4340 @ =0x000001F7
	ldrb r1, [r4, #0x1c]
	subs r1, #1
	bl DrawDirect
	ldrb r1, [r4, #0x1c]
	ldrb r0, [r4, #0x1d]
	cmp r0, r1
	beq _080A4352
	strb r1, [r4, #0x1d]
	ldrb r4, [r4, #0x1c]
	lsls r4, r4, #4
	ldr r0, _080A4344 @ =gFigurines
	adds r4, r4, r0
	ldr r0, [r4]
	movs r1, #0x16
	movs r2, #9
	bl LoadPalettes
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	cmp r2, #0
	bge _080A434CEU
	ldr r1, _080A4348EU @ =0x06014000
	bl LZ77UnCompVram
	b _080A4352
	.align 2, 0
_080A432C: .4byte gOamCmd
_080A4330: .4byte 0x000001FB
_080A4334: .4byte gSave
_080A4338: .4byte gChooseFileState
_080A433C: .4byte gMain
_080A4340: .4byte 0x000001F7
_080A4344: .4byte gFigurines
_080A4348EU: .4byte 0x06014000
_080A434CEU:
	ldr r1, _080A4358EU @ =0x06014000
	bl LoadResourceAsync
_080A4352:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A4358EU: .4byte 0x06014000
.else
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r5, _080A4B1C @ =gOamCmd
	movs r0, #0
	strh r0, [r5, #4]
	strh r0, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r5, #8]
	movs r0, #0x9c
	strh r0, [r5]
	movs r0, #0x48
	strh r0, [r5, #2]
	movs r7, #0xfe
	lsls r7, r7, #1
	adds r0, r7, #0
	movs r1, #0
	bl DrawDirect
	ldr r0, _080A4B20 @ =gSave
	ldrb r0, [r0, #6]
	movs r2, #0x88
	cmp r0, #0
	bne _080A49AC
	movs r2, #0x82
_080A49AC:
	ldr r3, _080A4B24 @ =gMenu
	ldrb r1, [r3, #1]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080A4A10
	ldrb r4, [r3, #0x1c]
	cmp r2, r4
	blt _080A4A10
	movs r6, #0xe8
	strh r6, [r5]
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r1, r2, #0
	bl __divsi3
	subs r1, r4, #1
	muls r0, r1, r0
	cmp r0, #0
	bge _080A49D6
	adds r0, #0xff
_080A49D6:
	asrs r0, r0, #8
	adds r0, #0x20
	strh r0, [r5, #2]
	adds r0, r7, #0
	movs r1, #1
	bl DrawDirect
	ldr r0, _080A4B28 @ =gMain
	ldrh r1, [r0, #0xc]
	movs r0, #0x10
	ands r0, r1
	movs r4, #2
	cmp r0, #0
	beq _080A49F4
	movs r4, #4
_080A49F4:
	strh r6, [r5]
	movs r0, #0x1a
	strh r0, [r5, #2]
	adds r0, r7, #0
	adds r1, r4, #0
	bl DrawDirect
	strh r6, [r5]
	movs r0, #0x76
	strh r0, [r5, #2]
	adds r1, r4, #1
	adds r0, r7, #0
	bl DrawDirect
_080A4A10:
	ldr r0, _080A4B28 @ =gMain
	ldrh r1, [r0, #0xc]
	movs r2, #0x10
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080A4A6A
	ldr r5, _080A4B24 @ =gMenu
	ldrb r1, [r5, #1]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080A4A6A
	ldrb r0, [r5, #0x1e]
	cmp r0, #0
	beq _080A4A6A
	ldr r4, _080A4B1C @ =gOamCmd
	strh r2, [r4, #2]
	movs r0, #0x1f
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _080A4A4E
	movs r0, #6
	strh r0, [r4]
	movs r0, #0x9c
	strh r0, [r4, #2]
	movs r0, #0xfe
	lsls r0, r0, #1
	movs r1, #6
	bl DrawDirect
_080A4A4E:
	ldrb r1, [r5, #0x1e]
	movs r0, #0x1f
	ldrsb r0, [r5, r0]
	cmp r1, r0
	ble _080A4A6A
	movs r0, #0xea
	strh r0, [r4]
	movs r0, #0x9c
	strh r0, [r4, #2]
	movs r0, #0xfe
	lsls r0, r0, #1
	movs r1, #7
	bl DrawDirect
_080A4A6A:
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _080A4ABE
	ldr r2, _080A4B24 @ =gMenu
	ldrb r1, [r2, #1]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080A4ABE
	ldr r1, _080A4B1C @ =gOamCmd
	movs r0, #0x10
	strh r0, [r1, #2]
	ldrb r4, [r2, #0x1c]
	movs r6, #2
	adds r7, r1, #0
	movs r5, #0x6b
_080A4A8E:
	strh r5, [r7]
	adds r0, r4, #0
	movs r1, #0xa
	bl __modsi3
	lsls r0, r0, #1
	movs r2, #0x9e
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r7, #8]
	movs r0, #0
	movs r1, #9
	bl DrawDirect
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	adds r4, r0, #0
	subs r5, #7
	subs r6, #1
	cmp r6, #0
	bge _080A4A8E
_080A4ABE:
	ldr r4, _080A4B24 @ =gMenu
	ldrb r1, [r4, #1]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080A4B3A
	ldrb r0, [r4, #0x1c]
	bl sub_080A4948
	cmp r0, #0
	beq _080A4B3A
	ldr r1, _080A4B1C @ =gOamCmd
	movs r0, #0x2c
	strh r0, [r1]
	movs r0, #0x48
	strh r0, [r1, #2]
	movs r0, #0xd4
	lsls r0, r0, #7
	strh r0, [r1, #8]
	movs r0, #0xfc
	lsls r0, r0, #1
	ldrb r1, [r4, #0x1c]
	subs r1, #1
	bl DrawDirect
	ldrb r1, [r4, #0x1c]
	ldrb r0, [r4, #0x1d]
	cmp r0, r1
	beq _080A4B3A
	strb r1, [r4, #0x1d]
	ldrb r4, [r4, #0x1c]
	lsls r4, r4, #4
	ldr r0, _080A4B2C @ =gFigurines
	adds r4, r4, r0
	ldr r0, [r4]
	movs r1, #0x16
	movs r2, #9
	bl LoadPalettes
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	cmp r2, #0
	bge _080A4B34
	ldr r1, _080A4B30 @ =0x06014000
	bl LZ77UnCompVram
	b _080A4B3A
	.align 2, 0
_080A4B1C: .4byte gOamCmd
_080A4B20: .4byte gSave
_080A4B24: .4byte gMenu
_080A4B28: .4byte gMain
_080A4B2C: .4byte gFigurines
_080A4B30: .4byte 0x06014000
_080A4B34:
	ldr r1, _080A4B40 @ =0x06014000
	bl LoadResourceAsync
_080A4B3A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A4B40: .4byte 0x06014000
.endif
.syntax divided
