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
 
 
 
 slapindex (8) >>  slapindex  (8)   ( Русские man: Команды системного администрирования )   slapindex  (8)   ( Linux man: Команды системного администрирования ) 


   
 НАЗВАНИЕ 

slapindex - переиндексирование записей в базе данных SLAPD
   
 СИНТАКСИС 

 /usr/local/sbin/slapindex 

[ -b  suffix ]

[ -c ]

[ -d  debug-level ]

[ -f  slapd.conf ]

[ -F  confdir ]

[ -g ]

[ -n  dbnum ]

[ -o  option [ = value ]]

[ -q ]

[ -t ]

[ -v ]

[ attr [ ... ]]

 

 

   
 ОПИСАНИЕ 

 

 slapindex 

используется для регенерации индексов
 slapd (8)

на основании текущего содержимого базы данных. Утилита открывает
базу данных, заданную по номеру базы данных или суффиксу,
и обновляет индексы для всех значений всех атрибутов всех записей.
Если в командной строке был предоставлен список конкретных атрибутов,
будут обновлены индексы только для этих атрибутов.
Если не указан параметр  -g , также переиндексируются базы данных,
сконфигурированные с помощью директивы
 subordinate 

(подчинённые по отношению к целевой базе данных).
 
Все файлы, созданные в результате работы
 slapindex ,

будут принадлежать субъекту, от имени которого был запущен
 slapindex ;

таким образом, либо убедитесь, что Вы выполняете
 slapindex 

от имени того же субъекта, от которого запускается
 slapd (8),

(смотрите параметр
 -u 

в
 slapd (8)),

либо смените владельца файлов перед запуском
 slapd (8).

   
 ПАРАМЕТРЫ 

 
 -b  suffix 

 
Использовать указанный суффикс  suffix  для определения базы данных, индексы которой
требуется сгенерировать.  -b  не может использоваться совместно с параметром
 -n .

 -c 

 
Включает режим продолжения (игнорирования ошибок).
 -d  debug-level 

 
Включает вывод отладочных сообщений в соответствии с указанным уровнем
 debug-level ;

подробнее смотрите в
 slapd (8).

 -f  slapd.conf 

 
Определяет альтернативный файл
 slapd.conf (5).

 -F  confdir 

 
Определяет конфигурационную директорию.
Если указаны сразу и
 -f 

и
 -F ,

конфигурационный файл будет прочтён, переконвертирован в формат
конфигурационной директории и записан в указанную директорию.
Если не указан ни один из этих параметров, будет предпринята
попытка прочитать конфигурационную директорию по умолчанию,
а затем использовать конфигурационный файл по умолчанию.
Если существует конфигурационная директория в правильном формате,
то конфигурационный файл игнорируется.
 -g 

 
Отключает "склеивание" с подчинёнными базами данных. Будет
обработана только указанная база данных, а связанные с ней
подчинённые (если они вообще есть) - нет.
 -n  dbnum 

 
Генерировать индексы для базы данных с порядковым номером  dbnum 
из перечисленных в конфигурационном файле. Конфигурационная база данных
 slapd-config (5)

всегда является первой базой данных, поэтому для её выбора используйте
 -n 0 .

 
 -n 

не может использоваться совместно с параметром
 -b .

 -o  option [ = value ]

 
Определяет опцию
 option 

с необязательным значением
 value .

Возможные опции/значения общего назначения:
 
 

               syslog=<subsystems>  (смотрите `-s' в  slapd (8))
              syslog-level=<level> (смотрите `-S' в  slapd (8))
              syslog-user=<user>   (смотрите `-l' в  slapd (8))

 

 
 -q 

 
Включает  быстрый  режим  (с  меньшим  количеством  проверок целостности).
Не выполняется проверок целостности при записи в базу данных.
Время индексирования уменьшается,
 однако 

при возникновении любых ошибок или нарушений база данных скорее всего
будет неработоспособной.
 -t 

 
Включает режим обнуления. База данных индексов обнуляется (очищается)
перед началом индексирования записей.
Может использоваться только совместно с быстрым режимом.
 -v 

 
Включает режим подробного вывода.
 
   
 ОГРАНИЧЕНИЯ 

Чтобы быть уверенным в целостности базы данных, при выполнении этой операции Ваш
 slapd (8)

не должен быть запущен (по крайней  мере, не должен выполняться в режиме чтения-записи).
 

Пока работает эта утилита, у Вас будет масса времени, чтобы сварить и выпить чашечку кофе.
   
 ПРИМЕРЫ 

Для переиндексации Вашей базы данных SLAPD выполните команду:
 

         /usr/local/sbin/slapindex
 

Чтобы пересоздать индекс только для конкретного атрибута, например "uid",
выполните команду:
 

         /usr/local/sbin/slapindex uid
 

   
 СМОТРИТЕ ТАКЖЕ 

 ldap (3),

 ldif (5),

 slapadd (8),

 ldapadd (1),

 slapd (8)

 

"Руководство администратора OpenLDAP" ( http://www.OpenLDAP.org/doc/admin/,   http://pro-ldap.ru/tr/admin24/). 
   
 ПРИЗНАНИЕ ЗАСЛУГ 



 Программное обеспечение OpenLDAP 

разработано и поддерживается проектом OpenLDAP < http://www.openldap.org/ >.
 Программное обеспечение OpenLDAP 

является производным от релиза 3.3 LDAP Мичиганского Университета.

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ПАРАМЕТРЫ 
 ОГРАНИЧЕНИЯ 
 ПРИМЕРЫ 
 СМОТРИТЕ ТАКЖЕ 
 ПРИЗНАНИЕ ЗАСЛУГ 
 
 
 
 
 
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