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
 
 
 
 vzctl (8) >>  vzctl  (8)   ( Русские man: Команды системного администрирования ) 
   
 ИМЯ 

vzctl - менеджер виртуальных сред
   
 ОБЗОР 

vzctl [ flags ]  create   идентификатор-среды 
 --ostemplate   имя ] [ --config   имя ]
[ --private   путь ] [ --root   путь ] [ --ipadd   адрес ] [ --hostname   имя ]
 

vzctl [ flags ]  set   идентификатор-среды  [ параметры ] [ --save ]
 

vzctl [ flags ]  destroy  |  mount  |  umount  |
 start  |  stop  |  restart  |
 status  |  enter   идентификатор-среды 
 

vzctl [ flags ]  exec  |  exec2   идентификатор-среды 
 команда  [ аргумент  ...]
 

vzctl  runscript   идентификатор-среды   сценарий 
 

vzctl  --help  |  --version 
   
 ОПИСАНИЕ 

Утилита  vzctl  запускается на физическом компьютере (Hardware Node - HN)
и позволяет управлять виртуальными средами (Virtual Environment - VE).
 

Виртуальная среда идентифицируется либо по числовому  идентификатору-среды , либо
по имени (см. ключ  --name ). Идентификаторы <= 100 зарезервированы
для внутреннего использования OpenVZ.
   
 ОПЦИИ 

   
 Флаги 

Следующие флаги можно использовать практически с любыми другими ключами.
 
 --quiet 
Не выводить сообщения на экран и в протокол.
 --verbose 
Выводить максимально подробные сообщения.
 
   
 Настройка параметров виртуальных сред 

 
 set   идентификатор-среды  [ параметры ] [ --save ] 
Эта команда позволяет изменять различные параметры виртуальной среды с указанным идентификатором.
Флаг  --save  включает сохранение параметров в 
файле конфигурации виртуальной среды  vps.conf (5).
Если виртуальная среда запущена, изменения вступают в силу незамедлительно.
 
С командой  set  можно указывать следующие опции:
 Общие параметры 
 --onboot   yes | no 
Запускать ли виртуальную среду при загрузке системы.
По умолчанию это не происходит и для изменения этого поведения укажите значение  yes .
 --root   путь 
Корневой каталог для данной виртуальной среды. По сути это
точка монтирования корневого каталога виртуальной среды.
В значении должна содержаться последовательность  $VEID , 
которая будет заменена на идентификатор среды. Изменять
этот параметр не рекомендуется, вместо этого лучше внести изменения в глобальный файл конфигурации
 vz (5).
 --userpasswd   пользователь : пароль 
Задать пароль для данного пользователя в виртуальной среде.
Если пользователь не существует, он будет создан.
Этот параметр не влияет на файл конфигурации.
(следовательно указание  --save  не имеет смысла).
Вместо этого изменяются файлы  /etc/passwd и  /etc/shadow в виртуальной среде.
 
Если корневой каталог виртуальной среды не смонтирован, то он предварительно монтируется.
После внесения изменений в файлы выполняется размонтирование.
 
Данная опция требует, чтобы область виртуальной среды существовала заранее.
 --disabled   yes | no 
Запретить запуск виртуальной среды. Для принудительного её запуска 
выполните  vzctl start  с опцией  --force .
 --name   имя 
Присвоить  имя  виртуальной среде. Его затем можно будет использовать
вместо  идентификатора . Среде можно присвоить несколько имён.
 --setmode   restart | ignore 
Перезапускать ли виртуальную среду после изменения параметров требующих этого.
 Параметры работы с сетью 
 --ipadd   адрес 
Назначить IP-адрес виртуальной среде.
Среде можно назначить несколько адресов.
 --ipdel   адрес  |  all 
Отменить назначение IP-адреса виртуальной среде.
Для отмены всех назначений адресов данной среде укажите 
 --ipdel all .
 --hostname   имя 
Задать имя хоста виртуальной среды. Оно записывается в соответствующий файл в самой среде, имя которого зависит от дистрибутива.
 --nameserver   адрес 
