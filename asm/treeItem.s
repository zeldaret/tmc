	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08049B70
sub_08049B70: @ 0x08049B70
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _08049BB0
	adds r0, #1
	strb r0, [r5, #0xc]
	ldrb r0, [r5, #0xa]
	lsls r0, r0, #4
	ldr r1, _08049BEC @ =gUnk_080D29E0
	adds r0, r0, r1
	bl sub_080028F4
	adds r4, r5, #0
	adds r4, #0x68
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _08049B9C
	bl DeleteThisEntity
_08049B9C:
	ldrb r0, [r4]
	cmp r0, #7
	bhi _08049BB0
	movs r0, #0x67
	bl GetInventoryValue
	cmp r0, #0
	bne _08049BB0
	movs r0, #8
	strb r0, [r4]
_08049BB0:
	adds r0, r5, #0
	bl sub_08049C2C
	cmp r0, #0
	beq _08049C20
	adds r0, r5, #0
	adds r0, #0x68
	ldrb r1, [r0]
	cmp r1, #0
	blt _08049C16
	cmp r1, #7
	ble _08049BF0
	cmp r1, #8
	bne _08049C16
	movs r0, #0x40
	movs r1, #0x60
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08049C16
	movs r0, #0
	strb r0, [r4, #0xe]
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	b _08049C16
	.align 2, 0
_08049BEC: .4byte gUnk_080D29E0
_08049BF0:
	ldr r0, _08049C24 @ =gUnk_080D2AB0
	adds r0, r1, r0
	ldrb r2, [r0]
	movs r0, #0x96
	movs r1, #7
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08049C16
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	ldrh r0, [r4, #0x32]
	adds r0, #0x10
	strh r0, [r4, #0x32]
	ldr r0, _08049C28 @ =0x0000FFE0
	strh r0, [r4, #0x36]
_08049C16:
	adds r0, r5, #0
	bl sub_08049CF4
	bl DeleteThisEntity
_08049C20:
	pop {r4, r5, pc}
	.align 2, 0
_08049C24: .4byte gUnk_080D2AB0
_08049C28: .4byte 0x0000FFE0

	thumb_func_start sub_08049C2C
sub_08049C2C: @ 0x08049C2C
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r3, _08049CA4 @ =gLinkEntity
	ldrb r0, [r3, #0xc]
	cmp r0, #6
	bne _08049CA8
	movs r0, #0x2e
	ldrsh r1, [r3, r0]
	movs r4, #0x2e
	ldrsh r0, [r2, r4]
	subs r1, r1, r0
	movs r5, #6
	movs r4, #0x80
	lsls r4, r4, #8
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	beq _08049C52
	movs r5, #2
_08049C52:
	adds r1, #0x28
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x4f
	bhi _08049CA8
	movs r6, #0x32
	ldrsh r1, [r3, r6]
	movs r6, #0x32
	ldrsh r0, [r2, r6]
	subs r1, r1, r0
	adds r0, r1, #0
	ands r0, r4
	rsbs r0, r0, #0
	asrs r2, r0, #0x1f
	movs r0, #4
	ands r2, r0
	adds r1, #0x28
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x4f
	bhi _08049CA8
	ldrb r0, [r3, #0x14]
	cmp r0, #0
	bne _08049C86
	cmp r2, #0
	beq _08049C9E
_08049C86:
	cmp r0, #4
	bne _08049C8E
	cmp r2, #4
	beq _08049C9E
_08049C8E:
	cmp r0, #6
	bne _08049C96
	cmp r5, #6
	beq _08049C9E
_08049C96:
	cmp r0, #2
	bne _08049CA8
	cmp r5, #2
	bne _08049CA8
_08049C9E:
	movs r0, #1
	b _08049CAA
	.align 2, 0
_08049CA4: .4byte gLinkEntity
_08049CA8:
	movs r0, #0
_08049CAA:
	pop {r4, r5, r6, pc}
