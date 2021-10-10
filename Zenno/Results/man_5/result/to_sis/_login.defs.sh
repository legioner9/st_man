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
 
 
 
 login.defs (5) >>  login.defs  (5)   ( Русские man: Форматы файлов )   login.defs  (5)   ( Linux man: Форматы файлов ) 


   
 НАЗВАНИЕ 

login.defs - содержит конфигурацию подсистемы теневых паролей
   
 ОПИСАНИЕ 

 

Файл
 /etc/login.defs 
содержит настройки подсистемы теневых паролей (shadow password suite). Этот файл является обязательным. Отсутствие данного файла не повлияет на работу системы, но, вероятно, приведёт к выполнению нежелаемых операций.
 

Файл представляет собой обычный текстовый файл; каждая строка описывает один параметр конфигурации. Строки состоят из названия параметра и его значения, которые разделяются пробельным символом. Пустые строки и комментарии игнорируются. Комментарии начинаются со знака фунта "#", который должен быть первым непробельным символом в строке.
 

Parameter values may be of four types: strings, booleans, numbers, and long numbers. A string is comprised of any printable characters. A boolean should be either the value
 yes 
or
 no . An undefined boolean parameter or one with a value other than these will be given a
 no 
value. Numbers (both regular and long) may be either decimal values, octal values (precede the value with
 0 ) or hexadecimal values (precede the value with
 0x ). The maximum value of the regular and long numeric parameters is machine-dependent.
 

Возможны следующие параметры конфигурации:
 

 CHFN_AUTH  (boolean)
 
If
 yes , the
 chfn 
program will require authentication before making any changes, unless run by the superuser.
 

 

 CHFN_RESTRICT  (string)
 
This parameter specifies which values in the
 gecos 
field of the
 /etc/passwd 
file may be changed by regular users using the
 chfn 
program. It can be any combination of letters
 f ,
 r ,
 w ,
 h , for Full name, Room number, Work phone, and Home phone, respectively. For backward compatibility,
 yes 
is equivalent to
 rwh 
and
 no 
is equivalent to
 frwh . If not specified, only the superuser can make any changes. The most restrictive setting is better achieved by not installing
 chfn 
SUID.
 

 

 CHSH_AUTH  (boolean)
 
If
 yes , the
 chsh 
program will require authentication before making any changes, unless run by the superuser.
 

 

 CONSOLE  (string)
 
If defined, either full pathname of a file containing device names or a ":" delimited list of device names. Root logins will be allowed only upon these devices.
 
If not defined, root will be allowed on any device.
 

 

 CONSOLE_GROUPS  (string)
 
List of groups to add to the user's supplementary group set when logging in on the console (as determined by the CONSOLE setting). Default is none.
 
Use with caution - it is possible for users to gain permanent access to these groups, even when not logged in on the console.
 

 

 DEFAULT_HOME  (boolean)
 
Indicate if login is allowed if we can't cd to the home directory. Default in no.
 
If set to
 yes , the user will login in the root ( / ) directory if it is not possible to cd to her home directory.
 

 

 ENCRYPT_METHOD  (string)
 
This defines the system default encryption algorithm for encrypting passwords (if no algorithm are specified on the command line).
 
It can take one of these values:
 
 
* DES 
(default)
 

 
 
* MD5 
 

 
 
* SHA256 
 

 
 
* SHA512 
 

 
 
 
Note: this parameter overrides the
 MD5_CRYPT_ENAB 
variable.
 
Note: if you use PAM, it is recommended to set this variable consistently with the PAM modules configuration.
 
 

 

 ENV_HZ  (string)
 
If set, it will be used to define the HZ environment variable when a user login. The value must be preceded by
 HZ= . A common value on Linux is
 HZ=100 .
 

 

 ENV_PATH  (string)
 
If set, it will be used to define the PATH environment variable when a regular user login. The value can be preceded by
 PATH= , or a colon separated list of paths (for example
 /bin:/usr/bin ). The default value is
 PATH=/bin:/usr/bin .
 

 

 ENV_SUPATH  (string)
 
If set, it will be used to define the PATH environment variable when the superuser login. The value can be preceded by
 PATH= , or a colon separated list of paths (for example
 /sbin:/bin:/usr/sbin:/usr/bin ). The default value is
 PATH=/bin:/usr/bin .
 

 

 ENV_TZ  (string)
 
If set, it will be used to define the TZ environment variable when a user login. The value can be the name of a timezone preceded by
 TZ= 
(for example
 TZ=CST6CDT ), or the full path to the file containing the timezone specification (for example
 /etc/tzname ).
 
If a full path is specified but the file does not exist or cannot be read, the default is to use
 TZ=CST6CDT .
 

 

 ENVIRON_FILE  (string)
 
