#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#---------------------------------------
:<<end_of_comments


 
 
 
 
 
Профиль:  Аноним  ( вход  |  регистрация ) 

 
 
 
 
 
 

 
 
 
 
  НОВОСТИ  ( + )
 
   КОНТЕНТ 
 
   WIKI 
 
    MAN'ы 
 
    ФОРУМ 
 
 Поиск  ( теги )
 
 
 

 

           
 
 

 
 
 
 
 
 
 
 [  новости  / +++  |  форум  |  wiki  |  теги 
|  
] 
 
 
 
 


 
 
 
 
 
 
 
 
 
 

 Интерактивная система просмотра системных руководств (man-ов) 
  
 
 
 

 
   Тема Набор Категория   
 

  
 Solaris man
 FreeBSD man
 Разные man
 Русские man
 Linux man
 POSIX man
 
 
	   All
	   1
	   2
	   3
	   4
	   5
	   6
	   7
	   8
	   9
 

 
 
  [ Cписок руководств  |  Печать ] 
 
 
 
 xmdomain.cfg (8)   xmdomain.cfg  (5)   ( Linux man: Форматы файлов ) >>  xmdomain.cfg  (8)   ( Русские man: Команды системного администрирования ) 
{{header}}
{{xg-scale-part}}
{{translator-igorchubin}}
Оригинал:  http://linux.die.net/man/5/xmdomain.cfg 
 
   
  Имя  

 

 
xmdomain.cfg - формат конфигурационного файла домена xm
 
   
  Синтаксис  

 

 
 
 
/etc/xen/myxendomain
/etc/xen/myxendomain2
/etc/xen/auto/myxenautostarted

 

 

 
   
  Описание  

 

 
The  xm (1) program uses python executable config files to define domains to create from scratch. Each of these config files 
needs to contain a number of required options, and may specify many more. 
Domain configuration files live in /etc/xen by default, if you store config files anywhere else the full path to the config 
file must be specified in the xm create command. 
/etc/xen/auto is a special case. Domain config files in that directory will be started automatically at system boot if the 
xendomain init script is enabled. The contents of /etc/xen/auto should be symlinks to files in /etc/xen to allow xm create 
to be used without full paths. 
Options are specified by name = value statements in the xmdomain.cfg files.
 
   
  Опции  

 

 
The following lists the most commonly used options for a domain config file.
 
kernel
 
 
     The kernel image for the domain. The format of the parameter is the fully qualified path to the kernel image file, i.e. /boot/vmlinuz-2.6.12-xenU. 

 

 

ramdisk
 
 
     The initial ramdisk for the domain. The format of the parameter is the fully qualified path to the initrd, i.e. /boot/initrd.gz. 
On many Linux distros you will not need a ramdisk if using the default xen kernel. 
 

 

memory
 
 
     The amount of RAM , in megabytes, to allocate to the domain when it starts. Allocating insufficient memory for a domain may 
produce extremely bizarre behavior. If there isn't enough free memory left on the machine to fulfill this request, the domain 
will fail to start. 
    Xen does not support overcommit of memory, so the total memory of all guests (+ 64 MB needed for Xen) must be less than or equal 
to the physical RAM in the machine. 
 

 

name
 
 
     A unique name for the domain. Attempting to create two domains with the same name will cause an error. 
 

 

root
 
 
     Specifies the root device for the domain. This is required for Linux domains, and possibly other OSes. 
 

 

nics
 
 
     The number of network interfaces allocated to the domain on boot. It defaults to 1. 

 

 

disk
 
 
     An array of block device stanzas, in the form:

    disk = [ "stanza1", "stanza2", ... ]

    Each stanza has 3 terms, separated by commas, "backend-dev,frontend-dev,mode". 
    backend-dev 
    The device in the backend domain that will be exported to the guest (frontend) domain. Supported formats include: 
    phy:device - export the physical device listed. The device can be in symbolic form, as in sda7, or as the hex major/minor 
number, as in 0x301 (which is hda1). 
     file://path/to/file  - export the file listed as a loopback device. This will take care of the loopback setup before exporting 
the device.     frontend-dev 
    How the device should appear in the guest domain. The device can be in symbolic form, as in sda7, or as the hex major/minor number, 
as in 0x301 (which is hda1).     mode 
    The access mode for the device. There are currently 2 valid options, r (read-only), w (read/write). 
 

 

vif
 
An array of virtual interface stanzas in the form:
 
 
     vif = [ "stanza1", "stanza2", ... ]

    Each stanza specifies a set of name = value options separated by commas, in the form: "name1=value1, name2=value2, ..." 

    OPTIONS 
    bridge 
    The network bridge to be used for this device. This is especially needed if multiple bridges exist on the machine.     mac

    The MAC address for the virtual interface. If mac is not specified, one will be randomly chosen by xen with the 00:16:3e vendor 
