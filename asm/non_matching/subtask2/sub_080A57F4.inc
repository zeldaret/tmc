	.syntax unified
.ifdef EU
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _080A50A8 @ =gOamCmd
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2, #4]
	strh r1, [r2, #6]
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	ldr r1, _080A50AC @ =gUnk_08128C94
	mov sb, r1
	cmp r0, #0
	bne _080A502E
	ldr r3, _080A50B0 @ =gUnk_08128C14
	mov sb, r3
_080A502E:
	ldr r0, _080A50B4 @ =gMenu
	ldrb r0, [r0, #3]
	lsls r0, r0, #3
	mov r1, sb
	adds r3, r1, r0
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r2, #8]
	ldrb r0, [r3, #6]
	strh r0, [r2]
	ldrb r0, [r3, #7]
	strh r0, [r2, #2]
	ldrb r2, [r3, #4]
	ldr r0, _080A50B8 @ =gMain
	ldrh r1, [r0, #0xc]
	movs r0, #0x10
	ands r0, r1
	adds r1, r2, #0
	adds r1, #0xa
	cmp r0, #0
	bne _080A505A
	adds r1, #1
_080A505A:
	movs r0, #0xfd
	lsls r0, r0, #1
	bl DrawDirect
	movs r3, #0
	mov r8, r3
	mov r7, sb
	adds r7, #5
_080A506A:
	ldr r0, _080A50B4 @ =gMenu
	adds r0, #0x10
	mov r1, r8
	adds r6, r1, r0
	ldrb r1, [r6]
	cmp r1, #0
	beq _080A50FA
	mov r3, r8
	lsls r5, r3, #3
	mov r0, sb
	adds r3, r0, r5
	ldr r4, _080A50A8 @ =gOamCmd
	ldrb r0, [r7, #1]
	strh r0, [r4]
	ldrb r2, [r7, #2]
	strh r2, [r4, #2]
	movs r0, #0xe8
	lsls r0, r0, #8
	strh r0, [r4, #8]
	cmp r1, #0x33
	bhi _080A50CA
	mov r1, r8
	cmp r1, #2
	bne _080A50BC
	ldrb r0, [r7]
	adds r1, r0, #0
	adds r1, #0xa
	movs r0, #0xfd
	lsls r0, r0, #1
	b _080A50F6
	.align 2, 0
_080A50A8: .4byte gOamCmd
_080A50AC: .4byte gUnk_08128C94
_080A50B0: .4byte gUnk_08128C14
_080A50B4: .4byte gMenu
_080A50B8: .4byte gMain
_080A50BC:
	ldrb r0, [r6]
	adds r0, #9
	ldrb r3, [r3, #5]
	adds r1, r0, r3
	movs r0, #0xfd
	lsls r0, r0, #1
	b _080A50F6
_080A50CA:
	ldr r3, _080A50E0 @ =0x0000EB80
	adds r0, r5, r3
	strh r0, [r4, #8]
	cmp r1, #0x3d
	beq _080A50E4
	cmp r1, #0x3e
	bne _080A50EA
	adds r0, r2, #0
	adds r0, #8
	b _080A50E8
	.align 2, 0
_080A50E0: .4byte 0x0000EB80
_080A50E4:
	adds r0, r2, #0
	adds r0, #0xd
_080A50E8:
	strh r0, [r4, #2]
_080A50EA:
	ldr r0, _080A5190 @ =gSpriteAnimations_322
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r1, [r0]
	ldr r0, _080A5194 @ =0x00000141
_080A50F6:
	bl DrawDirect
_080A50FA:
	adds r7, #8
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #0xf
	bls _080A506A
	ldr r4, _080A5198 @ =gMenu
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	beq _080A5132
	ldr r2, _080A519C @ =gOamCmd
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	adds r0, r0, r1
	strh r0, [r2, #8]
	mov r3, sb
	adds r3, #0x10
	ldrb r0, [r3, #6]
	adds r0, #9
	strh r0, [r2]
	ldrb r0, [r3, #7]
	adds r0, #7
	strh r0, [r2, #2]
	movs r0, #0
	movs r1, #1
	bl DrawDirect
_080A5132:
	ldrb r0, [r4, #0x13]
	cmp r0, #0x3f
	bne _080A5188
	mov r3, sb
	adds r3, #0x18
	ldr r1, _080A519C @ =gOamCmd
	ldrb r0, [r3, #6]
	adds r0, #8
	strh r0, [r1]
	ldrb r0, [r3, #7]
	adds r0, #8
	strh r0, [r1, #2]
	ldr r0, _080A51A0 @ =gSave
	adds r0, #0xc2
	ldrh r4, [r0]
	movs r0, #0
	mov r8, r0
	adds r5, r1, #0
_080A5156:
	adds r0, r4, #0
	movs r1, #0xa
	bl __modsi3
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	strh r0, [r5, #8]
	movs r0, #0
	movs r1, #1
	bl DrawDirect
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	adds r4, r0, #0
	ldrh r0, [r5]
	subs r0, #8
	strh r0, [r5]
	movs r3, #1
	add r8, r3
	mov r0, r8
	cmp r0, #2
	bls _080A5156
_080A5188:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A5190: .4byte gSpriteAnimations_322
_080A5194: .4byte 0x00000141
_080A5198: .4byte gMenu
_080A519C: .4byte gOamCmd
_080A51A0: .4byte gSave
.else
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _080A5890 @ =gOamCmd
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2, #4]
	strh r1, [r2, #6]
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	ldr r1, _080A5894 @ =gUnk_08128C94
	mov sb, r1
	cmp r0, #0
	bne _080A581A
	ldr r3, _080A5898 @ =gUnk_08128C14
	mov sb, r3
_080A581A:
	ldr r0, _080A589C @ =gMenu
	ldrb r0, [r0, #3]
	lsls r0, r0, #3
	mov r1, sb
	adds r3, r1, r0
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r2, #8]
	ldrb r0, [r3, #6]
	strh r0, [r2]
	ldrb r0, [r3, #7]
	strh r0, [r2, #2]
	ldrb r2, [r3, #4]
	ldr r0, _080A58A0 @ =gMain
	ldrh r1, [r0, #0xc]
	movs r0, #0x10
	ands r0, r1
	adds r1, r2, #0
	adds r1, #0xa
	cmp r0, #0
	bne _080A5846
	adds r1, #1
_080A5846:
	ldr r0, _080A58A4 @ =0x000001FB
	bl DrawDirect
	movs r3, #0
	mov r8, r3
	mov r7, sb
	adds r7, #5
_080A5854:
	ldr r0, _080A589C @ =gMenu
	adds r0, #0x10
	mov r1, r8
	adds r6, r1, r0
	ldrb r1, [r6]
	cmp r1, #0
	beq _080A58E8
	mov r3, r8
	lsls r5, r3, #3
	mov r0, sb
	adds r3, r0, r5
	ldr r4, _080A5890 @ =gOamCmd
	ldrb r0, [r7, #1]
	strh r0, [r4]
	ldrb r2, [r7, #2]
	strh r2, [r4, #2]
	movs r0, #0xe8
	lsls r0, r0, #8
	strh r0, [r4, #8]
	cmp r1, #0x33
	bhi _080A58B8
	mov r1, r8
	cmp r1, #2
	bne _080A58A8
	ldrb r0, [r7]
	adds r1, r0, #0
	adds r1, #0xa
	ldr r0, _080A58A4 @ =0x000001FB
	b _080A58E4
	.align 2, 0
_080A5890: .4byte gOamCmd
_080A5894: .4byte gUnk_08128C94
_080A5898: .4byte gUnk_08128C14
_080A589C: .4byte gMenu
_080A58A0: .4byte gMain
_080A58A4: .4byte 0x000001FB
_080A58A8:
	ldrb r0, [r6]
	adds r0, #9
	ldrb r3, [r3, #5]
	adds r1, r0, r3
	ldr r0, _080A58B4 @ =0x000001FB
	b _080A58E4
	.align 2, 0
_080A58B4: .4byte 0x000001FB
_080A58B8:
	ldr r3, _080A58CC @ =0x0000EB80
	adds r0, r5, r3
	strh r0, [r4, #8]
	cmp r1, #0x3d
	beq _080A58D0
	cmp r1, #0x3e
	bne _080A58D6
	adds r0, r2, #0
	adds r0, #8
	b _080A58D4
	.align 2, 0
_080A58CC: .4byte 0x0000EB80
_080A58D0:
	adds r0, r2, #0
	adds r0, #0xd
_080A58D4:
	strh r0, [r4, #2]
_080A58D6:
	ldr r0, _080A5980 @ =gSpriteAnimations_322
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r1, [r0]
	movs r0, #0xa1
	lsls r0, r0, #1
_080A58E4:
	bl DrawDirect
_080A58E8:
	adds r7, #8
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #0xf
	bls _080A5854
	ldr r4, _080A5984 @ =gMenu
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	beq _080A5920
	ldr r2, _080A5988 @ =gOamCmd
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	adds r0, r0, r1
	strh r0, [r2, #8]
	mov r3, sb
	adds r3, #0x10
	ldrb r0, [r3, #6]
	adds r0, #9
	strh r0, [r2]
	ldrb r0, [r3, #7]
	adds r0, #7
	strh r0, [r2, #2]
	movs r0, #0
	movs r1, #1
	bl DrawDirect
_080A5920:
	ldrb r0, [r4, #0x13]
	cmp r0, #0x3f
	bne _080A5976
	mov r3, sb
	adds r3, #0x18
	ldr r1, _080A5988 @ =gOamCmd
	ldrb r0, [r3, #6]
	adds r0, #8
	strh r0, [r1]
	ldrb r0, [r3, #7]
	adds r0, #8
	strh r0, [r1, #2]
	ldr r0, _080A598C @ =gSave
	adds r0, #0xc2
	ldrh r4, [r0]
	movs r0, #0
	mov r8, r0
	adds r5, r1, #0
_080A5944:
	adds r0, r4, #0
	movs r1, #0xa
	bl __modsi3
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	strh r0, [r5, #8]
	movs r0, #0
	movs r1, #1
	bl DrawDirect
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	adds r4, r0, #0
	ldrh r0, [r5]
	subs r0, #8
	strh r0, [r5]
	movs r3, #1
	add r8, r3
	mov r0, r8
	cmp r0, #2
	bls _080A5944
_080A5976:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A5980: .4byte gSpriteAnimations_322
_080A5984: .4byte gMenu
_080A5988: .4byte gOamCmd
_080A598C: .4byte gSave
.endif
	.syntax divided
