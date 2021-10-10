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
 
 
 
 groupadd (8)   groupadd  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   groupadd  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня ) >>  groupadd  (8)   ( Русские man: Команды системного администрирования )   groupadd  (8)   ( Linux man: Команды системного администрирования ) 


   
 НАЗВАНИЕ 

groupadd - создаёт новую группу
   
 СИНТАКСИС 

 
 
 groupadd  [-g  GID  [-o]] [-f] [-K  КЛЮЧ = ЗНАЧЕНИЕ ]  группа 
 
   
 ОПИСАНИЕ 

 

 The
 groupadd 
command creates a new group account using the values specified on the command line plus the default values from the system. The new group will be entered into the system files as needed.
   
 ПАРАМЕТРЫ 

 

Параметры команды
 groupadd :
 

 -f ,  --force 
 
This option causes the command to simply exit with success status if the specified group already exists. When used with
 -g , and the specified GID already exists, another (unique) GID is chosen (i.e.
 -g 
is turned off).
 

 

 -g ,  --gid GID 
 
Числовое значение идентификатора группы. Значение должно быть уникальным, если не задан параметр
 -o . Значение должно быть не отрицательным. По умолчанию, берётся значение больше 999 и больше идентификатора любой другой группы. Значения от 0 и до 999 обычно зарезервированы под системные группы.
 

 

 -h ,  --help 
 
Показать краткую справку и закончить работу.
 

 

 -K ,  --key КЛЮЧ = ЗНАЧЕНИЕ 
 
Изменить значения по умолчанию (GID_MIN, GID_MAX и другие), которые хранятся в файле
 /etc/login.defs . Можно указать несколько параметров
 -K .
 
Пример:
 -K  GID_MIN = 100  -K  GID_MAX = 499 
 
Замечание: запись вида
 -K  GID_MIN = 10 , GID_MAX = 499 
пока не работает.
 

 

 -o ,  --non-unique 
 
This option permits to add a group with a non-unique GID.
 

 

 -p ,  --password ПАРОЛЬ 
 
The encrypted password, as returned by
 crypt (3). The default is to disable the password.
 

   
 CONFIGURATION 

 

The following configuration variables in
 /etc/login.defs 
change the behavior of this tool:
 

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
 

 

 SYS_GID_MAX  (number),  SYS_GID_MIN  (number)
 
Range of group IDs used for the creation of system groups by
 useradd ,
 groupadd , or
 newusers .
 

   
 ФАЙЛЫ 

 

 /etc/group 
 
содержит информацию о группах
 

 

 /etc/gshadow 
 
содержит защищаемую информацию о группах
 

 

 /etc/login.defs 
 
содержит конфигурацию подсистемы теневых паролей
 

   
 ПРЕДОСТЕРЕЖЕНИЯ 

 

Имена групп должны начинаться со строчной буквы или символа подчёркивания. Они могут содержать только строчные буквы, символ подчёркивания, тире и знак доллара. Это можно описать регулярным выражением: [a-z_][a-z0-9_-]*[$]
 

Имена групп могут быть длиной не более 16 знаков.
 

You may not add a NIS or LDAP group. This must be performed on the corresponding server.
 

If the groupname already exists in an external group database such as NIS or LDAP,
 groupadd 
will deny the group creation request.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

 

Программа
 groupadd 
завершая работу, возвращает следующие значения:
 

 0 
 
успешное выполнение
 

 

 2 
 
ошибка в параметрах команды
 

 

 3 
 
недопустимое значение параметра
 

 

 4 
 
не уникальный gid (если не задан параметр
 -o )
 

 

 9 
 
не уникальное имя группы
 

 

 10 
 
не удалось изменить файл групп
 

   
 СМОТРИТЕ ТАКЖЕ 

 

 chfn (1),
 chsh (1),
 passwd (1),
 gpasswd (8),
 groupdel (8),
 groupmod (8),
 login.defs (5),
 useradd (8),
 userdel (8),
 usermod (8).
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ПАРАМЕТРЫ 
 CONFIGURATION 
 ФАЙЛЫ 
 ПРЕДОСТЕРЕЖЕНИЯ 
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