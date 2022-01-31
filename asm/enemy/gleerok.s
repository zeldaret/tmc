	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0802E768
sub_0802E768: @ 0x0802E768
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r2, #0
	movs r6, #0x1f
_0802E770:
	lsls r3, r2, #2
	adds r0, r4, r3
	ldrb r1, [r0, #1]
	adds r2, #1
	lsls r0, r2, #2
	adds r0, r4, r0
	ldrb r0, [r0, #1]
	subs r0, r1, r0
	ands r0, r6
	adds r5, r2, #0
	cmp r0, #0x10
	ble _0802E790
	cmp r0, #0x1e
	bgt _0802E798
	adds r1, #1
	b _0802E796
_0802E790:
	cmp r0, #1
	ble _0802E798
	subs r1, #1
_0802E796:
	ands r1, r6
_0802E798:
	adds r0, r4, r3
	strb r1, [r0, #1]
	ldrb r1, [r0, #0x19]
	lsls r0, r5, #2
	adds r0, r4, r0
	ldrb r0, [r0, #0x19]
	subs r0, r1, r0
	movs r2, #0x1f
	ands r0, r2
	cmp r0, #0x10
	ble _0802E7B6
	cmp r0, #0x1d
	bgt _0802E7BE
	adds r1, #1
	b _0802E7BC
_0802E7B6:
	cmp r0, #2
	ble _0802E7BE
	subs r1, #1
_0802E7BC:
	ands r1, r2
_0802E7BE:
	adds r0, r4, r3
	strb r1, [r0, #0x19]
	adds r2, r5, #0
	cmp r2, #4
	bls _0802E770
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802E7CC
sub_0802E7CC: @ 0x0802E7CC
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x16
	adds r2, r0, #0
	adds r2, #0x3c
	adds r2, r2, r1
	ldr r3, [r2]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	strb r0, [r3, #0x14]
	ldr r0, [r2]
	ldrb r0, [r0, #0x14]
	bx lr

	thumb_func_start sub_0802E7E4
sub_0802E7E4: @ 0x0802E7E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	ldr r0, [r0, #0x50]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802E8D0
	movs r6, #0
	movs r5, #0
	mov r7, ip
	adds r7, #0x3c
	movs r0, #0x30
	add r0, ip
	mov r8, r0
	movs r1, #8
	rsbs r1, r1, #0
	mov sl, r1
	movs r2, #4
	rsbs r2, r2, #0
	mov sb, r2
_0802E818:
	lsls r0, r5, #2
	adds r4, r7, r0
	ldr r3, [r4]
	adds r3, #0x29
	movs r1, #7
	ands r1, r6
	ldrb r2, [r3]
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r6, #1
	mov r1, r8
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802E852
	ldr r3, [r4]
	ldrb r2, [r3, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
	b _0802E860
_0802E852:
	ldr r2, [r4]
	ldrb r1, [r2, #0x18]
	mov r0, sb
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
_0802E860:
	adds r5, #1
	cmp r5, #5
	bls _0802E818
	movs r5, #0
	movs r2, #7
	mov sb, r2
	movs r0, #8
	rsbs r0, r0, #0
	mov r8, r0
_0802E872:
	lsls r1, r5, #2
	mov r2, ip
	adds r0, r2, r1
	ldrb r0, [r0, #1]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, #1
	cmp r0, #0x10
	bhi _0802E8BA
	adds r0, r7, r1
	ldr r3, [r0]
	adds r3, #0x29
	ldrb r4, [r3]
	lsls r0, r4, #0x1d
	lsrs r6, r0, #0x1d
	lsls r2, r5, #2
	adds r2, r7, r2
	ldr r0, [r2]
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	mov r0, r8
	ands r0, r4
	orrs r0, r1
	strb r0, [r3]
	ldr r1, [r2]
	adds r1, #0x29
	mov r0, sb
	ands r6, r0
	ldrb r2, [r1]
	mov r0, r8
	ands r0, r2
	orrs r0, r6
	strb r0, [r1]
_0802E8BA:
	cmp r5, #4
	bls _0802E872
	mov r1, ip
	ldr r0, [r1, #0x38]
	adds r0, #0x29
	ldrb r2, [r0]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	b _0802E9A4
_0802E8D0:
	movs r6, #5
	movs r5, #0
	mov r7, ip
	adds r7, #0x3c
	movs r2, #0x30
	add r2, ip
	mov r8, r2
	movs r0, #8
	rsbs r0, r0, #0
	mov sl, r0
	movs r1, #4
	rsbs r1, r1, #0
	mov sb, r1
_0802E8EA:
	lsls r0, r5, #2
	adds r4, r7, r0
	ldr r3, [r4]
	adds r3, #0x29
	movs r1, #7
	ands r1, r6
	ldrb r2, [r3]
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	subs r6, #1
	mov r2, r8
	adds r0, r2, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802E924
	ldr r3, [r4]
	ldrb r2, [r3, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
	b _0802E932
_0802E924:
	ldr r2, [r4]
	ldrb r1, [r2, #0x18]
	mov r0, sb
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
_0802E932:
	adds r5, #1
	cmp r5, #5
	bls _0802E8EA
	movs r5, #0
	movs r0, #7
	mov sb, r0
	movs r1, #8
	rsbs r1, r1, #0
	mov r8, r1
_0802E944:
	lsls r1, r5, #2
	mov r2, ip
	adds r0, r2, r1
	ldrb r0, [r0, #1]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, #1
	cmp r0, #0x10
	bls _0802E98C
	adds r0, r7, r1
	ldr r3, [r0]
	adds r3, #0x29
	ldrb r4, [r3]
	lsls r0, r4, #0x1d
	lsrs r6, r0, #0x1d
	lsls r2, r5, #2
	adds r2, r7, r2
	ldr r0, [r2]
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	mov r0, r8
	ands r0, r4
	orrs r0, r1
	strb r0, [r3]
	ldr r1, [r2]
	adds r1, #0x29
	mov r0, sb
	ands r6, r0
	ldrb r2, [r1]
	mov r0, r8
	ands r0, r2
	orrs r0, r6
	strb r0, [r1]
_0802E98C:
	cmp r5, #4
	bls _0802E944
	mov r1, ip
	ldr r2, [r1, #0x38]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
_0802E9A4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0802E9B0
sub_0802E9B0: @ 0x0802E9B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0802E9D0 @ =gPlayerEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	bl sub_080041DC
	lsrs r2, r0, #4
	cmp r2, #0x5f
	bgt _0802E9D4
	movs r2, #0xa
	b _0802E9EA
	.align 2, 0
_0802E9D0: .4byte gPlayerEntity
_0802E9D4:
	adds r1, r2, #0
	subs r1, #0x60
	cmp r1, #0
	bge _0802E9DE
	adds r1, #3
_0802E9DE:
	asrs r1, r1, #2
	movs r0, #0xa
	subs r2, r0, r1
	cmp r2, #3
	bgt _0802E9EA
	movs r2, #4
_0802E9EA:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r2, r0
	beq _0802EA10
	cmp r2, r0
	ble _0802EA04
	ldrh r0, [r3, #0x2c]
	adds r0, #0x20
	b _0802EA08
_0802EA04:
	ldrh r0, [r3, #0x2c]
	subs r0, #0x20
_0802EA08:
	ldr r2, _0802EA14 @ =0x00001FFF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r3, #0x2c]
_0802EA10:
	pop {r4, pc}
	.align 2, 0
_0802EA14: .4byte 0x00001FFF

	thumb_func_start sub_0802EA18
sub_0802EA18: @ 0x0802EA18
	push {lr}
	adds r3, r2, #0
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r1, r2
	subs r1, r1, r0
	ldr r0, _0802EA40 @ =0x00001FFF
	ands r1, r0
	lsls r3, r3, #8
	subs r2, r2, r3
	cmp r1, r2
	blo _0802EA44
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r3, r2
	cmp r1, r0
	bhi _0802EA44
	movs r0, #0
	b _0802EA46
	.align 2, 0
_0802EA40: .4byte 0x00001FFF
_0802EA44:
	movs r0, #1
_0802EA46:
	pop {pc}

	thumb_func_start sub_0802EA48
sub_0802EA48: @ 0x0802EA48
	push {r4, lr}
	adds r4, r0, #0
	cmp r3, #1
	bne _0802EA52
	rsbs r2, r2, #0
_0802EA52:
	lsls r0, r1, #2
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r1, r1, r2
	ldr r3, _0802EA64 @ =0x00001FFF
	adds r2, r3, #0
	ands r1, r2
	strh r1, [r0]
	pop {r4, pc}
	.align 2, 0
_0802EA64: .4byte 0x00001FFF

	thumb_func_start sub_0802EA68
sub_0802EA68: @ 0x0802EA68
	push {r4, lr}
	adds r4, r0, #0
	cmp r3, #2
	bne _0802EA72
	rsbs r2, r2, #0
_0802EA72:
	lsls r0, r1, #2
	adds r0, r4, r0
	ldrh r1, [r0, #0x18]
	adds r1, r1, r2
	ldr r3, _0802EA84 @ =0x00001FFF
	adds r2, r3, #0
	ands r1, r2
	strh r1, [r0, #0x18]
	pop {r4, pc}
	.align 2, 0
_0802EA84: .4byte 0x00001FFF

	thumb_func_start sub_0802EA88
sub_0802EA88: @ 0x0802EA88
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
	movs r3, #0
_0802EA90:
	lsls r0, r3, #2
	adds r4, r5, r0
	adds r2, r3, #1
	lsls r0, r2, #2
	adds r1, r5, r0
	ldrb r0, [r4, #1]
	ldrb r3, [r1, #1]
	cmp r0, r3
	beq _0802EAC2
	movs r6, #1
	ldrb r0, [r1, #1]
	ldrb r1, [r4, #1]
	subs r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	movs r3, #1
	cmp r0, #0x10
	ble _0802EAB6
	movs r3, #0
_0802EAB6:
	adds r0, r5, #0
	adds r1, r2, #0
	movs r2, #0x20
	bl sub_0802EA48
	b _0802EAC8
_0802EAC2:
	adds r3, r2, #0
	cmp r3, #4
	bls _0802EA90
_0802EAC8:
	movs r3, #0
	movs r4, #0x1f
_0802EACC:
	adds r2, r3, #1
	lsls r0, r2, #2
	adds r0, r5, r0
	ldrb r1, [r0, #1]
	lsls r0, r3, #2
	adds r0, r5, r0
	ldrb r0, [r0, #1]
	subs r0, r1, r0
	ands r0, r4
	adds r3, r1, #0
	adds r1, r2, #0
	cmp r0, #0x10
	ble _0802EAEE
	cmp r0, #0x1e
	bgt _0802EAF6
	adds r3, #1
	b _0802EAF4
_0802EAEE:
	cmp r0, #1
	ble _0802EAF6
	subs r3, #1
_0802EAF4:
	ands r3, r4
_0802EAF6:
	lsls r0, r1, #2
	adds r0, r5, r0
	strb r3, [r0, #1]
	adds r3, r1, #0
	cmp r3, #4
	bls _0802EACC
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802EB08
sub_0802EB08: @ 0x0802EB08
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	movs r0, #0
	mov r8, r0
	movs r3, #0
_0802EB1A:
	lsls r0, r3, #2
	adds r4, r5, r0
	adds r2, r3, #1
	lsls r0, r2, #2
	adds r1, r5, r0
	ldrb r0, [r4, #0x19]
	ldrb r3, [r1, #0x19]
	cmp r0, r3
	beq _0802EB4E
	movs r0, #1
	mov r8, r0
	ldrb r0, [r1, #0x19]
	ldrb r1, [r4, #0x19]
	subs r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	movs r3, #2
	cmp r0, #0x10
	ble _0802EB42
	movs r3, #3
_0802EB42:
	adds r0, r5, #0
	adds r1, r2, #0
	adds r2, r6, #0
	bl sub_0802EA68
	b _0802EB54
_0802EB4E:
	adds r3, r2, #0
	cmp r3, #4
	bls _0802EB1A
_0802EB54:
	movs r3, #0
	movs r4, #0x1f
	rsbs r6, r7, #0
	ands r6, r4
_0802EB5C:
	adds r2, r3, #1
	lsls r0, r2, #2
	adds r0, r5, r0
	ldrb r1, [r0, #0x19]
	lsls r0, r3, #2
	adds r0, r5, r0
	ldrb r0, [r0, #0x19]
	subs r0, r1, r0
	ands r0, r4
	adds r3, r1, #0
	adds r1, r2, #0
	cmp r0, #0x10
	ble _0802EB7E
	cmp r6, r0
	ble _0802EB86
	adds r3, #1
	b _0802EB84
_0802EB7E:
	cmp r7, r0
	bge _0802EB86
	subs r3, #1
_0802EB84:
	ands r3, r4
_0802EB86:
	lsls r0, r1, #2
	adds r0, r5, r0
	strb r3, [r0, #0x19]
	adds r3, r1, #0
	cmp r3, #4
	bls _0802EB5C
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0802EB9C
sub_0802EB9C: @ 0x0802EB9C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0802EBBC @ =gUnk_080CD850
	bl GetRandomByWeight
	ldr r1, _0802EBC0 @ =gUnk_080CD854
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x74
	strb r1, [r0]
	adds r4, #0x75
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_0802EBBC: .4byte gUnk_080CD850
_0802EBC0: .4byte gUnk_080CD854

	thumb_func_start sub_0802EBC4
sub_0802EBC4: @ 0x0802EBC4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x74
	ldrb r0, [r1]
	adds r6, r0, #0
	cmp r6, #0
	bne _0802EC66
	ldr r1, _0802EC18 @ =gUnk_080CD86C
	adds r5, r4, #0
	adds r5, #0x79
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl GetRandomByWeight
	ldr r2, _0802EC1C @ =gUnk_080CD878
	ldrb r1, [r5]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	adds r1, r1, r0
	adds r2, r4, #0
	adds r2, #0x75
	ldrb r0, [r1]
	ldrb r1, [r2]
	cmp r0, r1
	bhs _0802EC60
	strb r6, [r2]
	ldrb r1, [r5]
	cmp r1, #0
	bne _0802EC20
	adds r0, r4, #0
	adds r0, #0x76
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x77
	movs r0, #3
	strb r0, [r1]
	b _0802EC56
	.align 2, 0
_0802EC18: .4byte gUnk_080CD86C
_0802EC1C: .4byte gUnk_080CD878
_0802EC20:
	bl Random
	adds r1, r0, #0
	movs r5, #1
	ands r1, r5
	adds r3, r4, #0
	adds r3, #0x76
	ldrb r0, [r3]
	cmp r1, r0
	beq _0802EC3E
	strb r1, [r3]
	adds r0, r4, #0
	adds r0, #0x77
	strb r5, [r0]
	b _0802EC56
_0802EC3E:
	adds r2, r4, #0
	adds r2, #0x77
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0802EC54
	eors r1, r5
	strb r5, [r2]
_0802EC54:
	strb r1, [r3]
_0802EC56:
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xd]
	strb r1, [r4, #0xb]
	b _0802EC6A
_0802EC60:
	movs r0, #2
	strb r0, [r4, #0xd]
	b _0802EC6A
_0802EC66:
	subs r0, #1
	strb r0, [r1]
_0802EC6A:
	pop {r4, r5, r6, pc}
