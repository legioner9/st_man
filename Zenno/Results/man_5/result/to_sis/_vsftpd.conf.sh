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
 
 
 
 vsftpd.conf (5) >>  vsftpd.conf  (5)   ( Русские man: Форматы файлов )   vsftpd.conf  (5)   ( Linux man: Форматы файлов ) 
   
 НАЗВАНИЕ 

vsftpd.conf - конфигурационный файл для vsftpd
   
 ОПИСАНИЕ 

vsftpd.conf используется для управления различными аспектами поведения vsftpd. По умолчанию
vsftpd ищет этот файл в по адресу  /etc/vsftpd.conf . Однако, вы можете изменить местоположение файла, через аргументы командной строки. Аргументы командной строки это путь и имя конфигураци онного файла для vsftpd. Такая возможность полезна, если вы пожелаете использовать улучшенный inetd, такой как  xinetd , для запуска vsftpd с разными конфигурационными файлами на каждый виртуальный хост.
   
 ФОРМАТ 

Формат vsftpd.conf очень простой. Каждая строка это коментарий или директива. Командные строки начинающиеся с символа # игнорируются. Директивы имеют формат 
 

опция=значение
 

Важным фактом является пробел между опцией или значением, что приведет к ошибке. Каждое значение по умолчанию может быть изменено в конфигурационном файле.
   
 БУЛЕВЫ ОПЦИИ 

Ниже, представлен список булевых опций. Значение булевых опций может быть установлено в  YES  или  NO .
 
 allow_anon_ssl 
Применяется только, если установлена опция  ssl_enable . Если установлена в YES, анонимные пользователи могут использовать защищенное SSL соединение.
 
По умолчанию: NO
 anon_mkdir_write_enable 
Если установлено в YES, анонимные пользователи смогут создавать новые директории при определенных условиях. Для того, что бы эта опция заработала, опция write_enable должна быть установлена, и анонимный ftp пользователь должен иметь право на запись в родительской директории.
 
По умолчанию: NO
 anon_other_write_enable 
Если установлено в YES, анонимный пользователь сможет иметь разрешение на запись, помимо аплоада и создания директории, такое как удаление и переименование. В целом это не рекомендуется, но включено для большей завершенности.
 
По умолчанию: NO
 anon_upload_enable 
Если установлено в YES, анонимные пользователи смогут аплоадить файлы при определенных условиях. Для того, что бы эта опция заработала, опция write_enable должна быть установлена, и анонимный ftp пользователь должен иметь разрешение на запись в нужных местоположениях для аплоада.
 
По умолчанию: NO
 anon_world_readable_only 
Когда включена, анонимные пользователи могут только скачивать файлы, которые для всех только для чтения. Опция распознает, что ftp пользователь может иметь собственные файлы, особенно в директория для аплоада.
 
По умолчанию: YES
 anonymous_enable 
Контролирует, разрешены ли анонимные логины или нет. Если включена, то оба пользователя  ftp  и  anonymous  распознаются как анонимные логины.
 
По умолчанию: YES
 ascii_download_enable 
Когда опция включена, то данные будут скачиваться как ASCII.
 
По умолчанию: NO
 ascii_upload_enable 
Когда опция включена, то данные будут загружаться как ASCII.
 
По умолчанию: NO
 async_abor_enable 
Когда опция включена, то специальная FTP команда, известная как "async ABOR" будет включена. Только плохие FTP клиенты будут использовать эту возможность. К тому же эта возможность неуклюжа, поэтому она выключена по умолчанию. К сожалению, некоторые FTP клиенты вешаются, когда прерывается передача данных, если эта опция недоступна, поэтому вы можете захотеть включить ее.
 
По умолчанию: NO
 background 
Когда опция включена, а vsftpd запущен в режиме "прослушивания", vsftpd будет использовать задний план при прослушивании, то есть управление немедленно будет возвращено shell'у запустившему vsftpd.
 
По умолчанию: NO
 check_shell  
