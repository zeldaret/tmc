    .syntax unified
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
    .syntax divided
