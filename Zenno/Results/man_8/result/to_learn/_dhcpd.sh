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
 
 
 
 dhcpd (8) >>  dhcpd  (8)   ( Русские man: Команды системного администрирования )   dhcpd  (8)   ( Linux man: Команды системного администрирования ) 
   
 ИМЯ 

dhcpd - сервер DHCP (Dynamic Host Configuration Protocol)
   
 ОБЗОР 

 dhcpd 

[
 -p 

 порт 

]
[
 -f 

]
[
 -d 

]
[
 -q 

]
[
 -t 

|
 -T 

]
[
 -cf 

 конфигурационный-файл 

]
[
 -lf 

 lease-файл 

]
[
 -pf 

 pid-файл 

]
[
 -tf 

 trace-output-файл 

]
[
 -play 

 trace-playback-файл 

]
[
 if0 

[
 ...ifN 

]
]
   
 ОПИСАНИЕ 

Сервер DHCP от Internet Systems Consortium, dhcpd, реализует протоколы 
  Dynamic Host Configuration Protocol (DHCP) и Internet Bootstrap
Protocol (BOOTP). DHCP позволяет хостам сети TCP/IP запрашивать и назначать
IP адреса и также иную информацию о сети, в которой они находятся. BOOTP
предоставляет те же функции, но с определенными ограничениями.
 
   
 ВКЛАД 

 

Это программное обеспечение является свободным. В различное время разработка
происходила в разных организациях, включая ISC и Vixie Enterprises.
Разработка третьей версии почти полностью финансируется Nominum, Inc.
 

На данном этапе разработка контролируется Тедом Лемоном (Ted Lemon) и размещается
ISC, но будущее этого проекта зависит от вас. Если у вас есть предложения по 
улучшению, обратитесь за их реализацией к ним.
 
   
 ПРОЦЕСС 

 

Протокол DHCP позволяет назначить хосту, неизвестному сетевому администратору,
новый IP адрес из списка свободных адресов этой сети. Для того, чтобы это 
работало, сетевой администратор определяет список свободных адресов для каждой
подсети в файле
 dhcpd.conf (5).
 

При запуске dhcpd читает файл
 dhcpd.conf 

