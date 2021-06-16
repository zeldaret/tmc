	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start PlayerItem15
PlayerItem15: @ 0x080A306C
	push {lr}
	ldr r2, _080A3080 @ =gUnk_08127270
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A3080: .4byte gUnk_08127270

	thumb_func_start sub_080A3084
sub_080A3084: @ 0x080A3084
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r5, #1
	strb r5, [r4, #0xc]
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080A30F8
	ldr r0, _080A30EC @ =gPlayerEntity
	adds r0, #0x3c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x3c
	strb r0, [r1]
	ldr r0, _080A30F0 @ =gUnk_08127278
	str r0, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #2
	bne _080A30CC
	strb r5, [r4, #0xb]
_080A30CC:
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	movs r0, #0x3c
	str r0, [r4, #0x6c]
	adds r0, r4, #0
	bl sub_0801766C
	adds r0, r4, #0
	bl sub_0806F69C
	ldr r0, _080A30F4 @ =0x0000013F
	bl SoundReq
	b _080A30FC
	.align 2, 0
_080A30EC: .4byte gPlayerEntity
_080A30F0: .4byte gUnk_08127278
_080A30F4: .4byte 0x0000013F
_080A30F8:
	movs r0, #6
	strb r0, [r4, #0xe]
_080A30FC:
	adds r0, r4, #0
	movs r1, #0x18
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_080A310C
	pop {r4, r5, pc}

	thumb_func_start sub_080A310C
sub_080A310C: @ 0x080A310C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080A312A
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080A3200
	bl DeleteThisEntity
	b _080A3200
_080A312A:
	adds r0, r4, #0
	bl GetNextFrame
	ldr r0, [r4, #0x6c]
	subs r0, #1
	str r0, [r4, #0x6c]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080A31FC
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080A315C
	adds r0, r4, #0
	bl sub_0800451C
_080A315C:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _080A31F0 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	ldr r1, _080A31F4 @ =gPlayerEntity
	adds r1, #0x38
	ldrb r1, [r1]
	movs r2, #0x80
	bl sub_080002F0
	cmp r0, #0
	bne _080A31AE
	ldr r1, _080A31F8 @ =gUnk_08003E44
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	movs r5, #0x32
	ldrsh r3, [r4, r5]
	adds r0, r4, #0
	bl sub_080040D8
	cmp r0, #0
	beq _080A31AE
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_080A31AE:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A31C6
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_080A31C6:
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_08008790
	cmp r0, #0
	beq _080A31D6
	bl DeleteThisEntity
_080A31D6:
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r3, [r0]
	movs r0, #0x15
	movs r1, #1
	movs r2, #0
	bl CreatePlayerItem
	str r0, [r4, #0x54]
	cmp r0, #0
	beq _080A3200
	str r4, [r0, #0x50]
	b _080A3200
	.align 2, 0
_080A31F0: .4byte gRoomControls
_080A31F4: .4byte gPlayerEntity
_080A31F8: .4byte gUnk_08003E44
_080A31FC:
	bl DeleteThisEntity
_080A3200:
	pop {r4, r5, pc}
	.align 2, 0




// DEMO only functions

.ifdef DEMO
// @nocheckin
thumb_func_start HandleChooseDemoScreen
HandleChooseDemoScreen: @ 0x080A2E18
.incbin "baserom_demo.gba", 0x0a2e18, 0x28

thumb_func_start sub_080A2E40
sub_080A2E40: @ 0x080A2E40
.incbin "baserom_demo.gba", 0x0a2e40, 0x14c

thumb_func_start sub_080A2F8C
sub_080A2F8C: @ 0x080A2F8C
.incbin "baserom_demo.gba", 0x0A2F8C, 0x44

thumb_func_start sub_080A2FD0
sub_080A2FD0: @ 0x080A2FD0
.incbin "baserom_demo.gba", 0x0A2FD0, 0x210
.endif
