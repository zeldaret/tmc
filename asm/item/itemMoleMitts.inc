	thumb_func_start ItemMoleMitts
ItemMoleMitts: @ 0x08077118
	push {lr}
	ldr r3, _0807712C @ =gUnk_0811BE04
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_0807712C: .4byte gUnk_0811BE04

	thumb_func_start sub_08077130
sub_08077130: @ 0x08077130
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _0807718C @ =gPlayerState
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _080771B6
	adds r0, r4, #0
	bl sub_08077D38
	adds r0, r5, #0
	adds r0, #0x3d
	movs r6, #1
	strb r6, [r0]
	ldrb r1, [r4, #9]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #9]
	bl sub_080774A0
	adds r5, r0, #0
	cmp r5, #0
	beq _080771A8
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _080771C4
	ldr r1, _08077190 @ =0x0000050C
	adds r0, r4, #0
	bl sub_08077DF4
	movs r0, #2
	strb r0, [r4, #4]
	cmp r5, #0x56
	bne _080771C4
	ldr r2, _08077194 @ =gPlayerEntity
	ldrb r1, [r2, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _08077198
	ldrh r0, [r2, #0x32]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #6
	orrs r1, r0
	strh r1, [r2, #0x32]
	b _080771C4
	.align 2, 0
_0807718C: .4byte gPlayerState
_08077190: .4byte 0x0000050C
_08077194: .4byte gPlayerEntity
_08077198:
	ldrh r0, [r2, #0x2e]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #8
	orrs r1, r0
	strh r1, [r2, #0x2e]
	b _080771C4
_080771A8:
	movs r1, #0xa1
	lsls r1, r1, #3
	adds r0, r4, #0
	bl sub_08077DF4
	strb r6, [r4, #4]
	b _080771C4
_080771B6:
	adds r0, r4, #0
	bl sub_08077E78
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
_080771C4:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080771C8
sub_080771C8: @ 0x080771C8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl UpdateItemAnim
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080771F4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
	ldr r0, _080771F0 @ =gPlayerState
	adds r0, #0x3d
	movs r1, #0
	strb r1, [r0]
	b _080772A4
	.align 2, 0
_080771F0: .4byte gPlayerState
_080771F4:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807720E
	ldrb r0, [r4, #8]
	cmp r0, #0xff
	bne _0807720E
	ldr r0, _08077240 @ =gPlayerEntity
	ldrb r2, [r4, #0xe]
	movs r1, #0x1e
	movs r3, #1
	bl CreateObjectWithParent
_0807720E:
	ldrb r1, [r4, #0xe]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080772A4
	ldr r5, _08077240 @ =gPlayerEntity
	adds r0, r5, #0
	movs r1, #0xd
	adds r2, r4, #0
	bl sub_0800875A
	cmp r0, #0
	bne _08077248
	movs r1, #0xa4
	lsls r1, r1, #3
	adds r0, r4, #0
	bl sub_08077DF4
	movs r0, #3
	strb r0, [r4, #4]
	ldr r0, _08077244 @ =0x00000107
	bl SoundReq
	b _080772A4
	.align 2, 0
_08077240: .4byte gPlayerEntity
_08077244: .4byte 0x00000107
_08077248:
	ldrb r0, [r4, #8]
	cmp r0, #0xff
	beq _0807728C
	ldrb r3, [r4, #3]
	adds r0, r5, #0
	movs r1, #0x1f
	movs r2, #0
	bl CreateObjectWithParent
	adds r3, r0, #0
	cmp r3, #0
	beq _0807729C
	ldrb r0, [r4, #7]
	movs r2, #0
	strb r0, [r3, #0xe]
	ldrb r0, [r4, #8]
	strb r0, [r3, #0xf]
	ldrb r1, [r5, #0x14]
	movs r0, #6
	ands r0, r1
	strb r0, [r3, #0x14]
	adds r0, r5, #0
	adds r0, #0x5a
	strb r2, [r0]
	ldr r1, _08077288 @ =gUnk_0811BE14
	ldrb r0, [r4, #8]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x59
	strb r1, [r0]
	b _0807729C
	.align 2, 0
_08077288: .4byte gUnk_0811BE14
_0807728C:
	ldrb r0, [r4, #3]
	cmp r0, #0xf
	bne _0807729C
	ldrb r0, [r4, #7]
	cmp r0, #0x17
	bne _0807729C
	movs r0, #0
	strb r0, [r4, #8]
_0807729C:
	movs r0, #0x84
	lsls r0, r0, #1
	bl SoundReq
_080772A4:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080772A8
sub_080772A8: @ 0x080772A8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldrb r1, [r4, #0xe]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080772C6
	adds r0, r4, #0
	bl sub_08077F10
	cmp r0, #0
	beq _080772C6
	movs r0, #1
	strb r0, [r4, #7]
_080772C6:
	movs r0, #0x71
	bl GetInventoryValue
	cmp r0, #1
	bne _08077318
	ldrb r1, [r4, #0xe]
	movs r5, #7
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #3
	beq _08077300
	adds r0, r4, #0
	movs r1, #2
	bl sub_08077E3C
	ldr r3, _080772F8 @ =gPlayerEntity
	ldr r2, _080772FC @ =gUnk_0811BE16
	ldrb r1, [r4, #0xe]
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #1
	b _0807732E
	.align 2, 0
_080772F8: .4byte gPlayerEntity
_080772FC: .4byte gUnk_0811BE16
_08077300:
	adds r0, r4, #0
	bl UpdateItemAnim
	ldr r3, _08077310 @ =gPlayerEntity
	ldr r2, _08077314 @ =gUnk_0811BE16
	ldrb r1, [r4, #0xe]
	adds r0, r5, #0
	b _08077326
	.align 2, 0
_08077310: .4byte gPlayerEntity
_08077314: .4byte gUnk_0811BE16
_08077318:
	adds r0, r4, #0
	bl UpdateItemAnim
	ldr r3, _0807736C @ =gPlayerEntity
	ldr r2, _08077370 @ =gUnk_0811BE16
	ldrb r1, [r4, #0xe]
	movs r0, #7
_08077326:
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
_0807732E:
	strh r0, [r3, #0x24]
	ldr r5, _0807736C @ =gPlayerEntity
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	strb r0, [r5, #0x15]
	movs r1, #0x24
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _08077344
	bl sub_08079E08
_08077344:
	ldrb r1, [r4, #0xe]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807738C
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _08077374
	adds r0, r5, #0
	adds r0, #0x59
	movs r1, #1
	strb r1, [r0]
	bl sub_080774A0
	cmp r0, #0
	beq _08077374
	movs r0, #0
	strb r0, [r4, #7]
	b _0807743E
	.align 2, 0
_0807736C: .4byte gPlayerEntity
_08077370: .4byte gUnk_0811BE16
_08077374:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077E78
	ldr r0, _08077388 @ =gPlayerState
	adds r0, #0x3d
	movs r1, #0
	strb r1, [r0]
	b _0807743E
	.align 2, 0
_08077388: .4byte gPlayerState
_0807738C:
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0
	beq _0807743E
	adds r0, r5, #0
	adds r0, #0x59
	movs r6, #1
	strb r6, [r0]
	adds r0, r5, #0
	bl sub_0807B5B0
	cmp r0, #0
	beq _080773BC
	movs r0, #0x84
	lsls r0, r0, #1
	bl SoundReq
	ldrb r2, [r4, #0xe]
	adds r0, r5, #0
	movs r1, #0x1e
	movs r3, #0
	bl CreateObjectWithParent
	b _0807743E
_080773BC:
	ldr r1, _08077440 @ =0x0000051C
	adds r0, r4, #0
	bl sub_08077DF4
	adds r0, r5, #0
	movs r1, #0x1d
	movs r2, #0
	bl CreateFx
	adds r3, r0, #0
	cmp r3, #0
	beq _080773F6
	ldrb r0, [r4, #0xa]
	strb r0, [r3, #0x14]
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	subs r1, #1
	adds r3, #0x29
	movs r0, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_080773F6:
	adds r0, r5, #0
	movs r1, #0x1d
	movs r2, #0
	bl CreateFx
	adds r3, r0, #0
	cmp r3, #0
	beq _08077432
	ldrb r0, [r4, #0xa]
	strb r0, [r3, #0x14]
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	subs r1, #1
	movs r0, #0x29
	adds r0, r0, r3
	mov ip, r0
	movs r0, #7
	ands r1, r0
	mov r0, ip
	ldrb r2, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	strb r6, [r3, #0xf]
_08077432:
	movs r0, #3
	strb r0, [r4, #4]
	strb r6, [r4, #5]
	ldr r0, _08077444 @ =0x00000119
	bl SoundReq
_0807743E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08077440: .4byte 0x0000051C
_08077444: .4byte 0x00000119

	thumb_func_start sub_08077448
sub_08077448: @ 0x08077448
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r2, _08077498 @ =gPlayerEntity
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #2
	movs r1, #0x10
	eors r0, r1
	strb r0, [r2, #0x15]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x24]
	ldrb r1, [r4, #0xe]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08077474
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _08077474
	bl sub_08079E08
_08077474:
	adds r0, r4, #0
	bl UpdateItemAnim
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08077494
	ldr r0, _0807749C @ =gPlayerState
	adds r0, #0x3d
	movs r1, #0
	strb r1, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
_08077494:
	pop {r4, r5, pc}
	.align 2, 0
_08077498: .4byte gPlayerEntity
_0807749C: .4byte gPlayerState

	thumb_func_start sub_080774A0
sub_080774A0: @ 0x080774A0
	push {r4, r5, r6, r7, lr}
	ldr r3, _080774FC @ =gPlayerEntity
	movs r0, #0x2e
	ldrsh r2, [r3, r0]
	ldr r5, _08077500 @ =gUnk_0811BE1E
	ldrb r0, [r3, #0x14]
	movs r1, #6
	ands r1, r0
	adds r0, r1, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r4, _08077504 @ =gRoomControls
	ldrh r0, [r4, #6]
	subs r2, r2, r0
	asrs r6, r2, #4
	movs r2, #0x3f
	ands r6, r2
	movs r7, #0x32
	ldrsh r0, [r3, r7]
	adds r1, #1
	adds r1, r1, r5
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	ldrh r1, [r4, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r6, r0
	adds r4, r3, #0
	adds r4, #0x38
	ldrb r1, [r4]
	adds r0, r6, #0
	bl sub_080002E0
	cmp r0, #0x16
	bhi _080774F6
	cmp r0, #0xe
	bhi _08077508
_080774F6:
	movs r0, #0
	b _0807751A
	.align 2, 0
_080774FC: .4byte gPlayerEntity
_08077500: .4byte gUnk_0811BE1E
_08077504: .4byte gRoomControls
_08077508:
	adds r0, r6, #0
	ldrb r1, [r4]
	bl sub_080002C8
	cmp r0, #0x56
	bne _08077518
	movs r0, #0x56
	b _0807751A
_08077518:
	movs r0, #1
_0807751A:
	pop {r4, r5, r6, r7, pc}