If this file exists and is readable, login environment will be read from it. Every line should be in the form name=value.
 

 

 ERASECHAR  (number)
 
Terminal ERASE character ( 010 
= backspace,
 0177 
= DEL).
 
The value can be prefixed "0" for an octal value, or "0x" for an hexadecimal value.
 

 

 FAIL_DELAY  (number)
 
Delay in seconds before being allowed another attempt after a login failure.
 

 

 FAILLOG_ENAB  (boolean)
 
Enable logging and display of
 /var/log/faillog 
login failure info.
 

 

 FAKE_SHELL  (string)
 
If set,
 login 
will execute this shell instead of the users' shell specified in
 /etc/passwd .
 

 

 FTMP_FILE  (string)
 
If defined, login failures will be logged in this file in a utmp format.
 

 

 GID_MAX  (number),  GID_MIN  (number)
 
Range of group IDs used for the creation of regular groups by
 useradd ,
 useradd , or
 newusers .
 

 

 HUSHLOGIN_FILE  (string)
 
If defined, this file can inhibit all the usual chatter during the login sequence. If a full pathname is specified, then hushed mode will be enabled if the user's name or shell are found in the file. If not a full pathname, then hushed mode will be enabled if the file exists in the user's home directory.
 

 

 ISSUE_FILE  (string)
 
If defined, this file will be displayed before each login prompt.
 

 

 KILLCHAR  (number)
 
Terminal KILL character ( 025 
= CTRL/U).
 
The value can be prefixed "0" for an octal value, or "0x" for an hexadecimal value.
 

 

 LASTLOG_ENAB  (boolean)
 
Enable logging and display of /var/log/lastlog login time info.
 

 

 LOG_OK_LOGINS  (boolean)
 
Enable logging of successful logins.
 

 

 LOG_UNKFAIL_ENAB  (boolean)
 
Enable display of unknown usernames when login failures are recorded.
 
Note: logging unknown usernames may be a security issue if an user enter her password instead of her login name.
 

 

 LOGIN_RETRIES  (number)
 
Maximum number of login retries in case of bad password.
 

 

 LOGIN_STRING  (string)
 
The string used for prompting a password. The default is to use "Password: ", or a translation of that string. If you set this variable, the prompt will no be translated.
 
If the string contains
 %s , this will be replaced by the user's name.
 

 

 LOGIN_TIMEOUT  (number)
 
Max time in seconds for login.
 

 

 MAIL_CHECK_ENAB  (boolean)
 
Enable checking and display of mailbox status upon login.
 
You should disable it if the shell startup files already check for mail ("mailx -e" or equivalent).
 

 

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
 

 

 MD5_CRYPT_ENAB  (boolean)
 
Indicate if passwords must be encrypted using the MD5-based algorithm. If set to
 yes , new passwords will be encrypted using the MD5-based algorithm compatible with the one used by recent releases of FreeBSD. It supports passwords of unlimited length and longer salt strings. Set to
 no 
if you need to copy encrypted passwords to other systems which don't understand the new algorithm. Default is
 no .
 
This variable is superceded by the
 ENCRYPT_METHOD 
variable or by any command line option used to configure the encryption algorithm.
 
This variable is deprecated. You should use
 ENCRYPT_METHOD .
 
Note: if you use PAM, it is recommended to set this variable consistently with the PAM modules configuration.
 

 

 MOTD_FILE  (string)
 
If defined, ":" delimited list of "message of the day" files to be displayed upon login.
 

 

 NOLOGINS_FILE  (string)
 
If defined, name of file whose presence will inhibit non-root logins. The contents of this file should be a message indicating why logins are inhibited.
 

 

 OBSCURE_CHECKS_ENAB  (boolean)
 
Enable additional checks upon password changes.
 

 

 PASS_ALWAYS_WARN  (boolean)
 
Warn about weak passwords (but still allow them) if you are root.
 

 

 PASS_CHANGE_TRIES  (number)
 
Maximum number of attempts to change password if rejected (too easy).
 

 

 PASS_MAX_DAYS  (number)
 
Максимальное число дней использования пароля. Если пароль старее этого числа, то будет запущена процедура смены пароля. Если значение не задано, то предполагается значение -1 (то есть возможность ограничения не используется).
 

 

 PASS_MIN_DAYS  (number)
 
Максимальное число дней между изменениями пароля. Любая смена пароля ранее заданного срока выполнена не будет. Если значение не задано, то предполагается значение -1 (то есть возможность ограничения не используется).
 

 

 PASS_WARN_AGE  (number)
 
Число дней за которое начнёт выдаваться предупреждение об устаревании пароля. Нулевое значение означает, что предупреждение выдаётся в день устаревания, при отрицательном значении предупреждение выдаваться не будет. Если значение не задано, выдача предупреждения отключается.
 

 

 
 PASS_MAX_DAYS ,
 PASS_MIN_DAYS 
