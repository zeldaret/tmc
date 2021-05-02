	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Manager12_Main
Manager12_Main: @ 0x080599EC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08059A20
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #0xff
	strb r0, [r1]
	subs r1, #1
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	ldr r1, _08059A28 @ =sub_08059A2C
	adds r0, r4, #0
	movs r2, #0
	bl sub_08052D74
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
_08059A20:
	adds r0, r4, #0
	bl sub_08059A58
	pop {r4, pc}
	.align 2, 0
_08059A28: .4byte sub_08059A2C

	thumb_func_start sub_08059A2C
sub_08059A2C: @ 0x08059A2C
	push {lr}
	adds r2, r0, #0
	ldr r1, _08059A54 @ =gRoomVars
	movs r0, #0xff
	strb r0, [r1, #0x12]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x11]
	strb r0, [r1, #0x10]
	adds r1, r2, #0
	adds r1, #0x22
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_08059A58
	pop {pc}
	.align 2, 0
_08059A54: .4byte gRoomVars

	thumb_func_start sub_08059A58
sub_08059A58: @ 0x08059A58
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08059AC4 @ =gRoomControls
	ldrb r0, [r0, #4]
	cmp r0, #0x15
	beq _08059AD4
	adds r4, r5, #0
	adds r4, #0x20
	ldr r3, _08059AC8 @ =gUnk_08108398
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_08059C8C
	cmp r0, #0
	beq _08059A80
	ldrb r1, [r4]
	movs r0, #0
	bl sub_08059CC0
_08059A80:
	adds r4, r5, #0
	adds r4, #0x21
	ldr r3, _08059ACC @ =gUnk_081083AE
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	bl sub_08059C8C
	cmp r0, #0
	beq _08059AA6
	ldrb r1, [r4]
	movs r0, #1
	bl sub_08059CC0
	ldrb r0, [r4]
	cmp r0, #2
	bne _08059AA6
	bl sub_08059B18
_08059AA6:
	adds r4, r5, #0
	adds r4, #0x22
	ldr r3, _08059AD0 @ =gUnk_081083C4
	adds r0, r5, #0
	movs r1, #2
	adds r2, r4, #0
	bl sub_08059C8C
	cmp r0, #0
	beq _08059B0C
	ldrb r1, [r4]
	movs r0, #2
	bl sub_08059CC0
	b _08059B0C
	.align 2, 0
_08059AC4: .4byte gRoomControls
_08059AC8: .4byte gUnk_08108398
_08059ACC: .4byte gUnk_081083AE
_08059AD0: .4byte gUnk_081083C4
_08059AD4:
	adds r4, r5, #0
	adds r4, #0x20
	ldr r3, _08059B10 @ =gUnk_081083DA
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_08059C8C
	cmp r0, #0
	beq _08059AF0
	ldrb r1, [r4]
	movs r0, #0
	bl sub_08059CC0
_08059AF0:
	adds r4, r5, #0
	adds r4, #0x22
	ldr r3, _08059B14 @ =gUnk_081083F2
	adds r0, r5, #0
	movs r1, #2
	adds r2, r4, #0
	bl sub_08059C8C
	cmp r0, #0
	beq _08059B0C
	ldrb r1, [r4]
	movs r0, #2
	bl sub_08059CC0
_08059B0C:
	pop {r4, r5, pc}
	.align 2, 0
_08059B10: .4byte gUnk_081083DA
_08059B14: .4byte gUnk_081083F2

	thumb_func_start sub_08059B18
sub_08059B18: @ 0x08059B18
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	movs r0, #0x18
	bl CheckGlobalFlag
	cmp r0, #0
	beq _08059BEC
	movs r6, #0
	movs r0, #0x3f
	mov sb, r0
	movs r2, #0xc4
	lsls r2, r2, #1
	mov r8, r2
_08059B38:
	movs r5, #0
	lsls r1, r6, #4
	mov r2, r8
	lsrs r0, r2, #4
	mov r2, sb
	ands r0, r2
	lsls r3, r0, #6
	movs r7, #0x28
	ldr r0, _08059BD8 @ =0x000004AB
	adds r4, r1, r0
_08059B4C:
	lsrs r1, r7, #4
	mov r2, sb
	ands r1, r2
	orrs r1, r3
	adds r0, r4, #0
	movs r2, #1
	str r3, [sp]
	bl sub_0807B9B8
	adds r7, #0x10
	adds r4, #1
	adds r5, #1
	ldr r3, [sp]
	cmp r5, #3
	bls _08059B4C
	movs r0, #0x10
	add r8, r0
	adds r6, #1
	cmp r6, #3
	bls _08059B38
	movs r6, #0
	movs r3, #0x3f
_08059B78:
	movs r5, #0
	lsls r1, r6, #4
	adds r6, #1
	mov r8, r6
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r0, r1, r2
	lsrs r0, r0, #4
	ands r0, r3
	lsls r7, r0, #6
	movs r6, #0x28
	movs r0, #0x88
	lsls r0, r0, #3
	adds r4, r1, r0
_08059B94:
	lsrs r1, r6, #4
	ands r1, r3
	orrs r1, r7
	adds r0, r4, #0
	movs r2, #2
	str r3, [sp]
	bl sub_0807B9B8
	adds r6, #0x10
	adds r4, #1
	adds r5, #1
	ldr r3, [sp]
	cmp r5, #3
	bls _08059B94
	mov r6, r8
	cmp r6, #2
	bls _08059B78
	ldr r1, _08059BDC @ =0x000005C2
	movs r0, #0xd6
	movs r2, #2
	bl sub_0807B9B8
	ldr r1, _08059BE0 @ =0x000005C3
	movs r0, #0xd7
	movs r2, #2
	bl sub_0807B9B8
	ldr r0, _08059BE4 @ =gUnk_086E8460
	ldr r1, _08059BE8 @ =0x06001800
	movs r2, #0x80
	lsls r2, r2, #4
	bl LoadResourceAsync
	b _08059C5E
	.align 2, 0
_08059BD8: .4byte 0x000004AB
_08059BDC: .4byte 0x000005C2
_08059BE0: .4byte 0x000005C3
_08059BE4: .4byte gUnk_086E8460
_08059BE8: .4byte 0x06001800
_08059BEC:
	movs r0, #0x19
	bl CheckGlobalFlag
	cmp r0, #0
	beq _08059C5E
	movs r6, #0
	movs r3, #0x3f
_08059BFA:
	movs r5, #0
	lsls r1, r6, #4
	adds r6, #1
	mov r8, r6
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r0, r1, r2
	lsrs r0, r0, #4
	ands r0, r3
	lsls r7, r0, #6
	movs r6, #0x28
	ldr r0, _08059C68 @ =0x000004A6
	adds r4, r1, r0
_08059C14:
	lsrs r1, r6, #4
	ands r1, r3
	orrs r1, r7
	adds r0, r4, #0
	movs r2, #1
	str r3, [sp]
	bl sub_0807B9B8
	adds r6, #0x10
	adds r4, #1
	adds r5, #1
	ldr r3, [sp]
	cmp r5, #3
	bls _08059C14
	mov r6, r8
	cmp r6, #4
	bls _08059BFA
	ldr r0, _08059C6C @ =0x00000444
	ldr r1, _08059C70 @ =0x00000602
	movs r2, #2
	bl sub_0807B9B8
	ldr r0, _08059C74 @ =0x00000445
	ldr r1, _08059C78 @ =0x00000605
	movs r2, #2
	bl sub_0807B9B8
	ldr r0, _08059C7C @ =0x00000454
	ldr r1, _08059C80 @ =0x00000642
	movs r2, #2
	bl sub_0807B9B8
	ldr r0, _08059C84 @ =0x00000455
	ldr r1, _08059C88 @ =0x00000645
	movs r2, #2
	bl sub_0807B9B8
_08059C5E:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08059C68: .4byte 0x000004A6
_08059C6C: .4byte 0x00000444
_08059C70: .4byte 0x00000602
_08059C74: .4byte 0x00000445
_08059C78: .4byte 0x00000605
_08059C7C: .4byte 0x00000454
_08059C80: .4byte 0x00000642
_08059C84: .4byte 0x00000455
_08059C88: .4byte 0x00000645

	thumb_func_start sub_08059C8C
sub_08059C8C: @ 0x08059C8C
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	adds r0, r3, #0
	bl sub_08056300
	adds r2, r0, #0
	strb r2, [r4]
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xff
	beq _08059CBC
	ldr r0, _08059CB8 @ =gRoomVars
	adds r0, #0x10
	adds r1, r5, r0
	ldrb r0, [r1]
	cmp r0, r3
	beq _08059CBC
	strb r2, [r1]
	movs r0, #1
	b _08059CBE
	.align 2, 0
_08059CB8: .4byte gRoomVars
_08059CBC:
	movs r0, #0
_08059CBE:
	pop {r4, r5, pc}

	thumb_func_start sub_08059CC0
sub_08059CC0: @ 0x08059CC0
	push {r4, r5, r6, lr}
	adds r2, r1, #0
	ldr r1, _08059CDC @ =gRoomVars
	adds r1, #0x10
	adds r0, r0, r1
	strb r2, [r0]
	ldr r0, _08059CE0 @ =gRoomControls
	ldrb r0, [r0, #4]
	cmp r0, #0x15
	beq _08059CE8
	lsls r1, r2, #4
	ldr r0, _08059CE4 @ =gUnk_08108408
	b _08059CEC
	.align 2, 0
_08059CDC: .4byte gRoomVars
_08059CE0: .4byte gRoomControls
_08059CE4: .4byte gUnk_08108408
_08059CE8:
	lsls r1, r2, #4
	ldr r0, _08059D10 @ =gUnk_08108468
_08059CEC:
	adds r6, r1, r0
	ldr r0, [r6]
	ldr r4, _08059D14 @ =gGlobalGfxAndPalettes
	adds r0, r0, r4
	ldr r1, [r6, #4]
	movs r5, #0x80
	lsls r5, r5, #5
	adds r2, r5, #0
	bl LoadResourceAsync
	ldr r0, [r6, #8]
	adds r0, r0, r4
	ldr r1, [r6, #0xc]
	adds r2, r5, #0
	bl LoadResourceAsync
	pop {r4, r5, r6, pc}
	.align 2, 0
_08059D10: .4byte gUnk_08108468
_08059D14: .4byte gGlobalGfxAndPalettes

	thumb_func_start TryLoadPrologueHyruleTown
TryLoadPrologueHyruleTown: @ 0x08059D18
	push {r4, lr}
	ldr r0, _08059D68 @ =gRoomControls
	ldrb r0, [r0, #4]
	cmp r0, #0x15
	beq _08059D78
	ldr r0, _08059D6C @ =gUnk_08108398
	bl sub_08056300
	adds r4, r0, #0
	cmp r4, #0xff
	beq _08059D36
	movs r0, #0
	adds r1, r4, #0
	bl sub_08059CC0
_08059D36:
	ldr r0, _08059D70 @ =gUnk_081083AE
	bl sub_08056300
	adds r4, r0, #0
	cmp r4, #0xff
	beq _08059D52
	movs r0, #1
	adds r1, r4, #0
	bl sub_08059CC0
	cmp r4, #2
	bne _08059D52
	bl sub_08059B18
_08059D52:
	ldr r0, _08059D74 @ =gUnk_081083C4
	bl sub_08056300
	adds r4, r0, #0
	cmp r4, #0xff
	beq _08059DA0
	movs r0, #2
	adds r1, r4, #0
	bl sub_08059CC0
	b _08059DA0
	.align 2, 0
_08059D68: .4byte gRoomControls
_08059D6C: .4byte gUnk_08108398
_08059D70: .4byte gUnk_081083AE
_08059D74: .4byte gUnk_081083C4
_08059D78:
	ldr r0, _08059DA4 @ =gUnk_081083DA
	bl sub_08056300
	adds r4, r0, #0
	cmp r4, #0xff
	beq _08059D8C
	movs r0, #0
	adds r1, r4, #0
	bl sub_08059CC0
_08059D8C:
	ldr r0, _08059DA8 @ =gUnk_081083F2
	bl sub_08056300
	adds r4, r0, #0
	cmp r4, #0xff
	beq _08059DA0
	movs r0, #2
	adds r1, r4, #0
	bl sub_08059CC0
_08059DA0:
	pop {r4, pc}
	.align 2, 0
_08059DA4: .4byte gUnk_081083DA
_08059DA8: .4byte gUnk_081083F2