IP-адрес сервера DNS, который должен использоваться виртуальной средой.
Несколько серверов DNS необходимо задавать одной командой, используя данную опцию несколько раз
Все IP-адреса серверов DNS, которые имелись в конфигурации до вызова команды, удаляются.
 --searchdomain   имя 
Домены для поиска DNS. 
Несколько доменов необходимо задавать одной командой, используя данную опцию несколько раз
Все домены, которые имелись в конфигурации до вызова команды, удаляются.
 --netif_add   интерфейс[ , mac , интерфейс-хоста , mac-хоста] 
Добавить виртуальное устройство ethernet (veth) в виртуальную среду.
 интерфейс  - будущее имя устройства ethernet в среде,
 mac  - MAC-адрес,
 интерфейс-хоста  - имя устройства ethernet на хосте, 
 mac-хоста  - MAC-адрес там же.
Формат MAC-адресов: XX:XX:XX:XX:XX:XX.
Все параметры кроме  интерфейс  необязательны и генерируются автоматически если не указаны.
 Настройка интерфейса 
 
Следующие опции позволяют изменять параметры уже существующих интерфейсов
ethernet. Настраиваемый интерфейс указывается через
 --ifname   имя .
 
   --mac   XX:XX:XX:XX:XX:XX  - MAC-адрес интерфейса в виртуальной среде.
   --host_ifname   имя  - интерфейс в VE0.
   --host_mac   XX:XX:XX:XX:XX:XX  - MAC-адрес интерфейса в VE0.
 --netif_del   устройство | all 
Удалить виртуальное устройство ethernet из среды.
Для удаления всех устройств укажите  all .
 Ограничение использования ресурсов 
 
Следующие опции позволяют наложить ограничения на использование тех или иных ресурсов.
Каждая из них требует один или два аргумента.
Если указывается один аргумент,  vzctl  устанавливает строгое ограничение.
Если указываются два значения (через двоеточие),
первый считается нестрогим ограничением (барьером), а второй - строгим (лимитом).
 
Единицы - элементы, страницы и байты.
Размер страницы зависит от архитектуры, например на 
IA32 это 4096 байт.
 
Для всех параметров  set , не
начинающихся на  num , можно указывать приставки единиц.
Например,  vzctl set   идентификатор-среды   --privvmpages 5M:6M 
задаст нестрогое ограничение на максимальный общий размер частных виртуальных страниц памяти ( privvmpages )
в 5 Мб и строгое - в 6 Мб.
 
Допустимые приставки:
 

 g ,  G  -- гигабайты.
 

 m ,  M  -- мегабайты.
 

 k ,  K  -- килобайты.
 

 p ,  P  -- страницы (4096 байт на x86).
 
 --numproc   число [: число ] 
Ограничение на число процессов и потоков на уровне ядра.
Указание нестрогого ограничения не имеет смысла.
 --numtcpsock   число [: число ] 
Ограничение на число сокетов TCP, а, следовательно, и на число
клиентов, которых может обслуживать сервер одновременно.
Указание нестрогого ограничения не имеет смысла.
 --numothersock   число [: число ] 
Ограничение на число сокетов, отличных от сокетов TCP (т.е. локальных, UDP и прочих).
Указание нестрогого ограничения не имеет смысла.
 --vmguarpages   число-страниц [: число-страниц ] 
Объём памяти, гарантированно доступный виртуальной среде. Нестрогое ограничение 
- это объём памяти который может быть выделен приложению.
Смысл строгого ограничения на данный момент не определён. Он должен быть установлен в 2147483647.
 --kmemsize   число-байт [: число-байт ] 
Объём памяти доступной ядру. Этот параметр имеет отношение также к 
 --numproc . Каждый процесс потребляет некоторую часть блока памяти ядра
  - как минимум 16 кб и обычно на уровне 30-50 кб.
Некоторым процессам требуется больше.
Между строгим и нестрогим ограничениями должен быть достаточный зазор,
иначе в некоторый момент времени ядру придётся удалять уже существующие 
процессы для выполнения строгого ограничения  kmemsize .
 --tcpsndbuf   число-байт [: число-байт ] 
