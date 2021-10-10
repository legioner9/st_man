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
 
 
 
 fuser (1)   fuser  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня ) >>  fuser  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   fuser  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   fuser  (1)   ( POSIX man: Команды и прикладные программы пользовательского уровня ) 
   
 НАЗВАНИЕ 

fuser - идентифицирует процессы, которые используют указанные файлы или сокеты
   
 СИНТАКСИС 


 fuser 

[ -a | -s | -c ]

[ -4 | -6 ]

[ -n  

 space  ]

[ -k 

[ -i ]

[ - signal 

] ]
[ -muvf ]

 name  ...

 

 fuser 

-l

 

 fuser 

-V


   
 ОПИСАНИЕ 

 fuser 

отображает идентификаторы процессов (PIDs), которые используют в данный момент
указанные файлы или файловые системы, заданные аргументом  name .
По умолчанию во время вывода информации после имени каждого файла
следует буква, показывающая вид доступа:
 
 
 c 
текущий каталог.
 e 
запущенный исполняемый файл.
 f 
открытый файл. По умолчанию в режиме вывода информации буква  f  может
отсутствовать.
 F 
открытый для записи файл. По умолчанию в режиме вывода информации буква  F 
может отсутствовать.
 r 
корневой каталог.
 m 
отображаемый файл или разделяемая (совместно используемая) библиотека.
 
 

 

Команда  fuser  возвращает ненулевой код возврата, если ни один из указанных
файлов не "захвачен" ни одним процессом или в случае возникновения фатальной ошибки.
Если найден хотя бы один процесс, который использует  name , то команда  fuser 
возвращает ноль.
 

В случае просмотра процессов, которые используют сокеты TCP и UDP, соответствующее
название  space  должно быть указано с параметром  -n . По умолчанию команда
 fuser  будет искать по сокетам IPv6 и IPv4. Чтобы изменить установки,
действующие по умолчанию, необходимо использовать параметры  -4  и  -6 .
В качестве сокета(-ов) может быть указан как локальный, так и удалённый порт или
удалённый адрес. Хотя все поля являются необязательными, однако перед пропущенными
полями запятые должны присутствовать:
 
 [ lcl_port ][ , [ rmt_host ][ , [ rmt_port ]]] 

 
Для адресов IP и номеров портов может быть указан либо номер порта, либо его
символьное название.
 

На стандартное устройство вывода  fuser  направляет только идентификаторы
процессов (PIDs), всё остальное направляется на стандартное устройство вывода ошибок.
   
 ПАРАМЕТРЫ 

 
 -a 
Показывает информацию для всех файлов, которые указаны в командной строке.
По умолчанию выводятся имена только тех файлов, которые используются
хотя бы одним процессом.
 -c 
Подобно параметру -m и применяется для совместимости с POSIX.
 -f 
Игнорируется без предупреждения. Применяется для совместимости с POSIX.
 -k 
Уничтожает (завершает) процессы, которые используют указанный файл. Посылаемый сигнал
завершения SIGKILL можно заменить с помощью параметра  - signal .
Процесс  fuser  никогда не уничтожит себя сам, однако может завершить работу
других процессов  fuser . Перед попыткой уничтожить выполняющийся процесс,
команда  fuser  устанавливает эффективный идентификатор пользователя ID этого
процесса в идентификатор собственного пользователя.
 -i 
Перед завершением процесса потребует подтверждения от пользователя. Если не задан
параметр  -k , этот параметр игнорируется без предупреждения.
 -l 
Выводит список всех существующих названий сигналов.
 -m 
В качестве  name  указывается файл на смонтированной файловой системе или
смонтированное специальное блочное устройство.
Выводится список всех процессов, которые используют файлы на этой файловой системе.
Если указанный файл является каталогом, тогда к его имени автоматически добавляется
 name /. и рассматривается любая файловая система, которая может быть
смонтирована на этот каталог.
 -n  space 
Выбирает различные множества имён. Поддерживаются такие множество имён как  file 
(по умолчанию это имена файлов),  udp  (локальные порты UDP) и  tcp 
(локальные порты TCP). Для портов может быть указан либо номер порта, либо
его символьное название. Можно использовать сокращенную запись цифрами
 name / Ispace (например,  80 / tcp ), если она однозначно
характеризует объект.
 -s 
Выполняет операции без вывода сообщений. Параметры  -u  и  -v  игнорируются
в этом режиме.
Параметр  -a  не должен использоваться с параметром  -s .
 - signal 
