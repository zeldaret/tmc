	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08016B30
sub_08016B30: @ 0x08016B30
	bx lr
	.align 2, 0

	thumb_func_start sub_08016B34
sub_08016B34: @ 0x08016B34
	ldr r1, _08016B54 @ =0x03007FFC
	ldr r0, _08016B58 @ =gUnk_03005D90
	str r0, [r1]
	ldr r1, _08016B5C @ =0x04000004
	ldr r2, _08016B60 @ =0x00005028
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08016B64 @ =0x04000200
	ldr r2, _08016B68 @ =0x00002005
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #8
	movs r0, #1
	strh r0, [r1]
	bx lr
	.align 2, 0
_08016B54: .4byte 0x03007FFC
_08016B58: .4byte gUnk_03005D90
_08016B5C: .4byte 0x04000004
_08016B60: .4byte 0x00005028
_08016B64: .4byte 0x04000200
_08016B68: .4byte 0x00002005

	thumb_func_start sub_08016B6C
sub_08016B6C: @ 0x08016B6C
	push {r4, r5, lr}
	ldr r4, _08016BBC @ =0x040000B0
	ldrh r1, [r4, #0xa]
	ldr r0, _08016BC0 @ =0x0000C5FF
	ands r0, r1
	strh r0, [r4, #0xa]
	ldrh r1, [r4, #0xa]
	ldr r0, _08016BC4 @ =0x00007FFF
	ands r0, r1
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	bl m4aSoundVSync
	ldr r5, _08016BC8 @ =gUnk_03001000
	ldrb r0, [r5]
	cmp r0, #0
	bne _08016BA6
	bl DispCtrlSet
	ldr r0, _08016BCC @ =gUnk_03000FBC
	str r0, [r4]
	ldr r0, _08016BD0 @ =gUnk_02022730
	str r0, [r4, #4]
	ldr r0, _08016BD4 @ =0x84000004
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrb r0, [r5]
	movs r0, #1
	strb r0, [r5]
_08016BA6:
	bl sub_08016BF8
	ldr r0, _08016BD8 @ =0x03007FF8
	ldrh r1, [r0]
	movs r2, #1
	orrs r1, r2
	strh r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08016BBC: .4byte 0x040000B0
_08016BC0: .4byte 0x0000C5FF
_08016BC4: .4byte 0x00007FFF
_08016BC8: .4byte gUnk_03001000
_08016BCC: .4byte gUnk_03000FBC
_08016BD0: .4byte gUnk_02022730
_08016BD4: .4byte 0x84000004
_08016BD8: .4byte 0x03007FF8

	thumb_func_start HBlankIntr
HBlankIntr: @ 0x08016BDC
	push {lr}
	ldr r1, _08016BF0 @ =0x04000004
	ldr r2, _08016BF4 @ =0x00005028
	adds r0, r2, #0
	strh r0, [r1]
	bl m4aSoundMain
	pop {r0}
	bx r0
	.align 2, 0
_08016BF0: .4byte 0x04000004
_08016BF4: .4byte 0x00005028

	thumb_func_start sub_08016BF8
sub_08016BF8: @ 0x08016BF8
	push {lr}
	ldr r1, _08016C30 @ =gUnk_02022730
	ldrb r0, [r1]
	cmp r0, #0
	beq _08016C2C
	ldr r3, [r1, #4]
	ldr r2, [r1, #8]
	ldr r1, [r1, #0xc]
	ldr r0, _08016C34 @ =0x040000B0
	str r3, [r0]
	str r2, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _08016C38 @ =0x00003FFF
	ands r1, r0
	cmp r1, #0
	bne _08016C1E
	movs r1, #0x80
	lsls r1, r1, #7
_08016C1E:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bgt _08016C1E
_08016C2C:
	pop {r0}
	bx r0
	.align 2, 0
_08016C30: .4byte gUnk_02022730
_08016C34: .4byte 0x040000B0
_08016C38: .4byte 0x00003FFF

	thumb_func_start sub_08016C3C
sub_08016C3C: @ 0x08016C3C
	push {r4, lr}
	ldr r2, _08016C94 @ =gUnk_03000000
	ldrb r0, [r2]
	cmp r0, #0
	beq _08016C6C
	ldr r0, _08016C98 @ =gScreen
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08016C6C
	movs r0, #0
	strb r0, [r2]
	ldr r1, _08016C9C @ =0x040000D4
	adds r0, r2, #0
	adds r0, #0x20
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08016CA0 @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08016C6C:
	ldr r4, _08016CA4 @ =gBG0Settings
	adds r0, r4, #0
	bl sub_08016CA8
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_08016CA8
	adds r0, r4, #0
	adds r0, #0x18
	bl sub_08016CA8
	adds r4, #0x24
	adds r0, r4, #0
	bl sub_08016CA8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08016C94: .4byte gUnk_03000000
_08016C98: .4byte gScreen
_08016C9C: .4byte 0x040000D4
_08016CA0: .4byte 0x84000100
_08016CA4: .4byte gBG0Settings

	thumb_func_start sub_08016CA8
sub_08016CA8: @ 0x08016CA8
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #6]
	cmp r0, #0
	beq _08016CE8
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _08016CE8
	movs r0, #0
	strh r0, [r1, #6]
	ldrh r1, [r1]
	ldr r3, _08016CEC @ =0x040000D4
	str r2, [r3]
	lsls r0, r1, #3
	movs r2, #0xf8
	lsls r2, r2, #8
	ands r0, r2
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r0, r0, r2
	str r0, [r3, #4]
	ldr r0, _08016CF0 @ =gUnk_080B2CD8
	lsrs r1, r1, #0xe
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	lsrs r0, r0, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_08016CE8:
	pop {r0}
	bx r0
	.align 2, 0
_08016CEC: .4byte 0x040000D4
_08016CF0: .4byte gUnk_080B2CD8
