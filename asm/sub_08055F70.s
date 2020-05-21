	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_08055F70
sub_08055F70: @ 0x08055F70
	push {lr}
	bl sub_08056020
	movs r0, #0xfe
	bl RegisterRamReset
	movs r1, #0xa0
	lsls r1, r1, #0x13
	ldr r2, _08055FC8 @ =0x00007FFF
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08055FCC @ =0x04000204
	ldr r2, _08055FD0 @ =0x00004014
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08055FD4 @ =0x0003FFD0
	ldr r0, _08055FD8 @ =gUnk_02000030
	adds r1, r2, #0
	bl sub_0801D630
	ldr r0, _08055FDC @ =gUnk_080B2CD8
	ldr r3, _08055FE0 @ =sub_080B197C
	subs r2, r0, r3
	cmp r2, #0
	beq _08055FAA
	ldr r1, _08055FE4 @ =gUnk_030056F0
	adds r0, r3, #0
	bl sub_0801D66C
_08055FAA:
	ldr r0, _08055FE8 @ =gUnk_080B2CD8
	ldr r3, _08055FEC @ =gUnk_080B2CD8
	subs r2, r0, r3
	cmp r2, #0
	beq _08055FBC
	ldr r1, _08055FF0 @ =gUnk_02038560
	adds r0, r3, #0
	bl sub_0801D66C
_08055FBC:
	movs r0, #0
	bl sub_0801DA90
	bl sub_08016B34
	pop {pc}
	.align 2, 0
_08055FC8: .4byte 0x00007FFF
_08055FCC: .4byte 0x04000204
_08055FD0: .4byte 0x00004014
_08055FD4: .4byte 0x0003FFD0
_08055FD8: .4byte gUnk_02000030
_08055FDC: .4byte gUnk_080B2CD8
_08055FE0: .4byte sub_080B197C
_08055FE4: .4byte gUnk_030056F0
_08055FE8: .4byte gUnk_080B2CD8
_08055FEC: .4byte gUnk_080B2CD8
_08055FF0: .4byte gUnk_02038560
