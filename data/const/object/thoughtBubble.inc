ThoughtBubble_SFX:: @ 08122590
	.incbin "baserom.gba", 0x122590, 0x0000008

ThoughtBubble_Behaviors:: @ 08122598
	.4byte ThoughtBubble_Init
	.4byte ThoughtBubble_Update
