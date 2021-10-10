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
 
 
 
 sysklogd (8) >>  sysklogd  (8)   ( Русские man: Команды системного администрирования )   sysklogd  (8)   ( Linux man: Команды системного администрирования ) 
   
 НАЗВАНИЕ 

sysklogd - Утилиты журналирования системы Linux.
   
 СИНТАКСИС 

 syslogd 

[  -a  

 socket 

]
[  -d  ]

[  -f  

 config file 

]
[  -h  ]

[  -l  

 hostlist 

]
[  -m  

 interval 

] 
[  -n  ]

[  -p 

 socket 

]
[  -r  ]

[  -s  

 domainlist 

]
[  -v  ]

 

   
 ОПИСАНИЕ 

 Sysklogd 

представляет собой две системные утилиты, которые обеспечивают поддержку
журналирования системы и перехват сообщений ядра.  Поддержка доменных гнёзд
интернет и unix позволяет этому пакету утилит поддерживать и локальное и
удалённое журналирование.
 
Журналирование системы обеспечивается благодаря версии
 syslogd (8),

основанной на существующих исходных текстах BSD. Поддержка журналирования ядра
обеспечивается утилитой
 klogd (8),

которая позволяет протоколировать сообщения ядра, обрабатывая их самостоятельно
или выступая в роли клиента syslogd.
 
 Syslogd 

предоставляет средства журналирования, которыми пользуются много современных
программ. Каждое сообщение содержит как минимум поля времени и имени машины,
а обычно также поле имени программы, но этот зависит от доверия к программе.
 
Т.к. исходные тексты
 syslogd 

были сильно изменены рассмотрим пару замечаний по порядку. Во-первых, была
сделана попытка систематизировать то что syslogd делает по умолчанию, в
соответствии со стандартным поведением BSD. Второе важное замечание то, что
эта версия syslogd стала взаимодействовать с версией syslog из стандартных
библиотек.  Если бинарик, скомпонованный со стандартными разделяемыми библиотеками
не выполняет своих функций правильно, то мы рады получить такой пример 
аномального поведения.
 
Главный файл настройки
 /etc/syslog.conf 

или альтернативный файл, задаваемый в опции
 -f ,

