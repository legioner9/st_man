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
 
 
 
 qemu (8)   qemu  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) >>  qemu  (8)   ( Русские man: Команды системного администрирования ) Ключ  qemu  обнаружен в базе ключевых слов. 
Исходная версия: man:orig:qemu
 
   
 Имя 

 

qemu-doc - документация пользователя QEMU
 
   
 Синтаксис 

 

 
  использование:  qemu  [ options ] [ disk_image ]
 

 
   
 Описание 

 

 
В QEMU симулируется работа следующих периферийных устройств:
 
 

   *  PCI-мост i440FX и мост PCI-ISA PIIX3
 

   *  VGA-карта Cirrus CLGD 5446 PCI или dummy VGA-карта с расширениями VESA от Bochs (на аппаратном уровне, включая все нестандартные 
режимы) .br
   *  Мышь и клавиатура PS/2
 

   *  2 IDE-интерфейса с поддержкой жёсткого диска и CD-ROM'а
 

   *  Floppy-диск
 

   *  Сетевые адаптеры PCI/ISA PCI
 

   *  Последовательные порты
 

   *  Звуковая карта Creative SoundBlaster 16
 

   *  Звуковая карта ENSONIQ AudioPCI ES1370
 

   *  Adlib(OPL2)  чип совместимый с Yamaha YM3812
 

   *  Контроллер PCI UHCI USB и виртуальный USB-хаб.
 
Поддерживается многопроцессорность; до 255 процессоров.
 
Следует иметь в виду, что adlib доступен только в случае, когда QEMU был собран с ключом 
 
 -enable-adlib
 

 

 
В QEMU используется PC BIOS из проекта Bochs и VGA BIOS из проекта Plex86/Bochs, распространяющаяся по LGPL. 
В QEMU используется эмуляция YM3812 от Tatsuyuki Satoh.
 
   
 Опции 

 

Параметр  disk_image   это образ жёсткого диска для жёсткого диска 0 с интерфейсом IDE.
 
   
 Общие опции 

 

 
 
 -M machine 

 
 

            Выбрать эмулируемую машину ("-M ?" покажет список)
 
 -fda file 

 
 -fdb file 

 
 

            Использовать образ для флоппи-диска 0/1.  Можно использовать флоппи-дисковод хост-системы, если указать .RS
 /dev/fd0
 


  в качестве имени файла.
 
 -hda file 

 
 -hdb file 

 
 -hdc file 

 
 -hdd file 

 
 

            Использовать  file  как образ жёсткого диска 0, 1, 2 или 3.
 
 -cdrom file 

 
 

            Использовать файл как образ CD-ROM (нельзя использовать -hdc и -cdrom одновременно).  Для того чтобы использовать 
CD-ROM хост-системы, нужно указать в качестве имени файл .RS
 /dev/cdrom
 


 
 -drive option[,option[,option[,...]]] 

 
 

            Описать новый диск. Допустимые опции:
 
 
 
 file=file 

 
 
    Опция определяет, какой образ использовать для какого диска.
 

 
 

 
 
 if=interface 

 
 
     Опция указывает через интерфейс какого типа подключён диск.  Доступные типы:  ide, scsi, sd, mtd, floppy, pflash. .RE
 

 
 
 bus=bus,unit=unit 

 
 
     Опция указывает куда именно подключён диск, к какой шине (bus) и под каким номером (unit).
 

 
 

 
 
 index=index 

 
 
     Опция указывает куда подключен диск при помощи номера в списке доступных коннекторов интерфейса заданного типа. .RE
 

 
 
 media=media 

 
 
     Опция определяет тип носителя: disk или cdrom.
 

 
 

 
 
 cyls=c,heads=h,secs=s[,trans=t] 

 
 
     У этих опций такой же смысл, как при использовании с 
 
 -hdachs
 

 

 
 

 
 

 
 
 snapshot=snapshot 

 
 
     snapshot включен ("on") или выключен ("off"),  позволяет включить создание снапшотов для заданных дисков (см. .RS
 -snapshot
 

 

).
 
 

 
 

 
 
 cache=cache 

 
 
     кэш включен или выключен ("on" или "off"), что указывает нужно ли использовать кэш хост-системы при доступе к данным. 
 

 
 

 
 
 format=format 

 
 
     Указать явным образ формат дисков и не использовать автоопределение.  Может использоваться для того чтобы указать .RS
 format=raw
 

 

, чтобы не интерпретировать заголовок формата, когда в нём нет уверенности.
 
 

 
 

 
Вместо 
 
 -cdrom
 

 

  можно использовать:
 
qemu -drive file=file,index=2,media=cdrom
 
 
  Вместо 
 
 -hda
 

 

