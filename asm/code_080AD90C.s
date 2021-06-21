	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start FlushSprites
FlushSprites: @ 0x080AD90C
	ldr r1, _080AD914 @ =gUnk_03000000
	movs r0, #0
	strb r0, [r1, #3]
	bx lr
	.align 2, 0
_080AD914: .4byte gUnk_03000000

	thumb_func_start sub_080AD918
sub_080AD918: @ 0x080AD918
	push {r4, lr}
	ldr r1, _080AD948 @ =gMain
	ldrb r0, [r1, #0xb]
	adds r2, r0, #0
	cmp r2, #0
	bne _080AD958
	ldr r1, _080AD94C @ =gUnk_03000000
	movs r3, #0xa4
	lsls r3, r3, #3
	adds r0, r1, r3
	strb r2, [r0]
	ldr r3, _080AD950 @ =0x00000664
	adds r0, r1, r3
	strb r2, [r0]
	movs r3, #0xf5
	lsls r3, r3, #3
	adds r0, r1, r3
	strb r2, [r0]
	ldr r3, _080AD954 @ =0x000008EC
	adds r0, r1, r3
	strb r2, [r0]
	adds r4, r1, #0
	b _080AD95E
	.align 2, 0
_080AD948: .4byte gMain
_080AD94C: .4byte gUnk_03000000
_080AD950: .4byte 0x00000664
_080AD954: .4byte 0x000008EC
_080AD958:
	subs r0, #1
	strb r0, [r1, #0xb]
	ldr r4, _080AD9A8 @ =gUnk_03000000
_080AD95E:
	ldrb r1, [r4, #3]
	movs r0, #0x80
	subs r2, r0, r1
	cmp r2, #0
	ble _080AD980
	lsls r1, r1, #3
	adds r0, r4, #0
	adds r0, #0x20
	adds r1, r1, r0
	movs r3, #0xa8
	lsls r3, r3, #2
	adds r0, r3, #0
_080AD976:
	strh r0, [r1]
	adds r1, #8
	subs r2, #1
	cmp r2, #0
	bne _080AD976
_080AD980:
	adds r1, r4, #0
	ldr r0, _080AD9AC @ =0x00000427
	adds r2, r1, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _080AD9A0
	movs r0, #0
	strb r0, [r2]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r0, r1, r2
	adds r1, #0x26
	movs r2, #0x20
	movs r3, #8
	bl ObjAffineSet
_080AD9A0:
	movs r0, #1
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_080AD9A8: .4byte gUnk_03000000
_080AD9AC: .4byte 0x00000427

	thumb_func_start sub_080AD9B0
sub_080AD9B0: @ 0x080AD9B0
	push {lr}
	ldr r2, _080AD9F4 @ =gUnk_03000000
	ldr r0, _080AD9F8 @ =gScreenTransition
	adds r0, #0x2f
	ldrb r0, [r0]
	movs r1, #0
	cmp r0, #0
	beq _080AD9C2
	movs r1, #0xf
_080AD9C2:
	strb r1, [r2, #0xe]
	ldr r1, _080AD9FC @ =gRoomControls
	adds r0, r1, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r1, #0xa]
	adds r0, r0, r3
	strh r0, [r2, #4]
	adds r0, r1, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r1, #0xc]
	adds r0, r0, r1
	strh r0, [r2, #6]
	ldrb r0, [r2, #1]
	adds r0, #1
	strb r0, [r2, #1]
	ldr r0, _080ADA00 @ =gUnk_03006164
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080AD9F4: .4byte gUnk_03000000
_080AD9F8: .4byte gScreenTransition
_080AD9FC: .4byte gRoomControls
_080ADA00: .4byte gUnk_03006164

	thumb_func_start sub_080ADA04
sub_080ADA04: @ 0x080ADA04
	push {lr}
	ldr r2, _080ADA10 @ =gUnk_0300659C
	bl _call_via_r2
	pop {pc}
	.align 2, 0
.ifdef EU
_080ADA10: .4byte gUnk_030065C8
.else
_080ADA10: .4byte gUnk_0300659C
.endif

	thumb_func_start sub_080ADA14
sub_080ADA14: @ 0x080ADA14
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r4, _080ADA28 @ =gUnk_03006580
	ldr r0, _080ADA2C @ =gOamCmd
	adds r1, r3, #0
	bl _call_via_r4
	pop {r4, pc}
	.align 2, 0
_080ADA28: .4byte gUnk_03006580
_080ADA2C: .4byte gOamCmd
