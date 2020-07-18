	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_080AD84C
sub_080AD84C: @ 0x080AD84C
	push {lr}
	ldr r0, _080AD864 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AD894
	ldr r0, _080AD868 @ =gUnk_02000010
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _080AD86C
	movs r2, #0
	b _080AD874
	.align 2, 0
_080AD864: .4byte gUnk_03000FD0
_080AD868: .4byte gUnk_02000010
_080AD86C:
	ldr r0, _080AD888 @ =gUnk_03000FF0
	ldrh r0, [r0, #2]
	movs r2, #9
	ands r2, r0
_080AD874:
	ldr r1, _080AD88C @ =gMenu
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080AD890
	movs r0, #1
	b _080AD89A
	.align 2, 0
_080AD888: .4byte gUnk_03000FF0
_080AD88C: .4byte gMenu
_080AD890:
	cmp r2, #0
	bne _080AD898
_080AD894:
	movs r0, #0
	b _080AD89A
_080AD898:
	movs r0, #2
_080AD89A:
	pop {pc}