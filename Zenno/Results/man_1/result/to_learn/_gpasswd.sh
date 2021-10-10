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
 
 
 
 gpasswd (1) >>  gpasswd  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   gpasswd  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) 


   
 НАЗВАНИЕ 

gpasswd - administer the /etc/group and /etc/gshadow files
   
 СИНТАКСИС 

 
 
 gpasswd  [ option ]  группа 
 
   
 ОПИСАНИЕ 

 

 The
 gpasswd 
command is used to administer
 /etc/group , and  /etc/gshadow . Every group can have
administrators,
members and a password.
 

System administrator can use the
 -A 
option to define group administrator(s) and the
 -M 
option to define members and has all rights of group administrators and members.
 

 
 gpasswd 
called by
a group administrator
with a group name only prompts for the new password of the
 group .
 

If a password is set the members can still
 newgrp (1)
without a password, and non-members must supply the password.
   
 Замечания о паролях групп 

 

Пароли групп имеют врождённую проблему с безопасностью, так как пароль знает более одного человека. Однако, группы являются полезным инструментом совместной работы различных пользователей.
   
 ПАРАМЕТРЫ 

 

Except for the
 -A 
and
 -M 
options, the options cannot be combined.
 

The options which apply to the
 gpasswd 
command are:
 

 -a   имя 
 
Add the
 user 
to the named
 group .
 

 

 -d   имя 
 
Remove the
 user 
from the named
 group .
 

 

 -r 
 
Remove the password from the named
 group . Only group members will be allowed to use
 newgrp 
to join the named
 group .
 

 

 -R 
 
Restrict the access to the named
 group . Only group members will be allowed to use
 newgrp 
to join the named
 group .
 

 

 -A   user ,...
 
Set the list of administrative users.
 

 

 -M   user ,...
 
Set the list of group members.
 

   
 ПРЕДОСТЕРЕЖЕНИЯ 

 

This tool only operates on the
 /etc/group 
and  /etc/gshadow  files.
Thus you cannot change any NIS or LDAP group. This must be performed on the corresponding server.
   
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
 

   
 ФАЙЛЫ 

 

 /etc/group 
 
содержит информацию о группах
 

 

 /etc/gshadow 
 
содержит защищаемую информацию о группах
 

   
 СМОТРИТЕ ТАКЖЕ 

 

 
 newgrp (1),
 groupadd (8),
 groupdel (8),
 groupmod (8),
 grpck (8),
 group (5),  gshadow (5).
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 
 Замечания о паролях групп 
 
 ПАРАМЕТРЫ 
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