id prefix. 
 

 

ADDITIONAL OPTIONS
 
The following options are also supported in the config file, though are far more rarely used.
 
builder
 
 
     Which builder should be used to construct the domain. This defaults to the linux if not specified, which is the builder for 
paravirtualized Linux domains. 
 

 

cpu
 
Specifies which CPU the domain should be started on, where 0 specifies the first cpu, 1 the second, and so on. This defaults 
to -1, which means Xen is free to pick which CPU to start on. cpus
 
 
     Specifies a list of CPUs on which the domains' VCPUs are allowed to execute upon. The syntax supports ranges (0-3), and negation, 
^1. For instance: 
    cpus = "0-3,5,^1"

    Will result in CPUs 0, 2, 3, 5 being available for use by the domain. 

 

 

extra
 
 
     Extra information to append to the end of the kernel parameter line. The format is a string, the contents of which can be anything 
that the kernel supports. For instance: 
    extra = "4"

    Will cause the domain to boot to runlevel 4. 

 

 

nfs_server
 
 
     The IP address of the NFS server to use as the root device for the domain. In order to do this you'll need to specify root=/dev/nfs, 
and specify nfs_root. 
 

 

nfs_root
 
 
     The directory on the NFS server to be used as the root filesystem. Specified as a fully qualified path, i.e. /full/path/to/root/dir. 

 

 

vcpus
 
 
     The number of virtual cpus to allocate to the domain. In order to use this the xen kernel must be compiled with SMP support. 

    This defaults to 1, meaning running the domain as a UP . 

 

 

 
   
  Опции выключения домена  

 

 
There are 3 options which control domain shutdown (both planned and unplanned) under certain events. The 3 events currently 
captured are: 
on_shutdown
 
 
     Triggered on either an xm shutdown or graceful shutdown from inside the DomU. 

 

 

on_reboot
 
 
     Triggered on either an xm reboot or graceful reboot from inside the DomU. 

 

 

on_crash
 
 
     Triggered when a DomU goes to the crashed state for any reason. 

 

 

All of them take one of 4 valid states listed below.
destroy
 
 
     The domain will be cleaned up completely. No attempt at respawning will occur. This is what a typical shutdown would look 
like. 
 

 

restart
 
 
     The domain will be restarted with the same name as the old domain. This is what a typical reboot would look like. 
 

 

preserve
 
 
     The domain will not be cleaned up at all. This is often useful for crash state domains which ensures that enough evidence is 
to debug the real issue. 
 

 

rename-restart
 
 
     The old domain will not be cleaned up, but will be renamed so a new domain can be restarted in it's place. The old domain will 
be renamed with a suffix -1, -2, etc, and assigned a new random UUID ; the new domain will keep the original name and UUID . 
The old domain will release the devices that it holds, so that the new one may take them. 
 

 

 
   
  Примеры  

 

 
The following are quick examples of ways that domains might be configured. They should not be considered an exhaustive set. 
 
A Loopback File as Root
 
 
     kernel = "/boot/vmlinuz-2.6-xenU"
    memory = 128
    name = "MyLinux"
    root = "/dev/hda1 ro"
    disk = [ "file:/var/xen/mylinux.img,hda1,w" ]

    This creates a domain called MyLinux with 128 MB of memory using a default xen kernel, and the file /var/xen/mylinux.img 
loopback mounted at hda1, which is the root filesystem. 
 

 

 
   
  См. также  

 

 
 xm (1)
 
   
 Автор 

 

 
 

   *  Sean Dague <sean at dague dot net>
 
   
  Перевод  

 

 
 

   *  Игорь Чубин <igor ar chub.in>
 
   
 Ошибки 

 

 
   
 Упоминание на страницах 

 

 virsh (1)
 
   
  Перевод  

 

 
 

   *  Игорь Чубин <igor ar chub.in>
 

 
   Index 
 
  Имя  
  Синтаксис  
  Описание  
  Опции  
  Опции выключения домена  
  Примеры  
  См. также  
 Автор 
  Перевод  
 Ошибки 
 Упоминание на страницах 
  Перевод  
 
 
 
 
 
 Поиск по тексту MAN-ов:  
 
 
 
 
 
 
 
 
 
 
 


 
 


 
 
 
 
 
Спонсоры:
 
 
 
 
 
 
 
 
Хостинг:
 

 

 


 
 
 
 Закладки на сайте 
 Проследить за страницей 
 
 
Created 1996-2021 by  Maxim Chirkov 
 Добавить ,  Поддержать ,  Вебмастеру 
 
 
 
 


 
 
 






end_of_comments
#---------------------------------------

unset filename