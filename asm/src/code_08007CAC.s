	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

// TODO cannot add this at the end of mapActTileToSurfaceType.c due to alignment?
.2byte 0

// TODO unused? might also be code?
gUnk_08007DBE:: @ 08007DBE
	.byte 0x42, 0x7b, 0x01, 0x32, 0x42, 0x73, 0x70, 0x47, 0x02, 0x73, 0x00, 0x23, 0x43, 0x73, 0x0b, 0x73

	// seems unused?
	non_word_aligned_thumb_func_start sub_08007DCE
sub_08007DCE:
	push {lr}
	bl DoPlayerAction
	pop {pc}


// Searches for a KeyValuePair with the key in the keyValuePairList and returns its value. Returns 0 if the key is not found.
// r0: key
// r1: keyValuePairList
	non_word_aligned_thumb_func_start FindValueForKey
FindValueForKey: @ 0x08007DD6
	push {lr}
	bl FindEntryForKey
	adds r0, r3, #0 // move the found value into r0
	pop {pc}

	thumb_func_start FindEntryForKey
FindEntryForKey: @ 0x08007DE0
	subs r1, #4
_08007DE2:
	adds r1, #4	// add +4 to r1 at the end of loop
	ldrh r3, [r1] // r3: key
	cmp r3, #0
	beq _08007DF2 // key == 0 -> end of map
	cmp r0, r3
	bne _08007DE2 // r3 == r0 -> found
	ldrh r3, [r1, #2] // r3: value
	movs r2, #1 // r2 = 1
_08007DF2:
	bx lr
