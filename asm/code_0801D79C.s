	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0801D898
sub_0801D898: @ 0x0801D898
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r3
	movs r1, #0x20
	mov ip, r1
	cmp r0, #0
	beq _0801D8B2
	movs r0, #0x40
	mov ip, r0
_0801D8B2:
	ldr r0, _0801D8D8 @ =0x00007FFF
	ands r3, r0
	ldr r1, _0801D8DC @ =0x040000D4
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r2, r6
	lsls r7, r6, #1
	mov r0, ip
	lsls r6, r0, #1
_0801D8C4:
	str r4, [r1]
	str r5, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	adds r4, r4, r7
	adds r5, r5, r6
	subs r3, #1
	cmp r3, #0
	bne _0801D8C4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801D8D8: .4byte 0x00007FFF
_0801D8DC: .4byte 0x040000D4

	thumb_func_start zMalloc
zMalloc: @ 0x0801D8E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	movs r0, #3
	add ip, r0
	subs r0, #7
	mov r1, ip
	ands r1, r0
	mov ip, r1
	ldr r6, _0801D90C @ =gzHeap
	mov sb, r6
	ldrh r7, [r6]
	movs r5, #1
	movs r3, #0x80
	lsls r3, r3, #5
	add r3, sb
	subs r4, r3, r1
	movs r2, #0
	b _0801D926
	.align 2, 0
_0801D90C: .4byte gzHeap
_0801D910:
	cmp r1, r4
	bhi _0801D918
	cmp r3, r0
	bls _0801D952
_0801D918:
	cmp r4, r1
	bhi _0801D920
	cmp r0, r3
	bls _0801D952
