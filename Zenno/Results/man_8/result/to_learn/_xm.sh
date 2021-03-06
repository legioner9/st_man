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
 
 
 
 xm (8)   xm  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   xm  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) >>  xm  (8)   ( Русские man: Команды системного администрирования ) 
{{header}}
{{xg-scale-part}}
{{translator-igorchubin}}
Оригинал:  http://linux.die.net/man/1/xm 
 
   
 Имя 

 

 
xm  пользовательский интерфейс для управления Xen
 
   
 Синтаксис 

 

 
xm <subcommand> [args]
 
   
 Описание 

 

 
Программа  xm   это главный интерфейс по управлению гостевыми доменами Xen.
С её помощью можно создавать, приостанавливать и останавливать домены, а также
просматривать список доменов, управлять количеством и привязкой виртуальных процессоров,
подключать и отключать виртуальные устройства.
 
Базовая структура любой xm-команды всегда одинаковая:
 
 
    xm <subcommand> <domain-id> [OPTIONS]

 

 

где  subcommand   одна из перечисленных ниже подкоманд,  domain-id   численный идентификатор или имя домена 
(которое может иметь внутреннюю привязку к идентификатору), а  OPTIONS   это опции, специфичные для подкоманды. 
Есть несколько исключений, когда  xm  действует на все домены, хост-систему или гипервизор Xen. Эти исключения 
подробно описаны ниже. 
   
 Замечания 

 

 
Все операции xm выполняются с помощью управляющего демона Xen, 
известного как  xend . 
Поэтому обычно  xend  запускают как службу во время загрузки машины.
 
Большинству xm-команд нужны привилегии суперпользователя,
для того чтобы пользоваться каналами связи с гипервизором.
Выполнение не от root'а обычно приводит к ошибке.
 
Большинство xm-команд  acинхронны , 
то есть, тот факт что команда завершилась вовсе не означает, 
что действие выполнено. Это важно, поскольку многие операции, такие как 
создание и завершение, могут занимать большое время (до 30 секунд и больше).
Если нужно знать, завершилось такое действие или нет, нужно опрашивать список  xm list .
 
   
 Подкоманды управления доменами 

 

 
Следующие подкоманды команды  xm 
манипулируют доменами напрямую. В качестве первого аргумента
передаётся имя или идентификатор домена.
 
   
 console 

 

 
 
    console domain-id

 

 

Подключиться к консоли домена  domain-id .
Если в домене есть консоль для подключения, 
она будет доступна по этой команде как обычно.
 
Здесь используется служба xenconsole, которая пока что работает только для паравиртуальных доменов.
 
Консоль. подключённая с помощью  xm console  ведётся себя 
как обычная последовательная консоль, поэтому не рекомендуется
запускать поверх этой консоли curses-интерфейсы.
Например, vi ведёт себя на ней весьма странно.
 
   
 create  

 

 
 
    create [-c] configfile [name=value]..

 

 

Подкоманда  create  должна вызываться с именем конфигурационного файла домена. Ей опционально могут передаваться 
пары значений, перекрывающих настройки конфигурационного файла. Подробности и возможные параметры 
 
 Name=Value
 

 

  смотрите в файле  xmdomain.cfg .
 
Имя конфигурационного файла может быть или абсолютным
или относительным к каталогу 
 
 /etc/xen
 

 

 
Команда завершается сразу же как домен запущен.
Это не имеет отношения к тому, загрузится ли 
операционная система в домене, или что она уже доступна для ввода.
 
Опции:
 
 
     -c

 

 

Как только домен запустится, подключить к нему консоль.
Может быть полезно при поиске причины, по которой падает
домен (если так происходит).
 
Примеры.
 
Создание домена с конфигурационным файлом:
 
 
     xm create Fedora4

 

 

Создаёт домен по конфигурационному файлу 
 
 /etc/xen/Fedora4/
 

 

 
Завершается, после того как домен будет создан.
 
Можно создавать домен и без конфигурационного файла:
 
 
     xm create /dev/null ramdisk=initrd.img \
       kernel=/boot/vmlinuz-2.6.12.6-xenU \
       name=ramdisk nics=0 vcpus=1 \
       memory=64 root=/dev/ram0

 

 

Домен создаётся без использования
конфигурационного файла (если быть более точным, 
то с использованием файла /dev/null
в качестве пустого конфигурационного файла),
используется указанное ядро и виртуальный диск, 
имя домена устанавливается равным  ramdisk ,
виртуальная сеть отключена.
 
