GFXDIR := graphics

$(GFXDIR)/intro/nintendo_capcom.4bpp: %.4bpp: %.png
	$(GFX) $< $@ -num_tiles 123
