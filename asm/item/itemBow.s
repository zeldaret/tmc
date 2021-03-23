	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start ItemBow
ItemBow: @ 0x08075DDC
	push {lr}
	ldr r3, _08075DF0 @ =gUnk_0811BD80
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_08075DF0: .4byte gUnk_0811BD80

	thumb_func_start sub_08075DF4
sub_08075DF4: @ 0x08075DF4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r6, _08075E2C @ =gPlayerState
	ldrb r1, [r6, #4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08075E34
	ldrb r1, [r4, #9]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #9]
	ldr r0, _08075E30 @ =gPlayerEntity
	bl sub_0806F948
	adds r0, r4, #0
	bl sub_08077BB8
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077D38
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #1
	strb r0, [r1]
	b _08075E3C
	.align 2, 0
_08075E2C: .4byte gPlayerState
_08075E30: .4byte gPlayerEntity
_08075E34:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
_08075E3C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08075E40
sub_08075E40: @ 0x08075E40
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	mov r8, r1
	ldr r0, _08075EA0 @ =gPlayerState
	adds r1, r0, #0
	adds r1, #0x21
	ldrb r1, [r1]
	adds r6, r0, #0
	cmp r1, #0
	beq _08075EA8
	ldrb r1, [r6, #4]
	movs r5, #0x80
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	bne _08075EA8
	adds r0, r4, #0
	bl UpdateItemAnim
	ldrb r1, [r4, #0xe]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08075EB8
	movs r0, #2
	strb r0, [r4, #4]
	ldrb r1, [r4, #9]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #9]
	ldr r0, _08075EA4 @ =gSave
	adds r0, #0xad
	ldrb r0, [r0]
	cmp r0, #0
	beq _08075EB8
	strb r7, [r4, #0xf]
	movs r1, #8
	mov r0, r8
	asrs r1, r0
	ldrb r0, [r6, #0xa]
	bics r0, r1
	strb r0, [r6, #0xa]
	b _08075EB8
	.align 2, 0
_08075EA0: .4byte gPlayerState
_08075EA4: .4byte gSave
_08075EA8:
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	mov r1, r8
	bl sub_08077E78
_08075EB8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08075EC0
sub_08075EC0: @ 0x08075EC0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, _08075F04 @ =gSave
	adds r0, #0xad
	ldrb r5, [r0]
	adds r0, r4, #0
	bl sub_08077EFC
	cmp r0, #0
	beq _08075F0C
	cmp r5, #0
	beq _08075F0C
	ldr r2, _08075F08 @ =gPlayerState
	ldrb r1, [r2, #4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08075EF0
	adds r0, r2, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	bne _08075F32
_08075EF0:
	adds r1, r2, #0
	adds r1, #0x21
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077E78
	b _08075F32
	.align 2, 0
_08075F04: .4byte gSave
_08075F08: .4byte gPlayerState
_08075F0C:
	ldr r2, _08075F34 @ =gPlayerState
	movs r0, #8
	asrs r0, r6
	ldrb r1, [r2, #0xa]
	orrs r0, r1
	strb r0, [r2, #0xa]
	movs r1, #0x9f
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_08077DF4
	movs r1, #0xf
	movs r0, #0xf
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #9]
	orrs r1, r0
	strb r1, [r4, #9]
	movs r0, #3
	strb r0, [r4, #4]
_08075F32:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08075F34: .4byte gPlayerState

	thumb_func_start sub_08075F38
sub_08075F38: @ 0x08075F38
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldr r2, _08075F6C @ =gPlayerState
	ldrb r1, [r2, #4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08075F70
	adds r0, r2, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _08075F70
	adds r0, r4, #0
	bl UpdateItemAnim
	ldrb r1, [r4, #0xe]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08075F80
	movs r0, #4
	strb r0, [r4, #4]
	b _08075F80
	.align 2, 0
_08075F6C: .4byte gPlayerState
_08075F70:
	adds r1, r2, #0
	adds r1, #0x21
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_08077E78
_08075F80:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08075F84
sub_08075F84: @ 0x08075F84
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r2, _08075FB4 @ =gPlayerState
	ldrb r1, [r2, #4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08075FC8
	adds r0, r2, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _08075FC8
	movs r0, #0x70
	bl GetInventoryValue
	cmp r0, #1
	bne _08075FB8
	adds r0, r4, #0
	movs r1, #5
	bl sub_08077E3C
	b _08075FBE
	.align 2, 0
_08075FB4: .4byte gPlayerState
_08075FB8:
	adds r0, r4, #0
	bl UpdateItemAnim
_08075FBE:
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08075FD8
_08075FC8:
	ldr r0, _08075FDC @ =gPlayerState
	adds r0, #0x21
	movs r1, #0
	strb r1, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
_08075FD8:
	pop {r4, r5, pc}
	.align 2, 0
_08075FDC: .4byte gPlayerState
