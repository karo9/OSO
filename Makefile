ifneq ($(KERNELRELEASE),)
	obj-m := vudc.o
else
	KERNELDIR ?= /usr/src/linux-source
	PWD := $(shell pwd)

default:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules
endif

clean:
	rm -rf *.o *.ko modules.order Module.symvers *.mod.c .*.cmd

