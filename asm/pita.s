	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Pita
Pita: @ 0x08062E60
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08062E88
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	adds r1, r4, #0
	bl ResolveEntityOnTop
	ldr r0, _08062EB4 @ =gUnk_0810C428
	str r0, [r4, #0x48]
	adds r0, r4, #0
	bl sub_0807DD64
_08062E88:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08062EB2
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	adds r0, #0x28
	strh r1, [r0]
_08062EB2:
	pop {r4, pc}
	.align 2, 0
_08062EB4: .4byte gUnk_0810C428

	thumb_func_start sub_08062EB8
sub_08062EB8: @ 0x08062EB8
	push {lr}
	movs r0, #0x68
	movs r1, #0
	bl sub_0807CAA0
	movs r0, #0x69
	movs r1, #0
	bl sub_0807CAA0
	movs r0, #0x6a
	movs r1, #0
	bl sub_0807CAA0
	movs r0, #0x6b
	movs r1, #0
	bl sub_0807CAA0
	pop {pc}

	thumb_func_start sub_08062EDC
sub_08062EDC: @ 0x08062EDC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r0, #0x68
	bl GetInventoryValue
	cmp r0, #0
	beq _08062EEE
	movs r4, #0
_08062EEE:
	movs r0, #0x69
	bl GetInventoryValue
	cmp r0, #0
	beq _08062EFA
	movs r4, #1
_08062EFA:
	movs r0, #0x6a
	bl GetInventoryValue
	cmp r0, #0
	beq _08062F06
	movs r4, #2
_08062F06:
	movs r0, #0x6b
	bl GetInventoryValue
	cmp r0, #0
	beq _08062F12
	movs r4, #3
_08062F12:
	movs r0, #0x5b
	bl CheckLocalFlag
	cmp r0, #0
	bne _08062F24
	movs r0, #0x5b
	bl SetLocalFlag
	movs r4, #4
_08062F24:
	bl Random
	movs r1, #0xff
	ands r1, r0
	ldr r0, _08062F58 @ =gUnk_0810C430
	adds r0, r4, r0
	ldrb r0, [r0]
	cmp r1, r0
	bhi _08062F68
	ldr r0, _08062F5C @ =gUnk_0810C435
	bl sub_080028F4
	adds r4, r0, #0
	ldr r0, _08062F60 @ =gUnk_0810C43D
	adds r0, r4, r0
	ldrb r1, [r0]
	movs r0, #0x5c
	movs r2, #1
	bl sub_080A7C18
	ldr r0, _08062F64 @ =0x00003C05
	adds r1, r6, #0
	bl TextboxNoOverlap
	movs r0, #1
	b _08062F6A
	.align 2, 0
_08062F58: .4byte gUnk_0810C430
_08062F5C: .4byte gUnk_0810C435
_08062F60: .4byte gUnk_0810C43D
_08062F64: .4byte 0x00003C05
_08062F68:
	movs r0, #0
_08062F6A:
	str r0, [r5, #0x14]
	pop {r4, r5, r6, pc}
	.align 2, 0
