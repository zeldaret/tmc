	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object67
Object67: @ 0x08094130
	push {lr}
	ldr r2, _08094144 @ =gUnk_081229BC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08094144: .4byte gUnk_081229BC

	thumb_func_start sub_08094148
sub_08094148: @ 0x08094148
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _08094154
	b _08094254
_08094154:
	cmp r0, #1
	bgt _0809415E
	cmp r0, #0
	beq _080941A8
	b _0809438A
_0809415E:
	cmp r0, #2
	beq _08094164
	b _0809438A
_08094164:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _08094180
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0xb4
	lsls r0, r0, #1
	str r0, [r4, #0x78]
	ldr r0, _0809417C @ =gRoomControls
	str r4, [r0, #0x30]
	b _08094198
	.align 2, 0
_0809417C: .4byte gRoomControls
_08094180:
	ldr r0, [r4, #0x78]
	subs r0, #1
	str r0, [r4, #0x78]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08094198
	ldr r1, _080941A0 @ =gRoomControls
	ldr r0, _080941A4 @ =gPlayerEntity
	str r0, [r1, #0x30]
	bl DeleteThisEntity
_08094198:
	bl sub_08078B48
	b _08094394
	.align 2, 0
_080941A0: .4byte gRoomControls
_080941A4: .4byte gPlayerEntity
_080941A8:
	ldr r1, _08094228 @ =gUnk_081229D0
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r2, [r4, #0x2e]
	adds r0, r0, r2
	strh r0, [r4, #0x2e]
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r2, [r4, #0x32]
	adds r0, r0, r2
	strh r0, [r4, #0x32]
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _080941F0
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x18]
_080941F0:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08094200
	ldrb r0, [r4, #0x18]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x18]
_08094200:
	ldrb r0, [r4, #0xb]
	cmp r0, #3
	bhi _08094230
	bl Random
	ldr r1, _0809422C @ =0x0001FFFF
	ands r1, r0
	movs r0, #0xa0
	lsls r0, r0, #0xa
	orrs r0, r1
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0x56
	bl InitializeAnimation
	b _0809438A
	.align 2, 0
_08094228: .4byte gUnk_081229D0
_0809422C: .4byte 0x0001FFFF
_08094230:
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	bl Random
	movs r1, #3
	ands r0, r1
	ldrb r1, [r4, #0x15]
	orrs r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0x57
	bl InitializeAnimation
	b _0809438A
_08094254:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _08094272
	adds r0, r4, #0
	movs r1, #0x67
	movs r2, #1
	movs r3, #0x80
	bl CreateObjectWithParent
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _08094272
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x54]
_08094272:
	ldrb r0, [r4, #0xb]
	cmp r0, #0x80
	bne _0809427A
	b _08094380
_0809427A:
	movs r2, #0
	movs r0, #0x4b
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x19]
	subs r0, #0x58
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #0xe0
	lsls r1, r1, #7
	strh r1, [r4, #0x24]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r0, [r3]
	movs r1, #7
	orrs r0, r1
	strb r0, [r3]
	ldrb r0, [r4, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #3
	ldr r1, _080942E8 @ =gUnk_081229F0
	adds r3, r0, r1
	movs r0, #0
	ldrsb r0, [r3, r0]
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	movs r0, #1
	ldrsb r0, [r3, r0]
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	ldrb r0, [r3, #2]
	strb r0, [r4, #0xe]
	ldrb r0, [r3, #3]
	strb r0, [r4, #0xf]
	movs r0, #0xce
	str r0, [r4, #0x7c]
	str r2, [r4, #0x74]
	ldrb r1, [r3, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080942EC
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #0xff
	lsls r0, r0, #8
	b _080942F4
	.align 2, 0
_080942E8: .4byte gUnk_081229F0
_080942EC:
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #0x80
	lsls r0, r0, #1
_080942F4:
	strh r0, [r1]
	ldrb r1, [r3, #4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809430A
	adds r1, r4, #0
	adds r1, #0x86
	movs r0, #0xff
	lsls r0, r0, #8
	b _08094312
_0809430A:
	adds r1, r4, #0
	adds r1, #0x86
	movs r0, #0x80
	lsls r0, r0, #1
_08094312:
	strh r0, [r1]
	adds r0, r4, #0
	bl AllocMutableHitbox
	cmp r0, #0
	beq _0809438A
	ldr r2, [r4, #0x48]
	ldr r1, _0809437C @ =gUnk_080FD2E8
	ldrb r0, [r1]
	strb r0, [r2]
	ldr r2, [r4, #0x48]
	ldrb r0, [r1, #1]
	strb r0, [r2, #1]
	ldr r2, [r4, #0x48]
	ldrb r0, [r1, #2]
	strb r0, [r2, #2]
	ldr r2, [r4, #0x48]
	ldrb r0, [r1, #3]
	strb r0, [r2, #3]
	ldr r2, [r4, #0x48]
	ldrb r0, [r1, #4]
	strb r0, [r2, #4]
	ldr r2, [r4, #0x48]
	ldrb r0, [r1, #5]
	strb r0, [r2, #5]
	ldr r2, [r4, #0x48]
	ldrb r0, [r1, #6]
	strb r0, [r2, #6]
	ldr r2, [r4, #0x48]
	ldrb r0, [r1, #7]
	strb r0, [r2, #7]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r1, #4
	movs r0, #7
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x48
	strb r0, [r1]
	subs r1, #1
	movs r0, #0x7a
	strb r0, [r1]
	subs r1, #4
	movs r0, #1
	strb r0, [r1]
	b _0809438A
	.align 2, 0
_0809437C: .4byte gUnk_080FD2E8
_08094380:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_0809438A:
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_08094398
_08094394:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08094398
sub_08094398: @ 0x08094398
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080943A8
	cmp r0, #1
	beq _080943D8
	b _08094420
_080943A8:
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_0806F69C
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08094420
	ldrb r0, [r4, #0xb]
	cmp r0, #3
	bhi _080943D2
	adds r0, r4, #0
	movs r1, #0xc
	movs r2, #0
	bl CreateFx
_080943D2:
	bl DeleteThisEntity
	b _08094420
_080943D8:
	ldrb r1, [r4, #0xb]
	cmp r1, #0x80
	beq _0809440A
	ldr r0, [r4, #0x7c]
	subs r0, #1
	str r0, [r4, #0x7c]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080943F6
	movs r0, #0x96
	lsls r0, r0, #2
	str r0, [r4, #0x7c]
	movs r0, #2
	strb r0, [r4, #0xc]
_080943F6:
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r1, [r0]
	adds r0, #4
	ldrh r2, [r0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0805EC9C
	b _08094420
_0809440A:
	ldr r0, [r4, #0x54]
	adds r0, #0x79
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _0809441A
	bl DeleteThisEntity
_0809441A:
	adds r0, r4, #0
	bl sub_08094660
_08094420:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08094424
sub_08094424: @ 0x08094424
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r3, r6, #0
	adds r3, #0x82
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _08094452
	adds r1, r6, #0
	adds r1, #0x80
	movs r0, #0x24
	ldrsh r2, [r6, r0]
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
	movs r2, #0
	ldrsh r0, [r3, r2]
	rsbs r0, r0, #0
	mov r8, r0
	adds r5, r1, #0
	b _08094466
_08094452:
	adds r0, r6, #0
	adds r0, #0x80
	movs r1, #0x24
	ldrsh r2, [r6, r1]
	ldr r1, [r0]
	subs r1, r1, r2
	str r1, [r0]
	ldrh r3, [r3]
	mov r8, r3
	adds r5, r0, #0
_08094466:
	adds r0, r6, #0
	adds r0, #0x86
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r0, #0
	cmp r1, #0
	bge _0809448C
	adds r1, r6, #0
	adds r1, #0x84
	movs r0, #0x24
	ldrsh r2, [r6, r0]
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
	movs r2, #0
	ldrsh r0, [r4, r2]
	rsbs r7, r0, #0
	adds r3, r1, #0
	b _0809449E
_0809448C:
	adds r0, r6, #0
	adds r0, #0x84
	movs r1, #0x24
	ldrsh r2, [r6, r1]
	ldr r1, [r0]
	subs r1, r1, r2
	str r1, [r0]
	ldrh r7, [r4]
	adds r3, r0, #0
_0809449E:
	ldrh r2, [r6, #0x24]
	movs r0, #0x24
	ldrsh r1, [r6, r0]
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r1, r0
	ble _080944B2
	ldr r1, _080944D0 @ =0xFFFFFF00
	adds r0, r2, r1
	strh r0, [r6, #0x24]
_080944B2:
	ldr r0, [r6, #0x7c]
	subs r0, #1
	str r0, [r6, #0x7c]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080944D4
	movs r0, #0
	strh r0, [r5]
	strh r0, [r3]
	movs r0, #3
	strb r0, [r6, #0xc]
	movs r0, #0x78
	str r0, [r6, #0x7c]
	b _08094500
	.align 2, 0
_080944D0: .4byte 0xFFFFFF00
_080944D4:
	adds r5, r6, #0
	adds r5, #0x82
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldrb r3, [r6, #0xe]
	adds r0, r6, #0
	movs r2, #0x20
	bl sub_0806FCF4
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldrb r3, [r6, #0xf]
	adds r0, r6, #0
	movs r2, #0x20
	bl sub_0806FCF4
	ldrh r1, [r5]
	ldrh r2, [r4]
	adds r0, r6, #0
	movs r3, #0
	bl sub_0805EC9C
_08094500:
	ldr r5, [r6, #0x48]
	cmp r5, #0
	beq _08094538
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r4, #0
	mov r1, r8
	bl __divsi3
	lsrs r0, r0, #3
	strb r0, [r5, #6]
	ldr r5, [r6, #0x48]
	adds r0, r4, #0
	adds r1, r7, #0
	bl __divsi3
	lsrs r0, r0, #3
	strb r0, [r5, #7]
	ldr r1, [r6, #0x48]
	adds r0, r6, #0
	adds r0, #0x62
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [r6, #0x48]
	adds r0, r6, #0
	adds r0, #0x63
	ldrb r0, [r0]
	strb r0, [r1, #1]
_08094538:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08094540
sub_08094540: @ 0x08094540
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x7c]
	subs r0, #1
	str r0, [r3, #0x7c]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0809455A
	movs r0, #4
	strb r0, [r3, #0xc]
	movs r0, #2
	str r0, [r3, #0x7c]
_0809455A:
	adds r0, r3, #0
	adds r0, #0x82
	ldrh r1, [r0]
	adds r0, #4
	ldrh r2, [r0]
	adds r0, r3, #0
	movs r3, #0
	bl sub_0805EC9C
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08094570
sub_08094570: @ 0x08094570
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r2, r6, #0
	adds r2, #0x82
	ldrh r1, [r2]
	lsls r3, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08094590
	asrs r3, r3, #0x10
	ldr r0, _080945B0 @ =0xFFFFFF00
	cmp r3, r0
	bne _080945BA
_08094590:
	ldr r1, [r6, #0x7c]
	cmp r1, #0
	bne _080945B4
	ldr r0, [r6, #0x50]
	adds r0, #0x7c
	strh r1, [r0]
	ldr r0, [r6, #0x50]
	adds r0, #0x79
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08094622
	bl DeleteThisEntity
	b _08094622
	.align 2, 0
_080945B0: .4byte 0xFFFFFF00
_080945B4:
	subs r0, r1, #1
	str r0, [r6, #0x7c]
	b _08094622
_080945BA:
	cmp r3, #0
	bge _080945CC
	subs r0, r1, #1
	strh r0, [r2]
	movs r1, #0
	ldrsh r0, [r2, r1]
	rsbs r0, r0, #0
	mov r8, r0
	b _080945D4
_080945CC:
	adds r0, r1, #1
	strh r0, [r2]
	ldrh r2, [r2]
	mov r8, r2
_080945D4:
	adds r0, r6, #0
	adds r0, #0x86
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	bge _080945F0
	subs r0, r2, #1
	strh r0, [r4]
	movs r1, #0
	ldrsh r0, [r4, r1]
	rsbs r7, r0, #0
	b _080945F6
_080945F0:
	adds r0, r2, #1
	strh r0, [r4]
	ldrh r7, [r4]
_080945F6:
	adds r5, r6, #0
	adds r5, #0x82
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldrb r3, [r6, #0xe]
	adds r0, r6, #0
	movs r2, #0x20
	bl sub_0806FCF4
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldrb r3, [r6, #0xf]
	adds r0, r6, #0
	movs r2, #0x20
	bl sub_0806FCF4
	ldrh r1, [r5]
	ldrh r2, [r4]
	adds r0, r6, #0
	movs r3, #0
	bl sub_0805EC9C
_08094622:
	ldr r5, [r6, #0x48]
	cmp r5, #0
	beq _0809465A
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r4, #0
	mov r1, r8
	bl __divsi3
	lsrs r0, r0, #3
	strb r0, [r5, #6]
	ldr r5, [r6, #0x48]
	adds r0, r4, #0
	adds r1, r7, #0
	bl __divsi3
	lsrs r0, r0, #3
	strb r0, [r5, #7]
	ldr r1, [r6, #0x48]
	adds r0, r6, #0
	adds r0, #0x62
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [r6, #0x48]
	adds r0, r6, #0
	adds r0, #0x63
	ldrb r0, [r0]
	strb r0, [r1, #1]
_0809465A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08094660
sub_08094660: @ 0x08094660
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldr r0, [r6, #0x50]
	adds r0, #0x62
	movs r7, #0
	ldrsb r7, [r0, r7]
	cmp r7, #0
	bge _08094678
	rsbs r7, r7, #0
_08094678:
	lsls r7, r7, #1
	adds r0, r7, #0
	cmp r7, #0
	bge _08094682
	adds r0, #0xf
_08094682:
	asrs r1, r0, #4
	ldr r0, [r6, #0x74]
	cmp r0, r1
	bhs _08094700
	str r1, [r6, #0x74]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	subs r0, r0, r7
	adds r4, r0, #0
	subs r4, #0x40
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	subs r0, r0, r7
	adds r5, r0, #0
	subs r5, #0x40
	movs r0, #0x10
	mov sb, r0
	str r0, [r6, #0x78]
	movs r1, #0
	mov r8, r1
	str r1, [r6, #0x7c]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08094708
	mov r0, r8
	str r0, [r6, #0x78]
	mov r1, sb
	str r1, [r6, #0x7c]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08094708
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	adds r0, r0, r7
	adds r4, r0, #0
	adds r4, #0x30
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	adds r0, r0, r7
	adds r5, r0, #0
	adds r5, #0x30
	movs r7, #0x10
	rsbs r7, r7, #0
	str r7, [r6, #0x78]
	mov r0, r8
	str r0, [r6, #0x7c]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08094708
	mov r1, r8
	str r1, [r6, #0x78]
	str r7, [r6, #0x7c]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08094708
_08094700:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08094708
sub_08094708: @ 0x08094708
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, [r7, #0x74]
	lsls r0, r0, #1
	adds r4, r0, #0
	adds r4, #8
	cmp r4, #0
	beq _08094752
	ldr r3, _08094758 @ =gRoomControls
	movs r2, #0x3f
_08094722:
	ldrh r0, [r3, #6]
	subs r0, r6, r0
	lsrs r0, r0, #4
	ands r0, r2
	ldrh r1, [r3, #8]
	subs r1, r5, r1
	lsrs r1, r1, #4
	ands r1, r2
	lsls r1, r1, #6
	orrs r0, r1
	movs r1, #2
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_0807BA8C
	ldr r0, [r7, #0x78]
	adds r6, r6, r0
	ldr r0, [r7, #0x7c]
	adds r5, r5, r0
	subs r4, #1
	ldr r2, [sp]
	ldr r3, [sp, #4]
	cmp r4, #0
	bne _08094722
_08094752:
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08094758: .4byte gRoomControls
