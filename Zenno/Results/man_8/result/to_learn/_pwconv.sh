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
 
 
 
 pwconv (8)   pwconv  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня ) >>  pwconv  (8)   ( Русские man: Команды системного администрирования )   pwconv  (8)   ( Linux man: Команды системного администрирования ) 


   
 НАЗВАНИЕ 

pwconv, pwunconv, grpconv, grpunconv - преобразует пароли пользователей и групп в/из защищённую форму
   
 СИНТАКСИС 

 
 
 pwconv 
 
 pwunconv 
 
 grpconv 
 
 grpunconv 
 
   
 ОПИСАНИЕ 

 

Команда
 pwconv 
создаёт файл
 shadow 
из файла
 passwd 
и необязательно существующего файла
 shadow .
 

Команда
 pwunconv 
создаёт файл
 passwd 
из файлов
 passwd 
и
 shadow , а затем удаляет файл
 shadow .
 

Команда
 grpconv 
создаёт файл
 gshadow 
из файла
 group 
и необязательно существующего файла
 gshadow .
 

Команда
 grpunconv 
создаёт файл
 group 
из файлов
 group 
и
 gshadow , а затем удаляет файл
 gshadow .
 

Эти четыре программы работают с файлами обычных или теневых паролей пользователей и групп:
 /etc/passwd ,
 /etc/group ,
 /etc/shadow 
и
 /etc/gshadow .
 

Каждая программа выполняет необходимые блокировки перед преобразованиями. Команды
 pwconv 
и
 grpconv 
выполняют схожий порядок действий. Сначала удаляются записи из теневого файла которых нет в главном файле. Затем обновляются записи в теневом файле которые не содержат `x' вместо пароля в главном файле. Далее добавляются отсутствующие теневые записи. Наконец, пароли в главном файле заменяются символом `x'. Данные программы можно использовать как для первоначального преобразования, так и для обновления теневого файла, если главный файл редактировался вручную.
 

Команда
 pwconv 
использует значения переменных
 PASS_MIN_DAYS ,
 PASS_MAX_DAYS 
и
 PASS_WARN_AGE 
из файла
 /etc/login.defs 
при добавлении новых записей в файл
 /etc/shadow .
 

Программы
 pwunconv 
и
 grpunconv 
также выполняют схожий порядок действий. Пароли в главном файле обновляются из теневого файла. Записи, которые существуют в главном файле, но не существуют в теневом файле оставляются как есть. По окончании, теневой файл удаляется. Информация об устаревании пароля не учитывается программой
 pwunconv . Конвертируется только возможное.
   
 ОШИБКИ РЕАЛИЗАЦИИ 

 

Ошибки в файлах паролей или групп (типа неверных или дублирующихся записей) могут зациклить программу или произойдут какие-то другие странные вещи. Перед конвертацией запустите
 pwck 
и
 grpck , чтобы исправить возможные ошибки.
   
 CONFIGURATION 

 

 The following configuration variable in
 /etc/login.defs 
changes the behavior of
 grpconv 
and
 grpunconv :
 

 MAX_MEMBERS_PER_GROUP  (number)
 
Maximum members per group entry. When the maximum is reached, a new group entry (line) is started in
 /etc/group 
(with the same name, same password, and same GID).
 
The default value is 0, meaning that there are no limits in the number of members in a group.
 
This feature (split group) permits to limit the length of lines in the group file. This is useful to make sure that lines for NIS groups are not larger than 1024 characters.
 
If you need to enforce such limit, you can use 25.
 
Note: split groups may not be supported by all tools (even in the Shadow toolsuite. You should not use this variable unless you really need it.
 

 

The following configuration variables in
 /etc/login.defs 
change the behavior of
 pwconv :
 

 PASS_MAX_DAYS  (number)
 
Максимальное число дней использования пароля. Если пароль старее этого числа, то будет запущена процедура смены пароля. Если значение не задано, то предполагается значение -1 (то есть возможность ограничения не используется).
 

 

 PASS_MIN_DAYS  (number)
 
Максимальное число дней между изменениями пароля. Любая смена пароля ранее заданного срока выполнена не будет. Если значение не задано, то предполагается значение -1 (то есть возможность ограничения не используется).
 

 

 PASS_WARN_AGE  (number)
 
Число дней за которое начнёт выдаваться предупреждение об устаревании пароля. Нулевое значение означает, что предупреждение выдаётся в день устаревания, при отрицательном значении предупреждение выдаваться не будет. Если значение не задано, выдача предупреждения отключается.
 

   
 ФАЙЛЫ 

 

 /etc/login.defs 
 
содержит конфигурацию подсистемы теневых паролей
 

   
 СМОТРИТЕ ТАКЖЕ 

 

 grpck (8),
 login.defs (5),
 pwck (8).
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ОШИБКИ РЕАЛИЗАЦИИ 
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