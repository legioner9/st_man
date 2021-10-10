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
 
 
 
 adduser (8)   adduser  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   adduser  (8)   ( FreeBSD man: Команды системного администрирования ) >>  adduser  (8)   ( Русские man: Команды системного администрирования )   adduser  (8)   ( Linux man: Команды системного администрирования ) 
   
 NAME 
 adduser, addgroup - добавляют пользователя или группу в систему
   
 СИНТАКСИС 

 adduser  [параметры] [--home КАТ] [--shell|-s ОБОЛОЧКА] [--no-create-home]
[--uid ID] [--firstuid ID] [--lastuid ID] [--ingroup ГРУППА | --gid ID]
[--disabled-password] [--disabled-login] [--gecos GECOS]
[--add_extra_groups] пользователь
 

 adduser  --system [параметры] [--home КАТ] [--shell ОБОЛОЧКА]
[--no-create-home] [--uid ID] [--group | --ingroup ГРУППА | --gid ID]
[--disabled-password] [--disabled-login] [--gecos GECOS] пользователь
 

 addgroup  [параметры] [--gid ID] группа
 

 addgroup  --system [параметры] [--gid ID] группа
 

 adduser  [параметры] пользователь группа
   
 ОБЩИЕ ПАРАМЕТРЫ 

 

[--quiet] [--debug] [--force-badname] [--help|-h] [--version] [--conf ФАЙЛ]
   
 ОПИСАНИЕ 

 

 adduser  и  addgroup  добавляют пользователей и группы в систему, исходя
из параметров, заданных в командной строке и информации из файла
 /etc/adduser.conf . Они являются дружественными интерфейсами к программам
 groupadd  и  usermod , выбирают согласованные с политикой Debian значения
UID и GID, создают домашний каталог с начальными настройками, запускают
определённый сценарий, и обладают другими возможностями.  adduser  и
 addgroup  могут быть запущены в одном из пяти режимов:
   
 Добавление обычного пользователя 

При запуске с двумя аргументами и без параметров  --system  или  --group ,
 adduser  добавляет обычного пользователя.
 
 adduser  выберет первый доступный UID из диапазона обычных пользователей,
заданного в файле настройки.  UID может быть изменён с помощью параметра
 --uid .
 
Диапазон, задаваемый файлом настройки, может быть изменён с помощью
параметров  --firstuid  и  --lastuid. 
 
По умолчанию, каждый пользователь в Debian GNU/Linux входит в
соответствующую группу с тем же именем. Объединение пользователей в группы
позволяет групповую запись в каталог, что легко достигается посредством
помещения соответствующих пользователей в новую группу, установкой
set-group-ID бита на каталог и проверкой того, что все пользователи
используют значение umask со значением 002. Если параметру  USERGROUPS 
присвоить значение  no , то все GID пользователей будут устанавливаться в
 USERS_GID .  Группы пользователей также могут быть изменены из командной
строки с помощью параметров  --gid  или  --ingroup , которые задают группу
по id или по имени соответственно. Также, пользователей можно добавить в
одну или более групп указанных в adduser.conf или установкой
ADD_EXTRA_GROUPS равной 1 в adduser.conf, или указав --add_extra_groups в
командной строке.
 
 adduser  создаёт домашний каталог в соответствии со значениями  DHOME ,
 GROUPHOMES  и  LETTERHOMES . Домашний каталог может быть изменён из
командной строки с помощью параметра  --home , а оболочка с помощью
 --shell . На домашнем каталоге устанавливается Set-group-ID бит, если
 USERGROUPS  равно  yes , и поэтому любые файлы, создаваемые в домашнем
каталоге пользователя, будут иметь правильную группу.
 
 adduser  копирует файлы из  SKEL  в домашний каталог, запрашивает
информацию для finger (gecos) и пароль. Gecos также может быть задан с
помощью параметра  --gecos . При задании параметра  --disabled-login ,
учётная запись будет создана, но пока не будет определён пароль, доступ
через неё останется заблокированным. При задании параметра
 --disabled-password  пароль не нужен, но вход в систему всё равно возможен
(например с помощью SSH RSA ключей).
 
Если файл  /usr/local/sbin/adduser.local  существует, то он будет выполнен
после создания учётной записи пользователя, чтобы выполнить все локальные
настройки. Аргументы передаваемые  adduser.local :
 

имя_пользователя uid gid домашний_каталог
 

Значение переменной среды VERBOSE устанавливается по следующему правилу:
 
 0, если указан --quiet 
 1, если не указан --quiet или --debug 
 2, если указан --debug 
 
(Это же правило применяется к переменной DEBUG, но DEBUG лучше не
использовать, так как она будет удалена в следующей версии adduser.)
 
 
   
 Добавление системного пользователя 

При запуске с одним параметром без аргументов и параметром  --system ,
 adduser  добавляет системного пользователя. Если пользователь с тем же
именем уже существует, то adduser завершает работу с выдачей предупреждения.
 
 adduser  выберет первый доступный UID из диапазона системных
пользователей, заданного в файле настройки. UID может быть изменён с помощью
параметра  --uid .
 
По умолчанию, системные пользователи помещаются в группу  nogroup . Чтобы
поместить нового системного пользователя в уже существующую группу,
используйте параметры  --gid  или  --ingroup . Чтобы поместить нового
системного пользователя в новую группу с тем же ID, используйте параметр
 --group .
 
Домашний каталог создаётся по тем же правилам что и для обычных
пользователей. Новый системный пользователь имеет оболочку  /bin/false 
(если не указан параметр  --shell ) и заблокированный пароль. Начальные
файлы настроек не копируются.
   
 Добавление пользовательской группы 