Ограничение на объём памяти, занимаемой буферами отправки TCP.
Не должно быть меньше 64 кб, и разница между строгим и нестрогим 
ограничениями должна быть не меньше значения 
 numtcpsock  умноженного на 2,5 кб.
 --tcprcvbuf   число-байт [: число-байт ] 
Ограничение на объём памяти, занимаемой буферами приёма TCP.
Не должно быть меньше 64 кб, и разница между строгим и нестрогим 
ограничениями должна быть не меньше значения 
 numtcpsock  умноженного на 2,5 кб.
 --othersockbuf   число-байт [: число-байт ] 
Ограничение на объём памяти, занимаемой буферами отправки других сокетов.
Если процессам виртуальной среды требуется посылать
большие датаграммы, установите соответствующее нестрогое ограничение.
Увеличение строгого ограничения необходимо для повышение производительности
при работе через локальные (UNIX) сокеты.
 --dgramrcvbuf   число-байт [: число-байт ] 
Ограничение на объём памяти занимаемой буферами приёма других сокетов.
Если процессам виртуальной среды требуется посылать
большие датаграммы, установите соответствующее нестрогое ограничение.
Указание нестрогого лимита не требуется.
 --oomguarpages   число-страниц [: число-страниц ] 
Гарантированный предел для OOM kill (удаление одного процесса для освобождения памяти).
Под этим значением понимается общий объём оперативной памяти и раздела подкачки
используемой процессами среды.
Значение нестрогого ограничения является пределом "out-of-memory" (ситуация нехватки памяти).
Если текущее значение oomguarpages ниже указанного,
процессы определённо не будут удаляться по условию "out-of-memory".
Смысл строгого ограничения не определён и должен быть равен 2147483647.
 --lockedpages   число-страниц [: число-страниц ] 
Ограничение на число страниц, получаемых функцией  mlock (2).
 --privvmpages   число-страниц [: число-страниц ] 
Позволяет контролировать объём памяти, выделяемой приложениям.
Виртуальная среда действительно использующая общую страницу
(отмеченную как  MAP_SHARED ) "платит" за неё только частично
(в зависимости от общего количества сред, использующих данную страницу).
За теоретически частную страницу (отмеченную как  MAP_PRIVATE )
виртуальная среда платит либо часть, либо полностью, если 
физические страницы, связанные с выделенным адресным пространством,
могут быть в оперативной памяти, разделе подкачки или вообще не существовать на данном этапе.
Ограничение, определяемое данным параметром, 
относится к общему объёму выделенной памяти.
Обратите внимание, что виртуальная среда необязательно сможет
запросить указанный объём памяти. Основной механизм контроля выделения памяти - 
 --vmguarpages .
 --shmpages   число-страниц [: число-страниц ] 
Ограничение на размер сегмента совместно используемой памяти IPC.
Указание нестрогого ограничения не имеет смысла.
 --numfile   число [: число ] 
Ограничение на количество открываемых файлов.
Указание нестрогого ограничения не имеет смысла.
 --numflock   число [: число ] 
Ограничение на число блокировок для файлов.
Необходимо наличие промежутка между нестрогим и строгим значениями.
 --numpty   число [: число ] 
Число псевдо-терминалов. В OpenVZ каждая виртуальная среда может иметь не больше 255 терминалов.
(PTY). Указание нестрогого ограничения не имеет смысла.
 --numsiginfo   число [: число ] 
Количество структур siginfo.
Указание нестрогого ограничения не имеет смысла.
 --dcachesize   число-байт [: число-байт ] 
Ограничение на размер кэша файловой системы, в т.ч.
структур dentry (для каталогов) и inode (для файлов).
Позволяет отказывать приложениям заранее,
а не во время критических операций с файлами.
Необходимо наличие промежутка между нестрогим и строгим значениями.
 --numiptent   число [: число ] 
Число записей iptables (netfilter). Указание нестрогого ограничения не имеет смысла.
 --physpages   число-страниц [: число-страниц ] 
Используется только для статистики.
Показывает использование оперативной памяти данной средой.
Нестрогое ограничение должно быть равно 0, а строгое - в 2147483647.
 Параметры распределения процессорного времени 
 
