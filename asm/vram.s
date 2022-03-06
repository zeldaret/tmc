	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start ResetPalettes
ResetPalettes: @ 0x080ADD30
	push {r4, r5, r6, lr}
	ldr r4, _080ADD6C @ =gGFXSlots
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r4, #0
	bl MemClear
	movs r5, #0
	adds r4, #4
	movs r0, #0x10
	rsbs r0, r0, #0
	adds r6, r0, #0
_080ADD48:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl ReserveGFXSlots
	ldrb r0, [r4]
	ands r0, r6
	movs r1, #6
	orrs r0, r1
	strb r0, [r4]
	movs r0, #0x80
	strb r0, [r4, #2]
	adds r4, #0xc
	adds r5, #1
	cmp r5, #3
	bls _080ADD48
	pop {r4, r5, r6, pc}
	.align 2, 0
_080ADD6C: .4byte gGFXSlots

	thumb_func_start sub_080ADD70
sub_080ADD70: @ 0x080ADD70
.ifdef EU
	push {r4, r5, lr}
	ldr r0, _080AD540 @ =gGFXSlots
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AD56A
	movs r4, #0
	movs r5, #0
_080AD522:
	ldr r0, _080AD544 @ =gUnk_02024494
	adds r2, r5, r0
	ldrb r1, [r2]
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #2
	bne _080AD548
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	b _080AD562
	.align 2, 0
_080AD540: .4byte gGFXSlots
_080AD544: .4byte gUnk_02024494
_080AD548:
	cmp r0, #2
	blt _080AD562
	cmp r0, #6
	bgt _080AD562
	cmp r0, #4
	blt _080AD562
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0x30
	bne _080AD562
	adds r0, r4, #0
	bl sub_080ADE74
_080AD562:
	adds r5, #0xc
	adds r4, #1
	cmp r4, #0x2b
	bls _080AD522
_080AD56A:
	pop {r4, r5, pc}

.else
	push {r4, r5, lr}
	ldr r1, _080ADD88 @ =gGFXSlots
	ldrb r0, [r1]
	cmp r0, #0
	beq _080ADDD6
	ldrb r0, [r1, #3]
	cmp r0, #0
	beq _080ADD8C
	bl sub_080ADE24
	b _080ADDD6
	.align 2, 0
_080ADD88: .4byte gGFXSlots
_080ADD8C:
	movs r4, #0
	movs r5, #0
_080ADD90:
	ldr r0, _080ADDB0 @ =gUnk_02024494
	adds r2, r5, r0
	ldrb r1, [r2]
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #2
	bne _080ADDB4
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	b _080ADDCE
	.align 2, 0
_080ADDB0: .4byte gUnk_02024494
_080ADDB4:
	cmp r0, #2
	blt _080ADDCE
	cmp r0, #6
	bgt _080ADDCE
	cmp r0, #4
	blt _080ADDCE
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0x30
	bne _080ADDCE
	adds r0, r4, #0
	bl sub_080ADE74
_080ADDCE:
	adds r5, #0xc
	adds r4, #1
	cmp r4, #0x2b
	bls _080ADD90
_080ADDD6:
	pop {r4, r5, pc}
.endif

	thumb_func_start sub_080ADDD8
sub_080ADDD8: @ 0x080ADDD8
	push {lr}
	adds r2, r1, #0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080ADDFC @ =gUnk_02024494
	adds r3, r1, r0
	ldr r0, _080ADE00 @ =0x00FFFFFC
	ands r0, r2
	ldr r1, _080ADE04 @ =gGlobalGfxAndPalettes
	adds r0, r0, r1
	str r0, [r3, #8]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080ADE0C
	ldr r0, _080ADE08 @ =0x0000FFFF
	b _080ADE14
	.align 2, 0
_080ADDFC: .4byte gUnk_02024494
_080ADE00: .4byte 0x00FFFFFC
_080ADE04: .4byte gGlobalGfxAndPalettes
_080ADE08: .4byte 0x0000FFFF
_080ADE0C:
	movs r0, #0xfe
	lsls r0, r0, #0x17
	ands r0, r2
	lsrs r0, r0, #0x14
_080ADE14:
	strh r0, [r3, #6]
	ldrb r0, [r3]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x30
	orrs r1, r0
	strb r1, [r3]
	pop {pc}

	thumb_func_start sub_080ADE24
sub_080ADE24: @ 0x080ADE24
	push {r4, r5, lr}
	ldr r1, _080ADE50 @ =gGFXSlots
	movs r0, #1
	strb r0, [r1, #3]
	movs r4, #0
	movs r5, #0
_080ADE30:
	ldr r0, _080ADE54 @ =gUnk_02024494
	adds r1, r5, r0
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #3
	beq _080ADE60
	cmp r0, #3
	blt _080ADE58
	cmp r0, #6
	bgt _080ADE58
	adds r0, r4, #0
	bl sub_080ADE74
	b _080ADE60
	.align 2, 0
_080ADE50: .4byte gGFXSlots
_080ADE54: .4byte gUnk_02024494
_080ADE58:
	adds r0, r1, #0
	movs r1, #0xc
	bl MemClear
_080ADE60:
	adds r5, #0xc
	adds r4, #1
	cmp r4, #0x2b
	bls _080ADE30
	movs r1, #0
	ldr r0, _080ADE70 @ =gGFXSlots
	strb r1, [r0, #3]
	pop {r4, r5, pc}
	.align 2, 0
_080ADE70: .4byte gGFXSlots

	thumb_func_start sub_080ADE74
sub_080ADE74: @ 0x080ADE74
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _080ADF00 @ =gUnk_02024494
	adds r3, r0, r1
	ldrb r1, [r3]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _080ADF7C
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3]
	ldrh r1, [r3, #6]
	ldr r0, _080ADF04 @ =0x0000FFFF
	cmp r1, r0
	beq _080ADF18
	ldrb r0, [r3, #3]
	cmp r0, #0
	beq _080ADF18
	lsls r0, r0, #6
	ldr r1, _080ADF08 @ =gUnk_020000C0
	adds r4, r0, r1
	movs r5, #4
	movs r6, #9
	rsbs r6, r6, #0
_080ADEB0:
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080ADEF6
	ldr r0, _080ADF0C @ =gGFXSlots
	ldrb r0, [r0, #3]
	cmp r0, #0
	bne _080ADECA
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080ADEF6
_080ADECA:
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r4]
	ldrb r0, [r4, #9]
	lsls r2, r0, #5
	cmp r2, #0
	beq _080ADEF6
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #5
	ldr r3, _080ADF10 @ =0x06010000
	adds r1, r0, r3
	ldr r3, _080ADF14 @ =0x040000D4
	ldr r0, [r4, #0xc]
	str r0, [r3]
	str r1, [r3, #4]
	adds r0, r2, #0
	asrs r0, r0, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_080ADEF6:
	adds r4, #0x10
	subs r5, #1
	cmp r5, #0
	bgt _080ADEB0
	b _080ADF7C
	.align 2, 0
_080ADF00: .4byte gUnk_02024494
_080ADF04: .4byte 0x0000FFFF
_080ADF08: .4byte gUnk_020000C0
_080ADF0C: .4byte gGFXSlots
_080ADF10: .4byte 0x06010000
_080ADF14: .4byte 0x040000D4
_080ADF18:
	lsls r0, r2, #9
	ldr r2, _080ADF4C @ =0x06012800
	adds r1, r0, r2
	ldrh r2, [r3, #6]
	cmp r2, #0
	beq _080ADF58
	ldr r0, _080ADF50 @ =0x0000FFFF
	cmp r2, r0
	beq _080ADF62
	ldr r2, _080ADF54 @ =0x040000D4
	ldr r0, [r3, #8]
	str r0, [r2]
	str r1, [r2, #4]
	ldrh r0, [r3, #6]
	lsls r0, r0, #3
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r3, #6]
	subs r2, #0x10
	cmp r2, #0
	ble _080ADF7C
	b _080ADF70
	.align 2, 0
_080ADF4C: .4byte 0x06012800
_080ADF50: .4byte 0x0000FFFF
_080ADF54: .4byte 0x040000D4
_080ADF58:
	ldrb r1, [r3]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r3]
	b _080ADF7C
_080ADF62:
	ldrb r0, [r3, #3]
	cmp r0, #0
	bne _080ADF7C
	ldr r0, [r3, #8]
	bl LZ77UnCompVram
	b _080ADF7C
_080ADF70:
	adds r3, #0xc
	movs r0, #0
	strh r0, [r3, #6]
	subs r2, #0x10
	cmp r2, #0
	bgt _080ADF70
_080ADF7C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start LoadFixedGFX
LoadFixedGFX: @ 0x080ADF80
.ifdef EU
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r5, r1, #0
	cmp r5, #0
	bne _080AD726
	movs r0, #1
	b _080AD77E
_080AD726:
	movs r4, #4
	ldr r0, _080AD774 @ =gGFXSlots
	adds r0, #0x30
_080AD72C:
	ldrh r1, [r0, #8]
	cmp r5, r1
	beq _080AD766
	adds r0, #0xc
	adds r4, #1
	cmp r4, #0x2b
	bls _080AD72C
	ldr r0, _080AD778 @ =gFixedTypeGfxData
	lsls r1, r5, #2
	adds r1, r1, r0
	ldr r7, [r1]
	movs r0, #0xfe
	lsls r0, r0, #0x17
	ands r0, r7
	lsrs r6, r0, #0x18
	adds r0, r6, #0
	bl FindFreeGFXSlots
	adds r4, r0, #0
	cmp r4, #0
	beq _080AD77C
	adds r1, r5, #0
	adds r2, r6, #0
	bl ReserveGFXSlots
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_080ADDD8
_080AD766:
	adds r0, r4, #0
	mov r1, r8
	movs r2, #4
	bl sub_080AE0C8
	movs r0, #1
	b _080AD77E
	.align 2, 0
_080AD774: .4byte gGFXSlots
_080AD778: .4byte gFixedTypeGfxData
_080AD77C:
	movs r0, #0
_080AD77E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

.else
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	cmp r7, #0
	beq _080ADFFC
	movs r5, #4
	ldr r0, _080ADFD4 @ =gGFXSlots
	adds r0, #0x30
_080ADF94:
	ldrh r1, [r0, #8]
	cmp r7, r1
	beq _080ADFF2
	adds r0, #0xc
	adds r5, #1
	cmp r5, #0x2b
	bls _080ADF94
	ldr r0, _080ADFD8 @ =gFixedTypeGfxData
	lsls r4, r7, #2
	adds r0, r4, r0
	ldr r0, [r0]
	movs r1, #0xfe
	lsls r1, r1, #0x17
	ands r0, r1
	lsrs r6, r0, #0x18
	adds r0, r6, #0
	bl FindFreeGFXSlots
	adds r5, r0, #0
	cmp r5, #0
	bne _080ADFDC
	bl CleanUpGFXSlots
	adds r0, r6, #0
	bl FindFreeGFXSlots
	adds r5, r0, #0
	cmp r5, #0
	bne _080ADFDC
	movs r0, #0
	b _080ADFFE
	.align 2, 0
_080ADFD4: .4byte gGFXSlots
_080ADFD8: .4byte gFixedTypeGfxData
_080ADFDC:
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl ReserveGFXSlots
	ldr r0, _080AE004 @ =gFixedTypeGfxData
	adds r0, r4, r0
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_080ADDD8
_080ADFF2:
	adds r0, r5, #0
	mov r1, r8
	movs r2, #4
	bl sub_080AE0C8
_080ADFFC:
	movs r0, #1
_080ADFFE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080AE004: .4byte gFixedTypeGfxData
.endif

	thumb_func_start LoadSwapGFX
LoadSwapGFX: @ 0x080AE008
.ifdef EU
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	cmp r4, #0
	bne _080AD79C
	adds r0, r5, #0
	bl FindFreeGFXSlots
	adds r4, r0, #0
	cmp r4, #0
	beq _080AD7C4
_080AD79C:
	ldr r0, _080AD7D0 @ =gGFXSlots
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r2, r0, #0x1c
	cmp r2, #6
	beq _080AD7BC
	adds r0, r4, #0
	movs r1, #0
	adds r2, r5, #0
	bl ReserveGFXSlots
	movs r2, #5
_080AD7BC:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080AE0C8
_080AD7C4:
	adds r0, r4, #0
	cmp r0, #0
	beq _080AD7CC
	movs r0, #1
_080AD7CC:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080AD7D0: .4byte gGFXSlots

.else
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	cmp r4, #0
	bne _080AE030
	adds r0, r5, #0
	bl FindFreeGFXSlots
	adds r4, r0, #0
	cmp r4, #0
	bne _080AE030
	bl CleanUpGFXSlots
	adds r0, r5, #0
	bl FindFreeGFXSlots
	adds r4, r0, #0
	cmp r4, #0
	beq _080AE058
_080AE030:
	ldr r0, _080AE064 @ =gGFXSlots
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r2, r0, #0x1c
	cmp r2, #6
	beq _080AE050
	adds r0, r4, #0
	movs r1, #0
	adds r2, r5, #0
	bl ReserveGFXSlots
	movs r2, #5
_080AE050:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080AE0C8
_080AE058:
	adds r0, r4, #0
	cmp r0, #0
	beq _080AE060
	movs r0, #1
_080AE060:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080AE064: .4byte gGFXSlots
.endif

	thumb_func_start UnloadGFXSlots
UnloadGFXSlots: @ 0x080AE068
	push {r4, r5, lr}
	adds r0, #0x26
	ldrb r2, [r0]
	movs r1, #0
	strb r1, [r0]
	cmp r2, #0
	beq _080AE0C2
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _080AE0C4 @ =gUnk_02024494
	adds r3, r0, r1
	ldrb r0, [r3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #5
	bgt _080AE0C2
	cmp r0, #4
	blt _080AE0C2
	ldrb r0, [r3, #2]
	cmp r0, #0
	beq _080AE0C2
	subs r0, #1
	strb r0, [r3, #2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AE0C2
	ldrb r2, [r3, #1]
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	ble _080AE0C2
	movs r5, #0x10
	rsbs r5, r5, #0
	movs r4, #1
_080AE0AE:
	ldrb r0, [r3]
	adds r1, r5, #0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3]
	adds r3, #0xc
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bgt _080AE0AE
_080AE0C2:
	pop {r4, r5, pc}
	.align 2, 0
_080AE0C4: .4byte gUnk_02024494

	thumb_func_start sub_080AE0C8
sub_080AE0C8: @ 0x080AE0C8
	push {r4, lr}
	adds r4, r2, #0
	lsls r2, r0, #4
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r2, r2, r3
	adds r3, r1, #0
	adds r3, #0x60
	strh r2, [r3]
	adds r1, #0x26
	strb r0, [r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080AE100 @ =gUnk_02024494
	adds r1, r1, r0
	ldrb r2, [r1, #2]
	movs r0, #2
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _080AE0F6
	adds r0, r2, #1
	strb r0, [r1, #2]
_080AE0F6:
	adds r0, r1, #0
	adds r1, r4, #0
	bl SetGFXSlotStatus
	pop {r4, pc}
	.align 2, 0
_080AE100: .4byte gUnk_02024494

	thumb_func_start ReserveGFXSlots
ReserveGFXSlots: @ 0x080AE104
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r2, #0
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #2
	ldr r0, _080AE130 @ =gUnk_02024494
	adds r4, r4, r0
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #2
	adds r0, r4, #0
	bl MemClear
	strb r5, [r4, #1]
	strh r6, [r4, #4]
	adds r0, r4, #0
	movs r1, #4
	bl SetGFXSlotStatus
	pop {r4, r5, r6, pc}
	.align 2, 0
_080AE130: .4byte gUnk_02024494

	thumb_func_start SetGFXSlotStatus
SetGFXSlotStatus: @ 0x080AE134
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	movs r6, #0xf
	adds r0, r4, #0
	ands r0, r6
	ldrb r2, [r3]
	movs r5, #0x10
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldrb r2, [r3, #1]
	cmp r4, #6
	beq _080AE156
	movs r4, #3
_080AE156:
	subs r2, #1
	cmp r2, #0
	ble _080AE170
	ands r4, r6
_080AE15E:
	adds r3, #0xc
	ldrb r1, [r3]
	adds r0, r5, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r3]
	subs r2, #1
	cmp r2, #0
	bgt _080AE15E
_080AE170:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start FindFreeGFXSlots
FindFreeGFXSlots: @ 0x080AE174
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r2, #4
	ldr r0, _080AE194 @ =gGFXSlots
	adds r3, r0, #0
	adds r3, #0x30
_080AE182:
	ldrb r0, [r3, #4]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bne _080AE198
	adds r1, #1
	cmp r4, r1
	bhi _080AE19A
	b _080AE1BC
	.align 2, 0
_080AE194: .4byte gGFXSlots
_080AE198:
	movs r1, #0
_080AE19A:
	adds r3, #0xc
	adds r2, #1
	cmp r2, #0x2b
	bls _080AE182
	movs r1, #0
	movs r2, #4
	ldr r0, _080AE1C4 @ =gGFXSlots
	adds r3, r0, #0
	adds r3, #0x30
_080AE1AC:
	ldrb r0, [r3, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
.ifdef EU
	bne _080AE1C8
.else
	bhi _080AE1C8
.endif
	adds r1, #1
	cmp r4, r1
	bhi _080AE1CA
_080AE1BC:
	subs r0, r2, r1
	adds r0, #1
	b _080AE1D4
	.align 2, 0
_080AE1C4: .4byte gGFXSlots
_080AE1C8:
	movs r1, #0
_080AE1CA:
	adds r3, #0xc
	adds r2, #1
	cmp r2, #0x2b
	bls _080AE1AC
	movs r0, #0
_080AE1D4:
	pop {r4, pc}
	.align 2, 0

.ifndef EU
	thumb_func_start CleanUpGFXSlots
CleanUpGFXSlots: @ 0x080AE1D8
	push {r4, r5, lr}
	ldr r0, _080AE1E8 @ =gGFXSlots
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AE216
	movs r5, #4
	b _080AE20A
	.align 2, 0
_080AE1E8: .4byte gGFXSlots
_080AE1EC:
	bl FindFirstFreeGFXSlot
	adds r4, r0, #0
	cmp r4, r5
	bhi _080AE208
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080AE218
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080AE324
	adds r5, r4, #0
_080AE208:
	adds r5, #1
_080AE20A:
	adds r0, r5, #0
	bl FindNextOccupiedGFXSlot
	adds r5, r0, #0
	cmp r5, #0
	bne _080AE1EC
_080AE216:
	pop {r4, r5, pc}

	thumb_func_start sub_080AE218
sub_080AE218: @ 0x080AE218
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	mov r8, r1
	lsls r0, r1, #4
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r0, r1
	mov ip, r0
	mov r2, sl
	lsls r0, r2, #4
	adds r3, r0, r1
	ldr r1, _080AE30C @ =gGFXSlots
	lsls r0, r2, #1
	add r0, sl
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #5]
	lsls r0, r0, #4
	adds r7, r3, r0
	movs r4, #0
	ldr r6, _080AE310 @ =gUnk_020000C0
	mov sb, r6
	ldr r0, _080AE314 @ =gPlayerEntity
	adds r2, r0, #0
	adds r2, #0x26
	adds r5, r0, #0
_080AE254:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _080AE276
	ldrb r0, [r2]
	cmp sl, r0
	bne _080AE264
	mov r1, r8
	strb r1, [r2]
_080AE264:
	ldrh r0, [r2, #0x3a]
	cmp r3, r0
	bhi _080AE276
	cmp r7, r0
	bls _080AE276
	subs r0, r0, r3
	mov r6, ip
	adds r1, r0, r6
	strh r1, [r2, #0x3a]
_080AE276:
	adds r2, #0x88
	adds r5, #0x88
	adds r4, #1
	cmp r4, #0x4f
	bls _080AE254
	movs r0, #0
_080AE282:
	movs r4, #0
	adds r1, r0, #1
	mov r8, r1
	lsls r5, r0, #6
_080AE28A:
	lsls r0, r4, #4
	add r0, sb
	adds r2, r5, r0
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AE2B4
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080AE2B4
	ldrh r1, [r2, #0xa]
	cmp r3, r1
	bhi _080AE2B4
	cmp r7, r1
	bls _080AE2B4
	subs r0, r1, r3
	mov r6, ip
	adds r1, r0, r6
	strh r1, [r2, #0xa]
_080AE2B4:
	adds r4, #1
	cmp r4, #3
	bls _080AE28A
	mov r0, r8
	cmp r0, #0x2f
	bls _080AE282
	movs r4, #0
	ldr r0, _080AE318 @ =0xFFFFFC00
	mov sl, r0
	ldr r5, _080AE31C @ =gOAMControls
	adds r5, #0x24
	ldr r1, _080AE320 @ =0x000003FF
	mov sb, r1
	movs r2, #1
	mov r8, r2
_080AE2D2:
	ldrh r2, [r5]
	lsls r0, r2, #0x16
	lsrs r1, r0, #0x16
	cmp r3, r1
	bhi _080AE2F8
	cmp r7, r1
	bls _080AE2F8
	subs r0, r1, r3
	mov r6, ip
	adds r1, r0, r6
	mov r0, sb
	ands r1, r0
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strh r0, [r5]
	mov r2, r8
	ldr r1, _080AE31C @ =gOAMControls
	strb r2, [r1]
_080AE2F8:
	adds r5, #8
	adds r4, #1
	cmp r4, #0x7f
	bls _080AE2D2
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080AE30C: .4byte gGFXSlots
_080AE310: .4byte gUnk_020000C0
_080AE314: .4byte gPlayerEntity
_080AE318: .4byte 0xFFFFFC00
_080AE31C: .4byte gOAMControls
_080AE320: .4byte 0x000003FF

	thumb_func_start sub_080AE324
sub_080AE324: @ 0x080AE324
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r1, #0
	ldr r2, _080AE380 @ =gGFXSlots
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r5, r1, r2
	ldrb r4, [r5, #5]
	subs r4, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _080AE372
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	mov r8, r0
	adds r0, r1, #4
	adds r6, r0, r2
_080AE350:
	mov r0, r8
	adds r0, #4
	adds r1, r5, #4
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	adds r0, r6, #0
	movs r1, #0xc
	bl MemClear
	adds r6, #0xc
	adds r5, #0xc
	movs r0, #0xc
	add r8, r0
	subs r4, #1
	subs r0, #0xd
	cmp r4, r0
	bne _080AE350
_080AE372:
	ldr r1, _080AE380 @ =gGFXSlots
	movs r0, #1
	strb r0, [r1, #3]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080AE380: .4byte gGFXSlots

	thumb_func_start FindNextOccupiedGFXSlot
FindNextOccupiedGFXSlot: @ 0x080AE384
	push {lr}
	adds r2, r0, #0
	cmp r2, #0x2a
	bhi _080AE3B4
	ldr r1, _080AE3A8 @ =gGFXSlots
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r0, r1
_080AE396:
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #5
	bgt _080AE3AC
	cmp r0, #4
	blt _080AE3AC
	adds r0, r2, #0
	b _080AE3B6
	.align 2, 0
_080AE3A8: .4byte gGFXSlots
_080AE3AC:
	adds r1, #0xc
	adds r2, #1
	cmp r2, #0x2a
	bls _080AE396
_080AE3B4:
	movs r0, #0
_080AE3B6:
	pop {pc}

	thumb_func_start FindFirstFreeGFXSlot
FindFirstFreeGFXSlot: @ 0x080AE3B8
	push {lr}
	movs r1, #4
	ldr r0, _080AE3D4 @ =gGFXSlots
	adds r2, r0, #0
	adds r2, #0x30
_080AE3C2:
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bgt _080AE3D8
	cmp r0, #0
	blt _080AE3D8
	adds r0, r1, #0
	b _080AE3E2
	.align 2, 0
_080AE3D4: .4byte gGFXSlots
_080AE3D8:
	adds r2, #0xc
	adds r1, #1
	cmp r1, #0x2b
	bls _080AE3C2
	movs r0, #0
_080AE3E2:
	pop {pc}
.endif

