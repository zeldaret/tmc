	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Projectile3
Projectile3: @ 0x080A82F8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A8310 @ =gUnk_08129650
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A8310: .4byte gUnk_08129650

	thumb_func_start sub_080A8314
sub_080A8314: @ 0x080A8314
	push {lr}
	ldr r2, _080A8328 @ =gUnk_08129664
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A8328: .4byte gUnk_08129664

	thumb_func_start sub_080A832C
sub_080A832C: @ 0x080A832C
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x41
	ldrb r0, [r2]
	cmp r0, #0x80
	bne _080A8358
	adds r1, r3, #0
	adds r1, #0x3d
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #5
	movs r0, #0xc
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r0, [r3, #0x50]
	ldrb r1, [r2]
	adds r0, #0x41
	strb r1, [r0]
_080A8358:
	adds r0, r3, #0
	adds r0, #0x3d
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A836A
	ldr r0, [r3, #0x50]
	b _080A836E
_080A836A:
	ldr r0, [r3, #0x50]
	rsbs r1, r1, #0
_080A836E:
	adds r0, #0x3d
	strb r1, [r0]
	ldr r0, [r3, #0x50]
	movs r1, #0x42
	adds r1, r1, r3
	mov ip, r1
	ldrb r1, [r1]
	adds r0, #0x42
	strb r1, [r0]
	ldr r0, [r3, #0x50]
	adds r1, r3, #0
	adds r1, #0x46
	ldrh r1, [r1]
	adds r0, #0x46
	movs r2, #0
	strh r1, [r0]
	ldr r0, [r3, #0x50]
	adds r1, r3, #0
	adds r1, #0x3e
	ldrb r1, [r1]
	adds r0, #0x3e
	strb r1, [r0]
	mov r0, ip
	strb r2, [r0]
	pop {pc}

	thumb_func_start sub_080A83A0
sub_080A83A0: @ 0x080A83A0
	push {r4, lr}
	adds r4, r0, #0
	bl AllocMutableHitbox
	cmp r0, #0
	beq _080A83B0
	movs r0, #1
	strb r0, [r4, #0xc]
_080A83B0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A83B4
sub_080A83B4: @ 0x080A83B4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	cmp r5, #0
	bne _080A83C2
	bl DeleteThisEntity
_080A83C2:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _080A83CC
	bl DeleteThisEntity
_080A83CC:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x18
	ldr r1, _080A8424 @ =gUnk_0812966C
	adds r2, r0, r1
	ldr r1, [r4, #0x48]
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, #1
	adds r0, r5, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	cmp r0, #0x40
	bne _080A83F4
	ldr r1, [r4, #0x48]
	ldrb r0, [r1]
	rsbs r0, r0, #0
	strb r0, [r1]
_080A83F4:
	ldr r1, [r4, #0x48]
	ldrb r0, [r2]
	strb r0, [r1, #1]
	adds r2, #1
	ldr r1, [r4, #0x48]
	ldrb r0, [r2]
	strb r0, [r1, #6]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #1]
	strb r0, [r1, #7]
	adds r0, r5, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A8428
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A8438
	movs r0, #0x7f
	ands r0, r1
	b _080A8436
	.align 2, 0
_080A8424: .4byte gUnk_0812966C
_080A8428:
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080A8438
	movs r0, #0x80
	orrs r0, r1
_080A8436:
	strb r0, [r4, #0x10]
_080A8438:
	pop {r4, r5, pc}
	.align 2, 0