читается во время запуска. Любые строки, начинающиеся со знака диеза (``#'') и
пустые строки игнорируются. Если ошибка возникает во время синтаксического
анализа, то игнорируется строка целиком.
 
 

   
 ОПЦИИ 

 
 -a  socket 

 
Используя этот аргумент, ты можешь задать дополнительные гнёзда, которые
 syslogd 

будет слушать.  Это необходимо, если у тебя есть какой-то демон, работающий
в среде chroot().  Ты можешь использовать до 19 дополнительных гнёзд. Если 
твоей среде требуется больше, то ты можешь увеличить символ
 MAXFUNIX 

в исходном файле syslogd.c. Пример для демона chroot() описан людьми из
OpenBSD по адресу  http://www.psionic.com/papers/dns.html. 
 -d 

 
Включает отладочный режим. При этом демон не выполняет
 fork (2)

самого себя для перехода в фоновый режим, а напротив остаётся активным и 
выводит массу информации на текущий tty. Подробней смотри в разделе ОТЛАДКА.
 -f  config file 

 
Указывает альтернативный файл настроек вместо
 /etc/syslog.conf ,

используемого по умолчанию.
 -h  

 
По умолчанию, syslogd не пересылает сообщения, принятые от удалённых машин.
Указание этого параметра в командной строке заставляет демона пересылать любые
принятые удалённые сообщения на заданные машины.
 -l  hostlist 

 
Указать имя машины, которая должна журналироваться только с этим простым
именем и без fqdn. Можно указать несколько машин, перечислив их через
двоеточие (``:'').
 -m  interval 

 
Заставляет
 syslogd 

писать метку со временем через определённый интервал. По умолчанию
 interval 

записи двух строк  -- MARK --  20 минут.  Его можно изменить с помощью
этой опции.  Установка
 interval 

в ноль отключает это свойство совсем.
 -n 

 
Избегать автоматической фоновой обработки. Особенно эта опция требуется если
 syslogd 

запускается и управляется с помощью
 init (8).

 -p  socket 

 
Можно задать альтернативное доменное гнездо unix вместо
 /dev/log .

 -r 

 
Эта опция включает функцию приёма сообщений из сети через доменное гнездо
интернет с сервисом syslog (смотри
 services (5)).

По умолчанию не принимается никаких сообщений из сети.
 
Эта опция введена с версии 1.3 пакета sysklogd. Заметьте, что её поведение
по умолчанию прямо противоположно поведению в старых версиях, так что может
потребоваться её включение.
 -s  domainlist 

 
Указать имя домена, которое нужно удалить из сообщения перед записью. Можно
указать несколько доменов, разделяя их двоеточиями (``:''). Помни что
используется первое совпавшее, а не лучшее.
 -v 

 
Напечатать номер версии и выйти.
 
 

   
 СИГНАЛЫ 

 Syslogd 

реагирует на несколько сигналов. Ты можешь легко послать сигнал в
 syslogd 

с помощью:
 
 
 kill -SIGNAL `cat /var/run/syslogd.pid`
 

 
 

 
 SIGHUP 

 
Этот заставляет
 syslogd 

выполнить реинициализацию. Все открытые файлы закрываются, файл настройки
(по умолчанию
 /etc/syslog.conf )

будет перечитан и средство
 syslog (3)

запускается заново.
 SIGTERM 

 
 syslogd 

умирает.
 SIGINT ,  SIGQUIT 

 
Если отладка разрешена, то они игнорируются, иначе
 syslogd 

умирает.
 SIGUSR1 

 
Включить/выключить отладочный режим. Эта опция может использоваться только
если
 syslogd 

запущен с отладочной опцией
 -d .

 SIGCHLD 

 
Подождать рождения дочерних процессов, из-за сообщений wall.
 
 

   
 ОТЛИЧИЯ СИНТАКСИСА ФАЙЛА НАСТРОЙКИ 

 Syslogd 

использует слегка другой синтаксис в своем файле настройки чем первоначальный
из BSD. В изначальном все сообщения заданного уровня и выше пересылались в 
журнальный файл.
 
 
Например следующая строка направляет весь вывод от демонов использующих средство
daemon (debug имеет низший приоритет, поэтому все уровни выше него также будут
использованы) в
 /usr/adm/daemons :

 
         # Пример syslog.conf
        daemon.debug                    /usr/adm/daemons
 

 
 

По новой схеме такое поведение остается и в ней. Различие состоит в четырех
дополнительных описателях: звездочке ( * ) шаблона, знака равенства
( = ), восклицательного знака ( ! ) и знака минус ( - ).
 
Шаблон  *  указывает, что все сообщения заданного средства будут направлены
по указанному назначению.  Заметим, что такое поведение вырождает указание
уровня debug. Пользователи подтвердили, что запись со звездочкой более понятна.
 
Шаблон  =  используется для ограничения записи сообщений заданным уровнем.
Это позволяет, например, брать из определенного источника только сообщения debug.
 
 
Например, следующая строка из
 syslog.conf 

направить сообщения debug от всех источников в файл
 /usr/adm/debug .

 
         # Пример syslog.conf
        *.=debug                        /usr/adm/debug
 

 
 



 !  используется для исключения из журналирования определенных
уровней. Он влияет на все (!) возможные заданные уровни.
 
 
Например следующие строки сохраняют все сообщения средства mail, кроме тех
чей уровень равен info в файл
 /usr/adm/mail .

И все сообщения от news.info (включительно) по news.crit
(не включая) сохранятся в файле
 /usr/adm/news .

 
         # Пример syslog.conf
        mail.*;mail.!=info              /usr/adm/mail
        news.info;news.!crit            /usr/adm/news
 

 
 

Ты можешь использовать исключающий описатель для большей наглядности.
Смысл упомянутого выше объяснения - простая инверсия. Чтобы добиться
такого же результат можно использовать
 
         mail.none
 

или
         mail.!*
 

or
         mail.!debug
 

 
будет пропущено каждое сообщение, которое поступает от средства mail.
Есть много возможностей побаловаться с этим. :-)
 
Шаблон  -  может использоваться только как префикс имени файла для
пропуска синхронизации файла после каждой в него записи.
 
Людям, использующим чистый BSD, может понадобиться немного приспособиться, но
тестеры говорят, что этот синтаксис более гибок по сравнению с BSD-ым. Заметим
что эти изменения не влияют на стандартные файлы
 syslog.conf (5).

