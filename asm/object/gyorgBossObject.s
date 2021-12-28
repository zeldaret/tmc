	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start GyorgBossObject
GyorgBossObject: @ 0x080A16DC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080A1700 @ =gUnk_08124ED0
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_080A1DCC
	adds r0, r4, #0
	bl sub_080A1C9C
	pop {r4, pc}
	.align 2, 0
_080A1700: .4byte gUnk_08124ED0

	thumb_func_start sub_080A1704
sub_080A1704: @ 0x080A1704
.ifdef EU
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	movs r0, #0x7b
	bl CheckFlags
	cmp r0, #0
	beq _080A0F5A
	bl DeleteThisEntity
_080A0F5A:
	ldr r0, _080A1050 @ =gEntCount
	ldrb r0, [r0]
	cmp r0, #0x45
	bhi _080A1044
	movs r0, #0x40
	bl zMalloc
	adds r7, r0, #0
	cmp r7, #0
	beq _080A1044
	movs r6, #0
	movs r0, #1
	mov sb, r0
	mov r2, sb
	mov r1, sl
	strb r2, [r1, #0xc]
	str r7, [r1, #0x64]
	adds r1, #0x6e
	movs r3, #0
	mov r8, r3
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r1]
	mov r0, sl
	adds r0, #0x6c
	strh r6, [r0]
	mov r0, sl
	str r0, [r7]
	movs r0, #0x5c
	movs r1, #0
	bl CreateEnemy
	adds r1, r0, #0
	str r7, [r1, #0x64]
	str r1, [r7, #4]
	movs r0, #0x5d
	movs r1, #0
	bl CreateEnemy
	adds r1, r0, #0
	ldr r4, _080A1054 @ =gRoomControls
	movs r2, #0x80
	lsls r2, r2, #2
	adds r5, r2, #0
	ldrh r3, [r4, #6]
	adds r0, r5, r3
	strh r0, [r1, #0x2e]
	movs r2, #0xe0
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r3, [r4, #8]
	adds r0, r0, r3
	strh r0, [r1, #0x32]
	str r7, [r1, #0x64]
	str r1, [r7, #8]
	movs r0, #0x5d
	movs r1, #1
	bl CreateEnemy
	adds r1, r0, #0
	movs r2, #0x98
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r3, [r4, #6]
	adds r0, r0, r3
	strh r0, [r1, #0x2e]
	movs r2, #0xd8
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r3, [r4, #8]
	adds r0, r0, r3
	strh r0, [r1, #0x32]
	str r7, [r1, #0x64]
	str r1, [r7, #0xc]
	ldr r2, _080A1058 @ =gScreen
	ldr r0, _080A105C @ =0x00001E07
	strh r0, [r2, #0x2c]
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	mov r0, sl
	adds r0, #0x70
	strh r6, [r0]
	adds r0, #2
	strh r6, [r0]
	adds r0, #2
	mov r1, r8
	strb r1, [r0]
	adds r0, #6
	strb r1, [r0]
	subs r0, #4
	movs r1, #0xc0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, _080A1060 @ =gScreenTransition
	adds r0, #0x39
	mov r2, sb
	strb r2, [r0]
	ldr r2, _080A1064 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xa
	orrs r0, r1
	str r0, [r2, #0x30]
	ldrh r3, [r4, #6]
	adds r5, r5, r3
	strh r5, [r2, #0x16]
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r1, #0
	ldrh r4, [r4, #8]
	adds r0, r0, r4
	strh r0, [r2, #0x18]
_080A1044:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A1050: .4byte gEntCount
_080A1054: .4byte gRoomControls
_080A1058: .4byte gScreen
_080A105C: .4byte 0x00001E07
_080A1060: .4byte gScreenTransition
_080A1064: .4byte gPlayerState

.else
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	movs r0, #0x7b
	bl CheckFlags
	cmp r0, #0
	beq _080A171E
	bl DeleteThisEntity
_080A171E:
	ldr r0, _080A1828 @ =gEntCount
	ldrb r0, [r0]
	cmp r0, #0x45
	bhi _080A181C
	movs r0, #0x40
	bl zMalloc
	adds r7, r0, #0
	cmp r7, #0
	beq _080A181C
	movs r6, #0
	movs r0, #1
	mov sb, r0
	mov r2, sb
	mov r1, sl
	strb r2, [r1, #0xc]
	str r7, [r1, #0x64]
	adds r1, #0x6e
	movs r3, #0
	mov r8, r3
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r1]
	mov r0, sl
	adds r0, #0x6c
	strh r6, [r0]
	mov r0, sl
	str r0, [r7]
	movs r0, #0x5c
	movs r1, #0
	bl CreateEnemy
	adds r1, r0, #0
	str r7, [r1, #0x64]
	str r1, [r7, #4]
	movs r0, #0x5d
	movs r1, #0
	bl CreateEnemy
	adds r1, r0, #0
	ldr r4, _080A182C @ =gRoomControls
	movs r2, #0x80
	lsls r2, r2, #2
	adds r5, r2, #0
	ldrh r3, [r4, #6]
	adds r0, r5, r3
	strh r0, [r1, #0x2e]
	movs r2, #0xcc
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r3, [r4, #8]
	adds r0, r0, r3
	strh r0, [r1, #0x32]
	str r7, [r1, #0x64]
	str r1, [r7, #8]
	movs r0, #0x5d
	movs r1, #1
	bl CreateEnemy
	adds r1, r0, #0
	movs r2, #0x98
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r3, [r4, #6]
	adds r0, r0, r3
	strh r0, [r1, #0x2e]
	adds r2, #0xb0
	adds r0, r2, #0
	ldrh r3, [r4, #8]
	adds r0, r0, r3
	strh r0, [r1, #0x32]
	str r7, [r1, #0x64]
	str r1, [r7, #0xc]
	ldr r2, _080A1830 @ =gScreen
	ldr r0, _080A1834 @ =0x00001E07
	strh r0, [r2, #0x2c]
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	mov r0, sl
	adds r0, #0x70
	strh r6, [r0]
	adds r0, #2
	strh r6, [r0]
	adds r0, #2
	mov r1, r8
	strb r1, [r0]
	adds r0, #6
	strb r1, [r0]
	subs r0, #4
	movs r1, #0xc0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, _080A1838 @ =gScreenTransition
	adds r0, #0x39
	mov r2, sb
	strb r2, [r0]
	ldr r2, _080A183C @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xa
	orrs r0, r1
	str r0, [r2, #0x30]
	ldrh r3, [r4, #6]
	adds r5, r5, r3
	strh r5, [r2, #0x16]
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r1, #0
	ldrh r4, [r4, #8]
	adds r0, r0, r4
	strh r0, [r2, #0x18]
	ldr r0, _080A1840 @ =0x80100000
	bl SoundReq
	ldr r0, _080A1844 @ =gArea
	movs r2, #0x86
	lsls r2, r2, #4
	adds r1, r0, r2
	ldr r3, _080A1848 @ =0x00000864
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r1]
_080A181C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A1828: .4byte gEntCount
_080A182C: .4byte gRoomControls
_080A1830: .4byte gScreen
_080A1834: .4byte 0x00001E07
_080A1838: .4byte gScreenTransition
_080A183C: .4byte gPlayerState
_080A1840: .4byte 0x80100000
_080A1844: .4byte gArea
_080A1848: .4byte 0x00000864
.endif

	thumb_func_start sub_080A184C
sub_080A184C: @ 0x080A184C
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x6e
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A1874
	movs r0, #2
	strb r0, [r3, #0xc]
	subs r1, #2
	movs r2, #8
	movs r0, #8
	strh r0, [r1]
	ldr r0, [r3, #0x64]
	ldr r0, [r0, #4]
	adds r0, #0x45
	strb r2, [r0]
_080A1874:
	ldr r2, _080A1894 @ =gPlayerState
	ldr r1, _080A1898 @ =gRoomControls
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r2, #0x16]
	movs r3, #0x84
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	strh r0, [r2, #0x18]
	pop {pc}
	.align 2, 0
_080A1894: .4byte gPlayerState
_080A1898: .4byte gRoomControls

	thumb_func_start sub_080A189C
sub_080A189C: @ 0x080A189C
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x64]
	ldr r0, [r0, #4]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A18E6
	movs r0, #3
	strb r0, [r3, #0xc]
	movs r0, #0x23
	strb r0, [r3, #0xe]
	adds r1, r3, #0
	adds r1, #0x6c
	movs r2, #1
	movs r0, #1
	strh r0, [r1]
	adds r1, #0xc
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x7b
	strb r2, [r0]
	ldr r0, [r3, #0x64]
	ldr r0, [r0, #8]
	adds r0, #0x45
	movs r1, #0xc
	strb r1, [r0]
	movs r0, #0x94
	lsls r0, r0, #1
	bl SoundReq
	movs r0, #0x96
	movs r1, #1
	bl InitScreenShake
_080A18E6:
	ldr r2, _080A1904 @ =gPlayerState
	ldr r1, _080A1908 @ =gRoomControls
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r2, #0x16]
	movs r3, #0x84
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	strh r0, [r2, #0x18]
	pop {pc}
	.align 2, 0
_080A1904: .4byte gPlayerState
_080A1908: .4byte gRoomControls

	thumb_func_start sub_080A190C
sub_080A190C: @ 0x080A190C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080A1FF0
	ldr r3, [r4, #0x64]
	ldr r2, [r3, #8]
	adds r0, r2, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A197C
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_080A20B8
	cmp r0, #0
	beq _080A1956
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x6c
	movs r0, #0x10
	strh r0, [r1]
	adds r1, #0xc
	movs r0, #0xc0
	strh r0, [r1]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	ldrb r1, [r0, #0x14]
	adds r0, r4, #0
	bl sub_080A1D70
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	adds r0, #0x45
	movs r1, #0x18
	strb r1, [r0]
_080A1956:
	ldr r2, _080A1974 @ =gPlayerState
	ldr r1, _080A1978 @ =gRoomControls
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r2, #0x16]
	movs r3, #0x84
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	strh r0, [r2, #0x18]
	b _080A1988
	.align 2, 0
_080A1974: .4byte gPlayerState
_080A1978: .4byte gRoomControls
_080A197C:
	ldr r1, _080A198C @ =gPlayerState
	ldrh r0, [r2, #0x2e]
	strh r0, [r1, #0x16]
	ldr r0, [r3, #8]
	ldrh r0, [r0, #0x32]
	strh r0, [r1, #0x18]
_080A1988:
	pop {r4, pc}
	.align 2, 0
_080A198C: .4byte gPlayerState

	thumb_func_start sub_080A1990
sub_080A1990: @ 0x080A1990
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x64]
	ldr r0, [r1, #4]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A19D6
	ldr r0, [r1, #8]
	adds r0, #0x45
	movs r1, #0xc
	strb r1, [r0]
	movs r0, #5
	strb r0, [r2, #0xc]
	movs r0, #0x23
	strb r0, [r2, #0xe]
	adds r1, r2, #0
	adds r1, #0x6c
	movs r0, #2
	strh r0, [r1]
	adds r1, #0xc
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1]
	adds r1, #3
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x94
	lsls r0, r0, #1
	bl SoundReq
	movs r0, #0x96
	movs r1, #1
	bl InitScreenShake
_080A19D6:
	ldr r2, _080A19F4 @ =gPlayerState
	ldr r1, _080A19F8 @ =gRoomControls
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r2, #0x16]
	movs r3, #0x84
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	strh r0, [r2, #0x18]
	pop {pc}
	.align 2, 0
_080A19F4: .4byte gPlayerState
_080A19F8: .4byte gRoomControls

	thumb_func_start sub_080A19FC
sub_080A19FC: @ 0x080A19FC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080A1FF0
	ldr r3, [r4, #0x64]
	ldr r2, [r3, #0xc]
	adds r0, r2, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A1A6C
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_080A20B8
	cmp r0, #0
	beq _080A1A46
	movs r0, #6
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x6c
	movs r0, #0x20
	strh r0, [r1]
	adds r1, #0xc
	movs r0, #0xc0
	strh r0, [r1]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	ldrb r1, [r0, #0x14]
	adds r0, r4, #0
	bl sub_080A1D70
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	adds r0, #0x45
	movs r1, #0x18
	strb r1, [r0]
_080A1A46:
	ldr r2, _080A1A64 @ =gPlayerState
	ldr r1, _080A1A68 @ =gRoomControls
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r2, #0x16]
	movs r3, #0x84
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	strh r0, [r2, #0x18]
	b _080A1A78
	.align 2, 0
_080A1A64: .4byte gPlayerState
_080A1A68: .4byte gRoomControls
_080A1A6C:
	ldr r1, _080A1A7C @ =gPlayerState
	ldrh r0, [r2, #0x2e]
	strh r0, [r1, #0x16]
	ldr r0, [r3, #0xc]
	ldrh r0, [r0, #0x32]
	strh r0, [r1, #0x18]
_080A1A78:
	pop {r4, pc}
	.align 2, 0
_080A1A7C: .4byte gPlayerState

	thumb_func_start sub_080A1A80
sub_080A1A80: @ 0x080A1A80
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x64]
	ldr r0, [r1, #4]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A1AC0
	ldr r0, [r1, #0xc]
	adds r0, #0x45
	movs r1, #0xc
	strb r1, [r0]
	movs r0, #7
	strb r0, [r2, #0xc]
	movs r0, #0x23
	strb r0, [r2, #0xe]
	adds r1, r2, #0
	adds r1, #0x6c
	adds r0, #0xe1
	strh r0, [r1]
	adds r1, #0xc
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1]
	movs r0, #0x94
	lsls r0, r0, #1
	bl SoundReq
	movs r0, #0x96
	movs r1, #1
	bl InitScreenShake
_080A1AC0:
	ldr r2, _080A1AE0 @ =gPlayerState
	ldr r1, _080A1AE4 @ =gRoomControls
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r2, #0x16]
	movs r3, #0x84
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	strh r0, [r2, #0x18]
	pop {pc}
	.align 2, 0
_080A1AE0: .4byte gPlayerState
_080A1AE4: .4byte gRoomControls

	thumb_func_start sub_080A1AE8
sub_080A1AE8: @ 0x080A1AE8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080A1FF0
	ldr r0, [r4, #0x64]
	ldr r1, [r0, #0xc]
	adds r0, r1, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A1B24
	adds r0, r4, #0
	bl sub_080A20B8
	cmp r0, #0
	beq _080A1B24
	movs r0, #8
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x6c
	movs r0, #0x40
	strh r0, [r1]
	adds r1, #0xc
	movs r0, #0xc0
	strh r0, [r1]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	adds r0, #0x45
	movs r1, #0xc
	strb r1, [r0]
_080A1B24:
	ldr r2, _080A1B44 @ =gPlayerState
	ldr r1, _080A1B48 @ =gRoomControls
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r2, #0x16]
	movs r3, #0x84
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	strh r0, [r2, #0x18]
	pop {r4, pc}
	.align 2, 0
_080A1B44: .4byte gPlayerState
_080A1B48: .4byte gRoomControls

	thumb_func_start sub_080A1B4C
sub_080A1B4C: @ 0x080A1B4C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	adds r0, #0x45
	ldrb r7, [r0]
	cmp r7, #0
	bne _080A1BD0
	adds r5, r4, #0
	adds r5, #0x6c
	ldrh r0, [r5]
	cmp r0, #0
	beq _080A1B80
	movs r0, #0x2d
	movs r1, #1
	bl InitScreenShake
	movs r0, #0x94
	lsls r0, r0, #1
	bl SoundReq
	adds r1, r4, #0
	adds r1, #0x78
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r1]
_080A1B80:
	movs r6, #0
	strh r7, [r5]
	ldr r0, _080A1BF0 @ =gScreenTransition
	adds r0, #0x39
	strb r6, [r0]
	bl sub_08079F8C
	cmp r0, #0
	beq _080A1BD0
	ldr r3, _080A1BF4 @ =gPlayerEntity
	movs r1, #0x36
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bne _080A1BD0
	movs r0, #9
	strb r0, [r4, #0xc]
	strb r6, [r4, #0xe]
	movs r0, #0xf0
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x6e
	adds r0, #0xb4
	strh r0, [r1]
	strb r6, [r4, #0x15]
	movs r0, #0x60
	strh r0, [r4, #0x24]
	ldr r2, _080A1BF8 @ =gPlayerState
	ldr r0, [r2, #0x30]
	ldr r1, _080A1BFC @ =0xFFFDFFFF
	ands r0, r1
	str r0, [r2, #0x30]
	adds r0, r3, #0
	adds r1, r4, #0
	bl CopyPosition
	ldr r0, _080A1C00 @ =gRoomControls
	str r4, [r0, #0x30]
	movs r0, #2
	bl SetPlayerControl
_080A1BD0:
	ldr r2, _080A1BF8 @ =gPlayerState
	ldr r1, _080A1C00 @ =gRoomControls
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r2, #0x16]
	movs r3, #0x84
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	strh r0, [r2, #0x18]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A1BF0: .4byte gScreenTransition
_080A1BF4: .4byte gPlayerEntity
_080A1BF8: .4byte gPlayerState
_080A1BFC: .4byte 0xFFFDFFFF
_080A1C00: .4byte gRoomControls

	thumb_func_start sub_080A1C04
sub_080A1C04: @ 0x080A1C04
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x6e
	ldrh r0, [r1]
	cmp r0, #0
	bne _080A1C52
	adds r0, r4, #0
	bl LinearMoveUpdate
	adds r0, r4, #0
	bl sub_080A1E54
	ldrb r0, [r4, #0xf]
	subs r1, r0, #1
	strb r1, [r4, #0xf]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _080A1C40
	movs r0, #0x7b
	bl SetFlag
	ldr r0, _080A1C3C @ =gUnk_0813ABD0
	movs r1, #8
	bl sub_0808091C
	b _080A1C9A
	.align 2, 0
_080A1C3C: .4byte gUnk_0813ABD0
_080A1C40:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bne _080A1C9A
	movs r0, #7
	movs r1, #4
	bl DoFade
	b _080A1C9A
_080A1C52:
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb3
	bhi _080A1C66
	adds r0, r4, #0
	bl sub_080A1E54
	b _080A1C9A
_080A1C66:
	ldrh r1, [r1]
	cmp r1, #0xb4
	beq _080A1C76
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r1, r0
	beq _080A1C8A
	b _080A1C9A
_080A1C76:
	movs r0, #0x94
	lsls r0, r0, #1
	bl SoundReq
	movs r0, #0xb4
	lsls r0, r0, #2
	movs r1, #2
	bl InitScreenShake
	b _080A1C9A
_080A1C8A:
	movs r0, #0x94
	lsls r0, r0, #1
	bl SoundReq
	movs r0, #0x4b
	movs r1, #1
	bl InitScreenShake
_080A1C9A:
	pop {r4, pc}

	thumb_func_start sub_080A1C9C
sub_080A1C9C: @ 0x080A1C9C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x7a
	ldrb r0, [r5]
	cmp r0, #0
	beq _080A1D04
	adds r0, r4, #0
	adds r0, #0x74
	adds r7, r4, #0
	adds r7, #0x75
	ldrb r1, [r0]
	adds r6, r0, #0
	ldrb r0, [r7]
	cmp r1, r0
	beq _080A1CE4
	subs r5, #2
	movs r0, #0
	strh r0, [r5]
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_080A1D8C
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	bne _080A1D14
	ldrb r0, [r7]
	strb r0, [r6]
	adds r0, r4, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	strh r0, [r5]
	b _080A1D14
_080A1CE4:
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_080A1D8C
	adds r0, r4, #0
	adds r0, #0x78
	adds r1, r4, #0
	adds r1, #0x76
	ldrh r0, [r0]
	adds r2, r1, #0
	ldrh r1, [r2]
	cmp r0, r1
	bne _080A1D14
	movs r0, #0
	strb r0, [r5]
	b _080A1D14
_080A1D04:
	adds r0, r4, #0
	movs r1, #8
	bl sub_080A1D8C
	adds r6, r4, #0
	adds r6, #0x74
	adds r2, r4, #0
	adds r2, #0x76
_080A1D14:
	adds r3, r4, #0
	adds r3, #0x70
	ldr r5, _080A1D68 @ =gSineTable
	ldrb r0, [r6]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r7, #0
	ldrsh r1, [r0, r7]
	ldrh r0, [r2]
	muls r0, r1, r0
	cmp r0, #0
	bge _080A1D2E
	adds r0, #0xff
_080A1D2E:
	asrs r0, r0, #8
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	adds r4, #0x72
	ldrb r0, [r6]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r5, #0
	ldrsh r1, [r0, r5]
	ldrh r0, [r2]
	muls r0, r1, r0
	cmp r0, #0
	bge _080A1D4E
	adds r0, #0xff
_080A1D4E:
	asrs r0, r0, #8
	ldrh r1, [r4]
	subs r1, r1, r0
	strh r1, [r4]
	ldr r2, _080A1D6C @ =gScreen
	ldrh r0, [r3]
	lsrs r0, r0, #8
	strh r0, [r2, #0x2e]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x18
	strh r1, [r2, #0x30]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A1D68: .4byte gSineTable
_080A1D6C: .4byte gScreen

	thumb_func_start sub_080A1D70
sub_080A1D70: @ 0x080A1D70
	adds r2, r0, #0
	adds r0, #0x75
	strb r1, [r0]
	adds r1, r2, #0
	adds r1, #0x7a
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x78
	ldrh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080A1D8C
sub_080A1D8C: @ 0x080A1D8C
	push {r4, lr}
	adds r4, r1, #0
	adds r3, r0, #0
	adds r3, #0x78
	adds r2, r0, #0
	adds r2, #0x76
	ldrh r1, [r3]
	ldrh r0, [r2]
	cmp r1, r0
	beq _080A1DC8
	cmp r1, r0
	bls _080A1DB6
	adds r3, r0, #0
	subs r0, r1, r3
	cmp r4, r0
	bge _080A1DB2
	adds r0, r3, r4
	strh r0, [r2]
	b _080A1DC8
_080A1DB2:
	strh r1, [r2]
	b _080A1DC8
_080A1DB6:
	ldrh r1, [r2]
	ldrh r3, [r3]
	subs r0, r1, r3
	cmp r4, r0
	bge _080A1DC6
	subs r0, r1, r4
	strh r0, [r2]
	b _080A1DC8
_080A1DC6:
	strh r3, [r2]
_080A1DC8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A1DCC
sub_080A1DCC: @ 0x080A1DCC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x64]
	ldr r3, [r1, #8]
	cmp r3, #0
	bne _080A1DDE
	ldr r3, [r1, #0xc]
	cmp r3, #0
	beq _080A1E24
_080A1DDE:
	adds r0, r3, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A1E24
	ldrb r0, [r3, #0x19]
	lsrs r0, r0, #6
	cmp r0, #2
	bne _080A1E24
	ldr r3, [r1, #0x10]
	ldrb r2, [r3, #0x10]
	movs r1, #0x7f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #0x10]
	ldr r0, [r4, #0x64]
	ldr r3, [r0, #0x14]
	ldrb r2, [r3, #0x10]
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #0x10]
	ldr r3, [r3, #0x54]
	ldrb r2, [r3, #0x10]
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #0x10]
	ldr r3, [r3, #0x54]
	ldrb r2, [r3, #0x10]
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #0x10]
	ldr r3, [r3, #0x54]
	ldrb r0, [r3, #0x10]
	ands r1, r0
	b _080A1E50
_080A1E24:
	ldr r0, [r4, #0x64]
	ldr r2, [r0, #0x10]
	ldrb r0, [r2, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	ldr r0, [r4, #0x64]
	ldr r3, [r0, #0x14]
	ldrb r0, [r3, #0x10]
	orrs r0, r1
	strb r0, [r3, #0x10]
	ldr r3, [r3, #0x54]
	ldrb r0, [r3, #0x10]
	orrs r0, r1
	strb r0, [r3, #0x10]
	ldr r3, [r3, #0x54]
	ldrb r0, [r3, #0x10]
	orrs r0, r1
	strb r0, [r3, #0x10]
	ldr r3, [r3, #0x54]
	ldrb r0, [r3, #0x10]
	orrs r1, r0
_080A1E50:
	strb r1, [r3, #0x10]
	pop {r4, pc}

	thumb_func_start sub_080A1E54
sub_080A1E54: @ 0x080A1E54
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	adds r0, #1
	strb r0, [r2, #0xe]
	movs r1, #0xff
	ands r0, r1
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _080A1ECA
	adds r0, r2, #0
	movs r1, #0x51
	movs r2, #0
	bl CreateFx
	adds r4, r0, #0
	cmp r4, #0
	beq _080A1ECA
	bl Random
	ldr r3, _080A1ECC @ =gRoomControls
	movs r1, #0xf0
	adds r2, r0, #0
	ands r2, r1
	movs r5, #0x80
	lsls r5, r5, #2
	adds r1, r5, #0
	adds r2, r2, r1
	ldrh r1, [r3, #6]
	adds r1, r1, r2
	subs r1, #0x78
	strh r1, [r4, #0x2e]
	lsrs r0, r0, #8
	movs r1, #0x70
	ands r0, r1
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrh r3, [r3, #8]
	adds r0, r0, r3
	subs r0, #0x38
	strh r0, [r4, #0x32]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
_080A1ECA:
	pop {r4, r5, pc}
	.align 2, 0
_080A1ECC: .4byte gRoomControls

	thumb_func_start sub_080A1ED0
sub_080A1ED0: @ 0x080A1ED0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r1
	adds r5, r2, #0
	movs r1, #0
	str r1, [sp]
	ldr r4, _080A1F60 @ =gUnk_08124EF8
	lsls r1, r5, #2
	adds r1, r1, r4
	ldrh r2, [r1]
	ldr r3, _080A1F64 @ =gRoomControls
	ldrh r1, [r3, #6]
	adds r2, r2, r1
	mov sl, r2
	lsls r1, r5, #1
	adds r1, #1
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r2, [r1]
	ldrh r1, [r3, #8]
	adds r2, r2, r1
	mov r8, r2
	ldr r1, _080A1F68 @ =gUnk_08124FF0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #1
	beq _080A1FB0
	lsls r7, r5, #3
	movs r0, #0x10
	adds r6, r7, #0
	eors r6, r0
_080A1F1C:
	movs r0, #0x60
	mov r1, sb
	bl CreateEnemy
	adds r2, r0, #0
	cmp r2, #0
	beq _080A1FA6
	mov r0, sp
	ldrb r0, [r0]
	strb r0, [r2, #0xb]
	ldr r1, [sp]
	adds r1, #1
	str r1, [sp]
	mov r0, sl
	strh r0, [r2, #0x2e]
	mov r1, r8
	strh r1, [r2, #0x32]
	strb r7, [r2, #0x15]
	adds r0, r2, #0
	adds r0, #0x7a
	strb r6, [r0]
	ldrh r1, [r4, #4]
	subs r0, #2
	strh r1, [r0]
	cmp r5, #1
	beq _080A1F7A
	cmp r5, #1
	blo _080A1F6C
	cmp r5, #2
	beq _080A1F80
	cmp r5, #3
	beq _080A1F94
	b _080A1FA6
	.align 2, 0
_080A1F60: .4byte gUnk_08124EF8
_080A1F64: .4byte gRoomControls
_080A1F68: .4byte gUnk_08124FF0
_080A1F6C:
	ldrh r1, [r4]
	adds r0, r2, #0
	adds r0, #0x74
	strh r1, [r0]
	ldrh r0, [r4, #2]
	rsbs r0, r0, #0
	b _080A1F8C
_080A1F7A:
	ldrh r0, [r4, #2]
	adds r0, #0xf0
	b _080A1F98
_080A1F80:
	ldrh r1, [r4]
	adds r0, r2, #0
	adds r0, #0x74
	strh r1, [r0]
	ldrh r0, [r4, #2]
	adds r0, #0xa0
_080A1F8C:
	adds r1, r2, #0
	adds r1, #0x76
	strh r0, [r1]
	b _080A1FA6
_080A1F94:
	ldrh r0, [r4, #2]
	rsbs r0, r0, #0
_080A1F98:
	adds r1, r2, #0
	adds r1, #0x74
	strh r0, [r1]
	ldrh r1, [r4]
	adds r0, r2, #0
	adds r0, #0x76
	strh r1, [r0]
_080A1FA6:
	adds r4, #6
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #1
	bne _080A1F1C
_080A1FB0:
	mov r0, sb
	cmp r0, #0
	bne _080A1FE4
	movs r0, #0xf
	movs r1, #2
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _080A1FE4
	mov r1, sl
	strh r1, [r2, #0x2e]
	mov r0, r8
	strh r0, [r2, #0x32]
	ldrb r0, [r2, #0x1b]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r2, #0x1b]
	ldrb r0, [r2, #0x19]
	orrs r0, r1
	strb r0, [r2, #0x19]
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
_080A1FE4:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080A1FF0
sub_080A1FF0: @ 0x080A1FF0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _080A2066
	subs r1, r0, #1
	strb r1, [r5, #0xe]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bhi _080A2066
	movs r0, #0xf
	ands r1, r0
	cmp r1, #0
	bne _080A2066
	adds r0, r5, #0
	movs r1, #0x51
	movs r2, #0
	bl CreateFx
	adds r4, r0, #0
	cmp r4, #0
	beq _080A2066
	bl Random
	ldr r3, _080A209C @ =gRoomControls
	movs r1, #0x78
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r1, #0
	adds r2, r0, r2
	ldrh r1, [r3, #6]
	adds r1, r1, r2
	subs r1, #0x3c
	strh r1, [r4, #0x2e]
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrh r3, [r3, #8]
	adds r0, r0, r3
	subs r0, #0x3c
	strh r0, [r4, #0x32]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
_080A2066:
	adds r4, r5, #0
	adds r4, #0x7b
	ldrb r0, [r4]
	cmp r0, #0
	beq _080A20B4
	ldr r0, _080A20A0 @ =gPlayerEntity
	ldr r2, _080A209C @ =gRoomControls
	ldrh r1, [r2, #6]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r1, r3
	ldrh r2, [r2, #8]
	adds r3, #0x10
	adds r2, r2, r3
	movs r3, #0x80
	lsls r3, r3, #1
	bl sub_0806FCB8
	cmp r0, #0
	beq _080A20B2
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _080A20A4
	movs r0, #0x78
	strb r0, [r5, #0xe]
	b _080A20B4
	.align 2, 0
_080A209C: .4byte gRoomControls
_080A20A0: .4byte gPlayerEntity
_080A20A4:
	cmp r0, #0x23
	bne _080A20B4
	movs r0, #0x1e
	movs r1, #0
	bl InitScreenShake
	b _080A20B4
_080A20B2:
	strb r0, [r4]
_080A20B4:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A20B8
sub_080A20B8: @ 0x080A20B8
	push {r4, lr}
	adds r4, r1, #0
	cmp r4, #0
	bne _080A20C4
	movs r0, #1
	b _080A20FA
_080A20C4:
	bl sub_08079F8C
	cmp r0, #0
	beq _080A20F8
	ldr r0, _080A20F0 @ =gPlayerEntity
	movs r1, #0x36
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080A20F8
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A20EC
	ldr r0, _080A20F4 @ =gPlayerState
	ldrb r1, [r0, #0x14]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r1, r0, #0x1f
_080A20EC:
	adds r0, r1, #0
	b _080A20FA
	.align 2, 0
_080A20F0: .4byte gPlayerEntity
_080A20F4: .4byte gPlayerState
_080A20F8:
	movs r0, #0
_080A20FA:
	pop {r4, pc}
