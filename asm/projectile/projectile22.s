	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Projectile22
Projectile22: @ 0x080AC274
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080AC284
	bl DeleteThisEntity
_080AC284:
	ldr r1, _080AC2BC @ =gUnk_0812A994
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080AC2C0
	ldrb r0, [r4, #0x1b]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	b _080AC324
	.align 2, 0
_080AC2BC: .4byte gUnk_0812A994
_080AC2C0:
	ldr r5, [r4, #0x50]
	ldrb r2, [r5, #0x1b]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r5, #0x19]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r4, #0x19]
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x19]
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	subs r1, #2
	adds r3, r4, #0
	adds r3, #0x29
	movs r0, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r0, [r5, #0x19]
	lsrs r0, r0, #6
	cmp r0, #3
	bne _080AC31C
	adds r0, r5, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AC31C
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	b _080AC322
_080AC31C:
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
_080AC322:
	strb r0, [r4, #0x10]
_080AC324:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080AC328
sub_080AC328: @ 0x080AC328
	push {lr}
	ldr r2, _080AC33C @ =gUnk_0812A9A8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080AC33C: .4byte gUnk_0812A9A8

	thumb_func_start sub_080AC340
sub_080AC340: @ 0x080AC340
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080AC5E4
	cmp r0, #0
	beq _080AC380
	movs r2, #1
	movs r4, #1
	strb r4, [r5, #0xc]
	movs r0, #0xc
	strb r0, [r5, #0x1e]
	ldrb r1, [r5, #0x18]
	subs r0, #0x10
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	bl Random
	ldr r1, _080AC384 @ =gUnk_0812A9B4
	ands r0, r4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x7a
	strh r0, [r1]
	subs r1, #0x42
	movs r0, #2
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_080AC388
_080AC380:
	pop {r4, r5, pc}
	.align 2, 0
_080AC384: .4byte gUnk_0812A9B4

	thumb_func_start sub_080AC388
sub_080AC388: @ 0x080AC388
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r1, _080AC3E4 @ =gUnk_0812A9B8
	ldrb r0, [r5, #0xa]
	adds r0, r0, r1
	ldrb r3, [r0]
	ldr r0, [r5, #0x50]
	mov sl, r0
	ldrb r0, [r0, #0x14]
	movs r1, #0x80
	mov sb, r1
	mov r1, sb
	eors r1, r0
	adds r6, r5, #0
	adds r6, #0x7c
	ldrh r4, [r6]
	lsrs r0, r4, #8
	subs r1, r1, r0
	adds r2, r5, #0
	adds r2, #0x7a
	ldrh r7, [r2]
	mov ip, r7
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r0, #0
	bge _080AC404
	subs r0, r1, r3
	movs r7, #0xff
	mov r8, r7
	ands r0, r7
	cmp r0, #0x7f
	bhi _080AC3E8
	movs r1, #0
	ldrsh r0, [r2, r1]
	rsbs r0, r0, #0
	strh r0, [r2]
	mov r2, sl
	ldrb r0, [r2, #0x14]
	mov r7, sb
	eors r0, r7
	subs r0, r0, r3
	b _080AC422
	.align 2, 0
_080AC3E4: .4byte gUnk_0812A9B8
_080AC3E8:
	mov r2, ip
	adds r0, r4, r2
	strh r0, [r6]
	adds r0, r1, r3
	mov r7, r8
	ands r0, r7
	cmp r0, #0x80
	bls _080AC45A
	mov r1, sl
	ldrb r0, [r1, #0x14]
	mov r2, sb
	eors r0, r2
	adds r0, r0, r3
	b _080AC44E
_080AC404:
	adds r0, r1, r3
	movs r7, #0xff
	mov r8, r7
	ands r0, r7
	cmp r0, #0x80
	bls _080AC432
	movs r1, #0
	ldrsh r0, [r2, r1]
	rsbs r0, r0, #0
	strh r0, [r2]
	mov r2, sl
	ldrb r0, [r2, #0x14]
	mov r7, sb
	eors r0, r7
	adds r0, r0, r3
_080AC422:
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #8
	strh r0, [r6]
	adds r0, r5, #0
	bl sub_080AC884
	b _080AC45A
_080AC432:
	mov r2, ip
	adds r0, r4, r2
	strh r0, [r6]
	subs r0, r1, r3
	mov r7, r8
	ands r0, r7
	subs r0, #1
	cmp r0, #0x7e
	bhi _080AC45A
	mov r1, sl
	ldrb r0, [r1, #0x14]
	mov r2, sb
	eors r0, r2
	subs r0, r0, r3
_080AC44E:
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #8
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r6]
_080AC45A:
	adds r0, r5, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	lsrs r0, r0, #8
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_080AC6F0
	adds r0, r5, #0
	bl sub_080AC760
	adds r0, r5, #0
	bl sub_080AC7C4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080AC480
sub_080AC480: @ 0x080AC480
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xe]
	cmp r1, #0
	beq _080AC4BE
	ldr r0, [r4, #0x50]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AC4A2
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x1d
	strb r0, [r1]
	b _080AC50A
_080AC4A2:
	subs r0, r1, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AC50A
	adds r0, r4, #0
	adds r0, #0x3f
	movs r1, #0x1c
	strb r1, [r0]
	movs r0, #0x8b
	lsls r0, r0, #1
	bl SoundReq
	b _080AC50A
_080AC4BE:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AC4D6
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x1d
	strb r0, [r1]
_080AC4D6:
	adds r1, r4, #0
	adds r1, #0x7c
	ldrh r2, [r1]
	adds r0, r4, #0
	adds r0, #0x7a
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	ble _080AC4EE
	movs r3, #0xc0
	lsls r3, r3, #2
	b _080AC4F0
_080AC4EE:
	ldr r3, _080AC50C @ =0xFFFFFD00
_080AC4F0:
	adds r0, r2, r3
	strh r0, [r1]
	lsrs r0, r0, #8
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080AC6F0
	adds r0, r4, #0
	bl sub_080AC760
	adds r0, r4, #0
	bl sub_080AC7C4
_080AC50A:
	pop {r4, pc}
	.align 2, 0
_080AC50C: .4byte 0xFFFFFD00

	thumb_func_start sub_080AC510
sub_080AC510: @ 0x080AC510
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080AC556
	movs r3, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r2, _080AC558 @ =gUnk_0812A9BA
	ldrb r1, [r4, #0xa]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldrb r1, [r4, #0xb]
	adds r0, r0, r1
	subs r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	ldrh r1, [r4, #0xa]
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	bne _080AC556
	ldr r0, _080AC55C @ =gUnk_080FD458
	str r0, [r4, #0x48]
_080AC556:
	pop {r4, pc}
	.align 2, 0
_080AC558: .4byte gUnk_0812A9BA
_080AC55C: .4byte gUnk_080FD458

	thumb_func_start sub_080AC560
sub_080AC560: @ 0x080AC560
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x54]
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _080AC570
	bl DeleteThisEntity
_080AC570:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080AC5A6
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080AC590
	ldr r0, _080AC58C @ =gUnk_080FD168
	b _080AC592
	.align 2, 0
_080AC58C: .4byte gUnk_080FD168
_080AC590:
	ldr r0, _080AC5DC @ =gUnk_080FD448
_080AC592:
	str r0, [r4, #0x48]
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
_080AC5A6:
	adds r0, r4, #0
	adds r0, #0x79
	ldrb r2, [r0]
	lsls r2, r2, #8
	ldr r3, _080AC5E0 @ =gSineTable
	ldrb r0, [r5, #0x15]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, [r5, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	ldrb r0, [r5, #0x15]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, [r5, #0x30]
	subs r0, r0, r1
	str r0, [r4, #0x30]
	pop {r4, r5, pc}
	.align 2, 0
_080AC5DC: .4byte gUnk_080FD448
_080AC5E0: .4byte gSineTable

	thumb_func_start sub_080AC5E4
sub_080AC5E4: @ 0x080AC5E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldrb r4, [r5, #0xa]
	cmp r4, #0
	bne _080AC668
	ldr r0, _080AC664 @ =gEntCount
	ldrb r0, [r0]
	cmp r0, #0x43
	bhi _080AC670
	adds r1, r5, #0
	adds r1, #0x79
	movs r0, #0x11
	strb r0, [r1]
	movs r0, #0x22
	bl sub_080A7EE0
	adds r6, r0, #0
	ldrb r0, [r5, #0xa]
	strb r0, [r6, #0xa]
	movs r0, #1
	strb r0, [r6, #0xb]
	ldr r0, [r5, #0x50]
	str r0, [r6, #0x50]
	adds r1, r6, #0
	adds r1, #0x79
	movs r0, #0x12
	strb r0, [r1]
	str r6, [r5, #0x54]
	movs r0, #0x22
	bl sub_080A7EE0
	adds r7, r0, #0
	ldrb r0, [r5, #0xa]
	strb r0, [r7, #0xa]
	movs r0, #2
	strb r0, [r7, #0xb]
	ldr r0, [r5, #0x50]
	str r0, [r7, #0x50]
	adds r0, r7, #0
	adds r0, #0x79
	movs r1, #0x14
	mov r8, r1
	mov r1, r8
	strb r1, [r0]
	str r7, [r6, #0x54]
	movs r0, #0x22
	bl sub_080A7EE0
	ldrb r1, [r5, #0xa]
	strb r1, [r0, #0xa]
	movs r1, #3
	strb r1, [r0, #0xb]
	ldr r1, [r5, #0x50]
	str r1, [r0, #0x50]
	str r4, [r0, #0x54]
	adds r1, r0, #0
	adds r1, #0x79
	strb r4, [r1]
	str r0, [r7, #0x54]
	b _080AC6C8
	.align 2, 0
_080AC664: .4byte gEntCount
_080AC668:
	ldr r0, _080AC674 @ =gEntCount
	ldrb r0, [r0]
	cmp r0, #0x44
	bls _080AC678
_080AC670:
	movs r0, #0
	b _080AC6E8
	.align 2, 0
_080AC674: .4byte gEntCount
_080AC678:
	adds r1, r5, #0
	adds r1, #0x79
	movs r0, #0
	mov sb, r0
	movs r0, #0xf
	strb r0, [r1]
	movs r0, #0x22
	bl sub_080A7EE0
	adds r6, r0, #0
	ldrb r0, [r5, #0xa]
	strb r0, [r6, #0xa]
	movs r0, #1
	strb r0, [r6, #0xb]
	ldr r0, [r5, #0x50]
	str r0, [r6, #0x50]
	adds r0, r6, #0
	adds r0, #0x79
	movs r1, #0x10
	mov r8, r1
	mov r1, r8
	strb r1, [r0]
	str r6, [r5, #0x54]
	movs r0, #0x22
	bl sub_080A7EE0
	adds r7, r0, #0
	ldrb r0, [r5, #0xa]
	strb r0, [r7, #0xa]
	movs r0, #2
	strb r0, [r7, #0xb]
	ldr r0, [r5, #0x50]
	str r0, [r7, #0x50]
	mov r0, sb
	str r0, [r7, #0x54]
	adds r1, r7, #0
	adds r1, #0x79
	movs r0, #0x20
	strb r0, [r1]
	str r7, [r6, #0x54]
_080AC6C8:
	movs r0, #0x22
	bl sub_080A7EE0
	adds r6, r0, #0
	ldrb r0, [r5, #0xa]
	strb r0, [r6, #0xa]
	movs r0, #4
	strb r0, [r6, #0xb]
	ldr r0, [r5, #0x50]
	str r0, [r6, #0x50]
	str r5, [r6, #0x54]
	adds r0, r6, #0
	adds r0, #0x79
	mov r1, r8
	strb r1, [r0]
	movs r0, #1
_080AC6E8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080AC6F0
sub_080AC6F0: @ 0x080AC6F0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x15]
	movs r2, #0x1f
	ands r2, r0
	lsrs r0, r0, #5
	lsls r1, r0, #1
	adds r3, r1, r0
	ldr r1, _080AC724 @ =gUnk_0812A9C0
	ldrb r0, [r4, #0x14]
	adds r0, r0, r1
	ldrb r0, [r0]
	subs r0, r0, r3
	adds r5, r1, #0
	cmp r0, #3
	bhi _080AC73A
	cmp r0, #1
	beq _080AC72E
	cmp r0, #1
	blo _080AC728
	cmp r0, #2
	beq _080AC732
	cmp r2, #0x19
	bhi _080AC75C
	b _080AC73A
	.align 2, 0
_080AC724: .4byte gUnk_0812A9C0
_080AC728:
	cmp r2, #6
	bls _080AC75C
	b _080AC73A
_080AC72E:
	subs r0, r2, #5
	b _080AC736
_080AC732:
	adds r0, r2, #0
	subs r0, #0xf
_080AC736:
	cmp r0, #0xc
	bls _080AC75C
_080AC73A:
	adds r0, r3, #3
	cmp r2, #0x1a
	bhi _080AC74E
	adds r0, r3, #2
	cmp r2, #0x10
	bhi _080AC74E
	adds r0, r3, #0
	cmp r2, #5
	bls _080AC74E
	adds r0, #1
_080AC74E:
	movs r1, #0x18
	bl __modsi3
	strb r0, [r4, #0x14]
	adds r0, r0, r5
	ldrb r0, [r0]
	strb r0, [r4, #0x1e]
_080AC75C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080AC760
sub_080AC760: @ 0x080AC760
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, [r6, #0x54]
	ldrb r0, [r4, #0x15]
	ldrb r3, [r6, #0x15]
	subs r2, r0, r3
	movs r1, #0xff
	ands r2, r1
	adds r0, r2, #0
	adds r0, #8
	ands r0, r1
	cmp r0, #0x10
	ble _080AC78A
	cmp r2, #0x80
	ble _080AC784
	adds r0, r3, #0
	subs r0, #8
	b _080AC788
_080AC784:
	adds r0, r3, #0
	adds r0, #8
_080AC788:
	strb r0, [r4, #0x15]
_080AC78A:
	ldr r5, [r4, #0x54]
	ldr r0, [r5, #0x54]
	cmp r0, #0
	bne _080AC79C
	ldr r0, [r6, #0x50]
	ldrb r0, [r0, #0x14]
	movs r1, #0x80
	eors r0, r1
	b _080AC7BE
_080AC79C:
	ldrb r0, [r5, #0x15]
	ldrb r3, [r4, #0x15]
	subs r2, r0, r3
	movs r1, #0xff
	ands r2, r1
	adds r0, r2, #0
	adds r0, #8
	ands r0, r1
	cmp r0, #0x10
	ble _080AC7C0
	cmp r2, #0x80
	ble _080AC7BA
	adds r0, r3, #0
	subs r0, #8
	b _080AC7BE
_080AC7BA:
	adds r0, r3, #0
	adds r0, #8
_080AC7BE:
	strb r0, [r5, #0x15]
_080AC7C0:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080AC7C4
sub_080AC7C4: @ 0x080AC7C4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	mov r8, r0
	ldr r7, [r0, #0x54]
	ldr r5, [r7, #0x54]
	cmp r5, #0
	beq _080AC7E4
	ldr r0, [r4, #0x50]
	adds r1, r5, #0
	bl CopyPosition
	b _080AC7E6
_080AC7E4:
	ldr r5, [r4, #0x50]
_080AC7E6:
	adds r0, r7, #0
	adds r0, #0x79
	ldrb r2, [r0]
	lsls r2, r2, #8
	ldr r3, _080AC880 @ =gSineTable
	mov sb, r3
	ldrb r1, [r7, #0x15]
	lsls r0, r1, #1
	add r0, sb
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r6, r0, #0
	muls r6, r2, r6
	adds r1, #0x40
	lsls r1, r1, #1
	add r1, sb
	movs r3, #0
	ldrsh r0, [r1, r3]
	muls r0, r2, r0
	rsbs r3, r0, #0
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl PositionRelative
	mov r0, r8
	adds r0, #0x79
	ldrb r2, [r0]
	lsls r2, r2, #8
	mov r0, r8
	ldrb r1, [r0, #0x15]
	lsls r0, r1, #1
	add r0, sb
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r6, r0, #0
	muls r6, r2, r6
	adds r1, #0x40
	lsls r1, r1, #1
	add r1, sb
	movs r3, #0
	ldrsh r0, [r1, r3]
	muls r0, r2, r0
	rsbs r3, r0, #0
	adds r0, r7, #0
	mov r1, r8
	adds r2, r6, #0
	bl PositionRelative
	adds r0, r4, #0
	adds r0, #0x79
	ldrb r2, [r0]
	lsls r2, r2, #8
	ldrb r1, [r4, #0x15]
	lsls r0, r1, #1
	add r0, sb
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r6, r0, #0
	muls r6, r2, r6
	adds r1, #0x40
	lsls r1, r1, #1
	add r1, sb
	movs r3, #0
	ldrsh r0, [r1, r3]
	muls r0, r2, r0
	rsbs r3, r0, #0
	mov r0, r8
	adds r1, r4, #0
	adds r2, r6, #0
	bl PositionRelative
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080AC880: .4byte gSineTable

	thumb_func_start sub_080AC884
sub_080AC884: @ 0x080AC884
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x50]
	adds r2, r0, #0
	adds r2, #0x72
	ldrh r0, [r2]
	cmp r0, #0
	beq _080AC8A4
	movs r0, #0
	strh r0, [r2]
	movs r0, #2
	strb r0, [r1, #0xc]
	movs r0, #0x3c
	strb r0, [r1, #0xe]
	movs r0, #0x56
	strb r0, [r1, #0xf]
_080AC8A4:
	pop {pc}
	.align 2, 0