Посылает процессу указанный сигнал завершения работы вместо обычного SIGKILL.
Сигналы могут быть заданы по названию (например,  -HUP ) или по номеру
(например,  -1 ). Этот параметр без предупреждения игнорируется, если не
используется параметр
 -k .
 -u 
Добавляет к каждому PID имя владельца процесса.
 -v 
Режим подробного информирования. Процессы показываются в стиле вывода команды  ps .
  Поля PID, USER и COMMAND подобны выводу команды  ps . Поле ACCESS
показывает процесс, который использует файл. Если объект используется ядром
(например, в случае точек монтирования, swap файла и др.),
вместо PID отображается строка  kernel .
 -V 
Выводит информацию о версии программы.
 -4 
Выполняется поиск только для сокета IPv4. Этот параметр не должен использоваться
с параметром  -6  и работает только с названиями  space  tcp и udp.
 -6 
Выполняется поиск только для сокета IPv6. Этот параметр не должен использоваться
с параметром  -4  и работает только с названиями  space  tcp и udp.
 - 
Сбрасывает все параметры и устанавливает сигнал уничтожения процессов в SIGKILL.
 
   
 ФАЙЛЫ 

 /proc   месторасположение файловой системы proc
 

   
 ПРИМЕРЫ 

 fuser -km /home  уничтожает все процессы, использующие каким-либо образом
файловую систему /home.
 

 if fuser -s /dev/ttyS1; then :; else  something ; fi вызывает выполнение
 something , если никакой другой процесс не использует /dev/ttyS1.
 

 fuser telnet/tcp  показывает все процессы (локальные) на порте TELNET.
   
 ОГРАНИЧЕНИЯ 

Информация о процессах, которые используют в различное время и по разному один и тот
же файл или файловую систему, отображается только один раз.
 

Если один и тот же объект указывается в командной строке в различное время, то в
дальнейшем некоторые из этих запросов могут быть проигнорированы.
 

Без запуска с необходимыми привилегиями команду  fuser  можно использовать
для сбора предварительной неполной информации. Поскольку информация о файлах,
открытых процессами, которые принадлежат другим пользователям, может отсутствовать в
списке вывода, а режим выполнения может классифицироваться только как
режим отображения на объект.
 

Установка для  fuser  бита привилегий суперпользователя SUID может устранить
проблемы, которые связаны с неполной информативностью вывода программы для обычного
пользователя, однако это может быть нежелательным с точки зрения информационной
безопасности системы и соображений конфиденциальности личной информации.
 

Названия протоколов  udp ,  tcp  и доменных сокетов UNIX могут быть
не найдены на старых ядрах (старее чем 1.3.78).
 

В настоящее время  udp  и  tcp  работают с IPv6 и IPv4, но
адресные поля могут быть заданы только для IPv4 адресации.
 

Процессы, которые принадлежат ядру, выводятся только с параметром  -v .
 

Параметр  -k  имеет силу только для процессов. Если владельцем процесса
является ядро,  fuser  сообщит об этом и никаких действий не будет
предпринимать.
   
 ОШИБКИ 

 

Команда fuser -m /dev/sgX отобразит (или уничтожит с параметром -k)
все процессы даже в том случае, если она не знает какое устройство сконфигурировано.
Возможно она сделает это для различных устройств.
 

 fuser 

не сможет дать информацию о любых процессах, режим доступа к которым
запрещает просматривать файловую таблицу дескрипторов.
В большинстве случаев эта проблема возникает при
просмотре информации по сокетам TCP или UDP когда
 fuser 

выполняется от имени не суперпользователя. В этом случае
 fuser 

сообщит о невозможности доступа к  необходимой информации.
   
 АВТОРЫ 

 

Werner Almesberger < werner@almesberger.net >
 

Craig Small < csmall@small.dropbear.id.au >
   
 СМ. ТАКЖЕ 

 kill (1),  killall (1),  lsof (8),  ps (1),  kill (2).



   
 ПЕРЕВОД 

оригинального файла на английском fuser.1.gz (2684 байт от 11.05.2005)
выполнен Aleksander N.Gorohovski < angel@feht.dgtu.donetsk.ua > 09.01.2007.
RE
   
 РЕЦЕНЗИЯ ПЕРЕВОДА 

Michael Shigorin < mike@osdn.org.ua >
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ПАРАМЕТРЫ 
 ФАЙЛЫ 
 ПРИМЕРЫ 
 ОГРАНИЧЕНИЯ 
 ОШИБКИ 
 АВТОРЫ 
 СМ. ТАКЖЕ 
 ПЕРЕВОД 
 РЕЦЕНЗИЯ ПЕРЕВОДА 
 
 
 
 
 
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