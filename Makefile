#
# Makefile for MMC/SD host controller drivers
#
KVERSION := $(shell uname -r)
KDIR := /lib/modules/$(KVERSION)/build M=$(PWD) modules

obj-m	+= sdhci.o
obj-m	+= sdhci-pci.o

all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

clean:
	rm -f *.o *.ko Module.symvers modules.order *.mod.c
