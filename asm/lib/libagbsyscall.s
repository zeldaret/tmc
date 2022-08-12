	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start BgAffineSet
BgAffineSet: @ 0x080B14C4
	svc #0xe
	bx lr

	thumb_func_start CpuSet
CpuSet: @ 0x080B14C8
	svc #0xb
	bx lr

	thumb_func_start Div
Div: @ 0x080B14CC
	svc #6
	bx lr

	thumb_func_start Mod
Mod: @ 0x080B14D0
	svc #6
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start LZ77UnCompVram
LZ77UnCompVram: @ 0x080B14D8
	svc #0x12
	bx lr

	thumb_func_start LZ77UnCompWram
LZ77UnCompWram: @ 0x080B14DC
	svc #0x11
	bx lr

	thumb_func_start ObjAffineSet
ObjAffineSet: @ 0x080B14E0
	svc #0xf
	bx lr

	thumb_func_start RegisterRamReset
RegisterRamReset: @ 0x080B14E4
	svc #1
	bx lr

	thumb_func_start SoundBiasReset
SoundBiasReset: @ 0x080B14E8
	movs r0, #0
	svc #0x19
	bx lr
	.align 2, 0

	thumb_func_start SoundBiasSet
SoundBiasSet: @ 0x080B14F0
	movs r0, #1
	svc #0x19
	bx lr
	.align 2, 0

	thumb_func_start Sqrt
Sqrt: @ 0x080B14F8
	svc #8
	bx lr

	thumb_func_start VBlankIntrWait
VBlankIntrWait: @ 0x080B14FC
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0

	thumb_func_start SoftReset
SoftReset: @ 0x080B1504
	ldr r3, _080B1518 @ =0x04000208
	movs r2, #0
	strb r2, [r3]
	ldr r3, _080B151C @ =soft_reset_flag
	movs r2, #0
	strb r2, [r3]
	subs r3, #0xfa
	mov sp, r3
	svc #1
	svc #0
	.align 2, 0
_080B1518: .4byte 0x04000208
_080B151C: .4byte soft_reset_flag
