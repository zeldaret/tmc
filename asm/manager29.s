	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805CB90
sub_0805CB90: @ 0x0805CB90
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805CBB8
	adds r0, r4, #0
	bl sub_0805CBD0
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805CBCE
	adds r0, r4, #0
	bl sub_0805CC3C
	adds r0, r4, #0
	bl DeleteManager
	b _0805CBCE
_0805CBB8:
	adds r0, r4, #0
	bl sub_0805CF80
	cmp r0, #0
	beq _0805CBCE
	ldrh r0, [r4, #0x3e]
	bl SetFlag
	adds r0, r4, #0
	bl DeleteManager
_0805CBCE:
	pop {r4, pc}

	thumb_func_start sub_0805CBD0
sub_0805CBD0: @ 0x0805CBD0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrh r1, [r5, #0x38]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	movs r3, #0x3f
	ands r1, r3
	ldrh r0, [r5, #0x3a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	strh r1, [r5, #0x38]
	ldrh r2, [r5, #0x3c]
	lsrs r2, r2, #4
	ands r2, r3
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r1, [r0]
	adds r0, #1
	ldrb r0, [r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r2, r1
	strh r2, [r5, #0x3a]
	movs r1, #0x38
	ldrsh r0, [r5, r1]
	adds r4, r5, #0
	adds r4, #0x34
	ldrb r1, [r4]
	bl GetTileType
	strh r0, [r5, #0x3c]
	ldrb r0, [r4]
	bl GetLayerByIndex
	ldr r2, _0805CC38 @ =0x00005004
	adds r1, r0, r2
	str r1, [r5, #0x28]
	movs r2, #0x3a
	ldrsh r1, [r5, r2]
	lsls r1, r1, #1
	adds r1, #4
	adds r0, r0, r1
	str r0, [r5, #0x2c]
	pop {r4, r5, pc}
	.align 2, 0
_0805CC38: .4byte 0x00005004

	thumb_func_start sub_0805CC3C
sub_0805CC3C: @ 0x0805CC3C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r0, #0x38
	ldrsh r5, [r4, r0]
	movs r0, #0x3a
	ldrsh r1, [r4, r0]
	mov r8, r1
	adds r7, r4, #0
	adds r7, #0x34
	ldrb r0, [r7]
	ldr r6, _0805CC6C @ =0x00000322
	cmp r0, #1
	bne _0805CC5C
	subs r6, #1
_0805CC5C:
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0805CCF4
	cmp r0, #2
	bgt _0805CC70
	cmp r0, #1
	beq _0805CC94
	b _0805CC76
	.align 2, 0
_0805CC6C: .4byte 0x00000322
_0805CC70:
	cmp r0, #3
	bne _0805CC76
	b _0805CDE4
_0805CC76:
	adds r4, #0x34
	ldrb r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0807B7D8
	ldr r0, _0805CC90 @ =0x00000365
	ldrb r2, [r4]
	mov r1, r8
	bl sub_0807B7D8
	b _0805CF68
	.align 2, 0
_0805CC90: .4byte 0x00000365
_0805CC94:
	ldrb r2, [r7]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0807B7D8
	adds r1, r5, #1
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x40
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x41
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	ldrh r0, [r4, #0x3c]
	ldrb r2, [r7]
	mov r1, r8
	bl sub_0807B7D8
	ldr r0, _0805CCEC @ =0x0000036F
	mov r1, r8
	adds r1, #1
	ldrb r2, [r7]
	bl sub_0807B7D8
	movs r0, #0xdc
	lsls r0, r0, #2
	mov r1, r8
	adds r1, #0x40
	ldrb r2, [r7]
	bl sub_0807B7D8
	ldr r0, _0805CCF0 @ =0x00000371
	mov r1, r8
	adds r1, #0x41
	b _0805CDC2
	.align 2, 0
_0805CCEC: .4byte 0x0000036F
_0805CCF0: .4byte 0x00000371
_0805CCF4:
	ldrb r2, [r7]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0807B7D8
	adds r1, r5, #1
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #2
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x40
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x41
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x42
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x80
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x81
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x82
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	ldrh r0, [r4, #0x3c]
	ldrb r2, [r7]
	mov r1, r8
	bl sub_0807B7D8
	ldr r0, _0805CDCC @ =0x00000372
	mov r1, r8
	adds r1, #1
	ldrb r2, [r7]
	bl sub_0807B7D8
	ldr r0, _0805CDD0 @ =0x0000036F
	mov r1, r8
	adds r1, #2
	ldrb r2, [r7]
	bl sub_0807B7D8
	movs r0, #0xdd
	lsls r0, r0, #2
	mov r1, r8
	adds r1, #0x40
	ldrb r2, [r7]
	bl sub_0807B7D8
	ldr r0, _0805CDD4 @ =0x00000376
	mov r1, r8
	adds r1, #0x41
	ldrb r2, [r7]
	bl sub_0807B7D8
	ldr r0, _0805CDD8 @ =0x00000375
	mov r1, r8
	adds r1, #0x42
	ldrb r2, [r7]
	bl sub_0807B7D8
	movs r0, #0xdc
	lsls r0, r0, #2
	mov r1, r8
	adds r1, #0x80
	ldrb r2, [r7]
	bl sub_0807B7D8
	ldr r0, _0805CDDC @ =0x00000373
	mov r1, r8
	adds r1, #0x81
	ldrb r2, [r7]
	bl sub_0807B7D8
	ldr r0, _0805CDE0 @ =0x00000371
	mov r1, r8
	adds r1, #0x82
_0805CDC2:
	ldrb r2, [r7]
	bl sub_0807B7D8
	b _0805CF68
	.align 2, 0
_0805CDCC: .4byte 0x00000372
_0805CDD0: .4byte 0x0000036F
_0805CDD4: .4byte 0x00000376
_0805CDD8: .4byte 0x00000375
_0805CDDC: .4byte 0x00000373
_0805CDE0: .4byte 0x00000371
_0805CDE4:
	ldrb r2, [r7]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0807B7D8
	adds r1, r5, #1
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #2
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #3
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x40
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x41
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x42
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x43
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x80
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x81
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x82
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x83
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0xc0
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0xc1
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0xc2
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0xc3
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	ldrh r0, [r4, #0x3c]
	ldrb r2, [r7]
	mov r1, r8
	bl sub_0807B7D8
	ldr r4, _0805CF70 @ =0x00000372
	mov r1, r8
	adds r1, #1
	ldrb r2, [r7]
	adds r0, r4, #0
	bl sub_0807B7D8
	mov r1, r8
	adds r1, #2
	ldrb r2, [r7]
	adds r0, r4, #0
	bl sub_0807B7D8
	ldr r0, _0805CF74 @ =0x0000036F
	mov r1, r8
	adds r1, #3
	ldrb r2, [r7]
	bl sub_0807B7D8
	movs r6, #0xdd
	lsls r6, r6, #2
	mov r1, r8
	adds r1, #0x40
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r4, #4
	mov r1, r8
	adds r1, #0x41
	ldrb r2, [r7]
	adds r0, r4, #0
	bl sub_0807B7D8
	mov r1, r8
	adds r1, #0x42
	ldrb r2, [r7]
	adds r0, r4, #0
	bl sub_0807B7D8
	ldr r5, _0805CF78 @ =0x00000375
	mov r1, r8
	adds r1, #0x43
	ldrb r2, [r7]
	adds r0, r5, #0
	bl sub_0807B7D8
	mov r1, r8
	adds r1, #0x80
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	mov r1, r8
	adds r1, #0x81
	ldrb r2, [r7]
	adds r0, r4, #0
	bl sub_0807B7D8
	mov r1, r8
	adds r1, #0x82
	ldrb r2, [r7]
	adds r0, r4, #0
	bl sub_0807B7D8
	mov r1, r8
	adds r1, #0x83
	ldrb r2, [r7]
	adds r0, r5, #0
	bl sub_0807B7D8
	movs r0, #0xdc
	lsls r0, r0, #2
	mov r1, r8
	adds r1, #0xc0
	ldrb r2, [r7]
	bl sub_0807B7D8
	subs r4, #3
	mov r1, r8
	adds r1, #0xc1
	ldrb r2, [r7]
	adds r0, r4, #0
	bl sub_0807B7D8
	mov r1, r8
	adds r1, #0xc2
	ldrb r2, [r7]
	adds r0, r4, #0
	bl sub_0807B7D8
	ldr r0, _0805CF7C @ =0x00000371
	mov r1, r8
	adds r1, #0xc3
	ldrb r2, [r7]
	bl sub_0807B7D8
_0805CF68:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805CF70: .4byte 0x00000372
_0805CF74: .4byte 0x0000036F
_0805CF78: .4byte 0x00000375
_0805CF7C: .4byte 0x00000371

	thumb_func_start sub_0805CF80
sub_0805CF80: @ 0x0805CF80
	push {lr}
	ldr r1, [r0, #0x2c]
	ldrh r1, [r1]
	ldr r0, [r0, #0x28]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r1, [r1]
	movs r2, #0
	ldr r0, _0805CFBC @ =0x00000365
	cmp r1, r0
	beq _0805CFB4
	adds r0, #4
	cmp r1, r0
	beq _0805CFB4
	adds r0, #1
	cmp r1, r0
	beq _0805CFB4
	adds r0, #1
	cmp r1, r0
	beq _0805CFB4
	adds r0, #2
	cmp r1, r0
	beq _0805CFB4
	subs r0, #1
	cmp r1, r0
	bne _0805CFB6
_0805CFB4:
	movs r2, #1
_0805CFB6:
	adds r0, r2, #0
	pop {pc}
	.align 2, 0
_0805CFBC: .4byte 0x00000365