Если  adduser  вызывается с параметром  --group  и без параметра
 --system  или имеет соответствующее название  addgroup , то добавляется
пользовательская группа.
 
GID будет выбран из диапазона пользовательских UIDS, заданного в файле
настройки. GID может быть изменён с помощью параметра  --gid .
 
Группа создаётся без пользователей.
   
 Добавление системной группы 

Если  addgroup  вызывается с параметром  --system , то добавляется
системная группа.
 
GID будет выбран из диапазона системных GID, заданных в файле настройки. GID
может быть установлен принудительно с помощью параметра  --gid .
 
Группа создаётся без пользователей.
   
 Добавление существующего пользователя в существующую группу 

При запуске с двумя аргументами,  adduser  добавляет существующего
пользователя в существующую группу.
   
 ПАРАМЕТРЫ 

 
 --conf ФАЙЛ 
Использовать ФАЙЛ вместо  /etc/adduser.conf .
 --disabled-login 
Не запускать passwd для задания пароля. Пользователь не сможет использовать
свою учётную запись, пока его пароль не установлен.
 --disabled-password 
То же что и --disabled-login, но вход в систему возможен(например, с помощью
ключей SSH RSA), но не использующих парольную аутентификацию.
 --force-badname 
By default, user and group names are checked against the configurable
regular expression  NAME_REGEX  (or  NAME_REGEX  if  --system  is
specified)  specified in the configuration file. This option forces
 adduser  and  addgroup  to apply only a weak check for validity of the
name.
 --gecos GECOS 
Set the gecos field for the new entry generated.   adduser  will not ask
for finger information if this option is given.
 --gid ID 
При создании группы этот параметр задает её идентификатор. При создании
пользователя этот параметр помещает пользователя в группу с этим номером.
 --group 
При совместном использовании с  --system , создаётся группа с тем же именем
и ID как и у системного пользователя. Если же  --system  не задана, то
создаётся группа с указанным именем. Это является действием по умолчанию,
если программа вызывается как  addgroup .
 --help 
Показать краткую инструкцию.
 --home КАТ 
Использовать КАТ в качестве домашнего каталога пользователя, а не как
задаётся по умолчанию в файле настроек.  Если каталог не существует, то он
будет создан и будут скопированы начальные файлы настроек.
 --shell ОБОЛОЧКА 
Использовать ОБОЛОЧКУ в качестве регистрационной оболочки, а не как задано
по умолчанию в файле настроек.
 --ingroup ГРУППА 
Add the new user to GROUP instead of a usergroup or the default group
defined by  USERS_GID  in the configuration file.
 --no-create-home 
Не создавать домашний каталог, даже если он не существует.
 --quiet 
Не выводить информационные сообщения, показывать только предупреждения и
ошибки.
 --debug 
Показывать отладочную информацию, очень полезно, если вы хотите понять в чём
проблема у adduser.
 --system 
Create a system user or group.
 --uid ID 
Force the new userid to be the given number.   adduser  will fail if the
userid is already taken.
 --firstuid ID 
Override the first uid in the range that the uid is chosen from (overrides
 FIRST_UID  specified in the configuration file).
 --lastuid ID 
Override the last uid in the range that the uid is chosen from (  LAST_UID 
)
 --add_extra_groups 
Add new user to extra groups defined in the configuration file.
 --version 
Показать номер версии и информацию об авторском праве.
 
 
   
 EXIT VALUES 

 
 
 0 
The user exists as specified. This can have 2 causes: The user was created
by adduser or the user was already present on the system before adduser was
invoked. Invoking adduser a second time with the same parameters as before
also returns 0.
 1 
Creating the user or group failed because it was already present with other
UID/GID than specified. The username or groupname was rejected because of a
mismatch with the configured regular expressions, see
 adduser.conf (5). Adduser has been aborted by a signal.
 

Or for many other yet undocumented reasons which are printed to console
then.
 
 
   
 ФАЙЛЫ 

 
 /etc/adduser.conf 
Default configuration file for adduser and addgroup
 
   
 СМОТРИТЕ ТАКЖЕ 

 adduser.conf (5),  deluser (8),  useradd (8),  groupadd (8),  usermod (8), Debian
Policy 9.2.2.
 
   
 АВТОРСКОЕ ПРАВО 

Copyright (C) 1997, 1998, 1999 Guy Maor. Modifications by Roland
Bauerschmidt and Marc Haber. Additional patches by Joerg Hoh and Stephen
Gran.
 

Copyright (C) 1995 Ted Hajek, с большими заимствованиями из оригинального
Debian  adduser 
 

Copyright (C) 1994 Ian Murdock.  adduser  это свободное ПО; смотрите
условия копирования в Универсальной Общественной Лицензии GNU версии 2 или
более новой.  Не предоставляется  никаких  гарантий.
 

 
   Index 
 
 NAME 
 СИНТАКСИС 
 
 ОБЩИЕ ПАРАМЕТРЫ 
 
 ОПИСАНИЕ 
 
 Добавление обычного пользователя 
 Добавление системного пользователя 
 Добавление пользовательской группы 
 Добавление системной группы 
 Добавление существующего пользователя в существующую группу 
 
 ПАРАМЕТРЫ 
 EXIT VALUES 
 ФАЙЛЫ 
 СМОТРИТЕ ТАКЖЕ 
 АВТОРСКОЕ ПРАВО 
 
 
 
 
 
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