	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start GiantTwig
GiantTwig: @ 0x08093760
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #2
	beq _08093794
	cmp r0, #2
	bgt _08093778
	cmp r0, #0
	beq _08093784
	cmp r0, #1
	beq _0809378C
	b _080937BC
_08093778:
	cmp r0, #3
	beq _080937AC
	cmp r0, #0x41
	bgt _080937BC
	cmp r0, #0x40
	blt _080937BC
_08093784:
	ldr r0, _08093788 @ =gUnk_081228D8
	b _08093796
	.align 2, 0
_08093788: .4byte gUnk_081228D8
_0809378C:
	ldr r0, _08093790 @ =gUnk_081228E0
	b _08093796
	.align 2, 0
_08093790: .4byte gUnk_081228E0
_08093794:
	ldr r0, _080937A8 @ =gUnk_081228E8
_08093796:
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
	b _080937BC
	.align 2, 0
_080937A8: .4byte gUnk_081228E8
_080937AC:
	ldr r0, _080937C0 @ =gUnk_081228F0
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
_080937BC:
	pop {pc}
	.align 2, 0
_080937C0: .4byte gUnk_081228F0

	thumb_func_start sub_080937C4
sub_080937C4: @ 0x080937C4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #1
	strb r5, [r4, #0xc]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _08093808 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r6, #0x32
	ldrsh r0, [r4, r6]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r4, #0
	adds r0, #0x76
	strh r1, [r0]
	ldrb r0, [r4, #0xa]
	cmp r0, #0x41
	beq _0809386A
	cmp r0, #0x41
	bgt _0809387A
	cmp r0, #0
	beq _0809380C
	cmp r0, #0x40
	beq _08093840
	b _0809387A
	.align 2, 0
_08093808: .4byte gRoomControls
_0809380C:
	strb r5, [r4, #0x1e]
	ldrb r1, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x78
	strh r5, [r0]
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #0x3c
	strh r0, [r1]
	movs r0, #0x62
	movs r1, #0x40
	b _08093854
_08093840:
	movs r0, #2
	strb r0, [r4, #0x1e]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x62
	movs r1, #0x41
_08093854:
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _0809387A
	str r4, [r1, #0x50]
	adds r0, r4, #0
	bl CopyPosition
	b _0809387A
_0809386A:
	movs r0, #0
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x1b]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x1b]
_0809387A:
	adds r0, r4, #0
	bl sub_08093A1C
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08093884
sub_08093884: @ 0x08093884
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _080938B8
	ldr r0, _080938A8 @ =gPlayerEntity
	movs r3, #0x32
	ldrsh r1, [r0, r3]
	movs r3, #0x32
	ldrsh r0, [r2, r3]
	adds r0, #0x20
	cmp r1, r0
	bge _080938AC
	ldrb r0, [r2, #0x19]
	movs r1, #0x3f
	ands r1, r0
	movs r0, #0x40
	b _080938B4
	.align 2, 0
_080938A8: .4byte gPlayerEntity
_080938AC:
	ldrb r0, [r2, #0x19]
	movs r1, #0x3f
	ands r1, r0
	movs r0, #0x80
_080938B4:
	orrs r1, r0
	strb r1, [r2, #0x19]
_080938B8:
	adds r0, r2, #0
	bl sub_08093C70
	pop {pc}

	thumb_func_start sub_080938C0
sub_080938C0: @ 0x080938C0
	push {r4, r5, lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0xb]
	ands r1, r2
	adds r1, #3
	strb r1, [r0, #0x1e]
	adds r3, r0, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r2, #7
	orrs r1, r2
	strb r1, [r3]
	movs r1, #0x2e
	ldrsh r2, [r0, r1]
	ldr r3, _08093908 @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r2, r2, r1
	asrs r2, r2, #4
	movs r4, #0x3f
	ands r2, r4
	movs r5, #0x32
	ldrsh r1, [r0, r5]
	ldrh r3, [r3, #8]
	subs r1, r1, r3
	asrs r1, r1, #4
	ands r1, r4
	lsls r1, r1, #6
	orrs r2, r1
	adds r1, r0, #0
	adds r1, #0x76
	strh r2, [r1]
	bl sub_08093A1C
	pop {r4, r5, pc}
	.align 2, 0
_08093908: .4byte gRoomControls

	thumb_func_start nullsub_524
nullsub_524: @ 0x0809390C
	bx lr
	.align 2, 0

	thumb_func_start sub_08093910
sub_08093910: @ 0x08093910
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r3, #1
	strb r3, [r5, #0xc]
	ldrb r1, [r5, #0xb]
	adds r0, r3, #0
	ands r0, r1
	adds r0, #5
	strb r0, [r5, #0x1e]
	ldrb r0, [r5, #0x19]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r5, #0x19]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	ldr r2, _0809397C @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r0, [r5, r6]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r4
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r5, #0
	adds r0, #0x76
	strh r1, [r0]
	ldrb r0, [r5, #0xb]
	ands r3, r0
	cmp r3, #0
	beq _0809396C
	adds r1, r5, #0
	adds r1, #0x62
	movs r0, #8
	strb r0, [r1]
_0809396C:
	adds r0, r5, #0
	bl sub_08093984
	adds r0, r5, #0
	movs r1, #0x7b
	bl ChangeObjPalette
	pop {r4, r5, r6, pc}
	.align 2, 0
_0809397C: .4byte gRoomControls

	thumb_func_start nullsub_525
nullsub_525: @ 0x08093980
	bx lr
	.align 2, 0

	thumb_func_start sub_08093984
sub_08093984: @ 0x08093984
	push {r4, r5, r6, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xb]
	ldr r2, _080939B4 @ =gUnk_0812291E
	cmp r0, #0
	beq _08093992
	ldr r2, _080939B8 @ =gUnk_081228F8
_08093992:
	movs r5, #0
	adds r6, r1, #0
	adds r6, #0x76
	adds r4, r2, #0
_0809399A:
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldrh r0, [r6]
	adds r1, r1, r0
	ldr r0, _080939BC @ =0x00004074
	movs r2, #1
	bl SetTile
	adds r4, #2
	adds r5, #1
	cmp r5, #0x12
	bls _0809399A
	pop {r4, r5, r6, pc}
	.align 2, 0
_080939B4: .4byte gUnk_0812291E
_080939B8: .4byte gUnk_081228F8
_080939BC: .4byte 0x00004074

	thumb_func_start sub_080939C0
sub_080939C0: @ 0x080939C0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xb]
	movs r0, #3
	ands r0, r1
	adds r0, #7
	strb r0, [r4, #0x1e]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _08093A14 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r4, #0
	adds r0, #0x76
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_08093A1C
	adds r0, r4, #0
	movs r1, #0x7a
	bl ChangeObjPalette
	pop {r4, r5, pc}
	.align 2, 0
_08093A14: .4byte gRoomControls

	thumb_func_start nullsub_526
nullsub_526: @ 0x08093A18
	bx lr
	.align 2, 0

	thumb_func_start sub_08093A1C
sub_08093A1C: @ 0x08093A1C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r2, r0, #0
	ldrb r1, [r2, #0xa]
	cmp r1, #1
	beq _08093B0C
	cmp r1, #1
	bgt _08093A34
	cmp r1, #0
	beq _08093A3C
	b _08093C64
_08093A34:
	cmp r1, #3
	bne _08093A3A
	b _08093C54
_08093A3A:
	b _08093C64
_08093A3C:
	ldr r0, _08093AF0 @ =0x00004024
	adds r7, r2, #0
	adds r7, #0x76
	ldrh r1, [r7]
	adds r1, #0x3c
	adds r4, r2, #0
	adds r4, #0x38
	ldrb r2, [r4]
	bl SetTile
	ldr r5, _08093AF4 @ =0x00004022
	ldrh r1, [r7]
	adds r1, #0x3d
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	ldrh r1, [r7]
	adds r1, #0x3e
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	ldr r0, _08093AF8 @ =0x00004029
	mov r8, r0
	ldrh r1, [r7]
	adds r1, #0x7c
	ldrb r2, [r4]
	bl SetTile
	ldr r6, _08093AFC @ =0x00004026
	ldrh r1, [r7]
	adds r1, #0x7d
	ldrb r2, [r4]
	adds r0, r6, #0
	bl SetTile
	ldrh r1, [r7]
	adds r1, #0x7e
	ldrb r2, [r4]
	adds r0, r6, #0
	bl SetTile
	adds r5, #0x1b
	ldrh r1, [r7]
	adds r1, #0x40
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	ldrh r1, [r7]
	adds r1, #0x80
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	ldr r0, _08093B00 @ =0x00004027
	ldrh r1, [r7]
	adds r1, #0x41
	ldrb r2, [r4]
	bl SetTile
	ldr r0, _08093B04 @ =0x00004023
	ldrh r1, [r7]
	adds r1, #0x42
	ldrb r2, [r4]
	bl SetTile
	ldr r0, _08093B08 @ =0x0000406D
	ldrh r1, [r7]
	adds r1, #0x43
	ldrb r2, [r4]
	bl SetTile
	ldrh r1, [r7]
	adds r1, #0x81
	ldrb r2, [r4]
	mov r0, r8
	bl SetTile
	ldrh r1, [r7]
	adds r1, #0x82
	ldrb r2, [r4]
	adds r0, r6, #0
	bl SetTile
	ldrh r1, [r7]
	adds r1, #0x83
	b _08093B94
	.align 2, 0
_08093AF0: .4byte 0x00004024
_08093AF4: .4byte 0x00004022
_08093AF8: .4byte 0x00004029
_08093AFC: .4byte 0x00004026
_08093B00: .4byte 0x00004027
_08093B04: .4byte 0x00004023
_08093B08: .4byte 0x0000406D
_08093B0C:
	ldrb r0, [r2, #0xb]
	ands r1, r0
	cmp r1, #0
	beq _08093BB4
	ldr r6, _08093BA0 @ =0x0000406D
	movs r0, #0x76
	adds r0, r0, r2
	mov r8, r0
	ldrh r1, [r0]
	subs r1, #0x81
	adds r4, r2, #0
	adds r4, #0x38
	ldrb r2, [r4]
	adds r0, r6, #0
	bl SetTile
	ldr r5, _08093BA4 @ =0x00004022
	mov r2, r8
	ldrh r1, [r2]
	subs r1, #0x41
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	ldr r0, _08093BA8 @ =0x00004029
	mov r2, r8
	ldrh r1, [r2]
	subs r1, #2
	ldrb r2, [r4]
	bl SetTile
	ldr r0, _08093BAC @ =0x00004026
	mov r2, r8
	ldrh r1, [r2]
	subs r1, #1
	ldrb r2, [r4]
	bl SetTile
	mov r0, r8
	ldrh r1, [r0]
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	mov r2, r8
	ldrh r1, [r2]
	adds r1, #1
	ldrb r2, [r4]
	adds r0, r6, #0
	bl SetTile
	ldr r0, _08093BB0 @ =0x0000406E
	mov r2, r8
	ldrh r1, [r2]
	adds r1, #0x40
	ldrb r2, [r4]
	bl SetTile
	mov r0, r8
	ldrh r1, [r0]
	adds r1, #0x41
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	mov r2, r8
	ldrh r1, [r2]
	adds r1, #0x42
_08093B94:
	ldrb r2, [r4]
	adds r0, r6, #0
	bl SetTile
	b _08093C64
	.align 2, 0
_08093BA0: .4byte 0x0000406D
_08093BA4: .4byte 0x00004022
_08093BA8: .4byte 0x00004029
_08093BAC: .4byte 0x00004026
_08093BB0: .4byte 0x0000406E
_08093BB4:
	ldr r6, _08093C40 @ =0x0000406C
	movs r0, #0x76
	adds r0, r0, r2
	mov r8, r0
	ldrh r1, [r0]
	subs r1, #0x7f
	adds r4, r2, #0
	adds r4, #0x38
	ldrb r2, [r4]
	adds r0, r6, #0
	bl SetTile
	ldr r5, _08093C44 @ =0x00004022
	mov r2, r8
	ldrh r1, [r2]
	subs r1, #0x3f
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	mov r0, r8
	ldrh r1, [r0]
	subs r1, #1
	ldrb r2, [r4]
	adds r0, r6, #0
	bl SetTile
	mov r2, r8
	ldrh r1, [r2]
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	ldr r0, _08093C48 @ =0x00004026
	mov r2, r8
	ldrh r1, [r2]
	adds r1, #1
	ldrb r2, [r4]
	bl SetTile
	ldr r0, _08093C4C @ =0x0000402A
	mov r2, r8
	ldrh r1, [r2]
	adds r1, #2
	ldrb r2, [r4]
	bl SetTile
	mov r0, r8
	ldrh r1, [r0]
	adds r1, #0x3e
	ldrb r2, [r4]
	adds r0, r6, #0
	bl SetTile
	mov r2, r8
	ldrh r1, [r2]
	adds r1, #0x3f
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	ldr r0, _08093C50 @ =0x0000406F
	mov r2, r8
	ldrh r1, [r2]
	adds r1, #0x40
	ldrb r2, [r4]
	bl SetTile
	b _08093C64
	.align 2, 0
_08093C40: .4byte 0x0000406C
_08093C44: .4byte 0x00004022
_08093C48: .4byte 0x00004026
_08093C4C: .4byte 0x0000402A
_08093C50: .4byte 0x0000406F
_08093C54:
	ldr r0, _08093C6C @ =0x00004022
	adds r1, r2, #0
	adds r1, #0x76
	ldrh r1, [r1]
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
_08093C64:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08093C6C: .4byte 0x00004022

	thumb_func_start sub_08093C70
sub_08093C70: @ 0x08093C70
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x78
	ldrh r0, [r3]
	cmp r0, #0
	beq _08093CE8
	ldr r0, _08093CE0 @ =gPlayerState
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _08093D5C
	movs r0, #0
	strh r0, [r3]
	ldr r4, _08093CE4 @ =0x00004022
	adds r6, r2, #0
	adds r6, #0x76
	ldrh r1, [r6]
	adds r1, #0x3f
	adds r5, r2, #0
	adds r5, #0x38
	ldrb r2, [r5]
	adds r0, r4, #0
	bl SetTile
	ldrh r1, [r6]
	adds r1, #0x40
	ldrb r2, [r5]
	adds r0, r4, #0
	bl SetTile
	ldrh r1, [r6]
	adds r1, #0x41
	ldrb r2, [r5]
	adds r0, r4, #0
	bl SetTile
	adds r4, #4
	ldrh r1, [r6]
	adds r1, #0x7f
	ldrb r2, [r5]
	adds r0, r4, #0
	bl SetTile
	ldrh r1, [r6]
	adds r1, #0x80
	ldrb r2, [r5]
	adds r0, r4, #0
	bl SetTile
	ldrh r1, [r6]
	adds r1, #0x81
	ldrb r2, [r5]
	adds r0, r4, #0
	bl SetTile
	b _08093D5C
	.align 2, 0
_08093CE0: .4byte gPlayerState
_08093CE4: .4byte 0x00004022
_08093CE8:
	ldr r0, _08093D60 @ =gPlayerState
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _08093D5C
	adds r1, r2, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08093D5C
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	movs r0, #0x3c
	strh r0, [r1]
	ldr r5, _08093D64 @ =0x0000403D
	adds r6, r2, #0
	adds r6, #0x76
	ldrh r1, [r6]
	adds r1, #0x3f
	adds r4, r2, #0
	adds r4, #0x38
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	ldrh r1, [r6]
	adds r1, #0x40
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	ldr r0, _08093D68 @ =0x00004027
	ldrh r1, [r6]
	adds r1, #0x41
	ldrb r2, [r4]
	bl SetTile
	ldrh r1, [r6]
	adds r1, #0x7f
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	ldrh r1, [r6]
	adds r1, #0x80
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	ldr r0, _08093D6C @ =0x00004029
	ldrh r1, [r6]
	adds r1, #0x81
	ldrb r2, [r4]
	bl SetTile
_08093D5C:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08093D60: .4byte gPlayerState
_08093D64: .4byte 0x0000403D
_08093D68: .4byte 0x00004027
_08093D6C: .4byte 0x00004029
