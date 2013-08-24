#include config.mk

CONFIG_RTBTH = m
MOD_NAME = rtbth
obj-$(CONFIG_RTBTH) := $(MOD_NAME).o
$(MOD_NAME)-objs := rtbth_core_main.o \
					rtbth_core_init.o \
					rtbth_core_pci.o \
					rtbth_core_bluez.o \
					rtbth_core_us.o \
					rtbth_hlpr_hw.o \
					rtbth_hlpr_dbg.o \
					rtbth_hlpr_linux.o \
					
ccflags-y := -I$(src)/include
ccflags-y += -DDBG -DRT3298 -DRTBT_IFACE_PCI -DLINUX -DKTHREAD_SUPPORT

MAKE = make
LINUX_SRC ?= /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

all:
	$(MAKE)  -C $(LINUX_SRC) M=$(PWD) modules 

