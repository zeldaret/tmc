	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start PlayerItem13
PlayerItem13: @ 0x080ACF14
	push {lr}
	ldr r2, _080ACF28 @ =gUnk_081320A8
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080ACF28: .4byte gUnk_081320A8

	thumb_func_start sub_080ACF2C
sub_080ACF2C: @ 0x080ACF2C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	ldr r0, _080ACF60 @ =gUnk_081320E4
	str r0, [r4, #0x48]
	ldr r5, [r4, #0x54]
	adds r6, r5, #0
	cmp r5, #0
	beq _080ACF64
	ldr r0, [r5, #0x2c]
	str r0, [r4, #0x2c]
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x30]
	ldr r0, [r5, #0x34]
	str r0, [r4, #0x34]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	ldrb r0, [r5, #0x16]
	strb r0, [r4, #0x16]
	b _080ACFB6
	.align 2, 0
_080ACF60: .4byte gUnk_081320E4
_080ACF64:
	adds r5, r4, #0
	str r4, [r4, #0x54]
	movs r0, #2
	strb r0, [r4, #0xc]
	ldr r3, _080ACFC8 @ =gUnk_081320B8
	ldrb r0, [r4, #0xf]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #1]
	movs r0, #0xf
	ands r1, r0
	ldrb r2, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1a]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	strb r6, [r4, #0x16]
	ldrb r0, [r4, #0xf]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #2]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	ldrb r0, [r4, #0xf]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r4, #0
	bl InitializeAnimation
	bl sub_08078D60
_080ACFB6:
	ldrb r1, [r5, #8]
	adds r0, r4, #0
	adds r0, #0x6c
	strh r1, [r0]
	ldrb r1, [r5, #9]
	adds r0, #2
	strh r1, [r0]
	pop {r4, r5, r6, pc}
	.align 2, 0
_080ACFC8: .4byte gUnk_081320B8

	thumb_func_start sub_080ACFCC
sub_080ACFCC: @ 0x080ACFCC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x54]
	adds r0, #0x6c
	ldrh r0, [r0]
	ldrb r2, [r1, #8]
	cmp r0, r2
	beq _080ACFE8
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	ldrb r2, [r1, #9]
	cmp r0, r2
	bne _080AD034
_080ACFE8:
	ldrb r0, [r1, #0xc]
	cmp r0, #2
	beq _080ACFF8
	bl sub_08079184
	bl DeleteThisEntity
	b _080AD03C
_080ACFF8:
	ldr r0, _080AD02C @ =gPlayerState
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _080AD00E
	ldr r0, _080AD030 @ =gPlayerEntity
	adds r0, #0x79
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _080AD03C
_080AD00E:
	adds r0, r4, #0
	bl sub_080AD27C
	ldrb r0, [r4, #0xd]
	adds r0, #1
	movs r2, #0
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	str r2, [r4, #0x20]
	b _080AD03C
	.align 2, 0
_080AD02C: .4byte gPlayerState
_080AD030: .4byte gPlayerEntity
_080AD034:
	bl sub_08079184
	bl DeleteThisEntity
_080AD03C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AD040
sub_080AD040: @ 0x080AD040
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x54]
	ldrb r0, [r5, #0xc]
	cmp r0, #2
	beq _080AD050
	bl DeleteThisEntity
_080AD050:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080AD064
	movs r0, #0
	str r0, [r4, #0x34]
_080AD064:
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080AD06E
	b _080AD220
_080AD06E:
	adds r2, r4, #0
	adds r2, #0x42
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080AD088
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r1, #0
	strb r0, [r4, #0x15]
	strb r1, [r2]
_080AD088:
	ldr r2, _080AD0B0 @ =gUnk_081320C4
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #2
	adds r1, r0, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r4, #0
	bl sub_080002B4
	cmp r0, #0x74
	bne _080AD0B4
	adds r0, r4, #0
	bl sub_0806F69C
	b _080AD0C8
	.align 2, 0
_080AD0B0: .4byte gUnk_081320C4
_080AD0B4:
	adds r0, r4, #0
	bl sub_080002D0
	cmp r0, #0x24
	beq _080AD0C8
	cmp r0, #0x26
	beq _080AD0C8
	adds r0, r4, #0
	bl sub_080AF00C
_080AD0C8:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	beq _080AD0D8
	b _080AD202
_080AD0D8:
	ldr r0, [r4, #0x20]
	str r0, [r5, #0x20]
	ldr r0, [r4, #0x2c]
	str r0, [r5, #0x2c]
	ldr r0, [r4, #0x30]
	str r0, [r5, #0x30]
	ldr r0, [r4, #0x34]
	str r0, [r5, #0x34]
	adds r0, r4, #0
	bl sub_080002B8
	cmp r0, #0x11
	bhi _080AD0FC
	cmp r0, #0x10
	bhs _080AD104
	cmp r0, #0xd
	beq _080AD104
	b _080AD14E
_080AD0FC:
	cmp r0, #0x13
	beq _080AD104
	cmp r0, #0x5a
	bne _080AD14E
_080AD104:
	cmp r5, r4
	bne _080AD146
	cmp r0, #0x11
	bhi _080AD116
	cmp r0, #0x10
	bhs _080AD12C
	cmp r0, #0xd
	beq _080AD120
	b _080AD142
_080AD116:
	cmp r0, #0x13
	beq _080AD138
	cmp r0, #0x5a
	beq _080AD126
	b _080AD142
_080AD120:
	adds r0, r4, #0
	movs r1, #0
	b _080AD130
_080AD126:
	adds r0, r4, #0
	movs r1, #0xc
	b _080AD130
_080AD12C:
	adds r0, r4, #0
	movs r1, #0xb
_080AD130:
	movs r2, #0
	bl CreateFx
	b _080AD142
_080AD138:
	adds r0, r4, #0
	movs r1, #0x52
	movs r2, #0
	bl CreateFx
_080AD142:
	movs r0, #4
	b _080AD148
_080AD146:
	movs r0, #3
_080AD148:
	strb r0, [r5, #0xd]
	bl DeleteThisEntity
_080AD14E:
	ldr r0, [r4, #0x54]
	cmp r0, r4
	bne _080AD178
	ldrb r0, [r4, #0xb]
	cmp r0, #0xff
	beq _080AD1DA
	cmp r0, #0xf
	bne _080AD16A
	ldrb r1, [r4, #0xe]
	adds r0, r4, #0
	movs r2, #0x80
	bl CreateFx
	b _080AD1DA
_080AD16A:
	ldrb r1, [r4, #0xb]
	ldrb r2, [r4, #0xe]
	adds r0, r4, #0
	movs r3, #0
	bl CreateObjectWithParent
	b _080AD1DA
_080AD178:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _080AD188
	adds r0, r5, #0
	bl sub_080AD32C
	cmp r0, #0
	beq _080AD1E0
_080AD188:
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bne _080AD196
	movs r0, #0x82
	lsls r0, r0, #1
	bl SoundReq
_080AD196:
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	movs r0, #3
	strb r0, [r5, #0xd]
	ldrb r2, [r4, #0x19]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r5, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r5, #0x19]
	ldrb r0, [r4, #0x1b]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r5, #0x1b]
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x1b]
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	adds r3, r5, #0
	adds r3, #0x29
	lsrs r1, r1, #0x1d
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_080AD1DA:
	bl DeleteThisEntity
	b _080AD26E
_080AD1E0:
	movs r0, #0x82
	lsls r0, r0, #1
	bl SoundReq
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r4, #0x24]
	b _080AD26E
_080AD202:
	adds r0, r4, #0
	bl sub_0800451C
	adds r0, r4, #0
	bl sub_0806F8DC
	adds r0, r4, #0
	adds r1, r5, #0
	bl CopyPosition
	ldr r0, [r4, #0x20]
	str r0, [r5, #0x20]
	ldrb r0, [r4, #0x15]
	strb r0, [r5, #0x15]
	b _080AD26E
_080AD220:
	ldr r1, _080AD240 @ =gPlayerEntity
	adds r0, r1, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r5, #1
	ands r5, r0
	cmp r5, #0
	beq _080AD244
	movs r0, #0x79
	bl SoundReq
	adds r0, r4, #0
	bl sub_080AD27C
	b _080AD26E
	.align 2, 0
_080AD240: .4byte gPlayerEntity
_080AD244:
	ldr r0, _080AD270 @ =gPlayerState
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _080AD25A
	adds r0, r1, #0
	adds r0, #0x79
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080AD26E
_080AD25A:
	adds r0, r4, #0
	bl sub_080AD27C
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r4, #0x10]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	str r5, [r4, #0x20]
_080AD26E:
	pop {r4, r5, pc}
	.align 2, 0
_080AD270: .4byte gPlayerState

	thumb_func_start sub_080AD274
sub_080AD274: @ 0x080AD274
	push {lr}
	bl DeleteThisEntity
	pop {pc}


	thumb_func_start sub_080AD27C
sub_080AD27C: @ 0x080AD27C
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r4, [r3, #0x54]
	ldr r1, _080AD2AC @ =gPlayerEntity
	movs r0, #0
	str r0, [r1, #0x74]
	adds r0, r3, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	adds r5, r1, #0
	ldrb r1, [r4, #8]
	cmp r0, r1
	bne _080AD320
	adds r0, r3, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	ldrb r1, [r4, #9]
	cmp r0, r1
	bne _080AD320
	cmp r4, r3
	beq _080AD2B0
	movs r0, #2
	strb r0, [r4, #0xd]
	b _080AD2C2
	.align 2, 0
_080AD2AC: .4byte gPlayerEntity
_080AD2B0:
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x18
	orrs r1, r0
	strb r1, [r2]
_080AD2C2:
	ldr r0, [r4, #0x48]
	str r0, [r3, #0x48]
	ldrb r1, [r3, #0x16]
	lsrs r1, r1, #4
	ldr r2, _080AD318 @ =gUnk_081320CC
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r3, #0x24]
	ldr r0, _080AD31C @ =gUnk_081320D4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r3, #0x20]
	ldrh r0, [r4, #0x36]
	adds r0, #8
	strh r0, [r4, #0x36]
	strh r0, [r3, #0x36]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x38
	strb r1, [r0]
	ldrh r0, [r5, #0x32]
	strh r0, [r3, #0x32]
	ldrh r0, [r5, #0x2e]
	strh r0, [r3, #0x2e]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldrb r1, [r3, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r3, #0x10]
	adds r0, r3, #0
	bl sub_0801766C
	b _080AD328
	.align 2, 0
_080AD318: .4byte gUnk_081320CC
_080AD31C: .4byte gUnk_081320D4
_080AD320:
	bl sub_08079184
	bl DeleteThisEntity
_080AD328:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080AD32C
sub_080AD32C: @ 0x080AD32C
	push {lr}
	adds r2, r0, #0
	movs r3, #0
	ldrb r1, [r2, #0x16]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0x10
	beq _080AD34C
	ldrb r0, [r2, #8]
	cmp r0, #6
	bne _080AD34E
	ldrb r0, [r2, #9]
	cmp r0, #5
	beq _080AD34C
	cmp r0, #0x7d
	bne _080AD34E
_080AD34C:
	movs r3, #1
_080AD34E:
	adds r0, r3, #0
	pop {pc}
	.align 2, 0
