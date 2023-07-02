SDCC = sdcc
STCCODESIZE = 2048
SDCCOPTS = -mmcs51 --opt-code-size --code-size $(STCCODESIZE)
TARGET = main
BUILDDIR = build

RM = rm -f
CP = cp
DIRSEP = /
RMDIR = rmdir

all: $(BUILDDIR) $(TARGET)

$(BUILDDIR):
	@mkdir $@

$(TARGET): src/$(TARGET).c
	$(SDCC) -o build/ src/$@.c $(SDCCOPTS)
	@$(CP) $(BUILDDIR)$(DIRSEP)$@.ihx main.hex

clean:
	@$(RM) "$(BUILDDIR)$(DIRSEP)*"
	@$(RMDIR) "$(BUILDDIR)"
