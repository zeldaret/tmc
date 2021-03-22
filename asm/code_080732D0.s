	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080732D0
sub_080732D0: @ 0x080732D0
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	bl sub_080002B8
	cmp r0, #0x28
	beq _080732EE
	movs r0, #0
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F69C
	b _08073328
_080732EE:
	ldrb r0, [r4, #0xd]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xd]
	strh r1, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #0x70
	movs r2, #1
	movs r3, #0
	bl CreateObjectWithParent
	ldr r0, _08073318 @ =gPlayerState
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #7
	bne _08073320
	ldr r0, _0807331C @ =0x00000187
	bl SoundReq
	b _08073328
	.align 2, 0
_08073318: .4byte gPlayerState
_0807331C: .4byte 0x00000187
_08073320:
	movs r0, #0xc4
	lsls r0, r0, #1
	bl SoundReq
_08073328:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0807332C
sub_0807332C: @ 0x0807332C
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	ldr r0, _08073344 @ =gPlayerState
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #7
	bne _08073348
	movs r0, #0
	b _0807334A
	.align 2, 0
_08073344: .4byte gPlayerState
_08073348:
	movs r0, #0x1c
_0807334A:
	strb r0, [r4, #0x15]
	ldrh r1, [r4, #0x2e]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0xf
	beq _08073386
	ldr r0, _08073368 @ =gPlayerState
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #7
	bne _0807336C
	movs r0, #2
	strb r0, [r4, #0x14]
	movs r0, #4
	b _0807337C
	.align 2, 0
_08073368: .4byte gPlayerState
_0807336C:
	movs r0, #6
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x15]
	cmp r0, #0x18
	bls _0807337E
	subs r0, #1
	movs r1, #0x1f
	ands r0, r1
_0807337C:
	strb r0, [r4, #0x15]
_0807337E:
	adds r0, r4, #0
	bl sub_0806F69C
	b _080733B6
_08073386:
	ldr r0, _0807339C @ =gPlayerState
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _080733A4
	ldr r0, _080733A0 @ =gRoomControls
	str r4, [r0, #0x30]
	bl sub_080791BC
	b _080733B6
	.align 2, 0
_0807339C: .4byte gPlayerState
_080733A0: .4byte gRoomControls
_080733A4:
	ldr r0, _080733B8 @ =gMain
	movs r1, #3
	strb r1, [r0, #4]
	movs r1, #1
	strb r1, [r0, #0xb]
	movs r0, #5
	movs r1, #8
	bl DoFade
_080733B6:
	pop {r4, pc}
	.align 2, 0
_080733B8: .4byte gMain

	thumb_func_start sub_080733BC
sub_080733BC: @ 0x080733BC
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	ldrh r1, [r4, #0x2e]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #8
	bne _080733FC
	movs r0, #0x10
	strb r0, [r4, #0x15]
	movs r0, #4
	strb r0, [r4, #0x14]
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _080733FC
	bl DeleteEntity
	movs r0, #0
	str r0, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	bne _080733F6
	adds r0, r4, #0
	bl sub_0807AABC
	b _080733FC
_080733F6:
	adds r0, r4, #0
	bl sub_0807AA80
_080733FC:
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	adds r0, #0x7e
	ldrh r1, [r0]
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bne _08073418
	ldr r0, _0807341C @ =gRoomControls
	str r4, [r0, #0x30]
	bl sub_0807921C
_08073418:
	pop {r4, pc}
	.align 2, 0
_0807341C: .4byte gRoomControls

	thumb_func_start PlayerParachute
PlayerParachute: @ 0x08073420
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08078EFC
	cmp r0, #0
	bne _0807345E
	bl sub_0807A1B8
	ldrb r2, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x19]
	ldr r0, _08073460 @ =gPlayerState
	adds r0, #0xa8
	movs r1, #8
	strb r1, [r0]
	ldr r1, _08073464 @ =gUnk_0811BC08
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
_0807345E:
	pop {r4, pc}
	.align 2, 0
_08073460: .4byte gPlayerState
_08073464: .4byte gUnk_0811BC08

	thumb_func_start sub_08073468
sub_08073468: @ 0x08073468
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _080734CC @ =gPlayerState
	movs r1, #0
	movs r0, #0xe0
	lsls r0, r0, #3
	strh r0, [r5, #8]
	strb r1, [r5, #2]
	ldr r0, _080734D0 @ =0xFFFF0000
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0xf0
	lsls r0, r0, #1
	str r0, [r4, #0x7c]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	ldr r1, [r5, #0x30]
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _080734AC
	orrs r1, r2
	str r1, [r5, #0x30]
	adds r0, r4, #0
	movs r1, #0x61
	movs r2, #0
	movs r3, #0
	bl CreateObjectWithParent
_080734AC:
	bl ResetPlayer
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bgt _080734C0
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	bne _080734C8
_080734C0:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
_080734C8:
	pop {r4, r5, pc}
	.align 2, 0
_080734CC: .4byte gPlayerState
_080734D0: .4byte 0xFFFF0000

	thumb_func_start sub_080734D4
sub_080734D4: @ 0x080734D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080734FC @ =0xFFFFF000
	bl sub_08003FC4
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bgt _080734EE
	ldr r0, _08073500 @ =gPlayerState
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	bne _080734FA
_080734EE:
	movs r0, #0x92
	lsls r0, r0, #0xb
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
_080734FA:
	pop {r4, pc}
	.align 2, 0
_080734FC: .4byte 0xFFFFF000
_08073500: .4byte gPlayerState

	thumb_func_start sub_08073504
sub_08073504: @ 0x08073504
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	movs r1, #0x80
	lsls r1, r1, #7
	cmp r0, #0
	bge _08073516
	movs r1, #0x80
	lsls r1, r1, #4
_08073516:
	adds r0, r4, #0
	bl sub_08003FC4
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bge _08073576
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08073576
	ldrb r0, [r4, #0xd]
	adds r0, #1
	movs r2, #0
	strb r0, [r4, #0xd]
	adds r1, r4, #0
	adds r1, #0x80
	ldrb r0, [r4, #0x15]
	lsls r0, r0, #8
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x87
	strb r2, [r0]
	subs r0, #1
	strb r2, [r0]
	ldr r0, _08073580 @ =gPlayerState
	movs r1, #0xe1
	lsls r1, r1, #3
	strh r1, [r0, #8]
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	bne _08073576
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #6
	strb r0, [r4, #0xd]
	movs r0, #0x10
	strh r0, [r4, #0x24]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #0xa9
	lsls r0, r0, #1
	bl SoundReq
_08073576:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, pc}
	.align 2, 0
_08073580: .4byte gPlayerState

	thumb_func_start sub_08073584
sub_08073584: @ 0x08073584
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, _080735DC @ =gPlayerState
	adds r0, r2, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r5, #0x80
	adds r0, r5, #0
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	bne _080735C0
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _080735C0
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080735C0
	ldr r0, [r6, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	bne _080735E0
_080735C0:
	ldrb r0, [r6, #2]
	movs r1, #0x40
	orrs r1, r0
	strb r1, [r6, #2]
	bl sub_0807921C
	adds r0, r4, #0
	bl sub_08073904
	movs r0, #0xe6
	lsls r0, r0, #3
	strh r0, [r6, #8]
	b _08073794
	.align 2, 0
_080735DC: .4byte gPlayerState
_080735E0:
	ldr r0, _0807360C @ =gUnk_0200AF00
	adds r0, #0x2f
	movs r1, #1
	strb r1, [r0]
	movs r0, #0
	bl sub_0807A2F8
	cmp r0, #0
	beq _08073610
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x14]
	movs r0, #6
	ands r0, r1
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	b _08073794
	.align 2, 0
_0807360C: .4byte gUnk_0200AF00
_08073610:
	ldr r0, _08073620 @ =gArea
	ldrb r0, [r0, #1]
	cmp r0, #0x10
	bne _08073624
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	b _08073626
	.align 2, 0
_08073620: .4byte gArea
_08073624:
	strh r5, [r4, #0x24]
_08073626:
	ldr r3, _08073650 @ =gPlayerState
	ldrb r1, [r3, #0xd]
	movs r0, #0x80
	ands r0, r1
	adds r2, r4, #0
	adds r2, #0x80
	cmp r0, #0
	bne _0807365A
	ldrb r0, [r4, #0x15]
	cmp r0, r1
	beq _0807365A
	ldrb r1, [r3, #0xd]
	subs r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0xf
	bgt _08073654
	ldr r0, [r2]
	subs r0, #0x20
	b _08073658
	.align 2, 0
_08073650: .4byte gPlayerState
_08073654:
	ldr r0, [r2]
	adds r0, #0x20
_08073658:
	str r0, [r2]
_0807365A:
	ldr r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	bl sub_08079E08
	ldrb r2, [r4, #0x14]
	lsls r3, r2, #2
	ldrb r1, [r4, #0x15]
	cmp r2, #0
	bne _0807367C
	adds r3, #8
	movs r0, #0x1f
	ands r3, r0
	adds r1, #8
	ands r1, r0
_0807367C:
	subs r0, r3, #7
	cmp r0, r1
	bls _08073686
	subs r3, r2, #2
	b _0807368E
_08073686:
	adds r0, r3, #7
	cmp r0, r1
	bhs _08073694
	adds r3, r2, #2
_0807368E:
	movs r0, #7
	ands r3, r0
	b _08073696
_08073694:
	adds r3, r2, #0
_08073696:
	movs r0, #0x87
	adds r0, r0, r4
	mov ip, r0
	ldrb r1, [r4, #0x14]
	cmp r3, r1
	beq _080736A8
	movs r0, #0x14
	mov r2, ip
	strb r0, [r2]
_080736A8:
	strb r3, [r4, #0x14]
	movs r5, #0
	ldr r1, _080736E4 @ =gPlayerState
	ldrb r2, [r1, #0xd]
	lsrs r3, r2, #2
	mov r6, ip
	ldrb r0, [r6]
	adds r6, r1, #0
	cmp r0, #0
	beq _080736CA
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08073736
	ldrb r0, [r4, #0x14]
	cmp r0, r3
	beq _08073736
_080736CA:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _080736FA
	ldrb r2, [r4, #0x14]
	cmp r2, r3
	beq _080736FA
	movs r0, #4
	eors r0, r3
	cmp r2, r0
	bne _080736E8
	movs r5, #2
	b _080736FA
	.align 2, 0
_080736E4: .4byte gPlayerState
_080736E8:
	movs r0, #6
	ands r0, r3
	adds r0, #2
	movs r1, #7
	ands r0, r1
	movs r5, #3
	cmp r2, r0
	bne _080736FA
	movs r5, #1
_080736FA:
	ldr r1, _0807371C @ =gUnk_0811BC28
	lsls r0, r5, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r6, #8]
	cmp r0, r1
	bne _0807372C
	ldr r0, _08073720 @ =gArea
	ldrb r0, [r0, #1]
	cmp r0, #0x10
	bne _08073724
	adds r0, r4, #0
	movs r1, #2
	bl sub_080042BA
	b _0807372E
	.align 2, 0
_0807371C: .4byte gUnk_0811BC28
_08073720: .4byte gArea
_08073724:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	b _0807372E
_0807372C:
	strh r0, [r6, #8]
_0807372E:
	adds r0, r4, #0
	adds r0, #0x86
	strb r5, [r0]
	b _08073762
_08073736:
	mov r2, ip
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	ldr r1, _0807375C @ =gUnk_0811BC30
	adds r0, r4, #0
	adds r0, #0x86
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r6, #8]
	cmp r0, r1
	bne _08073760
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	b _08073762
	.align 2, 0
_0807375C: .4byte gUnk_0811BC30
_08073760:
	strh r0, [r6, #8]
_08073762:
	ldr r0, [r4, #0x7c]
	subs r1, r0, #1
	str r1, [r4, #0x7c]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08073784
	ldr r2, _08073780 @ =gPlayerState
	ldrb r1, [r2, #2]
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2, #2]
	bl sub_0807921C
	b _08073794
	.align 2, 0
_08073780: .4byte gPlayerState
_08073784:
	adds r0, r1, #0
	movs r1, #0x14
	bl __divsi3
	ldr r2, _08073798 @ =0x0000FFF8
	adds r1, r2, #0
	subs r1, r1, r0
	strh r1, [r4, #0x36]
_08073794:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08073798: .4byte 0x0000FFF8

	thumb_func_start sub_0807379C
sub_0807379C: @ 0x0807379C
	push {lr}
	adds r2, r0, #0
	ldrh r3, [r2, #0x36]
	movs r0, #0x36
	ldrsh r1, [r2, r0]
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	ble _080737B4
	subs r0, r3, #1
	strh r0, [r2, #0x36]
	b _080737BA
_080737B4:
	ldrb r0, [r2, #0xd]
	adds r0, #1
	strb r0, [r2, #0xd]
_080737BA:
	pop {pc}

	thumb_func_start sub_080737BC
sub_080737BC: @ 0x080737BC
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	bl sub_0806F69C
	ldr r0, [r4, #0x34]
	movs r1, #0x98
	lsls r1, r1, #7
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldrb r1, [r4, #0x15]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080737E2
	ldrh r1, [r4, #0x2e]
	b _080737E4
_080737E2:
	ldrh r1, [r4, #0x32]
_080737E4:
	movs r0, #0xf
	ands r0, r1
	cmp r0, #8
	bne _08073804
	adds r0, r4, #0
	bl sub_080002D0
	cmp r0, #0
	bne _08073804
	ldr r2, _08073808 @ =gPlayerState
	ldrb r1, [r2, #2]
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2, #2]
	bl sub_0807921C
_08073804:
	pop {r4, pc}
	.align 2, 0
_08073808: .4byte gPlayerState

	thumb_func_start sub_0807380C
sub_0807380C: @ 0x0807380C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08073854 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0807382A
	ldrb r0, [r4, #0x14]
	adds r0, #2
	movs r1, #6
	ands r0, r1
	strb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
_0807382A:
	ldr r2, _08073858 @ =gPlayerState
	ldr r1, _0807385C @ =gUnk_0811BC38
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #8]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #0x10
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08073860
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_08003FC4
	b _0807387A
	.align 2, 0
_08073854: .4byte gScreenTransition
_08073858: .4byte gPlayerState
_0807385C: .4byte gUnk_0811BC38
_08073860:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807387A
	movs r0, #7
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
_0807387A:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08073884
sub_08073884: @ 0x08073884
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080738DC @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080738A2
	ldrb r0, [r4, #0x14]
	adds r0, #2
	movs r1, #6
	ands r0, r1
	strb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
_080738A2:
	ldr r2, _080738E0 @ =gPlayerState
	ldr r1, _080738E4 @ =gUnk_0811BC40
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #8]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080738F0
	adds r1, r2, #0
	adds r1, #0x39
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080738EC
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080738E8 @ =gUnk_0813AD88
	adds r0, r0, r1
	bl DoExitTransition
	b _080738F0
	.align 2, 0
_080738DC: .4byte gScreenTransition
_080738E0: .4byte gPlayerState
_080738E4: .4byte gUnk_0811BC40
_080738E8: .4byte gUnk_0813AD88
_080738EC:
	bl sub_08052A4C
_080738F0:
	ldr r1, _08073900 @ =0xFFFFE800
	adds r0, r4, #0
	bl sub_08003FC4
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, pc}
	.align 2, 0
_08073900: .4byte 0xFFFFE800

	thumb_func_start sub_08073904
sub_08073904: @ 0x08073904
	push {lr}
	ldr r3, _0807391C @ =gUnk_0811BC48
	ldr r1, _08073920 @ =gPlayerState
	ldrb r2, [r1, #2]
	movs r1, #7
	ands r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0807391C: .4byte gUnk_0811BC48
_08073920: .4byte gPlayerState

	thumb_func_start sub_08073924
sub_08073924: @ 0x08073924
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08073964 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	bne _08073962
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08073962
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _08073962
	movs r0, #0x40
	strb r0, [r2, #2]
	movs r0, #0xff
	strb r0, [r2, #0xd]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x15]
	bl sub_08077B20
	adds r0, r4, #0
	bl sub_08073968
_08073962:
	pop {r4, pc}
	.align 2, 0
_08073964: .4byte gPlayerState

	thumb_func_start sub_08073968
sub_08073968: @ 0x08073968
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08073998 @ =gPlayerState
	ldrb r1, [r4, #2]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _0807397C
	ldrb r0, [r4, #0xd]
	strb r0, [r5, #0x15]
_0807397C:
	bl sub_08078F24
	ldrb r1, [r4, #5]
	ldrb r0, [r4, #0xb]
	orrs r0, r1
	cmp r0, #0
	bne _080739D4
	ldr r1, [r4, #0x30]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080739A0
	ldr r0, _0807399C @ =0x0000041C
	b _080739BA
	.align 2, 0
_08073998: .4byte gPlayerState
_0807399C: .4byte 0x0000041C
_080739A0:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080739BC
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r1, r0
	cmp r1, #0
	beq _080739B8
	movs r0, #0x81
	lsls r0, r0, #4
	b _080739BA
_080739B8:
	ldr r0, _080739E4 @ =0x0000080C
_080739BA:
	strh r0, [r4, #8]
_080739BC:
	ldr r0, _080739E8 @ =gPlayerState
	ldrb r1, [r0, #2]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _080739CE
	adds r0, r5, #0
	bl sub_0806F948
_080739CE:
	movs r0, #0x7c
	bl SoundReq
_080739D4:
	ldr r2, _080739E8 @ =gPlayerState
	ldrb r1, [r2, #2]
	movs r0, #0xf8
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #2]
	pop {r4, r5, pc}
	.align 2, 0
_080739E4: .4byte 0x0000080C
_080739E8: .4byte gPlayerState

	thumb_func_start sub_080739EC
sub_080739EC: @ 0x080739EC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08073A14 @ =gPlayerState
	ldrb r2, [r1, #2]
	movs r0, #0xc0
	ands r0, r2
	adds r5, r1, #0
	cmp r0, #0
	beq _08073A18
	ldrb r0, [r4, #0x15]
	strb r0, [r5, #0xd]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08073A0E
	movs r0, #0
	strh r0, [r4, #0x2a]
_08073A0E:
	movs r2, #0x80
	lsls r2, r2, #6
	b _08073A48
	.align 2, 0
_08073A14: .4byte gPlayerState
_08073A18:
	movs r2, #0xc
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806F854
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08073A38
	ldrb r1, [r5, #2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r5, #2]
	movs r2, #0x80
	lsls r2, r2, #7
	b _08073A48
_08073A38:
	movs r2, #0x80
	lsls r2, r2, #6
	ldrb r1, [r5, #2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08073A48
	lsrs r2, r2, #1
_08073A48:
	ldrb r1, [r5, #2]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _08073A7E
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08073A7E
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _08073A7E
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	movs r0, #0xa
	strb r0, [r4, #0xe]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	adds r0, r1, #2
	strb r0, [r5, #2]
	movs r0, #0xba
	lsls r0, r0, #1
	strh r0, [r5, #8]
	bl sub_08078F60
	b _08073A90
_08073A7E:
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08073A90
	adds r0, r4, #0
	bl sub_08073AD4
_08073A90:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08073A94
sub_08073A94: @ 0x08073A94
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08073AAE
	adds r0, r4, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	beq _08073AB4
_08073AAE:
	adds r0, r4, #0
	bl sub_08073B60
_08073AB4:
	ldr r0, _08073ACC @ =gPlayerEntity
	ldr r0, [r0, #0x34]
	cmp r0, #0
	beq _08073AC8
	ldr r1, _08073AD0 @ =gPlayerState
	movs r0, #0
	strb r0, [r1, #2]
	adds r0, r4, #0
	bl sub_08073924
_08073AC8:
	pop {r4, pc}
	.align 2, 0
_08073ACC: .4byte gPlayerEntity
_08073AD0: .4byte gPlayerState

	thumb_func_start sub_08073AD4
sub_08073AD4: @ 0x08073AD4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x38
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08073AFA
	ldrb r2, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x19]
_08073AFA:
	ldr r6, _08073B48 @ =gPlayerState
	ldrb r5, [r6, #2]
	movs r0, #0xc1
	rsbs r0, r0, #0
	ands r5, r0
	ldrb r0, [r4, #0xc]
	cmp r0, #0xa
	beq _08073B32
	bl sub_0807A2B8
	movs r0, #0
	strb r0, [r6, #2]
	bl sub_0807A1B8
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _08073B5C
	adds r0, r6, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _08073B5C
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _08073B32
	adds r0, r4, #0
	bl sub_08073B60
_08073B32:
	ldr r2, _08073B48 @ =gPlayerState
	adds r0, r5, #1
	strb r0, [r2, #2]
	ldr r0, [r2, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08073B50
	ldr r0, _08073B4C @ =0x00000424
	b _08073B54
	.align 2, 0
_08073B48: .4byte gPlayerState
_08073B4C: .4byte 0x00000424
_08073B50:
	movs r0, #0x82
	lsls r0, r0, #4
_08073B54:
	strh r0, [r2, #8]
	movs r0, #0x7d
	bl SoundReq
_08073B5C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08073B60
sub_08073B60: @ 0x08073B60
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08073B88 @ =gPlayerState
	movs r0, #0
	strb r0, [r4, #0x1b]
	strb r0, [r4, #4]
	strb r0, [r4, #2]
	bl sub_08079938
	adds r0, r5, #0
	bl sub_080085B0
	ldr r0, [r4, #0x30]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08073B86
	bl sub_080791BC
_08073B86:
	pop {r4, r5, pc}
	.align 2, 0
_08073B88: .4byte gPlayerState

	thumb_func_start sub_08073B8C
sub_08073B8C: @ 0x08073B8C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08073BCC @ =gPlayerState
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _08073C04
	movs r2, #0xc
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806F854
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08073BB8
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
_08073BB8:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08073BD0
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08073C28
	.align 2, 0
_08073BCC: .4byte gPlayerState
_08073BD0:
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, #0
	bl sub_08003FC4
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #8
	rsbs r0, r0, #0
	cmp r1, r0
	blt _08073C28
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	bne _08073C0C
	bl sub_0807A2B8
	cmp r0, #0
	bne _08073BFC
	bl sub_08079D48
	cmp r0, #0
	bne _08073C0C
_08073BFC:
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
_08073C04:
	adds r0, r4, #0
	bl sub_08073B60
	b _08073C28
_08073C0C:
	ldr r1, _08073C2C @ =gPlayerState
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	movs r0, #0xf
	strb r0, [r4, #0xe]
	movs r0, #0x10
	movs r1, #0
	bl sub_08080964
	movs r0, #0xa6
	lsls r0, r0, #1
	bl SoundReq
_08073C28:
	pop {r4, r5, pc}
	.align 2, 0
_08073C2C: .4byte gPlayerState

	thumb_func_start sub_08073C30
sub_08073C30: @ 0x08073C30
	push {lr}
	adds r2, r0, #0
	ldr r0, _08073C54 @ =gPlayerState
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _08073C4A
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08073C58
_08073C4A:
	adds r0, r2, #0
	bl sub_08073B60
	b _08073C66
	.align 2, 0
_08073C54: .4byte gPlayerState
_08073C58:
	ldrb r0, [r2, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateAnimationSingleFrame
_08073C66:
	pop {pc}

	thumb_func_start PlayerMinish
PlayerMinish: @ 0x08073C68
	push {lr}
	ldr r2, _08073C7C @ =gUnk_0811BC60
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08073C7C: .4byte gUnk_0811BC60

	thumb_func_start sub_08073C80
sub_08073C80: @ 0x08073C80
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r2, _08073D00 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r2, #0x30]
	movs r5, #0
	ldr r0, _08073D04 @ =0x00000C18
	strh r0, [r2, #8]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0x18]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x19]
	movs r7, #4
	rsbs r7, r7, #0
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r4, #0x19]
	ldr r0, _08073D08 @ =gUnk_0811BC80
	str r0, [r4, #0x48]
	strb r5, [r4, #0xe]
	movs r6, #2
	strb r6, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x42
	strb r5, [r0]
	movs r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #2
	bl sub_080AE008
	ldr r0, _08073D0C @ =gRoomControls
	str r4, [r0, #0x30]
	bl sub_080809D4
	ldr r1, _08073D10 @ =gScreenTransition
	ldrb r0, [r1, #0xf]
	cmp r0, #9
	bne _08073D14
	strb r5, [r1, #0xf]
	ldrb r1, [r4, #0x18]
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	strb r6, [r4, #0xd]
	b _08073D1E
	.align 2, 0
_08073D00: .4byte gPlayerState
_08073D04: .4byte 0x00000C18
_08073D08: .4byte gUnk_0811BC80
_08073D0C: .4byte gRoomControls
_08073D10: .4byte gScreenTransition
_08073D14:
	movs r0, #4
	movs r1, #0
	movs r2, #0
	bl CreateObject
_08073D1E:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08073D20
sub_08073D20: @ 0x08073D20
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r5, _08073D70 @ =gPlayerState
	movs r0, #0xa8
	adds r0, r0, r5
	mov r8, r0
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x39
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #1
	strb r0, [r1]
	bl sub_08078F60
	adds r7, r5, #0
	adds r7, #0x26
	ldrb r0, [r7]
	cmp r0, #0
	bne _08073D60
	movs r0, #0xc0
	strh r0, [r4, #0x24]
_08073D60:
	bl sub_08079B24
	cmp r0, #0
	bne _08073D74
	adds r0, r4, #0
	bl sub_08079708
	b _08073EFC
	.align 2, 0
_08073D70: .4byte gPlayerState
_08073D74:
	bl sub_08078EFC
	adds r6, r0, #0
	cmp r6, #0
	beq _08073D80
	b _08073EFC
_08073D80:
	adds r0, r4, #0
	bl sub_08073904
	bl sub_0807A1B8
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _08073D96
	movs r0, #0x14
	mov r1, r8
	strb r0, [r1]
_08073D96:
	ldrb r0, [r5, #0x12]
	subs r0, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08073DB0
	strb r6, [r7]
	adds r2, r4, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
_08073DB0:
	bl sub_08078EFC
	cmp r0, #0
	beq _08073DBA
	b _08073EFC
_08073DBA:
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	bne _08073DC2
	b _08073EFC
_08073DC2:
	ldr r0, [r5, #0x30]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08073E10
	adds r0, r4, #0
	bl sub_080085B0
	bl sub_080792D8
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _08073DE6
	bl sub_08079550
	cmp r0, #0
	beq _08073DE6
	b _08073EFC
_08073DE6:
	adds r0, r4, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	beq _08073DFA
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r4, #0x15]
	b _08073EFC
_08073DFA:
	bl sub_080782C0
	cmp r0, #0
	beq _08073E08
	bl sub_08078EFC
	b _08073EFC
_08073E08:
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
_08073E10:
	bl sub_08019840
	cmp r0, #0
	bne _08073EFC
	adds r0, r4, #0
	bl sub_08077698
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	adds r1, r0, #0
	cmp r1, #0
	bne _08073E32
	ldr r0, _08073E74 @ =gPlayerState
	strb r1, [r0, #2]
_08073E32:
	ldr r2, _08073E74 @ =gPlayerState
	ldrb r1, [r2, #7]
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08073EFC
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _08073EFC
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r6, r0, #0
	cmp r1, #8
	bgt _08073E90
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _08073E78
	adds r1, r2, #0
	adds r1, #0xa8
	movs r0, #7
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0807ACCC
	bl sub_08079E08
	b _08073E90
	.align 2, 0
_08073E74: .4byte gPlayerState
_08073E78:
	ldrb r1, [r2, #0xd]
	strb r1, [r4, #0x15]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08073E90
	adds r1, r2, #0
	adds r1, #0xa8
	movs r0, #1
	strb r0, [r1]
	bl sub_08079E08
_08073E90:
	ldr r5, _08073EF0 @ =gPlayerState
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _08073E9E
	adds r0, r4, #0
	bl sub_0806F948
_08073E9E:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	bl sub_0807B068
	movs r0, #0x10
	bl sub_080793E4
	cmp r0, #0
	beq _08073EDC
	movs r0, #0x14
	strb r0, [r6]
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #4
	strb r0, [r1]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	movs r1, #0x10
	eors r0, r1
	adds r1, r4, #0
	adds r1, #0x3e
	strb r0, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	bl ModHealth
	movs r0, #0x7a
	bl SoundReq
_08073EDC:
	ldr r0, [r5, #0x30]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08073EF4
	adds r0, r4, #0
	bl sub_08008AC6
	b _08073EFC
	.align 2, 0
_08073EF0: .4byte gPlayerState
_08073EF4:
	adds r1, r5, #0
	adds r1, #0xa8
	movs r0, #0xd
	strb r0, [r1]
_08073EFC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08073F04
sub_08073F04: @ 0x08073F04
	push {lr}
	adds r3, r0, #0
	adds r3, #0x29
	ldrb r2, [r3]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r3]
	ldrb r2, [r0, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0, #0x18]
	ldrb r1, [r0, #0xd]
	adds r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	str r1, [r0, #0x20]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0x24]
	ldr r2, _08073F48 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x30]
	bl ResetPlayer
	pop {pc}
	.align 2, 0
_08073F48: .4byte gPlayerState

	thumb_func_start sub_08073F4C
sub_08073F4C: @ 0x08073F4C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08073F84 @ =gArea
	ldrh r3, [r0, #0x12]
	ldrh r5, [r0, #0x14]
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	cmp r2, r3
	bne _08073F66
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	cmp r0, r5
	beq _08073F88
_08073F66:
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	adds r0, r2, #0
	adds r2, r3, #0
	adds r3, r5, #0
	bl sub_080045D4
	strb r0, [r4, #0x15]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_0806F69C
	b _08073FC6
	.align 2, 0
_08073F84: .4byte gArea
_08073F88:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #0x90
	lsls r1, r1, #3
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
	ldrb r0, [r4, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r4, #0
	bl sub_08074018
	ldr r1, _08073FC8 @ =gPlayerState
	ldr r0, _08073FCC @ =0x0000073C
	strh r0, [r1, #8]
_08073FC6:
	pop {r4, r5, pc}
	.align 2, 0
_08073FC8: .4byte gPlayerState
_08073FCC: .4byte 0x0000073C

	thumb_func_start sub_08073FD0
sub_08073FD0: @ 0x08073FD0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08073FF8
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08074016
	ldrb r1, [r4, #0x18]
	lsls r0, r1, #0x1e
	cmp r0, #0
	bne _08073FF8
	movs r0, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0x7c
	bl SoundReq
_08073FF8:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _08074016
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0xb8
	lsls r0, r0, #1
	bl SoundReq
_08074016:
	pop {r4, pc}

	thumb_func_start sub_08074018
sub_08074018: @ 0x08074018
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x80
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	cmp r0, r3
	bls _0807402E
	subs r0, #0x20
	str r0, [r1]
_0807402E:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	adds r2, r0, #0
	cmp r1, r3
	bls _08074042
	adds r0, r1, #0
	subs r0, #0x20
	str r0, [r2]
	b _08074048
_08074042:
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
_08074048:
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0]
	ldr r2, [r2]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0805EC9C
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, pc}

	thumb_func_start sub_08074060
sub_08074060: @ 0x08074060
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #6
	bl sub_08003FC4
	cmp r0, #0
	bne _080740D0
	ldr r0, _080740C4 @ =gUnk_08114F88
	str r0, [r4, #0x48]
	movs r3, #0x10
	movs r0, #0x10
	strb r0, [r4, #0x15]
	movs r0, #4
	strb r0, [r4, #0x14]
	movs r2, #0
	adds r0, #0xfc
	strh r0, [r4, #0x24]
	movs r0, #0x29
	adds r0, r0, r4
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	ldrb r1, [r4, #0x18]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r4, #0x18]
	strb r2, [r4, #0xf]
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	ldr r1, _080740C8 @ =gPlayerState
	ldr r0, _080740CC @ =0x0000080C
	strh r0, [r1, #8]
	adds r0, r4, #0
	bl sub_0805EC60
	b _080740D6
	.align 2, 0
_080740C4: .4byte gUnk_08114F88
_080740C8: .4byte gPlayerState
_080740CC: .4byte 0x0000080C
_080740D0:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
_080740D6:
	pop {r4, pc}

	thumb_func_start sub_080740D8
sub_080740D8: @ 0x080740D8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _080740EA
	ldrb r0, [r4, #0x15]
	b _080740F0
_080740EA:
	ldrb r1, [r4, #0x15]
	movs r0, #0x10
	eors r0, r1
_080740F0:
	cmp r0, #8
	beq _08074128
	cmp r0, #8
	bhi _080740FE
	cmp r0, #0
	beq _08074168
	b _0807418C
_080740FE:
	cmp r0, #0x10
	beq _08074148
	cmp r0, #0x18
	bne _0807418C
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, [r4, #0x48]
	ldrb r0, [r2, #2]
	subs r1, r1, r0
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	ldr r3, _08074124 @ =gRoomControls
	ldrh r0, [r3, #6]
	subs r6, r1, r0
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	b _08074182
	.align 2, 0
_08074124: .4byte gRoomControls
_08074128:
	ldr r2, [r4, #0x48]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldrb r1, [r2, #2]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	ldr r3, _08074144 @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r6, r0, r1
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	b _08074182
	.align 2, 0
_08074144: .4byte gRoomControls
_08074148:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, [r4, #0x48]
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	ldr r3, _08074164 @ =gRoomControls
	ldrh r0, [r3, #6]
	subs r6, r1, r0
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldrb r1, [r2, #5]
	adds r0, r0, r1
	b _08074182
	.align 2, 0
_08074164: .4byte gRoomControls
_08074168:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, [r4, #0x48]
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	ldr r3, _080741A4 @ =gRoomControls
	ldrh r0, [r3, #6]
	subs r6, r1, r0
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldrb r1, [r2, #5]
	subs r0, r0, r1
_08074182:
	movs r1, #1
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	ldrh r1, [r3, #8]
	subs r5, r0, r1
_0807418C:
	ldr r2, _080741A8 @ =gUnk_080082DC
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080086B4
	cmp r0, #0
	beq _080741AC
	adds r0, r4, #0
	bl sub_0806F69C
	b _080741B0
	.align 2, 0
_080741A4: .4byte gRoomControls
_080741A8: .4byte gUnk_080082DC
_080741AC:
	movs r0, #1
	strb r0, [r4, #0xf]
_080741B0:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080741C2
	bl sub_0807921C
_080741C2:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080741C4
sub_080741C4: @ 0x080741C4
	push {lr}
	ldr r0, _080741F0 @ =gPlayerState
	ldrb r1, [r0, #2]
	adds r2, r0, #0
	cmp r1, #0
	beq _080741D8
	movs r0, #7
	ands r0, r1
	cmp r0, #3
	bne _080741E0
_080741D8:
	ldr r0, _080741F4 @ =gPlayerEntity
	ldr r0, [r0, #0x34]
	cmp r0, #0
	beq _080741F8
_080741E0:
	movs r1, #0
	strb r1, [r2, #0x11]
	adds r0, r2, #0
	adds r0, #0x37
	strb r1, [r0]
	movs r0, #1
	b _080741FA
	.align 2, 0
_080741F0: .4byte gPlayerState
_080741F4: .4byte gPlayerEntity
_080741F8:
	movs r0, #0
_080741FA:
	pop {pc}

	thumb_func_start nullsub_112
nullsub_112: @ 0x080741FC
	bx lr
	.align 2, 0

	thumb_func_start sub_08074200
sub_08074200: @ 0x08074200
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080741C4
	cmp r0, #0
	bne _08074226
	adds r0, r4, #0
	bl sub_08079C30
	cmp r0, #0
	beq _08074226
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	beq _08074226
	bl ResetPlayer
	ldr r1, _08074228 @ =gPlayerState
	movs r0, #3
	strb r0, [r1, #0xc]
_08074226:
	pop {r4, pc}
	.align 2, 0
_08074228: .4byte gPlayerState

	thumb_func_start sub_0807422C
sub_0807422C: @ 0x0807422C
	push {lr}
	movs r1, #8
	movs r2, #0x18
	bl sub_08074244
	pop {pc}

	thumb_func_start sub_08074238
sub_08074238: @ 0x08074238
	push {lr}
	movs r1, #0
	movs r2, #0x10
	bl sub_08074244
	pop {pc}

	thumb_func_start sub_08074244
sub_08074244: @ 0x08074244
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r5, _0807428C @ =gPlayerState
	ldrb r0, [r5, #0x12]
	subs r0, #0x28
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08074278
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	ldrb r2, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x19]
_08074278:
	bl sub_080741C4
	cmp r0, #0
	bne _080742A6
	ldrb r0, [r5, #0x1e]
	cmp r0, #0
	bne _08074290
	ldrb r0, [r5, #0xd]
	b _08074294
	.align 2, 0
_0807428C: .4byte gPlayerState
_08074290:
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
_08074294:
	cmp r6, r0
	bne _0807429C
	cmp r7, r0
	beq _080742A6
_0807429C:
	ldr r1, _080742A8 @ =gPlayerState
	adds r1, #0x80
	ldrh r0, [r1]
	subs r0, #0x50
	strh r0, [r1]
_080742A6:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080742A8: .4byte gPlayerState

	thumb_func_start sub_080742AC
sub_080742AC: @ 0x080742AC
	push {lr}
	adds r2, r0, #0
	ldr r0, _080742E0 @ =gPlayerState
	adds r1, r0, #0
	adds r1, #0x26
	ldrb r0, [r1]
	cmp r0, #0
	beq _080742C0
	movs r0, #0
	strb r0, [r1]
_080742C0:
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	pop {pc}
	.align 2, 0
_080742E0: .4byte gPlayerState

	thumb_func_start sub_080742E4
sub_080742E4: @ 0x080742E4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080741C4
	cmp r0, #0
	bne _0807430E
	ldr r2, _08074310 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0807430E
	ldrb r0, [r2, #0x11]
	cmp r0, #0xf
	bne _0807430E
	adds r0, r4, #0
	movs r1, #0xe
	movs r2, #0
	movs r3, #0
	bl CreateObjectWithParent
_0807430E:
	pop {r4, pc}
	.align 2, 0
_08074310: .4byte gPlayerState

	thumb_func_start sub_08074314
sub_08074314: @ 0x08074314
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x32]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0xd
	bgt _08074330
	movs r0, #0xcc
	lsls r0, r0, #7
	strh r0, [r2, #0x2a]
	adds r0, r2, #0
	bl sub_080743A4
	b _08074336
_08074330:
	adds r0, r2, #0
	bl sub_0807A298
_08074336:
	pop {pc}

	thumb_func_start sub_08074338
sub_08074338: @ 0x08074338
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x32]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	ble _08074354
	movs r0, #0xcc
	lsls r0, r0, #7
	strh r0, [r2, #0x2a]
	adds r0, r2, #0
	bl sub_080743A4
	b _0807435A
_08074354:
	adds r0, r2, #0
	bl sub_0807A298
_0807435A:
	pop {pc}

	thumb_func_start sub_0807435C
sub_0807435C: @ 0x0807435C
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x2e]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0xb
	bgt _08074376
	movs r0, #0x66
	strh r0, [r2, #0x2a]
	adds r0, r2, #0
	bl sub_080743A4
	b _0807437C
_08074376:
	adds r0, r2, #0
	bl sub_0807A298
_0807437C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08074380
sub_08074380: @ 0x08074380
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x2e]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #4
	ble _0807439A
	movs r0, #0x66
	strh r0, [r2, #0x2a]
	adds r0, r2, #0
	bl sub_080743A4
	b _080743A0
_0807439A:
	adds r0, r2, #0
	bl sub_0807A298
_080743A0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080743A4
sub_080743A4: @ 0x080743A4
	push {lr}
	ldr r3, _080743D0 @ =gPlayerState
	ldr r1, [r3, #0x30]
	movs r2, #0x40
	orrs r1, r2
	str r1, [r3, #0x30]
	movs r3, #0
	movs r1, #0x80
	strb r1, [r0, #0xb]
	ldrb r2, [r0, #0x18]
	subs r1, #0x84
	ands r1, r2
	strb r1, [r0, #0x18]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	adds r0, #0x42
	strb r3, [r0]
	bl ResetPlayer
	pop {pc}
	.align 2, 0
_080743D0: .4byte gPlayerState

	thumb_func_start sub_080743D4
sub_080743D4: @ 0x080743D4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080741C4
	cmp r0, #0
	bne _08074416
	adds r0, r5, #0
	bl sub_08079C30
	cmp r0, #0
	beq _08074416
	adds r0, r5, #0
	bl sub_0807AABC
	adds r0, r5, #0
	bl sub_08074808
	movs r0, #0x24
	ldrsh r4, [r5, r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r5, #0x24]
	movs r0, #0x10
	strb r0, [r5, #0x15]
	ldr r2, _08074418 @ =gPlayerState
	ldrb r1, [r2, #0xa]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0xa]
	adds r0, r5, #0
	bl sub_0806F69C
	strh r4, [r5, #0x24]
_08074416:
	pop {r4, r5, pc}
	.align 2, 0
_08074418: .4byte gPlayerState

	thumb_func_start sub_0807441C
sub_0807441C: @ 0x0807441C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _08074440 @ =gPlayerState
	adds r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #4
	bne _08074502
	ldr r6, _08074444 @ =gSave
	adds r4, r6, #0
	adds r4, #0xb4
	ldrb r0, [r4]
	bl sub_0805449C
	cmp r0, #0
	beq _08074448
	ldrb r0, [r4]
	b _0807444E
	.align 2, 0
_08074440: .4byte gPlayerState
_08074444: .4byte gSave
_08074448:
	adds r0, r6, #0
	adds r0, #0xb5
	ldrb r0, [r0]
_0807444E:
	subs r0, #1
	cmp r0, #5
	bhi _0807448A
	lsls r0, r0, #2
	ldr r1, _08074460 @ =_08074464
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08074460: .4byte _08074464
_08074464: @ jump table
	.4byte _0807447C @ case 0
	.4byte _0807447C @ case 1
	.4byte _08074480 @ case 2
	.4byte _08074484 @ case 3
	.4byte _0807448A @ case 4
	.4byte _08074488 @ case 5
_0807447C:
	movs r5, #0
	b _0807448A
_08074480:
	movs r5, #1
	b _0807448A
_08074484:
	movs r5, #2
	b _0807448A
_08074488:
	movs r5, #3
_0807448A:
	movs r4, #0
	cmp r4, r5
	bhs _080744A6
	ldr r1, _08074494 @ =gUnk_03004040
	b _080744A0
	.align 2, 0
_08074494: .4byte gUnk_03004040
_08074498:
	adds r1, #4
	adds r4, #1
	cmp r4, r5
	bhs _080744A6
_080744A0:
	ldr r0, [r1]
	cmp r0, #0
	bne _08074498
_080744A6:
	cmp r5, r4
	bls _080744D4
	adds r0, r7, #0
	movs r1, #0x10
	adds r2, r4, #0
	movs r3, #0
	bl CreateObjectWithParent
	adds r3, r0, #0
	ldr r1, _080744D0 @ =gUnk_03004040
	lsls r0, r4, #2
	adds r0, r0, r1
	str r3, [r0]
	cmp r3, #0
	beq _08074502
	adds r0, r7, #0
	adds r1, r3, #0
	bl CopyPosition
	b _08074502
	.align 2, 0
_080744D0: .4byte gUnk_03004040
_080744D4:
	ldr r2, _08074504 @ =gPlayerState
	ldrb r1, [r2, #0x1b]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x1b]
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r2, #0x30]
	ldr r0, [r7, #0x2c]
	ldr r2, _08074508 @ =0xFFF00000
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r7, #0x2c]
	ldr r0, [r7, #0x30]
	ands r0, r2
	orrs r0, r1
	str r0, [r7, #0x30]
	bl sub_08077AEC
_08074502:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08074504: .4byte gPlayerState
_08074508: .4byte 0xFFF00000

	thumb_func_start sub_0807450C
sub_0807450C: @ 0x0807450C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl sub_080741C4
	cmp r0, #0
	bne _0807457A
	ldr r7, _0807457C @ =gPlayerState
	ldrb r0, [r7, #0x14]
	cmp r0, #0
	bne _0807457A
	adds r4, r6, #0
	adds r4, #0x3d
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08074568
	movs r0, #2
	rsbs r0, r0, #0
	bl ModHealth
	movs r0, #0x7a
	bl SoundReq
	movs r0, #0x18
	strb r0, [r4]
	adds r1, r6, #0
	adds r1, #0x42
	movs r0, #4
	strb r0, [r1]
	movs r0, #0x2e
	ldrsh r2, [r6, r0]
	ldr r5, _08074580 @ =0x0000FFF0
	adds r0, r2, #0
	ands r0, r5
	movs r4, #8
	orrs r0, r4
	movs r1, #0x32
	ldrsh r3, [r6, r1]
	adds r1, r3, #0
	ands r1, r5
	orrs r1, r4
	bl sub_080045D4
	adds r1, r6, #0
	adds r1, #0x3e
	strb r0, [r1]
_08074568:
	ldr r0, [r7, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0807457A
	adds r0, r6, #0
	movs r1, #7
	bl sub_08008790
_0807457A:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807457C: .4byte gPlayerState
_08074580: .4byte 0x0000FFF0

	thumb_func_start sub_08074584
sub_08074584: @ 0x08074584
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080741C4
	cmp r0, #0
	bne _080745AC
	ldr r0, _080745B0 @ =gPlayerState
	adds r0, #0x35
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080745A8
	adds r0, r4, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	beq _080745AC
_080745A8:
	bl sub_08078F60
_080745AC:
	pop {r4, pc}
	.align 2, 0
_080745B0: .4byte gPlayerState

	thumb_func_start sub_080745B4
sub_080745B4: @ 0x080745B4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080741C4
	cmp r0, #0
	bne _08074636
	ldr r0, _080745E4 @ =gPlayerState
	mov ip, r0
	ldr r3, [r0, #0x30]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	beq _080745E8
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0xb9
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0807479C
	b _08074636
	.align 2, 0
_080745E4: .4byte gPlayerState
_080745E8:
	mov r5, ip
	adds r5, #0x26
	ldrb r0, [r5]
	cmp r0, #0
	beq _08074618
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	subs r2, #0x13
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	strb r3, [r5]
_08074618:
	mov r0, ip
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08074630
	mov r1, ip
	ldrb r0, [r1, #0x11]
	cmp r0, #1
	bne _08074636
_08074630:
	movs r0, #0x83
	bl SoundReq
_08074636:
	pop {r4, r5, pc}

	thumb_func_start sub_08074638
sub_08074638: @ 0x08074638
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08074674 @ =gPlayerState
	adds r5, r0, #0
	adds r5, #0x26
	ldrb r0, [r5]
	cmp r0, #0
	beq _08074670
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	movs r3, #0
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	subs r2, #0x13
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	strb r3, [r5]
_08074670:
	pop {r4, r5, pc}
	.align 2, 0
_08074674: .4byte gPlayerState

	thumb_func_start sub_08074678
sub_08074678: @ 0x08074678
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080741C4
	cmp r0, #0
	beq _08074690
	ldr r0, _0807468C @ =gPlayerState
	movs r1, #0
	strb r1, [r0, #0x11]
	b _080746CE
	.align 2, 0
_0807468C: .4byte gPlayerState
_08074690:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807476C
	adds r0, r4, #0
	bl sub_08079C30
	adds r1, r0, #0
	cmp r1, #0
	bne _080746B0
	ldr r0, _080746AC @ =gPlayerState
	strb r1, [r0, #0x11]
	b _080746CE
	.align 2, 0
_080746AC: .4byte gPlayerState
_080746B0:
	ldr r3, _080746D4 @ =gPlayerState
	ldr r1, [r3, #0x30]
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	bne _0807476C
	ldrb r2, [r3, #0x1e]
	cmp r2, #0
	beq _080746D8
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _080746DC
	strb r1, [r3, #0x11]
	adds r0, r3, #0
_080746CE:
	adds r0, #0x37
	strb r1, [r0]
	b _08074792
	.align 2, 0
_080746D4: .4byte gPlayerState
_080746D8:
	bl sub_08077B20
_080746DC:
	ldr r1, _08074700 @ =gPlayerState
	adds r0, r1, #0
	adds r0, #0x37
	ldrb r0, [r0]
	cmp r0, #1
	bne _08074704
	adds r0, r4, #0
	movs r1, #0x70
	movs r2, #0
	movs r3, #0
	bl CreateObjectWithParent
	adds r0, r4, #0
	movs r1, #0x52
	movs r2, #0
	bl CreateFx
	b _08074714
	.align 2, 0
_08074700: .4byte gPlayerState
_08074704:
	adds r0, r1, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08074720
_08074714:
	ldr r0, _0807471C @ =0x00000161
	bl SoundReq
	b _08074732
	.align 2, 0
_0807471C: .4byte 0x00000161
_08074720:
	ldr r0, _08074760 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08074732
	ldr r0, _08074764 @ =0x00000161
	bl SoundReq
_08074732:
	ldr r2, _08074768 @ =gPlayerState
	adds r1, r2, #0
	adds r1, #0x80
	ldrh r0, [r1]
	subs r0, #0xf0
	strh r0, [r1]
	adds r1, #0x28
	movs r0, #0x1b
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r3, r0, #0x18
	lsrs r0, r3, #0x18
	cmp r0, #0xef
	bhi _0807476C
	subs r1, #0x69
	lsrs r0, r3, #0x1d
	adds r0, #4
	ldrb r2, [r1]
	adds r0, r0, r2
	strb r0, [r1]
	b _08074792
	.align 2, 0
_08074760: .4byte gScreenTransition
_08074764: .4byte 0x00000161
_08074768: .4byte gPlayerState
_0807476C:
	ldr r2, _08074794 @ =gPlayerState
	ldr r0, [r2, #0x30]
	ldr r1, _08074798 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r2, #0x30]
	adds r0, r4, #0
	movs r1, #0x52
	movs r2, #0
	bl CreateFx
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0x20
	strb r0, [r1]
	subs r0, #0x24
	bl ModHealth
	bl RespawnPlayer
_08074792:
	pop {r4, pc}
	.align 2, 0
_08074794: .4byte gPlayerState
_08074798: .4byte 0xFFFBFFFF

	thumb_func_start sub_0807479C
sub_0807479C: @ 0x0807479C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080741C4
	adds r2, r0, #0
	cmp r2, #0
	bne _08074804
	ldr r1, _080747C0 @ =gPlayerState
	ldrb r0, [r1, #0x14]
	adds r3, r1, #0
	cmp r0, #0
	bne _080747C4
	adds r1, #0x3f
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r1]
	b _080747E6
	.align 2, 0
_080747C0: .4byte gPlayerState
_080747C4:
	adds r0, r3, #0
	adds r0, #0x26
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
	adds r2, #0x13
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
_080747E6:
	adds r0, r3, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080747FE
	adds r0, r4, #0
	bl sub_08079C30
	cmp r0, #0
	beq _08074804
_080747FE:
	adds r0, r4, #0
	bl sub_08074808
_08074804:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08074808
sub_08074808: @ 0x08074808
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl sub_08077AEC
	movs r0, #0x46
	bl GetInventoryValue
	adds r3, r0, #0
	cmp r3, #1
	bne _080748B8
	ldr r1, _08074838 @ =gPlayerState
	adds r2, r1, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, #0
	bne _0807486C
	ldr r0, [r1, #0x30]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0807483C
	strb r3, [r2]
	b _08074840
	.align 2, 0
_08074838: .4byte gPlayerState
_0807483C:
	movs r0, #8
	strb r0, [r2]
_08074840:
	movs r1, #0
	movs r0, #0
	strh r0, [r6, #0x24]
	ldr r0, _080748AC @ =gPlayerState
	adds r2, r0, #0
	adds r2, #0x89
	strb r1, [r2]
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08074862
	adds r0, r6, #0
	movs r1, #0xb
	movs r2, #0
	bl CreateFx
_08074862:
	ldr r0, _080748B0 @ =0x000001A5
	bl SoundReq
	bl ResetPlayer
_0807486C:
	ldr r5, _080748AC @ =gPlayerState
	adds r4, r5, #0
	adds r4, #0x26
	ldrb r1, [r4]
	movs r7, #0xf
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #1
	beq _0807488A
	adds r0, r6, #0
	bl sub_08079744
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
_0807488A:
	ldr r0, [r5, #0x30]
	ldr r1, _080748B4 @ =0xFFFFF3FF
	ands r0, r1
	str r0, [r5, #0x30]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080748BE
	adds r1, r6, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	cmp r0, #0xe
	bhi _080748BE
	strh r7, [r1]
	b _080748BE
	.align 2, 0
_080748AC: .4byte gPlayerState
_080748B0: .4byte 0x000001A5
_080748B4: .4byte 0xFFFFF3FF
_080748B8:
	ldr r1, _080748C0 @ =gPlayerState
	movs r0, #0x14
	strb r0, [r1, #0xc]
_080748BE:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080748C0: .4byte gPlayerState

	thumb_func_start sub_080748C4
sub_080748C4: @ 0x080748C4
	ldr r1, _080748D0 @ =gPlayerState
	adds r1, #0x3f
	ldrb r0, [r1]
	subs r0, #2
	strb r0, [r1]
	bx lr
	.align 2, 0
_080748D0: .4byte gPlayerState

	thumb_func_start sub_080748D4
sub_080748D4: @ 0x080748D4
	push {lr}
	bl sub_080741C4
	pop {pc}

	thumb_func_start sub_080748DC
sub_080748DC: @ 0x080748DC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080741C4
	cmp r0, #0
	bne _08074910
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	beq _0807490A
	ldrh r0, [r4, #0x32]
	adds r0, #0xc
	strh r0, [r4, #0x32]
	ldr r0, _08074914 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0807490A
	ldrh r0, [r4, #0x36]
	subs r0, #0xc
	strh r0, [r4, #0x36]
_0807490A:
	adds r0, r4, #0
	bl sub_0807AABC
_08074910:
	pop {r4, pc}
	.align 2, 0
_08074914: .4byte gPlayerState

	thumb_func_start sub_08074918
sub_08074918: @ 0x08074918
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080741C4
	cmp r0, #0
	bne _08074934
	adds r0, r4, #0
	bl sub_08079C30
	cmp r0, #0
	beq _08074934
	ldr r1, _08074938 @ =gPlayerState
	movs r0, #0x11
	strb r0, [r1, #0xc]
_08074934:
	pop {r4, pc}
	.align 2, 0
_08074938: .4byte gPlayerState

	thumb_func_start sub_0807493C
sub_0807493C: @ 0x0807493C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x44
	bl GetInventoryValue
	cmp r0, #1
	bne _08074952
	adds r0, r4, #0
	bl sub_0807496C
	b _08074966
_08074952:
	ldrh r1, [r4, #0x32]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0xf
	movs r2, #0
	orrs r0, r1
	strh r0, [r4, #0x32]
	ldr r0, _08074968 @ =gPlayerState
	strb r2, [r0, #0x12]
_08074966:
	pop {r4, pc}
	.align 2, 0
_08074968: .4byte gPlayerState

	thumb_func_start sub_0807496C
sub_0807496C: @ 0x0807496C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080741C4
	adds r3, r0, #0
	cmp r3, #0
	bne _080749A2
	ldr r0, _080749A4 @ =gPlayerState
	strb r3, [r0, #2]
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1b]
	strb r3, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	bl ResetPlayer
_080749A2:
	pop {r4, pc}
	.align 2, 0
_080749A4: .4byte gPlayerState

	thumb_func_start sub_080749A8
sub_080749A8: @ 0x080749A8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x44
	bl GetInventoryValue
	cmp r0, #1
	bne _080749BE
	adds r0, r4, #0
	bl sub_080749D4
	b _080749CE
_080749BE:
	ldrh r1, [r4, #0x32]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0
	strh r0, [r4, #0x32]
	ldr r0, _080749D0 @ =gPlayerState
	strb r1, [r0, #0x12]
_080749CE:
	pop {r4, pc}
	.align 2, 0
_080749D0: .4byte gPlayerState

	thumb_func_start sub_080749D4
sub_080749D4: @ 0x080749D4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080741C4
	adds r3, r0, #0
	cmp r3, #0
	bne _08074A40
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1b]
	strb r3, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	ldr r5, _08074A2C @ =gPlayerState
	adds r0, r5, #0
	adds r0, #0x26
	strb r3, [r0]
	adds r2, r4, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	ldrh r1, [r4, #0x32]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #7
	bgt _08074A34
	ldr r0, _08074A30 @ =0x000002D3
	strh r0, [r5, #8]
	movs r0, #0x10
	strb r0, [r4, #0x15]
	b _08074A3C
	.align 2, 0
_08074A2C: .4byte gPlayerState
_08074A30: .4byte 0x000002D3
_08074A34:
	movs r1, #0
	ldr r0, _08074A44 @ =0x000002D6
	strh r0, [r5, #8]
	strb r1, [r4, #0x15]
_08074A3C:
	bl ResetPlayer
_08074A40:
	pop {r4, r5, pc}
	.align 2, 0
_08074A44: .4byte 0x000002D6

	thumb_func_start sub_08074A48
sub_08074A48: @ 0x08074A48
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08074A90 @ =gPlayerState
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08074A86
	ldr r0, _08074A94 @ =gPlayerEntity
	movs r1, #0
	movs r2, #0x54
	movs r3, #0
	bl CreateObjectWithParent
	adds r1, r0, #0
	cmp r1, #0
	beq _08074A86
	movs r0, #1
	strb r0, [r1, #0xe]
	adds r0, r1, #0
	bl UpdateSpriteForCollisionLayer
	ldrh r1, [r5, #0x22]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r2, [r0]
	movs r0, #0x39
	bl sub_08000152
_08074A86:
	adds r0, r4, #0
	bl sub_0807479C
	pop {r4, r5, pc}
	.align 2, 0
_08074A90: .4byte gPlayerState
_08074A94: .4byte gPlayerEntity

	thumb_func_start nullsub_504
nullsub_504: @ 0x08074A98
	bx lr
	.align 2, 0

	thumb_func_start sub_08074A9C
sub_08074A9C: @ 0x08074A9C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080741C4
	cmp r0, #0
	bne _08074AF0
	ldr r2, _08074AE0 @ =gPlayerState
	adds r0, r2, #0
	adds r0, #0x80
	ldrh r1, [r0]
	subs r1, #0x80
	strh r1, [r0]
	ldrb r0, [r2, #0x11]
	cmp r0, #1
	beq _08074ACA
	adds r0, r2, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08074AF0
_08074ACA:
	ldrb r0, [r2, #0x12]
	cmp r0, #0x25
	bne _08074AE4
	adds r0, r4, #0
	movs r1, #0x21
	movs r2, #1
	movs r3, #0
	bl CreateObjectWithParent
	b _08074AF0
	.align 2, 0
_08074AE0: .4byte gPlayerState
_08074AE4:
	adds r0, r4, #0
	movs r1, #0x21
	movs r2, #1
	movs r3, #1
	bl CreateObjectWithParent
_08074AF0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08074AF4
sub_08074AF4: @ 0x08074AF4
	push {lr}
	adds r3, r0, #0
	ldr r1, _08074B04 @ =gPlayerState
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	bne _08074B08
	ldrb r2, [r1, #0xd]
	b _08074B0C
	.align 2, 0
_08074B04: .4byte gPlayerState
_08074B08:
	ldrb r0, [r3, #0x14]
	lsls r2, r0, #2
_08074B0C:
	adds r0, r3, #0
	adds r1, r2, #0
	bl sub_08074244
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08074B18
sub_08074B18: @ 0x08074B18
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08074B40 @ =gPlayerState
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _08074B48
	bl sub_080741C4
	cmp r0, #0
	bne _08074B48
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08074B44
	adds r0, r5, #0
	bl sub_08074200
	b _08074B48
	.align 2, 0
_08074B40: .4byte gPlayerState
_08074B44:
	movs r0, #0x1a
	strb r0, [r4, #0xc]
_08074B48:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08074B4C
sub_08074B4C: @ 0x08074B4C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080741C4
	cmp r0, #0
	bne _08074B6E
	ldr r0, _08074B70 @ =gPlayerState
	ldr r1, [r0, #0x30]
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	bne _08074B6E
	strb r1, [r4, #0x14]
	strb r1, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08074BF8
_08074B6E:
	pop {r4, pc}
	.align 2, 0
_08074B70: .4byte gPlayerState

	thumb_func_start sub_08074B74
sub_08074B74: @ 0x08074B74
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080741C4
	cmp r0, #0
	bne _08074B9A
	ldr r0, _08074B9C @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08074B9A
	movs r0, #4
	strb r0, [r4, #0x14]
	movs r0, #0x10
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08074BF8
_08074B9A:
	pop {r4, pc}
	.align 2, 0
_08074B9C: .4byte gPlayerState

	thumb_func_start sub_08074BA0
sub_08074BA0: @ 0x08074BA0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080741C4
	cmp r0, #0
	bne _08074BC6
	ldr r0, _08074BC8 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08074BC6
	movs r0, #6
	strb r0, [r4, #0x14]
	movs r0, #0x18
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08074BF8
_08074BC6:
	pop {r4, pc}
	.align 2, 0
_08074BC8: .4byte gPlayerState

	thumb_func_start sub_08074BCC
sub_08074BCC: @ 0x08074BCC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080741C4
	cmp r0, #0
	bne _08074BF2
	ldr r0, _08074BF4 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08074BF2
	movs r0, #2
	strb r0, [r4, #0x14]
	movs r0, #8
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08074BF8
_08074BF2:
	pop {r4, pc}
	.align 2, 0
_08074BF4: .4byte gPlayerState

	thumb_func_start sub_08074BF8
sub_08074BF8: @ 0x08074BF8
	push {r4, lr}
	adds r4, r0, #0
	bl ResetPlayer
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	ldr r1, _08074C40 @ =gPlayerState
	ldr r0, [r1, #0x30]
	movs r2, #0x80
	lsls r2, r2, #0x12
	orrs r0, r2
	str r0, [r1, #0x30]
	ldrb r2, [r1, #0xa]
	movs r0, #0x80
	orrs r2, r0
	strb r2, [r1, #0xa]
	ldrb r2, [r1, #0x1a]
	orrs r0, r2
	strb r0, [r1, #0x1a]
	adds r1, #0x27
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0806F69C
	pop {r4, pc}
	.align 2, 0
_08074C40: .4byte gPlayerState

	thumb_func_start sub_08074C44
sub_08074C44: @ 0x08074C44
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08078EFC
	cmp r0, #0
	bne _08074C60
	ldr r0, _08074C64 @ =gUnk_0811BC88
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08074C60:
	pop {r4, pc}
	.align 2, 0
_08074C64: .4byte gUnk_0811BC88

	thumb_func_start sub_08074C68
sub_08074C68: @ 0x08074C68
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x68
	movs r2, #0
	strb r2, [r6]
	ldr r5, _08074CA0 @ =gPlayerState
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r3, [r0]
	cmp r3, #1
	beq _08074CA8
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	ldr r0, _08074CA4 @ =gPlayerScriptExecutionContext
	cmp r1, r0
	bne _08074CF2
	movs r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	bl sub_0807DD64
	adds r0, r4, #0
	bl sub_08074CF8
	b _08074CF2
	.align 2, 0
_08074CA0: .4byte gPlayerState
_08074CA4: .4byte gPlayerScriptExecutionContext
_08074CA8:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	strb r2, [r4, #0x14]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #2
	strb r0, [r4, #0xd]
	strb r3, [r6]
	adds r0, r4, #0
	bl sub_0807DD64
	adds r0, r5, #0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	bne _08074CE4
	ldr r0, _08074CE0 @ =0x0000073A
	b _08074CE6
	.align 2, 0
_08074CE0: .4byte 0x0000073A
_08074CE4:
	ldr r0, _08074CF4 @ =0x00000736
_08074CE6:
	strh r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #5
	bl DoFade
_08074CF2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08074CF4: .4byte 0x00000736

	thumb_func_start sub_08074CF8
sub_08074CF8: @ 0x08074CF8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r6, [r5, #0x14]
	adds r4, r5, #0
	adds r4, #0x84
	ldr r1, [r4]
	bl ExecuteScript
	ldr r1, [r4]
	adds r0, r5, #0
	bl sub_08074D34
	adds r0, r5, #0
	adds r0, #0x82
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08074D20
	strb r6, [r5, #0x14]
_08074D20:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r5, #0
	bl sub_08003FC4
	adds r0, r5, #0
	bl UpdateAnimationSingleFrame
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08074D34
sub_08074D34: @ 0x08074D34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _08074D46
	b _08074EF8
_08074D46:
	movs r7, #0x80
	lsls r7, r7, #1
	adds r5, r4, #0
	adds r5, #0x82
_08074D4E:
	ldr r1, [r6, #8]
	mvns r0, r1
	adds r2, r0, #1
	ands r2, r1
	eors r1, r2
	str r1, [r6, #8]
	cmp r2, r7
	bne _08074D60
	b _08074E82
_08074D60:
	cmp r2, r7
	bhi _08074D90
	cmp r2, #8
	beq _08074E2C
	cmp r2, #8
	bhi _08074D7C
	cmp r2, #2
	beq _08074E08
	cmp r2, #2
	bls _08074D76
	b _08074EF0
_08074D76:
	cmp r2, #1
	beq _08074DEC
	b _08074EF0
_08074D7C:
	cmp r2, #0x20
	beq _08074E62
	cmp r2, #0x20
	bhi _08074D8A
	cmp r2, #0x10
	beq _08074E54
	b _08074EF0
_08074D8A:
	cmp r2, #0x80
	beq _08074E70
	b _08074EF0
_08074D90:
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r2, r0
	bne _08074D9A
	b _08074EAE
_08074D9A:
	cmp r2, r0
	bhi _08074DBE
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r2, r0
	beq _08074E96
	cmp r2, r0
	bhi _08074DB4
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r2, r0
	beq _08074E90
	b _08074EF0
_08074DB4:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r2, r0
	beq _08074EA8
	b _08074EF0
_08074DBE:
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r2, r0
	bne _08074DC8
	b _08074EBE
_08074DC8:
	cmp r2, r0
	bhi _08074DD6
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r2, r0
	beq _08074EB4
	b _08074EF0
_08074DD6:
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r2, r0
	bne _08074DE0
	b _08074ED8
_08074DE0:
	movs r0, #0x80
	lsls r0, r0, #0xe
	cmp r2, r0
	bne _08074DEA
	b _08074EE4
_08074DEA:
	b _08074EF0
_08074DEC:
	ldr r2, _08074E00 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08074E04
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2, #8]
	b _08074EF0
	.align 2, 0
_08074E00: .4byte gPlayerState
_08074E04:
	strh r7, [r2, #8]
	b _08074EF0
_08074E08:
	ldr r2, _08074E1C @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08074E24
	ldr r0, _08074E20 @ =0x00000404
	strh r0, [r2, #8]
	b _08074EF0
	.align 2, 0
_08074E1C: .4byte gPlayerState
_08074E20: .4byte 0x00000404
_08074E24:
	movs r0, #0x82
	lsls r0, r0, #1
	strh r0, [r2, #8]
	b _08074EF0
_08074E2C:
	ldr r1, _08074E3C @ =gPlayerState
	ldr r0, [r1, #0x30]
	ands r0, r2
	cmp r0, #0
	beq _08074E44
	ldr r0, _08074E40 @ =0x0000041C
	b _08074E46
	.align 2, 0
_08074E3C: .4byte gPlayerState
_08074E40: .4byte 0x0000041C
_08074E44:
	ldr r0, _08074E50 @ =0x0000080C
_08074E46:
	strh r0, [r1, #8]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	b _08074EF0
	.align 2, 0
_08074E50: .4byte 0x0000080C
_08074E54:
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0x18
	rsbs r2, r2, #0
	bl CreateSpeechBubbleExclamationMark
	b _08074EF0
_08074E62:
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0x18
	rsbs r2, r2, #0
	bl CreateSpeechBubbleQuestionMark
	b _08074EF0
_08074E70:
	ldrb r0, [r4, #0x18]
	movs r2, #4
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	b _08074EF0
_08074E82:
	ldrb r0, [r4, #0x18]
	movs r3, #4
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	b _08074EF0
_08074E90:
	movs r0, #0
	strh r0, [r5]
	b _08074EF0
_08074E96:
	ldrh r0, [r5]
	ldr r2, _08074EA4 @ =0x0000FFFE
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r5]
	b _08074EF0
	.align 2, 0
_08074EA4: .4byte 0x0000FFFE
_08074EA8:
	ldrh r0, [r5]
	movs r1, #1
	b _08074EB8
_08074EAE:
	ldrh r0, [r5]
	movs r1, #8
	b _08074EB8
_08074EB4:
	ldrh r0, [r5]
	movs r1, #4
_08074EB8:
	orrs r0, r1
	strh r0, [r5]
	b _08074EF0
_08074EBE:
	ldrb r2, [r4, #0x18]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r0, r1
	lsls r0, r0, #6
	movs r3, #0x41
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #0x18]
	b _08074EF0
_08074ED8:
	movs r1, #2
	strb r1, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x68
	strb r1, [r0]
	b _08074EF0
_08074EE4:
	movs r0, #0
	movs r1, #3
	strb r1, [r4, #0xd]
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
_08074EF0:
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _08074EF8
	b _08074D4E
_08074EF8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08074F00
sub_08074F00: @ 0x08074F00
	push {lr}
	ldr r2, _08074F18 @ =gUnk_0811BC98
	adds r1, r0, #0
	adds r1, #0x68
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08074F18: .4byte gUnk_0811BC98

	thumb_func_start sub_08074F1C
sub_08074F1C: @ 0x08074F1C
	adds r2, r0, #0
	adds r2, #0x68
	movs r3, #0
	movs r1, #1
	strb r1, [r2]
	strb r3, [r0, #0x14]
	bx lr
	.align 2, 0

	thumb_func_start sub_08074F2C
sub_08074F2C: @ 0x08074F2C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x84
	ldr r1, [r5]
	bl ExecuteScript
	ldr r1, [r5]
	adds r0, r4, #0
	bl sub_08074D34
	pop {r4, r5, pc}

	thumb_func_start sub_08074F44
sub_08074F44: @ 0x08074F44
	push {lr}
	adds r0, #0x68
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldr r0, _08074F74 @ =gPlayerEntity
	ldr r0, [r0, #0x6c]
	cmp r0, #0
	beq _08074F5A
	bl DeleteEntity
_08074F5A:
	ldr r2, _08074F78 @ =gPlayerState
	adds r0, r2, #0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	bne _08074F80
	ldr r0, _08074F7C @ =0x0000073B
	strh r0, [r2, #8]
	ldr r0, [r2, #0x30]
	movs r1, #8
	orrs r0, r1
	str r0, [r2, #0x30]
	b _08074F84
	.align 2, 0
_08074F74: .4byte gPlayerEntity
_08074F78: .4byte gPlayerState
_08074F7C: .4byte 0x0000073B
_08074F80:
	ldr r0, _08074F88 @ =0x00000737
	strh r0, [r2, #8]
_08074F84:
	pop {pc}
	.align 2, 0
_08074F88: .4byte 0x00000737

	thumb_func_start sub_08074F8C
sub_08074F8C: @ 0x08074F8C
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r0, [r3]
	cmp r0, #1
	bne _08074FAC
	movs r0, #0
	strb r0, [r3]
	ldr r2, _08074FDC @ =gActiveScriptInfo
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
_08074FAC:
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08074FEA
	adds r1, r4, #0
	adds r1, #0x68
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #8
	strb r0, [r4, #0xe]
	movs r0, #4
	strb r0, [r4, #0x14]
	ldr r1, _08074FE0 @ =gPlayerState
	adds r0, r1, #0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	bne _08074FE4
	movs r0, #0x80
	lsls r0, r0, #3
	b _08074FE8
	.align 2, 0
_08074FDC: .4byte gActiveScriptInfo
_08074FE0: .4byte gPlayerState
_08074FE4:
	movs r0, #0x80
	lsls r0, r0, #1
_08074FE8:
	strh r0, [r1, #8]
_08074FEA:
	pop {r4, pc}

	thumb_func_start sub_08074FEC
sub_08074FEC: @ 0x08074FEC
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08075016
	adds r1, r4, #0
	adds r1, #0x68
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #4
	strb r0, [r4, #0xe]
	ldr r0, _08075018 @ =gPlayerState
	adds r0, #0x3a
	ldrb r0, [r0]
	strb r0, [r4, #0x14]
_08075016:
	pop {r4, pc}
	.align 2, 0
_08075018: .4byte gPlayerState

	thumb_func_start sub_0807501C
sub_0807501C: @ 0x0807501C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08075086
	ldr r1, _08075044 @ =gPlayerState
	adds r0, r1, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	strb r0, [r2, #0x14]
	adds r0, r1, #0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807504C
	ldr r0, _08075048 @ =0x0000041C
	b _0807504E
	.align 2, 0
_08075044: .4byte gPlayerState
_08075048: .4byte 0x0000041C
_0807504C:
	ldr r0, _08075088 @ =0x0000080C
_0807504E:
	strh r0, [r1, #8]
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3]
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #2
	strb r0, [r2, #0x15]
	movs r0, #0xc8
	strh r0, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r2, #0x20]
	movs r0, #8
	strb r0, [r2, #0xe]
	adds r1, r2, #0
	adds r1, #0x68
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0x7c
	bl SoundReq
_08075086:
	pop {pc}
	.align 2, 0
_08075088: .4byte 0x0000080C

	thumb_func_start sub_0807508C
sub_0807508C: @ 0x0807508C
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	beq _080750AA
	adds r0, r4, #0
	bl sub_0806F69C
	b _080750F2
_080750AA:
	ldr r2, _080750BC @ =gPlayerState
	adds r0, r2, #0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	bne _080750C0
	movs r0, #0x80
	lsls r0, r0, #3
	b _080750CE
	.align 2, 0
_080750BC: .4byte gPlayerState
_080750C0:
	ldr r0, [r2, #0x30]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x30]
	movs r0, #0x80
	lsls r0, r0, #1
_080750CE:
	strh r0, [r2, #8]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080750F2
	movs r0, #4
	strb r0, [r4, #0x14]
	movs r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x68
	strb r1, [r0]
	movs r0, #0x7d
	bl SoundReq
_080750F2:
	pop {r4, pc}

	thumb_func_start sub_080750F4
sub_080750F4: @ 0x080750F4
	push {lr}
	ldr r2, _0807510C @ =gUnk_0811BCB4
	adds r1, r0, #0
	adds r1, #0x68
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0807510C: .4byte gUnk_0811BCB4

	thumb_func_start sub_08075110
sub_08075110: @ 0x08075110
	adds r2, r0, #0
	adds r2, #0x68
	ldrb r1, [r2]
	adds r1, #1
	movs r3, #0
	strb r1, [r2]
	ldrb r1, [r0, #0x14]
	strb r1, [r0, #0xf]
	strb r3, [r0, #0x14]
	ldr r2, _08075134 @ =gPlayerState
	ldr r0, _08075138 @ =0x00000734
	strh r0, [r2, #8]
	ldr r0, [r2, #0x30]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x30]
	bx lr
	.align 2, 0
_08075134: .4byte gPlayerState
_08075138: .4byte 0x00000734

	thumb_func_start sub_0807513C
sub_0807513C: @ 0x0807513C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl UpdateAnimationSingleFrame
	adds r4, r5, #0
	adds r4, #0x5a
	ldrb r0, [r4]
	cmp r0, #1
	bne _08075158
	movs r0, #0
	strb r0, [r4]
	movs r0, #0x7c
	bl SoundReq
_08075158:
	ldrb r0, [r4]
	cmp r0, #2
	bne _0807516E
	movs r0, #0
	strb r0, [r4]
	ldr r0, _08075188 @ =0x0000014B
	bl SoundReq
	movs r0, #0x7a
	bl SoundReq
_0807516E:
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08075186
	adds r0, r5, #0
	adds r0, #0x68
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	movs r0, #0x3c
	strb r0, [r5, #0xe]
_08075186:
	pop {r4, r5, pc}
	.align 2, 0
_08075188: .4byte 0x0000014B

	thumb_func_start sub_0807518C
sub_0807518C: @ 0x0807518C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080751AA
	adds r1, #0x68
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _080751AC @ =gPlayerState
	ldr r0, _080751B0 @ =0x000003C9
	strh r0, [r1, #8]
_080751AA:
	pop {pc}
	.align 2, 0
_080751AC: .4byte gPlayerState
_080751B0: .4byte 0x000003C9

	thumb_func_start sub_080751B4
sub_080751B4: @ 0x080751B4
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080751E2
	movs r1, #0
	movs r0, #4
	strb r0, [r4, #0x14]
	movs r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x68
	strb r1, [r0]
	ldr r1, _080751E4 @ =gPlayerState
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #8]
_080751E2:
	pop {r4, pc}
	.align 2, 0
_080751E4: .4byte gPlayerState

	thumb_func_start sub_080751E8
sub_080751E8: @ 0x080751E8
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r4, _08075230 @ =gPlayerScriptExecutionContext
	adds r0, r4, #0
	movs r1, #0x24
	bl MemClear
	str r6, [r4]
	ldr r0, _08075234 @ =gPlayerEntity
	adds r0, #0x84
	str r4, [r0]
	ldr r2, _08075238 @ =gPlayerState
	movs r1, #0
	movs r0, #0x1c
	strb r0, [r2, #0xc]
	adds r0, r2, #0
	adds r0, #0x38
	movs r4, #1
	strb r4, [r0]
	adds r3, r2, #0
	adds r3, #0x39
	strb r1, [r3]
	adds r0, #2
	strb r5, [r0]
	ldr r0, [r2, #0x30]
	movs r1, #8
	orrs r0, r1
	str r0, [r2, #0x30]
	cmp r7, #0
	bne _08075240
	strb r7, [r3]
	ldr r6, _0807523C @ =script_08009ECC
	b _08075244
	.align 2, 0
_08075230: .4byte gPlayerScriptExecutionContext
_08075234: .4byte gPlayerEntity
_08075238: .4byte gPlayerState
_0807523C: .4byte script_08009ECC
_08075240:
	strb r4, [r3]
	ldr r6, _08075290 @ =script_08009EF0
_08075244:
	ldr r0, _08075294 @ =gPlayerState
	adds r0, #0x39
	ldrb r0, [r0]
	movs r1, #0
	cmp r0, #0
	bne _08075252
	movs r1, #2
_08075252:
	movs r0, #0x5b
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08075270
	ldr r0, _08075298 @ =gPlayerEntity
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r4, #0
	adds r1, r6, #0
	bl StartCutscene
_08075270:
	ldr r4, _08075298 @ =gPlayerEntity
	movs r1, #0xe
	rsbs r1, r1, #0
	movs r2, #0x1c
	rsbs r2, r2, #0
	adds r0, r4, #0
	bl CreateSpeechBubbleSleep
	str r0, [r4, #0x6c]
	cmp r0, #0
	beq _0807528C
	movs r1, #3
	bl sub_0805E3A0
_0807528C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08075290: .4byte script_08009EF0
_08075294: .4byte gPlayerState
_08075298: .4byte gPlayerEntity

	thumb_func_start sub_0807529C
sub_0807529C: @ 0x0807529C
	push {lr}
	movs r2, #0x20
	rsbs r2, r2, #0
	movs r1, #8
	bl CreateSpeechBubbleQuestionMark
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080752AC
sub_080752AC: @ 0x080752AC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	bne _080752D0
	adds r0, r5, #0
	bl sub_080002B8
	cmp r0, #0x29
	beq _080752DC
	movs r0, #1
	strb r0, [r4, #0x18]
	movs r0, #6
	strb r0, [r4, #0x19]
	b _080752DC
_080752D0:
	ldrb r0, [r4, #0x19]
	subs r0, #1
	strb r0, [r4, #0x19]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080752E2
_080752DC:
	ldr r1, _080752E4 @ =gActiveScriptInfo
	movs r0, #0
	strb r0, [r1, #6]
_080752E2:
	pop {r4, r5, pc}
	.align 2, 0
_080752E4: .4byte gActiveScriptInfo

	thumb_func_start sub_080752E8
sub_080752E8: @ 0x080752E8
	push {lr}
	ldr r3, _080752FC @ =gItemFunctions
	ldrb r2, [r0, #1]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_080752FC: .4byte gItemFunctions

	thumb_func_start DebugItem
DebugItem: @ 0x08075300
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08077BD4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
	pop {r4, r5, pc}

	thumb_func_start Sword
Sword: @ 0x08075314
	push {lr}
	ldr r2, _08075330 @ =gPlayerState
	adds r2, #0xa8
	movs r3, #2
	strb r3, [r2]
	ldr r3, _08075334 @ =gUnk_0811BD44
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_08075330: .4byte gPlayerState
_08075334: .4byte gUnk_0811BD44

	thumb_func_start sub_08075338
sub_08075338: @ 0x08075338
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r4, _0807536C @ =gPlayerState
	ldr r1, [r4, #0x30]
	movs r3, #0x80
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08075370
	ldrb r0, [r5, #9]
	movs r1, #0x80
	orrs r1, r0
	strb r1, [r5, #9]
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08077D38
	movs r0, #0xc0
	lsls r0, r0, #4
	strh r0, [r4, #8]
	movs r0, #0x75
	bl SoundReq
	b _080754B4
	.align 2, 0
_0807536C: .4byte gPlayerState
_08075370:
	ldrb r2, [r4, #2]
	cmp r2, #0
	beq _080753DC
	movs r6, #7
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #3
	beq _080753E4
	movs r0, #0x78
	ands r0, r2
	cmp r0, #0
	bne _080753E4
	ldr r3, _080753D4 @ =gPlayerEntity
	ldr r1, [r3, #0x20]
	ldr r0, _080753D8 @ =0x00017FFF
	cmp r1, r0
	bhi _080753E4
	adds r0, r4, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080753E4
	ldr r0, [r3, #0x34]
	cmp r0, #0
	beq _080753E4
	movs r0, #0x20
	orrs r0, r2
	strb r0, [r4, #2]
	adds r0, r4, #0
	adds r0, #0xab
	strb r6, [r0]
	movs r0, #8
	asrs r0, r7
	lsls r1, r0, #4
	orrs r0, r1
	ldrb r1, [r4, #4]
	orrs r0, r1
	strb r0, [r4, #4]
	adds r0, r5, #0
	bl sub_08077B98
	movs r0, #6
	strb r0, [r5, #4]
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08075898
	b _080754B4
	.align 2, 0
_080753D4: .4byte gPlayerEntity
_080753D8: .4byte 0x00017FFF
_080753DC:
	ldr r2, _080753F0 @ =gPlayerEntity
	ldr r0, [r2, #0x34]
	cmp r0, #0
	beq _080753F4
_080753E4:
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_080759B8
	b _080754B4
	.align 2, 0
_080753F0: .4byte gPlayerEntity
_080753F4:
	movs r6, #0x80
	lsls r6, r6, #0xb
	ands r6, r1
	cmp r6, #0
	beq _08075480
	adds r0, r4, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	bne _0807541E
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _080754B4
	bl DeleteEntity
	str r6, [r4, #0x2c]
	b _080754B4
_0807541E:
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08077D38
	adds r0, r5, #0
	bl sub_08077B98
	movs r3, #8
	adds r1, r3, #0
	asrs r1, r7
	lsls r0, r1, #4
	orrs r0, r1
	ldrb r2, [r4, #4]
	orrs r0, r2
	strb r0, [r4, #4]
	ldrb r2, [r4, #0xa]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #0xb]
	orrs r1, r0
	strb r1, [r4, #0xb]
	strb r3, [r5, #4]
	movs r0, #0x14
	strb r0, [r5, #7]
	movs r0, #6
	strb r0, [r5, #0xf]
	ldrb r1, [r5, #9]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #9]
	adds r1, r4, #0
	adds r1, #0xab
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r4, #0x30]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_08077DF4
	movs r0, #0x77
	bl SoundReq
	b _080754B4
_08075480:
	ldrb r1, [r4, #0x1b]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08075492
	strb r6, [r4, #0x1b]
	adds r0, r2, #0
	bl sub_0806F948
_08075492:
	ldr r1, [r4, #0x2c]
	cmp r1, #0
	beq _080754A6
	ldrb r0, [r1, #9]
	cmp r0, #1
	beq _080754A6
	adds r0, r1, #0
	bl DeleteEntity
	str r6, [r4, #0x2c]
_080754A6:
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08077D38
	adds r0, r5, #0
	bl sub_08077B98
_080754B4:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080754B8
sub_080754B8: @ 0x080754B8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r7, _080754D4 @ =gPlayerState
	ldrb r1, [r7, #0x1b]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080754D8
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08075694
	b _0807557E
	.align 2, 0
_080754D4: .4byte gPlayerState
_080754D8:
	ldrb r0, [r7, #4]
	cmp r0, #0
	beq _08075576
	adds r0, r4, #0
	bl UpdateItemAnim
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080754F2
	ldrb r1, [r4, #9]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #9]
_080754F2:
	ldr r0, _0807552C @ =gPlayerEntity
	adds r0, #0x5b
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08075538
	bl sub_0807B014
	adds r5, r0, #0
	cmp r5, #0
	beq _08075538
	movs r0, #8
	movs r1, #0xf
	movs r2, #2
	bl FindEntityByID
	cmp r0, #0
	bne _08075538
	adds r0, r4, #0
	movs r1, #0xf
	bl CreatePlayerBomb
	cmp r5, #0xf
	bne _08075530
	adds r1, r7, #0
	adds r1, #0xab
	movs r0, #5
	b _08075536
	.align 2, 0
_0807552C: .4byte gPlayerEntity
_08075530:
	adds r1, r7, #0
	adds r1, #0xab
	movs r0, #8
_08075536:
	strb r0, [r1]
_08075538:
	ldrb r1, [r4, #0xe]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0807557E
	ldr r1, _08075568 @ =gPlayerState
	ldr r0, [r1, #0x30]
	ands r0, r2
	cmp r0, #0
	bne _0807555C
	adds r0, r1, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807556C
_0807555C:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080759B8
	b _0807557E
	.align 2, 0
_08075568: .4byte gPlayerState
_0807556C:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08075580
	b _0807557E
_08075576:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080759B8
_0807557E:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08075580
sub_08075580: @ 0x08075580
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08077EFC
	cmp r0, #0
	beq _080755E6
	ldr r2, _080755C8 @ =gPlayerState
	ldrb r3, [r2, #2]
	cmp r3, #0
	bne _080755E6
	movs r1, #8
	asrs r1, r5
	ldrb r0, [r2, #0xa]
	bics r0, r1
	strb r0, [r2, #0xa]
	movs r0, #1
	strb r0, [r2, #0x1b]
	ldr r0, [r2, #0x2c]
	adds r0, #0x40
	movs r1, #0xd
	strb r1, [r0]
	strb r3, [r4, #0xf]
	movs r0, #2
	strb r0, [r4, #4]
	adds r0, r2, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080755CC
	movs r0, #0x28
	b _080755CE
	.align 2, 0
_080755C8: .4byte gPlayerState
_080755CC:
	movs r0, #0x50
_080755CE:
	strb r0, [r4, #7]
	movs r1, #0xb4
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_08077DF4
	movs r0, #0x43
	movs r1, #0
	movs r2, #0
	bl CreateObject
	b _080755EE
_080755E6:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080759B8
_080755EE:
	pop {r4, r5, pc}

	thumb_func_start sub_080755F0
sub_080755F0: @ 0x080755F0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08077EFC
	cmp r0, #0
	beq _08075642
	adds r0, r4, #0
	bl sub_08077EC8
	cmp r0, #0
	bne _0807564A
	ldr r2, _08075634 @ =gPlayerState
	ldrb r3, [r2, #0x1b]
	ldrb r0, [r2, #4]
	orrs r0, r3
	cmp r0, #0
	beq _08075638
	ldrb r0, [r4, #7]
	subs r0, #1
	strb r0, [r4, #7]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807564A
	movs r0, #3
	strb r0, [r4, #4]
	ldrb r0, [r4, #9]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #9]
	movs r0, #0x20
	orrs r0, r3
	strb r0, [r2, #0x1b]
	b _0807564A
	.align 2, 0
_08075634: .4byte gPlayerState
_08075638:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080759B8
	b _0807564A
_08075642:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080759B8
_0807564A:
	pop {r4, r5, pc}

	thumb_func_start sub_0807564C
sub_0807564C: @ 0x0807564C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r5, _08075668 @ =gPlayerState
	ldrb r1, [r5, #0x1b]
	ldrb r0, [r5, #4]
	orrs r0, r1
	cmp r0, #0
	bne _0807566C
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080759B8
	b _08075692
	.align 2, 0
_08075668: .4byte gPlayerState
_0807566C:
	adds r0, r4, #0
	bl sub_08077EC8
	cmp r0, #0
	bne _08075692
	adds r0, r4, #0
	bl sub_08077EFC
	cmp r0, #0
	beq _0807568A
	ldrb r1, [r5, #0x1b]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08075692
_0807568A:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08075694
_08075692:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08075694
sub_08075694: @ 0x08075694
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r3, #1
	strb r3, [r4, #7]
	ldr r2, _080756C4 @ =gPlayerState
	ldr r1, [r2, #0x30]
	movs r0, #0x80
	lsls r0, r0, #0x14
	ands r0, r1
	cmp r0, #0
	beq _080756D0
	ldr r0, _080756C8 @ =0xF7FFFFFF
	ands r1, r0
	ldr r0, _080756CC @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r2, #0x30]
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_08077DF4
	b _080756E0
	.align 2, 0
_080756C4: .4byte gPlayerState
_080756C8: .4byte 0xF7FFFFFF
_080756CC: .4byte 0xFFFBFFFF
_080756D0:
	adds r0, r2, #0
	adds r0, #0xab
	strb r3, [r0]
	movs r1, #0x92
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_08077DF4
_080756E0:
	ldr r2, _08075730 @ =gPlayerState
	movs r0, #8
	asrs r0, r5
	ldrb r1, [r2, #0xa]
	orrs r0, r1
	strb r0, [r2, #0xa]
	movs r0, #4
	strb r0, [r4, #4]
	movs r0, #6
	strb r0, [r4, #0xf]
	ldr r0, _08075734 @ =gPlayerEntity
	adds r0, #0x40
	movs r1, #0x1e
	strb r1, [r0]
	ldrb r1, [r2, #0x1b]
	movs r0, #0x40
	orrs r0, r1
	movs r1, #0xdf
	ands r0, r1
	strb r0, [r2, #0x1b]
	adds r3, r2, #0
	adds r3, #0xa0
	ldrb r0, [r3]
	cmp r0, #4
	bne _08075726
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08075726
	movs r0, #1
	strb r0, [r3]
	bl sub_0807A108
_08075726:
	movs r0, #0x76
	bl SoundReq
	pop {r4, r5, pc}
	.align 2, 0
_08075730: .4byte gPlayerState
_08075734: .4byte gPlayerEntity

	thumb_func_start sub_08075738
sub_08075738: @ 0x08075738
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r5, _08075750 @ =gPlayerState
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _08075754
	adds r0, r4, #0
	bl sub_080759B8
	b _0807588C
	.align 2, 0
_08075750: .4byte gPlayerState
_08075754:
	adds r0, r4, #0
	bl UpdateItemAnim
	adds r0, r4, #0
	bl sub_08077F10
	cmp r0, #0
	beq _08075768
	movs r0, #2
	strb r0, [r4, #7]
_08075768:
	ldrb r2, [r5, #0x1b]
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080757D4
	ldrb r1, [r5, #0xd]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08075780
	strb r1, [r4, #0xb]
_08075780:
	ldr r1, _080757D0 @ =gPlayerEntity
	ldrb r0, [r4, #0xb]
	strb r0, [r1, #0x15]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1, #0x24]
	ldrb r1, [r4, #0xe]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0807588C
	movs r2, #0xa
	adds r0, r5, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080757AA
	movs r2, #0xf
_080757AA:
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	movs r1, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r2, r0
	bls _080757C6
	ldrb r0, [r4, #7]
	subs r0, #1
	strb r0, [r4, #7]
	ands r0, r1
	cmp r0, #0
	bne _0807588C
_080757C6:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080759B8
	b _0807588C
	.align 2, 0
_080757D0: .4byte gPlayerEntity
_080757D4:
	ldr r7, _08075890 @ =gPlayerEntity
	adds r0, r7, #0
	adds r0, #0x5b
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08075816
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08075816
	adds r0, r5, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08075816
	adds r0, r4, #0
	movs r1, #0x14
	bl CreatePlayerBomb
	adds r2, r0, #0
	cmp r2, #0
	beq _08075816
	ldrb r0, [r7, #0x14]
	movs r1, #6
	ands r1, r0
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #0x14]
_08075816:
	ldr r5, _08075890 @ =gPlayerEntity
	adds r0, r5, #0
	adds r0, #0x5b
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0807587A
	ldr r2, _08075894 @ =gPlayerState
	ldrb r3, [r2, #0x1b]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _0807587A
	adds r0, r2, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807587A
	ldrb r0, [r4, #7]
	subs r0, #1
	strb r0, [r4, #7]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0807587A
	movs r0, #0x10
	orrs r0, r3
	strb r0, [r2, #0x1b]
	adds r1, r2, #0
	adds r1, #0xab
	movs r0, #6
	strb r0, [r1]
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0xb]
	movs r0, #1
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	movs r1, #8
	asrs r1, r6
	ldrb r0, [r2, #0xa]
	bics r0, r1
	strb r0, [r2, #0xa]
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_08077DF4
_0807587A:
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807588C
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080759B8
_0807588C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08075890: .4byte gPlayerEntity
_08075894: .4byte gPlayerState

	thumb_func_start sub_08075898
sub_08075898: @ 0x08075898
	push {lr}
	adds r2, r0, #0
	ldr r0, _080758AC @ =gPlayerState
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _080758AA
	adds r0, r2, #0
	bl sub_080759B8
_080758AA:
	pop {pc}
	.align 2, 0
_080758AC: .4byte gPlayerState

	thumb_func_start sub_080758B0
sub_080758B0: @ 0x080758B0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _080758C4 @ =gPlayerState
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _080758C8
	adds r0, r4, #0
	bl sub_080759B8
	b _080758F8
	.align 2, 0
_080758C4: .4byte gPlayerState
_080758C8:
	adds r0, r4, #0
	bl UpdateItemAnim
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080758F8
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrb r1, [r5, #0x1b]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080758EA
	movs r0, #3
	b _080758EC
_080758EA:
	movs r0, #5
_080758EC:
	strb r0, [r4, #4]
	ldr r2, _080758FC @ =gPlayerState
	ldrb r1, [r2, #0x1b]
	movs r0, #0xf7
	ands r0, r1
	strb r0, [r2, #0x1b]
_080758F8:
	pop {r4, r5, pc}
	.align 2, 0
_080758FC: .4byte gPlayerState

	thumb_func_start sub_08075900
sub_08075900: @ 0x08075900
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r5, _08075920 @ =gPlayerState
	ldrb r0, [r5, #0x12]
	cmp r0, #0x11
	bne _08075928
	ldr r0, [r5, #0x30]
	ldr r1, _08075924 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r5, #0x30]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080759B8
	b _080759B2
	.align 2, 0
_08075920: .4byte gPlayerState
_08075924: .4byte 0xFFFBFFFF
_08075928:
	adds r0, r4, #0
	bl UpdateItemAnim
	ldrb r1, [r5, #0x1b]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08075948
	movs r0, #0xa0
	strb r0, [r5, #0x1b]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0807564C
	b _080759B2
_08075948:
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _08075998
	subs r0, #1
	strb r0, [r4, #7]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08075962
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_08077DF4
_08075962:
	ldr r4, _08075990 @ =gPlayerEntity
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #3
	strb r0, [r4, #0x15]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	bl sub_08079E08
	ldr r0, _08075994 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080759B2
	adds r0, r4, #0
	movs r1, #0x11
	movs r2, #0x40
	bl CreateFx
	b _080759B2
	.align 2, 0
_08075990: .4byte gPlayerEntity
_08075994: .4byte gScreenTransition
_08075998:
	ldrb r1, [r4, #0xe]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080759B2
	ldr r0, [r5, #0x30]
	ldr r1, _080759B4 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r5, #0x30]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080759B8
_080759B2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080759B4: .4byte 0xFFFBFFFF

	thumb_func_start sub_080759B8
sub_080759B8: @ 0x080759B8
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldr r2, _080759E8 @ =gPlayerState
	ldr r1, [r2, #0x30]
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	bne _080759D0
	ldr r0, _080759EC @ =gPlayerEntity
	adds r0, #0x40
	strb r1, [r0]
_080759D0:
	ldr r0, [r2, #0x30]
	ldr r1, _080759F0 @ =0xF7FFFFFF
	ands r0, r1
	str r0, [r2, #0x30]
	movs r0, #0
	strb r0, [r2, #0x1b]
	str r0, [r2, #0x2c]
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_08077E78
	pop {r4, pc}
	.align 2, 0
_080759E8: .4byte gPlayerState
_080759EC: .4byte gPlayerEntity
_080759F0: .4byte 0xF7FFFFFF

	thumb_func_start Lantern
Lantern: @ 0x080759F4
	push {lr}
	ldr r3, _08075A08 @ =gUnk_0811BD68
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_08075A08: .4byte gUnk_0811BD68

	thumb_func_start sub_08075A0C
sub_08075A0C: @ 0x08075A0C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r0, [r4, #1]
	bl IsItemEquipped
	adds r6, r0, #0
	ldr r1, _08075A64 @ =gPlayerState
	ldrb r0, [r1, #5]
	cmp r0, #0
	bne _08075A3E
	ldrb r0, [r1, #0xc]
	cmp r0, #0x18
	beq _08075A3E
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne _08075A3E
	ldr r0, [r1, #0x2c]
	cmp r0, #0
	bne _08075A3E
	ldr r0, [r1, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08075A6C
_08075A3E:
	movs r0, #0xf
	adds r1, r6, #0
	bl ForceEquipItem
	ldr r0, _08075A64 @ =gPlayerState
	ldr r1, [r0, #0x30]
	ldr r2, _08075A68 @ =0xFF7FFFFF
	ands r1, r2
	str r1, [r0, #0x30]
	movs r0, #0xf
	adds r1, r6, #0
	bl ForceEquipItem
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
	b _08075AD0
	.align 2, 0
_08075A64: .4byte gPlayerState
_08075A68: .4byte 0xFF7FFFFF
_08075A6C:
	ldrb r1, [r4, #9]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #9]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077D38
	adds r0, r4, #0
	bl sub_08077BD4
	ldr r5, _08075AD4 @ =gPlayerEntity
	adds r0, r5, #0
	bl sub_0806F948
	movs r0, #0x10
	strb r0, [r4, #1]
	adds r1, r6, #0
	bl ForceEquipItem
	ldrb r1, [r5, #0x14]
	movs r0, #6
	ands r0, r1
	ldr r1, _08075AD8 @ =gUnk_08126EEC
	adds r4, r0, r1
	adds r0, r5, #0
	movs r1, #0x45
	movs r2, #1
	movs r3, #0
	bl CreateObjectWithParent
	adds r2, r0, #0
	cmp r2, #0
	beq _08075AD0
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x60
	strh r1, [r0]
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldrh r1, [r2, #0x2e]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
	movs r0, #1
	ldrsb r0, [r4, r0]
	ldrh r1, [r2, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
_08075AD0:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08075AD4: .4byte gPlayerEntity
_08075AD8: .4byte gUnk_08126EEC

	thumb_func_start sub_08075ADC
sub_08075ADC: @ 0x08075ADC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r2, _08075B44 @ =gPlayerState
	ldr r0, [r2, #0x2c]
	cmp r0, #0
	bne _08075B08
	ldrb r1, [r4, #0xe]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08075B08
	ldr r0, [r2, #0x30]
	movs r1, #0x88
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08075B08
	bl sub_08079D48
	cmp r0, #0
	bne _08075B4C
_08075B08:
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	ldr r3, _08075B44 @ =gPlayerState
	ldr r0, [r3, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r3, #0x30]
	movs r2, #8
	asrs r2, r5
	lsls r1, r2, #4
	orrs r1, r2
	ldrb r0, [r3, #4]
	bics r0, r1
	strb r0, [r3, #4]
	mvns r2, r2
	ldrb r1, [r3, #0xa]
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r3, #0xa]
	ldrb r0, [r3, #0xb]
	ands r2, r0
	strb r2, [r3, #0xb]
	ldr r0, _08075B48 @ =0x0000013D
	bl SoundReq
	b _08075B52
	.align 2, 0
_08075B44: .4byte gPlayerState
_08075B48: .4byte 0x0000013D
_08075B4C:
	adds r0, r4, #0
	bl UpdateItemAnim
_08075B52:
	pop {r4, r5, pc}

	thumb_func_start sub_08075B54
sub_08075B54: @ 0x08075B54
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov sb, r1
	ldr r5, _08075BB0 @ =gPlayerState
	ldr r0, [r5, #0x30]
	movs r1, #0x88
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08075B70
	b _08075C80
_08075B70:
	ldrb r0, [r6, #1]
	bl IsItemEquipped
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_08077F10
	cmp r0, #0
	bne _08075B86
	cmp r4, #1
	bls _08075BB8
_08075B86:
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _08075BB8
	movs r0, #0xf
	adds r1, r4, #0
	bl ForceEquipItem
	ldr r0, [r5, #0x30]
	ldr r1, _08075BB4 @ =0xFF7FFFFF
	ands r0, r1
	str r0, [r5, #0x30]
	adds r0, r6, #0
	mov r1, sb
	bl sub_08077E78
	movs r0, #0x9f
	lsls r0, r0, #1
	bl SoundReq
	b _08075C80
	.align 2, 0
_08075BB0: .4byte gPlayerState
_08075BB4: .4byte 0xFF7FFFFF
_08075BB8:
	ldr r0, _08075C88 @ =gPlayerState
	mov r8, r0
	ldrb r0, [r0, #0xc]
	cmp r0, #0x18
	beq _08075C80
	ldr r5, _08075C8C @ =gPlayerEntity
	ldrb r0, [r5, #0x1e]
	cmp r0, #0x36
	bhi _08075C80
	ldrh r1, [r5, #0x12]
	cmp r1, #6
	bne _08075C80
	ldrb r0, [r5, #0x14]
	ands r1, r0
	ldr r0, _08075C90 @ =gUnk_08126EEC
	adds r7, r1, r0
	mov r1, r8
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne _08075C80
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	movs r1, #0
	ldrsb r1, [r7, r1]
	adds r0, r0, r1
	ldr r4, _08075C94 @ =gRoomControls
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	movs r2, #1
	ldrsb r2, [r7, r2]
	adds r1, r1, r2
	ldrh r2, [r4, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	adds r1, r5, #0
	adds r1, #0x38
	ldrb r1, [r1]
	movs r2, #0x40
	bl sub_080002F0
	cmp r0, #0
	beq _08075C80
	movs r0, #0xf
	strb r0, [r6, #0xf]
	ldrb r0, [r6, #4]
	adds r0, #1
	strb r0, [r6, #4]
	adds r1, r5, #0
	adds r1, #0x7a
	movs r0, #2
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #0x45
	movs r2, #1
	movs r3, #0
	bl CreateObjectWithParent
	adds r2, r0, #0
	cmp r2, #0
	beq _08075C60
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x60
	strh r1, [r0]
	movs r0, #0
	ldrsb r0, [r7, r0]
	ldrh r1, [r2, #0x2e]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
	movs r0, #1
	ldrsb r0, [r7, r0]
	ldrh r1, [r2, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
_08075C60:
	ldr r1, _08075C98 @ =0x0000060C
	adds r0, r6, #0
	bl sub_08077DF4
	movs r1, #8
	mov r2, sb
	asrs r1, r2
	mov r0, r8
	ldrb r2, [r0, #0xa]
	adds r0, r1, #0
	orrs r0, r2
	mov r2, r8
	strb r0, [r2, #0xa]
	ldrb r0, [r2, #0xb]
	orrs r1, r0
	strb r1, [r2, #0xb]
_08075C80:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08075C88: .4byte gPlayerState
_08075C8C: .4byte gPlayerEntity
_08075C90: .4byte gUnk_08126EEC
_08075C94: .4byte gRoomControls
_08075C98: .4byte 0x0000060C

	thumb_func_start sub_08075C9C
sub_08075C9C: @ 0x08075C9C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl UpdateItemAnim
	ldrb r1, [r4, #0xe]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08075CCA
	ldr r0, _08075CF8 @ =gPlayerEntity
	ldrb r1, [r0, #0x14]
	movs r2, #6
	ands r2, r1
	ldr r1, _08075CFC @ =gUnk_08126EEC
	adds r2, r2, r1
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldrb r2, [r2, #1]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	bl sub_0807AB44
_08075CCA:
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08075D04
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #4]
	subs r0, #1
	strb r0, [r4, #4]
	ldr r2, _08075D00 @ =gPlayerState
	movs r1, #8
	asrs r1, r5
	mvns r1, r1
	ldrb r3, [r2, #0xa]
	adds r0, r1, #0
	ands r0, r3
	strb r0, [r2, #0xa]
	ldrb r0, [r2, #0xb]
	ands r1, r0
	strb r1, [r2, #0xb]
	b _08075D0E
	.align 2, 0
_08075CF8: .4byte gPlayerEntity
_08075CFC: .4byte gUnk_08126EEC
_08075D00: .4byte gPlayerState
_08075D04:
	ldr r1, _08075D10 @ =gPlayerEntity
	adds r1, #0x7a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_08075D0E:
	pop {r4, r5, pc}
	.align 2, 0
_08075D10: .4byte gPlayerEntity

	thumb_func_start sub_08075D14
sub_08075D14: @ 0x08075D14
	push {lr}
	ldr r3, _08075D28 @ =gUnk_0811BD78
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_08075D28: .4byte gUnk_0811BD78

	thumb_func_start sub_08075D2C
sub_08075D2C: @ 0x08075D2C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r5, _08075D74 @ =gPlayerState
	ldrb r1, [r5, #4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08075D7C
	ldrb r1, [r4, #1]
	adds r0, r4, #0
	bl sub_08077C94
	cmp r0, #0
	bne _08075D7C
	ldrb r1, [r4, #9]
	movs r0, #0xf
	orrs r0, r1
	strb r0, [r4, #9]
	ldr r0, _08075D78 @ =gPlayerEntity
	bl sub_0806F948
	adds r0, r4, #0
	movs r1, #0xb
	bl sub_08077C0C
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077D38
	ldrb r1, [r5, #4]
	movs r0, #8
	orrs r0, r1
	strb r0, [r5, #4]
	b _08075D84
	.align 2, 0
_08075D74: .4byte gPlayerState
_08075D78: .4byte gPlayerEntity
_08075D7C:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077E78
_08075D84:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08075D88
sub_08075D88: @ 0x08075D88
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r2, _08075DBC @ =gPlayerState
	ldrb r1, [r2, #4]
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08075DD0
	ldrb r0, [r4, #1]
	cmp r0, #0xc
	bne _08075DC0
	ldrb r1, [r2, #0xa]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08075DC0
	ldrb r1, [r4, #0xe]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08075DC0
	bl sub_08078F60
	b _08075DD8
	.align 2, 0
_08075DBC: .4byte gPlayerState
_08075DC0:
	adds r0, r4, #0
	bl UpdateItemAnim
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08075DD8
_08075DD0:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
_08075DD8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start Bow
Bow: @ 0x08075DDC
	push {lr}
	ldr r3, _08075DF0 @ =gUnk_0811BD80
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_08075DF0: .4byte gUnk_0811BD80

	thumb_func_start sub_08075DF4
sub_08075DF4: @ 0x08075DF4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r6, _08075E2C @ =gPlayerState
	ldrb r1, [r6, #4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08075E34
	ldrb r1, [r4, #9]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #9]
	ldr r0, _08075E30 @ =gPlayerEntity
	bl sub_0806F948
	adds r0, r4, #0
	bl sub_08077BB8
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077D38
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #1
	strb r0, [r1]
	b _08075E3C
	.align 2, 0
_08075E2C: .4byte gPlayerState
_08075E30: .4byte gPlayerEntity
_08075E34:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
_08075E3C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08075E40
sub_08075E40: @ 0x08075E40
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	mov r8, r1
	ldr r0, _08075EA0 @ =gPlayerState
	adds r1, r0, #0
	adds r1, #0x21
	ldrb r1, [r1]
	adds r6, r0, #0
	cmp r1, #0
	beq _08075EA8
	ldrb r1, [r6, #4]
	movs r5, #0x80
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	bne _08075EA8
	adds r0, r4, #0
	bl UpdateItemAnim
	ldrb r1, [r4, #0xe]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08075EB8
	movs r0, #2
	strb r0, [r4, #4]
	ldrb r1, [r4, #9]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #9]
	ldr r0, _08075EA4 @ =gSave
	adds r0, #0xad
	ldrb r0, [r0]
	cmp r0, #0
	beq _08075EB8
	strb r7, [r4, #0xf]
	movs r1, #8
	mov r0, r8
	asrs r1, r0
	ldrb r0, [r6, #0xa]
	bics r0, r1
	strb r0, [r6, #0xa]
	b _08075EB8
	.align 2, 0
_08075EA0: .4byte gPlayerState
_08075EA4: .4byte gSave
_08075EA8:
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	mov r1, r8
	bl sub_08077E78
_08075EB8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08075EC0
sub_08075EC0: @ 0x08075EC0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, _08075F04 @ =gSave
	adds r0, #0xad
	ldrb r5, [r0]
	adds r0, r4, #0
	bl sub_08077EFC
	cmp r0, #0
	beq _08075F0C
	cmp r5, #0
	beq _08075F0C
	ldr r2, _08075F08 @ =gPlayerState
	ldrb r1, [r2, #4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08075EF0
	adds r0, r2, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	bne _08075F32
_08075EF0:
	adds r1, r2, #0
	adds r1, #0x21
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077E78
	b _08075F32
	.align 2, 0
_08075F04: .4byte gSave
_08075F08: .4byte gPlayerState
_08075F0C:
	ldr r2, _08075F34 @ =gPlayerState
	movs r0, #8
	asrs r0, r6
	ldrb r1, [r2, #0xa]
	orrs r0, r1
	strb r0, [r2, #0xa]
	movs r1, #0x9f
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_08077DF4
	movs r1, #0xf
	movs r0, #0xf
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #9]
	orrs r1, r0
	strb r1, [r4, #9]
	movs r0, #3
	strb r0, [r4, #4]
_08075F32:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08075F34: .4byte gPlayerState

	thumb_func_start sub_08075F38
sub_08075F38: @ 0x08075F38
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldr r2, _08075F6C @ =gPlayerState
	ldrb r1, [r2, #4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08075F70
	adds r0, r2, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _08075F70
	adds r0, r4, #0
	bl UpdateItemAnim
	ldrb r1, [r4, #0xe]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08075F80
	movs r0, #4
	strb r0, [r4, #4]
	b _08075F80
	.align 2, 0
_08075F6C: .4byte gPlayerState
_08075F70:
	adds r1, r2, #0
	adds r1, #0x21
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_08077E78
_08075F80:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08075F84
sub_08075F84: @ 0x08075F84
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r2, _08075FB4 @ =gPlayerState
	ldrb r1, [r2, #4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08075FC8
	adds r0, r2, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _08075FC8
	movs r0, #0x70
	bl GetInventoryValue
	cmp r0, #1
	bne _08075FB8
	adds r0, r4, #0
	movs r1, #5
	bl sub_08077E3C
	b _08075FBE
	.align 2, 0
_08075FB4: .4byte gPlayerState
_08075FB8:
	adds r0, r4, #0
	bl UpdateItemAnim
_08075FBE:
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08075FD8
_08075FC8:
	ldr r0, _08075FDC @ =gPlayerState
	adds r0, #0x21
	movs r1, #0
	strb r1, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
_08075FD8:
	pop {r4, r5, pc}
	.align 2, 0
_08075FDC: .4byte gPlayerState

	thumb_func_start Bomb
Bomb: @ 0x08075FE0
	push {lr}
	ldr r3, _08075FF4 @ =gUnk_0811BD98
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_08075FF4: .4byte gUnk_0811BD98

	thumb_func_start sub_08075FF8
sub_08075FF8: @ 0x08075FF8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _08076018 @ =gPlayerState
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #4]
	orrs r0, r1
	cmp r0, #0
	bne _08076076
	movs r5, #0
	movs r0, #8
	movs r1, #2
	movs r2, #2
	bl FindEntityByID
	b _08076026
	.align 2, 0
_08076018: .4byte gPlayerState
_0807601C:
	adds r5, #1
	adds r0, r4, #0
	movs r1, #2
	bl FindNextDuplicateID
_08076026:
	adds r4, r0, #0
	cmp r4, #0
	bne _0807601C
	ldrb r0, [r6, #1]
	movs r1, #1
	cmp r0, #7
	bne _08076036
	movs r1, #3
_08076036:
	cmp r1, r5
	bls _08076076
	adds r0, r6, #0
	movs r1, #2
	bl CreatePlayerBomb
	adds r4, r0, #0
	cmp r4, #0
	beq _08076076
	ldr r0, _08076080 @ =gPlayerEntity
	ldrb r2, [r0, #0x14]
	movs r1, #6
	ands r1, r2
	ldr r2, _08076084 @ =gUnk_0811BDAC
	adds r1, r1, r2
	movs r2, #0
	ldrsb r2, [r1, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r1, r3]
	lsls r3, r3, #0x10
	adds r1, r4, #0
	bl PositionRelative
	movs r0, #1
	rsbs r0, r0, #0
	bl ModBombs
	movs r0, #0x82
	lsls r0, r0, #1
	bl SoundReq
_08076076:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08077E78
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08076080: .4byte gPlayerEntity
_08076084: .4byte gUnk_0811BDAC

	thumb_func_start sub_08076088
sub_08076088: @ 0x08076088
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r3, r1, #0
	adds r5, r2, #0
	cmp r3, #0
	beq _080760AA
	ldrb r0, [r3, #0x16]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080760A4
	b _080761A0
_080760A4:
	movs r0, #2
	strb r0, [r3, #0xc]
	strb r1, [r3, #0xd]
_080760AA:
	str r3, [r4, #0x18]
	ldr r0, _080760C4 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080760CC
	ldr r1, _080760C8 @ =0x00000928
	adds r0, r4, #0
	bl sub_08077DF4
	b _080760D6
	.align 2, 0
_080760C4: .4byte gPlayerState
_080760C8: .4byte 0x00000928
_080760CC:
	movs r1, #0xce
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_08077DF4
_080760D6:
	ldr r3, _08076130 @ =gPlayerState
	movs r0, #0
	mov r8, r0
	movs r7, #3
	strb r7, [r3, #5]
	adds r0, r3, #0
	adds r0, #0xa8
	movs r6, #4
	strb r6, [r0]
	movs r0, #2
	strb r0, [r4, #4]
	movs r0, #0xf
	strb r0, [r4, #0xf]
	ldr r2, _08076134 @ =gPlayerEntity
	movs r1, #0x79
	adds r1, r1, r2
	mov ip, r1
	ldrb r1, [r1]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08076138
	mov r1, r8
	mov r0, ip
	strb r1, [r0]
	ldrb r0, [r2, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	strb r6, [r3, #5]
	movs r1, #8
	asrs r1, r5
	mvns r1, r1
	ldrb r2, [r3, #0xb]
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #0xb]
	ldrb r0, [r3, #0xa]
	ands r1, r0
	strb r1, [r3, #0xa]
	strb r7, [r4, #4]
	mov r0, r8
	strb r0, [r4, #0xf]
	b _0807614A
	.align 2, 0
_08076130: .4byte gPlayerState
_08076134: .4byte gPlayerEntity
_08076138:
	movs r1, #8
	asrs r1, r5
	ldrb r2, [r3, #0xa]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r3, #0xa]
	ldrb r0, [r3, #0xb]
	orrs r1, r0
	strb r1, [r3, #0xb]
_0807614A:
	adds r0, r4, #0
	movs r1, #0x13
	bl CreatePlayerBomb
	adds r3, r0, #0
	cmp r3, #0
	bne _08076162
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077F50
	b _080761A0
_08076162:
	ldr r1, _08076194 @ =gPlayerEntity
	str r3, [r1, #0x74]
	movs r2, #0
	strb r2, [r1, #0xf]
	ldr r0, [r4, #0x18]
	str r0, [r3, #0x54]
	ldrb r0, [r1, #0x16]
	strb r0, [r3, #0x16]
	str r4, [r3, #0x50]
	str r3, [r4, #0x18]
	ldrb r0, [r4, #3]
	strb r0, [r3, #0xb]
	ldrb r0, [r4, #7]
	strb r0, [r3, #0xe]
	ldrb r0, [r4, #8]
	strb r0, [r3, #0xf]
	ldr r0, [r4, #0x18]
	ldrb r1, [r0, #0x16]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0x10
	bne _08076198
	movs r0, #8
	strb r0, [r4, #7]
	b _0807619A
	.align 2, 0
_08076194: .4byte gPlayerEntity
_08076198:
	strb r2, [r4, #7]
_0807619A:
	movs r0, #0x7f
	bl SoundReq
_080761A0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start TryPickupObject
TryPickupObject: @ 0x080761A8
	push {lr}
	ldr r3, _080761BC @ =gUnk_0811BDB4
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_080761BC: .4byte gUnk_0811BDB4

	thumb_func_start sub_080761C0
sub_080761C0: @ 0x080761C0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r5, _08076220 @ =gPlayerState
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _080762B8
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _080761DE
	ldr r0, [r5, #0x30]
	ldr r1, _08076224 @ =0x00001201
	ands r0, r1
	cmp r0, #0
	beq _080762B8
_080761DE:
	ldr r1, _08076228 @ =gPlayerEntity
	ldrb r2, [r1, #0x14]
	movs r0, #0x80
	orrs r0, r2
	strb r0, [r5, #1]
	adds r1, #0x3d
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #8
	bgt _080762B8
	bl sub_080789A8
	adds r3, r0, #0
	cmp r3, #1
	beq _08076258
	cmp r3, #1
	blo _0807626E
	cmp r3, #2
	bne _080762C0
	ldr r0, _0807622C @ =gUnk_03003BE0
	ldr r2, [r0, #8]
	ldrb r1, [r2, #0x16]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08076230
	adds r0, r4, #0
	adds r1, r2, #0
	adds r2, r6, #0
	bl sub_08076088
	b _080762C0
	.align 2, 0
_08076220: .4byte gPlayerState
_08076224: .4byte 0x00001201
_08076228: .4byte gPlayerEntity
_0807622C: .4byte gUnk_03003BE0
_08076230:
	str r2, [r4, #0x18]
	strb r3, [r2, #0xc]
	movs r1, #5
	strb r1, [r2, #0xd]
	adds r0, r5, #0
	adds r0, #0xa8
	strb r1, [r0]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r2, #2
	adds r3, r6, #0
	bl sub_080762C4
	ldr r0, _08076254 @ =gUnk_0200AF00
	adds r0, #0x2e
	movs r1, #8
	strb r1, [r0]
	b _08076264
	.align 2, 0
_08076254: .4byte gUnk_0200AF00
_08076258:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	adds r3, r6, #0
	bl sub_080762C4
_08076264:
	movs r0, #0x81
	lsls r0, r0, #1
	bl SoundReq
	b _080762C0
_0807626E:
	movs r0, #5
	strb r0, [r4, #4]
	movs r0, #0xf
	strb r0, [r4, #7]
	movs r0, #6
	strb r0, [r4, #0xf]
	movs r3, #8
	adds r1, r3, #0
	asrs r1, r6
	ldrb r2, [r5, #0xa]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r5, #0xa]
	ldrb r0, [r5, #0xb]
	orrs r1, r0
	strb r1, [r5, #0xb]
	ldr r0, [r5, #0x30]
	ands r0, r3
	cmp r0, #0
	bne _080762A2
	movs r1, #0xde
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_08077DF4
	b _080762AA
_080762A2:
	ldr r1, _080762B4 @ =0x00000948
	adds r0, r4, #0
	bl sub_08077DF4
_080762AA:
	movs r0, #0x88
	bl SoundReq
	b _080762C0
	.align 2, 0
_080762B4: .4byte 0x00000948
_080762B8:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077F50
_080762C0:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080762C4
sub_080762C4: @ 0x080762C4
	push {lr}
	str r1, [r0, #0x18]
	ldr r1, _080762D4 @ =gPlayerState
	strb r2, [r1, #5]
	adds r1, r3, #0
	bl sub_08077D38
	pop {pc}
	.align 2, 0
_080762D4: .4byte gPlayerState

	thumb_func_start sub_080762D8
sub_080762D8: @ 0x080762D8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r4, _08076334 @ =gPlayerState
	ldrb r0, [r4, #5]
	movs r1, #0xcf
	ands r1, r0
	strb r1, [r4, #5]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08077F64
	cmp r0, #0
	bne _080762F6
	b _08076486
_080762F6:
	ldr r0, _08076338 @ =gPlayerEntity
	adds r1, r0, #0
	adds r1, #0x3d
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r3, r0, #0
	cmp r1, #8
	bgt _0807636C
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807636C
	ldr r2, [r5, #0x18]
	cmp r2, #0
	beq _08076340
	ldrh r1, [r2, #0xc]
	ldr r0, _0807633C @ =0x00000502
	cmp r1, r0
	bne _08076376
	adds r0, r4, #0
	adds r0, #0x90
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08076340
	movs r0, #6
	strb r0, [r2, #0xd]
	b _08076376
	.align 2, 0
_08076334: .4byte gPlayerState
_08076338: .4byte gPlayerEntity
_0807633C: .4byte 0x00000502
_08076340:
	ldr r2, _08076364 @ =gPlayerState
	adds r1, r2, #0
	adds r1, #0xa8
	movs r0, #5
	strb r0, [r1]
	ldr r0, _08076368 @ =gUnk_0200AF00
	adds r0, #0x2e
	movs r1, #8
	strb r1, [r0]
	ldrb r0, [r2, #2]
	cmp r0, #0
	beq _0807635A
	b _0807647E
_0807635A:
	ldrb r0, [r2, #5]
	cmp r0, #1
	bne _08076394
	b _08076380
	.align 2, 0
_08076364: .4byte gPlayerState
_08076368: .4byte gUnk_0200AF00
_0807636C:
	ldr r1, [r5, #0x18]
	cmp r1, #0
	beq _08076376
	movs r0, #6
	strb r0, [r1, #0xd]
_08076376:
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08077F50
	b _08076486
_08076380:
	adds r0, r3, #0
	movs r1, #6
	adds r2, r5, #0
	bl sub_0800875A
	cmp r0, #0
	beq _08076394
	adds r0, r5, #0
	movs r1, #0
	b _080763EC
_08076394:
	ldr r1, _080763F4 @ =gUnk_0811BE38
	ldr r7, _080763F8 @ =gPlayerEntity
	ldrb r0, [r7, #0x14]
	lsrs r0, r0, #1
	lsls r3, r0, #1
	adds r1, r3, r1
	ldr r4, _080763FC @ =gPlayerState
	adds r2, r4, #0
	adds r2, #0x90
	ldrh r0, [r1]
	ldrh r2, [r2]
	ands r0, r2
	cmp r0, #0
	beq _08076400
	adds r0, r5, #0
	bl UpdateItemAnim
	ldr r0, [r4, #0x30]
	movs r1, #8
	ands r0, r1
	movs r1, #0x94
	lsls r1, r1, #4
	cmp r0, #0
	bne _080763C8
	movs r1, #0xd0
	lsls r1, r1, #2
_080763C8:
	ldrh r0, [r5, #0x10]
	cmp r1, r0
	beq _080763D4
	adds r0, r5, #0
	bl sub_08077DF4
_080763D4:
	ldrb r0, [r4, #5]
	movs r1, #0x10
	orrs r1, r0
	strb r1, [r4, #5]
	adds r2, r4, #0
	adds r2, #0xa8
	movs r0, #0x1a
	strb r0, [r2]
	cmp r1, #1
	beq _08076486
	ldr r1, [r5, #0x18]
	adds r0, r5, #0
_080763EC:
	adds r2, r6, #0
	bl sub_08076088
	b _08076486
	.align 2, 0
_080763F4: .4byte gUnk_0811BE38
_080763F8: .4byte gPlayerEntity
_080763FC: .4byte gPlayerState
_08076400:
	ldr r0, _08076418 @ =gUnk_0811BE40
	adds r0, r3, r0
	ldrh r0, [r0]
	ands r0, r2
	cmp r0, #0
	beq _08076460
	ldrb r0, [r7, #0xf]
	cmp r0, #5
	bhi _0807641C
	adds r0, #1
	strb r0, [r7, #0xf]
	b _08076486
	.align 2, 0
_08076418: .4byte gUnk_0811BE40
_0807641C:
	ldrb r0, [r5, #0xa]
	adds r1, r4, #0
	adds r1, #0x35
	strb r0, [r1]
	ldrb r0, [r4, #6]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #6]
	ldrb r1, [r4, #5]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #0xa8
	movs r0, #0x19
	strb r0, [r1]
	ldr r0, [r4, #0x30]
	movs r1, #8
	ands r0, r1
	ldr r1, _0807645C @ =0x0000093C
	cmp r0, #0
	bne _0807644C
	movs r1, #0xcf
	lsls r1, r1, #2
_0807644C:
	ldrh r0, [r5, #0x10]
	cmp r1, r0
	bne _08076476
	adds r0, r5, #0
	bl UpdateItemAnim
	b _08076486
	.align 2, 0
_0807645C: .4byte 0x0000093C
_08076460:
	strb r0, [r7, #0xf]
	ldr r0, [r4, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _08076472
	movs r1, #0xd0
	lsls r1, r1, #2
	b _08076476
_08076472:
	movs r1, #0x94
	lsls r1, r1, #4
_08076476:
	adds r0, r5, #0
	bl sub_08077DF4
	b _08076486
_0807647E:
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08077F50
_08076486:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08076488
sub_08076488: @ 0x08076488
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r0, [r4, #7]
	adds r6, r0, #0
	cmp r6, #0
	bne _08076504
	adds r0, r4, #0
	bl sub_08077F64
	cmp r0, #0
	beq _08076508
	ldr r0, [r4, #0x18]
	ldrb r1, [r0, #0x16]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0x10
	bne _080764B8
	ldr r0, _080764F8 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08076510
_080764B8:
	adds r0, r4, #0
	bl UpdateItemAnim
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08076508
	ldr r2, _080764FC @ =gPlayerEntity
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	ldr r2, _08076500 @ =gPlayerState
	movs r0, #4
	strb r0, [r2, #5]
	movs r1, #8
	asrs r1, r5
	mvns r1, r1
	ldrb r3, [r2, #0xb]
	adds r0, r1, #0
	ands r0, r3
	strb r0, [r2, #0xb]
	ldrb r0, [r2, #0xa]
	ands r1, r0
	strb r1, [r2, #0xa]
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	strb r6, [r4, #0xf]
	b _08076508
	.align 2, 0
_080764F8: .4byte gScreenTransition
_080764FC: .4byte gPlayerEntity
_08076500: .4byte gPlayerState
_08076504:
	subs r0, #1
	strb r0, [r4, #7]
_08076508:
	ldr r0, _08076514 @ =gPlayerState
	adds r0, #0xa8
	movs r1, #4
	strb r1, [r0]
_08076510:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08076514: .4byte gPlayerState

	thumb_func_start sub_08076518
sub_08076518: @ 0x08076518
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	mov r8, r1
	bl sub_08077F64
	cmp r0, #0
	beq _080765D4
	ldr r5, _0807655C @ =gPlayerState
	adds r1, r5, #0
	adds r1, #0xa8
	movs r0, #4
	strb r0, [r1]
	ldrb r1, [r5, #2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080765D4
	ldrb r0, [r5, #0x1f]
	cmp r0, #0
	bne _080765D4
	ldr r6, _08076560 @ =gPlayerEntity
	adds r0, r6, #0
	adds r0, #0x42
	ldrb r7, [r0]
	cmp r7, #0
	beq _08076564
	adds r0, r4, #0
	mov r1, r8
	bl sub_08077F50
	b _080765D4
	.align 2, 0
_0807655C: .4byte gPlayerState
_08076560: .4byte gPlayerEntity
_08076564:
	adds r0, r5, #0
	adds r0, #0x92
	ldrh r1, [r0]
	ldr r0, _080765B0 @ =0x00008018
	ands r0, r1
	cmp r0, #0
	beq _080765D4
	adds r0, r6, #0
	bl sub_0806F948
	movs r0, #5
	strb r0, [r5, #5]
	ldr r1, [r4, #0x18]
	movs r0, #2
	strb r0, [r1, #0xd]
	ldr r2, [r4, #0x18]
	ldrb r1, [r6, #0x14]
	movs r0, #0xe
	ands r0, r1
	lsls r0, r0, #2
	strb r0, [r2, #0x15]
	str r7, [r4, #0x18]
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	movs r0, #0xf
	strb r0, [r4, #0xf]
	ldr r0, [r5, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080765B4
	movs r1, #0x93
	lsls r1, r1, #4
	adds r0, r4, #0
	bl sub_08077DF4
	b _080765BE
	.align 2, 0
_080765B0: .4byte 0x00008018
_080765B4:
	movs r1, #0xd1
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_08077DF4
_080765BE:
	ldr r2, _080765DC @ =gPlayerState
	movs r1, #8
	mov r0, r8
	asrs r1, r0
	ldrb r3, [r2, #0xa]
	adds r0, r1, #0
	orrs r0, r3
	strb r0, [r2, #0xa]
	ldrb r0, [r2, #0xb]
	orrs r1, r0
	strb r1, [r2, #0xb]
_080765D4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080765DC: .4byte gPlayerState

	thumb_func_start sub_080765E0
sub_080765E0: @ 0x080765E0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08077F64
	cmp r0, #0
	beq _08076608
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08076602
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077F50
	b _08076608
_08076602:
	adds r0, r4, #0
	bl UpdateItemAnim
_08076608:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0807660C
sub_0807660C: @ 0x0807660C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl UpdateItemAnim
	ldrb r0, [r4, #7]
	subs r0, #1
	strb r0, [r4, #7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0807662C
	ldr r0, _0807663C @ =gPlayerState
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0807663A
_0807662C:
	ldr r1, _0807663C @ =gPlayerState
	movs r0, #0
	strb r0, [r1, #1]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
_0807663A:
	pop {r4, r5, pc}
	.align 2, 0
_0807663C: .4byte gPlayerState

	thumb_func_start RocsCape
RocsCape: @ 0x08076640
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldrb r0, [r3, #4]
	cmp r0, #0
	beq _08076654
	adds r0, r3, #0
	bl sub_08076758
	b _08076754
_08076654:
	ldr r0, _080766BC @ =gPlayerState
	ldr r1, [r0, #0x2c]
	adds r2, r0, #0
	cmp r1, #0
	bne _0807674C
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _080766C4
	ldrb r1, [r2, #4]
	ldrb r0, [r2, #5]
	orrs r0, r1
	cmp r0, #0
	bne _0807674C
	ldrb r0, [r2, #0x12]
	cmp r0, #0x12
	beq _08076678
	cmp r0, #1
	bne _08076686
_08076678:
	ldr r0, _080766C0 @ =gPlayerEntity
	ldr r0, [r0, #0x34]
	cmp r0, #0
	bne _08076686
	ldrb r0, [r2, #0x14]
	cmp r0, #0
	beq _0807674C
_08076686:
	ldrb r1, [r2, #2]
	cmp r1, #0
	beq _08076694
	movs r0, #7
	ands r0, r1
	cmp r0, #3
	bne _08076710
_08076694:
	ldr r5, _080766C0 @ =gPlayerEntity
	ldr r0, [r5, #0x34]
	cmp r0, #0
	blt _0807674C
	movs r1, #0
	strb r1, [r2, #1]
	ldrb r0, [r3, #4]
	adds r0, #1
	strb r0, [r3, #4]
	strb r1, [r2, #0xb]
	movs r0, #1
	strb r0, [r2, #2]
	movs r0, #0xff
	strb r0, [r2, #0xe]
	str r1, [r2, #0x2c]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r5, #0x20]
	b _0807673C
	.align 2, 0
_080766BC: .4byte gPlayerState
_080766C0: .4byte gPlayerEntity
_080766C4:
	ldrb r0, [r2, #0x1b]
	ldrb r1, [r2, #0xa]
	orrs r0, r1
	ldrb r1, [r2, #4]
	orrs r0, r1
	ldrb r1, [r2, #5]
	orrs r0, r1
	ldrb r1, [r2, #0x1c]
	orrs r0, r1
	adds r1, r2, #0
	adds r1, #0x3d
	ldrb r1, [r1]
	orrs r0, r1
	cmp r0, #0
	bne _0807674C
	ldrb r1, [r2, #0x12]
	adds r0, r1, #0
	subs r0, #0x12
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080766F4
	cmp r1, #1
	bne _08076702
_080766F4:
	ldr r0, _0807671C @ =gPlayerEntity
	ldr r0, [r0, #0x34]
	cmp r0, #0
	bne _08076702
	ldrb r0, [r2, #0x14]
	cmp r0, #0
	beq _0807674C
_08076702:
	ldrb r1, [r2, #2]
	cmp r1, #0
	beq _08076720
	movs r0, #7
	ands r0, r1
	cmp r0, #3
	beq _08076720
_08076710:
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_08076758
	b _08076754
	.align 2, 0
_0807671C: .4byte gPlayerEntity
_08076720:
	ldr r1, _08076748 @ =gPlayerEntity
	ldr r0, [r1, #0x34]
	cmp r0, #0
	blt _0807674C
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r1, #0x20]
	movs r1, #0
	movs r0, #1
	strb r0, [r2, #2]
	str r1, [r2, #0x2c]
	ldrb r0, [r3, #4]
	adds r0, #1
	strb r0, [r3, #4]
_0807673C:
	bl sub_08077F84
	movs r0, #0x78
	bl SoundReq
	b _08076754
	.align 2, 0
_08076748: .4byte gPlayerEntity
_0807674C:
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_08077E78
_08076754:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08076758
sub_08076758: @ 0x08076758
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _080767C0 @ =gPlayerState
	movs r0, #0
	strb r0, [r5, #0xe]
	ldrb r2, [r5, #2]
	movs r0, #0x28
	ands r0, r2
	cmp r0, #0
	bne _080767F8
	cmp r2, #0
	beq _080767F8
	movs r0, #7
	ands r0, r2
	cmp r0, #3
	beq _080767F8
	adds r0, r4, #0
	bl sub_08077EFC
	cmp r0, #0
	beq _080767D8
	ldrb r0, [r4, #4]
	cmp r0, #1
	bhi _080767C8
	ldr r2, _080767C4 @ =gPlayerEntity
	ldr r0, [r2, #0x20]
	cmp r0, #0
	bgt _080767FE
	ldrb r3, [r5, #2]
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0
	bne _080767FE
	movs r0, #2
	strb r0, [r4, #4]
	adds r1, r2, #0
	adds r1, #0x7a
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r2, #0x20]
	movs r0, #0x10
	orrs r0, r3
	strb r0, [r5, #2]
	movs r0, #0xa2
	lsls r0, r0, #2
	strh r0, [r5, #8]
	movs r0, #0xb9
	lsls r0, r0, #1
	bl SoundReq
	b _080767FE
	.align 2, 0
_080767C0: .4byte gPlayerState
_080767C4: .4byte gPlayerEntity
_080767C8:
	ldr r1, _080767D4 @ =gPlayerEntity
	adds r1, #0x7a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _080767FE
	.align 2, 0
_080767D4: .4byte gPlayerEntity
_080767D8:
	ldrb r0, [r4, #4]
	cmp r0, #1
	bls _080767FE
	ldr r1, _080767F4 @ =gPlayerEntity
	adds r1, #0x7a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrb r1, [r5, #2]
	movs r0, #0xef
	ands r0, r1
	strb r0, [r5, #2]
	b _080767FE
	.align 2, 0
_080767F4: .4byte gPlayerEntity
_080767F8:
	adds r0, r4, #0
	bl sub_08077E78
_080767FE:
	pop {r4, r5, pc}

	thumb_func_start sub_08076800
sub_08076800: @ 0x08076800
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov sb, r1
	ldr r4, _0807682C @ =gPlayerEntity
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	cmp r0, #0
	beq _08076834
	ldr r1, _08076830 @ =gPlayerState
	movs r0, #0
	strb r0, [r1, #0x1e]
	strb r0, [r1, #0xe]
	adds r0, r6, #0
	mov r1, sb
	bl sub_08077E78
	b _080768EC
	.align 2, 0
_0807682C: .4byte gPlayerEntity
_08076830: .4byte gPlayerState
_08076834:
	ldrb r0, [r6, #7]
	subs r0, #1
	strb r0, [r6, #7]
	movs r1, #7
	mov r8, r1
	ands r0, r1
	cmp r0, #0
	bne _0807684A
	movs r0, #0x7d
	bl SoundReq
_0807684A:
	ldr r2, _08076880 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080768DA
	ldrb r1, [r6, #7]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	bne _080768DA
	ldrb r0, [r2, #0x12]
	cmp r0, #0x11
	bne _08076884
	adds r0, r4, #0
	adds r0, #0x63
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080768DA
	adds r0, r4, #0
	movs r1, #0x52
	movs r2, #0
	bl CreateFx
	b _080768DA
	.align 2, 0
_08076880: .4byte gPlayerState
_08076884:
	adds r0, r4, #0
	movs r1, #0x11
	movs r2, #0x40
	bl CreateFx
	adds r5, r0, #0
	cmp r5, #0
	beq _080768DA
	ldrh r0, [r5, #0x32]
	adds r0, #2
	strh r0, [r5, #0x32]
	ldrb r0, [r6, #4]
	cmp r0, #2
	beq _080768DA
	bl Random
	adds r4, r0, #0
	movs r0, #3
	ands r4, r0
	bl Random
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	beq _080768B8
	rsbs r4, r4, #0
_080768B8:
	ldrh r0, [r5, #0x32]
	adds r0, r0, r4
	strh r0, [r5, #0x32]
	bl Random
	adds r4, r0, #0
	mov r0, r8
	ands r4, r0
	bl Random
	ands r0, r7
	cmp r0, #0
	beq _080768D4
	rsbs r4, r4, #0
_080768D4:
	ldrh r0, [r5, #0x2e]
	adds r0, r0, r4
	strh r0, [r5, #0x2e]
_080768DA:
	ldr r0, _080768F4 @ =gUnk_0811BDCC
	ldrb r1, [r6, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r6, #0
	mov r1, sb
	bl _call_via_r2
_080768EC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080768F4: .4byte gUnk_0811BDCC

	thumb_func_start sub_080768F8
sub_080768F8: @ 0x080768F8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r3, _08076934 @ =gPlayerState
	ldrb r1, [r3, #0x1c]
	ldrb r0, [r3, #4]
	orrs r1, r0
	ldrb r0, [r3, #5]
	orrs r1, r0
	ldrb r0, [r3, #2]
	orrs r1, r0
	ldr r2, [r3, #0x30]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r2
	orrs r1, r0
	cmp r1, #0
	bne _08076954
	movs r0, #1
	strb r0, [r3, #0x1e]
	adds r0, r3, #0
	adds r0, #0x21
	strb r1, [r0]
	movs r0, #0x80
	ands r2, r0
	cmp r2, #0
	bne _08076938
	movs r0, #0x10
	strb r0, [r4, #7]
	b _0807693C
	.align 2, 0
_08076934: .4byte gPlayerState
_08076938:
	ldr r0, _08076950 @ =0x00000C14
	strh r0, [r3, #8]
_0807693C:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077D38
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08076964
	b _08076962
	.align 2, 0
_08076950: .4byte 0x00000C14
_08076954:
	movs r0, #0
	strb r0, [r3, #0x1e]
	strb r0, [r3, #0xe]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
_08076962:
	pop {r4, r5, pc}

	thumb_func_start sub_08076964
sub_08076964: @ 0x08076964
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r6, r1, #0
	bl sub_08077EFC
	cmp r0, #0
	bne _08076978
	b _08076A70
_08076978:
	ldr r0, _080769C4 @ =gPlayerEntity
	ldr r7, [r0, #0x34]
	cmp r7, #0
	bne _08076A70
	ldr r5, _080769C8 @ =gPlayerState
	ldrb r0, [r5, #0x1e]
	cmp r0, #0
	beq _08076A70
	adds r0, r4, #0
	bl UpdateItemAnim
	ldr r0, [r5, #0x30]
	movs r1, #0x80
	mov r8, r1
	ands r0, r1
	cmp r0, #0
	bne _080769A0
	adds r0, r4, #0
	bl UpdateItemAnim
_080769A0:
	ldrb r0, [r5, #0x1e]
	adds r0, #1
	strb r0, [r5, #0x1e]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bne _08076A7E
	ldr r0, [r5, #0x30]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080769CC
	strb r7, [r5, #0x1e]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077E78
	b _08076A7E
	.align 2, 0
_080769C4: .4byte gPlayerEntity
_080769C8: .4byte gPlayerState
_080769CC:
	movs r0, #0x40
	strb r0, [r5, #0x1e]
	movs r1, #8
	asrs r1, r6
	ldrb r0, [r5, #0xa]
	bics r0, r1
	strb r0, [r5, #0xa]
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	bl sub_0807A158
	cmp r0, #0
	beq _08076A46
	ldr r0, [r5, #0x30]
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _08076A60
	adds r0, r5, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08076A46
	adds r0, r5, #0
	adds r0, #0xab
	movs r1, #3
	strb r1, [r0]
	movs r1, #0xa6
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_08077DF4
	adds r0, r4, #0
	movs r1, #0xc
	bl CreatePlayerBomb
	adds r5, r0, #0
	cmp r5, #0
	beq _08076A70
	ldr r6, _08076A34 @ =gSave
	adds r4, r6, #0
	adds r4, #0xb4
	ldrb r0, [r4]
	bl sub_0805449C
	cmp r0, #0
	beq _08076A38
	ldrb r1, [r4]
	b _08076A3E
	.align 2, 0
_08076A34: .4byte gSave
_08076A38:
	adds r0, r6, #0
	adds r0, #0xb5
	ldrb r1, [r0]
_08076A3E:
	adds r0, r5, #0
	adds r0, #0x68
	strb r1, [r0]
	b _08076A7E
_08076A46:
	ldr r0, _08076A5C @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08076A60
	adds r1, #0x84
	adds r0, r4, #0
	bl sub_08077DF4
	b _08076A7E
	.align 2, 0
_08076A5C: .4byte gPlayerState
_08076A60:
	ldr r1, _08076A6C @ =gPlayerState
	movs r0, #0xc1
	lsls r0, r0, #4
	strh r0, [r1, #8]
	b _08076A7E
	.align 2, 0
_08076A6C: .4byte gPlayerState
_08076A70:
	ldr r1, _08076A84 @ =gPlayerState
	movs r0, #0
	strb r0, [r1, #0x1e]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077E78
_08076A7E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08076A84: .4byte gPlayerState

	thumb_func_start sub_08076A88
sub_08076A88: @ 0x08076A88
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	bl sub_08077EFC
	cmp r0, #0
	beq _08076B64
	ldr r1, _08076AB4 @ =gPlayerState
	ldrb r0, [r1, #0x1e]
	adds r3, r1, #0
	cmp r0, #0
	beq _08076B64
	ldr r0, [r3, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08076ABC
	ldr r1, _08076AB8 @ =gPlayerEntity
	movs r0, #0xc0
	lsls r0, r0, #2
	b _08076AC2
	.align 2, 0
_08076AB4: .4byte gPlayerState
_08076AB8: .4byte gPlayerEntity
_08076ABC:
	ldr r1, _08076B00 @ =gPlayerEntity
	movs r0, #0xa0
	lsls r0, r0, #2
_08076AC2:
	strh r0, [r1, #0x24]
	adds r5, r1, #0
	ldr r1, _08076B04 @ =gUnk_0800275C
	ldrb r2, [r5, #0x14]
	movs r6, #0xe
	adds r0, r6, #0
	ands r0, r2
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrh r0, [r5, #0x2a]
	ands r0, r1
	cmp r1, r0
	bne _08076B0E
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _08076B08
	movs r2, #0
	movs r0, #6
	strb r0, [r5, #0xc]
	strb r2, [r5, #0xd]
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	adds r0, r3, #0
	adds r0, #0x38
	strb r2, [r0]
	movs r0, #0xff
	strb r0, [r3, #0xd]
	b _08076B72
	.align 2, 0
_08076B00: .4byte gPlayerEntity
_08076B04: .4byte gUnk_0800275C
_08076B08:
	movs r0, #1
	strb r0, [r4, #8]
	b _08076B72
_08076B0E:
	ldr r1, _08076B60 @ =gUnk_0811BE38
	movs r0, #0xfe
	ands r0, r2
	adds r0, r0, r1
	adds r1, r3, #0
	adds r1, #0x90
	ldrh r2, [r0]
	ldrh r0, [r1]
	ands r0, r2
	cmp r0, #0
	bne _08076B64
	ldrb r0, [r4, #0xa]
	adds r1, r6, #0
	ands r1, r0
	lsls r0, r1, #2
	strb r0, [r4, #0xb]
	ldrb r2, [r3, #0xd]
	cmp r2, #0xff
	beq _08076B52
	cmp r2, r0
	beq _08076B52
	adds r0, r2, #0
	ldrb r1, [r4, #0xb]
	subs r0, r0, r1
	movs r2, #0x1f
	ands r0, r2
	cmp r0, #0xf
	bgt _08076B4A
	adds r0, r1, #2
	strb r0, [r4, #0xb]
_08076B4A:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	ands r0, r2
	strb r0, [r4, #0xb]
_08076B52:
	ldrb r0, [r4, #0xb]
	strb r0, [r3, #0xd]
	adds r0, r4, #0
	bl UpdateItemAnim
	b _08076B72
	.align 2, 0
_08076B60: .4byte gUnk_0811BE38
_08076B64:
	ldr r1, _08076B74 @ =gPlayerState
	movs r0, #0
	strb r0, [r1, #0x1e]
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08077E78
_08076B72:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08076B74: .4byte gPlayerState