and
 PASS_WARN_AGE 
are only used at the time of account creation. Any changes to these settings won't affect existing accounts.
 

 PASS_MAX_LEN  (number),  PASS_MIN_LEN  (number)
 
Number of significant characters in the password for crypt().
 PASS_MAX_LEN 
is 8 by default. Don't change unless your crypt() is better. This is ignored if
 MD5_CRYPT_ENAB 
set to
 yes .
 

 

 PORTTIME_CHECKS_ENAB  (boolean)
 
Enable checking of time restrictions specified in /etc/porttime.
 

 

 QUOTAS_ENAB  (boolean)
 
Enable setting of ulimit, umask, and niceness from passwd gecos field.
 

 

 SHA_CRYPT_MIN_ROUNDS  (number),  SHA_CRYPT_MAX_ROUNDS  (number)
 
When
 ENCRYPT_METHOD 
is set to
 SHA256 
or
 SHA512 , this defines the number of SHA rounds used by the encryption algorithm by default (when the number of rounds is not specified on the command line).
 
With a lot of rounds, it is more difficult to brute forcing the password. But note also that more CPU resources will be needed to authenticate users.
 
If not specified, the libc will choose the default number of rounds (5000).
 
The values must be inside the 1000-999999999 range.
 
If only one of the
 SHA_CRYPT_MIN_ROUNDS 
or
 SHA_CRYPT_MAX_ROUNDS 
values is set, then this value will be used.
 
If
 SHA_CRYPT_MIN_ROUNDS 
>
 SHA_CRYPT_MAX_ROUNDS , the highest value will be used.
 

 

 SULOG_FILE  (string)
 
If defined, all su activity is logged to this file.
 

 

 SU_NAME  (string)
 
If defined, the command name to display when running "su -". For example, if this is defined as "su" then a "ps" will display the command is "-su". If not defined, then "ps" would display the name of the shell actually being run, e.g. something like "-sh".
 

 

 SU_WHEEL_ONLY  (boolean)
 
If
 yes , the user must be listed as a member of the first gid 0 group in
 /etc/group 
(called
 root 
on most Linux systems) to be able to
 su 
to uid 0 accounts. If the group doesn't exist or is empty, no one will be able to
 su 
to uid 0.
 

 

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
 

 

 SYSLOG_SG_ENAB  (boolean)
 
Enable "syslog" logging of
 sg 
activity.
 

 

 SYSLOG_SU_ENAB  (boolean)
 
Enable "syslog" logging of
 su 
activity - in addition to sulog file logging.
 

 

 TTYGROUP  (string),  TTYPERM  (string)
 
The terminal permissions: the login tty will be owned by the
 TTYGROUP 
group, and the permissions will be set to
 TTYPERM .
 
By default, the ownership of the terminal is set to the user's primary group and the permissions are set to
 0600 .
 
 
 TTYGROUP 
can be either the name of a group or a numeric group identifier.
 
If you have a
 write 
program which is "setgid" to a special group which owns the terminals, define TTYGROUP to the group number and TTYPERM to 0620. Otherwise leave TTYGROUP commented out and assign TTYPERM to either 622 or 600.
 

 

 TTYTYPE_FILE  (string)
 
If defined, file which maps tty line to TERM environment parameter. Each line of the file is in a format something like "vt100 tty01".
 

 

 UID_MAX  (number),  UID_MIN  (number)
 
Range of user IDs used for the creation of regular users by
 useradd 
or
 newusers .
 

 

 ULIMIT  (number)
 
Default
 ulimit 
value.
 

 

 UMASK  (number)
 
Задаёт начальное значение маски доступа. Если не указано, то маска доступа устанавливается в 022.
 

 

 USERDEL_CMD  (string)
 
Определяет программу, которая будет запущена при удалении пользователя. Она должна удалять любые задания at/cron/печати удаляемого пользователя (передаётся в качестве первого аргумента).
 

 

 USERGROUPS_ENAB  (boolean)
 
Enable setting of the umask group bits to be the same as owner bits (examples: 022 -> 002, 077 -> 007) for non-root users, if the uid is the same as gid, and username is the same as the primary group name.
 
If set to
 yes ,
 userdel 
will remove the user's group if it contains no more members, and
 useradd 
will create by default a group with the name of the user.
 

   
 CROSS REFERENCES 

 

The following cross references show which programs in the shadow password suite use which parameters.
 

chfn
 
 
CHFN_AUTH
CHFN_RESTRICT
LOGIN_STRING
 

 

chgpasswd
 
ENCRYPT_METHOD MAX_MEMBERS_PER_GROUP MD5_CRYPT_ENAB SHA_CRYPT_MAX_ROUNDS SHA_CRYPT_MIN_ROUNDS
 

 