Ты должен специально изменить файлы настройки для получения этих дополнительных
возможностей.
 

   
 ПОДДЕРЖКА УДАЛЕННОГО ЖУРНАЛИРОВАНИЯ 

В syslogd сделаны изменения для поддержки сети. Поддержка сети означает, что
сообщения могут перенаправляться с одного узла с запущенным syslogd на другой
узел с запущенным syslogd, где они будут окончательно сохранены в файле на
диске.
 
Чтобы включить это, ты должен указать опцию
 -r 

в командной строке. По умолчанию
 syslogd 

не слушает сообщения из сети.
 
Хорошо иметь syslogd слушающий доменное гнездо unix на предмет локально
создаваемых сообщений.  Такое поведение позволит syslogd взаимодействовать с
syslog, расположенным в стандартной библиотеке C.  В то же время syslogd
слушает сообщения из стандартного syslog порта, передаваемые другими машинами.
Чтобы это правильно работало, файл
 services (5)

(обычно лежит в
 /etc )

должен иметь следующую запись:
 
 
         syslog          514/udp
 

 
 

Если такой записи нет, то
 syslogd 

не сможет принимать и посылать удаленные сообщения, т.к. UDP порт нельзя
открыть. И
 syslogd 

сразу умирает, выдав сообщение об ошибке.
 
Чтобы сообщения передавались на другую машину нужно заменить в строке
 syslog.conf 

имя нормального файла на имя машины на которую нужно отправлять сообщения
предварив его символом @.
 
 
Например, для отправки
 ВСЕХ 

сообщений на удаленную машину используется
следующая запись в
 syslog.conf :

 
         # Пример файла настройки syslogd, чтобы все сообщения
        # отправлялись на удаленную машину.
        *.*                     @hostname
 

 
Чтобы переслать сообщения  ядра  на удаленную машину нужно вставить
в файл настройки следующее:
 
         # Пример файла настройки для передачи всех
        # сообщений ядра на удаленную машину.
        kern.*          @hostname
 

 
 

 
Если имя удаленной машины не определяется при запуске из-за того что
сервер имен еще не доступен (он может запускаться после syslogd), то это ничего
страшного.
 Syslogd 

повторит определение имени десять раз и только затем выразит недовольство.
Есть возможность избежать этого, поместив имя машины в 
 /etc/hosts .

 
С нормальным
 syslogd 

