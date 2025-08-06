load mmc 0:1 ${kernel_addr_r} /Image
load mmc 0:1 ${fdt_addr_r} /rk3566-orangepi-3b-v2.1.dtb
load mmc 0:1 ${ramdisk_addr_r} /uRamdisk

setenv bootargs "loglevel=8 earlycon=uart8250,mmio32,0xfe660000 console=ttyS2,1500000 root=/dev/ram0 rootwait androidboot.hardware=opi3b androidboot.selinux=permissive"
booti ${kernel_addr_r} ${ramdisk_addr_r} ${fdt_addr_r}