Примечание! Эта опция будет работать только на сборках vsftpd без PAM. Если она выключена, vsftpd не будет проверять /etc/shells на правильность пользовательского шелла для локальных логинов.
 
По умолчанию: YES
 chmod_enable 
Когда включена, позволяет использовать команду SITE CHMOD. Примечание! Применяется только для локальных пользователей. Анонимные пользователи никогда не будут использовать SITE CHMOD.
 
По умолчанию: YES
 chown_uploads 
Когда опция включена, все анонимно закачанные файлы, сменят владельца на пользователя определенного в опции  chown_username . Это полезно с точек зрения администрирования и безопасности.
 
По умолчанию: NO
 chroot_list_enable 
Если опция установлена, вы можете предоставить список локальных пользователей, которые находятся в клетке chroot() в своих домашних директориях. Это значение немного отличается когда chroot_local_user установлен в YES. В этом случае список становится списком пользователей которые НЕ МОГУТ быть помещены в клетку chroot(). По умолчанию файл содержит список в  /etc/vsftpd.chroot_list, но вы можете изменить местоположение установкой опции  chroot_list_file .
 
По умолчанию: NO
 chroot_local_user 
Если опция установлена, локальные пользователи будут (по умолчанию) помещены в chroot() клетку в их домашние директории, после того, как залогинятся. Предупреждение: эта опция подразумевает улучшение безопасности, особенно для пользователей, которые  имеют разрешение на аплоад или доступ к shell'у. Включайте, только если знаете, что делает. Примечание, эти значения безопасности не определяются vsftpd. Они применяются ко всем FTP демонам, которые могут помещать локальных пользователей в chroot() клетки.
 
По умолчанию: NO
 connect_from_port_20 
Эта опция контролирует, которые PORT соединения данных используют порт 20 (ftp-данные) на сервере. По соображением безопасности, некоторые клиенты могут настаивать на таком случае. Наоборот, выключение этой опции позволяет vsftpd загружаться с немного меньшими привелегиями. .IP 
По умолчанию: NO (но образец конфигурационного файла включает опцию)
 deny_email_enable 
Если опция установлена, вы можете предоставлять список анонимных паролей e-mail ответов, которые не логинятся. По умолчанию, файл содержащий этот список /etc/vsftpd.banned_emails, но вы можете поменять значение установкой опции  banned_email_file 
 
По умолчанию: NO
 dirlist_enable Если установленное значение NO, все команды списка директорий не разрешены. 
 
По умолчанию: YES
 dirmessage_enable 
Если опция установлена, пользователям FTP сервера можно показать сообщения, когда они входят в новую директорию. По умолчанию, директория сканируется на наличие файла .message, но эта настройка может быть изменена конфигурированием опции  message_file 
 
По умолчанию: NO (но образец конфигурационного файла включает опцию)
 download_enable 
Если установленное значение NO, все запросы на скачивание файлов не разрешены.
 
По умолчанию: YES
 dual_log_enable 
Если опция установлена, два лог файла создаются параллельно, по умолчанию  /var/log/xferlog  и  /var/log/vsftpd.log . Бывший лог в стиле wu-ftpd, парсировался стандартными инструментами, Позже, vsftpd стал иметь собственный стиль логов.
 
По умолчанию: NO
 force_dot_files 
Если опция установлена, файлы начинающиеся с . будут показываться в листинге директории, даже если флаг "a" не используется клиентом. Эта опция исключает директории "." и "..".
 
По умолчанию: NO
 force_local_data_ssl 
Применяется только, если  ssl_enable  активирована. Если она активирована, все не анонимные логины вынуждены использовать защищенные SSL соединения при передаче и получении данных, при соединении.
 
По умолчанию: YES
 force_local_logins_ssl 
Применяется только, если  ssl_enable  активирована. Если она активирована, все не анонимные логины вынуждены использовать защищенные SSL соединения при передаче паролей.
 
По умолчанию: YES              
 guest_enable 
