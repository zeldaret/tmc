	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805C934
sub_0805C934: @ 0x0805C934
	push {lr}
	ldr r2, _0805C948 @ =gUnk_08108D28
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805C948: .4byte gUnk_08108D28

	thumb_func_start sub_0805C94C
sub_0805C94C: @ 0x0805C94C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0805C9B0
	adds r6, r4, #0
	adds r6, #0x20
	adds r1, r6, #0
	movs r2, #0
	adds r0, r4, #0
	adds r0, #0x3c
_0805C962:
	str r2, [r0]
	subs r0, #4
	cmp r0, r1
	bge _0805C962
	adds r0, r4, #0
	bl sub_0805CA6C
	adds r5, r0, #0
	cmp r5, #1
	ble _0805C9A8
	bl sub_0805E8D4
	adds r2, r0, #0
	cmp r2, #0
	beq _0805C9A8
	movs r0, #9
	strb r0, [r2, #8]
	movs r0, #0x28
	strb r0, [r2, #9]
	movs r0, #1
	strb r0, [r2, #0xa]
	strb r5, [r2, #0xe]
	adds r1, r2, #0
	adds r1, #0x20
	adds r0, r6, #0
	ldm r0!, {r3, r5, r6}
	stm r1!, {r3, r5, r6}
	ldm r0!, {r3, r5, r6}
	stm r1!, {r3, r5, r6}
	ldm r0!, {r3, r5}
	stm r1!, {r3, r5}
	adds r0, r2, #0
	movs r1, #6
	bl sub_0805EA2C
_0805C9A8:
	adds r0, r4, #0
	bl sub_0805E900
	b _0805C9B8
_0805C9B0:
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xf]
_0805C9B8:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0805C9BC
sub_0805C9BC: @ 0x0805C9BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	bl sub_0805CB48
	ldrb r0, [r6, #0xe]
	subs r0, #1
	mov sb, r0
	ldrb r1, [r6, #0xf]
	adds r0, r1, #1
	strb r0, [r6, #0xf]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805CA22
	movs r2, #0
	cmp r2, sb
	bge _0805CA62
	movs r0, #0x20
	adds r0, r0, r6
	mov r8, r0
_0805C9EC:
	lsls r1, r2, #2
	adds r0, r6, #0
	adds r0, #0x20
	adds r0, r0, r1
	ldr r3, [r0]
	adds r4, r2, #1
	adds r5, r4, #0
	ldrb r1, [r6, #0xe]
	cmp r5, r1
	bge _0805CA1A
	lsls r0, r5, #2
	mov r1, r8
	adds r7, r0, r1
_0805CA06:
	ldm r7!, {r1}
	adds r0, r3, #0
	str r3, [sp]
	bl sub_08004484
	adds r4, #1
	ldr r3, [sp]
	ldrb r0, [r6, #0xe]
	cmp r4, r0
	blt _0805CA06
_0805CA1A:
	adds r2, r5, #0
	cmp r2, sb
	blt _0805C9EC
	b _0805CA62
_0805CA22:
	movs r2, #0
	cmp r2, sb
	bge _0805CA62
	movs r1, #0x20
	adds r1, r1, r6
	mov r8, r1
_0805CA2E:
	lsls r1, r2, #2
	adds r0, r6, #0
	adds r0, #0x20
	adds r0, r0, r1
	ldr r3, [r0]
	adds r4, r2, #1
	adds r5, r4, #0
	ldrb r0, [r6, #0xe]
	cmp r5, r0
	bge _0805CA5C
	lsls r0, r5, #2
	mov r1, r8
	adds r7, r0, r1
_0805CA48:
	ldm r7!, {r0}
	adds r1, r3, #0
	str r3, [sp]
	bl sub_08004484
	adds r4, #1
	ldr r3, [sp]
	ldrb r0, [r6, #0xe]
	cmp r4, r0
	blt _0805CA48
_0805CA5C:
	adds r2, r5, #0
	cmp r2, sb
	blt _0805CA2E
_0805CA62:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0805CA6C
sub_0805CA6C: @ 0x0805CA6C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	ldrb r0, [r6, #0xb]
	bl sub_0804B128
	adds r4, r0, #0
	cmp r4, #0
	bne _0805CACE
	movs r0, #0
	b _0805CAE4
_0805CA82:
	movs r0, #8
	b _0805CAE4
_0805CA86:
	movs r0, #0xf
	ands r0, r2
	cmp r0, #3
	bne _0805CACC
	adds r0, r4, #0
	bl sub_0805CAF0
	adds r2, r0, #0
	cmp r2, #0
	beq _0805CACC
	movs r3, #0
	cmp r3, r5
	bhs _0805CAB8
	ldr r0, [r6, #0x20]
	cmp r0, r2
	beq _0805CAB8
	adds r1, r6, #0
	adds r1, #0x20
_0805CAAA:
	adds r1, #4
	adds r3, #1
	cmp r3, r5
	bhs _0805CAB8
	ldr r0, [r1]
	cmp r0, r2
	bne _0805CAAA
_0805CAB8:
	cmp r3, r5
	bne _0805CACC
	lsls r1, r5, #2
	adds r0, r6, #0
	adds r0, #0x20
	adds r0, r0, r1
	str r2, [r0]
	adds r5, #1
	cmp r5, #8
	beq _0805CA82
_0805CACC:
	adds r4, #0x10
_0805CACE:
	ldrb r2, [r4]
	adds r0, r2, #0
	cmp r0, #0xff
	beq _0805CAE2
	ldr r0, [r4]
	ldr r1, _0805CAE8 @ =0x00FF000F
	ands r0, r1
	ldr r1, _0805CAEC @ =0x00280009
	cmp r0, r1
	bne _0805CA86
_0805CAE2:
	adds r0, r5, #0
_0805CAE4:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0805CAE8: .4byte 0x00FF000F
_0805CAEC: .4byte 0x00280009

	thumb_func_start sub_0805CAF0
sub_0805CAF0: @ 0x0805CAF0
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldrh r1, [r3, #8]
	ldr r2, _0805CB34 @ =gRoomControls
	ldrh r0, [r2, #6]
	adds r5, r1, r0
	ldrh r1, [r3, #0xa]
	ldrh r0, [r2, #8]
	adds r4, r1, r0
	ldr r1, _0805CB38 @ =gUnk_03003D90
	ldr r2, [r1, #4]
	cmp r2, r1
	beq _0805CB42
_0805CB0A:
	movs r6, #0x2e
	ldrsh r0, [r2, r6]
	cmp r5, r0
	bne _0805CB3C
	movs r6, #0x32
	ldrsh r0, [r2, r6]
	cmp r4, r0
	bne _0805CB3C
	ldrb r0, [r3, #2]
	ldrb r6, [r2, #9]
	cmp r0, r6
	bne _0805CB3C
	ldrb r0, [r2, #8]
	cmp r0, #3
	bne _0805CB3C
	ldrb r0, [r3, #3]
	ldrb r6, [r2, #0xa]
	cmp r0, r6
	bne _0805CB3C
	adds r0, r2, #0
	b _0805CB44
	.align 2, 0
_0805CB34: .4byte gRoomControls
_0805CB38: .4byte gUnk_03003D90
_0805CB3C:
	ldr r2, [r2, #4]
	cmp r2, r1
	bne _0805CB0A
_0805CB42:
	movs r0, #0
_0805CB44:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0805CB48
sub_0805CB48: @ 0x0805CB48
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #0
	ldrb r1, [r4, #0xe]
	cmp r5, r1
	bge _0805CB84
	adds r3, r4, #0
	adds r3, #0x20
	adds r6, r3, #0
_0805CB5A:
	ldr r0, [r3]
	ldr r2, [r0, #4]
	cmp r2, #0
	bne _0805CB7A
	subs r0, r1, #1
	cmp r0, r5
	bne _0805CB6C
	str r2, [r3]
	b _0805CB74
_0805CB6C:
	lsls r0, r0, #2
	adds r0, r6, r0
	ldr r0, [r0]
	str r0, [r3]
_0805CB74:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
_0805CB7A:
	adds r3, #4
	adds r5, #1
	ldrb r1, [r4, #0xe]
	cmp r5, r1
	blt _0805CB5A
_0805CB84:
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bhi _0805CB8E
	bl DeleteThisEntity
_0805CB8E:
	pop {r4, r5, r6, pc}
