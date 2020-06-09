	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0801C6B0
sub_0801C6B0: @ 0x0801C6B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0801C6CC @ =gUnk_0200AF00
	ldrb r1, [r2, #1]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801C6D0
	bl sub_0801C824
	bl sub_0801C66C
	b _0801C802
	.align 2, 0
_0801C6CC: .4byte gUnk_0200AF00
_0801C6D0:
	ldr r5, _0801C6F8 @ =gUnk_02002A40
	adds r0, r5, #0
	adds r0, #0xab
	ldrb r0, [r0]
	lsrs r4, r0, #1
	ldrb r0, [r2, #4]
	cmp r4, r0
	beq _0801C6EA
	strb r4, [r2, #4]
	bl sub_0801C824
	bl sub_0801C66C
_0801C6EA:
	adds r1, r5, #0
	adds r1, #0xaa
	ldrb r0, [r1]
	cmp r0, #1
	beq _0801C6FC
	lsrs r1, r0, #1
	b _0801C6FE
	.align 2, 0
_0801C6F8: .4byte gUnk_02002A40
_0801C6FC:
	movs r1, #1
_0801C6FE:
	cmp r1, r4
	ble _0801C704
	adds r1, r4, #0
_0801C704:
	movs r4, #0
	ldr r0, _0801C748 @ =gUnk_0200AF00
	ldrb r2, [r0, #3]
	adds r7, r0, #0
	cmp r1, r2
	beq _0801C718
	movs r4, #1
	cmp r1, r2
	ble _0801C718
	movs r4, #2
_0801C718:
	cmp r4, #1
	beq _0801C750
	cmp r4, #2
	bne _0801C756
	ldrb r0, [r7, #5]
	adds r1, r0, #1
	strb r1, [r7, #5]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801C74C
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _0801C740
	movs r0, #0x71
	bl PlaySFX
_0801C740:
	ldrb r0, [r7, #3]
	adds r0, #1
	strb r0, [r7, #3]
	b _0801C75A
	.align 2, 0
_0801C748: .4byte gUnk_0200AF00
_0801C74C:
	movs r4, #0
	b _0801C75A
_0801C750:
	ldrb r0, [r7, #3]
	subs r0, #1
	strb r0, [r7, #3]
_0801C756:
	movs r0, #0
	strb r0, [r7, #5]
_0801C75A:
	ldrb r0, [r7, #2]
	cmp r0, #0
	beq _0801C764
	cmp r4, #0
	beq _0801C802
_0801C764:
	movs r0, #2
	strb r0, [r7, #2]
	ldrb r0, [r7, #3]
	lsrs r3, r0, #2
	cmp r3, #0xa
	ble _0801C77A
	movs r1, #0xa
	mov r8, r1
	adds r6, r3, #0
	subs r6, #0xa
	b _0801C77E
_0801C77A:
	mov r8, r3
	movs r6, #0
_0801C77E:
	ldrb r0, [r7, #4]
	lsrs r4, r0, #2
	adds r1, r4, #0
	cmp r4, #0xa
	ble _0801C78A
	movs r4, #0xa
_0801C78A:
	adds r2, r1, #0
	subs r2, #0xa
	ldr r0, _0801C808 @ =gUnk_080C8F2C
	mov ip, r0
	cmp r2, #0
	ble _0801C7B8
	ldr r5, _0801C80C @ =gUnk_02034D30
	ldr r1, _0801C810 @ =0x0000F010
	adds r0, r1, #0
	strh r0, [r5]
	ldr r1, _0801C814 @ =0x040000D4
	movs r0, #0xa
	subs r0, r0, r6
	lsls r0, r0, #1
	add r0, ip
	str r0, [r1]
	adds r0, r5, #2
	str r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r1, #8]
	ldr r0, [r1, #8]
_0801C7B8:
	ldr r5, _0801C818 @ =gUnk_02034CF0
	ldr r2, _0801C810 @ =0x0000F010
	adds r0, r2, #0
	strh r0, [r5]
	ldr r1, _0801C814 @ =0x040000D4
	movs r0, #0xa
	mov r2, r8
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	str r0, [r1]
	adds r0, r5, #2
	str r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r4, r0
	str r4, [r1, #8]
	ldr r0, [r1, #8]
	ldrb r0, [r7, #3]
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _0801C7FC
	cmp r3, #9
	ble _0801C7EE
	subs r3, #0xa
	adds r5, #0x40
_0801C7EE:
	lsls r0, r3, #1
	adds r0, r0, r5
	adds r1, #0x11
	ldr r3, _0801C81C @ =0xFFFFF000
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0, #2]
_0801C7FC:
	ldr r1, _0801C820 @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
_0801C802:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801C808: .4byte gUnk_080C8F2C
_0801C80C: .4byte gUnk_02034D30
_0801C810: .4byte 0x0000F010
_0801C814: .4byte 0x040000D4
_0801C818: .4byte gUnk_02034CF0
_0801C81C: .4byte 0xFFFFF000
_0801C820: .4byte gScreen
