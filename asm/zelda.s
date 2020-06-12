	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08066CB4
sub_08066CB4: @ 0x08066CB4
	push {lr}
	ldr r2, _08066CC8 @ =gUnk_08110BD8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08066CC8: .4byte gUnk_08110BD8

	thumb_func_start sub_08066CCC
sub_08066CCC: @ 0x08066CCC
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #7
	bl sub_0805EA78
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD50
	pop {r4, pc}

	thumb_func_start sub_08066CF8
sub_08066CF8: @ 0x08066CF8
	push {lr}
	movs r1, #0
	bl sub_0807DD94
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08066D04
sub_08066D04: @ 0x08066D04
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #7
	movs r1, #0x2e
	bl sub_0805EB9C
	str r0, [r4, #0x50]
	pop {r4, pc}

	thumb_func_start sub_08066D14
sub_08066D14: @ 0x08066D14
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r2, [r4, #0x50]
	cmp r2, #0
	beq _08066D48
	ldrb r0, [r2, #0x14]
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r2, #0
	adds r1, r4, #0
	bl CopyPosition
	ldr r1, [r4, #0x50]
	adds r0, r4, #0
	bl sub_08068680
	movs r0, #1
	str r0, [r5, #0x14]
	b _08066D4A
_08066D48:
	str r2, [r5, #0x14]
_08066D4A:
	pop {r4, r5, pc}

	thumb_func_start sub_08066D4C
sub_08066D4C: @ 0x08066D4C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _08066D90
	bl CopyPosition
	ldr r3, [r4, #0x50]
	ldrb r1, [r3, #0x18]
	movs r2, #4
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #0x18]
	ldr r1, [r4, #0x50]
	ldrb r0, [r4, #0x14]
	strb r0, [r1, #0x14]
	ldrb r0, [r4, #0x18]
	ands r2, r0
	strb r2, [r4, #0x18]
	ldrb r1, [r4, #0x17]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r4, #0x17]
	ldr r1, [r4, #0x50]
	adds r0, r4, #0
	bl sub_08068694
	movs r0, #1
	str r0, [r5, #0x14]
	b _08066D92
_08066D90:
	str r1, [r5, #0x14]
_08066D92:
	pop {r4, r5, pc}

	thumb_func_start sub_08066D94
sub_08066D94: @ 0x08066D94
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x1c
	bl SetGlobalFlag
	movs r0, #0x2e
	movs r1, #0
	movs r2, #0
	bl CreateNPC
	adds r4, r0, #0
	cmp r4, #0
	beq _08066DD6
	ldr r0, _08066DDC @ =gLinkEntity
	ldrb r0, [r0, #0x14]
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r5, #0
	bl sub_0806EDC4
	strb r0, [r4, #0x14]
	ldr r0, _08066DE0 @ =gRoomControls
	ldrb r1, [r0, #5]
	adds r0, r4, #0
	adds r0, #0x74
	strh r1, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
_08066DD6:
	bl sub_0805E780
	pop {r4, r5, pc}
	.align 2, 0
_08066DDC: .4byte gLinkEntity
_08066DE0: .4byte gRoomControls

	thumb_func_start sub_08066DE4
sub_08066DE4: @ 0x08066DE4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #7
	movs r1, #0x2e
	bl sub_0805EB9C
	adds r4, r0, #0
	cmp r4, #0
	beq _08066E06
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080686C4
_08066E06:
	pop {r4, r5, pc}

	thumb_func_start sub_08066E08
sub_08066E08: @ 0x08066E08
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x50
	bl LoadAnimation
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r4, #0x80
	strh r0, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08066E20
sub_08066E20: @ 0x08066E20
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x44
	bl LoadAnimation
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r4, #0x80
	strh r0, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08066E38
sub_08066E38: @ 0x08066E38
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x48
	bl LoadAnimation
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r4, #0x80
	strh r0, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08066E50
sub_08066E50: @ 0x08066E50
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x4c
	bl LoadAnimation
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r4, #0x80
	strh r0, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08066E68
sub_08066E68: @ 0x08066E68
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x54
	bl LoadAnimation
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r4, #0x80
	strh r0, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08066E80
sub_08066E80: @ 0x08066E80
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r0, [r5, #0x18]
	cmp r0, #4
	bhi _08066F7C
	lsls r0, r0, #2
	ldr r1, _08066E98 @ =_08066E9C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08066E98: .4byte _08066E9C
_08066E9C: @ jump table
	.4byte _08066EB0 @ case 0
	.4byte _08066EC0 @ case 1
	.4byte _08066EF0 @ case 2
	.4byte _08066F28 @ case 3
	.4byte _08066F58 @ case 4
_08066EB0:
	ldrb r0, [r5, #0x18]
	adds r0, #1
	strb r0, [r5, #0x18]
	adds r0, r4, #0
	movs r1, #0x16
	bl LoadAnimation
	b _08066F7C
_08066EC0:
	adds r0, r4, #0
	bl sub_080042B8
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08066F7C
	ldrb r0, [r5, #0x18]
	adds r0, #1
	strb r0, [r5, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x7c
	bl PlaySFX
	b _08066F7C
_08066EF0:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, #0
	movs r2, #0x80
	bl sub_0806F62C
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08066F1A
	adds r0, r4, #0
	bl sub_080042B8
_08066F1A:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bge _08066F7C
	ldrb r0, [r5, #0x18]
	adds r0, #1
	strb r0, [r5, #0x18]
	b _08066F7C
_08066F28:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, #0
	movs r2, #0x80
	bl sub_0806F62C
	adds r0, r4, #0
	bl sub_080042B8
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08066F7C
	ldrb r0, [r5, #0x18]
	adds r0, #1
	strb r0, [r5, #0x18]
	adds r0, r4, #0
	movs r1, #0x1e
	bl LoadAnimation
	b _08066F7C
_08066F58:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08066F7C
	ldr r2, _08066F78 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	b _08066F8C
	.align 2, 0
_08066F78: .4byte gUnk_02033280
_08066F7C:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	adds r0, #0x28
	movs r2, #0
	strh r1, [r0]
	ldr r0, _08066F90 @ =gUnk_02033280
	strb r2, [r0, #6]
_08066F8C:
	pop {r4, r5, pc}
	.align 2, 0
_08066F90: .4byte gUnk_02033280

	thumb_func_start sub_08066F94
sub_08066F94: @ 0x08066F94
	push {r4, lr}
	ldr r4, _08066F9C @ =gUnk_08110BE0
	b _08066FAC
	.align 2, 0
_08066F9C: .4byte gUnk_08110BE0
_08066FA0:
	ldrh r1, [r4]
	adds r4, #2
	ldr r0, _08066FB4 @ =0x00004072
	movs r2, #1
	bl SetTileType
_08066FAC:
	ldrh r0, [r4]
	cmp r0, #0
	bne _08066FA0
	pop {r4, pc}
	.align 2, 0
_08066FB4: .4byte 0x00004072

	thumb_func_start sub_08066FB8
sub_08066FB8: @ 0x08066FB8
	push {r4, lr}
	ldr r4, _08066FC0 @ =gUnk_08110BE0
	b _08066FCE
	.align 2, 0
_08066FC0: .4byte gUnk_08110BE0
_08066FC4:
	ldrh r0, [r4]
	adds r4, #2
	movs r1, #1
	bl sub_0807BA8C
_08066FCE:
	ldrh r0, [r4]
	cmp r0, #0
	bne _08066FC4
	pop {r4, pc}
	.align 2, 0
