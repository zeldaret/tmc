#include "global.h"

extern void sub_0801E104();
extern void DoFade(u32, u32);

void sub_08050024() 
{
	sub_0801E104();
	DoFade(5, 0x80 << 1);
	return;
}

	 
/* 	thumb_func_start sub_08050024
sub_08050024: @ 0x08050024
	push {lr}
	bl sub_0801E104
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #5
	bl DoFade
	pop {pc}
	.align 2, 0
	 */