Следующие параметры позволяют контролировать использование процессора
виртуальными средами.
 --cpuunits   число 
Вес виртуальной среды. Положительное целое число, передаваемое планировщику центрального ядра.
Чем больше число, тем больше процессорного времени будет выделяться 
данной виртуальной среде. Максимальное значение - 500000, минимальное - 8.
Значение по умолчанию - 1000.
 
Вес VE0 (физической среды) также можно задавать
( vzctl set 0 --cpuunits  число ). Обычно он задаётся сценарием initscript
(/etc/init.d/vz).
 --cpulimit   число [ % ] 
Ограничение на загрузку процессора виртуальной средой в процентах.
Если в компьютере имеется два процессора, то максимальное значение - 200%.
Значение по умолчанию - 0 (без ограничений).
 --cpus   число 
устанавливает число процессов, доступных в виртуальной среде.
 Информирование о доступной памяти 
 
Этот параметр определяет содержание /proc/meminfo в виртуальной среде.
 --meminfo   none 
Выводить /proc/meminfo физической системы.
 --meminfo   режим : значение 
Задать выводимый общий объём памяти. Свободная память вычисляется в 
зависимости от выбранного режима.
 

Доступны следующие режимы:
 

 pages : значение  - задать общий объём памяти в страницах
 

 privvmpages : значение  - задать общий объём памяти как 
 privvmpages  *  значение 
 
Значение по умолчанию -  privvmpages:1 .
 Параметры касающиеся iptables 
 --iptables   имя 
 
Запретить доступ к модулям iptables из виртуальной среды
(по умолчанию доступны все модули iptables загруженные в физической системе).
Список модулей:
 iptable_filter ,  iptable_mangle ,  ipt_limit ,
 ipt_multiport ,  ipt_tos ,  ipt_TOS ,  ipt_REJECT ,
 ipt_TCPMSS ,  ipt_tcpmss ,  ipt_ttl ,  ipt_LOG ,
 ipt_length ,  ip_conntrack ,  ip_conntrack_ftp ,
 ip_conntrack_irc ,  ipt_conntrack ,  ipt_state ,
 ipt_helper ,  iptable_nat ,  ip_nat_ftp ,  ip_nat_irc ,
 ipt_REDIRECT   xt_mac .
 Сетевые устройства 
 --netdev_add   имя 
Переместить сетевое устройство из VE0 в указанную среду.
 --netdev_del   имя 
Удалить сетевое устройство из указанной среды.
 Параметры квотирования дискового пространства 
 --diskspace   число [: число ] 
Строгая и нестрогая квоты в блоках. Один блок на данный момент равен 1 кб.
Допустимы также приставки  G ,  M  и  K 
(см.  Ограничение использования ресурсов ).
 --diskinodes   число [: число ] 
Строгая и нестрогая квоты в inode.
 --quotatime   число-секунд 
Допустимый период злоупотребления дисковым пространством
(т.е. время когда превышена нестрогая квота - "период отсрочки").
 --quotaugidlimit   число 
Максимальное число идентификаторов пользователей и групп в виртуальной среде 
для которых будет применяться квотирование в среде.
При значении  0  такое квотирование не будет выполняться вообще.
 
Если ранее данный параметр был установлен в  0 ,
повторное его изменение во время работы среды не будет вступать в силу немедленно.
 Параметры монтирования 
 --noatime   yes | no 
Отключить запись данных в времени доступа к inode (фактически - к файлам) на файловой системе.
 Системные возможности 
 --capability   имя : on | off 
Включить/выключить системную возможность в виртуальной среде.
Для вступления изменений в силу необходим перезапуск среды.
Для виртуальных сред предусмотрена стандартная конфигурация системных возможностей,
и данный ключ позволяет изменять эту конфигурацию по принципу "логического И".
 
Имеются следующие системные возможности:
 chown ,  dac_override ,  dac_read_search ,  fowner ,
 fsetid ,  kill ,  setgid ,  setuid ,
 setpcap ,  linux_immutable ,  net_bind_service ,
 net_broadcast ,  net_admin ,  net_raw ,
 ipc_lock ,  ipc_owner ,  sys_module ,  sys_rawio ,
 sys_chroot ,  sys_ptrace ,  sys_pacct ,
 sys_admin ,  sys_boot ,  sys_nice ,  sys_resource ,
 sys_time ,  sys_tty_config ,  mknod ,  lease ,
 setveid ,  ve_admin .
 
 ВНИМАНИЕ : включение некоторых системных возможностей может 