можно получить syslog-зацикливание, если ты отсылаешь сообщения с одной машины
на удаленную машину, которая в свою очередь посылает их назад на отправившую
машину (или гораздо сложнее когда третья машина посылает обратно на первую и
так далее). В моем домене (Infodrom Oldenburg) мы создали такую аварийную
ситуацию и один из наших дисков переполнился одним и тем же сообщением. :-(
 
Чтобы избежать этого в дальнейшем, сообщения которые приняты с удаленной машины
больше не отсылаются на другую (или ту же самую) удаленную машину. Если вдруг
возникла необходимость это делать, пожалуйста напиши мне (Joey).
 
Если удаленная машина расположена в том же домене что и машина где запущен
 syslogd ,

то может использоваться только простое имя машины, а не весь fqdn.
 
В локальной сети ты можешь выделить центральный сервер журналирования, чтобы
держать всю важную информацию на одной отдельной машине. Если сеть состоит из
нескольких доменов, то не жалуйся что в журнал пишется имя машины полностью
вместо укороченного имени. Ты можешь использовать свойство вырезающее домен
 -s 

на таком сервере. Ты можешь сказать
 syslogd 

вырезать некоторые домены, отличные от того где расположен сервер и сохранять
только простое имя машины.
 
С помощью опции
 -l 

также возможно определить отдельные хосты как локальные машины.
Это также приводит записи только их простых имен и без fqdn.
 
Гнездо UDP используется для передачи сообщений на удаленные машины или для
приема сообщений с них и открывается только когда оно нужно.  В версиях до 1.3-23
оно открывалось каждый раз, но не открывалось для чтения или передачи соответственно.
 
   
 ВЫВОД В ИМЕНОВАННЫЕ КАНАЛЫ (FIFOs) 

Эта версия syslogd поддерживает вывод журнала в именованные каналы (fifos).
fifo или именованный канал может использоваться как пункт назначения для 
сообщений, если перед именем файла поставить символ канала (``|''). Это удобно
для отладки. Заметим, что fifo должно быть создано с помощью команды mkfifo
перед запуском syslogd.
 
 
Следующий файл настройки направляет debug сообщения из ядра в fifo:
 
         # Пример файла настройки, перенаправляющего
        # отладочные сообщения ядра ТОЛЬКО в /usr/adm/debug,
        # который является именованным каналом.
        kern.=debug                     |/usr/adm/debug
 

 
 

   
 ОТНОСИТЕЛЬНО УСТАНОВКИ 

Есть, вероятно один важный момент в установке этой версии syslogd. Эта версия
syslogd зависит от правильного формата сообщений производимых функцией syslog.
Работа функции syslog в разделяемых библиотеках была изменена где-то в районе
версии libc.so.4.[2-4].n.  Изменение состояло в том, что сообщение стало заканчиваться
нулевым символом перед передачей его в гнездо
 /dev/log .

Правильная работа этой версии syslogd зависит от того заканчивается сообщение
нулевым символом или нет.
 
Эта проблема обычно сама обнаруживается, если в системе используются старые
статически собранные исполняемые файлы.  Использование старой версии функции
syslog приводит к появлению пустых строк сразу после сохраняемого сообщения
с удаленным первым символом. Пересборка этих двоичных файлов с новыми версиями
разделяемых библиотек решает эту проблему.
 
И
 syslogd (8) и  klogd (8)

могут запускаться либо из
 init (8)

или как часть последовательности rc.*. Если они стартуют из init, то нужно
указать опцию  -n , иначе ты получишь тонну запущенных демонов. Это
происходит из-за того что 
 init (8)

зависит от ID процесса.
 

   
 УГРОЗА БЕЗОПАСНОСТИ 

Потенциально, демон syslogd может использоваться как проводник
атаки отказа в обслуживании.  Спасибо John Morrison ( jmorriso@rflab.ee.ubc.ca )
за это предупреждение.
Дегенеративная программа(программист) может очень легко завалить
демона syslogd сообщениями syslog, что в результате приведет к пожиранию
журнальными файлами оставшегося места в файловой системе. Включение журналирования
через доменные гнезда inet естественно подвергает систему риску со стороны.
 
Есть несколько методов защиты машины:
 
 1. 
Включить в ядре файрволл, разрешающий доступ к гнезду 514/UDP только
определенным машинам или сетям.
 2. 
Запись журнала можно вести в изолированной или не-root файловой системе,
которая если заполнится, все равно не повредит машине.
 3. 
Можно использовать файловую систему ext2, в которой можно настроить процент
файловой системы, которым может пользоваться только суперпользователь.
 ЗАМЕТИМ , что часть необходима syslogd для запуска не-root процесса.
 ЗАМЕТИМ ТАКЖЕ  что это предотвращает использование удаленного журналирования
т.к. syslogd не может связаться с 514/UDP гнездом.
 4. 
Отключить доменные гнезда inet для ограничения риска повреждения локальной машины.
 5. 
Используй шаг 4 и если проблема осталась и это не проказы
программы/демона, то возьми длинный 3.5 фута (приблизительно 1 метр) поршень и
позадавай вопросы своим пользователям.
 
Поршень представляет собой диаметром 3/4, 7/8 или 1 дюйм, твердый стальной
прут, с резьбой на концах. Первоначально использовался в нефтяной промышленности
в Северо Западной Дакоте и других местах добычи 'выкачиванием' нефти из
нефтяных скважин. Еще эту конструкцию автоматической подачи время от времени
используют для разговора с непослушными или воинствующими личностями.
 
 

   
 ОТЛАДКА 

Когда включается отладка с помощью опции
 -d ,

то
 syslogd 

выводит много информации на stdout о том что делает. Всякий раз когда
файл настройки перечитывается и синтаксически разбирается ты увидишь
таблицу, которая отражает внутреннюю структуру данных. Эта таблица состоит из
четырех полей:
 
 number 

 
Это поле содержит последовательный набор цифр, начинающийся с нуля. Этот номер представляет
собой местоположение во внутренней структуре данных (т.е. массив). Если слева
стоит единица, то это может означать ошибку в соответствующей строке
 /etc/syslog.conf .

 pattern 

 
Это поле сложное и представляет точную внутреннюю структуру. Каждый столбец
отводится под средство (смотри
 syslog (3)).

Как ты можешь увидеть, есть еще несколько свободных средств составления шаблона,
используется в основном левая часть. Каждое поле в столбце представляет
собой уровни (смотри
 syslog (3)).

 action 

 
Это поле описывает определенное действие, которое выполняется всякий раз когда
сообщение удовлетворяет шаблону. Смотри man страницу
 syslog.conf (5)

на предмет возможных действий.
 arguments 

 
В этом поле показаны дополнительные аргументы к действиям в последнем поле.
Для сохранения в файл это имя файла; для отправки пользователям это
список пользователей; для удаленного журналирования это имя машины для сбора
сообщений; для вывода на консоль это задействованная консоль; для вывода на tty
это определенный tty; у wall нет дополнительных аргументов.
 
   
 ФАЙЛЫ 


 
 /etc/syslog.conf 

 
Файл настройки
 syslogd .

Смотри в
 syslog.conf (5)

подробную информацию.
 /dev/log 

 
Доменное гнездо Unix откуда читаются локальные сообщения syslog.
 /var/run/syslogd.pid 

 
Файл содержит id процесса
 syslogd .


 
   
 БАГИ 

Если ошибка встречается в строке, то игнорируется всё правило.
 
 Syslogd 

не изменяет режим доступа к открытым журнальным файлам на всех стадиях процесса.
Если файл создается заново, то он может быть прочитан всеми. Если ты хочешь
избежать этого, тебе нужно самому создать его или изменить права доступа на свои.
Это может быть выполнено в комбинации с циклическим сдвигом журнальных
файлов с помощью программы
 savelog (8),

которая есть в дистрибутиве
 smail 

версии 3.x. Помни, что это может обернуться дырой в безопасности, если
каждый сможет прочитать auth.* сообщения, которые могут содержать пароли.
 

   
 СМ. ТАКЖЕ 

 syslog.conf (5),

 klogd (8),

 logger (1),

 syslog (2),

 syslog (3),

 services (5),

 savelog (8)

 

   
 СОТРУДНИКИ 

 Syslogd 

взят из исходных текстов BSD, Greg Wettstein ( greg@wind.enjellic.com ) выполнил
портирование на Linux, Martin Schulze ( joey@linux.de ) исправил несколько ошибок
и добавил некоторые новые свойства.
 Klogd 

был изначально написан Steve Lord ( lord@cray.com ), Greg Wettstein сделал
основные улучшения.
 

 
 Dr. Greg Wettstein 
 Enjellic Systems Development 
 Oncology Research Division Computing Facility 
 Roger Maris Cancer Center 
 Fargo, ND 
 greg@wind.enjellic.com 
 
 Stephen Tweedie 
 Department of Computer Science 
 Edinburgh University, Scotland 
 sct@dcs.ed.ac.uk 
 
 Juha Virtanen 
 jiivee@hut.fi 
 
 Shane Alderton 
 shane@ion.apana.org.au 
 
 Martin Schulze 
 Infodrom Oldenburg 
 joey@linux.de 


 
 
   
 ПЕРЕВОД 

Оригинал взят из sysklogd-1.3-31
 

Перевод выполнил Юрий Козлов, очень рад замечаниям по адресу  y_kozlov@chat.ru .
 

Срд Авг  2 20:07:32 MSD 2000
 

Сергиев-Посадская LUG spslug.sposad.ru
 

HomePage  www.chat.ru /~y_kozlov
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ОПЦИИ 
 СИГНАЛЫ 
 ОТЛИЧИЯ СИНТАКСИСА ФАЙЛА НАСТРОЙКИ 
 ПОДДЕРЖКА УДАЛЕННОГО ЖУРНАЛИРОВАНИЯ 
 ВЫВОД В ИМЕНОВАННЫЕ КАНАЛЫ (FIFOs) 
 ОТНОСИТЕЛЬНО УСТАНОВКИ 
 УГРОЗА БЕЗОПАСНОСТИ 
 ОТЛАДКА 
 ФАЙЛЫ 
 БАГИ 
 СМ. ТАКЖЕ 
 СОТРУДНИКИ 
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