GFXDIR := graphics

$(GFXDIR)/intro/nintendo_capcom.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 123

$(GFXDIR)/font.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(GFXDIR)/pot_portal.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(GFXDIR)/npc/postman.4bpp: %.4bpp: %.png
	$(GFX) $< $@

$(GFXDIR)/npc/malon.4bpp: %.4bpp: %.png
	$(GFX) $< $@