, 
 
 -hdb
 

 

, 
 
 -hdc
 

 

, 
 
 -hdd
 

 

  можно использовать:
 

 
 
         qemu -drive file=file,index=0,media=disk
        qemu -drive file=file,index=1,media=disk
        qemu -drive file=file,index=2,media=disk
        qemu -drive file=file,index=3,media=disk

 

 

 
  CDROM можно подключать как slave на ide0:
 

 
 
         qemu -drive file=file,if=ide,index=1,media=cdrom

 

 

 
  Если аргумент "file=" не указывается, привод считается пустым:
 

 
 
         qemu -drive if=ide,index=1,media=cdrom

 

 

 
  Можно подсоединить SCSI-диск с ID 6 на шине #0:
 

 
 
         qemu -drive file=file,if=scsi,bus=0,unit=6

 

 

 
  Вместо 
 
 -fda
 

 

, 
 
 -fdb
 

 

  можно использовать:
 

 
 
         qemu -drive file=file,index=0,if=floppy
        qemu -drive file=file,index=1,if=floppy

 

 

 
  По умолчанию используется интерфейс IDE, а индекс автоматически увеличивается:
 

 
 
         qemu -drive file=a -drive file=b"

 

 

 
  интерпретируется как:
 

 
 
         qemu -hda a -hdb b

 

 

 
 
 -boot [a|c|d|n] 

 
 
            Загружаться с floppy (a), жёсткого диска (c), CD-ROM (d) или Etherboot (n).  По умолчанию загрузка выполняется с жёсткого 
диска. .RE
 

 
 
 -snapshot 

 
 
            Выполнять запись во временные файлы вместо фалов образа диска.  В этом случае на используемый образ диска запись не выполняется. 
  Запись можно выполнить принудительно нажатием C-a s. .RE
 

 
 
 -no-fd-bootchk 

 
 
            Отключает в Bochs BIOS проверку загрузочной записи для floppy-дисков.  Может потребоваться для загрузки со старых floppy-дисков. 
 

 
 

 
 
 -m megs 

 
 
            Задаёт объём виртуальной памяти равным  megs  мегабайтов. По умолчанию 128 MiB.
 

 
 

 
 
 -smp n 

 
 
            Симулирует многопроцессорную систему с 
 
 n
 

 

  процессорами. Для PC поддерживается до 255 процессоров; для Sparc32 Linux ограничивает количество процессоров, которые 
можно использовать, четырьмя. .RE
 

 
 
 -audio-help 

 
 
            Показывает справку по аудио-подсистеме: список драйверов и настраиваемых параметров.
 

 
 

 
 
 -soundhw card1[,card2,...] or -soundhw all 

 
 
  Включить поддержку выбранного звукового устройства. Для того чтобы посмотреть список всех доступных устройств, используйте 
? .RE
 

 
 
         qemu -soundhw sb16,adlib hda
        qemu -soundhw es1370 hda
        qemu -soundhw all hda
        qemu -soundhw ?

 

 

 
 
 -localtime 

 
 
            Установить часы реального времени (real time clock) по локальному времени (по умолчанию устанавливается в UTC).  Опция 
необходима для того, чтобы время шло правильно в системах MS-DOS и Windows. .RE
 

 
 
 -startdate date 

 
 
            Установить начальное значение для часов реального времени (real time clock). Допустимые форматы даты: "now" или "2006-06-17T16:01:21", 
или "2006-06-17".  Значение по умолчанию: "now". .RE
 

 
 
 -pidfile file 

 
 
            Сохранить PID процесса QEMU в файле  file . Полезно при запуске QEMU из скрипта.
 

 
 

 
 
 -daemonize 

 
 
            Демонизировать процесс QEMU после инициализации.  QEMU не будет отключаться от стандартных потоков, до тех пор пока не 
будет готов к соединениям через другие устройства.  Опция полезна в случаях, когда QEMU запускается другими процессами, 
которые не хотят заниматься устранением гонок в ходе инициализации. .RE
 

 
 
 -win2k-hack 

 
 
            Используется при инсталляции Windows 2000, для того чтобы обойти баг с переполнением диска (disk full bug). После того 
как инсталляция завершена, эту опцию можно не использовать (при её использовании передача данных по IDE замедляется). 
 

 
 

 
 
 -option-rom file 

 
 
            Загружает содержимое файла как опциональный ROM.  Опция может быть полезной для загрузки таких вещей как EtherBoot. .RE
 

 
 
 -name name 

 
 
            Задать имя гостевой системы. Имя будет отображаться в заголовке окна SDL.  Имя также используется для VNC-сервера. .RE
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
   
 Опции визуализации 

 

 
 
 -nographic 

 
 

            В нормальном режиме QEMU использует SDL для VGA-вывода.  Используя эту опцию, можно вообще отключить графический вывод 
