	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start LoadRoomEntity
LoadRoomEntity: @ 0x0804ADF8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4]
	movs r6, #0xf
	ands r6, r0
	ldrb r1, [r4, #1]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0x50
	bne _0804AE1C
	ldrb r1, [r4, #2]
	adds r0, r6, #0
	bl FindEntityBySubtype
	cmp r0, #0
	beq _0804AE1C
	movs r0, #0
	b _0804AEAC
_0804AE1C:
	adds r0, r6, #0
	bl GetEmptyEntityByType
	adds r5, r0, #0
	cmp r5, #0
	beq _0804AEAA
	strb r6, [r5, #8]
	ldrb r0, [r4, #2]
	strb r0, [r5, #9]
	ldrb r0, [r4, #3]
	strb r0, [r5, #0xa]
	adds r0, r5, #0
	adds r1, r4, #0
	bl RegisterRoomEntity
	ldrb r1, [r4, #1]
	movs r7, #0xf0
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0x10
	beq _0804AEAA
	ldrb r0, [r4, #4]
	strb r0, [r5, #0xb]
	ldr r0, [r4, #4]
	movs r1, #0xff
	lsls r1, r1, #8
	ands r0, r1
	lsrs r0, r0, #8
	strb r0, [r5, #0xe]
	cmp r6, #9
	beq _0804AEAA
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0804AF0C
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0804AEAA
	ldrb r0, [r4]
	adds r2, r7, #0
	ands r2, r0
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	bne _0804AE94
	movs r0, #0x20
	ands r2, r0
	cmp r2, #0
	beq _0804AE88
	adds r1, r5, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	b _0804AEAA
_0804AE88:
	ldr r0, _0804AEA0 @ =gRoomControls
	ldrb r1, [r0, #0xf]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804AEA4
_0804AE94:
	adds r1, r5, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	b _0804AEAA
	.align 2, 0
_0804AEA0: .4byte gRoomControls
_0804AEA4:
	adds r0, r5, #0
	bl sub_08016A30
_0804AEAA:
	adds r0, r5, #0
_0804AEAC:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
