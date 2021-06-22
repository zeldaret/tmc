	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start GyorgFemaleEye
GyorgFemaleEye: @ 0x08048988
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _08048998
	bl DeleteThisEntity
_08048998:
	ldr r4, _080489B0 @ =gUnk_080D1F64
	adds r0, r5, #0
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080489B0: .4byte gUnk_080D1F64

	thumb_func_start sub_080489B4
sub_080489B4: @ 0x080489B4
	push {lr}
	ldr r2, _080489C8 @ =gUnk_080D1F7C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080489C8: .4byte gUnk_080D1F7C

	thumb_func_start sub_080489CC
sub_080489CC: @ 0x080489CC
.ifdef EU
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x45
	adds r0, r0, r5
	mov ip, r0
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _080487F4
	ldr r3, [r5, #0x50]
	adds r2, r3, #0
	adds r2, #0x7c
	movs r0, #1
	ldrb r1, [r5, #0xa]
	lsls r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r4, [r3, #0x64]
	ldrb r0, [r5, #0xa]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x18
	adds r1, r1, r0
	ldr r0, [r5, #0x4c]
	str r0, [r1]
	ldr r2, _08048804 @ =gPlayerEntity
	movs r6, #0x2e
	ldrsh r0, [r2, r6]
	movs r6, #0x2e
	ldrsh r1, [r5, r6]
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r4, #0x38]
	ldr r4, [r3, #0x64]
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r4, #0x3a]
	ldr r2, [r3, #0x64]
	adds r3, r5, #0
	adds r3, #0x3e
	ldrb r0, [r3]
	movs r1, #0x10
	eors r0, r1
	strb r0, [r3]
	adds r2, #0x3c
	strb r0, [r2]
_080487F4:
	movs r0, #0xff
	mov r6, ip
	strb r0, [r6]
	ldr r1, _08048808 @ =gUnk_080D1F64
	adds r0, r5, #0
	bl sub_0804AA30
	pop {r4, r5, r6, pc}
	.align 2, 0
_08048804: .4byte gPlayerEntity
_08048808: .4byte gUnk_080D1F64
.else
	push {r4, r5, r6, lr}
	mov ip, r0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080489DA
	b _08048AD8
_080489DA:
	mov r0, ip
	ldr r4, [r0, #0x50]
	adds r0, r4, #0
	adds r0, #0x78
	ldrb r0, [r0]
	mov r2, ip
	ldrb r1, [r2, #0xa]
	asrs r0, r1
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _08048AD8
	adds r2, r4, #0
	adds r2, #0x7c
	adds r0, r3, #0
	lsls r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	mov r0, ip
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	subs r0, #4
	cmp r0, #0x16
	bhi _08048AD0
	lsls r0, r0, #2
	ldr r1, _08048A1C @ =_08048A20
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08048A1C: .4byte _08048A20
_08048A20: @ jump table
	.4byte _08048A7C @ case 0
	.4byte _08048A7C @ case 1
	.4byte _08048A7C @ case 2
	.4byte _08048AD0 @ case 3
	.4byte _08048A7C @ case 4
	.4byte _08048A7C @ case 5
	.4byte _08048A7C @ case 6
	.4byte _08048A7C @ case 7
	.4byte _08048A7C @ case 8
	.4byte _08048A7C @ case 9
	.4byte _08048AD0 @ case 10
	.4byte _08048AD0 @ case 11
	.4byte _08048A7C @ case 12
	.4byte _08048A7C @ case 13
	.4byte _08048A7C @ case 14
	.4byte _08048AD0 @ case 15
	.4byte _08048AD0 @ case 16
	.4byte _08048AD0 @ case 17
	.4byte _08048AD0 @ case 18
	.4byte _08048AD0 @ case 19
	.4byte _08048A7C @ case 20
	.4byte _08048A7C @ case 21
	.4byte _08048A7C @ case 22
_08048A7C:
	ldr r3, [r4, #0x64]
	mov r5, ip
	ldrb r0, [r5, #0xa]
	lsls r0, r0, #2
	adds r1, r3, #0
	adds r1, #0x18
	adds r1, r1, r0
	ldr r0, [r5, #0x4c]
	str r0, [r1]
	ldr r2, _08048ACC @ =gPlayerEntity
	movs r6, #0x2e
	ldrsh r0, [r2, r6]
	movs r6, #0x2e
	ldrsh r1, [r5, r6]
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r3, #0x38]
	ldr r3, [r4, #0x64]
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r3, #0x3a]
	ldr r2, [r4, #0x64]
	mov r3, ip
	adds r3, #0x3e
	ldrb r0, [r3]
	movs r1, #0x10
	eors r0, r1
	strb r0, [r3]
	adds r2, #0x3c
	strb r0, [r2]
	b _08048AD8
	.align 2, 0
_08048ACC: .4byte gPlayerEntity
_08048AD0:
	ldr r0, [r4, #0x64]
	adds r0, #0x3c
	movs r1, #0xff
	strb r1, [r0]
_08048AD8:
	mov r1, ip
	adds r1, #0x45
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08048AEC @ =gUnk_080D1F64
	mov r0, ip
	bl sub_0804AA30
	pop {r4, r5, r6, pc}
	.align 2, 0
_08048AEC: .4byte gUnk_080D1F64
.endif

	thumb_func_start sub_08048AF0
sub_08048AF0: @ 0x08048AF0
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0xff
	strb r1, [r0, #0x14]
	ldrb r3, [r0, #0x1b]
	movs r2, #0x3f
	adds r1, r2, #0
	ands r1, r3
	movs r3, #0x80
	orrs r1, r3
	strb r1, [r0, #0x1b]
	ldrb r1, [r0, #0x19]
	ands r2, r1
	orrs r2, r3
	strb r2, [r0, #0x19]
	adds r3, r0, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r2, #7
	orrs r1, r2
	strb r1, [r3]
	adds r2, r0, #0
	adds r2, #0x38
	movs r1, #2
	strb r1, [r2]
	bl sub_08048D20
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08048B2C
sub_08048B2C: @ 0x08048B2C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08048D20
	ldr r5, [r4, #0x50]
	adds r0, r5, #0
	bl sub_08048D70
	cmp r0, #0
	beq _08048B62
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bne _08048B52
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0x40
	bl CreateFx
_08048B52:
	ldrb r0, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #0x18]
	b _08048B6C
_08048B62:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_08048B6C:
	adds r0, r5, #0
	adds r0, #0x78
	ldrb r0, [r0]
	ldrb r1, [r4, #0xa]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08048B82
	movs r0, #2
	strb r0, [r4, #0xc]
_08048B82:
	pop {r4, r5, pc}

	thumb_func_start sub_08048B84
sub_08048B84: @ 0x08048B84
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08048BAE
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x1e
	strb r0, [r1]
_08048BAE:
	pop {r4, pc}

	thumb_func_start sub_08048BB0
sub_08048BB0: @ 0x08048BB0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x50]
	adds r0, r2, #0
	adds r0, #0x78
	ldrb r3, [r0]
	ldrb r1, [r4, #0xa]
	adds r0, r3, #0
	asrs r0, r1
	movs r6, #1
	ands r0, r6
	cmp r0, #0
	bne _08048C34
	adds r0, r2, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _08048BFC
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldr r1, _08048BF8 @ =gUnk_080D2030
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #3
	ldrb r2, [r4, #0xa]
	adds r0, r0, r2
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl InitializeAnimation
	b _08048CEA
	.align 2, 0
_08048BF8: .4byte gUnk_080D2030
_08048BFC:
	strb r6, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	ldr r1, _08048C30 @ =gUnk_080D2010
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #3
	ldrb r2, [r4, #0xa]
	adds r0, r0, r2
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl InitializeAnimation
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0x40
	bl CreateFx
	b _08048CEA
	.align 2, 0
_08048C30: .4byte gUnk_080D2010
_08048C34:
	adds r5, r2, #0
	adds r5, #0x80
	ldrb r0, [r5]
	asrs r0, r1
	ands r0, r6
	cmp r0, #0
	beq _08048CBC
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0x13
	bhi _08048C6C
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xf4
	strb r0, [r1]
	adds r1, #2
	movs r0, #0x89
	strb r0, [r1]
	ldrb r1, [r2, #0x14]
	lsrs r1, r1, #6
	adds r1, #0x14
	adds r0, r4, #0
	bl InitializeAnimation
	ldr r0, _08048CB4 @ =0x00000119
	bl SoundReq
_08048C6C:
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08048CEA
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x1e
	strb r0, [r1]
	ldr r1, _08048CB8 @ =gUnk_080D2010
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #3
	ldrb r2, [r4, #0xa]
	adds r0, r0, r2
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl InitializeAnimation
	adds r0, r4, #0
	movs r1, #7
	bl UpdateAnimationVariableFrames
	adds r1, r6, #0
	ldrb r4, [r4, #0xa]
	lsls r1, r4
	ldrb r0, [r5]
	bics r0, r1
	strb r0, [r5]
	b _08048CEA
	.align 2, 0
_08048CB4: .4byte 0x00000119
_08048CB8: .4byte gUnk_080D2010
_08048CBC:
	cmp r3, #0xff
	bne _08048CEA
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	subs r0, #0x10
	cmp r0, #3
	bls _08048CE4
	ldrb r1, [r4, #0x14]
	adds r1, #0x10
	adds r0, r4, #0
	bl InitializeAnimation
	bl Random
	movs r1, #0x1c
	ands r1, r0
	adds r0, r4, #0
	bl UpdateAnimationVariableFrames
_08048CE4:
	adds r0, r4, #0
	bl GetNextFrame
_08048CEA:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08048CEC
sub_08048CEC: @ 0x08048CEC
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08048D1A
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r1, _08048D1C @ =gUnk_080D2010
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #3
	ldrb r2, [r4, #0xa]
	adds r0, r0, r2
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl InitializeAnimation
_08048D1A:
	pop {r4, pc}
	.align 2, 0
_08048D1C: .4byte gUnk_080D2010

	thumb_func_start sub_08048D20
sub_08048D20: @ 0x08048D20
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #6
	ldrb r1, [r4, #0x14]
	cmp r0, r1
	beq _08048D60
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0xa]
	lsls r3, r0, #3
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r0, _08048D64 @ =gUnk_080D1F90
	adds r1, r1, r0
	ldr r2, _08048D68 @ =gRoomControls
	ldrh r0, [r2, #6]
	ldrh r5, [r1]
	adds r0, r0, r5
	strh r0, [r4, #0x2e]
	ldrh r0, [r2, #8]
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	ldr r1, _08048D6C @ =gUnk_080D2010
	ldrb r0, [r4, #0xa]
	adds r0, r0, r3
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl InitializeAnimation
_08048D60:
	pop {r4, r5, pc}
	.align 2, 0
_08048D64: .4byte gUnk_080D1F90
_08048D68: .4byte gRoomControls
_08048D6C: .4byte gUnk_080D2010

	thumb_func_start sub_08048D70
sub_08048D70: @ 0x08048D70
	push {lr}
	adds r1, r0, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048D8E
	ldr r1, [r1, #0x64]
	ldr r0, [r1, #8]
	cmp r0, #0
	bne _08048D86
	ldr r0, [r1, #0xc]
_08048D86:
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048D92
_08048D8E:
	movs r0, #1
	b _08048D94
_08048D92:
	movs r0, #0
_08048D94:
	pop {pc}
	.align 2, 0
