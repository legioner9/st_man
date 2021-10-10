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
 
 
 
 adduser.conf (5)   adduser.conf  (5)   ( FreeBSD man: Форматы файлов ) >>  adduser.conf  (5)   ( Русские man: Форматы файлов )   adduser.conf  (5)   ( Linux man: Форматы файлов ) 
   
 NAME 
 /etc/adduser.conf -- файл настройки для  adduser (8)  и  addgroup (8) .
   
 ОПИСАНИЕ 

The file  /etc/adduser.conf  contains defaults for the programs
 adduser (8)  ,  addgroup (8)  ,  deluser (8)  and  delgroup (8) .  Each
line holds a single value pair in the form  option  =  value .  Double or
single quotes are allowed around the value, as is whitespace around the
equals sign.  Comment lines must have a hash sign (#) in the first column.
 
Действующие параметры настройки:
 
 DSHELL 
Регистрационный shell, который будут использовать все новые пользователи. По
умолчанию  /bin/bash .
 DHOME 
Каталог, в котором должны создаваться новые домашние каталоги. По умолчанию
 /home .
 GROUPHOMES 
Если значение равно  yes , то домашние каталоги будут создаваться в
 /home/[имя_группы]/пользователь . По умолчанию  no .
 LETTERHOMES 
Если значение равно  yes , то домашние каталоги будут создаваться в
дополнительном каталоге, имя которого состоит из первой буквы имени
пользователя.  Например:  /home/п/пользователь .  По умолчанию  no .
 SKEL 
Каталог, из которого нужно копировать базовые файлы настройки
пользователя. По умолчанию  /etc/skel .
 FIRST_SYSTEM_UID  и  LAST_SYSTEM_UID 
определяют границы (включительно) диапазона динамически выделяемых UID
системных пользователей. По умолчанию  100  -  999 . Заметим, что в этом
системном ПО диапазон UID до 100 (диапазон, где пользовательские UID
распределяются пакетом base-passwd) никак не заблокирован.
 FIRST_UID  и  LAST_UID 
определяют границы (включительно) диапазона динамически выделяемых UID
обычных пользователей. По умолчанию  1000  -  29999 .
 USERGROUPS 
Если значение равно  yes , то каждый создаваемый пользователь будет иметь
свою собственную группу. Если значение равно  no , то каждый создаваемый
пользователь будет помещён в группу, чей GID равен  USERS_GID  (смотрите
ниже). По умолчанию  yes .
 USERS_GID 
Если значение  USERGROUPS  равно  no , то  USERS_GID  является GID,
который даётся всем создаваемым пользователям. По умолчанию  100 .
 DIR_MODE 
If set to a valid value (e.g. 0755 or 755), directories created will have
the specified permissions as umask. Otherwise 0755 is used as default.
 SETGID_HOME 
Если значение равно  yes , то на домашних каталогах пользователей со своими
собственными группами (  USERGROUPS=yes  ) будет устанавливаться setgid
бит. Это делалось по умолчанию в adduser версиях << 3.13. К
сожалению, это привело к появлению побочных эффектов, и поэтому мы исключили
его из действий по умолчанию. Если вы всё-таки хотите, то ещё можете
включить его здесь.
 QUOTAUSER 
Если задано не пустое значение, то оно воспринимается как имя пользователя,
и для всех новых пользователей будут скопированы квоты этого пользователя. 
По умолчанию пользователь не задан.
 NAME_REGEX 
User names are checked against this regular expression. If the name doesn't
match this regexp, user creation in adduser is refused unless
--force-badname is set. With --force-badname set, only weak checks are
performed. The default is the most conservative ^[a-z][-a-z0-9]*$.  When
--system is specified, NAME_REGEX_SYSTEM is used instead.
 NAME_REGEX_SYSTEM 
Names of system users are checked against this regular expression.  If
--system is supplied and the name doesn't match this regexp, user creation
in adduser is refused unless --force-badname is set. With --force-badname
set, only weak checks are performed. The default is as for the default
NAME_REGEX but also allowing uppercase letters.
 SKEL_IGNORE_REGEX 
Файлы в каталоге /etc/skel/ проверяются на соответствии данному регулярному
выражению, и не копируются в создаваемый новый пользовательский каталог,
если если они подходят. По умолчанию установлено значение, для исключения из
копирования необъединённых конфигурационных файлов (dpkg-(old|new|dist)).
 ADD_EXTRA_GROUPS 
Если присвоить значение отличное от 0 (по умолчанию), то adduser добавит
создаваемых не системных пользователей в группы из списка, заданного в
EXTRA_GROUPS (смотрите ниже).
 EXTRA_GROUPS 
Это список групп, в которые будут добавлены создаваемые не системные
пользователи. По умолчанию, список равен 'dialout cdrom floppy audio src
video lp users'
 
   
 ФАЙЛЫ 

 /etc/adduser.conf 
   
 СМОТРИТЕ ТАКЖЕ 

 adduser (8),  addgroup (8),  deluser (8),  delgroup (8)
 

 
   Index 
 
 NAME 
 ОПИСАНИЕ 
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