и хранит список свободных адресов каждой подсети в памяти. При запросе клиентом 
адреса по протоколу DHCP, dhcpd находит адрес для него. Каждому клиенту
назначается аренда (lease), которая истекает по истечении указанного
администратором срока (по умолчанию - один день. Перед тем, как срок аренды
истечет, клиент должен снова запросить адрес. После истечения срока аренды
клиенту запрещается использовать арендованный IP адрес.
 

Для того, чтобы отслеживать аренду адресов при перезагрузке и рестарте сервера,
dhcpd хранит список арендованных адресов в файле  dhcpd.leases (5). Перед тем,
как dhcpd позволяет аренду хосту, он записывает данные об аренде в файл и
убеждается, что файл реально сохранён (буфер сброшен на диск). Это гарантирует
даже при сбое системы сохранение информации о выданных адресах. При запуске
после чтения файла dhcpd.conf читается файл dhcpd.leases для построения в
памяти списка выданных адресов.
 

Последние выданные адреса записываются в конец файла dhcpd.leases. Для
предотвращения распухания файла, время от времени dhcpd создает новый файл
dhcpd.leases из свежего списка. Когда новый файл записывается на диск, старый
файл переименовывается в
 dhcpd.leases~ ,

а новый файл переименовывается в dhcpd.leases. При сбое системы во время этого
процесса это позволяет сохранить всю информацию в файле dhcpd.leases без
дополнительных усилий по восстановлению после сбоев.
 

Этот сервер также поддерживает BOOTP.
В отличие от DHCP, протокол BOOTP не позволяет восстановить динамически
назначенные адреса, когда они больше не нужны. Можно динамически назначать
адреса клиентам BOOTP, но для утилизации неиспользуемых адресов потребуется
некоторый административный процесс. По умолчанию срок аренды адресов клиентами
BOOTP бесконечен, хотя сетевые администраторы могут назначить более раннюю дату
отсечения и меньший срок аренды, если необходимо.
 

Клиенты BOOTP могут обслуживаться и в стандартном режиме. В этом случае для
каждого клиента BOOTP в файле dhcpd.conf назначается постоянный адрес.
 

Чтобы изменения, сделанные в файле dhcpd.conf, вступили в силу, dhcpd должен
быть перезагружен. Для перезапуска dhcpd, отправьте SIGTERM (сигнал 15)
процессу, идентификатор которого находится в файле
 RUNDIR/dhcpd.pid .

Поскольку база данных сервера DHCP не такая маленькая, как база данных BOOTP,
dhcpd автоматически не перезапускается при обнаружении изменений в файле
dhcpd.conf.
 

Примечание: мы получили массу недовольных отзывов об этом поведении. Мы
понимаем, что будет удобно, когда посылается сигнал SIGHUP серверу и база
данных перечитывается. Технически это не невозможно, но потребует большого
объема работы, а наши ресурсы сильно ограничены и будет лучше, если они будут
потрачены на что-то другое. Поэтому, пожалуйста, не жалуйтесь на это в списке
рассылки, если у вас нет для реализации этой возможности финансов или умения.
 
   
 КОМАНДНАЯ СТРОКА 

 

Имена сетевых интерфейсов, на которых dhcpd должен слушать широковещательные
запросы, могут быть указаны в командной строке. Это должно быть сделано на
системах, где dhcpd не может определить нешироковещательные интерфейсы, но не
требуется на других системах. Если в командной строке не указаны имена
интерфейсов, dhcpd будет слушать на всех интерфейсах, поддерживающих
широковещательные запросы.
 

Для изменения стандартного порта для прослушивания (порт 67), используйте опцию 
 -p . 

После нее должен быть указан номер порта UDP. Это очень полезно для отладки.
 

Для запуска dhcpd как обычного процесса вместо запуска его как демона в фоновом
процессе, укажите опцию 
 -f . 

Это полезно при запуске dhcpd в отладчике или запуске на системах System V.
 

Для вывода сообщений dhcpd на стандартный поток ошибок укажите опцию 
 -d . 

Это полезно для отладки и в случае, когда работа syslogd ненадёжна или
невозможна. Обычно, dhcpd выводит все сообщения через функцию  syslog (3) с
установленной службой LOG_DAEMON. При указании -d автоматически применяется -f
(демон на запускается в фоновом режиме).
 

Dhcpd может читать другой файл конфигурации, указанный после опции 
 -cf , 

альтернативный файл назначенных адресов, указанный после
 -lf , 

или альтернативный файл с идентификатором процесса, указанный после
 -pf . 

Поскольку важно использовать одну базу назначенных адресов все время для
работающего dhcpd, эти опции должны быть использованы  только  для
тестирования файлов назначенных адресов или файлов баз данных не в реально
работающей среде.
 

При запуске dhcpd из скриптов запуска системы (например, /etc/rc), нежелательно
выводить полный текст об авторских правах при запуске. Для того, чтобы подавить
вывод этой информации, укажите опцию
 -q . 

 

Сервер DHCP читает два файла при запуске: файл конфигурации и базу назначенных
адресов. Если указана опция
 -t , 

сервер только проверит правильность синтаксиса файла конфигурации, но не будет
осуществлять никаких операций с сетью. Это может быть использовано для
проверки новых файлов конфигурации перед их реальным использованием.
 

Опция
 -T 

используется для проверки синтаксиса файла назначенных адресов таким же
способом.
 

Опции  -tf  и  -play  позволяют указать файл, в который заносятся или
считываются полное состояние сервера и всех транзакций. Это может быть полезно
для сообщений об ошибках: если вы часто получаете сбой программы, запустите
сервер с опцией  -tf  и файл трассировки  будет содержать все
транзакции, которые привели к сбою, и проблема может быть легко локализована
при отладке с опцией  -play .
 

Опция  -play  должна быть указана с альтернативным файлом назначенных
адресов после опции  -lf  для того, чтобы тестовые данные не переписали
реальные. Сервер DHCP не сможет функционировать в этом режиме воспроизведения,
если вы не укажите альтернативный файл выданных адресов.
   
 КОНФИГУРАЦИЯ 

Синтаксис файла  dhcpd.conf (5) обсуждается отдельно.
В этом разделе лается краткий обзор процесса конфигурации, а полную справочную
информацию вы можете найти в документации по  dhcpd.conf (5).
 

   
 Подсети 

dhcpd необходимо знать номера и маски подсетей для предоставления
сервиса. Кроме того, для динамического назначения адресов вы должны указать
один или более диапазонов адресов для каждой подсети, которые будут назначаться
клиентам во время их загрузки. Очень простая конфигурация предоставления DHCP
может выглядеть следующим образом:
 
        subnet 239.252.197.0 netmask 255.255.255.0 {
          range 239.252.197.10 239.252.197.250;
        }
 

 

Несколько диапазонов свободных адресов указываются так:
 
        subnet 239.252.197.0 netmask 255.255.255.0 {
          range 239.252.197.10 239.252.197.107;
          range 239.252.197.113 239.252.197.250;
        }
 

 

Если работа подсети обеспечивается только службой BOOTP и не используется
динамическое назначение адресов, указывается раздел subnet, но без диапазонов
(range).
 

   
 Срок аренды 

Срок аренды DHCP может быть назначен от нуля секунд до бесконечности.
Срок аренды зависит от подсети или типа хостов.
 

Например, в офисе, где время от времени (но не так часто) появляются и исчезают
компьютеры, можно установить срок от месяца и больше. В производственном
отделе, где проходит окончательное тестирование компьютерной техники, не смысла
назначать срок более 30 минут - достаточного времени для прохождения теста
работы с сетью.
 

Возможно указать два срока аренды: срок по умолчанию для клиентов, которые не
запрашивают определенный срок аренды и максимальный срок аренды. Это
 
        subnet 239.252.197.0 netmask 255.255.255.0 {
          range 239.252.197.10 239.252.197.107;
          default-lease-time 600;
          max-lease-time 7200;
        }
 

 

Для этой подсети устанавливается срок аренды по умолчанию 600 секунд (10
минут) и максимальный срок аренды 7200 секунд (два часа). Другие употребимые
значения: 86400 (один день), 604800 (одна неделя) и 2592000 (30 дней).
 

Для разных подсетей, обслуживаемых одним сервером DHCP, могут быть указаны
совершенно различные сроки аренды (как в случае с офисом и производственным
отделом).
   
 Поддержка BOOTP 

Каждый клиент BOOTP может быть настроен отдельно в файле dhcpd.conf. Самая
простая конфигурация состоит из адреса сетевой карты и IP адреса, назначаемого
этому клиенту. Если клиент должен быть загружен с сервера, указывается
загрузочный образ. Простая конфигурация для клиента BOOTP может выглядеть так:
 
        host haagen {
          hardware ethernet 08:00:2b:4c:59:23;
          fixed-address 239.252.197.9;
          filename "/tftpboot/haagen.boot";
        }
 

   
 Опции 

DHCP (а также BOOTP с расширениями от производителя ) поддерживает механизм
предоставления информации о том, как настроить сетевой интерфейс (например,
маску подсети), и как получить доступ к различным сетевым службам (например,
DNS, шлюзу и т.п.).
 

Эти опции указываются для подсети или для клиентов BOOTP - для каждого клиента.
В случае, если опции указаны и для отдельного клиента и для подсети, в которую
он входит, предпочтение отдается опциям, указанным для клиента. Более полная
конфигурация DHCP может иметь вид:
 
        subnet 239.252.197.0 netmask 255.255.255.0 {
          range 239.252.197.10 239.252.197.250;
          default-lease-time 600 max-lease-time 7200;
          option subnet-mask 255.255.255.0;
          option broadcast-address 239.252.197.255;
          option routers 239.252.197.1;
          option domain-name-servers 239.252.197.2, 239.252.197.3;
          option domain-name "isc.org";
        }
 

 

Хост bootp в этой подсети должен быть в другом домене и использовать другой
сервер DNS:
 
        host haagen {
          hardware ethernet 08:00:2b:4c:59:23;
          fixed-address 239.252.197.9;
          filename "/tftpboot/haagen.boot";
          option domain-name-servers 192.5.5.1;
          option domain-name "vix.com";
        }
 

 

Полное описание синтаксиса файла dhcpd.conf дано в  dhcpd.conf (5).
   
 OMAPI 

Сервер DHCP поддерживает возможность изменять некоторые параметры во время
работы без остановки, изменения файлов конфигурации и перезапуска сервера. Эта
возможность реализуется через OMAPI - API для управления удаленными объектами.
Клиенты OMAPI подключаются к серверу по TCP/IP, проходят аутентификацию и могут
просматривать текущее состояние сервера и делать изменения в его параметрах.
 

Пользовательские программы вместо использования протокола OMAPI напрямую
предпочитают использовать API dhcpctl или OMAPI. Dhcpctl - программа-обертка,
которая поддерживает некоторые действия, автоматизирующие работу с OMAPI.
Dhcpctl и OMAPI описаны в  dhcpctl (3)  и  omapi (3) .
 

OMAPI экспортирует объекты, которые могут быть просмотрены или изменены. Сервер
DHCP экспортирует следующие объекты: lease, host, failover-state и group.
Каждый объект методы работы с ним: lookup, create и destroy. Кроме того,
можно просматривать атрибуты этого объекта и в некоторых случаях изменить их.
   
 ОБЪЕКТ LEASE 

Объекты аренды не могут быть созданы и уничтожены, но можно осуществить
поиск по ним и изменение их состояния.
 

Объекты аренды имеют следующие атрибуты:
 

 state  integer  поиск, просмотр

 
 1 = свободен
2 = активен
3 = устарел
4 = возвращен
5 = заброшен
6 = сброшен
7 = резервная копия
8 = зарезервирован
9 = bootp
 

 

 

 ip-address  data  поиск, просмотр

 
выдаваемый IP адрес.
 

 

 dhcp-client-identifier  data  поиск, просмотр, изменение

 
идентификатор клиента, который используется при запросе IP адреса.
Не все клиенты отправляют эту информацию, поэтому атрибут может быть пуст.
 

 

 client-hostname  data  просмотр, изменение

 
значение, которое клиент указал в опции host-name.
 

 

 host  handle  просмотр

 
хост, связанный с этим адресом, если есть.
 

 

 subnet  handle  просмотр

 
объект подсети (subnet), связанный с этим адресом (в настоящее время объект
подсети не поддерживается).
 

 

 pool  handle  просмотр

 
объект очереди (pool), связанный с этим адресом (в настоящее время объект
очереди не поддерживается).
 

 

 billing-class  handle  просмотр

 
указатель на класс, который учитывает трафик по этому адресу (в настоящее время
объект класса  не поддерживается).
 

 

 hardware-address  data  просмотр, изменение

 
аппаратный адрес (chaddr), отправляемый клиентом при получении адреса.
 

 

 hardware-type  integer  просмотр, изменение

 
тип сетевого интерфейса, по которому клиент получает IP адрес.
 

 

 ends  time  просмотр

 
время окончания аренды адреса для клиента.
 

 

 tstp  time  просмотр

 
время окончания аренды адреса для сервера.
 

 tsfp  time  просмотр

 
скорректированное время окончания аренды для связки резервирования.
 

 atsfp  time  просмотр

 
действительное значение tsfp отправляемое в второму серверу.
 

 

 cltt  time  просмотр

 
время последней связи с клиентом по аренде этого адреса.
 

   
 ОБЪЕКТ HOST 

Объекты хостов могут быть созданы, уничтожены, найдены, просмотрены и изменены.
Если объект хоста создан или уничтожен через OMAPI, эти изменения будут
записаны в файл dhcpd.leases. Допустимо также удалять определения хостов,
заданных в файле dhcpd.conf.
 

Объекты хостов имеют следующие атрибуты:
 

 name  data  поиск, просмотр, изменение

 
имя определения хоста. Оно должно быть уникальным среди всех определений
хостов.
 

 

 group  handle  просмотр, изменение

 
именованная группа, связанная с этим определением хоста, если есть.
 

 

 hardware-address  data  поиск, просмотр, изменение

 
аппаратный адрес, который используется для проверки соответствия клиента
хосту. Используется, если также указан атрибут hardware-type.
 

 

 hardware-type  integer  поиск, просмотр, изменение

 
тип сетевого интерфейса, который используется для проверки соответствия клиента
хосту. Используется, если также указан атрибут hardware-address.
 

 

 dhcp-client-identifier  data  поиск, просмотр, изменение

 
Опция dhcp-client-identifier соответствия клиента хосту, если есть.
 

 

 ip-address  data  просмотр, изменение

 
фиксированный IP адрес, зарезервированный за клиентом DHCP, который
соответствует хосту. IP адрес назначается клиенту только если этот адресам
принадлежит сегменту сети, к которой подключен клиент.
 

 

 statements  data  изменение

 
список условий в формате dhcpd.conf, которые должны выполнены, когда получено
сообщение от клиента.
 

 

 known  integer  просмотр, изменение

 
если значение не равно нулю, показывает, что клиент соответствует хосту и
помечен как  известный  в списке очереди разрешений. Если значение равно
нулю, клиент признается неизвестным.
 

   
 ОБЪЕКТ GROUP 

Объекты именованных групп могут быть созданы, уничтожены, найдены, просмотрены и
изменены.
Если объект группы создан или уничтожен через OMAPI, эти изменения будут
записаны в файл dhcpd.leases. Допустимо также удалять определения групп,
заданных в файле dhcpd.conf.
 

Именованные группы пока могут быть только привязаны к хостам - это позволяет
задавать одинаковые условия сразу для нескольких хостов.   
 

Объекты групп имеют следующие атрибуты:
 

 name  data 

 
имя группы. Все группы, создаваемые через OMAPI должны иметь уникальные
среди других групп имена.
 

 

 statements  data 

 
список условий в формате dhcpd.conf, которые назначаются хостам, привязанным к
этой группе.
 

   
 ОБЪЕКТ CONTROL 

Объект контроля позволяет управлять завершением работы сервера.
Если сервер настроен на синхронизацию со вторым сервером DHCP, это действие
обеспечивает правильное выключение сервера, уведомление резервного сервера о
том, что сервер недоступен и занесение данных для восстановления в файл
назначенных адресов (для того, чтобы после перезапуска сервера он автоматически
синхронизировался со вторым сервером.
 

При выключении сервера также корректно завершаются все соединения OMAPI. Если
соединение не может быть корректно завершено в течение 5 секунд, они
закрываются принудительно, поэтому с момента начала выключения сервера до
реального выхода из программы проходит более 25 секунд.
 

Для выключения сервера, откройте объект контроля и установите атрибута state в
2.
   
 ОБЪЕКТ СОСТОЯНИЯ РЕЗЕРВИРОВАНИЯ 

Объект failover-state отслеживает состояние протокола резервирования (failover).
Объект failover имеет следующие атрибуты (в 
 dhcpd.conf (5) 

находятся разъяснения о том, что эти атрибуты означают:
 

 name  data  просмотр

 
имя связи резервирования, задается в файле  dhcpd.conf .
 

 

 partner-address  data  просмотр

 
IP адрес резервного сервера.
 

 

 local-address  data  просмотр

 
IP адрес текущего сервера.
 

 

 partner-port  data  просмотр

 
порт TCP, на котором резервный сервер ожидает подключения по протоколу failover.
 

 

 local-port  data  просмотр

 
порт TCP, на котором текущий сервер ожидает подключения по протоколу failover.
 

 

 max-outstanding-updates  integer  просмотр

 
количество обновлений, которые могли быть важными, но остались без ответа в
этой связке резервирования.
 

 

 mclt  integer  просмотр

 
максимальное время перенаправления клиента в этой связке
резервирования.
 

 

 load-balance-max-secs  integer  просмотр

 
максимальное значение в поле secs запроса клиента после которого будет
произведена балансировка нагрузки.
 

 

 load-balance-hba  data  просмотр

 
массив хэшей буферов для балансировки нагрузки в этой связке резервирования.
 

 

 local-state  integer  просмотр, изменение

 
текущий статус сервера DHCP в этой связке резервирования. Возможные значения:
 

 
 

 1  - партнер выключен
2  - обычная работа
3  - обмен данными прерван
4  - разрешение прервано
5  - потенциальный конфликт
6  - восстановление
7  - восстановление закончено
8  - выключение
9  - пауза
10 - запуск
11 - идет восстановление
 

 

 

 
В общем случае делать изменения в этом атрибуте - плохая идея.
Однако в случае, когда известно, что резервный сервер выключен, бывает
необходимо явно указать что резервный сервер недоступен и необходимо взять на
себя выданные адреса резервного сервера как можно быстрее. Если же вы указали,
что резервный сервер выключен, а он работает (но временно недоступен),
возможны конфликты назначения IP адресов. 
 

 

 partner-state  integer  просмотр

 
текущий статус резервного сервера
 

 

 local-stos  integer  просмотр

 
время, в течение которого сервер работает в текущем статусе.
 

 

 partner-stos  integer  просмотр

 
время, в течение которого резервный сервер работает в текущем статусе.
 

 

 hierarchy  integer  просмотр

 
роль сервера: первичный (0) или вторичный (1) в текущей связке резервирования.
 

 

 last-packet-sent  integer  просмотр

 
время последнего пакета синхронизации, отправленного резервному серверу
в связке.
 

 

 last-timestamp-received  integer  просмотр

 
время последнего пакета синхронизации, полученного от резервного сервера
в связке.
 

 

 skew  integer  просмотр

 
разница между часами резервного и текущего сервера
 

 

 max-response-delay  integer  просмотр

 
время в секундах, по истечении которого если не получен ни один пакет
синхронизации, определяется разрыв в соединении.
 

 

 cur-unacked-updates  integer  просмотр

 
количество сообщений об обновлении, полученных от резервного сервера,
но пока не обработанных.
 

   
 ФАЙЛЫ 

 ETCDIR/dhcpd.conf, DBDIR/dhcpd.leases, RUNDIR/dhcpd.pid, 

 DBDIR/dhcpd.leases~. 

   
 СМ. ТАКЖЕ 

 dhclient (8),  dhcrelay (8),  dhcpd.conf (5),  dhcpd.leases (5)
   
 АВТОР 

 dhcpd (8) 

изначально написан Тедом Лемоном (Ted Lemon) по контракту с Vixie Labs.
Финансирование этого проекта предоставлено Internet Systems
Consortium. Версия 3 сервера DHCP финансируется Nominum, Inc.
Информация об Internet Systems Consortium доступна по адресу
 http://www.isc.org/ .

Информация о Nominum может быть найдена на 
 http://www.nominum.com/ .
   
 ПЕРЕВОД 

Андрей Черепанов < cas@altlinux.ru > 2007.

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 ВКЛАД 
 ПРОЦЕСС 
 КОМАНДНАЯ СТРОКА 
 КОНФИГУРАЦИЯ 
 Подсети 
 Срок аренды 
 Поддержка BOOTP 
 Опции 
 OMAPI 
 ОБЪЕКТ LEASE 
 ОБЪЕКТ HOST 
 ОБЪЕКТ GROUP 
 ОБЪЕКТ CONTROL 
 ОБЪЕКТ СОСТОЯНИЯ РЕЗЕРВИРОВАНИЯ 
 ФАЙЛЫ 
 СМ. ТАКЖЕ 
 АВТОР 
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