	.syntax unified
.ifdef JP
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x7b
	bl CheckLocalFlag
	cmp r0, #0
	bne _0805DCCE
	bl DeleteThisEntity
_0805DCCE:
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r2, _0805DCF4 @ =0x030010A0
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r1, r2, #0
	adds r1, #0x39
	movs r0, #0xf
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x3a
	movs r1, #0x20
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	pop {r4, pc}
	.align 2, 0
_0805DCF4: .4byte gScreenTransition
.else
.ifdef EU
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x7b
	bl CheckLocalFlag
	cmp r0, #0
	bne _0805D916
	bl DeleteThisEntity
_0805D916:
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r2, _0805D93C @ =gScreenTransition
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r1, r2, #0
	adds r1, #0x39
	movs r0, #0xf
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x3a
	movs r1, #0x20
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	pop {r4, pc}
	.align 2, 0
_0805D93C: .4byte gScreenTransition
.else
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x7b
	bl CheckLocalFlag
	cmp r0, #0
	bne _0805DE7A
	bl DeleteThisEntity
_0805DE7A:
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r2, _0805DEAC @ =gScreenTransition
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r1, r2, #0
	adds r1, #0x39
	movs r0, #0xf
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x3a
	movs r1, #0x20
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	ldr r0, _0805DEB0 @ =gSave
	movs r1, #0x93
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, _0805DEB4 @ =0x00001194
	str r1, [r0]
	pop {r4, pc}
	.align 2, 0
_0805DEAC: .4byte gScreenTransition
_0805DEB0: .4byte gSave
_0805DEB4: .4byte 0x00001194
.endif
.endif
	.syntax divided
