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
 
 
 
 groupmod (8)   groupmod  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   groupmod  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня ) >>  groupmod  (8)   ( Русские man: Команды системного администрирования )   groupmod  (8)   ( Linux man: Команды системного администрирования ) 


   
 НАЗВАНИЕ 

groupmod - изменяет определение группы в системе
   
 СИНТАКСИС 

 
 
 groupmod  [ параметры ]  ГРУППА 
 
   
 ОПИСАНИЕ 

 

Команда
 groupmod 
изменяет определение указанной
 ГРУППЫ , изменяя соответствующую запись в базе данных групп.
   
 ПАРАМЕТРЫ 

 

Параметры команды
 groupmod :
 

 -g ,  --gid GID 
 
 The group ID of the given
 GROUP 
will be changed to
 GID . The value of
 GID 
must be a non-negative decimal integer. This value must be unique, unless the
 -o 
option is used. Values between 0 and 999 are typically reserved for system groups. Any files that have the old group ID and must continue to belong to
 GROUP , must have their group ID changed manually.
 

 

 -h ,  --help 
 
Показать краткую справку и закончить работу.
 

 

 -n ,  --new-name НОВАЯ_ГРУППА 
 
Имя группы будет изменено с
 ГРУППА 
на
 НОВАЯ_ГРУППА .
 

 

 -o ,  --non-unique 
 
When used with the
 -g 
option, allow to change the group
 GID 
to a non-unique value.
 

 

 -p ,  --password ПАРОЛЬ 
 
The encrypted password, as returned by
 crypt (3). The default is to disable the password.
 

   
 CONFIGURATION 

 

The following configuration variables in
 /etc/login.defs 
change the behavior of this tool:
 

 MAX_MEMBERS_PER_GROUP  (number)
 
Maximum members per group entry. When the maximum is reached, a new group entry (line) is started in
 /etc/group 
(with the same name, same password, and same GID).
 
The default value is 0, meaning that there are no limits in the number of members in a group.
 
This feature (split group) permits to limit the length of lines in the group file. This is useful to make sure that lines for NIS groups are not larger than 1024 characters.
 
If you need to enforce such limit, you can use 25.
 
Note: split groups may not be supported by all tools (even in the Shadow toolsuite. You should not use this variable unless you really need it.
 

   
 ФАЙЛЫ 

 

 /etc/group 
 
содержит информацию о группах
 

 

 /etc/gshadow 
 
содержит защищаемую информацию о группах
 

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

 

Команда
 groupmod 
завершая работу, возвращает следующие значения:
 

 0 
 
успешное выполнение
 

 

 2 
 
ошибка в параметрах команды
 

 

 3 
 
недопустимое значение параметра
 

 

 4 
 
указанная группа не существует
 

 

 6 
 
указанная группа не существует
 

 

 9 
 
такое имя группы уже используется
 

 

 10 
 
не удалось изменить файл групп
 

   
 СМОТРИТЕ ТАКЖЕ 

 

 chfn (1),
 chsh (1),
 passwd (1),
 gpasswd (8),
 groupadd (8),
 groupdel (8),
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