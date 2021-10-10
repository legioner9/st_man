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
 
 
 
 useradd (8)   useradd  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   useradd  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня ) >>  useradd  (8)   ( Русские man: Команды системного администрирования )   useradd  (8)   ( Linux man: Команды системного администрирования ) 


   
 НАЗВАНИЕ 

useradd - регистрирует нового пользователя или изменяет информацию по умолчанию о новых пользователях
   
 СИНТАКСИС 

 
 
 useradd  [ параметры ]  LOGIN 
 
 useradd  -D
 
 useradd  -D [ параметры ]
 
   
 ОПИСАНИЕ 

 

 When invoked without the
 -D 
option, the
 useradd 
command creates a new user account using the values specified on the command line plus the default values from the system. Depending on command line options, the
 useradd 
command will update system files and may also create the new user's home directory and copy initial files.
   
 ПАРАМЕТРЫ 

 

Параметры команды
 useradd :
 

 -c ,  --comment КОММЕНТАРИЙ 
 
Любая текстовая строка. Обычно, здесь коротко описывается учётная запись, и в настоящее время используется как поле для имени и фамилии пользователя.
 

 

 -b ,  --base-dir БАЗОВЫЙ_КАТАЛОГ 
 
The default base directory for the system if
 -d 
 HOME_DIR 
is not specified.
 BASE_DIR 
is concatenated with the account name to define the home directory. If the
 -m 
option is not used,
 BASE_DIR 
must exist.
 

 

 -D ,  --defaults 
 
See below, the subsection "Changing the default values".
 

 

 -d ,  --home ДОМАШНИЙ_КАТАЛОГ 
 
Для создаваемого пользователя будет использован каталог
 БАЗОВЫЙ_КАТАЛОГ 
в качестве начального каталога. По умолчанию, это значение получается объединением
 ИМЕНИ 
пользователя с
 БАЗОВЫМ_КАТАЛОГОМ 
и используется как имя домашнего каталога. Каталог
 БАЗОВЫЙ_КАТАЛОГ 
необязательно должен существовать и не будет создан, если его нет.
 

 

 -e ,  --expiredate ДАТА_УСТАРЕВАНИЯ 
 
Дата, когда учётная запись пользователя будет заблокирована. Дата задаётся в формате
 ГГГГ-ММ-ДД .
 

 

 -f ,  --inactive ДНЕЙ 
 
Число дней, которые должны пройти после устаревания пароля, чтобы учётная запись заблокировалась навсегда. Если указано значение 0, то учётная запись блокируется сразу после устаревания пароля, а при значении -1 данная возможность не используется. По умолчанию используется значение -1.
 

 

 -g ,  --gid ГРУППА 
 
Имя или числовой идентификатор новой начальной группы пользователя. Группа с таким именем должна существовать. Идентификатор группы должен указывать на уже существующую группу. Идентификатор группы по умолчанию равен 1 или значению указанному в файле
 /etc/default/useradd .
 

 

 -G ,  --groups ГРУППА1 [ ,ГРУППА2,... [ ,ГРУППАN ]]]
 
Список дополнительных групп, в которых числится пользователь. Перечисление групп осуществляется через запятую, без промежуточных пробелов. На указанные группы действуют те же ограничения, что и для группы указанной в параметре
 -g . По умолчанию пользователь входит только в начальную группу.
 

 

 -h ,  --help 
 
Показать краткую справку и закончить работу.
 

 

 -m ,  --create-home 
 
Если домашнего каталога пользователя не существует, то он будет создан. Файлы из каталога
 КАТАЛОГ_ШАБЛОН 
будут скопированы в домашний каталог, если он указан параметр
 -k , иначе будут использованы файлы из каталога
 /etc/skel . Все подкаталоги каталога
 КАТАЛОГ_ШАБЛОН 
или
 /etc/skel 
будут также созданы в домашнем каталоге пользователя. Параметр
 -k 
можно использовать только вместе с параметром
 -m . По умолчанию, домашний каталог не создаётся и файлы не копируются.
 

 

 -K ,  --key КЛЮЧ = ЗНАЧЕНИЕ 
 
Используется для изменения значений по умолчанию, хранимых в файле /etc/login.defs (UID_MIN, UID_MAX, UMASK, PASS_MAX_DAYS и других).
 
Пример:
 -K  PASS_MAX_DAYS = -1 
можно использовать при создании системной учётной записи, чтобы выключить устаревание пароля, даже если системная учётная запись вообще не имеет пароля. Можно указывать параметр
 -K 
