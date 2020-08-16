GFXDIR := graphics

$(GFXDIR)/intro/nintendo_capcom.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 123

$(GFXDIR)/font.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 2005

$(GFXDIR)/pot_portal.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 144