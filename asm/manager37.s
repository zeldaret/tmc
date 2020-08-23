	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805DE38
sub_0805DE38: @ 0x0805DE38
	push {lr}
	ldr r2, _0805DE4C @ =gUnk_08108DBC
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805DE4C: .4byte gUnk_08108DBC

	thumb_func_start sub_0805DE50
sub_0805DE50: @ 0x0805DE50
	push {lr}
	ldr r2, _0805DE64 @ =gUnk_08108DC4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805DE64: .4byte gUnk_08108DC4

	thumb_func_start sub_0805DE68
sub_0805DE68: @ 0x0805DE68
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
	ldr r0, _0805DEB0 @ =gUnk_02002A40
	movs r1, #0x93
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, _0805DEB4 @ =0x00001194
	str r1, [r0]
	pop {r4, pc}
	.align 2, 0
_0805DEAC: .4byte gScreenTransition
_0805DEB0: .4byte gUnk_02002A40
_0805DEB4: .4byte 0x00001194

	thumb_func_start sub_0805DEB8
sub_0805DEB8: @ 0x0805DEB8
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r5, _0805DF44 @ =gPlayerEntity
	movs r0, #0x2e
	ldrsh r2, [r5, r0]
	subs r2, #0x88
	ldr r4, _0805DF48 @ =gRoomControls
	ldrh r0, [r4, #6]
	subs r2, r2, r0
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	subs r0, #0x40
	ldrh r1, [r4, #8]
	subs r0, r0, r1
	adds r1, r2, #0
	muls r1, r2, r1
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	movs r0, #0x90
	lsls r0, r0, #4
	cmp r1, r0
	bgt _0805DF42
	movs r0, #0
	movs r1, #2
	strb r1, [r3, #0xc]
	strb r0, [r3, #0xd]
	movs r0, #0x78
	strb r0, [r3, #0xe]
	movs r0, #2
	bl sub_08078A90
	bl sub_08078B48
	movs r0, #0x64
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0805DF1A
	ldrh r0, [r4, #6]
	adds r0, #0x88
	strh r0, [r2, #0x2e]
	ldrh r0, [r4, #8]
	adds r0, #0x48
	strh r0, [r2, #0x32]
_0805DF1A:
	movs r2, #0x10
	rsbs r2, r2, #0
	adds r0, r5, #0
	movs r1, #8
	bl sub_080A2CFC
	adds r2, r0, #0
	cmp r2, #0
	beq _0805DF3C
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
_0805DF3C:
	movs r0, #0x32
	bl PlaySFX
_0805DF42:
	pop {r4, r5, pc}
	.align 2, 0
_0805DF44: .4byte gPlayerEntity
_0805DF48: .4byte gRoomControls

	thumb_func_start sub_0805DF4C
sub_0805DF4C: @ 0x0805DF4C
	push {lr}
	adds r1, r0, #0
	ldr r2, _0805DF70 @ =gPlayerEntity
	movs r0, #0
	strb r0, [r2, #0x14]
	movs r3, #0x36
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _0805DF78
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	ldr r1, _0805DF74 @ =gRoomControls
	ldrh r1, [r1, #8]
	adds r1, #0x48
	cmp r0, r1
	bge _0805DF92
	strh r1, [r2, #0x32]
	b _0805DF92
	.align 2, 0
_0805DF70: .4byte gPlayerEntity
_0805DF74: .4byte gRoomControls
_0805DF78:
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805DF92
	movs r0, #3
	strb r0, [r1, #0xc]
	movs r0, #0x1e
	strb r0, [r1, #0xe]
	ldr r0, _0805DF94 @ =0x0000164F
	bl TextboxNoOverlapFollow
_0805DF92:
	pop {pc}
	.align 2, 0
_0805DF94: .4byte 0x0000164F

	thumb_func_start sub_0805DF98
sub_0805DF98: @ 0x0805DF98
	push {lr}
	adds r2, r0, #0
	ldr r0, _0805DFB4 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0805DFCA
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	beq _0805DFB8
	subs r0, #1
	strb r0, [r2, #0xe]
	b _0805DFCA
	.align 2, 0
_0805DFB4: .4byte gTextBox
_0805DFB8:
	movs r0, #4
	strb r0, [r2, #0xc]
	movs r0, #7
	movs r1, #4
	bl DoFade
	movs r0, #0xf6
	bl PlaySFX
_0805DFCA:
	pop {pc}

	thumb_func_start sub_0805DFCC
sub_0805DFCC: @ 0x0805DFCC
	push {lr}
	ldr r0, _0805DFE4 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805DFE0
	movs r0, #0x1c
	bl ClearGlobalFlag
	bl sub_0805E094
_0805DFE0:
	pop {pc}
	.align 2, 0
_0805DFE4: .4byte gFadeControl

	thumb_func_start sub_0805DFE8
sub_0805DFE8: @ 0x0805DFE8
	push {lr}
	ldr r2, _0805DFFC @ =gUnk_08108DD8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805DFFC: .4byte gUnk_08108DD8

	thumb_func_start sub_0805E000
sub_0805E000: @ 0x0805E000
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x51
	movs r1, #0
	bl CreateEnemy
	adds r4, r0, #0
	cmp r4, #0
	beq _0805E062
	ldr r1, _0805E064 @ =gRoomControls
	ldrh r0, [r1, #6]
	adds r0, #0xb0
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #8]
	adds r0, #0x48
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	adds r0, #0x38
	movs r5, #1
	strb r5, [r0]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	ldr r0, _0805E068 @ =gScreenTransition
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0805E040
	bl DeleteThisEntity
_0805E040:
	str r4, [r6, #0x18]
	strb r5, [r6, #0xc]
	movs r0, #3
	bl sub_08078A90
	ldr r0, _0805E06C @ =gArea
	ldr r1, _0805E070 @ =0x00000864
	adds r0, r0, r1
	ldr r1, _0805E074 @ =0x80010000
	str r1, [r0]
	movs r0, #6
	movs r1, #4
	bl DoFade
	movs r0, #0xf7
	bl PlaySFX
_0805E062:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0805E064: .4byte gRoomControls
_0805E068: .4byte gScreenTransition
_0805E06C: .4byte gArea
_0805E070: .4byte 0x00000864
_0805E074: .4byte 0x80010000

	thumb_func_start sub_0805E078
sub_0805E078: @ 0x0805E078
	push {lr}
	adds r1, r0, #0
	ldr r0, _0805E090 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805E08E
	ldr r1, [r1, #0x18]
	movs r0, #1
	strb r0, [r1, #0xd]
	bl DeleteThisEntity
_0805E08E:
	pop {pc}
	.align 2, 0
_0805E090: .4byte gFadeControl

	thumb_func_start sub_0805E094
sub_0805E094: @ 0x0805E094
	push {lr}
	bl sub_0805E5A8
	ldr r0, _0805E0A4 @ =gUnk_0813AC34
	movs r1, #7
	bl sub_0808091C
	pop {pc}
	.align 2, 0
_0805E0A4: .4byte gUnk_0813AC34