(этот пример взят из пакета xm-test)
 
   
 destroy 

 

 
 
     destroy domain-id

 

 

Мгновенно завершить домен  domain-id .
У домена нет возможности как-то среагировать, т.е. результат
такой же, как выключение питания (если бы машина была не виртуальная,
а реальная).
В большинстве случаев нужно использовать не эту команду,
а  shutdown .
 
   
 domid 

 

 
 
     domid domain-name

 

 

Преобразует доменное имя в идентификатор домена.
 
   
 domname 

 

 
 
     domname domain-id

 

 

Преобразует идентификатор домена в доменное имя.
 
   
 help 

 

 
 
     help [--long]

 

 

Выводит короткое справочное сообщение (распростренённые команды).
 
Опция 
 
 --long
 

 

  выводит полный список сгруппированных по функциям  подкоманд  xm .
 
   
 list 

 

 
 
     list [--long | --label] [domain-id, ...]

 

 

Выводит информацию об одном или более домене.
Если имена доменов не указаны, выводится информация обо всех доменах.
 
Пример списка:
 
 
     Name                         ID Mem(MiB) VCPUs State  Time(s)
    Domain-0                      0       98     1 r-----  5068.6
    Fedora3                     164      128     1 r-----     7.6
    Fedora4                     165      128     1 ------     0.6
    Mandrake2006                166      128     1 -b----     3.6
    Mandrake10.2                167      128     1 ------     2.5
    Suse9.2                     168      100     1 ------     1.8

 

 

 

   *   Name   имя домена.
 

   *   ID   численный идентификатор домена.
 

   *   Mem   объём памяти, выделенный домену.
 

   *   VCPUS   количество виртуальных процессоров, выделенных домену.
 

   *   State   состояние домена (см. ниже).
 

   *   Time   время, которое домен потратил на исполнение.
 
Состояния:
 
В поле  State  указывается одно из 6 состояний Xen  то, в котором сейчас находится домен.
 
 
 r  - running 

 
 

    Домен в настоящий момент исполняется
 b  - blocked 

 
 

    Домен заблокирован, он не может выполняться. Это возможно из-за того что домен ждёт завершения операции ввода/вывода 
или находится в спящем состоянии, потому что у него нет никакой другой работы. .TP
 p  - paused 

 

     Домена остановелн. Как правило, это происходит по вызову  xm pause . В остановленном (paused) состоянии домен потребляет 
память и другие ресурсы, но процессор ему не выделяется. .TP
 s  - shutdown 

 

     Гостевой системе был отправлен запрос на завершение, перезагрузку или остановку и домен выполняет соответствующий процесс. 
 c  - crashed 

 
 

     Домен некорректно завершил работу (crashed). Это состояние может возникнуть только в случае, если не включен автоматический 
перезапуск домена при падении (crash). Подробности в .RS
 xmdomain.cfg
 


 
 d  - dying 

 
 

     Домен в процессе завершения (dying), но ещё не завершился. Возможно как корректное, так и не корректное завершение (shutdown 
или crash). 
 
     ПОДРОБНЫЙ ВЫВОД 

 

 

Если указана опция 
 
 --long
 

 

, вывод xm list будет не как таблица, показанная выше, а как S-выражение (S-Expression). Такой формат, главным образом, 
интересен внешним программа, которые выполняют разбор данных. 
{{note|text=
Нет гарантий что данные будут иметь всегда такой формат.
Так что иcпользуйте на свой страх и риск.
}}
 
 
     ВЫВОД МЕТОК

 

 

Если указан ключ 
 
 --label
 

 

, в выводе  xm list  присутствуют метки безопасности,
и вывод отсортирован по этим меткам (без учёта регистра). При использовании опции 
 
 --long
 

 

, 
метки выводятся и без того, и эту опцию нельзя использовать совместно с 
 
 --label
 

 

 
Подробности в разделе  Подкоманды управления доступом .
 
{{caution|text=
Колонка Time является обманчивой. Виртуальный ввод/вывод (блочные и сетевые устройства),
используемый доменами, требует координации со стороны домена 0, что означает, что домен 0
потребляет в том числе то время, которое ему нужно на организацию этого ввода/вывода.
Показатель Time является более ошибочным при более интенсивном вводе/выводе и менее ошибочным, 
когда основная нагрузка в гостевом домене приходится на процессор.
}}
 
 
   
 mem-max 

 

 
 
    mem-max domain-id mem

 

 

Указывает максимальный объём памяти, 
который может использовать домен.
Объём памяти указывается в мегабайтах.
 
