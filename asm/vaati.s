	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Vaati
Vaati: @ 0x08066A5C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08066A90 @ =gUnk_08110734
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r3, [r4, #0x1a]
	lsrs r1, r3, #4
	adds r0, r4, #0
	adds r0, #0x5b
	ldrb r2, [r0]
	movs r0, #1
	ands r0, r2
	adds r1, r1, r0
	movs r0, #0xf
	ands r1, r0
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x1a]
	pop {r4, pc}
	.align 2, 0
_08066A90: .4byte gUnk_08110734

	thumb_func_start sub_08066A94
sub_08066A94: @ 0x08066A94
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	movs r3, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r2, [r4, #0xd]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r3
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x68
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD64
	adds r0, r4, #0
	bl sub_08066ACC
	pop {r4, pc}

	thumb_func_start sub_08066ACC
sub_08066ACC: @ 0x08066ACC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08066B18 @ =sub_08066B74
	bl sub_0807DD94
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08066AF6
	ldr r0, _08066B1C @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08066AF6
	adds r0, r4, #0
	bl sub_08095CB0
_08066AF6:
	adds r1, r4, #0
	adds r1, #0x5a
	ldrb r2, [r1]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r2, r0
	adds r5, r1, #0
	cmp r2, #0
	beq _08066B6E
	cmp r2, #2
	beq _08066B34
	cmp r2, #2
	bhi _08066B20
	cmp r2, #1
	beq _08066B2A
	b _08066B66
	.align 2, 0
_08066B18: .4byte sub_08066B74
_08066B1C: .4byte gScreenTransition
_08066B20:
	cmp r2, #3
	beq _08066B40
	cmp r2, #4
	beq _08066B52
	b _08066B66
_08066B2A:
	movs r0, #0x87
	lsls r0, r0, #2
	bl EnqueueSFX
	b _08066B66
_08066B34:
	ldr r0, _08066B3C @ =0x0000021E
	bl EnqueueSFX
	b _08066B66
	.align 2, 0
_08066B3C: .4byte 0x0000021E
_08066B40:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	movs r0, #4
	str r0, [r1, #4]
	adds r0, r4, #0
	bl sub_0805DDEC
	b _08066B66
_08066B52:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	str r2, [r1, #4]
	adds r0, r4, #0
	bl sub_0805DE18
	ldr r0, _08066B70 @ =0x0000021D
	bl EnqueueSFX
_08066B66:
	ldrb r1, [r5]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5]
_08066B6E:
	pop {r4, r5, pc}
	.align 2, 0
_08066B70: .4byte 0x0000021D

	thumb_func_start sub_08066B74
sub_08066B74: @ 0x08066B74
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r0, [r1, #8]
	ldr r4, _08066BCC @ =0xFFF00000
	ands r4, r0
	ldr r2, _08066BD0 @ =0x000FFFFF
	ands r0, r2
	str r0, [r1, #8]
	cmp r4, #0
	bne _08066B8A
	b _08066C86
_08066B8A:
	mov r3, ip
	adds r3, #0x80
	mov r5, ip
	adds r5, #0x68
	movs r6, #1
_08066B94:
	mvns r0, r4
	adds r1, r0, #1
	ands r1, r4
	eors r4, r1
	mov r2, ip
	ldrb r0, [r2, #0x14]
	lsrs r2, r0, #1
	movs r0, #0x80
	lsls r0, r0, #0x12
	cmp r1, r0
	beq _08066C4C
	cmp r1, r0
	bhi _08066BE6
	movs r0, #0x80
	lsls r0, r0, #0xf
	cmp r1, r0
	beq _08066C34
	cmp r1, r0
	bhi _08066BD4
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r1, r0
	beq _08066C24
	movs r0, #0x80
	lsls r0, r0, #0xe
	cmp r1, r0
	beq _08066C2C
	b _08066C82
	.align 2, 0
_08066BCC: .4byte 0xFFF00000
_08066BD0: .4byte 0x000FFFFF
_08066BD4:
	movs r0, #0x80
	lsls r0, r0, #0x10
	cmp r1, r0
	beq _08066C3C
	movs r0, #0x80
	lsls r0, r0, #0x11
	cmp r1, r0
	beq _08066C44
	b _08066C82
_08066BE6:
	movs r0, #0x80
	lsls r0, r0, #0x15
	cmp r1, r0
	beq _08066C64
	cmp r1, r0
	bhi _08066C04
	movs r0, #0x80
	lsls r0, r0, #0x13
	cmp r1, r0
	beq _08066C54
	movs r0, #0x80
	lsls r0, r0, #0x14
	cmp r1, r0
	beq _08066C5C
	b _08066C82
_08066C04:
	movs r0, #0x80
	lsls r0, r0, #0x17
	cmp r1, r0
	beq _08066C70
	cmp r1, r0
	bhi _08066C1A
	movs r0, #0x80
	lsls r0, r0, #0x16
	cmp r1, r0
	beq _08066C6C
	b _08066C82
_08066C1A:
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	beq _08066C76
	b _08066C82
_08066C24:
	adds r0, r2, #0
	adds r0, #0x10
	strh r0, [r3]
	b _08066C82
_08066C2C:
	adds r0, r2, #0
	adds r0, #0x14
	strh r0, [r3]
	b _08066C82
_08066C34:
	adds r0, r2, #0
	adds r0, #0x18
	strh r0, [r3]
	b _08066C82
_08066C3C:
	adds r0, r2, #0
	adds r0, #0x1c
	strh r0, [r3]
	b _08066C82
_08066C44:
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r3]
	b _08066C82
_08066C4C:
	adds r0, r2, #0
	adds r0, #0x24
	strh r0, [r3]
	b _08066C82
_08066C54:
	adds r0, r2, #0
	adds r0, #0x28
	strh r0, [r3]
	b _08066C82
_08066C5C:
	adds r0, r2, #0
	adds r0, #0x2c
	strh r0, [r3]
	b _08066C82
_08066C64:
	adds r0, r2, #0
	adds r0, #0x30
	strh r0, [r3]
	b _08066C82
_08066C6C:
	strb r6, [r5]
	b _08066C82
_08066C70:
	movs r0, #0xff
	strb r0, [r5]
	b _08066C82
_08066C76:
	mov r2, ip
	adds r2, #0x69
	ldrb r1, [r2]
	adds r0, r6, #0
	eors r0, r1
	strb r0, [r2]
_08066C82:
	cmp r4, #0
	bne _08066B94
_08066C86:
	mov r0, ip
	adds r0, #0x84
	ldr r1, [r0]
	mov r0, ip
	bl HandlePostScriptActions
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08066C94
sub_08066C94: @ 0x08066C94
	push {lr}
	movs r1, #0
	bl sub_0805DA90
	movs r0, #0xf7
	bl SoundReq
	pop {pc}

	thumb_func_start sub_08066CA4
sub_08066CA4: @ 0x08066CA4
	push {lr}
	movs r1, #1
	bl sub_0805DA90
	movs r0, #0xf6
	bl SoundReq
	pop {pc}
