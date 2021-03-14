	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

	@ TODO convert .inc files into .s files and include them in linker.ld
	.include "data/gleerok.inc"
	.include "data/animations/gleerok.inc"

	.include "data/vaatiEyesMacro.inc"
	.include "data/animations/vaatiEyesMacro.inc"

	.include "data/tektite.inc"
	.include "data/animations/tektite.inc"

	.include "data/wizzrobeWind.inc"
	.include "data/animations/wizzrobeWind.inc"

	.include "data/wizzrobeFire.inc"
	.include "data/animations/wizzrobeFire.inc"

	.include "data/wizzrobeIce.inc"
	.include "data/animations/wizzrobeIce.inc"

	.include "data/armos.inc"
	.include "data/animations/armos.inc"

	.include "data/eyegore.inc"
	.include "data/animations/eyegore.inc"

	.include "data/rope.inc"
	.include "data/animations/rope.inc"

	.include "data/smallPesto.inc"

	.include "data/acroBandits.inc"
	.include "data/animations/acroBandits.inc"

	.include "data/keaton.inc"
	.include "data/animations/keaton.inc"

	.include "data/crow.inc"
	.include "data/animations/crow.inc"

	.include "data/mulldozer.inc"
	.include "data/animations/mulldozer.inc"

	.include "data/bombarossa.inc"
	.include "data/animations/bombarossa.inc"

	.include "data/wisp.inc"
	.include "data/animations/wisp.inc"

	.incbin "baserom.gba", 0x0CEBDC, 0x000010

	.include "data/spinyBeetle.inc"
	.include "data/animations/spinyBeetle.inc"

	.include "data/mazaalHead.inc"
	.include "data/animations/mazaalHead.inc"

	.include "data/mazaalMacro.inc"
	.include "data/animations/mazaalMacro.inc"

	.include "data/mazaalHand.inc"
	.include "data/animations/mazaalHand.inc"

	.include "data/octorokBoss.inc"
	.include "data/animations/octorokBoss.inc"

	.include "data/flyingPot.inc"

	.include "data/gibdo.inc"
	.include "data/animations/gibdo.inc"

	.include "data/octorokGolden.inc"

	.include "data/tektiteGolden.inc"

	.include "data/ropeGolden.inc"

	.include "data/cloudPiranha.inc"
	.include "data/animations/cloudPiranha.inc"

	.include "data/scissorsBeetle.inc"
	.include "data/animations/scissorsBeetle.inc"

	.include "data/cuccoAggr.inc"
	.include "data/animations/cuccoAggr.inc"

	.include "data/stalfos.inc"
	.include "data/animations/stalfos.inc"

	.include "data/flyingSkull.inc"
	.include "data/animations/flyingSkull.inc"

	.include "data/mazaalBracelet.inc"
	.include "data/animations/mazaalBracelet.inc"

	.include "data/takkuri.inc"

	.include "data/bowMoblin.inc"
	.include "data/animations/bowMoblin.inc"