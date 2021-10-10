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
 
 
 
 usermod (8)   usermod  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   usermod  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня ) >>  usermod  (8)   ( Русские man: Команды системного администрирования )   usermod  (8)   ( Linux man: Команды системного администрирования ) 


   
 НАЗВАНИЕ 

usermod - изменяет учётную запись пользователя
   
 СИНТАКСИС 

 
 
 usermod  [ параметры ]  LOGIN 
 
   
 ОПИСАНИЕ 

 

Команда
 usermod 
изменяет системные файлы учётных записей согласно переданным в командной строке параметрам.
   
 ПАРАМЕТРЫ 

 

Параметры команды
 usermod :
 

 -a ,  --append 
 
Добавить пользователя в дополнительную группу(ы). Использовать только вместе с параметром
 -G .
 

 

 -c ,  --comment КОММЕНТАРИЙ 
 
Новое значение поля комментария в файле пользовательских паролей. Обычно его изменяют с помощью программы
 chfn (1).
 

 

 -d ,  --home ДОМАШНИЙ_КАТАЛОГ 
 
Новый домашний каталог пользователя. Если указан параметр
 -m , то содержимое текущего домашнего каталога будет перемещено в новый домашний каталог, который будет создан, если он ещё не существует.
 

 

 -e ,  --expiredate ДАТА_УСТАРЕВАНИЯ 
 
Дата, когда учётная запись пользователя будет заблокирована. Дата задаётся в формате
 ГГГГ-ММ-ДД .
 

 

 -f ,  --inactive ДНЕЙ 
 
Число дней, которые должны пройти после устаревания пароля, чтобы учётная запись заблокировалась навсегда. Если указано значение 0, то учётная запись блокируется сразу после устаревания пароля, а при значении -1 данная возможность не используется. По умолчанию используется значение -1.
 

 

 -g ,  --gid ГРУППА 
 
Имя или числовой идентификатор новой начальной группы пользователя. Группа с таким именем должна существовать. Идентификатор группы должен указывать на уже существующую группу. По умолчанию идентификатор группы установлен в 1.
 

 

 -G ,  --groups ГРУППА1 [ ,ГРУППА2,... [ ,ГРУППАN ]]]
 
 A list of supplementary groups which the user is also a member of. Each group is separated from the next by a comma, with no intervening whitespace. The groups are subject to the same restrictions as the group given with the
 -g 
option. If the user is currently a member of a group which is not listed, the user will be removed from the group. This behaviour can be changed via the
 -a 
option, which appends the user to the current supplementary group list.
 

 

 -l ,  --login НОВОЕ_ИМЯ 
 
The name of the user will be changed from
 LOGIN 
to
 NEW_LOGIN . Nothing else is changed. In particular, the user's home directory name should probably be changed manually to reflect the new login name.
 

 

 -L ,  --lock 
 
Заблокировать пароль пользователя. Это делается помещением символа '!' в начало шифрованного пароля, чтобы приводит к блокировке пароля. Не используйте этот параметр вместе с
 -p 
или
 -U .
 
Note: if you wish to lock the account (not only access with a password), you should also set the
 EXPIRE_DATE 
to
 1 .
 

 

 -o ,  --non-unique 
 
При использовании с параметром
 -u , этот параметр позволяет указывать не уникальный числовой идентификатор пользователя.
 

 

 -p ,  --password ПАРОЛЬ 
 
Шифрованное значение пароля, которое возвращает функция
 crypt (3).
 

 

 -s ,  --shell ОБОЛОЧКА 
 
Имя новой регистрационной оболочки пользователя. Если задать пустое значение, то будет использована регистрационная оболочка по умолчанию.
 

 

 -u ,  --uid UID 
 
Числовое значение идентификатора пользователя (ID). Значение должно быть уникальным, если не задан параметр
 -o . Значение должно быть неотрицательным. Значения от 0 до 999 обычно зарезервированы для системных учётных записей. Для всех файлов, которыми владеет пользователь и которые расположены в его домашнем каталоге идентификатор владельца файла будет изменён автоматически. Для файлов, расположенных вне домашнего каталога идентификатор нужно изменять вручную.
 

 

 -U ,  --unlock 
 
Разблокировать пароль пользователя. Это выполняется удалением символа '!' из начала шифрованного пароля. Не используйте этот параметр вместе с
 -p 
или
 -L .
 
Note: if you wish to unlock the account (not only access with a password), you should also set the
 EXPIRE_DATE 
(for example to
 99999 , or to the
 EXPIRE 
value from
 /etc/default/useradd ).
 

   
 ПРЕДОСТЕРЕЖЕНИЯ 

 

Команда
 usermod 
не будет изменять имя пользователя, если этот пользователь в данный момент работает в системе. Если требуется изменить числовой идентификатор пользователя, нужно проверить, что от этого пользователя нет запущенных процессов. Владельца файлов
 crontab 
нужно изменять вручную. Владельца заданий
 at 
нужно изменять вручную. Также вручную нужно сделать все изменения связанные с NIS на сервере NIS.
   
 CONFIGURATION 

 

The following configuration variables in
 /etc/login.defs 
change the behavior of this tool:
 

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
 

   
 ФАЙЛЫ 

 

 /etc/group 
 
содержит информацию о группах
 

 

 /etc/passwd 
 
содержит информацию о пользователях
 

 

 /etc/shadow 
 
содержит защищаемую информацию о пользователях
 

   
 СМОТРИТЕ ТАКЖЕ 

 

 chfn (1),
 chsh (1),
 passwd (1),
 crypt (3),
 gpasswd (8),
 groupadd (8),
 groupdel (8),
 groupmod (8),
 login.defs (5),
 useradd (8),
 userdel (8).
 

 
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