Реальное количество памяти
используемое доменом может быть ниже этого числа,
поскольку оно может быть сокращено с помощью baloon-драйвера.
 
   
 mem-set 

 

 
 
    mem-set domain-id mem

 

 

Задаёт объём оперативной памяти, используемой доменом.
Нужна поддержка со стороны операционной системы домена, 
поэтому гарантии, что команда будет успешной, нет.
 
{{caution|text=
В некоторых случаях команда  mem-set  делает работу домена 
нестабильной и приводит к краху.
Будьте осторожны с этой командой.
}}
 
   
 migrate 

 

 
 
    migrate domain-id host [options]

 

 

Мигрировать домен на другую хост-систему.
На той системе должен быть запущен xend, у него должна быть такая же 
версия, у него должен быть открыт специальный порт для миграции,
а также на этой системе должны быть все необходимые для работы 
нового домена ресурсы (память, диск и т.д.).
 
Процесс миграции достаточно непрост, и у него есть много ограничений
с точки зрения безопасности. Рекомендуется ознакомиться с Руководством
пользователя Xen (  http://xgu.ru/xen/manual/  ),
чтобы перед тем как переходить к полноценному использованию миграци 
понять, что можно требовать от неё, а чего нет.
 
Опции:
 
 
     -l, --live 

 

 

Использовать live-миграцию (живую миграцию).
Домены мигрируют без выключения.
Подробности в руководстве пользователя Xen (  http://xgu.ru/xen/manual/  ).
 
 
     -r, --resource Mbs 

 

 

Максимальная полоса, используемая при миграции домена.
Это нужно для того чтобы сеть не забивалась полностью
трафиком Xen в ходе миграции.
 
   
 pause 

 

 
 
    pause domain-id

 

 

Приостановить (pause) домен.
Приостановленный домен потребляет ресурсы системы, такие как память,
однако он не использует процессор.
 
   
 reboot 

 

 
 
    reboot [options] domain-id

 

 

Перезагрузить домен.
Команда работает так, как будто бы перезагрузку домена просто вызвали из консоли.
Программа  xm  не ждёт пока домен перезагрузится, 
а сразу же завершается. Фактическая перезагрузка домена
может закончится намного позже.
 
Поведение домена при перезагрузке 
определяется параметром 
 
 on_reboot
 

 

 
конфигурационного 
 
 xmdomain.cfg
 

 

,
использовавшимся при запуске домена.
 
Опции:
 
 
     -a, --all 

 

 

Перезагрузить все домены.
 
 
     -w, --wait 

 

 

Подождать пока операционная система внутри домена перезагрузилась.
Это может занять много времени, потому что нужно чтобы все
процессы внутри домена завершились корректно.
 
   
 restore 

 

 
 
    restore state-file

 

 

Восстановить домен из файла, созданного ранее с помощью xm save.
Подробнее в описании команды  save .
 
   
 save 

 

 
 
    save domain-id state-file

 

 

Сохраняет работающий домен в файл
Он может быть восстановлен позже.
При сохранении работа домена приостанавливается,
а память, занятая им, возвращается в систему.
Восстанавливается домен, и его работа возобновляется по команде  xm restore .
 
Действие команды  xm save  на виртуальную систему чем-то похоже 
на операцию hybernate, выполняющуюся на обычном компьютере.
В частности, могут пострадать открытые сетевые соединения, возникнуть TCP-таймауты.
 
   
 shutdown 

 

 
 
    shutdown [options] domain-id

 

 

Правильно останавливает домен.
Операционная система корректно останавливается, и неизвестно 
закончится ли он успешно, и если закончится, сколько это потребует времени. 
Команда завершается сразу же, а не тогда когда домен завершится (если не используется ключ 
 
 -w
 

 

).
 
Поведение домена при перезагрузке определяется параметром 
 
 on_shutdown
 

 

  конфигурационного 
 
 xmdomain.cfg
 

 

, использовавшимся при запуске домена.
 
Опции:
 
 
     -a

 

 

Завершить все домены. Обычно вызывается при завершении работы 
хост-системы Xen.
 
 
     -w

 

 

Прежде чем завершить команду  xm , ждать пока домен окончит процесс завершения (shutdown).
 
   
 sysrq 

 

 
 
    sysrq domain-id letter

 

 

Отправляет волшебный сигнал System Request (SysRq) домену.
Подробности об этом сигнале в файле 
 
 sysrq.txt
 

 

 
в исходниках ядра Linux.
 
   
 unpause 

 

 
 
    unpause domain-id

 

 

Выводит домен из сохранённого состояния.
Гипервизор опять начинает выдавать вычислительный 
ресурс остановленному ранее домену.
 
   
 vcpu-set 

 

 
 
    vcpu-set domain-id vcpu-count

 

 

Выделяет виртуальному домену  domain-id  указанное количество 
виртуальных процессоров  vcpu-count .
Как и  mem-set  эта команда может выделять виртуальных процессоров
не больше чем было задано при загрузке домена.
 
Если число  vcpu-count  меньше текущего количества активных VCPU, 
VCPU с наибольшими номерами будут удалены горячим способом (hotplug removed).
Это важно при привязке доменов к процессорам (pinning).
 
Если попытаться установить VCPU больше чем было задано при загрузке 
домена, возникнет ошибка.
Если попытаться установить  vcpu-count  < 1, команда будет проигнорирована, 
и сообщений об ошибке не будет.
 
   
 vcpu-list 

 

 
 
    vcpu-list [domain-id]

 

 

Показать информацию о VCPU для заданного домена;
если домен не указан, показывается информация о VCPU
для всех доменов.
 
   
 vcpu-pin 

 

 
 
    vcpu-pin domain-id vcpu cpus

 

 

Привязать (pin) виртуальные процессоры  vpcu  к заданным физическим процессорам  cpus .
В качестве  vcpu  можно использовать ключевое слово  all , 
которое привязывает все виртуальные процессоры домена 
к заданным физическим процессорам.
 
По умолчанию виртуальные процессоры могут переходить (float)
между свободными процессорами, в зависимости от того в каком состоянии 
они находятся.
Привязка (pinning) используется для того чтобы ограничить эту возможность, 
и убедиться что конкретные VCPU будут исполняться на конкретных физических процессорах.
 
   
  Подкоманды Xen-хоста  

 

 
   
 dmesg 

 

 
 
     dmesg [-c]

 

 

Показать буфер сообщений Xen, аналогично буферу сообщений Linux-системы.
Буфер содержит информационные сообщения, предупреждения, сообщения об ошибках,
возникших в ходе процесса зарузки. Если у вас возникли проблемы с Xen, это первое место, куда нужно начинаться смотреть. 
 
Опции:
 
 
     -c, --clear 

 

 

Очищает буфер сообщений Xen.
 
   
 info 

 

 
Вывести информацию о хосте в формате имя : значение.
Если вы сообщаете об ошибке в Xen,
пожалуйста, добавляйте эту информацию в 
отчёт.
 
Пример вывода информации xm info выглядит так (строки для удобства чтения отформатированы вручную):
 
 
     host                   : talon
    release                : 2.6.12.6-xen0
    version                : #1 Mon Nov 14 14:26:26 EST 2005
    machine                : i686
    nr_cpus                : 2
    nr_nodes               : 1
    sockets_per_node       : 2
    cores_per_socket       : 1
    threads_per_core       : 1
    cpu_mhz                : 696
    hw_caps                : 0383fbff:00000000:00000000:00000040
    total_memory           : 767
    free_memory            : 37
    xen_major              : 3
    xen_minor              : 0
    xen_extra              : -devel
    xen_caps               : xen-3.0-x86_32
    xen_pagesize           : 4096
    platform_params        : virt_start=0xfc000000
    xen_changeset          : Mon Nov 14 18:13:38 2005 +0100
                             7793:090e44133d40
    cc_compiler            : gcc version 3.4.3 (Mandrakelinux
                             10.2 3.4.3-7mdk)
    cc_compile_by          : sdague
    cc_compile_domain      : (none)
    cc_compile_date        : Mon Nov 14 14:16:48 EST 2005
    xend_config_format     : 2

 

 

Поля:
 
(описаны не все поля, а только те, назначение которых наименее очевидно)
 
 

   *   hw_caps   массив, показывающий, какие возможности есть у процессора. Это эквивалентная (но другая) форма записи 
флагов, указанных в .RS
 /proc/cpuinfo
 


 

   *   free_memory   доступная оперативная память (в MB); память, не выделенная Xen и доменам.
 

   *   xen_caps   версия и архитектура Xen. Архитектура указывается в форме: x86_32, x86_32p (если включено PAE), x86_64, 
ia64. .br
   *   xen_changeset   xen mercurial changeset id. Очень полезно чтобы точно знать какой код используется. 
   
  log  

 

 
Вывести журнал работы xend.
Журнал находится в 
 
 /var/log/xend.log
 

 

 
   
  top  

 

 
Запускает команду  xentop , которая выполняет 
мониторинг доменов в реальном времени. 
У Xentop простой и понятный интерфейс, основанный на curses.
 
   
 Подкоманды управления устройствами 

 

 
Большинство виртуальных устройств
можно подключать и отключать 
без остановки гостевой системы, 
прямо во время её работы.
С точки зрения операционной системы,
работающей в гостевом домене, это выглядит как 
горячее подключение (hotplug event).
 
   
 Блочные устройства 

 

 
   
  block-attach  

 

 
 
    block-attach domain-id be-dev fe-dev mode [bedomain-id]

 

 

Создать новое виртуальное блочное устройство.
Вызвать hotplug-событие в гостевой системе.
 
Опции:
 
 
 domain-id 

 
 

   Идентификатор домена, к которому будет подключено устройство. 
 be-dev 

 
 

   Устройство в backend-домене (обычно в домене 0), которое должно быть экспортировано. Устройство может быть как физическим 
разделом (phy:sda7), так и обычным файлом подключаемым через loopback-устройство ( file://path/to/loop.iso).  .TP
 fe-dev 

 

     Как устройство должно быть видно в гостевом домене. Может быть указано или в форме символического имени (/dev/hdc) или 
в форме шестнадцатеричного идентификатора  0x1400 (идентификатор для устройства /dev/hdc). .TP
 mode 

 

     Режим доступа к устройству из гостевого домена. Поддерживаются режимы 
 
 rw
 

 

  (read-write) и 
 
 ro
 

 

  (read-only). 
 bedomain-id 

 
 

  Backend-домен, которое обеспечивает работу (hosting) устройства. По умолчанию это домен 0. 
 
 Пример: 
 
Подключить ISO-диск внутрь домена:
 
 
     xm block-attach guestdomain  file://path/to/dsl-2.0RC2.iso  /dev/hdc ro

 

 

Команда подключит ISO-образ dsl как устройство /dev/hdc (только для чтения) в гостевом домене. Возможно, в гостевом 
домене устройство и не определится как CDROM, но ручное монтирование сработает. 
 
   
  block-detach  

 

 
 
   block-detach domain-id devid

 

 

Удалить виртуальное блочное устройство домена.
Параметр  devid  должен быть 
идентификатором, который присвоен устройству в домене 0.
Его можно определить с помощью команды  xm block-list .
 
   
  block-list  

 

 
 
   block-list [-l|--long] domain-id

 

 

Показать список виртуальных блочных устройств домена. 
Вывод отформатирован или как список или как S-выражение, если использовался ключ 
 
 --long
 

 

 
   
 Сетевые устройства 

 

 
   
  network-attach  

 

 
 
    network-attach domain-id [script=scriptname] [ip=ipaddr] [mac=macaddr] [bridge=bridge-name] [backend=bedomain-id] 

 

 

Создать новое сетевое устройство для домена, указанного с помощью  domain-id .
Можно использовать дополнительные опции.
 
 
 script=scriptname 

 
 

     Использовать при создании интерфейса указанный скрипт. По умолчанию используется тот, который указан в файле xend-config.sxp 
в параметре vif-script. .TP
 ip=ipaddr 

 

     При создании передаёт указанный IP-адрес адаптеру. 
 mac=macaddr 

 
 

     Использовать для сетевого устройства заданный MAC-адрес. Если MAC-адрес не задать, он генерируется автоматически, 
с префиксом 00:16:3e. .TP
 bridge=bridge-name 

 

     Если мостов больше одного, имя моста, к которому должен подключаться виртуальный интерфейс.
 backend=bedomain-id 

 
 

     Идентификатор backend-домена. По умолчанию равен 0. 
 network-detach domain-id devid 

 
 

     Удаляет сетевое устройство из домена  domain-id . Номер  devid  это номер устройства (devicee number) виртуального 
интерфейса в домене (например, 3 это vif22.3). .TP
 network-list [-l|--long] domain-id 

 

      Показать список сетевых устройств домена. Вывод отформатирован или как список или как S-выражение, если использовался 
ключ .RS
 --long
 


 
 
   
 Виртуальные TPM устройства 

 

 
 
    vtpm-list [-l|--long] domain-id

 

 

Показать информацию о виртуальном TPM устройстве для домена.
Вывод отформатирован как список или, если задана опция 
 
 --long
 

 

, 
как S-выражение.
 
   
 Подкоманды управления доступом 

 

 
Управление доступом в Xen базируется на двух компонентах:
#  Политика управления доступом (Access Control Policy, ACP)  определяет метки безопасности и правила доступа с 
использованием этих меток. #  Модуль управления доступом (Access Control Module, ACM)  принимает решения по ограничению или предоставлению 
доступа, когда домены пытаются работать с ресурсами. Управление доступом Xen обладает достаточными механизмами чтобы ограничить даже злонамеренный
пользовательский домен (mandatory access control).
 
Права доступа в Xen определяется метками безопасности и не связаны с именами или идентификаторами домена. Политика ACP определяет метки, которые потом можно назначать доменам и ресурсам.
Каждому домену можно назначить ровно одну метку безопасности, 
иначе решения по предоставлению доступа будут неоднозначными.
Политики (ACP) определяются по имени, которое передаётся как параметр, 
в большинстве описанных ниже подкоманд.
 
В настоящий момент есть два способа интерпретации меток:
 
(1) Simple Type Enforcement (STE): Интерпретация меток определяет, какие домены могут обращаться к каким виртуальным 
и физическим ресурсам. Связь между доменами и доступ к ресурсам по умолчанию запрещены, и могут выполняться только в том 
случае, если они разрешены явным образом с помощью политики безопасности. Правильное назначение меток домена позволяет 
определить совместный доступ к информации (напрямую или через ресурсы). Интерпретация меток определяет явные каналы 
между доменами Xen. 
(2) Chinese Wall: Интерпретация меток определяет, какие домены могут сосуществовать (одновременно исполняться) на 
одной системе. Это позволяет избежать скрытых канал (covert channels) и снизить риск связанный с тем, что изоляция доменов 
не совершенна (выигрывая в безопасности проигрываем в других возможностях и наоборот). Небольшое введение в вопрос скрытых 
каналов можно найти здесь:  http://www.multicians.org/timing-chn.html  (англ.). 
Управление политиками безопасности и назначение меток безопасности доменам в Xen 
выполняется с помощью перечисленных ниже подкоманд.
Для того чтобы включить управление безопасностью в Xen, 
он должен быть откомпилирован с поддержкой ACM, как описано ниже.
Ниже также приводятся примеры использования подкоманд.
 
 
 makepolicy policy 

 
 

  Компилирует XML-представление политики. В результате создаются файлы с отображением (
 
 

 

) политики. Откомпилированную политику можно загрузить с помощью подкоманды  loadpolicy  или с помощью подкоманды 
 cfgbootpolicy  можно сделать, чтобы политика загружалась автоматически. Параметр  policy  представляет 
собой список разделённых точками имён файлов. Последняя часть это префикс в имени XML-файла с политикой. Оставшиеся 
части преобразуются в путь к каталогу, начиная с корневого каталога политик ( .RS
 /etc/xen/acm-security/policies
 

 

). Например, имя 
 
 example.chwall_ste.client_v1
 

 

  обозначает файл 
 
 example/chwall_ste/client_v1-security_policy.xml
 

 

  по отношению к корневому каталогу политик.
 loadpolicy policy 

 
 

     Загрузить двоичное представление политики. Двоичное представление создаётся командой  makepolicy . .TP
 cfgbootpolicy policy [kernelversion] 

 

     Настраивает политику как загрузочную. Для этого двоичное представление политики копируется в каталог .RS
 /boot
 


  и в файл 
 
 /bbot/grub/menu.lst
 

 

  добавляется соответствующая строчка загрузки модуля. Если в настройке загрузчика есть несколько заголовков с вариантами 
загрузки, надо использовать параметр  kernelversion , для того чтобы строчка добавилась в нужный вариант. .TP
 dumppolicy 

 

     Показать информацию о состоянии политики безопасности Xen.
 labels [policy] [type=dom|res|any] 

 
 

     Показать все метки заданных типов (доменов, ресурсов или обоих), определённые в политике. Если не указана политика, используется 
текущая. По умолчанию используется тип  dom . Метки сортируются в алфавитном порядке. .TP
 addlabel label dom configfile [policy] 

 addlabel label res resource [policy] 

 
 

     Добавляет метку безопасности для данного ресурса (res) в файл домена  configfile  (dom) или глобальный файл меток 
ресурсов (global resource label file). Если политика не указана, используется текущая. Эта подкоманда также проверяет 
что политика поддерживает заданную метку. .TP
 rmlabel dom configfile 

 rmlabel res resource 

 
 

     Работает также как и  addlabel , только она не добавляет, а удаляет метку из конфигурационного файла домена ( dom ) 
или глобального файла ресурсов ( res ). .TP
 getlabel dom configfile 

 getlabel res resource 

 
 

     Показать метку для данном файла  configfile  или ресурса  resource 
 resources 

 
 

     Показать список всех ресурсов из глобального файла меток ресурсов (the global resource label file). Для каждого ресурса 
выводится связанная метка и имя политики. .TP
 dry-run configfile 

 

     Проверяет, описывает ли файл configfile необходимую конфигурацию безопасности. Тест показывает какие решения принимаются 
для меток ресурсов и меток доменов, а также общие решения. 

   
 Настройка безопасности 

 

 
В конфигурационном файле 
 
 xen_source_dir/Config.mk
 

 

 
нужно смотреть на параметры:    
 
 
     ACM_SECURITY ?= y
    ACM_DEFAULT_SECURITY_POLICY ?= \
        ACM_CHINESE_WALL_AND_SIMPLE_TYPE_ENFORCEMENT_POLICY

 

 

Когда параметры установлены, нужно пересобрать инструменты безопасности
(security tools), проинсталлировать их, а потом перезагрузиться:    
 
 
     cd xen_source_dir/xen; make clean; make; cp xen.gz /boot;
    cd xen_source_dir/tools/security; make install;
    reboot into xen

 

 

 
   
 Компиляция политики безопасности 

 

 
В результате выполнения этого шага будут созданы файлы
 
 
 client_v1.map
 

 

  и 
 
 client_v1.bin
 

 

 
в каталоге 
 
 /etc/xen/acm-security/policies/example/chwall_ste
 

 

 
 
     xm makepolicy example.chwall_ste.client_v1

 

 

 
   
 Загрузка политики безопасности 

 

 
Этот шаг активирует 
 
 client_v1.bin
 

 

 
как новую политику безопасности в Xen.
Увидеть, что поменялось в политиках Xen, можно 
с помощью подкоманды dumppolicy, если вызвать её
до и после изменения.
 
 
     xm loadpolicy example.chwall_ste.client_v1

 

 

 
   
 Настройка политики безопасности при загрузке 

 

 
Команда заставляет загрузчик загружать 
 
 client_v1.bin
 

 

  при старте.
При старте системы ACM настраивает Xen на использование этой политки
и потом приводит её в исполнение.
 
 
     xm cfgbootpolicy example.chwall_ste.client_v1

 

 

 
   
 Просмотр список меток безопасности 

 

 
Показать список предопределённых меток, которые могут присоединяться 
к доменам.
 
Команда
 
 
     xm labels example.chwall_ste.client_v1 type=dom

 

 

покажет для нашего примера:
 
 
     dom_BoincClient
    dom_Fun
    dom_HomeBanking
    dom_NetworkDomain
    dom_StorageDomain
    dom_SystemManagement

 

 

 
   
 Присоединение метки безопасности к домену 

 

 
Команда  addlabel  
присоединяет метку безопасности к конфигурационном файлу домена, 
в примере  метку HomeBanking.
В примере домен не сможет выполнять совместный доступ к информации ни с какими другими доменами, за исключением тех, которые 
относятся к  homebanking  (например: dom_Fun, dom_Boinc), и он не будет одновременно исполняться с доменом
 dom_Fun .
 
Предполагается, что указанный конфигурационный файл myconfig.xm
запускает домен, в котором работают нагрузки (workloads)
имеющие отношение к home-banking, например, среда для online-banking.
 
 
     xm addlabel dom_HomeBanking dom myconfig.xm

 

 

Запись access_control в конце файла
состоит из имени метки и политики, определяющей имя метки:
 
 
     kernel = "/boot/vmlinuz-2.6.16-xen"
    ramdisk="/boot/U1_home_banking_ramdisk.img"
    memory = 164
    name = "homebanking"
    vif = [ '' ]
    dhcp = "dhcp"
    access_control = ['policy=example.chwall_ste.client_v1,
                       label=dom_HomeBanking']

 

 

Метки безопасности должны обязательно назначаться доменам. 
Они нужны для принятия решения о разрешении или запрещении доступа
на этапе настройки только что созданного домена.
Гипервизор с поддержкой безопасности
сможет запускать только те домены, у которых метка безопасности есть, 
и она подходит текущей политике.
В противном случае, запуск домена не удастся, 
и будет сообщение об ошибке "operation not permitted".
 
   
 Присоединение метки безопасности к ресурсу 

 

 
Команда  addlabel  может также использоваться для добавления
метки безопасности к ресурсу.
Похоже на то как было сделано в примере вверху, 
можно добавить метку к ресурсу (разделу или файлу), для того чтобы он
был доступен банковскому (banking) домену.
В примере политики есть метка  res_LogicalDiskPartition1(hda1) ,
которая совместима с меткой  HomeBanking .
 
 
     xm addlabel "res_LogicalDiskPartition1(hda1)" res phy:hda6

 

 

После того как диск помечен, его можно подключить к домену
путём добавления строчки в конфигурационный файл этого домена.
Пример строки, выполняющей подключение диска:
 
 
     disk = [ 'phy:hda6,sda2,w' ]

 

 

Как вариант, ресурс можно подключить после загрузки с помощью подкоманды
 block-attach :
 
 
     xm block-attach homebanking phy:hda6 sda2 w

 

 

{{caution|text=
Помеченные ресурсы нельзя использовать когда безопасность выключена.
Любые попытки использовать ресурс в этом случае
будут приводить к сообщению об ошибке.
Нужно или включить поддержку безопасности, 
или если она больше не нужна, удалить метку с помощью подкоманды  rmlabel .
}}
 
   
 Запуск и просмотр списка доменов с метками 

 

 
 
   %# xm create myconfig.xm
  %# xm list --label
  Name         ID ...  Time(s)  Label
  homebanking  23 ...      4.4  dom_HomeBanking
  Domain-0      0 ...   2658.8  dom_SystemManagement

 

 

 
   
 Просмотр списка ресурсов с метками 

 

 
 
   %# xm resources
  phy:hda6
      policy: example.chwall_ste.client_v1
      label:  res_LogicalDiskPartition1(hda1)
  file:/xen/disk_image/disk.img
      policy: example.chwall_ste.client_v1
      label:  res_LogicalDiskPartition2(hda2)

 

 

 
   
 Представление политики 

 

 
Есть три различных представления политики доступа Xen:
 

   *  исходная XML-версия;
 

   *  её двоичный вариант;
 

   *  отображение (mapping representation), которое позволяет преобразовывать имена меток из XML-политик в идентификаторы 
меток из бинарных политик и наоборот. Все три версии должны соответствовать друг другу.
 
XML-версию создаёт и редактирует пользователь; или вручную, или при помощи генератора политик Xen (xensec_gen). После того как XML-файл меняется, нужно запускать  makepolicy , для того чтобы изменения отразились в других версиях. Можно использовать подкоманду  cfgbootpolicy , которая активирует изменения
при следующей перезагрузке. 
 
Двоичное представление политики получается на основе XML-политики.
Оно используется только внутри Xen.
Двоичное представление создаётся при помощи подкоманды  makepolicy .
Это представление намного более компактное чем XML-версия
и его легче использовать Xen в своей работе.
 
Отображение (3) создаётся в момент преобразования XML-политики в двоичную
форму (makepolicy). Оно используется инструментами управления Xen для преобразования
меток имён, которые являются входными данными для этих инструментов, 
и их двоичных идентификаторов (ssidrefs) внутри Xen.
 
   
  Примеры  

 

 
   
  См. также  

 

 
 xmdomain.cfg (5),  xentop (1)
 
   
 Автор 

 

 
 

   *  Sean Dague <sean at dague dot net>
 

   *  Daniel Stekloff <dsteklof at us dot ibm dot com>
 

   *  Reiner Sailer <sailer at us dot ibm dot com>
 
   
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
 Замечания 
 Подкоманды управления доменами 
 
 console 
 create  
 destroy 
 domid 
 domname 
 help 
 list 
 mem-max 
 mem-set 
 migrate 
 pause 
 reboot 
 restore 
 save 
 shutdown 
 sysrq 
 unpause 
 vcpu-set 
 vcpu-list 
 vcpu-pin 
 
  Подкоманды Xen-хоста  
 
 dmesg 
 info 
  log  
  top  
 
 Подкоманды управления устройствами 
 
 Блочные устройства 
  block-attach  
  block-detach  
  block-list  
 Сетевые устройства 
  network-attach  
 Виртуальные TPM устройства 
 
 Подкоманды управления доступом 
 Настройка безопасности 
 
 Компиляция политики безопасности 
 Загрузка политики безопасности 
 Настройка политики безопасности при загрузке 
 Просмотр список меток безопасности 
 Присоединение метки безопасности к домену 
 Присоединение метки безопасности к ресурсу 
 Запуск и просмотр списка доменов с метками 
 Просмотр списка ресурсов с метками 
 Представление политики 
 
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