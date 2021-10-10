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
 
 
 
 vipw (8)   vipw  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   vipw  (8)   ( FreeBSD man: Команды системного администрирования ) >>  vipw  (8)   ( Русские man: Команды системного администрирования )   vipw  (8)   ( Linux man: Команды системного администрирования ) 


   
 НАЗВАНИЕ 

vipw, vigr - служат для редактирования файлов паролей, групп, теневых паролей пользователей или групп.
   
 СИНТАКСИС 

 
 
 vipw  [ параметры ]
 
 vigr  [ параметры ]
 
   
 ОПИСАНИЕ 

 

 vipw 
и
 vigr 
редактируют файлы
 /etc/passwd 
и
 /etc/group , соответственно. Если указан параметр
 -s , то будут редактироваться теневые версии этих файлов,
 /etc/shadow 
и
 /etc/gshadow , соответственно. На время работы программы устанавливают блокировку для предотвращения повреждения файла. При выборе редактора программы сначала проверяют переменную среды
 $VISUAL , затем
 $EDITOR , и если ничего не найдено, запускают стандартный редактор
 vi (1).
   
 ПАРАМЕТРЫ 

 

Параметры команд
 vipw 
и
 vigr :
 

 -g ,  --group 
 
Редактирует базу данных групп.
 

 

 -h ,  --help 
 
Показать краткую справку и закончить работу.
 

 

 -p ,  --passwd 
 
Редактировать базу данных passwd.
 

 

 -q ,  --quiet 
 
Не выводить сообщений при работе.
 

 

 -s ,  --shadow 
 
Редактировать базу данных shadow или gshadow.
 

   
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
 

 

 /etc/passwd 
 
содержит информацию о пользователях
 

 

 /etc/shadow 
 
содержит защищаемую информацию о пользователях
 

   
 СМОТРИТЕ ТАКЖЕ 

 

 vi (1),
 group (5),
 gshadow (5) passwd (5),
 shadow (5).
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ПАРАМЕТРЫ 
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