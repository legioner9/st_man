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
 
 
 
 initrd (4) >>  initrd  (4)   ( Русские man: Специальные файлы /dev/* )   initrd  (4)   ( Linux man: Специальные файлы /dev/* ) Ключ  initrd  обнаружен в базе ключевых слов. 
   
 ИМЯ 

initrd - RAM-диск, инициализируемый загрузчиком



   
 ОПИСАНИЕ 

Специальный файл 
 /dev/initrd  

- это блочное устройство только для чтения.  
Устройство 
 /dev/initrd 

- это диск, расположенный в оперативной памяти, который инициализируется (т.е. загружается) загрузчиком до
запуска ядра.
Затем ядро может использовать содержимое блочного устройства 
 /dev/initrd 

для двухфазовой загрузки системы.
 

Во время первой фазы ядро запускает
и монтирует начальную корневую файловую систему из содержимого 
 /dev/initrd  

(например, RAM-диска, инициализируемого загрузчиком). 
Во время второй фазы из начального содержимого корневого устройства загружаются 
дополнительные драйвера или другие модули.  
После загрузки дополнительных модулей с другого устройства монтируется новая
корневая файловая система (т.е., нормальная корневая файловая система). 



   
 ДЕЙСТВИЯ ПРИ ЗАГРУЗКЕ  

При загрузке с 
 initrd , система загружается следующим образом:

 
 

1. Загрузчик загружает ядро и содержимое 
 /dev/initrd  в память.

 

2. При запуске ядра, оно разархивирует и копирует содержимое устройства 
 /dev/initrd 

на устройство 
 /dev/ram0 , 

а затем освобождает память, занятую 
 /dev/initrd .

 

3. Затем ядро монтирует устройство 
 /dev/ram0  

для чтения и записи в качестве начальной корневой файловой системы.
 

4. Если отображаемая нормальная корневая файловая система также является начальной корневой файловой системой 
(например, 
 /dev/ram0 ), 

то ядро переходит к последнему пункту для нормальной загрузки.
 

5. Если в начальной корневой файловой системе находится исполняемый файл 
 /linuxrc ,

он исполняется с uid 0.  
(Файл 
 /linuxrc 

должен иметь разрешения на исполнение.  
Файл 
 /linuxrc 

может быть любым допустимым исполняемым файлом, включая скрипт шелла.)  
 

6. Если 
 /linuxrc 

не выполняется или когда 
 /linuxrc 

заканчивает выполнение, монтируется нормальная корневая файловая система.  
(Если
 /linuxrc 

завершается с какой-либо файловой системой, монтированной на начальной корневой 
файловой системе, то поведение ядра 
 НЕ ОПРЕДЕЛЕНО. 

См. подробности о поведении текущей версии ядра в разделе 
 ПРИМЕЧАНИЯ .)

 

7. Если нормальная корневая файловая система имеет каталог 
 /initrd , то устройство

 /dev/ram0 

перемещается из 
 /  в  /initrd .

Иначе, если каталог   
 /initrd  не существует, устройство  /dev/ram0  размонтируется.

(При перемещении из 
 /  в  /initrd ,  /dev/ram0 

не размонтируется, и потому процессы с  
 /dev/ram0 

могут продолжать работать. Если каталог 
 /initrd 

не существует на нормальной корневой файловой системе 
и какие-либо процессы с
 /dev/ram0  продолжют выполняться после завершения  /linuxrc , 

то поведение ядра 
 НЕ ОПРЕДЕЛЕНО. 

См. подробности о поведении текущей версии ядра в разделе 
 ПРИМЕЧАНИЯ .)

 

8. На нормальной корневой файловой системе следует обычная процедура загрузки (например, вызов 
 /sbin/init ).



 
   
 ОПЦИИ 

Следующие опции загрузчика при использовании с 
 initrd , влияют на действия во время загрузки ядра:

 
 initrd= имя файла 

 
Определяет файл, который нужно загрузить в качестве содержимого 
 /dev/initrd .

Для  LOADLIN 

это опция командной строки.
Для  LILO  вы должны использовать эту команду в конфигурационном файле

 LILO  -  /etc/lilo.config .

Имя файла, определяемое этой 
опцией, обычно является образом файловой системы, сжатым программoй gzip.
 noinitrd 

 
Эта загрузочная опция отменяет двухфазную процедуру загрузки.
Ядро проделывает обычную процедуру загрузки так, если бы 
 /dev/initrd  

не был инициализировано. 
С этой опцией все содержимое 
 /dev/initrd ,  

загруженное в память загрузчиком, сохраняется.
Эта опция разрешает содержимому 
 /dev/initrd 

быть любыми данными, не ограничивая их образом файловой системы. 
Однако, устройство 
 /dev/initrd  

доступно только для чтения и может быть прочитано только один раз после запуска системы.
 root= имя устройства 

 
Определяет устройство, которое должно быть использовано в качестве нормальной корневой файловой системы. 
Для  LOADLIN 

это опция командной строки.
Для  LILO  это опция определяется во время загрузки или

строкой в конфигурационном файле  
 LILO  -  /etc/lilo.config .

Устройство, определяемое этой опцией, должно быть монтируемым 
устройством, имеющим подходящую корневую файловую систему.



 
   
 СМЕНА НОРМАЛЬНОЙ КОРНЕВОЙ ФАЙЛОВОЙ СИСТЕМЫ 

По умолчанию, 
конфигурация ядра 
(например, установленная в файле ядра с помощью 
 rdev 

или на этапе компиляции ядра)
или установки загрузчика 
используются определения нормальной корневой файловой системы.
Для NFS-монтируемой нормальной корневой файловой системы нужно использовать загрузочные опции 
 nfs_root_name  и  nfs_root_addrs 

для задания установок NFS. 
За дополнительной информацией по NSF-монтируемой корневой ФС обращайтесь к файлу документации к ядру
 nfsroot.txt .

Также дополнительная информация по установкам корневой файловой системы содержится в документации к 
 LILO  и  LOADLIN .

 

Кроме того, 
 /linuxrc 

может сменить нормальное корневое устройство.
Для того, чтобы  
 /linuxrc 

сменил это устройство, должен быть подмонтирован каталог 
 /proc .

После монтирования 
 /proc ,  /linuxrc 

сменяет нормальное корневое устройство, записывая установки в файлы proc 
 /proc/sys/kernel/real-root-dev , 

 /proc/sys/kernel/nfs-root-name , и 

 /proc/sys/kernel/nfs-root-addrs .

Что касается физического корневого устройства, оно меняется, если 
 /linuxrc 

записывает номер нового устройства корневой файловой системы в 
 /proc/sys/kernel/real-root-dev .

Для корневой файловой системы NSF корневое устройство меняется, если 
 /linuxrc 

записывает установки NSF в файлы 
 /proc/sys/kernel/nfs-root-name  и 

 /proc/sys/kernel/nfs-root-addrs , 

а затем записывает 0xff (например, номер псевдо-NFS-устройства) в файл 
 /proc/sys/kernel/real-root-dev .

Так, например, следующие команды изменят 
нормальное корневое устройство на 
 /dev/hdb1 :

         echo 0x365 >/proc/sys/kernel/real-root-dev
 

В качестве примера для NSF, следующие команды изменят 
нормальное корневое устройство на каталог NSF 
 /var/nfsroot 

на локальном сетевом NSF-сервере с IP-адресом 193.8.232.7 для системы с
IP-адресом 193.8.232.7 и именем 'idefix':
         echo /var/nfsroot >/proc/sys/kernel/nfs-root-name
        echo 193.8.232.2:193.8.232.7::255.255.255.0:idefix \
          >/proc/sys/kernel/nfs-root-addrs
        echo 255 >/proc/sys/kernel/real-root-dev
 



   
 ИСПОЛЬЗОВАНИЕ 

Основной причиной реализации 
 initrd 

была потребность в modular
 (***) 

конфигурации ядра во время инсталляции системы. 
 

Возможный сценарий инсталляции системы - следующий:
 
 

1. Загрузчик стартует с дискеты или другого носителя с минимальным ядром 
(например, включающим поддержку  
 /dev/ram ,  /dev/initrd , и файловой системы ext2) и загружает 

 /dev/initrd  с версией начальной файловой системы, упакованной программой gzip.

 

2. Исполняемый файл 
 /linuxrc 

определяет, (1) что необходимо, чтобы смонтировать нормальную корневую файловую систему 
(т.е., тип устройства, драйвера, файловую систему) и (2) носитель
дистрибутива (например, CD-ROM, сеть, лента, ...). Для этого может быть задан вопрос 
пользователю, или запущена авто-проверка или использован гибридный подход.
 

3. Исполняемый файл 
 /linuxrc 

загружает необходимые модули с начальной корневой файловой системы.
 

4. Исполняемый файл 
 /linuxrc 

создает и заполняет корневую файловую систему. (На этой стадии нормальная 
корневая файловая система еще не должна быть законченной системой.)
 

5. Исполняемый файл 
 /linuxrc  устанавливает  /proc/sys/kernel/real-root-dev, 

размонтирует 
 /proc , 

нормальную корневую файловую систему и все другие файловые 
системы, которые он монтировал, а затем завершает работу.
 

6. Затем ядро монтирует нормальную корневую файловую систему.
 

7. Теперь, поскольку файловая система доступна и полноценна,
может быть инстраллирован загрузчик.
 

8. Загрузчик конфигурируется так, чтобы загружать в 
 /dev/initrd 

файловую систему с набором модулей, которые были использованы в первый раз для поддержки системы. 
(например, устройство 
 /dev/ram0 

может быть модифицировано, затем размонтировано, и наконец, образ записывается из 
 /dev/ram0 

в файл.)
 

9. Система теперь может загружаться, и в процессе инсталляции могут осуществляться дополнительные 
действия.
 

 

Ключевая роль 
 /dev/initrd 

в вышеописанном механизме в повторном использовании данных конфигурации во время нормальных действий системы 
без необходимости начального выбора ядра, загрузки огромного общего ядра или
перекомиляции ядра.
 

Второй сценарий предназначен для установки Linux на системы с 
различной конфигурацией оборудования в одной административной сети. 
В таких случаях может быть желательно использовать лишь небольшой набор ядер
(в идеале - одно) и сделать специфическую для конкретной системы часть данных о конфигурации 
как можно меньшей по объему. 
В этом случае создайте общий файл 
со всеми необходимыми модулями. 
После этого, только файл 
 /linuxrc 

или файл, запускаемый 
 /linuxrc 

будет разным для разных конфигураций.
 

Третий сценарий предназначен для более удобных дисков восстановления системы. 
Поскольку информация, такая как расположение раздела корневой файловой системы 
не нужна во время начальной загрузки, загруженная с  
 /dev/initrd  

система может использовать диалоговый режим и/или автоопределение с последующей, 
возможно, проверкой "на дурака".
 

И наконец, дистрибутивы Linux на CD-ROM могут использовать 
 initrd 

для легкой инсталляции с CD-ROM.  
Дистрибутив может использовать 
 LOADLIN 

для непосредственной загрузки 
 /dev/initrd 

с CD-ROM без необходимости в дискетах.
Дистрибутив также может использовать загрузочную дискету 
 LILO 

и затем загрузить больший ram-диск с помощью 
 /dev/initrd  с CD-ROM.



   
 КОНФИГУРАЦИЯ 

 /dev/initrd  

- это блочное устройство только для чтения со 
старшим номером 1 и младшим номером 250.  
Обычно владельцем 
 /dev/initrd 

является 
 root.disk  

с правами доступа 0400 (доступ на чтение только для root).
Если в система на основе Linux не создано устройство 
 /dev/initrd , оно может быть создано следующими командами: 

 
        mknod -m 400 /dev/initrd b 1 250
        chown root:disk /dev/initrd
 
 

Также поддержка RAM-диска и начального RAM-диска 
(например,  
 CONFIG_BLK_DEV_RAM=y  и  CONFIG_BLK_DEV_INITRD=y 

) должна быть обеспечена соответствующими установками на этапе компиляции ядра, чтобы оно могло использовать 
 /dev/initrd .

При использовании 
 /dev/initrd 

драйвер RAM-диска не может быть загружен как модуль.



   
 ФАЙЛЫ 

 /dev/initrd 

 

 /dev/ram0 

 

 /linuxrc 

 

 /initrd 

   
 СМ. ТАКЖЕ 

 chown (1),

 mknod (1),

 /dev/ ram (4),

 freeramdisk (8),

 rdev (8),

Файл документации
 initrd.txt 

из пакета исходных текстов ядра, документацию LILO,
документацию LOADLIN, документацию SYSLINUX.



   
 ПРИМЕЧАНИЯ 

1. В текущем ядре все файловые системы, которые остаются смонтированными, когда 
 /dev/ram0  перемещается из  /  в  /initrd , 

остаются доступными. Между тем, элементы 
 /proc/mounts 

не обновляются. 
 

2. В текущем ядре если каталог 
 /initrd  не существует, то  /dev/ram0 

НЕ будет полностью размонтировано, если 
 /dev/ram0 

используется какими-либо процессами или на нем смонтирована какая-либо файловая система.
Если  
 /dev/ram0  НЕ размонтируется полностью, 

то  
 /dev/ram0 

остается в памяти.
 

3. При использовании 
 /dev/initrd 

не нужно полагаться на поведение, описанное в предыдущих примечаниях.  
Поведение ядра может измениться в будущих его версиях.



   
 АВТОР 

Код ядра для устройства 
 initrd 

был написан Werner Almesberger < almesber@lrc.epfl.ch > и
Hans Lermen < lermen@elserv.ffm.fgan.de >.
Код для
 initrd 

был добавлен в базовую версию ядра Linux в версии разработки 1.3.73.
 

 
   Index 
 
 ИМЯ 
 ОПИСАНИЕ 
 ДЕЙСТВИЯ ПРИ ЗАГРУЗКЕ  
 ОПЦИИ 
 СМЕНА НОРМАЛЬНОЙ КОРНЕВОЙ ФАЙЛОВОЙ СИСТЕМЫ 
 ИСПОЛЬЗОВАНИЕ 
 КОНФИГУРАЦИЯ 
 ФАЙЛЫ 
 СМ. ТАКЖЕ 
 ПРИМЕЧАНИЯ 
 АВТОР 
 
 
 
 
 
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