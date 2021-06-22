	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start PlayerItem15
PlayerItem15: @ 0x080A306C
	push {lr}
	ldr r2, _080A3080 @ =gUnk_08127270
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A3080: .4byte gUnk_08127270

	thumb_func_start sub_080A3084
sub_080A3084: @ 0x080A3084
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r5, #1
	strb r5, [r4, #0xc]
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080A30F8
	ldr r0, _080A30EC @ =gPlayerEntity
	adds r0, #0x3c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x3c
	strb r0, [r1]
	ldr r0, _080A30F0 @ =gUnk_08127278
	str r0, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #2
	bne _080A30CC
	strb r5, [r4, #0xb]
_080A30CC:
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	movs r0, #0x3c
	str r0, [r4, #0x6c]
	adds r0, r4, #0
	bl sub_0801766C
	adds r0, r4, #0
	bl sub_0806F69C
	ldr r0, _080A30F4 @ =0x0000013F
	bl SoundReq
	b _080A30FC
	.align 2, 0
_080A30EC: .4byte gPlayerEntity
_080A30F0: .4byte gUnk_08127278
_080A30F4: .4byte 0x0000013F
_080A30F8:
	movs r0, #6
	strb r0, [r4, #0xe]
_080A30FC:
	adds r0, r4, #0
	movs r1, #0x18
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_080A310C
	pop {r4, r5, pc}

	thumb_func_start sub_080A310C
sub_080A310C: @ 0x080A310C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080A312A
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080A3200
	bl DeleteThisEntity
	b _080A3200
_080A312A:
	adds r0, r4, #0
	bl GetNextFrame
	ldr r0, [r4, #0x6c]
	subs r0, #1
	str r0, [r4, #0x6c]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080A31FC
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080A315C
	adds r0, r4, #0
	bl sub_0800451C
_080A315C:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _080A31F0 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	ldr r1, _080A31F4 @ =gPlayerEntity
	adds r1, #0x38
	ldrb r1, [r1]
	movs r2, #0x80
	bl sub_080002F0
	cmp r0, #0
	bne _080A31AE
	ldr r1, _080A31F8 @ =gUnk_08003E44
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	movs r5, #0x32
	ldrsh r3, [r4, r5]
	adds r0, r4, #0
	bl sub_080040D8
	cmp r0, #0
	beq _080A31AE
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_080A31AE:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A31C6
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_080A31C6:
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_08008790
	cmp r0, #0
	beq _080A31D6
	bl DeleteThisEntity
_080A31D6:
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r3, [r0]
	movs r0, #0x15
	movs r1, #1
	movs r2, #0
	bl CreatePlayerItem
	str r0, [r4, #0x54]
	cmp r0, #0
	beq _080A3200
	str r4, [r0, #0x50]
	b _080A3200
	.align 2, 0
_080A31F0: .4byte gRoomControls
_080A31F4: .4byte gPlayerEntity
_080A31F8: .4byte gUnk_08003E44
_080A31FC:
	bl DeleteThisEntity
_080A3200:
	pop {r4, r5, pc}
	.align 2, 0




// DEMO only functions

.ifdef DEMO
	thumb_func_start HandleChooseDemoScreen
HandleChooseDemoScreen: @ 0x080A2E18
	push {lr}
	bl FlushSprites
	ldr r1, _080A2E38 @ =demoFunctions
	ldr r0, _080A2E3C @ =gMain
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_080A30AC
	bl sub_080AD918
	pop {pc}
	.align 2, 0
_080A2E38: .4byte demoFunctions
_080A2E3C: .4byte gMain

thumb_func_start sub_080A2E40
sub_080A2E40: @ 0x080A2E40
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	movs r0, #1
	bl DispReset
	bl InitSoundPlayingInfo
	movs r0, #0xc0
	lsls r0, r0, #0x13
	mov sb, r0
	movs r1, #0x80
	bl MemClear
	bl MessageInitialize
	bl EraseAllEntities
	bl sub_080ADD30
	movs r0, #0
	bl sub_0801CFA8
	ldr r0, _080A2F4C @ =gUnk_02032EC0
	movs r1, #0xed
	lsls r1, r1, #2
	bl MemClear
	ldr r0, _080A2F50 @ =gChooseFileState
	movs r1, #0x30
	bl MemClear
	ldr r0, _080A2F54 @ =gBG0Buffer
	movs r1, #0x80
	lsls r1, r1, #4
	mov r8, r1
	bl MemClear
	bl sub_08053320
	movs r0, #0xb5
	bl LoadPaletteGroup
	movs r0, #0x56
	bl LoadGfxGroup
	ldr r5, _080A2F58 @ =0x089FD1B4
	ldr r4, _080A2F5C @ =0x02017760
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl MemCopy
	movs r0, #0x80
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl MemCopy
	ldr r4, _080A2F60 @ =0x089FD2F4
	movs r5, #0x80
	lsls r5, r5, #8
	adds r0, r4, #0
	mov r1, sb
	adds r2, r5, #0
	bl MemCopy
	ldr r1, _080A2F64 @ =0x06010000
	adds r0, r4, #0
	adds r2, r5, #0
	bl MemCopy
	ldr r4, _080A2F68 @ =0x08A05751
	ldr r1, _080A2F6C @ =gBG1Buffer
	adds r0, r4, #0
	mov r2, r8
	bl MemCopy
	movs r1, #0x80
	lsls r1, r1, #4
	adds r4, r4, r1
	ldr r1, _080A2F70 @ =gBG2Buffer
	adds r0, r4, #0
	mov r2, r8
	bl MemCopy
	ldr r1, _080A2F74 @ =gScreen
	movs r2, #0
	movs r0, #0xf8
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r0, _080A2F78 @ =0x00001C81
	strh r0, [r1, #0x14]
	ldr r0, _080A2F7C @ =0x00001D82
	strh r0, [r1, #0x20]
	adds r0, #0x89
	strh r0, [r1, #0x2c]
	movs r4, #1
	movs r0, #1
	strh r0, [r1, #0x1a]
	strh r0, [r1, #0x26]
	strh r0, [r1, #0x32]
	adds r3, r1, #0
	adds r3, #0x66
	ldr r0, _080A2F80 @ =0x00001044
	strh r0, [r3]
	adds r1, #0x68
	ldr r0, _080A2F84 @ =0x00000B04
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0x12
	strb r2, [r0, #4]
	movs r0, #0
	movs r1, #0
	bl sub_080A3198
	ldr r0, _080A2F88 @ =gMain
	strb r4, [r0, #3]
	movs r0, #7
	bl SoundReq
	movs r0, #4
	movs r1, #8
	bl DoFade
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A2F4C: .4byte gUnk_02032EC0
_080A2F50: .4byte gChooseFileState
_080A2F54: .4byte gBG0Buffer
_080A2F58: .4byte gUnk_089FD1B4
_080A2F5C: .4byte 0x02017760
_080A2F60: .4byte gUnk_089FD2F4
_080A2F64: .4byte 0x06010000
_080A2F68: .4byte gUnk_08A05751
_080A2F6C: .4byte gBG1Buffer
_080A2F70: .4byte gBG2Buffer
_080A2F74: .4byte gScreen
_080A2F78: .4byte 0x00001C81
_080A2F7C: .4byte 0x00001D82
_080A2F80: .4byte 0x00001044
_080A2F84: .4byte 0x00000B04
_080A2F88: .4byte gMain


	thumb_func_start sub_080A2F8C
sub_080A2F8C: @ 0x080A2F8C
	push {lr}
	ldr r0, _080A2FA4 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A2FCC
	ldr r2, _080A2FA8 @ =gMain
	ldrb r0, [r2, #4]
	cmp r0, #0
	beq _080A2FAC
	cmp r0, #1
	beq _080A2FC6
	b _080A2FCC
	.align 2, 0
_080A2FA4: .4byte gFadeControl
_080A2FA8: .4byte gMain
_080A2FAC:
	movs r0, #1
	strb r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #0x12
	strb r0, [r1, #5]
	strb r0, [r1, #6]
	movs r0, #2
	strb r0, [r2, #3]
	movs r0, #5
	movs r1, #8
	bl DoFade
	b _080A2FCC
_080A2FC6:
	movs r0, #2
	bl InitScreen
_080A2FCC:
	pop {pc}
	.align 2, 0


	thumb_func_start sub_080A2FD0
sub_080A2FD0: @ 0x080A2FD0
	push {r4, r5, lr}
	ldr r0, _080A2FF4 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A30A8
	movs r5, #0
	ldr r0, _080A2FF8 @ =gInput
	ldrh r0, [r0]
	cmp r0, #0x10
	beq _080A3020
	cmp r0, #0x10
	bgt _080A2FFC
	cmp r0, #1
	beq _080A303C
	cmp r0, #8
	beq _080A303C
	b _080A3052
	.align 2, 0
_080A2FF4: .4byte gFadeControl
_080A2FF8: .4byte gInput
_080A2FFC:
	cmp r0, #0x40
	beq _080A3052
	cmp r0, #0x40
	bgt _080A3052
	cmp r0, #0x20
	bne _080A3052
	ldr r1, _080A301C @ =gChooseFileState
	ldrb r0, [r1]
	cmp r0, #0
	bne _080A3052
	movs r5, #1
	rsbs r5, r5, #0
	adds r1, #0x20
	movs r0, #0xfc
	b _080A302E
	.align 2, 0
_080A301C: .4byte gChooseFileState
_080A3020:
	ldr r1, _080A3038 @ =gChooseFileState
	ldrb r0, [r1]
	cmp r0, #0
	bne _080A3052
	movs r5, #1
	adds r1, #0x20
	movs r0, #4
_080A302E:
	strb r0, [r1]
	movs r0, #0x69
	bl SoundReq
	b _080A3052
	.align 2, 0
_080A3038: .4byte gChooseFileState
_080A303C:
	ldr r0, _080A3090 @ =gChooseFileState
	ldrb r2, [r0]
	cmp r2, #0
	bne _080A3052
	ldr r1, _080A3094 @ =gMain
	movs r0, #2
	strb r0, [r1, #3]
	strb r2, [r1, #4]
	movs r0, #0x6a
	bl SoundReq
_080A3052:
	movs r4, #0x80
	lsls r4, r4, #0x12
	ldrb r0, [r4, #4]
	adds r1, r5, #3
	adds r0, r0, r1
	movs r1, #3
	bl __modsi3
	strb r0, [r4, #4]
	ldr r5, _080A3090 @ =gChooseFileState
	movs r0, #0x10
	ldrsh r2, [r5, r0]
	ldrb r1, [r4, #4]
	movs r0, #0x68
	muls r0, r1, r0
	cmp r0, r2
	beq _080A3098
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r2, r0
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r0, r1
	bl __modsi3
	strh r0, [r5, #0x10]
	movs r0, #1
	b _080A309A
	.align 2, 0
_080A3090: .4byte gChooseFileState
_080A3094: .4byte gMain
_080A3098:
	movs r0, #0
_080A309A:
	strb r0, [r5]
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #4]
	movs r1, #0
	bl sub_080A3198
_080A30A8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A30AC
sub_080A30AC: @ 0x080A30AC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r4, _080A3188 @ =gOamCmd
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #6
	strh r0, [r4, #4]
	strh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #4
	strh r0, [r4, #8]
	movs r0, #0x40
	strh r0, [r4, #2]
	ldr r0, _080A318C @ =gChooseFileState
	movs r1, #0x10
	ldrsh r6, [r0, r1]
	ldr r1, _080A3190 @ =0xFFFFFED8
	adds r0, r1, #0
	subs r0, r0, r6
	strh r0, [r4]
	ldr r0, _080A3194 @ =0x08A068BF
	mov r8, r0
	ldr r1, [r0]
	mov r5, r8
	subs r5, #0xc
	adds r1, r1, r5
	adds r0, r4, #0
	bl sub_080ADA04
	movs r1, #0xc0
	rsbs r1, r1, #0
	adds r0, r1, #0
	subs r0, r0, r6
	strh r0, [r4]
	ldr r1, [r5, #4]
	adds r1, r1, r5
	adds r0, r4, #0
	bl sub_080ADA04
	movs r1, #0x58
	rsbs r1, r1, #0
	adds r0, r1, #0
	subs r0, r0, r6
	strh r0, [r4]
	ldr r1, [r5, #8]
	adds r1, r1, r5
	adds r0, r4, #0
	bl sub_080ADA04
	movs r0, #0x10
	subs r0, r0, r6
	strh r0, [r4]
	mov r0, r8
	ldr r1, [r0]
	adds r1, r1, r5
	adds r0, r4, #0
	bl sub_080ADA04
	movs r0, #0x78
	subs r0, r0, r6
	strh r0, [r4]
	ldr r1, [r5, #4]
	adds r1, r1, r5
	adds r0, r4, #0
	bl sub_080ADA04
	movs r0, #0xe0
	subs r0, r0, r6
	strh r0, [r4]
	ldr r1, [r5, #8]
	adds r1, r1, r5
	adds r0, r4, #0
	bl sub_080ADA04
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r1, #0
	subs r0, r0, r6
	strh r0, [r4]
	mov r0, r8
	ldr r1, [r0]
	adds r1, r1, r5
	adds r0, r4, #0
	bl sub_080ADA04
	movs r1, #0xd8
	lsls r1, r1, #1
	adds r0, r1, #0
	subs r0, r0, r6
	strh r0, [r4]
	ldr r1, [r5, #4]
	adds r1, r1, r5
	adds r0, r4, #0
	bl sub_080ADA04
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r1, #0
	subs r0, r0, r6
	strh r0, [r4]
	ldr r1, [r5, #8]
	adds r1, r1, r5
	adds r0, r4, #0
	bl sub_080ADA04
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A3188: .4byte gOamCmd
_080A318C: .4byte gChooseFileState
_080A3190: .4byte 0xFFFFFED8
_080A3194: .4byte gUnk_08A068BF

	thumb_func_start sub_080A3198
sub_080A3198: @ 0x080A3198
	push {r4, r5, lr}
	ldr r1, _080A31D0 @ =0x08127CC8
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r4, [r0]
	ldr r1, _080A31D4 @ =gChooseFileState
	ldrh r0, [r1, #0x12]
	cmp r0, r4
	beq _080A31CC
	strh r4, [r1, #0x12]
	ldr r5, _080A31D8 @ =something2
	ldr r0, [r5]
	subs r0, #0x1e
	movs r1, #0xc0
	lsls r1, r1, #1
	bl MemClear
	cmp r4, #0
	beq _080A31C6DEMO
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0805F46C
_080A31C6DEMO:
	ldr r1, _080A31DC @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
_080A31CC:
	pop {r4, r5, pc}
	.align 2, 0
_080A31D0: .4byte gUnk_08127CC8
_080A31D4: .4byte gChooseFileState
_080A31D8: .4byte gUnk_08127C98
_080A31DC: .4byte gScreen

.endif