_0801D920:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0801D926:
	cmp r2, r7
	bhs _0801D94A
	lsls r0, r2, #2
	add r0, sb
	ldrh r1, [r0, #2]
	ldr r6, _0801D95C @ =gzHeap
	adds r1, r1, r6
	ldrh r0, [r0, #4]
	adds r0, r0, r6
	cmp r1, r4
	bhi _0801D940
	cmp r4, r0
	bls _0801D952
_0801D940:
	cmp r1, r3
	bhi _0801D910
	cmp r3, r0
	bhi _0801D910
	movs r5, #0
_0801D94A:
	lsls r0, r7, #2
	mov sl, r0
	cmp r5, #0
	bne _0801D9D8
_0801D952:
	movs r1, #0
	mov r8, r1
	lsls r6, r7, #2
	mov sl, r6
	b _0801D970
	.align 2, 0
_0801D95C: .4byte gzHeap
_0801D960:
	movs r5, #0
_0801D962:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r8, r7
	bhs _0801D9D4
_0801D970:
	mov r1, r8
	lsls r0, r1, #2
	add r0, sb
	ldrh r0, [r0, #2]
	ldr r6, _0801D994 @ =gzHeap
	adds r3, r0, r6
	mov r0, ip
	subs r4, r3, r0
	movs r5, #0
	mov r0, sl
	adds r0, #2
	add r0, sb
	adds r0, #4
	cmp r4, r0
	blo _0801D962
	movs r5, #1
	movs r2, #0
	b _0801D9AE
	.align 2, 0
_0801D994: .4byte gzHeap
_0801D998:
	cmp r1, r4
	bhi _0801D9A0
	cmp r3, r0
	bls _0801D960
_0801D9A0:
	cmp r4, r1
	bhi _0801D9A8
	cmp r0, r3
	bls _0801D960
_0801D9A8:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0801D9AE:
	cmp r2, r7
	bhs _0801D9D0
	lsls r0, r2, #2
	add r0, sb
	ldrh r1, [r0, #2]
	adds r1, r1, r6
	ldrh r0, [r0, #4]
	adds r0, r0, r6
	cmp r1, r4
	bhi _0801D9C6
	cmp r4, r0
	blo _0801D960
_0801D9C6:
	cmp r1, r3
	bhs _0801D998
	cmp r3, r0
	bhi _0801D998
	movs r5, #0
_0801D9D0:
	cmp r5, #0
	beq _0801D962
_0801D9D4:
	cmp r5, #0
	beq _0801DA00
_0801D9D8:
	ldr r0, _0801D9FC @ =gUnk_02035542
	mov r1, sl
	adds r2, r1, r0
	subs r3, r0, #2
	subs r1, r4, r3
	strh r1, [r2]
	adds r0, #2
	add r0, sl
	add r1, ip
	strh r1, [r0]
	adds r0, r7, #1
	strh r0, [r3]
	adds r0, r4, #0
	mov r1, ip
	bl MemClear
	adds r0, r4, #0
	b _0801DA02
	.align 2, 0
_0801D9FC: .4byte gUnk_02035542
_0801DA00:
	movs r0, #0
_0801DA02:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start zFree
zFree: @ 0x0801DA0C
	push {r4, r5, lr}
	ldr r3, _0801DA44 @ =gzHeap
	subs r1, r0, r3
	ldr r0, _0801DA48 @ =0x00000FFF
	cmp r1, r0
	bhi _0801DA74
	adds r4, r3, #0
	ldrh r5, [r4]
	adds r4, #2
	movs r2, #0
	cmp r2, r5
	bhs _0801DA74
	ldrh r0, [r4]
	cmp r0, r1
	bne _0801DA4C
	lsls r0, r5, #2
	subs r1, r3, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r4]
	strh r2, [r0]
	adds r0, #2
	ldrh r1, [r0]
	strh r1, [r4, #2]
	strh r2, [r0]
	subs r0, r5, #1
	strh r0, [r3]
	b _0801DA74
	.align 2, 0
_0801DA44: .4byte gzHeap
_0801DA48: .4byte 0x00000FFF
_0801DA4C:
	adds r4, #4
	adds r2, #1
	cmp r2, r5
	bhs _0801DA74
	ldrh r0, [r4]
	cmp r0, r1
	bne _0801DA4C
	lsls r1, r5, #2
	ldr r3, _0801DA78 @ =gUnk_0203553E
	adds r1, r1, r3
	ldrh r0, [r1]
	strh r0, [r4]
	movs r2, #0
	strh r2, [r1]
	adds r1, #2
	ldrh r0, [r1]
	strh r0, [r4, #2]
	strh r2, [r1]
	subs r0, r5, #1
	strh r0, [r3, #2]
_0801DA74:
	pop {r4, r5, pc}
	.align 2, 0
_0801DA78: .4byte gUnk_0203553E

	thumb_func_start zMallocInit
zMallocInit: @ 0x0801DA7C
	push {lr}
	ldr r0, _0801DA8C @ =gzHeap
	movs r1, #0x80
	lsls r1, r1, #5
	bl MemClear
	pop {pc}
	.align 2, 0
_0801DA8C: .4byte gzHeap

	thumb_func_start DispReset
DispReset: @ 0x0801DA90
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _0801DAEC @ =gMain
	ldrb r0, [r1]
	movs r3, #0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0801DAF0 @ =gUnk_03003DE0
	strb r3, [r0]
	ldr r0, _0801DAF4 @ =gFadeControl
	strb r3, [r0]
	ldr r5, _0801DAF8 @ =gScreen
	adds r0, r5, #0
	adds r0, #0x6d
	strb r3, [r0]
	subs r0, #1
	strb r3, [r0]
	ldr r1, _0801DAFC @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r0, _0801DB00 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _0801DB04 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	movs r0, #0x80
	lsls r0, r0, #0x13
	strh r3, [r0]
	bl ClearOAM
	bl sub_0801DB34
	ldr r0, _0801DB08 @ =0x0600C000
	movs r1, #0x20
	bl MemClear
	ldr r0, _0801DB0C @ =gBG0Buffer
	movs r1, #0x80
	lsls r1, r1, #4
	bl MemClear
	strh r4, [r5, #0xe]
	pop {r4, r5, pc}
	.align 2, 0
_0801DAEC: .4byte gMain
_0801DAF0: .4byte gUnk_03003DE0
_0801DAF4: .4byte gFadeControl
_0801DAF8: .4byte gScreen
_0801DAFC: .4byte 0x040000B0
_0801DB00: .4byte 0x0000C5FF
_0801DB04: .4byte 0x00007FFF
_0801DB08: .4byte 0x0600C000
_0801DB0C: .4byte gBG0Buffer

	thumb_func_start ClearOAM
ClearOAM: @ 0x0801DB10
	push {r4, lr}
	ldr r3, _0801DB30 @ =gUnk_03000020
	movs r1, #0xe0
	lsls r1, r1, #0x13
	movs r0, #0x80
	movs r4, #0xa8
	lsls r4, r4, #2
	adds r2, r4, #0
_0801DB20:
	strh r2, [r3]
	adds r3, #8
	strh r2, [r1]
	adds r1, #8
	subs r0, #1
	cmp r0, #0
	bne _0801DB20
	pop {r4, pc}
	.align 2, 0
_0801DB30: .4byte gUnk_03000020

	thumb_func_start sub_0801DB34
sub_0801DB34: @ 0x0801DB34
	push {r4, lr}
	ldr r4, _0801DB6C @ =gScreen
	adds r0, r4, #0
	movs r1, #0x7c
	bl MemClear
	ldr r0, _0801DB70 @ =gBG0Buffer
	str r0, [r4, #0x10]
	ldr r0, _0801DB74 @ =0x00001F0C
	strh r0, [r4, #8]
	ldr r0, _0801DB78 @ =gBG1Buffer
	str r0, [r4, #0x1c]
	ldr r0, _0801DB7C @ =0x00001C01
	strh r0, [r4, #0x14]
	ldr r0, _0801DB80 @ =gBG2Buffer
	str r0, [r4, #0x28]
	ldr r0, _0801DB84 @ =0x00001D02
	strh r0, [r4, #0x20]
	ldr r0, _0801DB88 @ =gBG3Buffer
	str r0, [r4, #0x34]
	ldr r0, _0801DB8C @ =0x00001E03
	strh r0, [r4, #0x2c]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4]
	ldr r0, _0801DB90 @ =0x0000FFFF
	strh r0, [r4, #6]
	pop {r4, pc}
	.align 2, 0
_0801DB6C: .4byte gScreen
_0801DB70: .4byte gBG0Buffer
_0801DB74: .4byte 0x00001F0C
_0801DB78: .4byte gBG1Buffer
_0801DB7C: .4byte 0x00001C01
_0801DB80: .4byte gBG2Buffer
_0801DB84: .4byte 0x00001D02
_0801DB88: .4byte gBG3Buffer
_0801DB8C: .4byte 0x00001E03
_0801DB90: .4byte 0x0000FFFF

	thumb_func_start sub_0801DB94
sub_0801DB94: @ 0x0801DB94
	ldr r0, _0801DB9C @ =gScreenTransition
	ldrh r0, [r0, #0x1e]
	lsrs r0, r0, #0xb
	bx lr
	.align 2, 0
_0801DB9C: .4byte gScreenTransition

	thumb_func_start sub_0801DBA0
sub_0801DBA0: @ 0x0801DBA0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r1, r2, #0
	adds r0, r5, #0
	bl MemClear
	movs r0, #1
	strb r0, [r5]
	ldr r2, _0801DBE4 @ =gScreenTransition
	ldrh r0, [r2, #0x1c]
	lsrs r0, r0, #4
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r5, #1]
	ldrh r0, [r2, #0x1e]
	lsrs r0, r0, #4
	ands r0, r1
	strb r0, [r5, #2]
	adds r5, #3
	ldr r1, _0801DBE8 @ =gUnk_080C9C50
	ldr r0, _0801DBEC @ =gArea
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r6, [r4]
	b _0801DD3A
	.align 2, 0
_0801DBE4: .4byte gScreenTransition
_0801DBE8: .4byte gUnk_080C9C50
_0801DBEC: .4byte gArea
_0801DBF0:
	ldrb r0, [r6]
	ldrb r1, [r6, #1]
	movs r2, #3
	bl GetRoomProperty
	adds r4, r0, #0
	cmp r4, #0
	bne _0801DC04
	adds r6, #8
	b _0801DD3A
_0801DC04:
	adds r0, r6, #0
	bl sub_0801DF10
	mov r8, r0
	bl sub_0805279C
	movs r1, #8
	adds r1, r1, r6
	mov sb, r1
	cmp r0, #0
	beq _0801DCAE
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801DCAE
	movs r3, #0xfc
	lsls r3, r3, #2
	ldr r7, _0801DC84 @ =0x000007FF
_0801DC26:
	ldrb r0, [r4]
	cmp r0, #3
	bgt _0801DCA6
	cmp r0, #2
	blt _0801DCA6
	ldrb r1, [r4, #1]
	mov r0, r8
	str r3, [sp]
	bl CheckLocalFlagByOffset
	ldr r3, [sp]
	cmp r0, #0
	bne _0801DCA6
	ldr r0, _0801DC88 @ =gAreaRoomHeaders
	ldrb r2, [r6]
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r1, [r6, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, [r2]
	adds r2, r1, r0
	movs r0, #2
	strb r0, [r5]
	ldrb r0, [r4]
	cmp r0, #2
	bne _0801DC8C
	ldrh r0, [r4, #4]
	lsls r0, r0, #4
	ands r0, r3
	movs r1, #8
	orrs r0, r1
	ldrh r1, [r2]
	ands r1, r7
	adds r0, r0, r1
	asrs r0, r0, #4
	strb r0, [r5, #1]
	ldrh r0, [r4, #4]
	lsrs r0, r0, #2
	ands r0, r3
	movs r1, #8
	orrs r0, r1
	ldrh r1, [r2, #2]
	ands r1, r7
	b _0801DC9E
	.align 2, 0
_0801DC84: .4byte 0x000007FF
_0801DC88: .4byte gAreaRoomHeaders
_0801DC8C:
	ldrh r0, [r2]
	ands r0, r7
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	asrs r0, r0, #4
	strb r0, [r5, #1]
	ldrh r0, [r2, #2]
	ands r0, r7
	ldrh r1, [r4, #6]
_0801DC9E:
	adds r0, r0, r1
	asrs r0, r0, #4
	strb r0, [r5, #2]
	adds r5, #3
_0801DCA6:
	adds r4, #8
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801DC26
_0801DCAE:
	bl sub_0805279C
	cmp r0, #0
	beq _0801DD16
	ldrb r1, [r6, #2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801DD16
	ldr r0, _0801DD4C @ =gArea
	ldrb r0, [r0, #3]
	adds r0, #1
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0801DD16
	ldr r0, _0801DD50 @ =gAreaRoomHeaders
	ldrb r2, [r6]
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r1, [r6, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, [r2]
	adds r2, r1, r0
	movs r0, #4
	strb r0, [r5]
	ldrh r0, [r2, #4]
	lsrs r0, r0, #1
	ldrh r1, [r2]
	adds r0, r0, r1
	asrs r1, r0, #4
	adds r0, r1, #0
	cmp r1, #0
	bge _0801DCF8
	adds r0, #0x7f
_0801DCF8:
	asrs r0, r0, #7
	lsls r0, r0, #7
	subs r0, r1, r0
	strb r0, [r5, #1]
	ldrh r0, [r2, #6]
	lsrs r0, r0, #1
	ldrh r2, [r2, #2]
	adds r0, r0, r2
	asrs r1, r0, #4
	adds r0, r1, #0
	asrs r0, r0, #7
	lsls r0, r0, #7
	subs r0, r1, r0
	strb r0, [r5, #2]
	adds r5, #3
_0801DD16:
	ldr r2, _0801DD54 @ =gScreenTransition
	ldrh r0, [r6]
	ldrh r1, [r2, #0x16]
	cmp r0, r1
	bne _0801DD38
	movs r0, #3
	strb r0, [r5]
	ldrh r0, [r2, #0x18]
	lsrs r0, r0, #4
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r5, #1]
	ldrh r0, [r2, #0x1a]
	lsrs r0, r0, #4
	ands r0, r1
	strb r0, [r5, #2]
	adds r5, #3
_0801DD38:
	mov r6, sb
_0801DD3A:
	ldrb r0, [r6]
	cmp r0, #0
	beq _0801DD42
	b _0801DBF0
_0801DD42:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801DD4C: .4byte gArea
_0801DD50: .4byte gAreaRoomHeaders
_0801DD54: .4byte gScreenTransition

	thumb_func_start sub_0801DD58
sub_0801DD58: @ 0x0801DD58
	ldr r2, _0801DD7C @ =gAreaRoomHeaders
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r2, r1, #2
	adds r2, r2, r1
	lsls r2, r2, #1
	ldr r3, [r0]
	adds r3, r3, r2
	ldr r0, _0801DD80 @ =gArea
	ldr r1, _0801DD84 @ =0x0000085C
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r3]
	strh r1, [r2, #4]
	ldr r1, [r0]
	ldrh r0, [r3, #2]
	strh r0, [r1, #6]
	bx lr
	.align 2, 0
_0801DD7C: .4byte gAreaRoomHeaders
_0801DD80: .4byte gArea
_0801DD84: .4byte 0x0000085C

	thumb_func_start LoadDungeonMap
LoadDungeonMap: @ 0x0801DD88
	push {lr}
	ldr r0, _0801DD98 @ =gUnk_0201AEE0
	ldr r1, _0801DD9C @ =0x06006000
	movs r2, #0x80
	lsls r2, r2, #6
	bl LoadResourceAsync
	pop {pc}
	.align 2, 0
_0801DD98: .4byte gUnk_0201AEE0
_0801DD9C: .4byte 0x06006000

	thumb_func_start sub_0801DDA0
sub_0801DDA0: @ 0x0801DDA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r4, r0, #0
	bl sub_08052690
	cmp r0, #0
	bne _0801DDB8
	b _0801DEEA
_0801DDB8:
	ldr r1, _0801DDD8 @ =gUnk_080C9C50
	ldr r0, _0801DDDC @ =gArea
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r0, _0801DDE0 @ =gUnk_02019EE0
	movs r1, #0x80
	lsls r1, r1, #8
	bl MemClear
	b _0801DEE2
	.align 2, 0
_0801DDD8: .4byte gUnk_080C9C50
_0801DDDC: .4byte gArea
_0801DDE0: .4byte gUnk_02019EE0
_0801DDE4:
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	movs r2, #3
	bl GetRoomProperty
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_0801DF10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp, #0xc]
	ldrh r2, [r4]
	ldr r0, _0801DE14 @ =gUnk_02032EC0
	ldrh r3, [r0, #0x20]
	ldr r1, _0801DE18 @ =0x0000FFFF
	ands r1, r2
	ldr r0, _0801DE18 @ =0x0000FFFF
	ands r0, r3
	cmp r1, r0
	bne _0801DE1C
	movs r3, #8
	b _0801DE36
	.align 2, 0
_0801DE14: .4byte gUnk_02032EC0
_0801DE18: .4byte 0x0000FFFF
_0801DE1C:
	bl sub_080527CC
	cmp r0, #0
	beq _0801DE28
	movs r0, #2
	str r0, [sp, #0xc]
_0801DE28:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0801DF90
	cmp r0, #0
	beq _0801DE38
	movs r3, #3
_0801DE36:
	str r3, [sp, #0xc]
_0801DE38:
	ldrb r1, [r4, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801DE46
	movs r0, #0
	str r0, [sp, #0xc]
_0801DE46:
	adds r3, r4, #0
	adds r3, #8
	str r3, [sp, #0x10]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0801DEE0
	ldr r2, _0801DEF8 @ =0x040000D4
	ldr r0, [r4, #4]
	ldr r1, _0801DEFC @ =gUnk_08324AE4
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _0801DF00 @ =gUnk_02019EE0
	str r0, [r2, #4]
	ldr r0, _0801DF04 @ =0x84000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0801DF08 @ =gAreaRoomHeaders
	ldrb r2, [r4]
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r1, [r4, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r2, [r2]
	adds r2, r2, r0
	ldrh r0, [r2]
	lsrs r0, r0, #4
	str r0, [sp]
	ldrh r0, [r2, #2]
	ldr r1, _0801DF0C @ =0x000007FF
	ands r0, r1
	lsrs r0, r0, #4
	str r0, [sp, #4]
	ldrh r0, [r2, #4]
	lsrs r7, r0, #4
	ldrh r0, [r2, #6]
	lsrs r0, r0, #4
	mov sl, r0
	adds r0, r7, #3
	lsrs r0, r0, #2
	str r0, [sp, #8]
	movs r6, #0
	cmp r6, sl
	bhs _0801DEE0
_0801DEA0:
	ldr r3, [sp, #8]
	adds r1, r6, #0
	muls r1, r3, r1
	ldr r0, _0801DF00 @ =gUnk_02019EE0
	adds r1, r1, r0
	mov r8, r1
	movs r5, #0
	adds r0, r6, #1
	mov sb, r0
	cmp r5, r7
	bhs _0801DEDA
_0801DEB6:
	ldr r3, [sp]
	adds r4, r3, r5
	adds r0, r5, #0
	mov r1, r8
	bl sub_0801DF60
	ldr r1, [sp, #0xc]
	bl sub_0801DF78
	adds r2, r0, #0
	adds r0, r4, #0
	ldr r3, [sp, #4]
	adds r1, r3, r6
	bl sub_0801DF28
	adds r5, #1
	cmp r5, r7
	blo _0801DEB6
_0801DEDA:
	mov r6, sb
	cmp r6, sl
	blo _0801DEA0
_0801DEE0:
	ldr r4, [sp, #0x10]
_0801DEE2:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801DEEA
	b _0801DDE4
_0801DEEA:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801DEF8: .4byte 0x040000D4
_0801DEFC: .4byte gUnk_08324AE4
_0801DF00: .4byte gUnk_02019EE0
_0801DF04: .4byte 0x84000100
_0801DF08: .4byte gAreaRoomHeaders
_0801DF0C: .4byte 0x000007FF

	thumb_func_start sub_0801DF10
sub_0801DF10: @ 0x0801DF10
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #3]
	cmp r0, #1
	bne _0801DF20
	movs r0, #0xc0
	lsls r0, r0, #2
	b _0801DF26
_0801DF20:
	ldrb r0, [r1]
	bl sub_08052D58
_0801DF26:
	pop {pc}

	thumb_func_start sub_0801DF28
sub_0801DF28: @ 0x0801DF28
	push {r4, lr}
	lsrs r4, r1, #3
	lsls r4, r4, #4
	lsrs r3, r0, #3
	adds r4, r4, r3
	lsls r4, r4, #5
	ldr r3, _0801DF58 @ =gUnk_0201AEE0
	adds r4, r4, r3
	movs r3, #7
	ands r1, r3
	lsls r1, r1, #2
	adds r4, r4, r1
	ands r0, r3
	lsls r0, r0, #2
	lsls r2, r0
	ldr r1, _0801DF5C @ =gUnk_080C9460
	adds r0, r0, r1
	ldr r1, [r4]
	ldr r0, [r0]
	ands r1, r0
	orrs r1, r2
	str r1, [r4]
	pop {r4, pc}
	.align 2, 0
_0801DF58: .4byte gUnk_0201AEE0
_0801DF5C: .4byte gUnk_080C9460

	thumb_func_start sub_0801DF60
sub_0801DF60: @ 0x0801DF60
	adds r3, r0, #0
	lsrs r0, r3, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r2, #3
	adds r1, r2, #0
	bics r1, r3
	lsls r1, r1, #1
	asrs r0, r1
	ands r0, r2
	bx lr
	.align 2, 0

	thumb_func_start sub_0801DF78
sub_0801DF78: @ 0x0801DF78
	push {lr}
	cmp r0, #2
	beq _0801DF88
	cmp r0, #2
	blo _0801DF8E
	cmp r0, #3
	beq _0801DF8C
	b _0801DF8E
_0801DF88:
	adds r0, r1, #0
	b _0801DF8E
_0801DF8C:
	movs r0, #7
_0801DF8E:
	pop {pc}

	thumb_func_start sub_0801DF90
sub_0801DF90: @ 0x0801DF90
	push {lr}
	adds r2, r1, #0
	cmp r0, #0
	bne _0801DFAA
	b _0801DFB0
_0801DF9A:
	ldrb r1, [r0, #1]
	adds r0, r2, #0
	bl CheckLocalFlagByOffset
	b _0801DFB2
_0801DFA4:
	cmp r1, #1
	beq _0801DF9A
	adds r0, #8
_0801DFAA:
	ldrb r1, [r0]
	cmp r1, #0
	bne _0801DFA4
_0801DFB0:
	movs r0, #0
_0801DFB2:
	pop {pc}

	thumb_func_start sub_0801DFB4
sub_0801DFB4: @ 0x0801DFB4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r7, _0801E004 @ =gUnk_02022740
	adds r0, r7, #0
	movs r1, #0x10
	bl MemClear
	strh r4, [r7, #6]
	strh r5, [r7, #8]
	strh r6, [r7, #0xa]
	mov r0, r8
	str r0, [r7, #0xc]
	ldr r0, _0801E008 @ =gUnk_03003DF0
	ldrb r0, [r0, #2]
	strb r0, [r7, #3]
	mov r1, r8
	cmp r1, #0
	beq _0801DFF8
	ldrb r1, [r1, #0x11]
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	strb r0, [r7, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	mov r1, r8
	strb r0, [r1, #0x11]
_0801DFF8:
	movs r0, #0
	strb r0, [r7]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801E004: .4byte gUnk_02022740
_0801E008: .4byte gUnk_03003DF0

	thumb_func_start sub_0801E00C
sub_0801E00C: @ 0x0801E00C
	push {r4, lr}
	ldr r1, _0801E024 @ =gUnk_080C9CAC
	ldr r4, _0801E028 @ =gUnk_02022740
	ldrb r0, [r4, #1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldrb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_0801E024: .4byte gUnk_080C9CAC
_0801E028: .4byte gUnk_02022740

	thumb_func_start sub_0801E02C
sub_0801E02C: @ 0x0801E02C
	push {r4, lr}
	ldr r4, _0801E040 @ =gUnk_02022740
	ldrh r0, [r4, #6]
	bl sub_0801E0E0
	movs r0, #3
	strb r0, [r4]
	movs r0, #1
	strb r0, [r4, #1]
	pop {r4, pc}
	.align 2, 0
_0801E040: .4byte gUnk_02022740

	thumb_func_start sub_0801E044
sub_0801E044: @ 0x0801E044
	push {lr}
	ldr r0, _0801E06C @ =gMessage
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0801E06A
	movs r0, #4
	movs r1, #0
	bl MenuFadeIn
	ldr r0, _0801E070 @ =gUnk_02022740
	movs r1, #4
	strb r1, [r0]
	movs r1, #2
	strb r1, [r0, #1]
	movs r0, #0x6b
	bl SoundReq
_0801E06A:
	pop {pc}
	.align 2, 0
_0801E06C: .4byte gMessage
_0801E070: .4byte gUnk_02022740

	thumb_func_start sub_0801E074
sub_0801E074: @ 0x0801E074
	push {lr}
	ldr r0, _0801E084 @ =gUnk_02022740
	ldrb r1, [r0]
	cmp r1, #5
	beq _0801E088
	cmp r1, #6
	beq _0801E08C
	b _0801E098
	.align 2, 0
_0801E084: .4byte gUnk_02022740
_0801E088:
	ldrh r0, [r0, #8]
	b _0801E08E
_0801E08C:
	ldrh r0, [r0, #0xa]
_0801E08E:
	bl sub_0801E0E0
	ldr r1, _0801E09C @ =gUnk_02022740
	movs r0, #3
	strb r0, [r1, #1]
_0801E098:
	pop {pc}
	.align 2, 0
_0801E09C: .4byte gUnk_02022740

	thumb_func_start sub_0801E0A0
sub_0801E0A0: @ 0x0801E0A0
	push {r4, lr}
	ldr r0, _0801E0D8 @ =gMessage
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0801E0D4
	ldr r4, _0801E0DC @ =gUnk_02022740
	ldr r3, [r4, #0xc]
	cmp r3, #0
	beq _0801E0C8
	ldrb r0, [r4, #4]
	movs r1, #0xf
	ands r1, r0
	ldrb r2, [r3, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
_0801E0C8:
	ldrb r0, [r4]
	movs r1, #1
	cmp r0, #6
	bne _0801E0D2
	movs r1, #2
_0801E0D2:
	strb r1, [r4]
_0801E0D4:
	pop {r4, pc}
	.align 2, 0
_0801E0D8: .4byte gMessage
_0801E0DC: .4byte gUnk_02022740

	thumb_func_start sub_0801E0E0
sub_0801E0E0: @ 0x0801E0E0
	push {lr}
	adds r2, r0, #0
	cmp r2, #0
	beq _0801E102
	ldr r0, _0801E0F8 @ =gUnk_02022740
	ldr r1, [r0, #0xc]
	cmp r1, #0
	beq _0801E0FC
	adds r0, r2, #0
	bl MessageNoOverlap
	b _0801E102
	.align 2, 0
_0801E0F8: .4byte gUnk_02022740
_0801E0FC:
	adds r0, r2, #0
	bl MessageFromTarget
_0801E102:
	pop {pc}

	thumb_func_start sub_0801E104
sub_0801E104: @ 0x0801E104
	ldr r1, _0801E118 @ =gScreen
	ldrh r2, [r1]
	ldr r0, _0801E11C @ =0x00009FFF
	ands r0, r2
	movs r2, #0
	strh r0, [r1]
	adds r1, #0x6c
	strb r2, [r1]
	bx lr
	.align 2, 0
_0801E118: .4byte gScreen
_0801E11C: .4byte 0x00009FFF

	thumb_func_start sub_0801E120
sub_0801E120: @ 0x0801E120
	ldr r3, _0801E14C @ =gScreen
	ldrh r1, [r3]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	movs r2, #0
	orrs r0, r1
	strh r0, [r3]
	adds r1, r3, #0
	adds r1, #0x60
	ldr r0, _0801E150 @ =0x00003F37
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x3f
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x58
	strh r2, [r0]
	subs r1, #6
	movs r0, #0xa0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0801E14C: .4byte gScreen
_0801E150: .4byte 0x00003F37

	thumb_func_start sub_0801E154
sub_0801E154: @ 0x0801E154
	push {lr}
	movs r1, #0
	bl sub_0801E24C
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801E160
sub_0801E160: @ 0x0801E160
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r6, r0, #0
	mov r8, r1
	mov sb, r2
	ldr r5, _0801E1A8 @ =gUnk_03003DE4
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r4, _0801E1AC @ =gUnk_02017AA0
	adds r0, r0, r4
	movs r1, #0xa0
	lsls r1, r1, #4
	bl MemClear
	adds r0, r6, #0
	mov r1, r8
	mov r2, sb
	bl sub_0801E290
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	adds r0, r0, r4
	ldr r1, _0801E1B0 @ =0x04000040
	ldr r2, _0801E1B4 @ =0xA2600001
	bl sub_0805622C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801E1A8: .4byte gUnk_03003DE4
_0801E1AC: .4byte gUnk_02017AA0
_0801E1B0: .4byte 0x04000040
_0801E1B4: .4byte 0xA2600001

	thumb_func_start sub_0801E1B8
sub_0801E1B8: @ 0x0801E1B8
	push {r4, lr}
	ldr r2, _0801E1E8 @ =gScreen
	mov ip, r2
	ldrh r3, [r2]
	movs r4, #0x80
	lsls r4, r4, #6
	adds r2, r4, #0
	movs r4, #0
	orrs r2, r3
	mov r3, ip
	strh r2, [r3]
	mov r2, ip
	adds r2, #0x60
	strh r0, [r2]
	mov r0, ip
	adds r0, #0x62
	strh r1, [r0]
	subs r0, #0xa
	strh r4, [r0]
	mov r1, ip
	adds r1, #0x5c
	movs r0, #0xa0
	strh r0, [r1]
	pop {r4, pc}
	.align 2, 0
_0801E1E8: .4byte gScreen

	thumb_func_start sub_0801E1EC
sub_0801E1EC: @ 0x0801E1EC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	mov r8, r0
	mov sb, r1
	adds r4, r2, #0
	ldr r6, _0801E23C @ =gUnk_03003DE4
	ldrb r1, [r6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r5, _0801E240 @ =gUnk_02017AA0
	adds r0, r0, r5
	movs r1, #0xa0
	lsls r1, r1, #4
	bl MemClear
	adds r0, r4, #0
	movs r1, #0
	bl sub_0801E24C
	mov r0, r8
	mov r1, sb
	adds r2, r4, #0
	bl sub_0801E290
	ldrb r1, [r6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	adds r0, r0, r5
	ldr r1, _0801E244 @ =0x04000040
	ldr r2, _0801E248 @ =0xA2600001
	bl sub_0805622C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801E23C: .4byte gUnk_03003DE4
_0801E240: .4byte gUnk_02017AA0
_0801E244: .4byte 0x04000040
_0801E248: .4byte 0xA2600001

	thumb_func_start sub_0801E24C
sub_0801E24C: @ 0x0801E24C
	push {r4, r5, lr}
	lsls r1, r1, #1
	ldr r2, _0801E278 @ =gUnk_02018EE0
	adds r5, r1, r2
	movs r3, #0
	adds r2, r0, #0
	lsls r4, r2, #1
	movs r0, #3
	subs r1, r0, r4
	cmp r3, r2
	bgt _0801E28E
	adds r4, r4, r5
_0801E264:
	lsls r0, r3, #1
	adds r0, r0, r5
	strh r2, [r0]
	strh r3, [r4]
	cmp r1, #0
	bge _0801E27C
	adds r1, #6
	lsls r0, r3, #2
	adds r1, r1, r0
	b _0801E288
	.align 2, 0
_0801E278: .4byte gUnk_02018EE0
_0801E27C:
	adds r1, #0xa
	subs r0, r3, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	subs r4, #2
	subs r2, #1
_0801E288:
	adds r3, #1
	cmp r3, r2
	ble _0801E264
_0801E28E:
	pop {r4, r5, pc}

	thumb_func_start sub_0801E290
sub_0801E290: @ 0x0801E290
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	adds r6, r2, #0
	ldr r0, _0801E2BC @ =gUnk_03003DE4
	ldrb r0, [r0]
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #9
	lsls r0, r1, #1
	ldr r3, _0801E2C0 @ =gUnk_02017AA0
	adds r0, r0, r3
	adds r2, r2, r0
	adds r4, r2, #0
	adds r5, r1, #0
	mov sb, r5
	ldr r0, _0801E2C4 @ =gUnk_02018EE0
	mov r8, r0
	b _0801E30A
	.align 2, 0
_0801E2BC: .4byte gUnk_03003DE4
_0801E2C0: .4byte gUnk_02017AA0
_0801E2C4: .4byte gUnk_02018EE0
_0801E2C8:
	mov r1, r8
	movs r3, #0
	ldrsh r0, [r1, r3]
	movs r7, #2
	add r8, r7
	mov r3, ip
	subs r1, r3, r0
	adds r3, r3, r0
	cmp r1, #0
	bge _0801E2DE
	movs r1, #0
_0801E2DE:
	cmp r3, #0xef
	ble _0801E2E4
	movs r3, #0xf0
_0801E2E4:
	mov r7, sb
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x9f
	bhi _0801E2F2
	strb r3, [r4]
	strb r1, [r4, #1]
_0801E2F2:
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x9f
	bhi _0801E2FE
	strb r3, [r2]
	strb r1, [r2, #1]
_0801E2FE:
	subs r4, #2
	adds r2, #2
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	adds r5, #1
_0801E30A:
	adds r0, r6, #0
	subs r6, #1
	cmp r0, #0
	bne _0801E2C8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0801E31C
sub_0801E31C: @ 0x0801E31C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	str r0, [sp]
	str r1, [sp, #4]
	mov sl, r2
	mov sb, r3
	ldr r0, _0801E3AC @ =gUnk_03003DE4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _0801E3B0 @ =gUnk_02017AA0
	adds r0, r0, r1
	movs r1, #0xa0
	lsls r1, r1, #4
	bl MemClear
	cmp sl, sb
	bge _0801E3DC
	movs r6, #0
	mov r8, sl
	mov r7, r8
	mov r0, r8
	lsls r1, r0, #1
	movs r0, #3
	subs r5, r0, r1
	cmp r6, r8
	ble _0801E35E
	b _0801E45E
_0801E35E:
	mov r1, r8
	lsls r0, r1, #2
	ldr r4, _0801E3B4 @ =gUnk_02018EE0
	adds r0, r0, r4
	str r0, [sp, #0x10]
	mov r1, sb
	mov r0, r8
	muls r0, r1, r0
	str r0, [sp, #0x14]
	movs r3, #0
_0801E372:
	adds r0, r3, #0
	mov r1, sl
	str r3, [sp, #0x18]
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	mov r1, sl
	bl Div
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r6, #2
	ldr r4, _0801E3B4 @ =gUnk_02018EE0
	adds r1, r2, r4
	str r0, [r1]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x10]
	str r0, [r1]
	ldr r3, [sp, #0x18]
	cmp r5, #0
	bge _0801E3B8
	adds r0, r5, #6
	adds r5, r0, r2
	b _0801E3D2
	.align 2, 0
_0801E3AC: .4byte gUnk_03003DE4
_0801E3B0: .4byte gUnk_02017AA0
_0801E3B4: .4byte gUnk_02018EE0
_0801E3B8:
	adds r1, r5, #0
	adds r1, #0xa
	subs r0, r6, r7
	lsls r0, r0, #2
	adds r5, r1, r0
	ldr r4, [sp, #0x10]
	subs r4, #4
	str r4, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r1, sb
	subs r0, r0, r1
	str r0, [sp, #0x14]
	subs r7, #1
_0801E3D2:
	add r3, sb
	adds r6, #1
	cmp r6, r7
	ble _0801E372
	b _0801E45E
_0801E3DC:
	movs r6, #0
	mov r8, sb
	mov r7, r8
	mov r4, r8
	lsls r1, r4, #1
	movs r0, #3
	subs r5, r0, r1
	cmp r6, r8
	bgt _0801E45E
	lsls r0, r4, #2
	ldr r1, _0801E438 @ =gUnk_02018EE0
	adds r0, r0, r1
	str r0, [sp, #8]
	mov r0, sl
	mov r4, r8
	muls r4, r0, r4
	str r4, [sp, #0xc]
	movs r3, #0
_0801E400:
	adds r0, r3, #0
	mov r1, sb
	str r3, [sp, #0x18]
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	mov r1, sb
	bl Div
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r6, #2
	ldr r4, _0801E438 @ =gUnk_02018EE0
	adds r1, r2, r4
	str r0, [r1]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #8]
	str r0, [r1]
	ldr r3, [sp, #0x18]
	cmp r5, #0
	bge _0801E43C
	adds r0, r5, #6
	adds r5, r0, r2
	b _0801E456
	.align 2, 0
_0801E438: .4byte gUnk_02018EE0
_0801E43C:
	adds r1, r5, #0
	adds r1, #0xa
	subs r0, r6, r7
	lsls r0, r0, #2
	adds r5, r1, r0
	ldr r4, [sp, #8]
	subs r4, #4
	str r4, [sp, #8]
	ldr r0, [sp, #0xc]
	mov r1, sl
	subs r0, r0, r1
	str r0, [sp, #0xc]
	subs r7, #1
_0801E456:
	add r3, sl
	adds r6, #1
	cmp r6, r7
	ble _0801E400
_0801E45E:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	mov r2, r8
	bl sub_0801E290
	ldr r0, _0801E48C @ =gUnk_03003DE4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _0801E490 @ =gUnk_02017AA0
	adds r0, r0, r1
	ldr r1, _0801E494 @ =0x04000040
	ldr r2, _0801E498 @ =0xA2600001
	bl sub_0805622C
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801E48C: .4byte gUnk_03003DE4
_0801E490: .4byte gUnk_02017AA0
_0801E494: .4byte 0x04000040
_0801E498: .4byte 0xA2600001

	thumb_func_start sub_0801E49C
sub_0801E49C: @ 0x0801E49C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	str r1, [sp, #4]
	mov sb, r2
	adds r5, r3, #0
	ldr r0, _0801E5E4 @ =0x0000FFFF
	movs r2, #0xf0
	lsls r2, r2, #3
	ldr r1, _0801E5E8 @ =gUnk_02018EE0
	bl MemFill16
	adds r3, r5, #0
	subs r3, #0x40
	movs r2, #0xff
	ands r3, r2
	ldr r1, _0801E5EC @ =gSineTable
	adds r0, r3, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	mov r4, sb
	muls r4, r0, r4
	adds r0, r4, #0
	asrs r0, r0, #8
	mov r4, r8
	adds r7, r4, r0
	lsls r0, r3, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r4, sb
	muls r4, r0, r4
	adds r0, r4, #0
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	adds r3, r3, r0
	mov sl, r3
	adds r3, r5, #0
	adds r3, #0x68
	ands r3, r2
	adds r0, r3, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	mov r4, sb
	muls r4, r0, r4
	adds r0, r4, #0
	asrs r0, r0, #8
	mov r4, r8
	adds r6, r4, r0
	lsls r0, r3, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r4, sb
	muls r4, r0, r4
	adds r0, r4, #0
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	adds r4, r3, r0
	adds r3, r5, #0
	subs r3, #0xe8
	ands r3, r2
	adds r0, r3, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r2, sb
	muls r2, r0, r2
	adds r0, r2, #0
	asrs r0, r0, #8
	mov r2, r8
	adds r5, r2, r0
	lsls r0, r3, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r0, r0, #8
	ldr r2, [sp, #4]
	adds r2, r2, r0
	mov r8, r2
	movs r0, #0
	str r0, [sp]
	adds r0, r7, #0
	mov r1, sl
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0801E64C
	movs r0, #1
	str r0, [sp]
	adds r0, r7, #0
	mov r1, sl
	adds r2, r5, #0
	mov r3, r8
	bl sub_0801E64C
	movs r0, #2
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	mov r3, r8
	bl sub_0801E64C
	ldr r5, _0801E5F0 @ =gUnk_03003DE4
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r6, _0801E5F4 @ =gUnk_02017AA0
	adds r0, r0, r6
	movs r1, #0xa0
	lsls r1, r1, #4
	bl MemClear
	ldr r2, _0801E5E8 @ =gUnk_02018EE0
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	adds r1, r0, r6
	movs r3, #0xa0
	mov sl, r3
_0801E5B0:
	ldr r7, [r2]
	ldr r6, [r2, #4]
	ldr r5, [r2, #8]
	adds r2, #0xc
	cmp r7, r6
	ble _0801E5C2
	adds r4, r7, #0
	adds r7, r6, #0
	adds r6, r4, #0
_0801E5C2:
	cmp r7, r5
	ble _0801E5CC
	adds r4, r7, #0
	adds r7, r5, #0
	adds r5, r4, #0
_0801E5CC:
	cmp r6, r5
	ble _0801E5D6
	adds r4, r6, #0
	adds r6, r5, #0
	adds r5, r4, #0
_0801E5D6:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	beq _0801E5F8
	strb r5, [r1]
	strb r7, [r1, #1]
	b _0801E60A
	.align 2, 0
_0801E5E4: .4byte 0x0000FFFF
_0801E5E8: .4byte gUnk_02018EE0
_0801E5EC: .4byte gSineTable
_0801E5F0: .4byte gUnk_03003DE4
_0801E5F4: .4byte gUnk_02017AA0
_0801E5F8:
	cmp r6, r7
	beq _0801E602
	strb r5, [r1]
	strb r6, [r1, #1]
	b _0801E60A
_0801E602:
	cmp r5, r7
	beq _0801E60A
	strb r7, [r1, #1]
	strb r7, [r1]
_0801E60A:
	movs r4, #1
	rsbs r4, r4, #0
	add sl, r4
	adds r1, #2
	mov r0, sl
	cmp r0, #0
	bgt _0801E5B0
	ldr r0, _0801E63C @ =gUnk_03003DE4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _0801E640 @ =gUnk_02017AA0
	adds r0, r0, r1
	ldr r1, _0801E644 @ =0x04000040
	ldr r2, _0801E648 @ =0xA2600001
	bl sub_0805622C
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801E63C: .4byte gUnk_03003DE4
_0801E640: .4byte gUnk_02017AA0
_0801E644: .4byte 0x04000040
_0801E648: .4byte 0xA2600001

	thumb_func_start sub_0801E64C
sub_0801E64C: @ 0x0801E64C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r3, #0
	ldr r7, _0801E6C4 @ =gUnk_02018EE0
	cmp r4, #0
	bge _0801E65E
	cmp r6, #0
	blt _0801E6C2
_0801E65E:
	cmp r4, #0x9f
	ble _0801E666
	cmp r6, #0x9f
	bgt _0801E6C2
_0801E666:
	cmp r4, r6
	ble _0801E676
	adds r1, r4, #0
	adds r4, r6, #0
	adds r6, r1, #0
	adds r1, r5, #0
	adds r5, r2, #0
	adds r2, r1, #0
_0801E676:
	cmp r4, r6
	beq _0801E6C2
	subs r0, r2, r5
	lsls r0, r0, #0x10
	subs r1, r6, r4
	bl Div
	adds r3, r0, #0
	cmp r4, #0
	bge _0801E694
	rsbs r0, r4, #0
	muls r0, r3, r0
	asrs r0, r0, #0x10
	adds r5, r5, r0
	movs r4, #0
_0801E694:
	cmp r6, #0x9f
	ble _0801E69A
	movs r6, #0x9f
_0801E69A:
	lsls r2, r5, #0x10
	lsls r0, r4, #1
	adds r0, r0, r4
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r7, r0, r7
_0801E6A8:
	cmp r5, #0
	bge _0801E6AE
	movs r5, #0
_0801E6AE:
	cmp r5, #0xf0
	ble _0801E6B4
	movs r5, #0xf0
_0801E6B4:
	str r5, [r7]
	adds r2, r2, r3
	asrs r5, r2, #0x10
	adds r4, #1
	adds r7, #0xc
	cmp r4, r6
	ble _0801E6A8
_0801E6C2:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801E6C4: .4byte gUnk_02018EE0

	thumb_func_start sub_0801E6C8
sub_0801E6C8: @ 0x0801E6C8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	subs r0, r4, #1
	cmp r0, #0x63
	bhi _0801E722
	movs r1, #0
	ldr r5, _0801E724 @ =gUnk_02022740
	ldr r3, _0801E728 @ =gUnk_02002C01
	movs r2, #0xf1
_0801E6DA:
	adds r0, r1, r3
	ldrb r6, [r0]
	cmp r4, r6
	bne _0801E6E4
	strb r2, [r0]
_0801E6E4:
	adds r1, #1
	cmp r1, #0x7f
	bls _0801E6DA
	ldr r0, [r5, #0xc]
	bl sub_08002632
	adds r1, r0, #0
	subs r0, r1, #1
	cmp r0, #0x7e
	bhi _0801E70A
	ldr r0, _0801E72C @ =gSave
	ldr r2, _0801E730 @ =0x000001C1
	adds r0, r0, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0xf1
	bne _0801E70A
	movs r0, #0xf2
	strb r0, [r1]
_0801E70A:
	movs r1, #0
	ldr r0, _0801E734 @ =gUnk_03003DF0
	movs r2, #0xf1
	adds r0, #0xb
_0801E712:
	ldrb r3, [r0]
	cmp r4, r3
	bne _0801E71A
	strb r2, [r0]
_0801E71A:
	adds r0, #0xc
	adds r1, #1
	cmp r1, #0x1f
	bls _0801E712
_0801E722:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801E724: .4byte gUnk_02022740
_0801E728: .4byte gUnk_02002C01
_0801E72C: .4byte gSave
_0801E730: .4byte 0x000001C1
_0801E734: .4byte gUnk_03003DF0

	thumb_func_start sub_0801E738
sub_0801E738: @ 0x0801E738
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E82C
	adds r0, r4, #0
	subs r0, #0x65
	cmp r0, #0x10
	bhi _0801E790
	adds r0, r4, #0
	bl sub_0801E8B0
	adds r1, r0, #0
	cmp r1, #0
	bge _0801E76E
	movs r1, #0
	ldr r0, _0801E794 @ =gSave
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r2, r0, r3
	ldrb r0, [r2]
	cmp r0, #0
	beq _0801E76E
_0801E764:
	adds r1, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801E764
_0801E76E:
	cmp r1, #0x11
	bhi _0801E790
	ldr r2, _0801E794 @ =gSave
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r0, r2, r3
	adds r0, r1, r0
	strb r4, [r0]
	adds r3, #0x13
	adds r0, r2, r3
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	cmp r0, #0x63
	ble _0801E78E
	movs r0, #0x63
_0801E78E:
	strb r0, [r1]
_0801E790:
	pop {r4, pc}
	.align 2, 0
_0801E794: .4byte gSave

	thumb_func_start sub_0801E798
sub_0801E798: @ 0x0801E798
	push {r4, lr}
	bl sub_0801E8B0
	adds r1, r0, #0
	cmp r1, #0
	blt _0801E7C4
	ldr r2, _0801E7C8 @ =gSave
	ldr r3, _0801E7CC @ =0x0000012B
	adds r0, r2, r3
	adds r3, r1, r0
	ldrb r0, [r3]
	subs r0, #1
	cmp r0, #0
	bgt _0801E7C2
	movs r4, #0x8c
	lsls r4, r4, #1
	adds r0, r2, r4
	adds r0, r1, r0
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
_0801E7C2:
	strb r0, [r3]
_0801E7C4:
	pop {r4, pc}
	.align 2, 0
_0801E7C8: .4byte gSave
_0801E7CC: .4byte 0x0000012B

	thumb_func_start sub_0801E7D0
sub_0801E7D0: @ 0x0801E7D0
	push {lr}
	bl sub_0801E8B0
	adds r1, r0, #0
	cmp r1, #0
	blt _0801E7F0
	ldr r0, _0801E7E8 @ =gSave
	ldr r2, _0801E7EC @ =0x0000012B
	adds r0, r0, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	b _0801E7F2
	.align 2, 0
_0801E7E8: .4byte gSave
_0801E7EC: .4byte 0x0000012B
_0801E7F0:
	movs r0, #0
_0801E7F2:
	pop {pc}

	thumb_func_start CheckKinstoneFused
CheckKinstoneFused: @ 0x0801E7F4
	push {lr}
	adds r1, r0, #0
	subs r0, r1, #1
	cmp r0, #0x63
	bhi _0801E80C
	ldr r0, _0801E808 @ =gUnk_02002C81
	bl ReadBit
	b _0801E80E
	.align 2, 0
_0801E808: .4byte gUnk_02002C81
_0801E80C:
	movs r0, #0
_0801E80E:
	pop {pc}

	thumb_func_start sub_0801E810
sub_0801E810: @ 0x0801E810
	push {lr}
	adds r1, r0, #0
	subs r0, r1, #1
	cmp r0, #0x63
	bhi _0801E828
	ldr r0, _0801E824 @ =gUnk_02002C8E
	bl ReadBit
	b _0801E82A
	.align 2, 0
_0801E824: .4byte gUnk_02002C8E
_0801E828:
	movs r0, #0
_0801E82A:
	pop {pc}

	thumb_func_start sub_0801E82C
sub_0801E82C: @ 0x0801E82C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _0801E8AC @ =gUnk_02002B54
	movs r5, #0
	adds r2, r1, #4
_0801E83C:
	ldrb r0, [r2, #0x13]
	adds r3, r1, #4
	mov sl, r3
	cmp r0, #0
	bne _0801E848
	strb r0, [r2]
_0801E848:
	adds r2, #1
	adds r5, #1
	cmp r5, #0x12
	bls _0801E83C
	movs r0, #0
	strb r0, [r1, #0x16]
	adds r2, r1, #0
	adds r2, #0x29
	strb r0, [r2]
	movs r5, #0
	movs r0, #0x17
	adds r0, r0, r1
	mov sb, r0
	movs r3, #0x18
	adds r3, r3, r1
	mov r8, r3
	adds r7, r1, #4
	adds r6, r1, #5
_0801E86C:
	mov r1, sl
	adds r0, r1, r5
	ldrb r0, [r0]
	subs r0, #0x65
	cmp r0, #0x10
	bls _0801E890
	movs r4, #0x12
	subs r4, r4, r5
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl MemCopy
	mov r0, r8
	mov r1, sb
	adds r2, r4, #0
	bl MemCopy
_0801E890:
	movs r3, #1
	add sb, r3
	add r8, r3
	adds r7, #1
	adds r6, #1
	adds r5, #1
	cmp r5, #0x11
	bls _0801E86C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801E8AC: .4byte gUnk_02002B54

	thumb_func_start sub_0801E8B0
sub_0801E8B0: @ 0x0801E8B0
	push {lr}
	adds r2, r0, #0
	movs r1, #0
	ldr r3, _0801E8C4 @ =gUnk_02002B58
_0801E8B8:
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r2, r0
	bne _0801E8C8
	adds r0, r1, #0
	b _0801E8D2
	.align 2, 0
_0801E8C4: .4byte gUnk_02002B58
_0801E8C8:
	adds r1, #1
	cmp r1, #0x11
	bls _0801E8B8
	movs r0, #1
	rsbs r0, r0, #0
_0801E8D2:
	pop {pc}

	thumb_func_start sub_0801E8D4
sub_0801E8D4: @ 0x0801E8D4
.ifdef DEMO_JP
	push {r4, r5, lr}
	movs r5, #0xa
_0801E914:
	adds r0, r5, #0
	bl CheckKinstoneFused
	cmp r0, #0
	beq _0801E9C4
	adds r0, r5, #0
	bl sub_0801E810
	cmp r0, #0
	bne _0801E9C4
	ldr r1, _0801E94C @ =0x080C9500
	lsls r0, r5, #3
	adds r0, r0, r1
	ldrb r1, [r0, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0801E950 @ =0x080FDB04
	adds r2, r0, r1
	ldrh r3, [r2, #0x12]
	ldrb r0, [r2, #0x10]
	cmp r0, #9
	bhi _0801E9B0
	lsls r0, r0, #2
	ldr r1, _0801E954 @ =_0801E958
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801E94C: .4byte 0x080C9500
_0801E950: .4byte 0x080FDB04
_0801E954: .4byte _0801E958
_0801E958: @ jump table
	.4byte _0801E980 @ case 0
	.4byte _0801E984 @ case 1
	.4byte _0801E988 @ case 2
	.4byte _0801E98C @ case 3
	.4byte _0801E990 @ case 4
	.4byte _0801E994 @ case 5
	.4byte _0801E99A @ case 6
	.4byte _0801E9A0 @ case 7
	.4byte _0801E9A6 @ case 8
	.4byte _0801E9AC @ case 9
_0801E980:
	movs r4, #0
	b _0801E9B0
_0801E984:
	ldrb r4, [r2, #0x11]
	b _0801E9B0
_0801E988:
	movs r4, #0xf
	b _0801E9B0
_0801E98C:
	movs r4, #0x10
	b _0801E9B0
_0801E990:
	movs r4, #0x11
	b _0801E9B0
_0801E994:
	movs r4, #4
	movs r3, #0x83
	b _0801E9B0
_0801E99A:
	movs r4, #4
	movs r3, #0x84
	b _0801E9B0
_0801E9A0:
	movs r4, #4
	movs r3, #0x87
	b _0801E9B0
_0801E9A6:
	movs r4, #4
	movs r3, #0x88
	b _0801E9B0
_0801E9AC:
	movs r4, #4
	movs r3, #0x8b
_0801E9B0:
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_0807CB24
	cmp r0, #0
	beq _0801E9C4
	ldr r0, _0801E9CC @ =gUnk_02002C8E
	adds r1, r5, #0
	bl WriteBit
_0801E9C4:
	adds r5, #1
	cmp r5, #0x64
	bls _0801E914
	pop {r4, r5, pc}
	.align 2, 0
_0801E9CC: .4byte gUnk_02002C8E

.else
.ifdef JP
	push {r4, r5, lr}
	movs r4, #0xa
_0801E8BC:
	adds r0, r4, #0
	bl CheckKinstoneFused
	cmp r0, #0
	beq _0801E93A
	adds r0, r4, #0
	bl sub_0801E810
	cmp r0, #0
	bne _0801E93A
	ldr r1, _0801E8F4 @ =gUnk_080FC3E4
	lsls r0, r4, #3
	adds r0, r0, r1
	ldrb r1, [r0, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0801E8F8 @ =gUnk_080FE320
	adds r2, r0, r1
	ldrb r0, [r2, #0x10]
	cmp r0, #4
	bhi _0801E926
	lsls r0, r0, #2
	ldr r1, _0801E8FC @ =_0801E900
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801E8F4: .4byte gUnk_080C9CBC
_0801E8F8: .4byte gUnk_080FE320
_0801E8FC: .4byte _0801E900
_0801E900: @ jump table
	.4byte _0801E914 @ case 0
	.4byte _0801E918 @ case 1
	.4byte _0801E91C @ case 2
	.4byte _0801E920 @ case 3
	.4byte _0801E924 @ case 4
_0801E914:
	movs r5, #0
	b _0801E926
_0801E918:
	ldrb r5, [r2, #0x11]
	b _0801E926
_0801E91C:
	movs r5, #0xf
	b _0801E926
_0801E920:
	movs r5, #0x10
	b _0801E926
_0801E924:
	movs r5, #0x11
_0801E926:
	ldrh r1, [r2, #0x12]
	adds r0, r5, #0
	bl sub_0807CB24
	cmp r0, #0
	beq _0801E93A
	ldr r0, _0801E944 @ =0x02002C8E
	adds r1, r4, #0
	bl WriteBit
_0801E93A:
	adds r4, #1
	cmp r4, #0x64
	bls _0801E8BC
	pop {r4, r5, pc}
	.align 2, 0
_0801E944: .4byte 0x02002C8E
.else
.ifdef EU
	push {r4, r5, lr}
	movs r4, #0xa
_0801E910:
	adds r0, r4, #0
	bl CheckKinstoneFused
	cmp r0, #0
	beq _0801E98E
	adds r0, r4, #0
	bl sub_0801E810
	cmp r0, #0
	bne _0801E98E
	ldr r1, _0801E948 @ =gUnk_080C9CBC
	lsls r0, r4, #3
	adds r0, r0, r1
	ldrb r1, [r0, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0801E94C @ =gUnk_080FE320
	adds r2, r0, r1
	ldrb r0, [r2, #0x10]
	cmp r0, #4
	bhi _0801E97A
	lsls r0, r0, #2
	ldr r1, _0801E950 @ =_0801E954
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801E948: .4byte gUnk_080C9CBC
_0801E94C: .4byte gUnk_080FE320
_0801E950: .4byte _0801E954
_0801E954: @ jump table
	.4byte _0801E968 @ case 0
	.4byte _0801E96C @ case 1
	.4byte _0801E970 @ case 2
	.4byte _0801E974 @ case 3
	.4byte _0801E978 @ case 4
_0801E968:
	movs r5, #0
	b _0801E97A
_0801E96C:
	ldrb r5, [r2, #0x11]
	b _0801E97A
_0801E970:
	movs r5, #0xf
	b _0801E97A
_0801E974:
	movs r5, #0x10
	b _0801E97A
_0801E978:
	movs r5, #0x11
_0801E97A:
	ldrh r1, [r2, #0x12]
	adds r0, r5, #0
	bl sub_0807CB24
	cmp r0, #0
	beq _0801E98E
	ldr r0, _0801E998 @ =gUnk_02002C8E
	adds r1, r4, #0
	bl WriteBit
_0801E98E:
	adds r4, #1
	cmp r4, #0x64
	bls _0801E910
	pop {r4, r5, pc}
	.align 2, 0
_0801E998: .4byte gUnk_02002C8E

.else
	push {r4, r5, lr}
	movs r5, #0xa
_0801E8D8:
	adds r0, r5, #0
	bl CheckKinstoneFused
	cmp r0, #0
	beq _0801E990
	adds r0, r5, #0
	bl sub_0801E810
	cmp r0, #0
	bne _0801E990
	ldr r1, _0801E910 @ =gUnk_080C9CBC
	lsls r0, r5, #3
	adds r0, r0, r1
	ldrb r1, [r0, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0801E914 @ =gUnk_080FE320
	adds r2, r0, r1
	ldrh r3, [r2, #0x12]
	ldrb r0, [r2, #0x10]
	cmp r0, #0xa
	bhi _0801E97C
	lsls r0, r0, #2
	ldr r1, _0801E918 @ =_0801E91C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801E910: .4byte gUnk_080C9CBC
_0801E914: .4byte gUnk_080FE320
_0801E918: .4byte _0801E91C
_0801E91C: @ jump table
	.4byte _0801E948 @ case 0
	.4byte _0801E94C @ case 1
	.4byte _0801E950 @ case 2
	.4byte _0801E954 @ case 3
	.4byte _0801E958 @ case 4
	.4byte _0801E95C @ case 5
	.4byte _0801E962 @ case 6
	.4byte _0801E968 @ case 7
	.4byte _0801E96E @ case 8
	.4byte _0801E972 @ case 9
	.4byte _0801E978 @ case 10
_0801E948:
	movs r4, #0
	b _0801E97C
_0801E94C:
	ldrb r4, [r2, #0x11]
	b _0801E97C
_0801E950:
	movs r4, #0xf
	b _0801E97C
_0801E954:
	movs r4, #0x10
	b _0801E97C
_0801E958:
	movs r4, #0x11
	b _0801E97C
_0801E95C:
	movs r4, #4
	movs r3, #0x83
	b _0801E97C
_0801E962:
	movs r4, #4
	movs r3, #0x84
	b _0801E97C
_0801E968:
	movs r4, #4
	movs r3, #0x87
	b _0801E97C
_0801E96E:
	movs r4, #4
	b _0801E97A
_0801E972:
	movs r4, #4
	movs r3, #0x8b
	b _0801E97C
_0801E978:
	movs r4, #5
_0801E97A:
	movs r3, #0x88
_0801E97C:
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_0807CB24
	cmp r0, #0
	beq _0801E990
	ldr r0, _0801E998 @ =gUnk_02002C8E
	adds r1, r5, #0
	bl WriteBit
_0801E990:
	adds r5, #1
	cmp r5, #0x64
	bls _0801E8D8
	pop {r4, r5, pc}
	.align 2, 0
_0801E998: .4byte gUnk_02002C8E
.endif
.endif
.endif

	thumb_func_start sub_0801E99C
sub_0801E99C: @ 0x0801E99C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08002632
	mov r8, r0
	ldr r1, _0801E9E4 @ =gUnk_08001DCC
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r7, [r0]
	movs r0, #0x67
	bl GetInventoryValue
	cmp r0, #0
	beq _0801EA56
	ldr r1, _0801E9E8 @ =gSave
	ldrb r0, [r7]
	ldrb r2, [r1, #8]
	cmp r0, r2
	bhi _0801EA56
	ldr r2, _0801E9EC @ =0x000001C1
	adds r0, r1, r2
	add r0, r8
	ldrb r5, [r0]
	subs r2, #0x80
	adds r0, r1, r2
	add r0, r8
	ldrb r6, [r0]
	adds r4, r6, r7
_0801E9D6:
	cmp r5, #0xf1
	beq _0801E9F6
	cmp r5, #0xf1
	bhi _0801E9F0
	cmp r5, #0
	beq _0801E9F6
	b _0801EA10
	.align 2, 0
_0801E9E4: .4byte gUnk_08001DCC
_0801E9E8: .4byte gSave
_0801E9EC: .4byte 0x000001C1
_0801E9F0:
	cmp r5, #0xf2
	beq _0801EA0A
	b _0801EA10
_0801E9F6:
	ldrb r5, [r4, #5]
	cmp r5, #0
	beq _0801EA10
	cmp r5, #0xff
	beq _0801EA14
	adds r0, r5, #0
	bl CheckKinstoneFused
	cmp r0, #0
	beq _0801EA10
_0801EA0A:
	adds r4, #1
	adds r6, #1
	ldrb r5, [r4, #5]
_0801EA10:
	cmp r5, #0xff
	bne _0801EA1C
_0801EA14:
	adds r0, r7, #0
	bl sub_0801EA74
	adds r5, r0, #0
_0801EA1C:
	cmp r5, #0
	beq _0801EA32
	cmp r5, #0xf2
	beq _0801E9D6
	adds r0, r5, #0
	bl CheckKinstoneFused
	cmp r0, #0
	beq _0801EA34
	movs r5, #0xf1
	b _0801E9D6
_0801EA32:
	movs r5, #0xf3
_0801EA34:
	ldr r1, _0801EA5C @ =gSave
	ldr r2, _0801EA60 @ =0x000001C1
	adds r0, r1, r2
	add r0, r8
	strb r5, [r0]
	subs r2, #0x80
	adds r0, r1, r2
	add r0, r8
	strb r6, [r0]
	bl Random
	ldrb r4, [r7, #1]
	movs r1, #0x64
	bl __modsi3
	cmp r4, r0
	bhi _0801EA64
_0801EA56:
	movs r0, #0
	b _0801EA6E
	.align 2, 0
_0801EA5C: .4byte gSave
_0801EA60: .4byte 0x000001C1
_0801EA64:
	subs r0, r5, #1
	cmp r0, #0x63
	bls _0801EA6C
	movs r5, #0
_0801EA6C:
	adds r0, r5, #0
_0801EA6E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0801EA74
sub_0801EA74: @ 0x0801EA74
	push {r4, r5, r6, lr}
	bl Random
	movs r1, #0x12
	bl __modsi3
	adds r5, r0, #0
	movs r6, #0
_0801EA84:
	ldr r0, _0801EA98 @ =gUnk_080CA11C
	adds r0, r5, r0
	ldrb r4, [r0]
	adds r0, r4, #0
	bl CheckKinstoneFused
	cmp r0, #0
	bne _0801EA9C
	adds r0, r4, #0
	b _0801EAAE
	.align 2, 0
_0801EA98: .4byte gUnk_080CA11C
_0801EA9C:
	adds r0, r5, #1
	movs r1, #0x12
	bl __modsi3
	adds r5, r0, #0
	adds r6, #1
	cmp r6, #0x11
	bls _0801EA84
	movs r0, #0xf2
_0801EAAE:
	pop {r4, r5, r6, pc}
