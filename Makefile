KERNEL_SRC?=~/jetson/Linux_for_Tegra/source/public/kernel/kernel-4.9
obj-m += ads1015.o

all: dtbo
	make -C $(KERNEL_SRC) M=$(PWD) modules

dtbo:
	dtc -O dtb -o ads1115-overlay.dtbo -@ ads1115-overlay.dts

clean:
	make -C $(KERNEL_SRC) M=$(PWD) clean
