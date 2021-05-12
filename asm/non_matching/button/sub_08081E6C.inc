
sub_08081E6C: @ 0x08081E6C
	push {r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x74
	ldrh r6, [r0]
	sub r0, #0x3c
	ldrb r5, [r0]
	add r0, r6, #0
	add r1, r5, #0
	bl GetTileType
	add r7, r0, #0
	ldr r0, _08081EEC @ =0x00003FFF
	cmp r7, r0
	bls _08081EE8
	add r0, r5, #0
	bl GetLayerByIndex
	add r1, r0, #0
	ldrb r0, [r4, #0xa]
	mov r4, #0x78
	cmp r0, #0
	bne _08081E9A
	mov r4, #0x7a
_08081E9A:
	ldr r0, _08081EF0 @ =0x00007004
	add r3, r1, r0
	lsl r0, r4, #1
	ldr r2, _08081EF4 @ =0x00006004
	add r1, r1, r2
	add r1, r1, r0
	ldrh r0, [r1]
	lsl r0, r0, #3
	add r3, r3, r0
	ldr r2, _08081EF8 @ =gUnk_02019EE0
	cmp r5, #2
	bne _08081EB4
	ldr r2, _08081EFC @ =gMapDataTopSpecial
_08081EB4:
	mov r0, #0x3f
	and r0, r6
	lsl r0, r0, #1
	mov r1, #0xfc
	lsl r1, r1, #4
	and r1, r6
	lsl r1, r1, #2
	add r0, r0, r1
	lsl r0, r0, #1
	add r2, r2, r0
	add r0, r2, #0
	add r1, r3, #0
	bl sub_08081F00
	cmp r0, #0
	bne _08081EE8
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl SetTileType
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl SetTile
_08081EE8:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08081EEC: .4byte 0x00003FFF
_08081EF0: .4byte 0x00007004
_08081EF4: .4byte 0x00006004
_08081EF8: .4byte gUnk_02019EE0
_08081EFC: .4byte gMapDataTopSpecial
