	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_08016CF4
sub_08016CF4: @ 0x08016CF4
	ldr r3, _08016DF0 @ =gUnk_03000F50
	ldrh r1, [r3]
	ldrh r0, [r3, #6]
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x13
	strh r0, [r1]
	adds r1, #8
	ldrh r0, [r3, #8]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x14]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x20]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x2c]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0xa]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0xc]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x16]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x18]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x22]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x24]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x2e]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x30]
	strh r0, [r1]
	adds r1, r3, #0
	adds r1, #0x38
	ldr r2, _08016DF4 @ =0x04000020
	ldrh r0, [r3, #0x38]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #2]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #4]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #6]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #8]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0xa]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0xc]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0xe]
	strh r0, [r2]
	adds r1, #0x10
	adds r2, #2
	ldrh r0, [r1]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #2]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #4]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #6]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #8]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0xa]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0xc]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0xe]
	strh r0, [r2]
	adds r1, #0x10
	adds r2, #2
	ldrh r0, [r1]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #2]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #4]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #6]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #8]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0xa]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0xc]
	strh r0, [r2]
	adds r2, #4
	ldrh r0, [r1, #0xe]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0x10]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0x12]
	strh r0, [r2]
	bx lr
	.align 2, 0
_08016DF0: .4byte gUnk_03000F50
_08016DF4: .4byte 0x04000020
