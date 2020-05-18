	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	arm_func_start __start
__start: @ 0x08000000
	b _080000C0
_08000004:
	.include "asm/rom_header.inc"
_080000C0:
	mov r0, #0x12
	msr cpsr_fc, r0
	ldr sp, _080000F4 @ =gUnk_03007FA0
	mov r0, #0x1f
	msr cpsr_fc, r0
	ldr sp, _080000F8 @ =gUnk_03007F00
	ldr r1, _080000FC @ =0x03007FFC
	ldr r0, _08000100 @ =gUnk_03005D90
	str r0, [r1]
	ldr r1, _08000104 @ =MainLoop
	mov lr, pc
	bx r1
_080000F0:
	b _080000C0
_080000F4: .4byte gUnk_03007FA0
_080000F8: .4byte gUnk_03007F00
_080000FC: .4byte 0x03007FFC
_08000100: .4byte gUnk_03005D90
_08000104: .4byte MainLoop
