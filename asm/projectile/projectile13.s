	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Projectile13
Projectile13: @ 0x080A9E54
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x54]
	cmp r0, #0
	bne _080A9E60
	ldr r0, [r5, #0x50]
_080A9E60:
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A9E78
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080A9E78
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
_080A9E78:
	ldr r4, _080A9E90 @ =gUnk_08129C7C
	adds r0, r5, #0
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A9E90: .4byte gUnk_08129C7C

	thumb_func_start sub_080A9E94
sub_080A9E94: @ 0x080A9E94
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #2
	bhi _080A9EA4
	adds r0, r4, #0
	bl sub_080AA1D8
_080A9EA4:
	ldr r0, _080A9EB8 @ =gUnk_08129C90
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080A9EB8: .4byte gUnk_08129C90

	thumb_func_start sub_080A9EBC
sub_080A9EBC: @ 0x080A9EBC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A9F4E
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	beq _080A9EF2
	cmp r0, #4
	bne _080A9F18
	movs r0, #0
	strb r0, [r4, #0xf]
	subs r0, #2
	bl ModHealth
	adds r0, r4, #0
	bl sub_080AF090
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r5, r4, #0
	adds r5, #0x42
	b _080A9F4A
_080A9EF2:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	adds r5, r4, #0
	adds r5, #0x42
	cmp r0, #0
	beq _080A9F4A
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #2
	strb r0, [r1]
	movs r0, #0xff
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_080AA270
	movs r0, #0x20
	strb r0, [r4, #0xf]
	b _080A9F4A
_080A9F18:
	ldr r3, [r4, #0x50]
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x3d
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x42
	ldrb r1, [r2]
	adds r0, r3, #0
	adds r0, #0x42
	strb r1, [r0]
	ldrb r0, [r4, #0xc]
	adds r5, r2, #0
	cmp r0, #1
	bne _080A9F4A
	adds r0, r4, #0
	bl sub_080AA320
_080A9F4A:
	movs r0, #0
	strb r0, [r5]
_080A9F4E:
	pop {r4, r5, pc}

	thumb_func_start sub_080A9F50
sub_080A9F50: @ 0x080A9F50
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x80
	movs r2, #0
	strh r1, [r0]
	movs r0, #0xff
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x82
	strb r2, [r0]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r4, #0x50]
	adds r0, r4, #0
	bl sub_0806FAD8
	adds r0, r4, #0
	bl sub_080AA270
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A9F90
sub_080A9F90: @ 0x080A9F90
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x80
	ldrh r0, [r1]
	cmp r0, #0
	beq _080A9FA4
	subs r0, #1
	strh r0, [r1]
	b _080A9FC8
_080A9FA4:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A9FB8
	adds r0, r4, #0
	bl sub_080AA270
	b _080A9FC8
_080A9FB8:
	adds r0, r4, #0
	bl sub_080AA2E0
	cmp r0, #0
	beq _080A9FC8
	adds r0, r4, #0
	bl sub_080AA320
_080A9FC8:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, pc}

	thumb_func_start sub_080A9FD0
sub_080A9FD0: @ 0x080A9FD0
	push {r4, r5, lr}
	adds r5, r0, #0
	bl UpdateAnimationSingleFrame
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A9FF2
	movs r0, #0xbf
	ands r0, r1
	strb r0, [r2]
	ldr r0, _080AA038 @ =0x0000015D
	bl EnqueueSFX
_080A9FF2:
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	ldr r2, _080AA03C @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r4, #0x32
	ldrsh r0, [r5, r4]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r4, r5, #0
	adds r4, #0x78
	strh r1, [r4]
	ldrh r0, [r4]
	adds r5, #0x38
	ldrb r1, [r5]
	bl GetTileType
	movs r1, #0x80
	lsls r1, r1, #7
	cmp r0, r1
	bne _080AA034
	ldr r0, _080AA040 @ =0x00004005
	ldrh r1, [r4]
	ldrb r2, [r5]
	bl SetTile
_080AA034:
	pop {r4, r5, pc}
	.align 2, 0
_080AA038: .4byte 0x0000015D
_080AA03C: .4byte gRoomControls
_080AA040: .4byte 0x00004005

	thumb_func_start sub_080AA044
sub_080AA044: @ 0x080AA044
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x54]
	cmp r5, #0
	bne _080AA052
	bl DeleteThisEntity
_080AA052:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _080AA05E
	bl DeleteThisEntity
	b _080AA0A2
_080AA05E:
	ldrh r0, [r5, #0x12]
	ldrb r1, [r5, #0x1e]
	bl GetSpriteSubEntryOffsetDataPointer
	adds r3, r0, #0
	ldrb r1, [r5, #0x14]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AA08C
	movs r2, #0
	ldrsb r2, [r3, r2]
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl PositionRelative
	b _080AA0A2
_080AA08C:
	movs r2, #0
	ldrsb r2, [r3, r2]
	lsls r2, r2, #0x10
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl PositionRelative
_080AA0A2:
	adds r0, r5, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AA108
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _080AA0B8
	subs r0, #1
	strb r0, [r4, #0xf]
	b _080AA108
_080AA0B8:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080AA108
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #3
	strb r0, [r1]
	movs r0, #0x40
	strb r0, [r4, #0xf]
	ldrb r0, [r5, #0x14]
	lsls r1, r0, #2
	strb r1, [r4, #0x15]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	strb r0, [r4, #0x14]
	ldr r0, _080AA10C @ =gUnk_080FD150
	str r0, [r4, #0x48]
	bl CheckIsDungeon
	cmp r0, #0
	beq _080AA100
	ldrb r0, [r4, #0x1b]
	movs r1, #0x3f
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4, #0x1b]
_080AA100:
	adds r0, r4, #0
	movs r1, #0
	bl sub_080AA3E0
_080AA108:
	pop {r4, r5, pc}
	.align 2, 0
_080AA10C: .4byte gUnk_080FD150

	thumb_func_start sub_080AA110
sub_080AA110: @ 0x080AA110
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldr r7, [r6, #0x54]
	cmp r7, #0
	beq _080AA1B6
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _080AA128
	str r0, [r6, #0x54]
_080AA128:
	ldrb r0, [r6, #0xf]
	adds r5, r0, #0
	cmp r5, #0
	beq _080AA136
	subs r0, #1
	strb r0, [r6, #0xf]
	b _080AA1C4
_080AA136:
	adds r0, r6, #0
	bl sub_080AA374
	cmp r0, #0
	beq _080AA1C4
	adds r0, r7, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AA14E
	bl DeleteThisEntity
_080AA14E:
	movs r0, #0xf2
	bl EnqueueSFX
	movs r4, #1
	strb r4, [r6, #0xc]
	movs r0, #0xff
	strb r0, [r6, #0x14]
	adds r0, r6, #0
	adds r0, #0x82
	strb r5, [r0]
	strb r5, [r6, #0xe]
	subs r0, #2
	movs r1, #0
	mov sb, r1
	movs r1, #0x20
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	ldrb r1, [r6, #0x1b]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r6, #0x1b]
	ldr r0, [r6, #0x54]
	str r0, [r6, #0x50]
	str r5, [r6, #0x54]
	adds r0, r6, #0
	bl sub_080AA270
	ldr r7, [r6, #0x50]
	strb r4, [r7, #0xc]
	ldrb r0, [r7, #0x14]
	lsls r0, r0, #2
	strb r0, [r7, #0x15]
	strh r5, [r7, #0x24]
	adds r0, r7, #0
	adds r0, #0x82
	strb r4, [r0]
	mov r0, sb
	strb r0, [r7, #0xe]
	movs r0, #0x78
	strb r0, [r7, #0xf]
	adds r0, r7, #0
	adds r0, #0x80
	mov r1, r8
	strh r1, [r0]
	adds r0, r7, #0
	movs r1, #1
	bl sub_080AA3E0
	b _080AA1C4
_080AA1B6:
	adds r0, r6, #0
	bl sub_080040A8
	cmp r0, #0
	bne _080AA1C4
	bl DeleteThisEntity
_080AA1C4:
	adds r0, r6, #0
	bl sub_0806F69C
	adds r0, r6, #0
	bl UpdateAnimationSingleFrame
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080AA1D8
sub_080AA1D8: @ 0x080AA1D8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x50]
	cmp r4, #0
	beq _080AA268
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _080AA1EC
	bl DeleteThisEntity
_080AA1EC:
	ldrb r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080AA26C
	ldrh r0, [r4, #0x12]
	ldrb r1, [r4, #0x1e]
	bl GetSpriteSubEntryOffsetDataPointer
	adds r3, r0, #0
	ldrb r1, [r4, #0x14]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AA224
	movs r2, #0
	ldrsb r2, [r3, r2]
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl PositionRelative
	b _080AA23A
_080AA224:
	movs r2, #0
	ldrsb r2, [r3, r2]
	lsls r2, r2, #0x10
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl PositionRelative
_080AA23A:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AA256
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080AA26C
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	b _080AA26C
_080AA256:
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AA26C
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	b _080AA26C
_080AA268:
	bl DeleteThisEntity
_080AA26C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080AA270
sub_080AA270: @ 0x080AA270
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x50]
	bl Random
	ldr r1, _080AA2A4 @ =gUnk_08129CA4
	movs r6, #7
	ands r0, r6
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #0xf]
	ldrb r4, [r4, #0x14]
	ldrb r0, [r5, #0x14]
	cmp r0, #0xff
	bne _080AA2AC
	strb r4, [r5, #0x14]
	ldr r0, _080AA2A8 @ =gUnk_08129CF4
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r5, #0x48]
	adds r0, r5, #0
	movs r1, #0
	bl sub_080AA3E0
	b _080AA2D6
	.align 2, 0
_080AA2A4: .4byte gUnk_08129CA4
_080AA2A8: .4byte gUnk_08129CF4
_080AA2AC:
	bl Random
	ldr r1, _080AA2D8 @ =gUnk_08129CAC
	ands r0, r6
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r4, r0, r4
	ands r4, r6
	ldrb r0, [r5, #0x14]
	cmp r4, r0
	beq _080AA2D6
	strb r4, [r5, #0x14]
	ldr r0, _080AA2DC @ =gUnk_08129CF4
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r5, #0x48]
	adds r0, r5, #0
	movs r1, #0
	bl sub_080AA3E0
_080AA2D6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080AA2D8: .4byte gUnk_08129CAC
_080AA2DC: .4byte gUnk_08129CF4

	thumb_func_start sub_080AA2E0
sub_080AA2E0: @ 0x080AA2E0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0
	bl sub_08049DF4
	adds r4, r0, #0
	cmp r4, #0
	beq _080AA31C
	adds r0, r5, #0
	adds r1, r4, #0
	bl GetFacingDirection
	ldrb r1, [r5, #0x14]
	lsls r1, r1, #2
	adds r0, #4
	movs r2, #0x1c
	ands r0, r2
	adds r1, #4
	ands r1, r2
	cmp r0, r1
	bne _080AA31C
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x40
	bl sub_08049F1C
	cmp r0, #0
	beq _080AA31C
	movs r0, #1
	b _080AA31E
_080AA31C:
	movs r0, #0
_080AA31E:
	pop {r4, r5, pc}

	thumb_func_start sub_080AA320
sub_080AA320: @ 0x080AA320
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x50]
	movs r2, #0
	movs r1, #2
	strb r1, [r5, #0xc]
	adds r3, r5, #0
	adds r3, #0x82
	movs r0, #1
	strb r0, [r3]
	strb r2, [r5, #0xf]
	strb r1, [r4, #0xc]
	movs r0, #0x30
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #0x50
	strh r0, [r1]
	strh r2, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08049F84
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x1c
	ands r0, r1
	lsrs r1, r0, #2
	strb r1, [r5, #0x14]
	movs r1, #0x18
	ands r0, r1
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #1
	bl sub_080AA3E0
	adds r0, r5, #0
	bl sub_080AA1D8
	pop {r4, r5, pc}

	thumb_func_start sub_080AA374
sub_080AA374: @ 0x080AA374
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r5, [r6, #0x54]
	cmp r5, #0
	beq _080AA3D8
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _080AA3D8
	ldrb r4, [r5, #0x14]
	ldr r0, _080AA3CC @ =gUnk_08129D14
	adds r4, r4, r0
	movs r2, #0
	ldrsb r2, [r4, r2]
	movs r3, #1
	ldrsb r3, [r4, r3]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0806F824
	adds r7, r0, #0
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r1, r1, r0
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	movs r0, #1
	ldrsb r0, [r4, r0]
	adds r2, r2, r0
	adds r0, r6, #0
	movs r3, #8
	bl sub_0806FCB8
	cmp r0, #0
	beq _080AA3D0
	movs r0, #1
	mov r8, r0
	b _080AA3D8
	.align 2, 0
_080AA3CC: .4byte gUnk_08129D14
_080AA3D0:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08004596
_080AA3D8:
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080AA3E0
sub_080AA3E0: @ 0x080AA3E0
	push {lr}
	adds r3, r0, #0
	ldrb r2, [r3, #0x14]
	adds r0, #0x82
	ldrb r0, [r0]
	lsls r0, r0, #3
	orrs r2, r0
	cmp r1, #0
	beq _080AA3F4
	lsrs r2, r2, #1
_080AA3F4:
	adds r0, r3, #0
	adds r1, r2, #0
	bl InitAnimationForceUpdate
	pop {pc}
	.align 2, 0
