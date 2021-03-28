	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Projectile21
Projectile21: @ 0x080ABFB0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080ABFC8 @ =gUnk_0812A954
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080ABFC8: .4byte gUnk_0812A954

	thumb_func_start sub_080ABFCC
sub_080ABFCC: @ 0x080ABFCC
	push {lr}
	ldr r2, _080ABFE0 @ =gUnk_0812A968
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080ABFE0: .4byte gUnk_0812A968

	thumb_func_start sub_080ABFE4
sub_080ABFE4: @ 0x080ABFE4
	push {lr}
	bl DeleteThisEntity
	pop {pc}

	thumb_func_start sub_080ABFEC
sub_080ABFEC: @ 0x080ABFEC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xa]
	adds r1, #1
	bl InitializeAnimation
	ldrb r1, [r4, #0xa]
	cmp r1, #0
	beq _080AC030
	cmp r1, #1
	beq _080AC048
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	movs r0, #0xff
	strb r0, [r4, #0xf]
	ldr r1, _080AC028 @ =gUnk_0812A97C
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x44
	movs r0, #0x88
	strb r0, [r1]
	ldr r0, _080AC02C @ =0x00000193
	b _080AC06A
	.align 2, 0
_080AC028: .4byte gUnk_0812A97C
_080AC02C: .4byte 0x00000193
_080AC030:
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	movs r0, #7
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0x18
	strb r0, [r1]
	subs r1, #0x41
	movs r0, #0x88
	b _080AC058
_080AC048:
	strb r1, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0x18
_080AC058:
	strb r0, [r1]
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPositionAndSpriteOffset
	ldrh r0, [r4, #0x36]
	subs r0, #0x14
	strh r0, [r4, #0x36]
	ldr r0, _080AC070 @ =0x00000149
_080AC06A:
	bl SoundReq
	pop {r4, pc}
	.align 2, 0
_080AC070: .4byte 0x00000149

	thumb_func_start sub_080AC074
sub_080AC074: @ 0x080AC074
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080AC084
	bl DeleteThisEntity
_080AC084:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPositionAndSpriteOffset
	ldrh r0, [r4, #0x36]
	subs r0, #0x14
	strh r0, [r4, #0x36]
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #0
	beq _080AC0B2
	subs r0, #1
	strb r0, [r1]
	movs r1, #0xff
	ands r0, r1
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080AC0B2
	ldr r0, _080AC0E8 @ =0x00000149
	bl SoundReq
_080AC0B2:
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AC0FE
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080AC0F0
	movs r0, #2
	strb r0, [r4, #0xc]
	ldr r1, _080AC0EC @ =gPlayerEntity
	adds r0, r4, #0
	bl GetFacingDirection
	strb r0, [r4, #0x15]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r0, #0x13
	bl SoundReq
	b _080AC0F8
	.align 2, 0
_080AC0E8: .4byte 0x00000149
_080AC0EC: .4byte gPlayerEntity
_080AC0F0:
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x10
	strb r0, [r4, #0xe]
_080AC0F8:
	ldrh r0, [r4, #0x36]
	subs r0, #0x28
	strh r0, [r4, #0x36]
_080AC0FE:
	pop {r4, pc}

	thumb_func_start sub_080AC100
sub_080AC100: @ 0x080AC100
	push {r4, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #0x36]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #6
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080AC116
	adds r0, r2, #3
	strh r0, [r4, #0x36]
_080AC116:
	adds r0, r4, #0
	bl sub_080AF090
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _080AC126
	bl DeleteThisEntity
_080AC126:
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080AC13A
	bl DeleteThisEntity
_080AC13A:
	ldrb r0, [r4, #0xe]
	cmp r0, #0x1d
	bhi _080AC160
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	ands r0, r1
	ldrb r1, [r4, #0xf]
	ands r0, r1
	cmp r0, #0
	bne _080AC160
	ldr r1, _080AC164 @ =gPlayerEntity
	adds r0, r4, #0
	bl GetFacingDirection
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
_080AC160:
	pop {r4, pc}
	.align 2, 0
_080AC164: .4byte gPlayerEntity

	thumb_func_start sub_080AC168
sub_080AC168: @ 0x080AC168
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl GetNextFrame
	ldr r0, [r4, #0x34]
	ldr r1, _080AC1C0 @ =0xFFFF8000
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _080AC1F8
	movs r0, #4
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xe]
	bl Random
	adds r5, r0, #0
	movs r0, #7
	ands r5, r0
	ldr r0, _080AC1C4 @ =gUnk_0812A982
	adds r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r4, #0xf]
	ldr r1, _080AC1C8 @ =gPlayerEntity
	adds r0, r4, #0
	bl GetFacingDirection
	adds r1, r0, #0
	ldr r0, [r4, #0x50]
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #3
	bne _080AC1D0
	ldr r0, _080AC1CC @ =gUnk_0812A98A
	adds r0, r5, r0
	ldrb r0, [r0]
	subs r1, r1, r0
	strb r6, [r4, #0xb]
	b _080AC1F2
	.align 2, 0
_080AC1C0: .4byte 0xFFFF8000
_080AC1C4: .4byte gUnk_0812A982
_080AC1C8: .4byte gPlayerEntity
_080AC1CC: .4byte gUnk_0812A98A
_080AC1D0:
	cmp r0, #2
	bne _080AC1E4
	ldr r0, _080AC1E0 @ =gUnk_0812A98A
	adds r0, r5, r0
	ldrb r0, [r0]
	subs r1, r1, r0
	movs r0, #1
	b _080AC1F0
	.align 2, 0
_080AC1E0: .4byte gUnk_0812A98A
_080AC1E4:
	ldr r0, _080AC1FC @ =gUnk_0812A98A
	adds r0, r5, r0
	ldrb r0, [r0]
	lsrs r0, r0, #1
	subs r1, r1, r0
	movs r0, #2
_080AC1F0:
	strb r0, [r4, #0xb]
_080AC1F2:
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r4, #0x15]
_080AC1F8:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080AC1FC: .4byte gUnk_0812A98A

	thumb_func_start sub_080AC200
sub_080AC200: @ 0x080AC200
	push {r4, r5, lr}
	adds r4, r0, #0
	bl GetNextFrame
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r5, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AC270
	movs r0, #0x10
	strb r0, [r4, #0xe]
	movs r0, #0x21
	bl sub_080A7EE0
	adds r1, r0, #0
	cmp r1, #0
	beq _080AC23C
	movs r0, #2
	strb r0, [r1, #0xa]
	ldrb r0, [r4, #0xb]
	strb r0, [r1, #0xb]
	ldrb r0, [r4, #0x15]
	strb r0, [r1, #0x15]
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x50]
	adds r0, r4, #0
	bl CopyPosition
_080AC23C:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r5
	cmp r0, #0
	bne _080AC24C
	bl DeleteThisEntity
_080AC24C:
	ldr r0, [r4, #0x50]
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #3
	bne _080AC25C
	ldrb r0, [r4, #0x15]
	adds r0, #3
	b _080AC26A
_080AC25C:
	cmp r0, #2
	bne _080AC266
	ldrb r0, [r4, #0x15]
	adds r0, #3
	b _080AC26A
_080AC266:
	ldrb r0, [r4, #0x15]
	adds r0, #2
_080AC26A:
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
_080AC270:
	pop {r4, r5, pc}
	.align 2, 0