несколько раз, например:
 -K  UID_MIN = 100  -K  UID_MAX = 499 
 
Замечание: запись вида
 -K  UID_MIN = 10 , UID_MAX = 499 
пока не работает.
 

 

 -l 
 
Do not add the user to the lastlog and faillog databases.
 
By default, the user's entries in the lastlog and faillog databases are resetted to avoid reusing the entry from a previously deleted user.
 

 

 -N ,  --no-user-group 
 
Do not create a group with the same name as the user, but add the user to the group specified by the
 -g 
option or by the GROUP variable in
 /etc/default/useradd .
 
The default behavior (if the
 -g ,
 -N , and
 -U 
options are not specified) is defined by the
 USERGROUPS_ENAB 
variable in
 login.defs .
 

 

 -o ,  --non-unique 
 
Позволяет создать учётную запись с уже имеющимся (не уникальным) UID.
 

 

 -p ,  --password ПАРОЛЬ 
 
Шифрованное значение пароля, которое возвращает функция
 crypt (3). По умолчанию учётная запись заблокирована.
 

 

 -s ,  --shell ОБОЛОЧКА 
 
Имя регистрационной оболочки пользователя. Если задать пустое значение, то будет использована регистрационная оболочка по умолчанию.
 

 

 -u ,  --uid UID 
 
Числовое значение идентификатора пользователя (ID). Оно должно быть уникальным, если не используется параметр
 -o . Значение должно быть неотрицательным. По умолчанию используется наименьшее значение ID большее 999 и большее любого другого значения пользователя. Значения от 0 до 999 обычно зарезервированы для системных учётных записей.
 

 

 -U ,  --user-group 
 
Create a group with the same name as the user, and add the user to this group.
 
The default behavior (if the
 -g ,
 -N , and
 -U 
options are not specified) is defined by the
 USERGROUPS_ENAB 
variable in
 login.defs .
 

   
 Изменение значений по умолчанию 

 

When invoked with only the
 -D 
option,
 useradd 
will display the current default values. When invoked with
 -D 
plus other options,
 useradd 
will update the default values for the specified options. Valid default-changing options are:
 

 -b ,  --base-dir БАЗОВЫЙ_КАТАЛОГ 
 
The path prefix for a new user's home directory. The user's name will be affixed to the end of
 BASE_DIR 
to form the new user's home directory name, if the
 -d 
option is not used when creating a new account.
 

 

 -e ,  --expiredate ДАТА_УСТАРЕВАНИЯ 
 
Дата, когда учётная запись пользователя заблокирована.
 

 

 -f ,  --inactive ДНЕЙ 
 
Число дней, которые должны пройти после устаревания пароля, перед тем как учётная запись будет заблокирована.
 

 

 -g ,  --gid ГРУППА 
 
Имя или числовой идентификатор новой начальной группы пользователя. Группа с таким именем должна существовать и для числового идентификатора должна быть запись.
 

 

 -s ,  --shell ОБОЛОЧКА 
 
The name of a new user's login shell.
 

   
 ЗАМЕЧАНИЯ 

 

Системный администратор сам решает, какие файлы нужно положить в каталог
 /etc/skel/ .
   
 ПРЕДОСТЕРЕЖЕНИЯ 

 

You may not add a user to a NIS or LDAP group. This must be performed on the corresponding server.
 

Similarly, if the username already exists in an external user database such as NIS or LDAP,
 useradd 
will deny the user account creation request.
 

Имена пользователей должны начинаться со строчной буквы или символа подчёркивания, и должны состоять только из строчных букв, символов подчёркивания, тире и знака доллара. Это можно описать регулярным выражением: [a-z_][a-z0-9_-]*[$]
   
 CONFIGURATION 

 

The following configuration variables in
 /etc/login.defs 
change the behavior of this tool:
 

 GID_MAX  (number),  GID_MIN  (number)
 
Range of group IDs used for the creation of regular groups by
 useradd ,
 useradd , or
 newusers .
 

 

 MAIL_DIR  (string)
 
Почтовый каталог. Данный параметр нужен для управления почтовым ящиком при изменении или удалении учётной записи пользователя. Если параметр не задан, то используется значение указанное при сборке.
 

 

 MAIL_FILE  (string)
 
Defines the location of the users mail spool files relatively to their home directory.
 

 

The
 MAIL_DIR 
and
 MAIL_FILE 