chpasswd
 
ENCRYPT_METHOD MD5_CRYPT_ENAB SHA_CRYPT_MAX_ROUNDS SHA_CRYPT_MIN_ROUNDS
 

 

chsh
 
CHSH_AUTH LOGIN_STRING
 

 

gpasswd
 
ENCRYPT_METHOD MAX_MEMBERS_PER_GROUP MD5_CRYPT_ENAB SHA_CRYPT_MAX_ROUNDS SHA_CRYPT_MIN_ROUNDS
 

 

groupadd
 
GID_MAX GID_MIN MAX_MEMBERS_PER_GROUP SYS_GID_MAX SYS_GID_MIN
 

 

groupdel
 
MAX_MEMBERS_PER_GROUP
 

 

groupmems
 
MAX_MEMBERS_PER_GROUP
 

 

groupmod
 
MAX_MEMBERS_PER_GROUP
 

 

grpck
 
MAX_MEMBERS_PER_GROUP
 

 

grpconv
 
MAX_MEMBERS_PER_GROUP
 

 

grpunconv
 
MAX_MEMBERS_PER_GROUP
 

 

login
 
 
CONSOLE
CONSOLE_GROUPS DEFAULT_HOME
ENV_HZ ENV_PATH ENV_SUPATH ENV_TZ ENVIRON_FILE
ERASECHAR FAIL_DELAY
FAILLOG_ENAB
FAKE_SHELL
FTMP_FILE
HUSHLOGIN_FILE
ISSUE_FILE
KILLCHAR
LASTLOG_ENAB
LOGIN_RETRIES
LOGIN_STRING
LOGIN_TIMEOUT LOG_OK_LOGINS LOG_UNKFAIL_ENAB
MAIL_CHECK_ENAB MAIL_DIR MAIL_FILE MOTD_FILE NOLOGINS_FILE PORTTIME_CHECKS_ENAB QUOTAS_ENAB
TTYGROUP TTYPERM TTYTYPE_FILE
ULIMIT UMASK
USERGROUPS_ENAB
 

 

newgrp
 
SYSLOG_SG_ENAB
 

 

newusers
 
ENCRYPT_METHOD GID_MAX GID_MIN MAX_MEMBERS_PER_GROUP MD5_CRYPT_ENAB PASS_MAX_DAYS PASS_MIN_DAYS PASS_WARN_AGE SHA_CRYPT_MAX_ROUNDS SHA_CRYPT_MIN_ROUNDS SYS_GID_MAX SYS_GID_MIN SYS_UID_MAX SYS_UID_MIN UID_MAX UID_MIN UMASK
 

 

passwd
 
ENCRYPT_METHOD MD5_CRYPT_ENAB OBSCURE_CHECKS_ENAB PASS_ALWAYS_WARN PASS_CHANGE_TRIES PASS_MAX_LEN PASS_MIN_LEN SHA_CRYPT_MAX_ROUNDS SHA_CRYPT_MIN_ROUNDS
 

 

pwck
 
PASS_MAX_DAYS PASS_MIN_DAYS PASS_WARN_AGE
 

 

pwconv
 
PASS_MAX_DAYS PASS_MIN_DAYS PASS_WARN_AGE
 

 

su
 
 
CONSOLE
CONSOLE_GROUPS DEFAULT_HOME
ENV_HZ ENVIRON_FILE
ENV_PATH ENV_SUPATH
ENV_TZ LOGIN_STRING MAIL_CHECK_ENAB MAIL_DIR MAIL_FILE QUOTAS_ENAB
SULOG_FILE SU_NAME
SU_WHEEL_ONLY
SYSLOG_SU_ENAB
USERGROUPS_ENAB
 

 

sulogin
 
ENV_HZ
ENV_TZ
 

 

useradd
 
GID_MAX GID_MIN MAIL_DIR MAX_MEMBERS_PER_GROUP PASS_MAX_DAYS PASS_MIN_DAYS PASS_WARN_AGE SYS_GID_MAX SYS_GID_MIN SYS_UID_MAX SYS_UID_MIN UID_MAX UID_MIN UMASK
 

 

userdel
 
MAIL_DIR MAIL_FILE MAX_MEMBERS_PER_GROUP USERDEL_CMD USERGROUPS_ENAB
 

 

usermod
 
MAIL_DIR MAIL_FILE MAX_MEMBERS_PER_GROUP
 

 

vipw
 
MAX_MEMBERS_PER_GROUP
 

   
 СМОТРИТЕ ТАКЖЕ 

 

 login (1),
 passwd (1),
 su (1),
 passwd (5),
 shadow (5),
 pam (8).
 

 
   Index 
 
 НАЗВАНИЕ 
 ОПИСАНИЕ 
 CROSS REFERENCES 
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