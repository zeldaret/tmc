	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Mailbox_0:: @ 0810C814
	.include "animations/gSpriteAnimations_Mailbox_0.s"

gSpriteAnimations_Mailbox_4:: @ 0810C819
	.include "animations/gSpriteAnimations_Mailbox_4.s"

gSpriteAnimations_Mailbox_8:: @ 0810C84A
	.include "animations/gSpriteAnimations_Mailbox_8.s"

gSpriteAnimations_Mailbox:: @ 0810C868
	.4byte gSpriteAnimations_Mailbox_0
	.4byte gSpriteAnimations_Mailbox_0
	.4byte gSpriteAnimations_Mailbox_0
	.4byte gSpriteAnimations_Mailbox_0
	.4byte gSpriteAnimations_Mailbox_4
	.4byte gSpriteAnimations_Mailbox_4
	.4byte gSpriteAnimations_Mailbox_4
	.4byte gSpriteAnimations_Mailbox_4
	.4byte gSpriteAnimations_Mailbox_8
