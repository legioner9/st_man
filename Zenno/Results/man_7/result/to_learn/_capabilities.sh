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
 
 
 
 capabilities (7) >>  capabilities  (7)   ( Русские man: Макропакеты и соглашения )   capabilities  (7)   ( Linux man: Макропакеты и соглашения ) Ключ  capabilities  обнаружен в базе ключевых слов. 
   
 НАЗВАНИЕ 

capabilities - обзор возможностей Linux
   
 ОПИСАНИЕ 

 
Для того, чтобы выполнять проверки на соответствие прав, обычные реализации
Unix имели две категории процессов:
 привилегированные 

процессы (privileged, у них действующий идентификатор пользователя равен 0,
соответствуя суперпользователю root) и
 непривилегированные 

процессы (unprivileged, у них действующий идентификатор пользователя не равен 0).
Привилегированные процессы осуществляют все проверки прав в ядре, в то время
как непривилегированные процессы являются объектом для полноценной проверки
всех прав на основе параметров процесса (обычно: действующий идентификатор
пользователя UID, действующий идентификатор группы GID и список
дополнительных групп).
 
Начиная с ядра 2.2, Linux обеспечивает (хотя и не полностью) в системе много
 возможностей ,

разделяющие привилегии, традиционно ассоциированные с суперпользователем,
в отдельный блок, который может быть независимо включен или выключен.
   
 Список возможностей 

 
В системе Linux 2.4.20 реализованы такие возможности:



 
 CAP_CHOWN 

 
Позволяет реализовывать произвольные изменения в UID и GID файлов (см.
 chown (2)).

 CAP_DAC_OVERRIDE 

 
Пропустить проверки прав на чтение, запись и исполнение..
(DAC = "discretionary access control", "управление доступом по усмотрению".)
 CAP_DAC_READ_SEARCH 

 
Пропустить проверку прав на чтение файла и
прав на чтение и исполнение для каталогов.
 CAP_FOWNER 

 
Пропустить проверку прав для операций, обычно требующих от файловой системы
соответствия UID процесса и UID файла (например,
 utime (2)),

исключая операции, обрабатываемые
 CAP_DAC_OVERRIDE 

и
 CAP_DAC_READ_SEARCH ;

игнорировать бит sticky при удалении файлов.
 CAP_FSETID 

 
Не очищать биты set-user-ID и set-group-ID при изменении файла;
разрешить установку бита set-group-ID только для файлов, чей GID не соответствует
файловой системе или любым дополнительным GID вызывающего процесса.
 CAP_IPC_LOCK 

 
Разрешить блокировку памяти
( mlock (2),

 mlockall (2),

 shmctl (2)).

 CAP_IPC_OWNER 

 
Пропустить проверки прав на операции для объектов IPC в System V.
 CAP_KILL 

 
Пропустить проверки прав для отправляемых сигналов (см.
 kill (2)).



 CAP_LEASE 

 
(новинка в Linux 2.4) Разрешить аренды файлов для случайных файлов (см.
 fcntl (2)).

 CAP_LINUX_IMMUTABLE 

 
Разрешить установку дополнительных атрибутов
 EXT2_APPEND_FL 

и
 EXT2_IMMUTABLE_FL 

для файловой системы
 ext2. 

 CAP_MKNOD 

 
(новинка в Linux 2.4)
Разрешить создание особых файлов, использующих
 mknod (2).

 CAP_NET_ADMIN 

 
Разрешить различные сетевые операции
(например, установку опций привилегированных сокетов,
включение многоадресной рассылки, настройки интерфейсов,
изменение таблиц маршрутизации).
 CAP_NET_BIND_SERVICE 

 
Разрешить привязку к зарезервированным портам сокетов доменов
интернет (то есть к номерам портов менее 1024).
 CAP_NET_BROADCAST 

 
(не используется) Разрешить широковещательные сокеты, а также
прослушивание многоадресных рассылок.
 CAP_NET_RAW 

 
Разрешить использование сокетов RAW и PACKET.
 CAP_SETGID 

 