Если опция установлена, все не анонимные логины классифицируются как "guest" логины. Гостевые логины. Гостевой логин заносится в определенный пользователем опцию  guest_username 
 
По умолчанию: NO
 hide_ids 
Если опция установлена, вся пользовательская и груповая информация в списке директорий, выводится как "ftp".
 
По умолчанию: NO
 listen 
Если опция установлена, vsftpd будет загружен в автономном режиме. Это означает, что vsftpd не должен загружаться из inetd. Вместо этого, vsftpd загружается напрямую. vsftpd сам позаботится о прослушивании и перехвате входящих соединений.
 
По умолчанию: NO
 listen_ipv6 
То же, что и параметр listen, за исключением того, что vsftpd будет слушать IPv6 сокет вместо, IPv4. Этот параметр и параметр listen являются взаимно исключаемыми. 
 
По умолчанию: NO
 local_enable 
Проверяет, разрешены ли локальные логины или нет. Если опция задействована, обычные пользовательские аккаунты в /etc/passwd могут использоваться для входа.
 
По умолчанию: NO
 log_ftp_protocol 
Когда опция включена, все FTP запросы и ответы протоколируются, опция xferlog_std_format  не включается. Полезна для отладки.
 
По умолчанию: NO
 ls_recurse_enable 
Когда опция включена, эта установка позволяет использовать "ls -R". Безопасность системы может подвергнуться незначительному риску, потому что "ls -R" на верхнем уровне сайта может потреблять много ресурсов.
 
По умолчанию: NO
 no_anon_password 
Если опция включена, vsftp не спрашивает пароль анонимного пользователя. Анонимный пользователь входит сразу же.
 
По умолчанию: NO
 no_log_lock 
Когда опция включена, она препятствует vsftpd закрытию файла, в момент записи лога. Вообще, эта опция не должна быть включена. Она присутствует для работы с системными ошибками таких операционных систем, какие содержаться в файловых системах Solaris/Veritas, которые иногда, вешали компьютер при попытке закрыть файл лога.  
 
По умолчанию: NO 
 one_process_model 
Если у вас ядро Linux 2.4, возможно использование другой модели безопастности, которая использует только один процесс на соединение. Эта возможность является менее чистой моделью безопастности, но дает производительность. Вам не нужно включать эту опцию, если вы не уверены в том, что делаете, а ваш сайт поддерживает большое количество одновременно подключеных пользователей.  
 
По умолчанию: NO 
 passwd_chroot_enable 
Если опция включена, вместе с  chroot_local_user , тогда местоположение клетки chroot() должно быть определено на основании пользователя. Каждая пользовательская клетка, получена из строки их домашних директорий, в файле /etc/passwd. Возникновение /./ в строках домашних директорий означает, что клетка располагается по тому же пути.
 
По умолчанию: NO 
 pasv_enable 
Установите в NO, если вам не нужен метод получения данных PASV
 
По умолчанию: YES
 pasv_promiscuous 
Установите в YES, если вам нужно выключить проверку безопасности PASV, которая гарантирует соединение из того же IP, что и контролирующее соединение. Включайте эту опцию только  если уверены в том что делаете. Правильное использование этой опции только в некоторых туннельных соединениях, или может быть в поддержке FXP.
 
По умолчанию: NO 
 port_enable 
Установите в NO, если вам не нужен метод получения данных PORT
 
По умолчанию: YES
 run_as_launching_user 