как таковой, так чтобы QEMU стало обычным консольным приложением.  Эмулируемый последовательный порт перенаправляется 
на консоль. Следовательно, QEMU в этом режиме можно использовать для отладки ядра Linux через последовательную консоль. 
 
 -curses 

 
 

  В нормально режим QEMU использует SDL для визуализации.  С этой опцией QEMU будет выводить VGA-вывод в текстовом режиме, 
используя интерфейс curses/ncurses. В графическом режиме ничего не выводится. 
 -no-frame 

 
 

  Не делать декоративное оформление вокруг SDL-окон. Использовать доступное пространство по максимуму. Это делает использование 
QEMU в выделенном окружении более удобным. 
 -full-screen 

 
 

  Запустить в полноэкранном режиме.
 
 -vnc display[,option[,option[,...]]] 

 
 

            По умолчанию, QEMU использует SDL для VGA-вывода. Используя эту опцию, можно заставить QEMU работать как VNC-сервер 
для экрана  display  и перенаправлять на этот сервер VGA-экран. Особенно полезно в этом режиме включить USB-планшет 
(опция -usbdevice tablet).  При использовании VNC-дисплея нужно использовать ключ -k, для того чтобы указать какая 
раскладка клавиатуры используется (при условии, что это не en-us).  Допустимый синтаксис параметра .RS
 display
 


  такой:
 
 
 
 interface:d 

 
 
                Будут разрешены только TCP-соединения через интерфейс 
 
 interface
 

 

  к экрану 
 
 d
 

 

   По соглашению используется TCP-порт с номером 5900+d. Интерфейс можно не указывать, тогда сервер привязывается ко всем 
интерфейсам. .RE
 

 
 
 unix:path 

 
 
                Разрешаются соединения через доменные гнёзда UNIX, где 
 
 path
 

 

  указывает местоположение соответствующего файла, через который прослушиваются соединения.
 

 
 

 
 
 none 

 
 
                VNC инициализируется, но не запускается. VNC-сервер можно будет запустить позже при помощи команды монитора  change . 
 

 
 

 
После значения 
 
 display
 

 

  могут указываться опциональные флаги, разделённые запятыми. Допустимые опции такие:
 
 
 
 password 

 
 
  Требует обязательной парольной аутентификации для клиентских соединений.
 

 
 

 
Пароль устанавливается отдельно с помощью команды 
 
 change
 

 

  в  pcsys_monitor .
 

 
 
 tls 

 
 
                Требует чтобы клиент при взаимодействии с VNC-сервером использовал TLS.  В этом случае используются анонимные TLS-credentials, 
поэтому сеанс уязвим для man-in-the-middle-атак.  Рекомендуется сочетать эту опцию с опциями x509 или x509verify. 
 

 
 

 
 
 x509=/path/to/certificate/dir 

 
 
                Может использоваться только в сочетании с опцией 
 
 tls
 

 

   Обозначает, что при установке TLS-сеанса необходимо использовать x509-credentials. Сервер отправит свой x509-сертификат 
клиенту. Рекомендуется чтобы на VNC-сервере был установлен пароль, который будет вводиться клиентом при подключении. 
  Путь, который идёт за опцией, указывает откуда должны загружаться x509-сертификаты. Подробнее о том, как генерируются 
сертификаты описано в разделе "vnc_security". .RE
 

 
 
 x509verify=/path/to/certificate/dir 

 
 
                Может использоваться только в сочетании с опцией 
 
 tls
 

 

   Обозначает, что при установке TLS-сеанса необходимо использовать x509-credentials. Сервер отправит свой x509-сертификат 
клиенту и попросит чтобы клиент прислал свой сертификат. Сервер проверит подлинность сертификата по сертификату CA, 
и если проверка не пройдёт, откажет клиенту.  Если к CA есть доверие, то этого механизма аутентификации достаточно. В качестве 
дополнительного уровня аутентификации можно использовать пароль. Путь, идущий за опцией, указывает откуда должны загружаться 
сертфикаты.  Подробнее о том, как генерируются сертификаты описано в разделе "vnc_security". .RE
 

 
 -k language 

 
 

            Использовать раскладку клавиатуры  language  (например, "fr" для французской).  Эта опция нужна только в тех случаях, 