Разрешить произвольные манипуляции с GID процессов и списком
дополнительных GID; разрешить забывание GID при прохождении
параметров сокетов через доменные сокеты Unix.
 CAP_SETPCAP 

 
Разрешать или удалять любые возможности в допустимых возможностях
вызывающего, установленных в/из любых других процессах.
 CAP_SETUID 

 
Разрешить произвольные манипуляции UID процессов
( setuid (2),

etc.);
разрешить ложные UID при прохождении параметров сокетов
через доменные сокеты Unix.

 CAP_SYS_ADMIN 

 
Разрешить диапазон системных административных операций, включая:
 quotactl (2),

 mount (2),

 swapon (2) , 

 sethostname (2),

 setdomainname (2),

Операции
 IPC_SET 

и
 IPC_RMID 

на произвольных объектах IPC в System V;
разрешить ложные UID при прохождении параметров сокетов.
 CAP_SYS_BOOT 

 
Разрешить вызовы к
 reboot (2).

 CAP_SYS_CHROOT 

 
Разрешить вызовы к
 chroot (2).

 CAP_SYS_MODULE 

 
Разрешить загрузку и выгрузку модулей ядра;
разрешить изменения в наборе возможностей.
 CAP_SYS_NICE 

 
Разрешить поднятие приоритета процесса
( nice (2),

 setpriority (2))

и изменение приоритета произвольных процессов;
разрешить настройку политик в режиме реального времени
для вызывающего процесса и настройку политик и приоритетов
для произвольных процессов
( sched_setscheduler (2),  sched_setparam (2)).

 CAP_SYS_PACCT 

 
Разрешить вызовы к
 acct (2).

 CAP_SYS_PTRACE 

 
Разрешить отслеживание произвольных процессов, используя
 ptrace (2)

 CAP_SYS_RAWIO 

 
Разрешить операции ввода/вывода с портами
( iopl (2)

и
 ioperm (2)).

 CAP_SYS_RESOURCE 

 
Разрешить: использование зарезервированного места на
файловых системах ext2; вызовы
 ioctl (2)

управляющие журналированием в ext3;
переопределение дисковых квот;
увеличение лимитов ресурсов (см.
 setrlimit (2));

 RLIMIT_NPROC 

переопределение лимитов ресурсов;
 msg_qbytes 

ограничить лимит очередей сообщений так, чтобы
он был выше ограничений в
 /proc/sys/kernel/msgmnb 

