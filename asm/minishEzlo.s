	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start MinishEzlo
MinishEzlo: @ 0x08062F70
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08062FA0
	ldr r1, _08062FE8 @ =gUnk_0810C48C
	adds r0, r4, #0
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _08062FE4
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #1
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD50
_08062FA0:
	adds r0, r4, #0
	movs r1, #0
	bl ExecuteScriptForEntity
	adds r0, r4, #0
	bl HandleEntity0x82Actions
	adds r0, r4, #0
	bl GetNextFrame
	adds r4, #0x5b
	ldrb r1, [r4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08062FCC
	movs r0, #0xef
	ands r0, r1
	strb r0, [r4]
	ldr r0, _08062FEC @ =0x000001CF
	bl EnqueueSFX
_08062FCC:
	ldrb r1, [r4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08062FE4
	movs r0, #0xdf
	ands r0, r1
	strb r0, [r4]
	movs r0, #0x88
	lsls r0, r0, #2
	bl EnqueueSFX
_08062FE4:
	pop {r4, pc}
	.align 2, 0
_08062FE8: .4byte gUnk_0810C48C
_08062FEC: .4byte 0x000001CF

	thumb_func_start MinishEzlo_Head
MinishEzlo_Head: @ 0x08062FF0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x5b
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08063006
	movs r6, #1
	movs r5, #0
	b _0806300A
_08063006:
	movs r6, #0
	movs r5, #1
_0806300A:
	adds r0, r4, #0
	adds r0, #0x5b
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	movs r7, #0x8e
	lsls r7, r7, #1
	cmp r0, #0
	beq _0806301E
	movs r7, #0x16
_0806301E:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r2, [r0]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r2, r0
	subs r2, #1
	adds r0, r4, #0
	adds r1, r6, #0
	bl SetExtraSpriteFrame
	ldrb r2, [r4, #0x1e]
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetExtraSpriteFrame
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_0806FF10
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl SetSpriteSubEntryOffsetData1
	adds r0, r4, #0
	bl sub_0807000C
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0806305C
sub_0806305C: @ 0x0806305C
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x19]
	movs r2, #0x80
	lsls r2, r2, #1
	str r2, [r4, #0x6c]
	str r2, [r4, #0x70]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
	adds r0, r4, #0
	movs r1, #0x10
	bl InitAnimationForceUpdate
	adds r4, #0x80
	movs r0, #0x10
	strh r0, [r4]
	ldr r0, _080630A0 @ =0x0000016F
	bl SoundReq
	pop {r4, pc}
	.align 2, 0
_080630A0: .4byte 0x0000016F

	thumb_func_start sub_080630A4
sub_080630A4: @ 0x080630A4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080630BA
	ldr r0, [r4, #0x6c]
	adds r0, #0x80
	lsls r0, r0, #0x14
	lsrs r5, r0, #0x17
	b _080630D0
_080630BA:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	lsrs r1, r1, #6
	movs r0, #3
	eors r1, r0
	adds r1, #1
	movs r0, #0x10
	bl __divsi3
	asrs r5, r0, #1
_080630D0:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r2, [r4, #0x70]
	cmp r2, r0
	bls _080630E4
	adds r0, r2, #0
	adds r0, #0x80
	lsls r0, r0, #0x14
	lsrs r3, r0, #0x17
	b _080630F4
_080630E4:
	cmp r2, r0
	bne _080630EC
	movs r3, #0x10
	b _080630F4
_080630EC:
	ldr r1, _08063110 @ =gUnk_0810C498
	lsrs r0, r2, #5
	adds r0, r0, r1
	ldrb r3, [r0]
_080630F4:
	movs r6, #0x80
	lsls r6, r6, #9
	adds r0, r4, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	movs r1, #3
	ands r1, r0
	cmp r1, #2
	beq _08063144
	cmp r1, #2
	bgt _08063114
	cmp r1, #1
	beq _0806311A
	b _080631CA
	.align 2, 0
_08063110: .4byte gUnk_0810C498
_08063114:
	cmp r1, #3
	beq _0806317A
	b _080631CA
_0806311A:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r4, #0x6c]
	cmp r0, #0x80
	bls _08063132
	subs r0, r0, r5
	str r0, [r4, #0x6c]
_08063132:
	lsls r1, r3, #1
	ldr r0, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x70]
	lsls r1, r6, #1
	ldr r0, [r4, #0x30]
	adds r0, r0, r1
	str r0, [r4, #0x30]
	b _080631CA
_08063144:
	ldr r0, [r4, #0x6c]
	adds r0, r0, r5
	str r0, [r4, #0x6c]
	ldr r1, [r4, #0x70]
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r1, r2
	bls _0806316C
	ldr r0, _08063168 @ =0x0000017F
	cmp r1, r0
	bhi _0806315C
	lsrs r3, r3, #1
_0806315C:
	subs r0, r1, r3
	cmp r0, #0xff
	bhi _08063172
	str r2, [r4, #0x70]
	b _08063174
	.align 2, 0
_08063168: .4byte 0x0000017F
_0806316C:
	cmp r1, #0x80
	bls _08063174
	subs r0, r1, r3
_08063172:
	str r0, [r4, #0x70]
_08063174:
	ldr r0, [r4, #0x34]
	subs r0, r0, r6
	b _080631C8
_0806317A:
	ldr r0, [r4, #0x6c]
	ldr r1, _080631B4 @ =0x0000033F
	cmp r0, r1
	bhi _08063186
	adds r0, r0, r5
	str r0, [r4, #0x6c]
_08063186:
	cmp r2, r1
	bls _080631BC
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
	adds r0, r4, #0
	movs r1, #0x11
	bl InitAnimationForceUpdate
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #0x11
	strh r0, [r1]
	ldr r2, _080631B8 @ =gActiveScriptInfo
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	b _080631DC
	.align 2, 0
_080631B4: .4byte 0x0000033F
_080631B8: .4byte gActiveScriptInfo
_080631BC:
	lsls r0, r3, #1
	adds r0, r2, r0
	str r0, [r4, #0x70]
	ldr r0, [r4, #0x34]
	ldr r1, _080631E0 @ =0xFFFE0000
	adds r0, r0, r1
_080631C8:
	str r0, [r4, #0x34]
_080631CA:
	ldr r1, [r4, #0x6c]
	ldr r2, [r4, #0x70]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0805EC9C
	ldr r1, _080631E4 @ =gActiveScriptInfo
	movs r0, #0
	strb r0, [r1, #6]
_080631DC:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080631E0: .4byte 0xFFFE0000
_080631E4: .4byte gActiveScriptInfo
