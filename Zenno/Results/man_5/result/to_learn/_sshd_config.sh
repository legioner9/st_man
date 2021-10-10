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
 
 
 
 sshd_config (5)   sshd_config  (4)   ( Solaris man: Специальные файлы /dev/* )   sshd_config  (5)   ( FreeBSD man: Форматы файлов ) >>  sshd_config  (5)   ( Русские man: Форматы файлов )   sshd_config  (5)   ( Linux man: Форматы файлов ) BSD mandoc 
   
 ИМЯ 



 sshd_config 

 - файл конфигурации службы openSSH SSH

   
 ОБЗОР 

 /etc/ssh/sshd_config 

   
 ОПИСАНИЕ 

 sshd (8)


sshd считывает данные о конфигурации из
/etc/ssh/sshd_config

(или из файла указанного в командной строке при помощи параметра
- f). 

Файл содержит пары параметр-значение, по одной на строку.
Пустые и строки начинающиеся с 
`#'

интерпретируются как комментарии.
Если аргументы содержат пробелы, они должны быть заключены в двойные кавычки
(.)

 

Далее приведены описания возможных параметров (регистр имён аргументов учитывается,
регистр имён параметров - нет):
 
 

 AcceptEnv 


 
Список переменных среды, которые, будучи заданы клиентом,
будут копироваться в 
 environ (7)


сеанса. Соответствующая настройка на стороне клиента выполняется параметром 
 SendEnv 

и описана в 
ssh_config5



Переменные указываются по имени, допускаются символы подстановки 
`*'

и 
`?'

Несколько переменных среды можно указывать через пробелы или в нескольких 
параметрах 
 AcceptEnv. 

Данный параметр введен для предотвращения обхода ограничений среды пользователя посредством изменения значений переменных среды.
По умолчанию не принимаются никакие переменные среды.
 AddressFamily 


 
Семейство адресов которое должна использовать служба 
 sshd (8).


Допустимые значения: 
``any''

 
``inet''

(только IPv4) и 
``inet6''

(только IPv6).
Значение по умолчанию - 
``any''

 
 AllowGroups 


 
Список шаблонов имён групп через пробел.
Если параметр определён, регистрация в системе разрешается только пользователям,
чья главная или вспомогательная группы соответствуют какому-либо из шаблонов.
Допустимы только имена групп; числовой идентификатор группы не распознаётся.
По умолчанию разрешена регистрация в системе для членов всех групп.
Разрешающие/запрещающие (allow/deny) директивы обрабатываются в следующем порядке:
 DenyUsers 

 
 AllowUsers 

 
 DenyGroups 

 
 AllowGroups 

 
 

См.
Sx ШАБЛОНЫ

в 
ssh_config5


 AllowTcpForwarding 


 
Определяет, будет ли разрешено перенаправление TCP.
Значение по умолчанию -
``yes''

 
Имейте ввиду, что отключение пересылки TCP не увеличит уровень защищённости системы
пока пользователям не запрещён доступ к командной оболочке,
так как они всегда могут установить свои собственные перенаправления. 
 AllowUsers 


 
Список имён пользователей через пробел.
Если параметр определён, регистрация в системе будет разрешена только пользователям,
чьи имена соответствуют одному из шаблонов.
Допустимы только имена пользователей; числовой идентификатор пользователя не распознаётся.
По умолчанию разрешена регистрация в системе для всех пользователей.
Если шаблон указывается в форме ПОЛЬЗОВАТЕЛЬ@ХОСТ, его две части
проверяются отдельно, таким образом разрешая доступ только пользователям с указанными именами,
подключающимся с указанных хостов.
Разрешающие/запрещающие (allow/deny) директивы обрабатываются в следующем порядке:
 DenyUsers 

 
 AllowUsers 

 
 DenyGroups 

 
 AllowGroups 

 
 

См. 
Sx ШАБЛОНЫ

в 
ssh_config5


 AuthorizedKeysFile 


 
Файл с открытыми ключами которые могут быть использованы для аутентификации пользователей.
Допустимо указание шаблонов, они преобразуются при настройке соединения: 
%% заменяется на символ '%',
%h заменяется на домашний каталог идентифицируемого пользователя,
%u - на имя пользователя.
После преобразования 
 AuthorizedKeysFile 

интерпретируется либо как абсолютный путь, либо как путь относительно домашнего каталога пользователя.
Значение по умолчанию - 
``.ssh/authorized_keys''

 
 Banner 


 
На некоторых территориях для получения защиты со стороны закона
может быть необходимо послание предупредительного сообщения перед аутентификацией.
Содержимое указанного файла будет отправлено удалённому пользователю прежде,
чем будет разрешена аутентификация.
Этот параметр доступен только с протоколом версии 2.
По умолчанию не выводится никакой информации.
 ChallengeResponseAuthentication 


 
Определяет, разрешается ли безпарольная аутентификация "вызов-ответ".
Поддерживаются все схемы аутентификации 
login.conf5


Значение по умолчанию -
``yes''

 
 Ciphers 


 
Допустимые для протокола версии 2 шифры.
Несколько шифров указываются через запятую.
Поддерживаются следующие шифры:
``3des-cbc''

 
``aes128-cbc''

 
``aes192-cbc''

 
``aes256-cbc''

 
``aes128-ctr''

 
``aes192-ctr''

 
``aes256-ctr''

 
``arcfour128''

 
``arcfour256''

 
``arcfour''

 
``blowfish-cbc''

 
и 
``cast128-cbc''

 
Значение по умолчанию:

 aes128-cbc,3des-cbc,blowfish-cbc,cast128-cbc,arcfour128,
arcfour256,arcfour,aes192-cbc,aes256-cbc,aes128-ctr,
aes192-ctr,aes256-ctr
 

 ClientAliveCountMax 


 
Количество запросов проверяющих доступность клиента (см. ниже),
которые могут оставаться без ответа. Если предел достигнут,
 sshd (8)


отключит клиента и завершит сеанс.
Имейте в виду, запросы client alive отличаются от
 TCPKeepAlive 

(см. ниже).
Данные запросы отправляются через защищённый канал
и поэтому не могут быть подменены.
Параметр
 TCPKeepAlive 

допускает возможность подменены данных.
Механизм client alive полезен если поведение клиента или сервера
зависит от активности соединения.
 

Значение по умолчанию -3.
Если 
 ClientAliveInterval 

(см. ниже) равно 15, а для 
 ClientAliveCountMax 

оставлено значение по умолчанию, не отвечающие клиенты SSH будут отключаться 
приблизительно через 45.
Данный параметр относится только к протоколу версии 2.
 ClientAliveInterval 


 
Время бездействия со стороны клиента в секундах, после которого 
 sshd (8)


отправляет через защищённый канал запрос отклика клиенту.
Значение по умолчанию - 0, что означает, что клиенту не будут направляться такие запросы.
Этот параметр применим только с протоколом версии 2. 
 Compression 


 
Разрешить сжатие сразу, после аутентификации или вообще запретить его.
Допустимые значения -
``yes''

 
``delayed''

 
и 
``no''

 
Значение по умолчанию -
``delayed''

 
 DenyGroups 


 
Список шаблонов имён групп через пробел.
Если параметр определён, регистрация в системе пользователям,
чья главная или вспомогательная группа соответствуют содержащимся
в списке шаблонам, не разрешается.
Допустимы только имена групп; числовой идентификатор группы не распознаётся.
По умолчанию регистрация в системе разрешена для всех групп. 
Разрешающие/запрещающие (allow/deny) директивы обрабатываются в следующем порядке:
 DenyUsers 

 
 AllowUsers 

 
 DenyGroups 

 
 AllowGroups 

 
 

См.
Sx ШАБЛОНЫ

в
ssh_config5


 DenyUsers 


 
Список имён пользователей через пробел.
Если параметр определён, регистрация в системе пользователей, чьи имена соответствуют одному из шаблонов, будет запрещена.
Допустимы только имена пользователей; числовой идентификатор пользователя не распознаётся.
По умолчанию разрешена регистрация в системе для всех пользователей.
Если шаблон указывается в форме ПОЛЬЗОВАТЕЛЬ@ХОСТ, его две части проверяются отдельно,
таким образом запрещается доступ только пользователям с указанными именами, подключающимся с указанных хостов.
Разрешающие/запрещающие (allow/deny) директивы обрабатываются в следующем порядке:
 DenyUsers 

 
 AllowUsers 

 
 DenyGroups 

 
 AllowGroups 

 
 

См.
Sx ШАБЛОНЫ

в
ssh_config5


 ForceCommand 


 
Выполнять указанную команду после регистрации пользователя в системе,
игнорируя команду запрашиваемую им.
Команда запускается оболочкой пользователя с ключом -c.
Это относится к выполнению оболочки, команды или подсистемы.
обычно применяется внутри блока 
 Match. 

Команда запрошенная пользователем посещается в переменную среды
 SSH_ORIGINAL_COMMAND. 

 GatewayPorts 


 
Определяет, разрешено ли удалённым машинам подключение к портам,
выделенным для туннелирования трафика клиентов.
По умолчанию
 sshd (8)


делает доступными порты, используемые для туннелирования инициируемого сервером,
только для кольцевого (loopback) адреса,
т.е. удалённые машины подключаться к перенаправляемым портам не могут.
С помощью данного параметра можно исправить такое положение дел.
Значение
``no''

разрешает туннелирование только в рамках данной системы,
``yes''

разрешает туннелирование для хостов соответствующих шаблону, а
``clientspecified''

позволяет клиенту самостоятельно выбирать адрес для туннелирования.
Значение по умолчанию -
``no''

 
 GSSAPIAuthentication 


 
Допускать аутентификацию по GSSAPI.
Значение по умолчанию -
``no''

 
Данный параметр относится только к протоколу версии 2.
 GSSAPICleanupCredentials 


 
Очищать ли кэш аутентификационных данных клиента при завершении сеанса.
Значение по умолчанию -
``yes''

 
Данный параметр относится только к протоколу версии 2.
 HostbasedAuthentication 


 
Допускать аутентификацию по хостам, т.е.
аутентификацию по rhosts или /etc/hosts.equiv в сочетании с открытым ключом клиента.
Этот параметр схож с 
 RhostsRSAAuthentication 

и применим только к протоколу версии 2.
Значение по умолчанию -
``no''

 
 HostbasedUsesNameFromPacketOnly 


 
Отключить выполнение запросов имени хоста при обработке файлов 
~/.shosts

 
~/.rhosts 

и
/etc/hosts.equiv

в рамках аутентификации по хосту
 (HostbasedAuthentication). 

При значении 
``yes''

для сравнения будет использоваться имя указанное клиентом, 
а не имя которое может быть получено стандартными средствами соединения TCP.
Значение по умолчанию -
``no''

 
 HostKey 


 
Файл с частными ключами хоста.
Значение по умолчанию -
/etc/ssh/ssh_host_key

для протокола 1, и 
/etc/ssh/ssh_host_rsa_key

и 
/etc/ssh/ssh_host_dsa_key

для протокола 2.
Имейте ввиду, что
 sshd (8)


не будет принимать файлы частных ключей доступные для чтения всей группе или вообще всем пользователям.
Можно указывать несколько файлов с ключами хоста.
Ключи
``rsa1''

используются для протокола версии 1,
ключи 
``dsa''

и 
``rsa''

- для версии 2 протокола SSH.
 IgnoreRhosts 


 
Не учитывать содержимое файлов 
.rhosts

и 
.shosts

при аутентификации 
 RhostsRSAAuthentication 

и
 HostbasedAuthentication 

 
 

При этом будут учитываться только
/etc/hosts.equiv

и
/etc/shosts.equiv.

Значение по умолчанию -
``yes''

 
 IgnoreUserKnownHosts 


 
Не учитывать содержимое файла
~/.ssh/known_hosts

при 
 RhostsRSAAuthentication 

или 
 HostbasedAuthentication 

 
Значение по умолчанию -
``no''

 
 KerberosAuthentication 


 
Определяет, дозволена ли аутентификация Kerberos:
Проверять ли пароль указанный пользователем для аутентификации 
 PasswordAuthentication 

в Kerberos KDC.
Это может быть либо в форме тикетов Kerberos или, если PasswordAuthentication установлена в ``yes'', пароль, предоставленный пользователем, будет утвержден через Kerberos KDC.
Для использования этого параметра серверу необходима Kerberos servtab,
которая разрешит проверку субъекта KDC.
Значение по умолчанию -
``no''

 
 KerberosGetAFSToken 


 
Если AFS активна и у пользователя имеется Kerberos 5 TGT, 
получать талон AFS перед обращением к домашнему каталогу пользователя.
Значение по умолчанию -
``no''

 
 KerberosOrLocalPasswd 


 
В случае непринятия аутентификации посредством Kerberos,
проверять пароль другими механизмами, такими как
/etc/passwd

 
Значение по умолчанию -
``yes''

 
 KerberosTicketCleanup 


 
Очищать ли кэш талонов пользователя при завершении сеанса.
Значение по умолчанию -
``yes''

 
 KeyRegenerationInterval 


 
В протоколе версии 1 эфемерный ключ сервера будет автоматически регенерироваться 
по истечении этого количества секунд (если он использовался).
Цель регенерации состоит в том, чтобы предохранить шифрованные
установленные сеансы от более поздних вторжений на машину и захвата ключей.
Ключ нигде не сохраняется.
Если установлено значение 0, то ключ не будет регенерироваться.
Значение по умолчанию - 3600 (секунд).
 ListenAddress 


 
Локальные адреса, по которым
 sshd (8)


должен ожидать соединения. Может быт использован следующие форматы записей:
 

 
 

 ListenAddress 


 

 хост  |  адрес-IPv4  |  адрес-IPv6 



 ListenAddress 


 

 хост  |  адрес-IPv4  :  порт 



 ListenAddress 


 

[ хост  |  адрес-IPv6 : порт 

]



 
 

 

Если
 порт 

не указан, sshd будет ожидать соединения на указанном адресе
и на всех указанных ранее (но не после) в параметре 
 Port 

портах.
По умолчанию ожидается соединение на всех локальных адресах.
Допустимо указание нескольких параметров.
 LoginGraceTime 


 
Сервер отключается по истечении этого времени,
если пользователю не удалась регистрация в системе.
Если стоит значение 0, то время ожидания не ограничено.
Значение по умолчанию - 120 секунд.
 LogLevel 


 
Задает степень подробности сообщений для протоколов sshd.
Допустимыми являются значения: 
QUIET, FATAL, ERROR, INFO, VERBOSE, DEBUG, DEBUG1, DEBUG2, and DEBUG3.
Значение по умолчанию - INFO.
Значения DEBUG и DEBUG1 эквивалентны.
Использование значения DEBUG* нарушает конфиденциальность пользователей и потому не рекомендуется.
 MACs  Допустимые алгоритмы MAC (Message Authentication Code - код установления подлинности сообщения).



 
Они используются в протоколе версии 2 для гарантирования целостности данных.
Несколько алгоритмов следует указывать через запятую.
Значение по умолчанию:
``hmac-md5,hmac-sha1,hmac-ripemd160,hmac-sha1-96,hmac-md5-96''

 
 Match 


 
Начинает условный блок.
Если все критерии на строке
 Match 

удовлетворены, указанные в блоке директивы будут иметь больший приоритет чем
указанные в глобальном разделе файла конфигурации.
Концом блока считается либо следующая директива 
 Match, 

либо конец файла.
В качестве аргументов 
 Match 

принимаются пары критерий-шаблон.
Допустимые критерии: 
 User 

 
 Group 

 
 Host  

и
 Address 

 
В самом блоке
 Match 

допустимо указание следующих параметров: 
 AllowTcpForwarding 

 
 Banner 

 
 ForceCommand 

 
 GatewayPorts 

 
 GSSApiAuthentication 

 
 KbdInteractiveAuthentication 

 
 KerberosAuthentication 

 
 PasswordAuthentication 

 
 PermitOpen 

 
 RhostsRSAAuthentication 

 
 RSAAuthentication 

 
 X11DisplayOffset 

 
 X11Forwarding 

 
 X11UseLocalHost 

 
 MaxAuthTries 


 
Ограничение на число попыток идентифицировать себя в течение одного соединения.
При достижении количества неудачных попыток аутентификации 
записи о последующих неудачах будут вносится в протокол.
Значение по умолчанию - 6.
 MaxStartups 


 
Ограничение на число одновременных соединений, в которых не был пройден этап аутентификации.
Все последующие соединения не будут приниматься
пока на уже существующем соединении не будет произведена аутентификация 
или не истечет время указанное в параметре
 LoginGraceTime. 

Значение по умолчанию - 10.
 

Как альтернатива может быть задействован ранний случайный отказ в подключении 
путем указания трёх разделённых через двоеточие значений
``старт:норма:предел''

(например, "10:30:60"). Соединение будет сбрасываться с вероятностью
``норма/100''

(30%)
если имеется 
``старт''

(10)
(10) соединений с не пройденным этапом аутентификации.
Вероятность возрастает линейно и постоянно попытки будут отвергаться
при достижении числа
``предел''

(60).
 PasswordAuthentication 


 
Допускать аутентификацию по паролю.
Значение по умолчанию -
``yes''

 
 PermitEmptyPasswords 


 
Допускать использование пустых паролей при аутентификации по паролю.
Значение по умолчанию -
``no''

 
 PermitOpen 


 
Ограничить возможные конечные точки для туннелирования TCP.
Допустимые формы указания точек:
 

 
 

 PermitOpen 


 

 хост : порт 


 PermitOpen 


 

 адрес-IPv4 : порт 


 PermitOpen 


 

 [ адрес-IPv6 ] : порт 


 
 

 

Возможно указание нескольких конечных точек через пробел.
Значение 
``any''

снимает ограничение и является значением по умолчанию.
 PermitRootLogin 


 
Допускать вход в систему через
 ssh (1).


в качестве суперпользователя.
Допустимые значения:
``yes''

 
``without-password''

 
``forced-commands-only''

 
``no''

 
Значение по умолчанию -
``yes''

 
 

Если этот параметр установлен в значение 
``without-password''

 
войти в систему в качестве суперпользователя указав для аутентификации пароль
будет невозможно.
 

Если этот параметр установлен в значение 
``forced-commands-only''

 
будет разрешена регистрация суперпользователя в системе по открытому ключу,
но только если определён параметр
 command 

команда (что может быть полезно для удалённого создания резервных копий,
даже если регистрация суперпользователя в системе в обычным режиме не разрешена).
Все другие методы аутентификации для суперпользователя будут отключены.
 

При значении 
``no''

 
вход в систему в качестве root будет полностью запрещён.
 PermitTunnel 


 
Допускать использование перенаправления для устройств
 tun (4).


Допустимые значения:
``yes''

 
``point-to-point''

(уровень 3),
``ethernet''

(уровень 2), 
``no''

 
Значение
``yes''

эквивалентно 
``point-to-point''

и 
``ethernet ''

одновременно.
Значение по умолчанию -
``no''

 
 PermitUserEnvironment 


 
Учитывать ли файл
~/.ssh/environment

и параметры 
 environment= 

в файле
~/.ssh/authorized_keys.

Значение по умолчанию -
``no''

 
Посредством изменения переменных среды пользователи могут обойти 
ограничения своих полномочий. Например, с помощью механизма 
 LD_PRELOAD 

 
 PidFile 


 
Файл в который следует записывать идентификатор процесса службы SSH.
Значение по умолчанию -
/var/run/sshd.pid

 
 Port 


 
Порт, на котором следует ожидать запросы на соединение.
Значение по умолчанию - 22.
Допустимо указание параметра несколько раз.
См. также 
 ListenAddress 

 
 PrintLastLog 


 
Выводить ли время и дату предыдущего входа в систему
при интерактивной регистрации пользователя в ней.
Значение по умолчанию -
``yes''

 
 PrintMotd 


 
Выводить ли содержимое файла 
/etc/motd

при интерактивной регистрации пользователя в системе
(в некоторых системах это выполняется оболочкой, сценарием
/etc/profile

или аналогичным).
Значение по умолчанию -
``yes''

 
 Protocol 


 
Версии протокола которые следует принимать..
Допустимые значения - 
`1'

и 
`2'

 
Несколько значений указываются через запятую.
Значение по умолчанию -
``2,1''

 
Порядок указания протоколов не имеет значения,
т.к. протокол выбирается клиентом из списка доступных.
 PubkeyAuthentication 


 
Допускать аутентификацию по открытому ключу.
Значение по умолчанию -
``yes''

 
Данный параметр относится только к протоколу версии 2.
 RhostsRSAAuthentication 


 
Допускать аутентификацию по rhosts или /etc/hosts.equiv 
совместно с аутентификацией по хосту RSA.
Значение по умолчанию -
``no''

 
Данный параметр относится только к протоколу версии 1.
 RSAAuthentication 


 
Допускать аутентификацию только по ключу RSA.
Значение по умолчанию -
``yes''

 
Данный параметр относится только к протоколу версии 1.
 ServerKeyBits 


 
Длина ключа сервера для эфемерного протокола версии 1.
Минимальное значение - 512, значение по умолчанию - 768.
 StrictModes 


 
Проверять наборы прав доступа и принадлежность конфигурационных файлов и 
домашнего каталога пользователя перед разрешением регистрации в системе.
Это рекомендуется выполнять потому, что новички иногда оставляют свои
каталоги или файлы доступными для записи всем.
Значение по умолчанию -
``yes''

 
 Subsystem 


 
Позволяет настроить внешнюю подсистему (напр., службу FTP).
В качестве параметров должны выступать имя подсистемы и команда,
которая будет выполняться при запросе подсистемы. Команда 
sftp-server8


реализует подсистему передачи файлов
``sftp.''

По умолчанию подсистемы не определены.
Данный параметр относится только к протоколу версии 2.
 SyslogFacility 


 
Код источника сообщений для протокола syslog.
Допустимые значения: DAEMON, USER, AUTH, LOCAL0, LOCAL1, LOCAL2,
LOCAL3, LOCAL4, LOCAL5, LOCAL6, LOCAL7.
Значение по умолчанию - AUTH.
 TCPKeepAlive 


 
Указывает, будет ли система посылать другой стороне контрольные сообщения
для удержания соединения активным.
Если они посылаются, то разрыв соединения или аварийный отказ одной
из машин будут должным образом замечены.
Однако, при этом временная потеря маршрута также повлечёт за собой разрыв
соединения и некоторые люди сочтут это раздражающим.
С другой стороны, если контрольные сообщения не посылаются,
сеанс на сервере может зависнуть, оставив после себя
``пользователей-привидений''

и отнимая ресурсы сервера.
 

Значение по умолчанию -
``yes''

(отправлять сообщения TCP keepalive).
Это позволяет избежать бесконечно долгих сеансов.
 

Для отключения отправки сообщений TCP keepalive установите значение 
``no''

 
 UseDNS 


 
Выполнять ли запросы DNS для получения имени удалённого хоста для
того чтобы убеждаться в том, что обратное преобразование выдаёт
тот же самый IP-адрес.
Значение по умолчанию -
``yes''

 
 UseLogin 


 
Использовать
 login (1)


для интерактивных сеансов регистрации в системе.
Значение по умолчанию -
``no''

 
Имейте ввиду, что
 login (1)


никогда не используется для удалённого выполнения команд.
Если этот параметр включен, функция 
 X11Forwarding 

будет отключена потому что 
 login (1)


не может обрабатывать cookie
 xauth (1)


В случае использования разделения полномочий 
 (UsePrivilegeSeparation) 

данный параметр будет отключен после прохождения аутентификации.
 UsePAM 


 
Включить интерфейс модулей аутентификации Pluggable Authentication Module.
При значении 
``yes''

аутентификация PAM будет доступна через 
 ChallengeResponseAuthentication 

и
 PasswordAuthentication 

в дополнение к учётной записи PAM и обработке модулей сеансов для всех типов аутентификации.
 

Поскольку безпарольная аутентификация PAM "вызов-ответ"
служит заменой аутентификации по паролю, необходимо отключить либо
 PasswordAuthentication, 

либо 
 ChallengeResponseAuthentication. 

 

При включенном 
 UsePAM 

службу 
 sshd (8)


можно будет выполнять только с правами root.
Значение по умолчанию -
``no''

 
 UsePrivilegeSeparation 


 
Разделять полномочия посредством создания дочернего процесса с меньшими правами
для обработки входящего сетевого трафика.
После прохождения аутентификации для работы с клиентом будет создаваться
специальный процесс соответствующий его правам.
Целью данного параметра служит предотвращение повышения полномочий злоумышленником.
Значение по умолчанию -
``yes''

 
 X11DisplayOffset 


 
Номер первого дисплея доступного для туннелирования трафика X11
 sshd (8)Ns.


Позволяет избежать вмешательства sshd в работу настоящих серверов X11.
Значение по умолчанию - 10.
 X11Forwarding 


 
Допускать туннелирование X11.
Допустимые значения - 
``yes''

и
``no''

 
Значение по умолчанию -
``no''

 
 

Если дисплей-посредник ожидает соединений от любых адресов (или по шаблону)
 sshd (8)


включение туннелирования X11 подвергает сервер и логические дисплеи 
клиентов дополнительной опасности.
Поэтому такое поведение не является поведением по умолчанию.
Проверка и подмена аутентификационных данных при атаке выполняются на стороне
клиента. При туннелировании X11 графический сервер клиента может подвергаться атаке
при запросе клиентом SSH туннелирования (см. замечания в описании параметра 
 ForwardX11 

в 
ssh_config5).


Для большей защиты пользователей администратор может запретить туннелирование
установив значение
``no.''

 

Обратите внимание, что даже если туннелирование X11 запрещено данным параметром,
пользователи по-прежнему смогут туннелировать трафик X11 посредством
настройки туннелей общего назначения.
Туннелирование X11 отключается автоматически при включении 
 UseLogin. 

 X11UseLocalhost 


 
К какому адресу следует привязывать сервер туннелирования X11:
  к кольцевому (loopback) или адресу указанному по шаблону.
По умолчанию сервер туннелирования привязывается к кольцевому адресу,
а в качестве хоста в переменную среды
 DISPLAY 

заносится 
``localhost''

 
Это не позволяет удалённым хостам подключаться к дисплею-посреднику.
Однако, в случае старый клиентов X11, такая конфигурация может не сработать.
Установите тогда 
 X11UseLocalhost 

в 
``no.''

Допустимые значения - 
``yes''

и
``no''

 
Значение по умолчанию -
``yes''

 
 XAuthLocation 


 
Путь к команде 
 xauth (1)


Значение по умолчанию -
/usr/X11R6/bin/xauth

 
 
 

   
 УКАЗАНИЕ ВРЕМЕНИ 

Ключи командной строки 
 sshd (8)


и параметры файлы конфигурации могут требовать указания времени.
Оно должно указываться в виде последовательности таких выражений:

 время  [ единицы 

]



где 
 время 

- положительное целое,
 единицы 

могут принимать следующие значения:
 

 
 

 Aq  ничего 



 
секунды
 s | S 



 
секунды
 m | M 



 
минуты
 h | H 



 
часы
 d | D 



 
дни
 w | W 



 
недели
 
 

 

Итоговое время получается в результате сложения всех выражений.
 

Примеры:
 

 
 

 600 
 
600 секунд (10 минут)
 10m 
 
10 минут
 1h30m 
 
1 час 30 минут (90 минут)
 
 

   
 ФАЙЛЫ 

 
 

 /etc/ssh/sshd_config

 
 
Файл конфигурации 
 sshd (8).


Этот файл должен быть доступен для записи только пользователю root, 
и рекомендуется делать его доступным для чтения всем.
 
 

   
 СМ. ТАКЖЕ 

 sshd (8)


   
 АВТОРЫ 

Продукт OpenSSH является производным от оригинальной и свободной версии
ssh 1.2.12 выпущенной Tatu Ylonen.
Aaron Campbell, Bob Beck, Markus Friedl, Niels Provos,
Theo de Raadt и Dug Song
удалили много ошибок, самостоятельно реализовали функции доступные в несвободных версиях оригинальной программы
и создали OpenSSH.
Markus Friedl реализовал поддержку протоколов SSH версии 1.5 и 2.0.
Niels Provos и Markus Friedl реализовали разделение полномочий.
 
   
 ПЕРЕВОД 

Николай Шафоростов < shafff@ukr.net > 2007, с использованием перевода Александра Блохина < sass@altlinux.ru >
 
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 УКАЗАНИЕ ВРЕМЕНИ 
 ФАЙЛЫ 
 СМ. ТАКЖЕ 
 АВТОРЫ 
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