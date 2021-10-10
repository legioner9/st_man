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
 
 
 
 groupmems (8) >>  groupmems  (8)   ( Русские man: Команды системного администрирования ) 


   
 НАЗВАНИЕ 

groupmems - управляет членами первичной группы пользователя
   
 СИНТАКСИС 

 
 
 groupmems  -a  имя_пользователя  | -d  имя_пользователя  | -l | -p | [-g  имя_группы ] 
 
   
 ОПИСАНИЕ 

 

Программа
 groupmems 
позволяет пользователю управлять списком членов своей группы не имея привилегий суперпользователя. Программа
 groupmems 
работает в системах, где в качестве первичной группы пользователя является группа с именем совпадающим с именем пользователя (то есть, guest / guest).
 

Только суперпользователь как администратор может использовать
 groupmems , чтобы изменить список членов не своей группы.
   
 ПАРАМЕТРЫ 

 

Параметры команды
 groupmems :
 

 -a   имя_пользователя 
 
Добавить нового пользователя в группу.
 

 

 -d   имя_пользователя 
 
Удалить пользователя из группы.
 

 

 -p 
 
Вычистить всех пользователей из списка членов группы.
 

 

 -g   имя_группы 
 
Суперпользователь может указать группу, в которой нужно изменить список членов.
 

 

 -l 
 
Показать список членов группы.
 

   
 НАСТРОЙКА 

 

Исполняемый файл программы
 groupmems 
должен иметь права
 2770, принадлежать пользователю
 root 
и группе
 groups . Системный администратор может добавлять пользователей в группу
 groups , разрешая или запрещая им запускать программу
 groupmems 
для управления членством в своей группе.
 
 
         $ groupadd -r groups
        $ chmod 2770 groupmems
        $ chown root.groups groupmems
        $ groupmems -g groups -a gk4
    
 

 

   
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
 

   
 СМОТРИТЕ ТАКЖЕ 

 

 chfn (1),
 chsh (1),
 passwd (1),
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
 НАСТРОЙКА 
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