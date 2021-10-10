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
 
 
 
 newusers (8) >>  newusers  (8)   ( Русские man: Команды системного администрирования )   newusers  (8)   ( Linux man: Команды системного администрирования ) 


   
 НАЗВАНИЕ 

newusers - обновляет и создаёт новые учётные записи пользователей в пакетном режиме
   
 СИНТАКСИС 

 
 
 newusers  [ new_users ]
 
   
 ОПИСАНИЕ 

 

Программа
 newusers 
читает файл с парами имя пользователя/нешифрованный пароль и использует эту информацию для обновления группы существующих или создания новых учётных записей. Каждая строка имеет формат стандартного файла паролей (смотрите
 passwd (5)) за исключением:
 

 pw_passwd 
 
Это поле будет зашифровано и использовано как новое значение шифрованного пароля.
 

 

 pw_gid 
 
Это поле должно содержать имя (или номер). Пользователь будет добавлен в эту группу. Если указан числовой идентификатор или имя несуществующей группы, то будет создана новая группа с данным именем и номером.
 

 

 pw_dir 
 
Будет проверено существование каталога с именем значения данного поля и если такого каталога нет, то он будет создан. Владельцем каталога будет назначен обновляемый или создаваемый пользователь.
 

 

Данная команда предназначена для работы в крупных системных средах, где за один раз заводится несколько учётных записей.
   
 ПРЕДОСТЕРЕЖЕНИЯ 

 

Файл с входными данными должен быть защищён, так как в нём содержатся не шифрованные пароли.
 

 PAM is not used to update the passwords. Only
 /etc/passwd 
and
 /etc/shadow 
are updated, and the various checks or options provided by PAM modules are not used.
   
 CONFIGURATION 

 

The following configuration variables in
 /etc/login.defs 
change the behavior of this tool:
 

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
 
 

 

 GID_MAX  (number),  GID_MIN  (number)
 
Range of group IDs used for the creation of regular groups by
 useradd ,
 useradd , or
 newusers .
 

 

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
 

 

 PASS_MAX_DAYS  (number)
 
Максимальное число дней использования пароля. Если пароль старее этого числа, то будет запущена процедура смены пароля. Если значение не задано, то предполагается значение -1 (то есть возможность ограничения не используется).
 

 

 PASS_MIN_DAYS  (number)
 
Максимальное число дней между изменениями пароля. Любая смена пароля ранее заданного срока выполнена не будет. Если значение не задано, то предполагается значение -1 (то есть возможность ограничения не используется).
 

 

 PASS_WARN_AGE  (number)
 
Число дней за которое начнёт выдаваться предупреждение об устаревании пароля. Нулевое значение означает, что предупреждение выдаётся в день устаревания, при отрицательном значении предупреждение выдаваться не будет. Если значение не задано, выдача предупреждения отключается.
 

 

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
 

   
 ФАЙЛЫ 

 

 /etc/passwd 
 
содержит информацию о пользователях
 

 

 /etc/shadow 
 
содержит защищаемую информацию о пользователях
 

 

 /etc/group 
 
содержит информацию о группах
 

 

 /etc/gshadow 
 
содержит защищаемую информацию о группах
 

 

 /etc/login.defs 
 
содержит конфигурацию подсистемы теневых паролей
 

   
 СМОТРИТЕ ТАКЖЕ 

 

 login.defs (5),
 passwd (1),
 useradd (8).
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ПРЕДОСТЕРЕЖЕНИЯ 
 CONFIGURATION 
 ФАЙЛЫ 
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