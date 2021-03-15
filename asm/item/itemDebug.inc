	thumb_func_start ItemDebug
ItemDebug: @ 0x08075300
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08077BD4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
	pop {r4, r5, pc}
