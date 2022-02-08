	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x44
	bne _08039390
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #6
	bgt _08039390
	cmp r1, #4
	blt _08039390
	adds r0, r5, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _08039390
	movs r0, #4
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r5, #0x15]
	ldrb r0, [r5, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	movs r1, #0x10
	eors r0, r1
	asrs r0, r0, #3
	strb r0, [r5, #0x14]
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	bl sub_0803981C
_08039390:
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r2, [r0]
	cmp r2, #0x9d
	bne _080393F8
	ldr r1, [r5, #0x54]
	cmp r1, #0
	bne _080393CA
	ldrb r0, [r5, #0xc]
	cmp r0, #8
	bhi _080393EC
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #1
	bl CreateProjectileWithParent
	adds r1, r0, #0
	cmp r1, #0
	beq _080393DC
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #1
	strb r0, [r1, #0x1e]
	movs r0, #2
	strb r0, [r1, #0xb]
	movs r0, #0xc3
	lsls r0, r0, #1
	bl EnqueueSFX
	b _080393DC
_080393CA:
	adds r0, r1, #0
	adds r0, #0x41
	movs r4, #0
	strb r2, [r0]
	movs r0, #0xc3
	lsls r0, r0, #1
	bl EnqueueSFX
	str r4, [r5, #0x54]
_080393DC:
	adds r0, r5, #0
	bl sub_08039A48
	adds r1, r5, #0
	adds r1, #0x78
	ldrh r0, [r1]
	adds r0, #0x5a
	strh r0, [r1]
_080393EC:
	adds r2, r5, #0
	adds r2, #0x3b
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
_080393F8:
	adds r0, r5, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803940A
	adds r0, r5, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0803940A:
	ldr r1, _08039414 @ =Stalfos_Functions
	adds r0, r5, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_08039414: .4byte Stalfos_Functions
	.syntax divided