когда не удаётся получить сырые коды клавиш (raw keycodes), например, на маке с некоторыми X-серверами или на VNC.  Обычно 
в Linux и Windows этот ключ не используется. 
 
            Доступные раскладки:
 

 
 
 
    ar  de-ch  es  fo     fr-ca  hu  ja  mk     no  pt-br  sv
    da  en-gb  et  fr     fr-ch  is  lt  nl     pl  ru     th
    de  en-us  fi  fr-be  hr     it  lv  nl-be  pt  sl     tr

 

 

 
 
  По умолчанию "en-us".
 

 
 
 
 
 
 
 
 
   
  Опции USB  

 

 
 -usb 

 
 

     Включить USB (скоро будет включено по умолчанию)
 
 -usbdevice devname 

 
 

     Добавить USB-устройство  devname .
 

      mouse 
 
 
         Виртуальная мышь. Перекрывает эмуляции мыши PS/2.
 

 

      tablet 
 
         Устройство позиционирования, имеющее абсолютные координаты (как тачскрин).  Это означает, что qemu сможет показывать 
правильные координаты мыши без её захвата. Перекрывает эмуляцию мыши PS/2. .RE
 

      disk:file 
 
         Устройства хранения (Mass storage device), основанные на файле  file 
 

 

      host:bus.addr 
 
         Пробросить внутрь устройство, имеющее в хост-системе идентификатор  bus.addr  (только для Linux). .RE
 

     host:vendor_id:product_id 
 
         Пробросить внутрь устройство, имеющее в хост-системе идентификатор  vendor_id:product_id  (только для Linux). 
 

 

      serial:[vendorid=vendor_id][,productid=product_id]:dev 
 
        serial-конвертер в символьное устройство хост-системы. О том какие устройства можно конвертировать см. в .RS
 -serial
 

 

 
 

 

      braille 
 
         Устройство Брайля. Использует BrlAPI для вывода на настоящее или подложное устройство Брайля. .RE
 

 
 
 
 
   
 Опции сети 

 

 
 
 -net nic[,vlan=n][,macaddr=addr][,model=type] 

 
 

           Создать новую сетевую карту и подсоединить её к VLAN n (n = 0 по умолчанию). По умолчанию на PC в качестве сетевой карты используется 
ne2k_pci.  MAC-адрес сетевой карты можно поменять при помощи .RS
 macaddr
 


   Если опция 
 
 -net
 

 

  не задана, создаётся одна карта.  Qemu может эмулировать несколько различных моделей сетевых карт.  Допустимые значения 
для  type : "i82551", "i82557b", "i82559er", "ne2k_pci", "ne2k_isa", "pcnet", "rtl8139", "smc91c111", "lance" 
и "mcf_fec".  Не все устройства поддерживаются на всех платформах. Просмотреть список поддерживаемых устройств можно 
при помощи .RS
 -net nic,model=?
 


 
 -net user[,vlan=n][,hostname=name] 

 
 

            Использовать пользовательский (user mode) сетевой стек, которому для работы не требуются привилегии администратора. 
  Можно использовать опцию hostname=name, которая укажет встроенному DHCP-серверу, какое имя отправить клиенту. 
 -net tap[,vlan=n][,fd=h][,ifname=name][,script=file] 

 
 

  Подключить TAP-интерфейс хост-системы к заданному VLAN n и настроить его с помощью сетевого скрипта.  По умолчанию используется 
сетевой скрипт .RS
 /etc/qemu-ifup
 


  Чтобы отключить исполнение скрипта, нужно указать script=no.  Если имя не задано, оно автоматически задаётся при помощи 
операционной системы.  Для того чтобы подключиться к уже открытому интерфейсу, используется fd=h, который указывает 
его дескриптор (handle). 
 
            

 

 

 
  Пример:
 

 
 
         qemu linux.img -net nic -net tap

 

 

 
  Более сложный пример (две сетевые карты, каждая подключена к TAP-устройству)
 

 
 
         qemu linux.img -net nic,vlan=0 -net tap,vlan=0,ifname=tap0 \
                   -net nic,vlan=1 -net tap,vlan=1,ifname=tap1

 

 

 -net socket[,vlan=n][,fd=h][,listen=[host]:port][,connect=host:port] 

 
 

            Соединяет VLAN n с VLAN другой виртуальной машины QEMU. Если задана опция listen, QEMU будет ждать входящего соединения 
на порту port (поле host опционально).  Опция connect указывает, что нужно подсоединиться к другому QEMU, который использует 
опцию listen. Опция fd=h задаёт уже открытый TCP-сокет. 
 
  Пример:
 

 
         # launch a first QEMU instance
        qemu linux.img -net nic,macaddr=52:54:00:12:34:56 \
                        -net socket,listen=:1234
        # connect the VLAN 0 of this instance to the VLAN 0
        # of the first instance
        qemu linux.img -net nic,macaddr=52:54:00:12:34:57 \
                        -net socket,connect=127.0.0.1:1234

 

 

 -net socket[,vlan=n][,fd=h][,mcast=maddr:port] 

 
 

            Создаёт VLAN n, разделяемый с другими QEMU через сокет многоадресной рассылки.  Получается общая шина для всех QEMU, которые 