отрицательно повлиять на защиту, поэтому не изменяйте конфигурацию, если вы не знаете точно что делаете.
Установка  setpcap:on  скорее всего приведёт к невозможности запуска среды.
 Доступ к устройствам 
 --devnodes   устройство : r|w|rw|none 
Дать виртуальной среде доступ ( r  - чтение,  w  - запись,  rw  - чтение и запись,  none  - запретить доступ)
к устройству с адресом /dev/ устройство .
Файл устройства в виртуальной среде создаётся автоматически.
 --devices   b|c : главный-номер : дополнительный-номер | all :[ r | w | rw | none ] 
Дать виртуальной среде доступ к блочному ( b lock) или символьному ( c haracter)
устройству с главным номером  главный-номер  вторым номером  дополнительный-номер .
Файлы устройств необходимо создавать вручную.
 Компоненты 
 --features   имя : on|off 
Включить или выключить функцию виртуальной среды.
Имеющиеся функции:  sysfs ,  nfs .
 Применение параметров из файла конфигурации 
 --applyconfig   имя 
Считать параметры виртуальной среды из образцового файла конфигурации
 /etc/vz/conf/ve- имя .conf-sample , и
применить их. Если также указана опция --save, сохранить в файле конфигурации среды.
Изменения не затрагивают следующие параметры:  HOSTNAME ,  IP_ADDRESS ,
 OSTEMPLATE ,  VE_ROOT  и  VE_PRIVATE .
 --applyconfig_map   имя 
Применить параметры из группы  имя .
Восстановить имя среды по переменной NAME в файле её конфигурации.
 Приоритет операций ввода-вывода 
 --ioprio   приоритет 
Определить для среды приоритет ввода-вывода.
Допустимый диапазон -  0-7 .
Чем больше  приоритет , тем больше времени для операций ввода-вывода выделяется среде.
Приоритет по умолчанию -  4 .
 
 
   
 Создание точек восстановления 

 
OpenVZ позволяет полностью сохранять состояние работающей виртуальной среды
с возможностью последующего возврата к нему.
 
 chkpnt   идентификатор-среды  [ --dumpfile   имя ] 
Сохранить полное состояние работающей среды в файл-дамп,
и остановить её. Если опция  --dumpfile  не указана, для файла дампа используется имя 
 /vz/dump/Dump. идентификатор-среды .
 restore   идентификатор-среды  [ --dumpfile   имя ] 
Восстановить виртуальную среду из дампа, созданного командой  chkpnt .
 
   
 Управление виртуальными средами 

 
 create   идентификатор-среды  [ --ostemplate   имя ] [ --config   имя ] [ --private   путь ] [ --root   путь ] [ --ipadd   адрес ] [ --hostname   имя ] 
Создать область для новой виртуальной среды.
Эту команду необходимо выполнить один раз до первого запуска среды.
 
Если опция  --config  указана, в файл конфигурации среды будут перенесены значения 
из файла образца
 /etc/vz/conf/ve- имя .conf-sample .
Если файл конфигурации уже существует, он предварительно удаляется (автоматически).
 
Опция  --root   путь  определяет каталог, который будет использоваться как 
корневой каталог в виртуальной среде (по умолчанию значение переменной  VE_ROOT  в 
файле  vz (5)).  $VEID  в аргументе заменяется на числовой идентификатор среды.
 
Опция  --private   путь  задаёт каталог, в котором должны храниться
файлы и каталоги, относящиеся к данной среде 
(по умолчанию - значение переменной  VE_PRIVATE  в файле  vz (5)).
 $VEID  в аргументе заменяется на числовой идентификатор среды.
 
Опция  --ipadd   адрес  позволяет назначить среде IP-адрес.
Возможно назначение нескольких адресов указанием данной опции несколько раз.
 
