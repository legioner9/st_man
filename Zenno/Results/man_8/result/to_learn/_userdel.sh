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
 
 
 
 userdel (8)   userdel  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   userdel  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня ) >>  userdel  (8)   ( Русские man: Команды системного администрирования )   userdel  (8)   ( Linux man: Команды системного администрирования ) 


   
 НАЗВАНИЕ 

userdel - удаляет учётную запись и файлы пользователя
   
 СИНТАКСИС 

 
 
 userdel  [параметры]  LOGIN 
 
   
 ОПИСАНИЕ 

 

 The
 userdel 
command modifies the system account files, deleting all entries that refer to the user name
 LOGIN . The named user must exist.
   
 ПАРАМЕТРЫ 

 

Параметры команды
 userdel :
 

 -f ,  --force 
 
This option forces the removal of the user account, even if the user is still logged in. It also forces
 userdel 
to remove the user's home directory and mail spool, even if another user uses the same home directory or if the mail spool is not owned by the specified user. If
 USERGROUPS_ENAB 
is defined to
 yes 
in
 /etc/login.defs 
and if a group exists with the same name as the deleted user, then this group will be removed, even if it is still the primary group of another user.
 
 Примечание: 
Этот параметр опасно использовать; он может привести систему в нерабочее состояние.
 

 

 -h ,  --help 
 
Показать краткую справку и закончить работу.
 

 

 -r ,  --remove 
 
Файлы в домашнем каталоге пользователя будут удалены вместе с самим домашним каталогом и почтовым ящиком. Пользовательские файлы, расположенные в других файловых системах, нужно искать и удалять вручную.
 
Имя файла почтового ящика задаётся переменной
 MAIL_DIR 
в файле
 login.defs .
 

   
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
 

 

 USERDEL_CMD  (string)
 
Определяет программу, которая будет запущена при удалении пользователя. Она должна удалять любые задания at/cron/печати удаляемого пользователя (передаётся в качестве первого аргумента).
 

 

 USERGROUPS_ENAB  (boolean)
 
Enable setting of the umask group bits to be the same as owner bits (examples: 022 -> 002, 077 -> 007) for non-root users, if the uid is the same as gid, and username is the same as the primary group name.
 
If set to
 yes ,
 userdel 
will remove the user's group if it contains no more members, and
 useradd 
will create by default a group with the name of the user.
 

   
 ФАЙЛЫ 

 

 /etc/group 
 
содержит информацию о группах
 

 

 /etc/login.defs 
 
содержит конфигурацию подсистемы теневых паролей
 

 

 /etc/passwd 
 
содержит информацию о пользователях
 

 

 /etc/shadow 
 
содержит защищаемую информацию о пользователях
 

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

 

Команда
 userdel 
завершая работу, возвращает следующие значения:
 

 0 
 
успешное выполнение
 

 

 1 
 
не удалось изменить файл паролей
 

 

 2 
 
ошибка в параметрах команды
 

 

 6 
 
указанный пользователь не существует
 

 

 8 
 
пользователь сейчас работает в системе
 

 

 10 
 
не удалось изменить файл групп
 

 

 12 
 
не удалось удалить домашний каталог
 

   
 ПРЕДОСТЕРЕЖЕНИЯ 

 

Команда
 userdel 
не будет удалять учётную запись, если пользователь в данный момент работает в системе. Вы должны завершить все запущенные процессы, принадлежащие учётной записи, которую нужно удалить.
 

Нельзя удалить NIS атрибуты клиента NIS. Это необходимо сделать на NIS сервере.
 

Если значение переменной
 USERGROUPS_ENAB 
равно
 yes 
в файле
 /etc/login.defs , то
 userdel 
удалит группу с именем как у пользователя. Чтобы избежать рассогласованности в базах данных групп и паролей,
 userdel 
проверит, что данная группа не используется в качестве первичной для другого пользователя, и выдаст предупреждение без удаления, если такое случится. Параметр
 -f 
поможет удалить группу в любом случае.
   
 СМОТРИТЕ ТАКЖЕ 

 

 chfn (1),
 chsh (1),
 passwd (1),
 login.defs (5),
 gpasswd (8),
 groupadd (8),
 groupdel (8),
 groupmod (8),
 useradd (8),
 usermod (8).
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ПАРАМЕТРЫ 
 CONFIGURATION 
 ФАЙЛЫ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 ПРЕДОСТЕРЕЖЕНИЯ 
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