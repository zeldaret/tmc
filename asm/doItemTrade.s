	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08028CE8
sub_08028CE8: @ 0x08028CE8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r6, [r5, #0x7c]
	ldr r0, _08028D30 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _08028DCC
	adds r0, r5, #0
	bl sub_0802915C
	cmp r0, #0
	beq _08028DCC
	bl sub_08056338
	cmp r0, #0
	bne _08028DCC
	ldr r0, _08028D34 @ =gUnk_02002A40
	adds r0, #0xc0
	ldrh r1, [r6, #2]
	ldrh r0, [r0]
	cmp r1, r0
	bhi _08028DC0
	adds r0, r5, #0
	bl sub_080291DC
	cmp r0, #0
	beq _08028D3C
	ldr r0, _08028D38 @ =0x00002904
	bl TextboxTryNoOverlap
	movs r0, #0
	bl sub_08078A90
	b _08028DCC
	.align 2, 0
_08028D30: .4byte gTextBox
_08028D34: .4byte gUnk_02002A40
_08028D38: .4byte 0x00002904
_08028D3C:
	ldrh r0, [r6, #2]
	rsbs r0, r0, #0
	bl ModRupees
	ldrb r0, [r6]
	lsrs r7, r0, #2
	cmp r7, #1
	beq _08028D9C
	cmp r7, #1
	bgt _08028D56
	cmp r7, #0
	beq _08028D5C
	b _08028DCC
_08028D56:
	cmp r7, #2
	beq _08028DAA
	b _08028DCC
_08028D5C:
	ldrb r1, [r6, #9]
	cmp r1, #0xff
	bne _08028D70
	ldr r4, _08028D98 @ =gUnk_080CC9C0
	bl Random
	movs r1, #7
	ands r1, r0
	adds r1, r1, r4
	ldrb r1, [r1]
_08028D70:
	ldrb r0, [r6, #8]
	movs r2, #0
	bl sub_080A7C00
	movs r0, #6
	strb r0, [r5, #0xc]
	movs r0, #4
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	adds r0, #0x81
	strb r7, [r0]
	adds r0, r5, #0
	movs r1, #3
	bl sub_080290E0
	movs r0, #0x87
	bl sub_0807CCB4
	b _08028DE2
	.align 2, 0
_08028D98: .4byte gUnk_080CC9C0
_08028D9C:
	ldrb r0, [r6, #8]
	ldrb r1, [r6, #9]
	movs r2, #0
	bl sub_080A7C00
	movs r0, #4
	b _08028DB6
_08028DAA:
	ldrb r0, [r6, #8]
	ldrb r1, [r6, #9]
	movs r2, #0
	bl sub_080A7C00
	movs r0, #8
_08028DB6:
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	bl sub_0802922C
	b _08028DE2
_08028DC0:
	ldr r0, _08028DE4 @ =0x00002903
	bl TextboxTryNoOverlap
	movs r0, #0
	bl sub_08078A90
_08028DCC:
	adds r0, r5, #0
	bl sub_0800445C
	movs r0, #4
	strb r0, [r5, #0xc]
	movs r0, #0x30
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	movs r1, #0
	bl sub_080290E0
_08028DE2:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08028DE4: .4byte 0x00002903