variables are used by
 useradd ,
 usermod , and
 userdel 
to create, move, or delete the user's mail spool.
 

If
 MAIL_CHECK_ENAB 
is set to
 yes , they are also used to define the
 MAIL 
environment variable.
 

 MAX_MEMBERS_PER_GROUP  (number)
 
Maximum members per group entry. When the maximum is reached, a new group entry (line) is started in
 /etc/group 
(with the same name, same password, and same GID).
 
The default value is 0, meaning that there are no limits in the number of members in a group.
 
This feature (split group) permits to limit the length of lines in the group file. This is useful to make sure that lines for NIS groups are not larger than 1024 characters.
 
If you need to enforce such limit, you can use 25.
 
Note: split groups may not be supported by all tools (even in the Shadow toolsuite. You should not use this variable unless you really need it.
 

 

 PASS_MAX_DAYS  (number)
 
Максимальное число дней использования пароля. Если пароль старее этого числа, то будет запущена процедура смены пароля. Если значение не задано, то предполагается значение -1 (то есть возможность ограничения не используется).
 

 

 PASS_MIN_DAYS  (number)
 
Максимальное число дней между изменениями пароля. Любая смена пароля ранее заданного срока выполнена не будет. Если значение не задано, то предполагается значение -1 (то есть возможность ограничения не используется).
 

 

 PASS_WARN_AGE  (number)
 
Число дней за которое начнёт выдаваться предупреждение об устаревании пароля. Нулевое значение означает, что предупреждение выдаётся в день устаревания, при отрицательном значении предупреждение выдаваться не будет. Если значение не задано, выдача предупреждения отключается.
 

 

 SYS_GID_MAX  (number),  SYS_GID_MIN  (number)
 
Range of group IDs used for the creation of system groups by
 useradd ,
 groupadd , or
 newusers .
 

 

 SYS_UID_MAX  (number),  SYS_UID_MIN  (number)
 
Range of user IDs used for the creation of system users by
 useradd 
or
 newusers .
 

 

 UID_MAX  (number),  UID_MIN  (number)
 
Range of user IDs used for the creation of regular users by
 useradd 
or
 newusers .
 

 

 UMASK  (number)
 
Задаёт начальное значение маски доступа. Если не указано, то маска доступа устанавливается в 022.
 

 

 USERGROUPS_ENAB  (boolean)
 
Enable setting of the umask group bits to be the same as owner bits (examples: 022 -> 002, 077 -> 007) for non-root users, if the uid is the same as gid, and username is the same as the primary group name.
 
If set to
 yes ,
 userdel 
will remove the user's group if it contains no more members, and
 useradd 
will create by default a group with the name of the user.
 

   
 ФАЙЛЫ 

 

 /etc/passwd 
 
содержит информацию о пользователях
 

 

 /etc/shadow 
 
содержит защищаемую информацию о пользователях
 

 

 /etc/group 
 
содержит информацию о группах
 

 

 /etc/default/useradd 
 
содержит защищаемую информацию о пользователях
 

 

 /etc/skel/ 
 
каталог, содержащий пользовательские файлы по умолчанию
 

 

 /etc/login.defs 
 
содержит конфигурацию подсистемы теневых паролей
 

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

 

Команда
 useradd 
завершая работу, возвращает следующие значения:
 

 0 
 
успешное выполнение
 

 

 1 
 
не удалось изменить файл паролей
 

 

 2 
 
ошибка в параметрах команды
 

 

 3 
 
недопустимое значение параметра
 

 

 4 
 
такой UID уже существует (и не задан параметр
 -o )
 

 

 6 
 
указанная группа не существует
 

 

 9 
 
имя пользователя уже существует
 

 

 10 
 
не удалось изменить файл групп
 

 

 12 
 
не удалось создать домашний каталог
 

 

 13 
 
не удалось создать почтовый ящик
 

   
 СМОТРИТЕ ТАКЖЕ 

 

 chfn (1),
 chsh (1),
 passwd (1),
 crypt (3),
 groupadd (8),
 groupdel (8),
 groupmod (8),
 login.defs (5),
 newusers (8),
 userdel (8),
 usermod (8).
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ПАРАМЕТРЫ 
 
 Изменение значений по умолчанию 
 
 ЗАМЕЧАНИЯ 
 ПРЕДОСТЕРЕЖЕНИЯ 
 CONFIGURATION 
 ФАЙЛЫ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 СМОТРИТЕ ТАКЖЕ 
 
 
 
 
 
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