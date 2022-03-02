	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	bl GetInventoryValue
	adds r5, r0, #0
	lsls r1, r6, #3
	ldr r0, _08054010 @ =gItemMetaData
	adds r4, r1, r0
	cmp r5, #0
	bne _08054014
	ldrh r0, [r4, #4]
	mov r8, r0
	b _08054018
	.align 2, 0
_08054010: .4byte gItemMetaData
_08054014:
	ldrh r2, [r4, #6]
	mov r8, r2
_08054018:
	adds r0, r6, #0
	bl ItemIsBottle
	cmp r0, #0
	bne _08054034
	adds r0, r6, #0
	bl PutItemOnSlot
	cmp r5, #0
	bne _08054034
	adds r0, r6, #0
	movs r1, #1
	bl SetInventoryValue
_08054034:
	ldrb r0, [r4, #1]
	cmp r0, #0x12
	bls _0805403C
	b _0805427C
_0805403C:
	lsls r0, r0, #2
	ldr r1, _08054048 @ =_0805404C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08054048: .4byte _0805404C
_0805404C: @ jump table
	.4byte _0805427C @ case 0
	.4byte _08054098 @ case 1
	.4byte _080540A6 @ case 2
	.4byte _080540C0 @ case 3
	.4byte _08054104 @ case 4
	.4byte _0805414C @ case 5
	.4byte _08054154 @ case 6
	.4byte _08054194 @ case 7
	.4byte _080541B6 @ case 8
	.4byte _080541F0 @ case 9
	.4byte _08054212 @ case 10
	.4byte _080541F8 @ case 11
	.4byte _08054238 @ case 12
	.4byte _08054174 @ case 13
	.4byte _08054240 @ case 14
	.4byte _0805425C @ case 15
	.4byte _08054264 @ case 16
	.4byte _080541B0 @ case 17
	.4byte _0805417C @ case 18
_08054098:
	ldrb r0, [r4, #2]
	bl ModHealth
	movs r0, #0x71
	bl SoundReq
	b _0805427C
_080540A6:
	ldr r0, _080540BC @ =gUnk_080FD5A8
	ldrb r1, [r4, #2]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl ModRupees
	movs r0, #0x6f
	bl SoundReq
	b _0805427C
	.align 2, 0
_080540BC: .4byte gUnk_080FD5A8
_080540C0:
	movs r5, #0
	movs r4, #0x1c
	b _080540CA
_080540C6:
	adds r4, r1, #1
	adds r5, #1
_080540CA:
	cmp r5, #3
	bls _080540D0
	b _0805427C
_080540D0:
	adds r0, r4, #0
	bl GetInventoryValue
	adds r1, r4, #0
	cmp r0, #0
	bne _080540C6
	adds r6, r4, #0
	ldr r0, _08054100 @ =gSave
	adds r0, #0xb6
	adds r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _080540EE
	movs r0, #0x20
	strb r0, [r1]
_080540EE:
	adds r0, r6, #0
	movs r1, #1
	bl SetInventoryValue
	adds r0, r6, #0
	bl PutItemOnSlot
	b _0805427C
	.align 2, 0
_08054100: .4byte gSave
_08054104:
	movs r5, #0
	ldr r0, _08054144 @ =gSave
	adds r2, r0, #0
	adds r2, #0xb6
	ldrb r1, [r2]
	adds r3, r0, #0
	cmp r1, #0x20
	beq _08054126
	adds r1, r2, #0
_08054116:
	adds r5, #1
	cmp r5, #3
	bls _0805411E
	b _0805427C
_0805411E:
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0x20
	bne _08054116
_08054126:
	cmp r5, #3
	bls _0805412C
	b _0805427C
_0805412C:
	adds r0, r3, #0
	adds r0, #0xb6
	adds r0, r5, r0
	strb r6, [r0]
	adds r0, r6, #0
	movs r1, #1
	bl SetInventoryValue
	ldr r0, _08054148 @ =0x00000109
	bl SoundReq
	b _0805427C
	.align 2, 0
_08054144: .4byte gSave
_08054148: .4byte 0x00000109
_0805414C:
	movs r0, #1
	bl sub_080526F8
	b _0805424E
_08054154:
	ldr r1, _08054168 @ =gSave
	ldr r0, _0805416C @ =gArea
	ldr r2, _08054170 @ =0x0000046C
	adds r1, r1, r2
	ldrb r0, [r0, #3]
	adds r1, r1, r0
	ldrb r0, [r1]
	ldrb r2, [r4, #2]
	orrs r0, r2
	b _0805427A
	.align 2, 0
_08054168: .4byte gSave
_0805416C: .4byte gArea
_08054170: .4byte 0x0000046C
_08054174:
	movs r0, #0x72
	bl sub_0801E738
	b _0805427C
_0805417C:
	cmp r6, #0xb
	bne _0805418A
	movs r0, #0xc
	movs r1, #0
	bl SetInventoryValue
	b _080541B0
_0805418A:
	movs r0, #0xb
	movs r1, #0
	bl SetInventoryValue
	b _080541B0
_08054194:
	cmp r6, #7
	bne _080541A2
	movs r0, #8
	movs r1, #0
	bl SetInventoryValue
	b _080541AA
_080541A2:
	movs r0, #7
	movs r1, #0
	bl SetInventoryValue
_080541AA:
	movs r0, #0x63
	bl ModBombs
_080541B0:
	bl LoadItemGfx
	b _0805427C
_080541B6:
	cmp r5, #0
	bne _080541CA
	movs r0, #7
	movs r1, #1
	bl SetInventoryValue
	movs r0, #7
	bl PutItemOnSlot
	b _080541E2
_080541CA:
	ldr r0, _080541EC @ =gSave
	adds r1, r0, #0
	adds r1, #0xae
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _080541E2
	movs r0, #3
	strb r0, [r1]
_080541E2:
	movs r0, #0x63
	bl ModBombs
	b _0805427C
	.align 2, 0
_080541EC: .4byte gSave
_080541F0:
	ldrb r0, [r4, #2]
	bl ModBombs
	b _0805424E
_080541F8:
	movs r0, #0x66
	bl GetInventoryValue
	cmp r0, #0
	bne _0805420A
	movs r0, #0x66
	movs r1, #1
	bl SetInventoryValue
_0805420A:
	movs r0, #0x63
	bl ModArrows
	b _080541B0
_08054212:
	ldr r0, _08054234 @ =gSave
	adds r1, r0, #0
	adds r1, #0xaf
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0805422A
	movs r0, #3
	strb r0, [r1]
_0805422A:
	movs r0, #0x63
	bl ModArrows
	b _0805427C
	.align 2, 0
_08054234: .4byte gSave
_08054238:
	ldrb r0, [r4, #2]
	bl ModArrows
	b _0805424E
_08054240:
	movs r0, #0x3f
	movs r1, #1
	bl SetInventoryValue
	adds r0, r7, #0
	bl ModShells
_0805424E:
	ldr r0, _08054258 @ =0x00000103
	bl SoundReq
	b _0805427C
	.align 2, 0
_08054258: .4byte 0x00000103
_0805425C:
	adds r0, r7, #0
	bl sub_0801E738
	b _0805427C
_08054264:
	ldr r0, _08054284 @ =gSave
	adds r1, r0, #0
	adds r1, #0xa8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0805427C
	movs r0, #3
_0805427A:
	strb r0, [r1]
_0805427C:
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08054284: .4byte gSave
	.syntax divided