Для задания имени хоста для среды воспользуйтесь  --hostname   имя .
 
 destroy 
Удалить область среды - удалить все файлы каталоги и файлы конфигурации указанной среды.
 start  [ --wait ] [ --force ] 
Монтировать (если это необходимо) и запустить виртуальную среду.
Если опция  --wait  не указана,  vzctl  передаст управление оболочке
немедленно, иначе будет ожидать перехода среды в основной режим выполнения (runlevel).
 
Для запуска отключенной среды укажите  --force  (см.  --disabled ).
 stop 
Остановить и отмонтировать виртуальную среду.
 restart 
Перезапустить среду: остановить, если она работает, и запустить (снова).
 status 
Вывести информацию о состоянии среды.
Сведения выводятся в виде строки из нескольких значений через пробел.
Первое - слово  VEID . Второе - числовой идентификатор среды.
Третье сообщает о существовании среды ( exist  или  deleted ).
Четвёртое - состояние файловой системы среды ( mounted  или  unmounted ).
Пятое - работает ли среда в данный момент ( running  или  down ).
 
Эта команда может быть полезна при написании сценариев.
 mount 
Монтировать частную область среды.
 umount 
Отмонтировать частную область среды.
Заметьте, что при выполнении команды  stop  размонтирование происходит автоматически.
 exec   идентификатор-среды   команда 
Запустить  команду  в среде. Переменные оболочки не задаются в виртуальной среде.
Обработка сигналов может быть отличной от стандартной.
Если  команда  указана как  - ,
то собственно команды считываются со стандартного ввода.
 exec2   идентификатор-среды   команда 
Аналогично  exec , но код возврата совпадает с кодом возврата  команды .
 runscript 
Выполнить указанный сценарий в среде. Если она не выполняется, то будет запущена автоматически.
 enter 
Войти в виртуальную среду. Это своеобразный чёрный вход для администратора физического компьютера.
 
   
 Другие опции 

 
 --help 
Вывести краткое описание допустимый опций.
 --version 
Вывести версию  vzctl .
 
   
 ДИАГНОСТИКА 

Если при выполнении команды ошибок не возникло, программа возвращает 0.
   
 ПРИМЕРЫ 

Создать и запустить виртуальную среду "basic", с идентификатором 1000, 
используя шаблон  altlinux  и IP-адрес 192.168.10.200:
 

         vzctl create 1000 --ostemplate altlinux --config vps.basic 
 

         vzctl set 1000 --ipadd 192.168.10.200 --save 
 

         vzctl start 1000 
 


Задать ограничения на число работающих процессов (80/100) и 
открытых терминалов PTY (16/20):
 

         vzctl set 1000 --numproc 80:100 -t 16:20 --save 


Выполнить команду  ls -la  в этой же среде:
 

         vzctl exec 1000 /bin/ls -la 


Выполнить команду оболочки, задействующую конвейеры,  ls -l / | sort :
 

         vzctl exec 1000 'ls -l / | sort' 


Остановить среду:
 

         vzctl stop 1000 


Удалить среду:
 

         vzctl destroy 1000 

   
 ФАЙЛЫ 



/etc/vz/vz.conf
 

/etc/vz/conf/veid.conf
 

/proc/vz/veinfo
 

/proc/vz/vzquota
 

/proc/user_beancounters
 

/proc/fairsched
   
 СМ. ТАКЖЕ 

 vz.conf (5),

 vps.conf (5),

 vzquota (8),

   
 АВТОРСКИЕ ПРАВА 

Copyright (C) 2000-2007 SWsoft. Распространяется на условиях лицензии GNU GPL v2.
   
 ПЕРЕВОД 

Николай Шафоростов < shafff@ukr.net > 2007
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 ОПЦИИ 
 
 Флаги 
 Настройка параметров виртуальных сред 
 Создание точек восстановления 
 Управление виртуальными средами 
 Другие опции 
 
 ДИАГНОСТИКА 
 ПРИМЕРЫ 
 ФАЙЛЫ 
 СМ. ТАКЖЕ 
 АВТОРСКИЕ ПРАВА 
 ПЕРЕВОД 
 
 
 
 
 
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