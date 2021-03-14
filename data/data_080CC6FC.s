	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

	@ TODO convert .inc files into .s files and include them in linker.ld
	.include "data/const/enemy/gleerok.inc"
	.include "data/animations/enemy/gleerok.inc"

	.include "data/const/enemy/vaatiEyesMacro.inc"
	.include "data/animations/enemy/vaatiEyesMacro.inc"

	.include "data/const/enemy/tektite.inc"
	.include "data/animations/enemy/tektite.inc"

	.include "data/const/enemy/wizzrobeWind.inc"
	.include "data/animations/enemy/wizzrobeWind.inc"

	.include "data/const/enemy/wizzrobeFire.inc"
	.include "data/animations/enemy/wizzrobeFire.inc"

	.include "data/const/enemy/wizzrobeIce.inc"
	.include "data/animations/enemy/wizzrobeIce.inc"

	.include "data/const/enemy/armos.inc"
	.include "data/animations/enemy/armos.inc"

	.include "data/const/enemy/eyegore.inc"
	.include "data/animations/enemy/eyegore.inc"

	.include "data/const/enemy/rope.inc"
	.include "data/animations/enemy/rope.inc"

	.include "data/const/enemy/smallPesto.inc"

	.include "data/const/enemy/acroBandits.inc"
	.include "data/animations/enemy/acroBandits.inc"

	.include "data/const/enemy/keaton.inc"
	.include "data/animations/enemy/keaton.inc"

	.include "data/const/enemy/crow.inc"
	.include "data/animations/enemy/crow.inc"

	.include "data/const/enemy/mulldozer.inc"
	.include "data/animations/enemy/mulldozer.inc"

	.include "data/const/enemy/bombarossa.inc"
	.include "data/animations/enemy/bombarossa.inc"

	.include "data/const/enemy/wisp.inc"
	.include "data/animations/enemy/wisp.inc"

	.incbin "baserom.gba", 0x0CEBDC, 0x000010

	.include "data/const/enemy/spinyBeetle.inc"
	.include "data/animations/enemy/spinyBeetle.inc"

	.include "data/const/enemy/mazaalHead.inc"
	.include "data/animations/enemy/mazaalHead.inc"

	.include "data/const/enemy/mazaalMacro.inc"
	.include "data/animations/enemy/mazaalMacro.inc"

	.include "data/const/enemy/mazaalHand.inc"
	.include "data/animations/enemy/mazaalHand.inc"

	.include "data/const/enemy/octorokBoss.inc"
	.include "data/animations/enemy/octorokBoss.inc"

	.include "data/const/enemy/flyingPot.inc"

	.include "data/const/enemy/gibdo.inc"
	.include "data/animations/enemy/gibdo.inc"

	.include "data/const/enemy/octorokGolden.inc"

	.include "data/const/enemy/tektiteGolden.inc"

	.include "data/const/enemy/ropeGolden.inc"

	.include "data/const/enemy/cloudPiranha.inc"
	.include "data/animations/enemy/cloudPiranha.inc"

	.include "data/const/enemy/scissorsBeetle.inc"
	.include "data/animations/enemy/scissorsBeetle.inc"

	.include "data/const/enemy/cuccoAggr.inc"
	.include "data/animations/enemy/cuccoAggr.inc"

	.include "data/const/enemy/stalfos.inc"
	.include "data/animations/enemy/stalfos.inc"

	.include "data/const/enemy/flyingSkull.inc"
	.include "data/animations/enemy/flyingSkull.inc"

	.include "data/const/enemy/mazaalBracelet.inc"
	.include "data/animations/enemy/mazaalBracelet.inc"

	.include "data/const/enemy/takkuri.inc"

	.include "data/const/enemy/bowMoblin.inc"
	.include "data/animations/enemy/bowMoblin.inc"
