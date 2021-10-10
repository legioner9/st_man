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
 
 
 
 chpasswd (8) >>  chpasswd  (8)   ( Русские man: Команды системного администрирования )   chpasswd  (8)   ( Linux man: Команды системного администрирования ) 


   
 НАЗВАНИЕ 

chpasswd - обновляет пароли в пакетном режиме
   
 СИНТАКСИС 

 
 
 chpasswd  [ параметры ]
 
   
 ОПИСАНИЕ 

 

Программа
 chpasswd 
читает список пар "пользователь пароль" из стандартного входного потока и обновляет информацию о существующих пользователях. Каждая строка имеет вид:
 

 имя_пользователя : пароль 
 

 By default the supplied password must be in clear-text, and is encrypted by
 chpasswd . Also the password age will be updated, if present.
 

The default encryption algorithm can be defined for the system with the ENCRYPT_METHOD variable of
 /etc/login.defs , and can be overwiten with the
 -e ,
 -m , or
 -c 
options.
 

Данная команда предназначена для работы в крупных системных средах, где за один раз заводится несколько учётных записей.
   
 ПАРАМЕТРЫ 

 

Параметры команды
 chpasswd :
 

 -c ,  --crypt-method 
 
Use the specified method to encrypt the passwords.
 
The available methods are DES, MD5, NONE, and SHA256 or SHA512 if your libc support these methods.
 

 

 -e ,  --encrypted 
 
Передаваемые пароли заданы в шифрованном виде.
 

 

 -h ,  --help 
 
Показать краткую справку и закончить работу.
 

 

 -m ,  --md5 
 
Использовать алгоритм шифрования MD5 вместо DES, если пароли передаются не шифрованными.
 

 

 -s ,  --sha-rounds 
 
Use the specified number of rounds to encrypt the passwords.
 
The value 0 means that the system will choose the default number of rounds for the crypt method (5000).
 
A minimal value of 1000 and a maximal value of 999,999,999 will be enforced.
 
You can only use this option with the SHA256 or SHA512 crypt method.
 
By default, the number of rounds is defined by the SHA_CRYPT_MIN_ROUNDS and SHA_CRYPT_MAX_ROUNDS variables in
 /etc/login.defs .
 

   
 ПРЕДОСТЕРЕЖЕНИЯ 

 

Не забудьте установить права или umask, чтобы не позволить чтение нешифрованных файлов другими пользователями.
 

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

 

 /etc/passwd 
 
содержит информацию о пользователях
 

 

 /etc/shadow 
 
содержит защищаемую информацию о пользователях
 

 

 /etc/login.defs 
 
содержит конфигурацию подсистемы теневых паролей
 

   
 СМОТРИТЕ ТАКЖЕ 

 

 
 passwd (1),
 newusers (8),
 useradd (8),
 login.defs (5).
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
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