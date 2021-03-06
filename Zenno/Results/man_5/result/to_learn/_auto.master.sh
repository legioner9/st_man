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
 
 
 
 auto.master (5) >>  auto.master  (5)   ( Русские man: Форматы файлов )   auto.master  (5)   ( Linux man: Форматы файлов ) 
   
 НАЗВАНИЕ 

/etc/auto.master - Основная таблица для автомонтирования
   
 ОПИСАНИЕ 

Файл таблицы
 auto.master 

просматривается при вызове скрипта
 autofs (8),

который настраивает необходимые точки монтирования для 
автомонтирования.  В каждой строке этого файла указывается базовая
точка монтирования и ссылка на другой табличный файл, описывающий 
монтируемые к данной базовой точке файловые системы. При доступе
к этим таблицам (map-файлам) используется ключ.

В случае косвенной таблицы автомонтирования доступ к автоматически
смонтированной файловой системе происходит по пути, составленному
по следующей схеме:

/ mountpoint / key / path / file ,


где
 mountpoint 

-- базовая точка монтирования, указанная в конфигурационном файле
 auto.master .

 Key 

соответствует ключу в map-файле, на который ссылается основная
таблица master (см.
 autofs (5)).

 Path 

и
 file ,

соответственно, указывают на требуемый файл в примонтированной
файловой системе.
 
В случае прямой (абсолютной) таблицы автомонтирования доступ к файловой
системе выполняется по полному пути, указанному в соответствующем
(ассоциированном) map-файле. Базовая точка монтирования для абсолютной
таблицы всегда задаётся в конфигурационном файле auto.master как
 /- .

   
 ФОРМАТ 

Табличный файл auto.master состоит из трёх полей, разделённых 
произвольным количеством пробелов или табуляций. Строки, начинающиеся 
с #, являются комментариями.  
 
Первое поле -- базовая точка монтирования (mountpoint). 
 
Второе поле -- файл таблицы (map-файл), соответствующий этой точке 
монтирования.  Данное поле определяется в формате
 maptype:mapname ,

где
 maptype 

- тип таблицы (поддерживаются типы file, program, yp, nisplus,
hesiod, userdir, ldap), а
 mapname 

- имя таблицы. 
 
Третье поле необязательно и может содержать опции, которые будут 
применены ко всем записям таблицы. Опции являются кумулятивными, 
что отличается от автомонтирования в SunOS.
 
Формат map-файла (таблицы) и опции описаны в
 autofs (5).

   
 ПРИМЕР 

 
 


 /home     /etc/auto.home
/misc     /etc/auto.misc
/mnt      yp:mnt.map
 

 

 
В этом примере заданы три точки монтирования:
 /home ,

 /misc 

и
 /mnt .

Любое обращение к каталогу
 /home 

приводит к чтению таблицы
 /etc/auto.home ,

обращение к
 /misc 

-- к чтению таблицы
 /etc/auto.misc ,

а обращение к 
 /mnt 

-- к чтению таблицы NIS
 mnt.map .

   
 СМОТРИ ТАКЖЕ 

 automount (8),

 autofs (5),

 autofs (8).

   
 АВТОР 

Эта страница руководства была написана Кристофером Ламитером
(Christoph Lameter) < chris@waterf.org > для системы Debian GNU/Linux
system. Отредактирована Питером Энвином (H. Piter Anvin
< hpa@transmeta.com >. 
 
Перевод на русский язык выполнил Александр Саввин
< savvin@mail.ru >.
 
 

 
   Index 
 
 НАЗВАНИЕ 
 ОПИСАНИЕ 
 ФОРМАТ 
 ПРИМЕР 
 СМОТРИ ТАКЖЕ 
 АВТОР 
 
 
 
 
 
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