используют один и тот же адрес и maddr и порт port. 
 
    ЗАМЕЧАНИЯ:
 

 
    1.  Можно запустить несколько QEMU на разных хостах, и сделать чтобы все они использовали общую шину (только для этого нужно 
выполнить настройку многоадресной рассылки, multicast, для этих хостов). .RE
 
    2.  Поддержка mcast совместима с User Mode Linux (аргумент ethN=mcast), подробнее:  http://user-mode-linux.sf.net  
 

 
    3.  Для того чтобы указать уже открытый multicast-сокет UDP используется 
 
 fd=h
 

 

 
 

 
    Пример:
 

 
 
         # launch one QEMU instance
        qemu linux.img -net nic,macaddr=52:54:00:12:34:56 \
                        -net socket,mcast=230.0.0.1:1234
        # launch another QEMU instance on same "bus"
        qemu linux.img -net nic,macaddr=52:54:00:12:34:57 \
                        -net socket,mcast=230.0.0.1:1234
        # launch yet another QEMU instance on same "bus"
        qemu linux.img -net nic,macaddr=52:54:00:12:34:58 \
                        -net socket,mcast=230.0.0.1:1234

 

 

 
  Пример (совместим с User Mode Linux):
 

 
 
         # launch QEMU instance (note mcast address selected
        # is UML's default)
        qemu linux.img -net nic,macaddr=52:54:00:12:34:56 \
                    -net socket,mcast=239.192.168.1:1102
        # launch UML
        /path/to/linux ubd0=/path/to/root_fs eth0=mcast

 

 

 
 -net none 

 
 

            Указывает, что сетевые устройства конфигурироваться не должны.  Используется чтобы перекрыть настройки по умолчанию 
(-net nic -net user), активирующиеся, если опцию -net не указывать вообще. 
 -tftp dir 

 
 

            При использовании пользовательского сетевого стека (user mode network stack), активировать встроенный TFTP-сервер. 
  Файлы в каталоге .RS
 dir/
 

 
 

  будут представлены в корне сервера.  TFTP-клиент в гостевой системе должен быть настроен на бинарный режим (используется 
команда "bin" TFTP-клиента Unix). IP-адрес гостевой системы, как и обычно, 10.0.2.2. 
 -bootp file 

 
 

            При использовании пользовательского сетевого стека (user mode network stack), передавать файл как имя файла для BOOTP. 
  В сочетании с -tftp, опция может использоваться для сетевой загрузки гостевой системы из локального каталога. 
 
  Пример (с использованием pxelinux):
 

 
 
         qemu -hda linux.img -boot n -tftp /path/to/tftp/files -bootp /pxelinux.0

 

 

 -smb dir 

 
 

  При использовании пользовательского сетевого стека (user mode network stack), активировать встроенный SMB-сервер, 
так чтобы Windows внутри гостевой системы могла прозрачно обращаться к файлам хост-системы. 
 
  В гостевой Windows-системе строку
 

 
 
         10.0.2.4 smbserver

 

 

 
  нужно добавить в файл C:\WINDOWS\LMHOSTS (для Windows 9x/Me) или C:\WINNT\SYSTEM32\DRIVERS\ETC\LMHOSTS (Windows 
NT/2000). .RE
 
  Каталог доступен как 
 
 \\smbserver\qemu
 

 

 
 

 
  Обратите внимание, что SAMBA-сервер должен быть установлен в хост-системе в 
 
 /usr/sbin/smbd
 

 

  QEMU тестировался с smbd версии 2.2.7a из Red Hat 9 и с smbd версии 3.0.10-1.fc3 из Fedora Core 3. .RE
 
 
 -redir [tcp|udp]:host-port:[guest-host]:guest-port   

 
 

            При использовании пользовательского сетевого стека (user mode network stack), перенаправлять входящие на хост и порт 
 
 host-port
 

 

  обращения TCP и UDP на гостевые хост 
 
 guest-host
 

 

  и порт 
 
 guest-port
 

 

   Если 
 
 guest-host
 

 

  не задан, его значение принимается равным 10.0.2.15 (адресу, который по умолчанию выдаётся встроенным DHCP-сервером). 
 
 
  Например, для того чтобы перенаправить соединение X11 с экрана 1 на гостевой экран 0, нужно использовать такие опции: .RE
 
 
         # on the host
        qemu -redir tcp:6001::6000 [...]
        # this host xterm should open in the guest X11 server
        xterm -display :1

 

 

 
  Для того чтобы перенаправить telnet-соединения с порта 5555 хоста на telnet-порт на гостевой системе, используйте 