Установите в YES, если вам надо, что бы vsftpd загружался как пользователь, запустивший vsftpd. Эта опция полезна, когда root доступ невозможен. ПРЕДУПРЕЖДЕНИЕ: НЕ используйте эту опцию, если не уверены в том, что вы делаете, поскольку бездумноеиспользование этой опции, может повлечь большие проблемы безопасности. Определенно, vsftpd не может/не использует технологию chroot, для запрета доступа к файлам, когда эта опция установлена (даже если он запущен от root). Простой заменой, может являться использование  deny_file  с такими опциями как  {/*,*..*} , но надежность такого метода не идет в сравнение с chroot, и не надо на нее полагаться. Использование этой опции накладывает много ограничени. Для примера, опция требует привилегий таких как не анонимный вход, или смену владельца аплоада, соединения из 20 порта и прослушивания портов меньше чем 1024, не будут работать. На другие опции можно воздействовать.
 
По умолчанию: NO
 secure_email_list_enable 
Установите в YES, если вам надо только определить список e-mail паролей для  анонимных пользователей. Полезно, как способ ограничения содержимого без необходимости виртуальных пользователей. Когда опция включена, анонимные логины не используются до тех пор пока пароль находится в списке, в файле указаным в опции  email_password_file . Формат файла, одна строка на линию, никаких непоказываемых пробелов. Имя файла по умолчанию /etc/vsftpd.email_passwords.
 
По умолчанию: NO
 session_support 
Эта опция определяет, будет ли vsftpd поддерживать установленные соединения. Если vsftpd поддерживает сессии, он будет пробовать и обновлять utmp и wtmp. Он, также, откроет pam_session, если используется PAM для аутентификации и закроет соединение только после отключения. Вы можете выключить эту функцию, если вам не нужно протоколирование соединений и вы хотите дать vsftpd больше возможностей загружаться с меньшим количеством процессов и/или с меньшими привелегиями. Учтите - utmp и wtmp поддерживаются только в сборке с PAM.
 
По умолчанию: NO
 setproctitle_enable 
Если опция включена, vsftpd будет пытаться показать информацию о статусе соединения в списке системных процессов. Другими словами, имя процесса в списке изменится, отражая состояние соединения vsftpd (idel, downloading). Вполне вероятно, вы захотите выключить эту опцию из соображений безопасности.
 
По умолчанию: NO
 ssl_enable 
Если опция включена, и vsftpd скомпилирован с OpenSSL, то он будет поддерживать безопасные соединения через SSL. Это применяется для контролирующих соединений (включая логин), и так же соединений для данных. Вам понадобиться клиент с поддержкой SSL. Внимание! Берегитесь использования этой опции. Включайте ее только если она вам нужна. vsftpd не гарантирует безопасности библиотек OpenSSL. Включая эту опцию, вы доверяете безопасности инсталлированых библиотек OpenSSL.
 
По умолчанию: NO
 ssl_sslv2 
Применяется только, если включена опция  ssl_enable . Если опция установлена, она позволяет соединения по протоколу SSL v2. Соединения TLS v1 предпочтительны.
 
По умолчанию: NO
 ssl_sslv3 
Применяется только, если включена опция  ssl_enable . Если опция установлена, она позволяет соединения по протоколу SSL v3. Соединения TLS v1 предпочтительны.
 
По умолчанию: NO
 ssl_tlsv1 
Применяется только, если включена опция  ssl_enable . Если опция установлена, она позволяет соединения по протоколу TLS v1. Соединения TLS v1 предпочтительны.
 
По умолчанию: YES
 syslog_enable 
Если опция включена, тогда любой лог попадает в /var/log/vsftpd.log вместо системного лога. Протоколирование осуществляется FTPD.
 
По умолчанию: NO
 tcp_wrappers 
Если опция включена, и vsftpd был скомпилирован с поддержкой tcp_wrappers, входящие соединения пройдут через контроль доступа tcp_wrappers. Более того, есть механизм для конфигурации на основе IP. Если tcp_wrappers устанавливают переменную окружения VSFTPD_LOAD_CONF, то vsftp сессия будет загружать файл конфигурации, определенный в этой переменной.                       
 
По умолчанию: NO
 text_userdb_names 
По умолчанию, цифровые идентификаторы, показываются в полях пользователя и группы, списка директорий. Вы можете получить текстовые имена установив этот параметр. По умолчанию он выключен, исходя из соображений производительности.
 
По умолчанию: NO
 tilde_user_enable 
Если опция включена, vsftpd попытается определить пути, такие как ~chris/pics, т.е. тильда сопровождающая имя пользователя. Учтите, что vsftpd будет всегда определять пути ~ и ~/что-либо (в таком случае ~ оперделяется как стартовая директория). Учтите, что пути пользователей определяться, только если файл  /etc/passwd  будет найден внутри _данной_ клетки chroot().
 
По умолчанию: NO
 use_localtime 
Если опция включена, vsftpd будет отображать список директорий со временем в локальной временной зоне. По умолчанию отображается GMT. Время возвращаемое командой MDTM FTP может быть так же затронуто этой опцией.
 
По умолчанию: NO
 use_sendfile 
Внутреннее значение, для проверки относительной выгоды использования системного вызова sendfile(). 
 
По умолчанию: YES
 userlist_deny 
Опция определяет активировался ли  userlist_enable . Если эта опция установленна в NO, тогда пользователи не будут иметь возможности залогинится, до тех пор, пока они не будут явно указаны в файле определенном в  userlist_file . Когда логины запрещены, запрет будет показан прежде, чем у пользователя спросят пароль.
 
По умолчанию: YES
 userlist_enable 
Если опция включена, vsftpd загрузит список пользователей, из имени файла определенном в  userlist_file. . Если пользователь попытается зайти, используя имя из этого файла, вход будет запрещен прежде, чем у него спросят пароль. Эта опция может быть полезна в предотвращении передачи cleartext паролей. Смотрите так же  userlist_deny .
 
По умолчанию: NO
 virtual_use_local_privs 
Если включена, виртуальные пользователи будут использовать те же привелегии, что и локальные пользователи. По умолчанию, виртуальные пользователи, используют те же привелегии, что и анонимные пользователи, которые обычно более ограничены (в смысле разрешений на запись).
 
По умолчанию: NO
 write_enable 
Контролирует, может ли любая FTP команда изменять файловую систему или нет. Эти команды: STOR, DELE, RNFR, RNTO, MKD, RMD, APPE и SITE.
 
По умолчанию: NO
 xferlog_enable 
Если опция включена, лог файл будет содержать детальный отчет о аплоаде и даунлоаде. По умолчанию, этот файл кладется в /var/log/vsftpd.log, но эта опция может быть отменена использованием значения  vsftpd_log_file. 
 
По умолчанию: NO (но конфигурационный файл содержит ее)
 xferlog_std_format 
Если опция включена, лог файл будет записан в стандартный формат xferlog, как используемый в wu-ftpd. Это полезно, потому, что вы можете снова использовать имеющиеся генераторы статистики. Однако, формат по умолчанию, более читаемый. По умолчанию файл находится в /var/log/xferlog, но вы можете изменить путь в опции  xferlog_file .
 
По умолчанию: NO
 
   
 ЧИСЛОВЫЕ ОПЦИИ 

Ниже находится список числовых опций. Числовые опции не должны являться  отрицательным
числом. Восьмиричные числа поддерживаются, для удобства опций umask. Для определения восьмиричного числа, используйте 0, как первую цифру числа.
 
 accept_timeout 
Таймаут в секундах, для удаленного клиента, для начала соединения c помощью PASV
 
По умолчанию: 60
 anon_max_rate 
Максимально разрешенная скорость передачи данных, в байтах в
секунду, для анонимных пользователей.
 
По умолчанию: 0 (неограничено)
 anon_umask 
Значение umask, для создание файлов, применяемое к анонимным пользователям.
Учтите, если вы хотите определять восьмиричные значения, помните о префиксе 0, иначе значение будет расценено как десятиричное число.
 
По умолчанию: 0777
 connect_timeout 
Таймаут в секундах, для ответа клиента на команду PORT
 
По умолчанию: 60
 data_connection_timeout 
Таймаут в секундах, который является максимальным значением, приема данных без прогресса. Если таймаут срабатывает, удаленный клиент сбрасывается.
 
По умолчанию: 300
 file_open_mode 
Разрешения, с которыми создаются закачиваемые файлы. Значения umask преобладают. Вы можете изменить значение на 0777, если хотите, что бы закачаные файлы были выполнимыми.
 
По умолчанию: 0666
 ftp_data_port 
Порт, из которого из которого исходят соединения типа PORT (до тех пор, пока
существует опция  connect_from_port_20 )
 
По умолчанию: 20
 idle_session_timeout 
Таймаут в секундах, которое является максимальным значением, которое клиент может провести между вводом FTP команд. Если таймаут срабатывает, удаленный клиент сбрасывается.
 
По умолчанию: 300
 listen_port 
если vsftp в автономном режиме, этот порт будет слушаться для входящих FTP
соединений.
 
По умолчанию: 21
 local_max_rate 
Максимально разрешенная скорость передачи данных, для в байтах в
секунду, для локальных пользователей.
 
По умолчанию: 0 (неограничено)
 local_umask 
Значение umask, для создание файлов, применяемое к локальным пользователям.
Учтите, если вы хотите определять восьмиричные значения, помните о префиксе 0, иначе значение будет расценено как десятиричное число.
 
По умолчанию: 0777
 max_clients 
Если vsftp в автономном режиме, эта опция задает максимальное количество клиентов, которое может быть подключено. Любые, дополнительно подключившиеся пользователи,
получат сообщение об ошибке.
 
По умолчанию: 0 (неограничено)
 max_per_ip 
Если vsftp в автономном режиме, эта опция задает максимальное количество клиентов, которое может быть подключено из одного адреса. Клиенты получат ошибку, если они
пересекут этот барьер.
 
По умолчанию: 0 (неограничено)
 pasv_max_port 
Максимальное значение порта, для соединения типа PASV. Может использоваться для определения диапазона портов, для помощи файрволу.
 
По умолчанию: 0 (используется любой порт)
 pasv_min_port 
Минимальное значение порта, для соединения типа PASV. Может использоваться для определения диапазона портов, для помощи файрволу.
 
По умолчанию: 0 (используется любой порт)
 trans_chunk_size 
Возможно, вам не потребуется менять это значение, но попробуйте установить значение 8192 для более гладкого лимита пропускной способности.
 
По умолчанию: 0 (позволить vsftpd подобрать значение)
 
   
 СТРОКОВЫЕ ОПЦИИ 

Ниже представлен список строковых опций.
 
 anon_root 
Опция определяет директорию, которую vsftpd попытается изменить, после анонимного входа. Ошибка, тихо игнорируется.
 
По умолчанию: (нет)
 banned_email_file 
Опция содержит имя файла, в котором находится список анонимных адресов e-mail, с паролями, которые не разрешены. Этот файл проверяется, если включена опция  deny_email_enable 
 
По умолчанию: /etc/vsftpd.banned_emails
 banner_file 
Опция содержит имя файла, в котором содержится текст отображающийся при подключении. Если опция установлена, то она отменяет опцию  ftpd_banner .
 
По умолчанию: (нет)
 chown_username 
Опция определяет пользователя, которому принадлежат права на анонимно
закачанные файлы. Опция будет работать, только совместно с установленной опцией  chown_uploads .
 
По умолчанию: root
 chroot_list_file 
Опция содержит имя файла, в котором находится список локальных пользователей которые будут помещаться в домашнюю директорию клетки chroot(). Опция будет работать, только совместно с установленной опцией  chroot_list_enable . Если опция  chroot_list_enable  включена, тогда список станет списком пользователей, которые НЕ МОГУТ находиться в клетках chroot().
 
По умолчанию: /etc/vsftpd.chroot_list
 cmds_allowed 
Опция определяет список, разделенный запятой, в котором указаны поддерживаемые FTP команды (post login. USER, PASS and QUIT всегда разрешены в pre-login). Другие команды отвергаются. Опция является довольно мощьным методом закрытия FTP сервера. Например: cmds_allowed=PASV,RETR,QUIT.
 
По умолчанию: (нет)
 deny_file 
Опция может быть использованна для установки таблиц файловых имен (и имен директорий), к которым нельзя получить доступ. Затронутые файлы и директории не скрыты, но любое действие с ними (скачивание, смена директории и тд) будет запрещено. Опция достаточно проста и не должна использоваться для серьезного контроля доступа - предпочтительнее использовать разрешения файловой системы. Однако, данная опция может оказаться полезной, в некоторых ситуациях с настройкой виртуальных пользователей. Особенно когда известно, что имя файла может быть доступно с несколькими названиями (возможно из-за символических или жестких ссылок), тогда следует быть внимательным с блокировкой доступа ко всем именам. Доступ будет запрещен, если имя файла или директории содержит полученную опцией hide_file или, если они будут совпадать с регулярным выражением определенным в hide_file. Учтите, что код совпадения регулярных выражений vsftpd, всего лишь простое выполнение, которое является подмножеством полной функциональности регулярных выражений. Из-за этого, вам нужно аккуратно и как можно более тщательно проверить любое применение этой опции. Рекомендуется использовать разрешения файловой системы, для любой важной политики безопасности, из-за их большей надежности. Например: deny_file={*.mp3,*.mov,.private}.
 
По умолчанию: (нет)
 dsa_cert_file 
Опция определяет местоположение DSA сертификата, для использования в шифрованных SSL соединениях.
 
По умолчанию: (нет - достаточно свидетельства RSA)
 email_password_file 
Опция может использоваться для альтернативного использования файла, опцией  secure_email_list_enable .
 
По умолчанию: /etc/vsftpd.email_passwords
 ftp_username 
Имя пользователя, которое будет использоваться как анонимное. Домашняя директория этого пользователя, корневая директория анонимного пространства.
 
По умолчанию: ftp
 ftpd_banner 
Эта опция позволит определить приветсnвенное сообщение, отображаемое vsftpd, при подключении.
 
По умолчанию: (нет - отображается баннер vsftpd)
 guest_username 
Смотрите булеву опцию  guest_enable  для описания гостевого логина. Эта опция настоящее имя пользователя, которой присваивается гостевой логин.
 
По умолчанию: ftp
 hide_file 
Опция может быть использованна для установки таблиц файловых имен (и имен директорий), которые должны быть скрыты их списка директорий. Не смотря на то, что они являются скрытыми, они полностью доступны для тех, кто знает какие фактические названия использовать. Файлы и директории будут скрыты, если их имена будут содержать строку полученную от hide_file, или,
если они содержат регулярные выражения определенные в hide_file. Учтите, что код совпадения регулярных выражений vsftpd, всего лишь простое выполнение, которое является подмножеством полной функциональности регулярных выражений. Например: deny_file={*.mp3,*.mov,.private}.
 
По умолчанию: (нет)
 listen_address 
Если vsftpd работает в автономном режиме, то адрес прослушивания (всех локальных адресов) может быть определен этой опцией. Сопровождается номерным IP адресом.
 
По умолчанию: (нет)
 listen_address6 
опция идентична listen_address, но определяет прослушиваемый ipv6 адрес по умолчанию (который используется, если установлен ipv6). Формат стандартный формату ipv6.
 
По умолчанию: (нет)
 local_root 
Опция определяет директорию, которую vsftpd попытается изменить, после локального (то есть не анонимного) входа. Ошибка, тихо игнорируется.
 
По умолчанию: (нет)
 message_file 
Опция указывает на имя файла, который мы видим когда входим в новую директорию. Содержимое отображается у удаленного пользователя. Опция будет работать, только совместно с установленной опцией  dirmessage_enable .
 
По умолчанию: .message
 nopriv_user 
Имя пользователя использующееся vsftpd, когда он хочет быть полностью непривилегированным. Опция должна выделяться пользователю чаще, чем записи nobody. Пользователь nobody, не должен использоваться для большинства важных вещей, на большом количестве машин.
 
По умолчанию: nobody
 pam_service_name 
Строка содержит имя сервиса PAM, который будет использоваться vsftp.
 
По умолчанию: ftp
 pasv_address 
Используйте эту опцию, для отмены Ip адреса, который vsftpd будет выдавать в ответ на команду PASV. Содержит номер IP адреса.
 
По умолчанию: (нет - адрес по умолчанию берется из сокета входящего соединения)
 rsa_cert_file 
Опция определяет местоположение RSA сертификата, для использования в шифрованных SSL соединениях.
 
По умолчанию: /usr/share/ssl/certs/vsftpd.pem
 secure_chroot_dir 
Опция должна являться именем пустой директории. Так же эта директория не должна быть доступна для записи ftp пользователем. Директория используется безопасной chroot() клеткой во время, когда vsftpd не запрашивает доступ к файловой системе.
 
По умолчанию: /usr/share/empty
 ssl_ciphers 
Эта опция может быть использована для выбора  SSL шифра поддерживаемых для защищенных SSL соединений. Смотрите man страницу ciphers  для получения большей информации. Ограничение шифра может быть использовано для улучшения безопасности, поскольку это предотвращает удаленные попытки отгадать шифр.
 
По умолчанию: DES-CBC3-SHA
 user_config_dir 
Мощная опция позволяющая отменять любую опцию, определенную в ман странице, на пользовательском уровне. Использование простое и лучше всего иллюстрируется примером. Если вы установили  user_config_dir  в  /etc/vsftpd_user_conf  и затем зашли как пользователь "chris", тогда vsftpd применит установки в файле  /etc/vsftpd_user_conf  в течении сессии. Формат файла описан в man странице. Пожалуйста помните, что не все настройки пользовательского уровня эффективны. Например, много настроек только для начала пользовательской соединения. Примеры настройки, которые не будут затрагиваться на пользовательском уровне включают в себя: listen_address, banner_file, max_per_ip, max_clients, xferlog_file, и так далее.
 
По умолчанию:(нет)
 user_sub_token 
опция полезна для взаимодействия с виртуальными пользователями. Она используется для автоматического создания домашней директории каждому виртуальному пользователю, основана на шаблоне. Например, если домашняя директория для настоящего пользователя, определена через  guest_username  как  /home/virtual/$USER , а  user_sub_token  установлен в  $USER , затем виртуальный пользователь fred логинится, он попадет (обычно через chroot()) в директорию  /home/virtual/fred . Эта опция будет работать, только если  local_root   будет содержать  user_sub_token 
 
По умолчанию:(нет)
 userlist_file 
Опция содержит имя файла загружаемого, когда опция  userlist_enable 
 
По умолчанию: /etc/vsftpd.user_list
 vsftpd_log_file 
Опция содержит имя файла, в который будет записываться лог в стиле vsftpd. Лог будет писаться, только если будет утановлена опция  xferlog_enable  и не установлена  xferlog_std_format . Либо будет писаться, если установлена опция  dual_log_enable . Одна сложность - если у вас установлен  syslog_enable , то этот файл не запишется, а лог попадет в системный лог. 
 
По умолчанию: /var/log/vsftpd.log
 xferlog_file 
Опция содержит имя файла, в который будет записываться лог в стиле wu-ftp. Лог будет писаться, только если будет утановлена опция  xferlog_enable  и установлена  xferlog_std_format . Либо будет писаться, если установлена опция  dual_log_enable .
 
По умолчанию: /var/log/xferlog
 
   
 АВТОР 


 chris@scary.beasts.org 

 


Перевод с английского выполнил Andrew Vedischeff < cpz@inbox.ru >

 
 

 
   Index 
 
 НАЗВАНИЕ 
 ОПИСАНИЕ 
 ФОРМАТ 
 БУЛЕВЫ ОПЦИИ 
 ЧИСЛОВЫЕ ОПЦИИ 
 СТРОКОВЫЕ ОПЦИИ 
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