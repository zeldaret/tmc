	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08076DF4
sub_08076DF4: @ 0x08076DF4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r0, _08076E48 @ =gPlayerEntity
	mov r8, r0
	bl sub_0807A894
	cmp r0, #0x29
	beq _08076E50
	ldr r6, _08076E4C @ =gPlayerState
	ldrb r0, [r6, #0x12]
	cmp r0, #0x12
	beq _08076E50
	cmp r0, #0x13
	beq _08076E50
	ldrb r5, [r6, #2]
	cmp r5, #0
	bne _08076E50
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08077D38
	strb r5, [r4, #7]
	mov r1, r8
	ldrb r0, [r1, #0x14]
	strb r0, [r4, #0xa]
	ldrb r1, [r4, #9]
	movs r0, #0x80
	orrs r0, r1
	adds r0, #1
	strb r0, [r4, #9]
	movs r0, #1
	strb r0, [r6, #0x1d]
	mov r1, r8
	str r5, [r1, #0x74]
	strb r0, [r6, #0x1c]
	adds r0, r4, #0
	bl sub_08077BB8
	b _08076E58
	.align 2, 0
_08076E48: .4byte gPlayerEntity
_08076E4C: .4byte gPlayerState
_08076E50:
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08077E78
_08076E58:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08076E60
sub_08076E60: @ 0x08076E60
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r5, _08076EB4 @ =gPlayerState
	ldrb r1, [r5, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08076E7A
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077E78
_08076E7A:
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08076EC0
	movs r0, #2
	strb r0, [r4, #4]
	ldr r1, _08076EB8 @ =0x00000504
	adds r0, r4, #0
	bl sub_08077DF4
	movs r1, #8
	asrs r1, r6
	ldrb r0, [r5, #0xa]
	bics r0, r1
	strb r0, [r5, #0xa]
	movs r0, #0x10
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl CreatePlayerItem
	adds r1, r0, #0
	cmp r1, #0
	beq _08076EC6
	ldr r0, _08076EBC @ =gPlayerEntity
	str r0, [r1, #0x50]
	b _08076EC6
	.align 2, 0
_08076EB4: .4byte gPlayerState
_08076EB8: .4byte 0x00000504
_08076EBC: .4byte gPlayerEntity
_08076EC0:
	adds r0, r4, #0
	bl UpdateItemAnim
_08076EC6:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08076EC8
sub_08076EC8: @ 0x08076EC8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r5, _08076EE4 @ =gPlayerState
	ldrb r1, [r5, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08076EE8
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077E78
	b _08076F60
	.align 2, 0
_08076EE4: .4byte gPlayerState
_08076EE8:
	adds r0, r4, #0
	bl sub_08077EFC
	cmp r0, #0
	beq _08076F50
	ldrb r0, [r4, #7]
	cmp r0, #0xef
	bls _08076EFC
	movs r0, #3
	b _08076F0E
_08076EFC:
	adds r0, #1
	strb r0, [r4, #7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x77
	bls _08076F0C
	movs r0, #2
	b _08076F0E
_08076F0C:
	movs r0, #1
_08076F0E:
	strb r0, [r5, #0x1d]
	ldr r0, _08076F1C @ =gPlayerEntity
	ldrb r0, [r0, #0xd]
	cmp r0, #0x1b
	bne _08076F24
	ldr r1, _08076F20 @ =0x00000524
	b _08076F36
	.align 2, 0
_08076F1C: .4byte gPlayerEntity
_08076F20: .4byte 0x00000524
_08076F24:
	ldr r0, _08076F44 @ =gPlayerState
	ldrb r1, [r0, #0xd]
	movs r0, #0x80
	ands r0, r1
	movs r1, #0xa3
	lsls r1, r1, #3
	cmp r0, #0
	beq _08076F36
	subs r1, #0x14
_08076F36:
	ldrh r0, [r4, #0x10]
	cmp r1, r0
	beq _08076F48
	adds r0, r4, #0
	bl sub_08077DF4
	b _08076F60
	.align 2, 0
_08076F44: .4byte gPlayerState
_08076F48:
	adds r0, r4, #0
	bl UpdateItemAnim
	b _08076F60
_08076F50:
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	movs r0, #8
	asrs r0, r6
	ldrb r1, [r5, #0xa]
	orrs r0, r1
	strb r0, [r5, #0xa]
_08076F60:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08076F64
sub_08076F64: @ 0x08076F64
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r1, _08076F84 @ =gPlayerState
	ldrb r0, [r1, #0x1c]
	movs r2, #0xf
	ands r2, r0
	adds r3, r1, #0
	cmp r2, #7
	bls _08076F7A
	b _080770EC
_08076F7A:
	lsls r0, r2, #2
	ldr r1, _08076F88 @ =_08076F8C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08076F84: .4byte gPlayerState
_08076F88: .4byte _08076F8C
_08076F8C: @ jump table
	.4byte _08077100 @ case 0
	.4byte _080770EC @ case 1
	.4byte _080770EC @ case 2
	.4byte _0807704C @ case 3
	.4byte _08077052 @ case 4
	.4byte _08076FAC @ case 5
	.4byte _080770B8 @ case 6
	.4byte _080770D0 @ case 7
_08076FAC:
	ldrb r1, [r4, #0xe]
	movs r5, #0x80
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0807700E
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _08077004
	movs r0, #0
	strb r0, [r4, #8]
	strb r0, [r4, #7]
	movs r1, #1
	strb r1, [r3, #0x1d]
	ldr r5, _08076FFC @ =gPlayerEntity
	str r0, [r5, #0x74]
	strb r1, [r3, #0x1c]
	movs r1, #8
	asrs r1, r6
	ldrb r0, [r3, #0xa]
	bics r0, r1
	strb r0, [r3, #0xa]
	movs r0, #2
	strb r0, [r4, #4]
	ldr r1, _08077000 @ =0x00000504
	adds r0, r4, #0
	bl sub_08077DF4
	movs r0, #0x10
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl CreatePlayerItem
	cmp r0, #0
	bne _08076FF6
	b _08077110
_08076FF6:
	str r5, [r0, #0x50]
	b _08077110
	.align 2, 0
_08076FFC: .4byte gPlayerEntity
_08077000: .4byte 0x00000504
_08077004:
	movs r0, #6
	strb r0, [r3, #0x1c]
	movs r1, #0xa2
	lsls r1, r1, #3
	b _080770F2
_0807700E:
	adds r0, r4, #0
	bl sub_08077EFC
	cmp r0, #0
	beq _0807701C
	movs r0, #1
	strb r0, [r4, #8]
_0807701C:
	adds r0, r4, #0
	bl UpdateItemAnim
	ldr r0, _08077044 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08077110
	ldr r0, _08077048 @ =gPlayerEntity
	ldrb r1, [r0, #0x14]
	lsls r1, r1, #2
	movs r2, #0x10
	eors r1, r2
	strb r1, [r0, #0x15]
	strh r5, [r0, #0x24]
	bl sub_08079E08
	b _08077110
	.align 2, 0
_08077044: .4byte gPlayerState
_08077048: .4byte gPlayerEntity
_0807704C:
	ldr r1, _080770B0 @ =gPlayerState
	movs r0, #4
	strb r0, [r1, #0x1c]
_08077052:
	adds r0, r4, #0
	bl sub_08077EFC
	cmp r0, #0
	beq _08077060
	movs r0, #1
	strb r0, [r4, #8]
_08077060:
	adds r0, r4, #0
	bl UpdateItemAnim
	ldrb r1, [r4, #0xe]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0807708C
	ldr r1, _080770B0 @ =gPlayerState
	movs r2, #0
	movs r0, #5
	strb r0, [r1, #0x1c]
	ldr r0, _080770B4 @ =gPlayerEntity
	str r2, [r0, #0x70]
	ldrb r0, [r1, #0x1d]
	cmp r0, #0
	beq _0807708C
	movs r0, #0x11
	movs r1, #0
	movs r3, #0
	bl CreatePlayerItem
_0807708C:
	ldr r0, _080770B0 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08077110
	ldr r2, _080770B4 @ =gPlayerEntity
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #2
	movs r1, #0x10
	eors r0, r1
	strb r0, [r2, #0x15]
	movs r0, #0x80
	strh r0, [r2, #0x24]
	bl sub_08079E08
	b _08077110
	.align 2, 0
_080770B0: .4byte gPlayerState
_080770B4: .4byte gPlayerEntity
_080770B8:
	adds r0, r4, #0
	bl UpdateItemAnim
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08077110
	ldr r3, _080770CC @ =gPlayerState
	b _08077100
	.align 2, 0
_080770CC: .4byte gPlayerState
_080770D0:
	ldr r1, _080770E4 @ =0x00000514
	adds r0, r4, #0
	bl sub_08077DF4
	ldr r1, _080770E8 @ =gPlayerState
	movs r2, #0
	movs r0, #3
	strb r0, [r1, #0x1c]
	strb r2, [r1, #0x1d]
	b _08077110
	.align 2, 0
_080770E4: .4byte 0x00000514
_080770E8: .4byte gPlayerState
_080770EC:
	movs r0, #3
	strb r0, [r3, #0x1c]
	ldr r1, _080770FC @ =0x00000514
_080770F2:
	adds r0, r4, #0
	bl sub_08077DF4
	b _08077110
	.align 2, 0
_080770FC: .4byte 0x00000514
_08077100:
	movs r1, #0
	strb r1, [r3, #0x1c]
	ldr r0, _08077114 @ =gPlayerEntity
	str r1, [r0, #0x70]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077E78
_08077110:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08077114: .4byte gPlayerEntity

	thumb_func_start MoleMitts
MoleMitts: @ 0x08077118
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
	bl PlaySFX
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
	bl PlaySFX
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
	bl PlaySFX
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
	bl PlaySFX
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

	thumb_func_start JarEmpty
JarEmpty: @ 0x0807751C
	push {lr}
	ldr r3, _08077530 @ =gUnk_0811BE28
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_08077530: .4byte gUnk_0811BE28

	thumb_func_start sub_08077534
sub_08077534: @ 0x08077534
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08077D38
	ldr r0, _08077570 @ =gPlayerEntity
	bl sub_0806F948
	adds r0, r4, #0
	bl sub_08077BB8
	ldrb r1, [r4, #9]
	movs r0, #0xf
	orrs r0, r1
	strb r0, [r4, #9]
	ldrb r1, [r4, #1]
	ldr r0, _08077574 @ =gUnk_02002A40
	adds r0, r0, r1
	adds r0, #0x9a
	ldrb r0, [r0]
	strb r0, [r4, #7]
	ldrb r0, [r4, #7]
	subs r0, #0x20
	cmp r0, #0x11
	bhi _080775F8
	lsls r0, r0, #2
	ldr r1, _08077578 @ =_0807757C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08077570: .4byte gPlayerEntity
_08077574: .4byte gUnk_02002A40
_08077578: .4byte _0807757C
_0807757C: @ jump table
	.4byte _080775C4 @ case 0
	.4byte _080775D4 @ case 1
	.4byte _080775D4 @ case 2
	.4byte _080775D4 @ case 3
	.4byte _080775D4 @ case 4
	.4byte _080775D4 @ case 5
	.4byte _080775F8 @ case 6
	.4byte _080775F8 @ case 7
	.4byte _080775F8 @ case 8
	.4byte _080775D4 @ case 9
	.4byte _080775D4 @ case 10
	.4byte _080775D4 @ case 11
	.4byte _080775D4 @ case 12
	.4byte _080775D4 @ case 13
	.4byte _080775D4 @ case 14
	.4byte _080775F8 @ case 15
	.4byte _080775F8 @ case 16
	.4byte _080775F8 @ case 17
_080775C4:
	ldr r1, _080775D0 @ =0x00000614
	adds r0, r4, #0
	bl sub_08077DF4
	b _08077610
	.align 2, 0
_080775D0: .4byte 0x00000614
_080775D4:
	movs r0, #3
	strb r0, [r4, #4]
	ldr r1, _080775F0 @ =gPlayerEntity
	movs r0, #4
	strb r0, [r1, #0x14]
	ldrb r2, [r1, #0x18]
	subs r0, #0x45
	ands r0, r2
	strb r0, [r1, #0x18]
	ldr r1, _080775F4 @ =0x000002DF
	adds r0, r4, #0
	bl sub_08077DF4
	b _08077606
	.align 2, 0
_080775F0: .4byte gPlayerEntity
_080775F4: .4byte 0x000002DF
_080775F8:
	movs r0, #3
	strb r0, [r4, #4]
	movs r1, #0xc2
	lsls r1, r1, #3
	adds r0, r4, #0
	bl sub_08077DF4
_08077606:
	ldr r2, _08077614 @ =gPlayerEntity
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
_08077610:
	pop {r4, pc}
	.align 2, 0
_08077614: .4byte gPlayerEntity

	thumb_func_start sub_08077618
sub_08077618: @ 0x08077618
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08077638
	movs r1, #0xc3
	lsls r1, r1, #3
	adds r0, r4, #0
	bl sub_08077DF4
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	b _0807763E
_08077638:
	adds r0, r4, #0
	bl UpdateItemAnim
_0807763E:
	pop {r4, pc}

	thumb_func_start sub_08077640
sub_08077640: @ 0x08077640
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl UpdateItemAnim
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08077666
	ldr r2, _08077668 @ =gPlayerEntity
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
_08077666:
	pop {r4, r5, pc}
	.align 2, 0
_08077668: .4byte gPlayerEntity

	thumb_func_start sub_0807766C
sub_0807766C: @ 0x0807766C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl UpdateItemAnim
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08077692
	ldr r2, _08077694 @ =gPlayerEntity
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
_08077692:
	pop {r4, r5, pc}
	.align 2, 0
_08077694: .4byte gPlayerEntity

	thumb_func_start sub_08077698
sub_08077698: @ 0x08077698
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _0807771C @ =gPlayerState
	ldrb r1, [r2, #3]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2, #3]
	ldrb r1, [r2, #4]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2, #4]
	ldrb r0, [r2, #7]
	ldrb r3, [r2, #2]
	orrs r0, r3
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08077700
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	bne _08077700
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _08077700
	adds r0, r4, #0
	bl sub_08077758
	cmp r0, #0
	beq _08077700
	bl sub_080777A0
	cmp r0, #0
	bne _08077700
	ldr r4, _08077720 @ =gUnk_02002A40
	adds r0, r4, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	movs r1, #1
	movs r2, #0
	bl sub_08077880
	adds r4, #0xb5
	ldrb r0, [r4]
	movs r1, #2
	movs r2, #0
	bl sub_08077880
	bl sub_080778CC
_08077700:
	movs r5, #0
	ldr r4, _08077724 @ =gUnk_03000B80
_08077704:
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _08077712
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080752E8
_08077712:
	adds r4, #0x1c
	adds r5, #1
	cmp r5, #3
	bls _08077704
	pop {r4, r5, pc}
	.align 2, 0
_0807771C: .4byte gPlayerState
_08077720: .4byte gUnk_02002A40
_08077724: .4byte gUnk_03000B80

	thumb_func_start sub_08077728
sub_08077728: @ 0x08077728
	push {lr}
	cmp r0, #0
	bne _08077744
	ldr r0, _08077740 @ =gUnk_02002A40
	adds r0, #0xb4
	ldrb r0, [r0]
	movs r1, #1
	movs r2, #1
	bl sub_08077880
	b _08077752
	.align 2, 0
_08077740: .4byte gUnk_02002A40
_08077744:
	ldr r0, _08077754 @ =gUnk_02002A40
	adds r0, #0xb5
	ldrb r0, [r0]
	movs r1, #2
	movs r2, #1
	bl sub_08077880
_08077752:
	pop {pc}
	.align 2, 0
_08077754: .4byte gUnk_02002A40

	thumb_func_start sub_08077758
sub_08077758: @ 0x08077758
	push {lr}
	adds r3, r0, #0
	ldr r2, _08077794 @ =gPlayerState
	ldr r1, [r2, #0x30]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0807779C
	movs r0, #0xd5
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	bne _08077798
	ldrb r0, [r2, #0x1e]
	ldrb r1, [r2, #0x1a]
	orrs r1, r0
	adds r0, r3, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	orrs r1, r0
	cmp r1, #0
	bne _0807779C
	adds r0, r3, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807779C
	movs r0, #1
	b _0807779E
	.align 2, 0
_08077794: .4byte gPlayerState
_08077798:
	bl sub_0807A108
_0807779C:
	movs r0, #0
_0807779E:
	pop {pc}

	thumb_func_start sub_080777A0
sub_080777A0: @ 0x080777A0
	push {r4, lr}
	ldr r3, _080777D0 @ =gPlayerState
	adds r0, r3, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r4, #0x80
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08077870
	ldr r1, [r3, #0x30]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080777D4
	adds r1, r3, #0
	adds r1, #0xa0
	movs r0, #1
	strb r0, [r1]
	bl sub_0807A108
_080777CC:
	movs r0, #1
	b _0807787C
	.align 2, 0
_080777D0: .4byte gPlayerState
_080777D4:
	ldr r2, _080777F4 @ =gArea
	ldrb r0, [r2, #0x18]
	cmp r0, #2
	beq _080777FC
	cmp r0, #3
	beq _08077810
	ldr r0, _080777F8 @ =gUnk_0200AF00
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _0807787A
	adds r2, r3, #0
	ldrb r0, [r2, #0x1c]
	cmp r0, #0
	bne _0807787A
	b _08077838
	.align 2, 0
_080777F4: .4byte gArea
_080777F8: .4byte gUnk_0200AF00
_080777FC:
	ldrb r0, [r2, #0x1a]
	cmp r0, #0
	bne _080777CC
	ldr r1, _0807780C @ =gPlayerEntity
	ldrb r0, [r1, #0xd]
	adds r0, #1
	strb r0, [r1, #0xd]
	b _080777CC
	.align 2, 0
_0807780C: .4byte gPlayerEntity
_08077810:
	ldrb r0, [r2, #0x1a]
	cmp r0, #0
	bne _0807787A
	ands r1, r4
	cmp r1, #0
	beq _0807787A
	ldr r0, _08077834 @ =gPlayerEntity
	ldrb r1, [r0, #0xd]
	adds r1, #1
	strb r1, [r0, #0xd]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #0xb4
	bl sub_0805E4E0
	b _080777CC
	.align 2, 0
_08077834: .4byte gPlayerEntity
_08077838:
	ldrb r0, [r2, #0x12]
	cmp r0, #0x11
	beq _0807787A
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0807787A
	ldr r0, [r2, #0x30]
	ldr r1, _0807786C @ =0x00040400
	ands r0, r1
	cmp r0, #0
	bne _0807787A
	ldrb r0, [r2, #2]
	cmp r0, #0
	bne _0807787A
	ldrb r0, [r2, #4]
	cmp r0, #0
	bne _0807787A
	movs r0, #0x18
	strb r0, [r2, #0xc]
	b _0807787A
	.align 2, 0
_0807786C: .4byte 0x00040400
_08077870:
	ldr r0, [r3, #0x30]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080777CC
_0807787A:
	movs r0, #0
_0807787C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08077880
sub_08077880: @ 0x08077880
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	subs r0, r4, #1
	cmp r0, #0x1e
	bhi _080778C0
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _080778C4 @ =gUnk_0811BE48
	adds r5, r0, r1
	ldr r1, _080778C8 @ =gUnk_03004010
	ldrb r0, [r5]
	cmp r0, #0
	beq _080778A0
	adds r1, #2
_080778A0:
	ldrh r0, [r1]
	ands r0, r6
	cmp r0, #0
	bne _080778AC
	cmp r2, #0
	beq _080778C0
_080778AC:
	adds r0, r4, #0
	bl sub_0807794C
	adds r1, r0, #0
	cmp r1, #0
	beq _080778C0
	ldrb r0, [r5, #1]
	strb r0, [r1, #9]
	strb r4, [r1, #1]
	strb r6, [r1, #3]
_080778C0:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080778C4: .4byte gUnk_0811BE48
_080778C8: .4byte gUnk_03004010

	thumb_func_start sub_080778CC
sub_080778CC: @ 0x080778CC
	push {lr}
	ldr r2, _08077920 @ =gPlayerState
	ldr r0, [r2, #0x30]
	ldr r1, _08077924 @ =0x000400A0
	ands r0, r1
	cmp r0, #0
	bne _0807791C
	ldr r0, _08077928 @ =gPlayerEntity
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r0, #0
	bne _080778FA
	ldrb r0, [r2, #5]
	cmp r0, #0
	bne _080778FA
	adds r0, r2, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0807791C
_080778FA:
	bl sub_080789A8
	cmp r0, #0
	bne _08077910
	ldr r0, _08077920 @ =gPlayerState
	adds r0, #0x90
	ldrh r1, [r0]
	ldr r0, _0807792C @ =0x00000F03
	ands r0, r1
	cmp r0, #0
	bne _0807791C
_08077910:
	movs r0, #0x1b
	bl sub_0807794C
	adds r1, r0, #0
	cmp r1, #0
	bne _08077930
_0807791C:
	movs r0, #0
	b _08077940
	.align 2, 0
_08077920: .4byte gPlayerState
_08077924: .4byte 0x000400A0
_08077928: .4byte gPlayerEntity
_0807792C: .4byte 0x00000F03
_08077930:
	movs r0, #0x1b
	strb r0, [r1, #1]
	ldr r0, _08077944 @ =gUnk_0811BE48
	ldr r2, _08077948 @ =0x00000145
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1, #9]
	movs r0, #1
_08077940:
	pop {pc}
	.align 2, 0
_08077944: .4byte gUnk_0811BE48
_08077948: .4byte 0x00000145

	thumb_func_start sub_0807794C
sub_0807794C: @ 0x0807794C
	push {lr}
	adds r2, r0, #0
	ldr r0, _080779B8 @ =gPlayerState
	ldrb r1, [r0, #0xc]
	adds r3, r0, #0
	cmp r1, #0x18
	bne _0807795E
	cmp r2, #0x1b
	bne _080779B2
_0807795E:
	ldr r0, [r3, #0x30]
	movs r1, #0x88
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0807796E
	cmp r2, #6
	bhi _080779B2
_0807796E:
	ldrb r0, [r3, #2]
	cmp r0, #0
	bne _0807797C
	ldr r0, _080779BC @ =gPlayerEntity
	ldr r0, [r0, #0x34]
	cmp r0, #0
	beq _08077980
_0807797C:
	cmp r2, #6
	bhi _080779B2
_08077980:
	ldr r0, [r3, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807799A
	ldr r0, _080779C0 @ =gUnk_0811BE48
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq _080779B2
_0807799A:
	ldrb r0, [r3, #0x12]
	cmp r0, #0x11
	bne _080779C4
	adds r0, r3, #0
	adds r0, #0x37
	ldrb r0, [r0]
	cmp r0, #0
	beq _080779C4
	adds r0, r2, #0
	subs r0, #0x14
	cmp r0, #1
	bls _080779C4
_080779B2:
	movs r0, #0
	b _080779DE
	.align 2, 0
_080779B8: .4byte gPlayerState
_080779BC: .4byte gPlayerEntity
_080779C0: .4byte gUnk_0811BE48
_080779C4:
	ldr r1, _080779E0 @ =gUnk_0811BE48
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	ldr r1, _080779E4 @ =gUnk_0811BFC8
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
_080779DE:
	pop {pc}
	.align 2, 0
_080779E0: .4byte gUnk_0811BE48
_080779E4: .4byte gUnk_0811BFC8

	thumb_func_start sub_080779E8
sub_080779E8: @ 0x080779E8
	movs r0, #0
	bx lr

	thumb_func_start sub_080779EC
sub_080779EC: @ 0x080779EC
	push {lr}
	ldr r1, _08077A00 @ =gUnk_03000B80
	adds r0, r1, #0
	adds r0, #0x25
	ldrb r0, [r0]
	cmp r0, #0
	bne _08077A04
	adds r0, r1, #0
	adds r0, #0x1c
	b _08077A16
	.align 2, 0
_08077A00: .4byte gUnk_03000B80
_08077A04:
	adds r0, r1, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0
	beq _08077A12
	movs r0, #0
	b _08077A16
_08077A12:
	adds r0, r1, #0
	adds r0, #0x38
_08077A16:
	pop {pc}

	thumb_func_start sub_08077A18
sub_08077A18: @ 0x08077A18
	push {lr}
	adds r1, r0, #0
	ldr r0, _08077A3C @ =gPlayerState
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _08077A44
	ldr r0, _08077A40 @ =gUnk_03000B80
	ldrb r2, [r0, #0x1d]
	cmp r1, r2
	beq _08077A44
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r1, r0
	beq _08077A44
	adds r0, r1, #0
	bl sub_080779EC
	b _08077A46
	.align 2, 0
_08077A3C: .4byte gPlayerState
_08077A40: .4byte gUnk_03000B80
_08077A44:
	movs r0, #0
_08077A46:
	pop {pc}

	thumb_func_start sub_08077A48
sub_08077A48: @ 0x08077A48
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r6, _08077A88 @ =gPlayerState
	ldrb r0, [r6, #5]
	cmp r0, #0
	bne _08077A94
	ldrb r1, [r6, #2]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _08077A94
	ldr r0, _08077A8C @ =gUnk_0811BE48
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r5, _08077A90 @ =gUnk_03000B80
	ldrb r0, [r1, #1]
	ldrb r1, [r5, #9]
	cmp r0, r1
	blo _08077A94
	adds r0, r5, #0
	movs r1, #0
	bl sub_08077E78
	strb r4, [r6, #1]
	strb r4, [r6, #0x1c]
	strb r4, [r6, #0x1b]
	adds r0, r5, #0
	b _08077A96
	.align 2, 0
_08077A88: .4byte gPlayerState
_08077A8C: .4byte gUnk_0811BE48
_08077A90: .4byte gUnk_03000B80
_08077A94:
	movs r0, #0
_08077A96:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08077A98
sub_08077A98: @ 0x08077A98
	push {lr}
	ldr r0, _08077AB8 @ =gUnk_02002A40
	adds r0, #0xac
	ldrb r0, [r0]
	cmp r0, #0
	beq _08077AC4
	ldr r0, _08077ABC @ =gPlayerState
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _08077AC4
	ldr r1, _08077AC0 @ =gUnk_03000B80
	ldrb r0, [r1, #9]
	cmp r0, #0
	bne _08077AC4
	adds r0, r1, #0
	b _08077AC6
	.align 2, 0
_08077AB8: .4byte gUnk_02002A40
_08077ABC: .4byte gPlayerState
_08077AC0: .4byte gUnk_03000B80
_08077AC4:
	movs r0, #0
_08077AC6:
	pop {pc}

	thumb_func_start sub_08077AC8
sub_08077AC8: @ 0x08077AC8
	push {lr}
	movs r2, #0
	ldr r1, _08077AD8 @ =gUnk_03000B80
_08077ACE:
	ldrb r0, [r1, #9]
	cmp r0, #0
	beq _08077ADC
	movs r0, #0
	b _08077AE6
	.align 2, 0
_08077AD8: .4byte gUnk_03000B80
_08077ADC:
	adds r1, #0x1c
	adds r2, #1
	cmp r2, #3
	bls _08077ACE
	ldr r0, _08077AE8 @ =gUnk_03000BD4
_08077AE6:
	pop {pc}
	.align 2, 0
_08077AE8: .4byte gUnk_03000BD4

	thumb_func_start sub_08077AEC
sub_08077AEC: @ 0x08077AEC
	push {lr}
	ldr r0, _08077B14 @ =gUnk_03000BD4
	movs r1, #3
	bl sub_08077E78
	ldr r2, _08077B18 @ =gPlayerState
	ldr r0, [r2, #0x30]
	ldr r1, _08077B1C @ =0xFF7FFFFF
	ands r0, r1
	str r0, [r2, #0x30]
	movs r0, #0x10
	bl IsItemEquipped
	adds r1, r0, #0
	cmp r1, #2
	beq _08077B12
	movs r0, #0xf
	bl ForceEquipItem
_08077B12:
	pop {pc}
	.align 2, 0
_08077B14: .4byte gUnk_03000BD4
_08077B18: .4byte gPlayerState
_08077B1C: .4byte 0xFF7FFFFF

	thumb_func_start sub_08077B20
sub_08077B20: @ 0x08077B20
	push {lr}
	bl ResetPlayer
	bl sub_08077AEC
	pop {pc}