опции: .RE
 
 
         # on the host
        qemu -redir tcp:5555::23 [...]
        telnet localhost 5555

 

 

 
  Теперь, когда на хост-системе вы даёте "telnet localhost 5555", вы попадаете на telnet-сервер гостевой системы. .RE
 
  Для Linux: При указании этой опции можно использовать заданное ядро Linux без его инсталляции на диск.  Это удобно для тестирования 
разных ядер Linux. .RE
 
 
 -kernel bzImage 

 
 

  Использовать bzImage в качестве ядра.
 
 -append cmdline 

 
 

  Использовать cmdline как командную строку ядра
 
 -initrd file 

 
 

  Использовать file как initrd (начальный виртуальный диск).
 
 
 
 
 
 
 
 
 
 
   
 Отладочные опции (для экспертов) 

 

 
 
 -serial dev 

 
 

            Перенаправить виртуальный последовательный порт на символьное устройство в хост-системе .RS
 dev
 


             По умолчанию используется "vc" в графическом режиме и "stdio" в не графическом.
 
 
            Опцию можно указывать несколько раз. Можно симулировать до 4 последовательных портов.
 

 
            Для того чтобы отключить все порты, используется "
 
 -serial none
 

 

".
 

 
            Доступные символьные устройства:
 

 
 
 
 

 
 vc[:WxH]
 

 

 
                Виртуальная консоль. Опционально, ширина и высота могут задаваться в символах:
 
                      
 
 vc:800x600
 

 

 
 

 

                Ширину и высоту можно также задавать в символах:
 
                      
 
 vc:80Cx24C
 

 

 
 

 

 
 

 
 
 
 

 
 pty
 

 

 
                [Только для Linux] Псевдотерминал (автоматически выделяется новый PTY)
 

 

 
 

 
 none
 

 

 
              Устройство не выделяется.
 

 
 

 
 
 
 

 
 null
 

 

 
                пустое (void) устройство
 

 
 

 
 
 
 

 
 /dev/XXX
 

 

 
                [Только для Linux] Использовать tty хост-системы, например, 
 
 /dev/ttyS0
 

 

  Параметры последовательного порта хост-системы устанавливаются в соответствии с параметрами эмулируемого порта. 
 

 
 

 
 
 
 

 
 /dev/parportN
 

 

 
                [Только для Linux, только для параллельного порта] Использовать параллельный порт N хост-системы. Можно использовать 
возможности SPP и EPP параллельных портов. .RE
 

 
 
 
 

 
 file:filename
 

 

 
                Записывать вывод в filename. Чтение невозможно.
 

 
 

 
 
 
 

 
 stdio
 

 

 
                [только для Unix] стандартный ввод/вывод.
 

 
 

 
 
 
 

 
 pipe:filename
 

 

 
                использовать канал (pipe) filename.
 

 
 

 
 
 
 

 
 COMn
 

 

 
                [Только для Windows] Использовать последовательный порт  n  хоста
 

 
 

 
 
 
 

 
 udp:[remote_host]:remote_port[@[src_ip]:src_port]
 

 

 
              Сетевая консоль UDP (UDP Net Console). Если не указать remote_host или src_ip, принимается значение 0.0.0.0. Если не задать 
src_port, выбирается случайный порт. .RE
 

 
 
              Если вам нужна простая readonly-консоль, можно использовать netcat или nc, нужно запустить qemu с ключами .RS
 -serial udp::4555
 

 

  и nc с ключами 
 
 nc -u -l -p 4555
 

 

  Как только QEMU выводит что-то на этот порт, оно появляется в сеансе netconsole. 
 

 
 

 
 
                Если вы хотите отправлять символы обратно через netconsole или хотите много раз
               запускать и останавливать qemu, надо сделать чтобы он использовать 
               один и тот же порт-источник при каждом вызове. Для этого указать опцию
               "-serial udp:: 4555@4556 " to qemu. Второй способ такой: использовать
               пропатченную версию netcat, которая может прослушивать TCP-порт
               и отправлять и получать данные по UDP. 
               Если у вас есть такая версия netcat
               (which activates telnet remote echo and single char
               transfer),
               можете использовать его, для того чтобы можно было telnet'ом
               на порт 5555 получить доступ к порту QEMU. 

               "Опции QEMU:"
                   -serial udp:: 4555@4556 

               "Опции netcat:"
                   -u -P 4555 -L 0.0.0.0:4556 -t -p 5555 -I -T

               "Опции telnet:"
                   localhost 5555

           "tcp:[host]:port[,server][,nowait][,nodelay]"
               У сетевой консоли TCP (TCP Net Console) есть два режима работы.
               Она может отправлять ввод/вывод в определённую точку,
               а может ждать подключения из определённой точки.
               По умолчанию сетевая консоль отправляет на определённый порт хоста.  
               Если указана опция 
 server
 

 