(см.
 msgop (2)

и
 msgctl (2).

 CAP_SYS_TIME 

 
Разрешить коррекцию системных часов
( settimeofday (2),

 adjtimex (2));

разрешить коррекцию текущего времени (в оборудовании).
 CAP_SYS_TTY_CONFIG 

 
Разрешить вызовы к
 vhangup (2).

 
 
   
 Возможности процессов 

Каждый процесс имеет три набора возможностей, содержащих
ни одного или несколько из перечисленных возможностей:
 
 Effective (действующие):

 
возможности используются ядром для выполнения
проверок прав процессов.
 Permitted (разрешенные):

 
возможности, выделенные процессу
(например, ограниченный расширенный набор для действующего и
наследуемого наборов).
Если процесс сбрасывает возможность из его разрешенного набора,
то он никогда не обретет ее повторно (пока не исполнится
программа set-UID-root).
 Inherited (унаследованные):

 
возможности, зарезервированные через
 execve (2).

 
 

В текущей реализации процессу выдаются все действующие и разрешенные
возможности (объекты для операции по ограничению набора возможностей
описаны ниже) при исполнении программы set-UID-root, или если
процесс с действительным UID равным 0 исполняет новую программу. 
 

Порожденный через
 fork (2)

процесс копирует себе все наборы возможностей своего родителя.
 

Используя
 capset (2),

процесс может управлять своими наборами возможностей, или,
если у него есть возможность
 CAP_SETPCAP ,

возможностями других процессов.
 
   
 Граница набора возможностей 

Когда программа исполняется, ее действующие и разрешенные возможности
логически умножаются (AND) с текущим значением так называемого
 границы набора возможностей ,

определенной в файле
 /proc/sys/kernel/cap-bound .

Этот параметр может использоваться для размещения общесистемного
лимита на возможности, выделяемые всем последовательно исполняемым
программам (к сожалению, этот параметр битовой маски выражен
в виде десятичного числа со знаком в
 /proc/sys/kernel/cap-bound .)

 
Только процесс
 init 

может устанавливать биты в границе набора возможностей; все другие,
кроме суперпользователя, могут только очищать биты в этом наборе.
 
В обычной системе граница набора возможностей всегда маскируется от
возможности
 CAP_SETPCAP .

Для снятия этого ограничения измените определение
 CAP_INIT_EFF_SET 

в
 include/linux/capability.h 

и пересоберите ядро.
 
   
 Текущая и будущие реализации 

Полная реализация возможностей требует:
 
 1. 
чтобы для всех привилегированных операций ядро проверяло, имеет ли процесс
требуемые возможности в его действуещем наборе.
 2. 
чтобы ядро обеспечивало системные вызовы, разрешающие получать и изменять
наборы возможностей процесса.
 3. 
чтобы файловая система поддерживала прикрепление возможностей к исполняемым
файлам, так чтобы процесс получал их при исполнении файла.
 
 

Если рассмотреть Linux 2.4.20,
то в нем выполняются только первые два требования.
 
В конечном итоге можно ассоциировать эти три набора возможностей
с исполняемым файлом, который в соединении с наборами возможностей
процесса будет определять возможности процесса после исполнения
 exec :

 
 Allowed (разрешенные):

 
набор логически умножается (AND) с наследованным набором процесса для
определения наследуемых возможностей, разрешенных процессу после
исполнения exec.
 Forced (принужденные):

 
возможности автоматически разрешаются процессу, независимо
от наследуемых возможностей процесса.
 Effective (действующие):

 
эти возможности в новом разрешенном наборе также будут
установлены в новый действующий набор. 
(F(effective) будет состоять либо из всех нулей, либо из единиц.)
 
 

В то же время, так как текущие реализации не поддерживают
наборы возможностей файлов, то во время исполнения exec:
 
 1. 
Все три набора возможностей файла считаются очищенными.
 2. 
Если исполняется программа set-UID-root, или если действительный
идентификатор пользователя процесса равен 0 (root), то файлу
разрешены и принудительно устанавливаются все единицы в наборе
(то есть полный набор возможностей).
 3. 
Если исполняется программа set-UID-root, то действующий набор
файла определен во все единицы.
 
 

Во время исполнения exec, ядро рассчитывает новые возможности
процесса, используя следующий алгоритм:

 
P'(permitted) = (P(inherited) & F(allowed)) | (F(forced) & cap_bset)

P'(effective) = P'(permitted) & F(effective)

P'(inherited) = P(inherited)    [i.e., unchanged]

 


где:
 
 P 
обозначает набор возможностей процесса до исполнения
 P' 
обозначает значение набора возможностей после исполнения
 F 
обозначает набор возможностей файла
 cap_bset 
является значением границы набора возможностей.
 
   
 ЗАМЕЧАНИЯ 

Пакет
 libcap 

обеспечивает набор процедур для получения и определения возможностей
процесса, что является более удобным, чем предлагаемый интерфейс от
 capset (2)

и
 capget (2).

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Для этих возможностей собственно нет стандарта, но их реализация
в Linux основана на выдержках из POSIX 1003.1e.
   
 НАЙДЕННЫЕ ОШИБКИ 

Пока еще нет поддержки файловой системы, позволяющей ассоциировать
эти возможности с исполняемыми файлами.
   
 СМ. ТАКЖЕ 

 capget (2),

 prctl (2)

 

 
   Index 
 
 НАЗВАНИЕ 
 ОПИСАНИЕ 
 
 Список возможностей 
 Возможности процессов 
 Граница набора возможностей 
 Текущая и будущие реализации 
 
 ЗАМЕЧАНИЯ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 НАЙДЕННЫЕ ОШИБКИ 
 СМ. ТАКЖЕ 
 
 
 
 
 
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