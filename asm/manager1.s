	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08057174
sub_08057174: @ 0x08057174
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	bl GetCurrentRoomProperty
	adds r3, r0, #0
	ldrb r0, [r3]
	cmp r0, #0xff
	bne _08057188
	b _0805728A
_08057188:
	ldr r1, _080571E8 @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _08057194
	adds r0, #0xf
_08057194:
	asrs r6, r0, #4
	movs r7, #0x32
	ldrsh r0, [r1, r7]
	cmp r0, #0
	bge _080571A0
	adds r0, #0xf
_080571A0:
	asrs r5, r0, #4
	movs r0, #0x21
	adds r0, r0, r4
	mov ip, r0
_080571A8:
	ldrb r0, [r3]
	mov r1, ip
	ldrb r1, [r1]
	cmp r0, r1
	beq _08057282
	ldr r1, _080571EC @ =gRoomControls
	ldrh r0, [r1, #6]
	lsrs r0, r0, #4
	ldrb r7, [r3, #1]
	adds r2, r0, r7
	ldrh r0, [r1, #8]
	lsrs r0, r0, #4
	ldrb r1, [r3, #2]
	adds r0, r0, r1
	subs r0, r5, r0
	ldrb r7, [r3, #4]
	cmp r0, r7
	bhs _08057282
	subs r0, r6, r2
	ldrb r1, [r3, #3]
	cmp r0, r1
	bhs _08057282
	ldrb r0, [r3]
	subs r0, #1
	cmp r0, #5
	bhi _08057268
	lsls r0, r0, #2
	ldr r1, _080571F0 @ =_080571F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080571E8: .4byte gLinkEntity
_080571EC: .4byte gRoomControls
_080571F0: .4byte _080571F4
_080571F4: @ jump table
	.4byte _0805720C @ case 0
	.4byte _08057220 @ case 1
	.4byte _08057258 @ case 2
	.4byte _08057246 @ case 3
	.4byte _08057216 @ case 4
	.4byte _08057236 @ case 5
_0805720C:
	mov r2, ip
	ldrb r0, [r2]
	cmp r0, #2
	bne _08057268
	b _08057260
_08057216:
	mov r7, ip
	ldrb r0, [r7]
	cmp r0, #6
	bne _08057268
	b _08057260
_08057220:
	mov r0, ip
	ldrb r1, [r0]
	cmp r1, #0
	bne _08057268
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	b _08057268
_08057236:
	mov r2, ip
	ldrb r1, [r2]
	cmp r1, #0
	bne _08057268
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	b _08057268
_08057246:
	mov r7, ip
	ldrb r1, [r7]
	cmp r1, #0
	bne _08057268
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	str r1, [r4, #0x34]
	b _08057268
_08057258:
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #4
	bne _08057268
_08057260:
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #9
	strb r0, [r4, #0xe]
_08057268:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _08057282
	movs r0, #8
	strb r0, [r4, #0xf]
	ldrb r0, [r3]
	mov r2, ip
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #1
	strb r0, [r1]
	b _0805728A
_08057282:
	adds r3, #5
	ldrb r0, [r3]
	cmp r0, #0xff
	bne _080571A8
_0805728A:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0805728C
sub_0805728C: @ 0x0805728C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080572CA
	movs r0, #8
	strb r0, [r4, #0xf]
	ldr r2, _080572CC @ =gScreen
	ldr r3, _080572D0 @ =gUnk_08107C1C
	ldrb r0, [r4, #0xe]
	adds r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r3
	ldrh r0, [r0]
	adds r2, #0x68
	strh r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0xa
	bne _080572CA
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #0
	strb r0, [r1]
_080572CA:
	pop {r4, pc}
	.align 2, 0
_080572CC: .4byte gScreen
_080572D0: .4byte gUnk_08107C1C

	thumb_func_start sub_080572D4
sub_080572D4: @ 0x080572D4
	push {r4, r5, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xf]
	subs r0, #1
	strb r0, [r3, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08057320
	movs r0, #8
	strb r0, [r3, #0xf]
	ldr r5, _08057324 @ =gScreen
	ldr r2, _08057328 @ =gUnk_08107C1C
	ldrb r0, [r3, #0xe]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r3, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r5, #0
	adds r0, #0x68
	movs r4, #0
	strh r2, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0xff
	bne _08057320
	movs r0, #1
	strb r0, [r3, #0xc]
	adds r0, r3, #0
	adds r0, #0x22
	strb r4, [r0]
	subs r0, #1
	strb r4, [r0]
	adds r0, r5, #0
	adds r0, #0x6c
	strb r4, [r0]
_08057320:
	pop {r4, r5, pc}
	.align 2, 0
_08057324: .4byte gScreen
_08057328: .4byte gUnk_08107C1C

	thumb_func_start sub_0805732C
sub_0805732C: @ 0x0805732C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r2, _08057390 @ =gUnk_03003DE4
	ldrb r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _08057394 @ =gUnk_02017AA0
	adds r4, r0, r1
	movs r3, #0
	mov ip, r2
	mov r8, r1
	ldr r0, _08057398 @ =gSineTable
	mov sb, r0
	movs r2, #0xff
	ldr r1, _0805739C @ =gScreen
_08057354:
	adds r0, r5, r3
	ands r0, r2
	lsls r0, r0, #1
	add r0, sb
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r0, r6, r0
	lsrs r0, r0, #8
	ldrh r7, [r1, #0x2e]
	adds r0, r0, r7
	strh r0, [r4]
	adds r4, #2
	adds r3, #1
	cmp r3, #0x9f
	bls _08057354
	mov r0, ip
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	add r0, r8
	ldr r1, _080573A0 @ =0x0400001C
	ldr r2, _080573A4 @ =0xA2600001
	bl sub_0805622C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08057390: .4byte gUnk_03003DE4
_08057394: .4byte gUnk_02017AA0
_08057398: .4byte gSineTable
_0805739C: .4byte gScreen
_080573A0: .4byte 0x0400001C
_080573A4: .4byte 0xA2600001

	thumb_func_start nullsub_494
nullsub_494: @ 0x080573A8
	bx lr
	.align 2, 0

	thumb_func_start sub_080573AC
sub_080573AC: @ 0x080573AC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r2, _08057434 @ =gRoomControls
	ldr r0, [r2, #0x28]
	ldr r1, _08057438 @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r2, #0x28]
	ldr r0, [r2, #0x2c]
	ldr r1, _0805743C @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r2, #0x2c]
	ldr r5, _08057440 @ =gScreen
	movs r1, #0xa
	ldrsh r0, [r2, r1]
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #1
	ldrh r1, [r2, #0x2a]
	adds r0, r0, r1
	strh r0, [r5, #0x2e]
	movs r1, #0xc
	ldrsh r0, [r2, r1]
	ldrh r1, [r2, #8]
	subs r0, r0, r1
	asrs r0, r0, #1
	ldrh r2, [r2, #0x2e]
	adds r0, r0, r2
	strh r0, [r5, #0x30]
	ldr r2, _08057444 @ =gSineTable
	ldr r4, _08057448 @ =gScreenTransition
	ldr r1, [r4]
	ldrb r0, [r4]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r0, r0, #5
	adds r0, #0x10
	bl sub_0805732C
	adds r0, r6, #0
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r0, #0
	bne _08057430
	ldr r0, [r4]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _08057430
	adds r2, r6, #0
	adds r2, #0x24
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0805744C @ =gUnk_08107C30
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x68
	strh r1, [r0]
_08057430:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08057434: .4byte gRoomControls
_08057438: .4byte 0xFFFFE000
_0805743C: .4byte 0xFFFFF000
_08057440: .4byte gScreen
_08057444: .4byte gSineTable
_08057448: .4byte gScreenTransition
_0805744C: .4byte gUnk_08107C30

	thumb_func_start sub_08057450
sub_08057450: @ 0x08057450
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r4, _08057504 @ =gScreen
	movs r0, #0x10
	strh r0, [r4, #0x2e]
	ldr r0, _08057508 @ =gRoomControls
	movs r2, #0xc
	ldrsh r1, [r0, r2]
	ldrh r0, [r0, #8]
	subs r1, r1, r0
	asrs r1, r1, #2
	movs r2, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r4, #0x30]
	cmp r1, #0
	bge _08057474
	adds r1, #0x3f
_08057474:
	asrs r0, r1, #6
	lsls r0, r0, #9
	ldr r1, _0805750C @ =gUnk_02001A40
	adds r1, r0, r1
	str r1, [r4, #0x34]
	ldr r0, [r3, #0x34]
	cmp r0, r1
	beq _0805748A
	str r1, [r3, #0x34]
	movs r0, #1
	strh r0, [r4, #0x32]
_0805748A:
	adds r0, r3, #0
	adds r0, #0x22
	ldrb r0, [r0]
	ldr r5, _08057510 @ =gScreenTransition
	cmp r0, #0
	bne _080574BE
	ldr r0, [r5]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _080574BE
	adds r2, r3, #0
	adds r2, #0x24
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08057514 @ =gUnk_08107C30
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x68
	strh r1, [r0]
_080574BE:
	ldr r0, [r5]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08057502
	adds r0, r3, #0
	adds r0, #0x23
	ldrb r1, [r0]
	lsls r1, r1, #5
	ldr r2, _08057518 @ =gUnk_085B4180
	adds r1, r1, r2
	movs r5, #0
	adds r6, r0, #0
	adds r4, r1, #0
	adds r4, #0xe
_080574DC:
	adds r0, r5, #0
	adds r0, #0x87
	ldrh r1, [r4]
	bl sub_0801D79C
	adds r0, r5, #0
	adds r0, #0x8c
	ldrh r1, [r4, #0xa]
	bl sub_0801D79C
	adds r4, #2
	adds r5, #1
	cmp r5, #3
	bls _080574DC
	ldrb r0, [r6]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r6]
_08057502:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08057504: .4byte gScreen
_08057508: .4byte gRoomControls
_0805750C: .4byte gUnk_02001A40
_08057510: .4byte gScreenTransition
_08057514: .4byte gUnk_08107C30
_08057518: .4byte gUnk_085B4180