, QEMU будет ожидать клиентского подключения,
 
 
                и только когда оно произойдёт, продолжит работать,
               за исключение случая, когда указана опция "nowait".  Опция "nodelay"
               отключает алгоритм Нагеля.
               Если  host  не задан, подразумевается 0.0.0.0.
               Допускается не более одного TCP-соединения 
               одновременно.  К соответствующему символьному устройству устройству можно подключаться                через telnet. 

               "Пример, как отправить TCP-консоль на 192.168.0.2 порт 4444"
                   -serial tcp:192.168.0.2:4444

               "Пример, как слушать соединение на порту 4444"
                   -serial tcp::4444,server

               "Пример, как запустить сервер в режиме nowait на 192.168.0.100 порт 4444"
                   -serial tcp:192.168.0.100:4444,server,nowait

           "telnet:host:port[,server][,nowait][,nodelay]"
               Использовать протокол Telnet вместо простых TCP-сокетов.  
               Опция работает также как в случае, когда указана опция 
 -serial tcp
 

 

 
 
                The difference is that the port acts like a telnet server or
               client using telnet option negotiation.  This will also allow
               you to send the MAGIC_SYSRQ sequence if you use a telnet that
               supports sending the break sequence.  Typically in unix telnet
               you do it with Control-] and then type "send break" followed by
               pressing the enter key.

 

 

 
 
 
 

 
 unix:path[,server][,nowait]
 

 

 
                Использовать доменное гнездо Unix вместо TCP-сокета. Опция работает также как 
 
 -serial tcp
 

 

, за исключением того, что для соединения используется сокет 
 
 path
 

 

 
 

 
 

 
 
 
 

 
 <nowiki>"mon:dev_string"</nowiki>
 

 

 
                При помощи этой опции monitor можно вывести на другой последовательный порт.  Доступ к монитору осуществляется при нажатии 
комбинации клавиш Ctrl-a, а потом c.  Подробнее о доступе к монитору смотрите в разделе .RS
 pcsys_keys
 

 

  в описании ключа 
 
 -nographic
 

 

   В качестве строки 
 
 dev_string
 

 

  должно быть указано одно из последовательных устройств, описанных выше.  Пример, как можно переключить монитор на telnet-сервер, 
слушающий на порту 4444: .RE
 
 

 
 
                "-serial mon:telnet::4444,server,nowait"

 

 

 
 
 braille 

 
 
                Устройство Брайля. Для вывода Брайля будет использоваться BrlAPI.
 

 
 

 
 
 -parallel dev 

 
 

            Перенаправить вииртуальный параллельный порт на устройство хост-системы dev (те же устройства, что и для последовательного 
порта).  На Linux можно использовать .RS
 /dev/parportN
 

 
 

, который указывает на устройство, подключенное к соответствующему параллельному порту.
 
 
            Опцию можно задавать до трёх раз, для того чтобы эмулировать до трёх параллельных портов. .RE
 
            Для того чтобы выключить параллельные порты используется "-parallel none".
 

 
 
 -monitor dev 

 
 

            Перенаправить монитор на устройство dev в хост-системе (те же устройства, что и при выборе последовательного порта). 
  По умолчанию используется "vc" в графическом режиме и "stdio" в не графическом. 
 -echr numeric_ascii_value 

 
 

            Указать какой escape-символ будет переключать на монитор, когда монитор и последовательная консоль используют работают 
совместно.  По умолчанию при использовании опции .RS
 -nographic
 

 
 

  используется значение 0x01.  0x01 эквивалентно нажатию "Control-a".  Можно выбрать любые другие символы из управляющих 
символов ascii, где числа от 1 до 26 отображаются на клавиши от Control-a до Control-z.  Например, можно использовать 
любой из нижеприведённых вариантов для того чтобы повесить escape-символ на ctrl-t. 
 
            "-echr 0x14"
 
 

            "-echr 20"
 

 
 
 -s   

 
  Ожидать соединения gdb на порту 1234.
 
 -p port 

 
 

            Изменить порт соединения с gdb. Параметр  port  может быть или десятичным числом, указывающим TCP-порт, или файлом-устройством 
в хост-системе (те же устройства, что и для последовательного порта). 
 -S   

 
  Не запускать CPU сразу (для запуска нужно нажать "c" в мониторе).
 
 -d   

 
  Выводить журнал (log) в 
 
 /tmp/qemu.log
 

 

 
 -hdachs c,h,s,[,t] 

 
 

            Задать физическую геометрию для жёсткого диска 0 (1 <= c <= 16383, 1 <= h <= 16, 1 <= s <= 63) и, опционально, режим трансляции 
BIOS (t=none, lba или auto). Обычно QEMU может сам предположить значение этих параметров.  Опция используется для образов 
старых дисков MS-DOS. 
 -L path 

 
 

            Использовать заданный каталог path для BIOS, VGA BIOS и keymaps.
 
 -std-vga 

 
 

            Эмулировать стандартный VGA-адаптер с расширениями Bochs VBE (по умолчанию Cirrus Logic GD5446 PCI VGA). Если гостевая 
операционная система поддерживает VBE-расширения VESA 2.0 (например, Windows XP), и вы хотите использовать большие 
разрешения (>= 1280x1024x16), нужно включить эту опцию. 
 -no-acpi 

 
 

            Отключить поддержку ACPI (Advanced Configuration and Power Interface).  Нужно использовать только если у гостевых систем 
проблемы с ACPI (только при эмуляции PC). 
 -no-reboot 

 
 

            Завершиться вместо перезагрузки.
 
 -loadvm file 

 
 

            Начать с сохранённого ранее состояния ("loadvm" в мониторе)
 
 -semihosting 

 
 

            Включить эмуляцию semihosting syscall (только для ARM и M68K).
 
 
            На ARM это реализует интерфейс "Angel". На M68K через libgloss реализуется "ColdFire GDB". .RE
 
            Обратите внимание, что это позволяет гостевым системам напрямую обращаться к файловой системе хоста, поэтому такой метод 
можно использовать только с операционными системами, которым вы доверяете. .RE
 
В ходе графической эмуляции можно использовать такие комбинации клавиш:
 
 
 Ctrl-Alt-f 

 
 

            Переключиться в полноэкранный режим
 
 Ctrl-Alt-n 

 
 

            Переключиться на виртуальную консоль  n . Стандартная привязка консолей такая:
 
 
            1   Дисплей эмулируемой системы
 

 
            2   Монитор QEMU
 

 
            3   Последовательный порт
 

 
 Ctrl-Alt 

 
 

            Включить/выключить захват мыши и клавиатуры.
 
В виртуальных консолях, для того чтобы просмотреть более ранние записи, нужно использовать Ctrl-Up, Ctrl-Down, Ctrl-PageUp 
и Ctrl-PageDown. 
В ходе эмуляции, если используется опция 
 
 -nographic
 

 

, список терминальных команд можно получить при помощи Ctrl-a h:
 
 Ctrl-a h 

 
 

            Показать эту справку
 
 Ctrl-a x 

 
 

            Завершить эмулятор
 
 Ctrl-a s 

 
 

            Сохранить данные диска в файл (если -snapshot)
 
 Ctrl-a t 

 
 

            включить/выключить временные пометки при записи в консоли (console timestamps)
 
 Ctrl-a b 

 
 

            Отправить break (magic sysrq в Linux)
 
 Ctrl-a c 

 
 

            Переключиться между монитором и консолью
 
 Ctrl-a Ctrl-a 

 
 

            Отправить Ctrl-a
 
Эти опции специфичны для эмуляции PowerPC:
 
 -g WxH[xDEPTH] 

 
 

            Установить начальный VGA-режиме. По умолчанию 800x600x15.
 
 
  Эти опции относятся только к эмуляции Sparc32:
 

 
 -g WxHx[xDEPTH] 

 
 

            Установить начальный графический режим TCX. По умолчанию 1024x768x8, сейчас единственно возможный другой режим 1024x768x24. 
 
 -prom-env string 

 
 

            Установить в NVRAM переменные OpenBIOS, например:
 
 
                    qemu-system-sparc -prom-env 'auto-boot?=false' \
                    -prom-env 'boot-device=sd(0,2,0):d' -prom-env 'boot-args=linux single'

 

 

 -M [SS-5|SS-10|SS-20|SS-600MP|SS-2|SS-1000|SS-2000] 

 
 

            Установить тип эмулируемой машины. По умолчанию SS-5.
 
 
 
 
 
 
 


   
 См.также 

 

 
В документации по QEMU в формате HTML можно найти 
более полную и детальную информацию.
 
   
 Автор 

 

Фабрис Беллар (Fabrice Bellard)
 
   
  Перевод  

 

 
 

   *  Игорь Чубин <igor ar chub.in>
 

 
   Index 
 
 Имя 
 Синтаксис 
 Описание 
 Опции 
 
 Общие опции 
 Опции визуализации 
  Опции USB  
 Опции сети 
 Отладочные опции (для экспертов) 
 
 См.также 
 Автор 
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