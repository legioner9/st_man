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
 
 
 
 tzfile (5)   tzfile  (5)   ( FreeBSD man: Форматы файлов ) >>  tzfile  (5)   ( Русские man: Форматы файлов )   tzfile  (5)   ( Linux man: Форматы файлов ) 
   
 НАЗВАНИЕ 

tzfile - информация о часовом поясе
   
 СИНТАКСИС 

 #include < tzfile.h > 

   
 ОПИСАНИЕ 

Файлы с информацией о часовых поясах,
используемые функцией
 tzset (3),

начинаются со специальных символов "TZif", указывающих,
что это - файл с информацией о часовом поясе.
За ними следуют 16 байтов, зарезервированных для
их последующего использования.
После них находятся шесть четырехбайтных
значений типа
 long ,

записанных в "стандартном" порядке байтов
(старшие байты записываются первыми).
Это следующие значения:
 
 tzh_ttisgmtcnt 

 
(количество UTC/местных индикаторов в файле);
 tzh_ttisstdcnt 

 
(количество стандартных/местных индикаторов в файле);
 tzh_leapcnt 

 
(количество високосных секунд в файле);
 tzh_timecnt 

 
(количество "переходных периодов" в файле);
 tzh_typecnt 

 
(количество "типов местного времени" в файле.
Оно не должно быть равно 0);
 tzh_charcnt 

 
(количество символов в "аббревиатурах часовых поясов"
файла).
 
 

За этим заголовком следуют четырехбайтные значения
 tzh_timecnt 

типа
 long ,

расположенные в порядке возрастания.
Эти значения записаны в "стандартном" порядке байтов.
Каждое из этих значений является временем
"переходного периода" (в формате, возвращаемом функцией
 time (2)),

при задании которого изменяются правила вычисления местного времени.
После этого следуют однобайтные значения
 tzh_timecnt 

типа
 unsigned char ;

каждое из этих значений указывает, какому типу "местного времени",
описанному в файле, соответствует "переходный период", порядковый номер которого
в предыдущем списке совпадает с номером этого значения.
Эти значения выступают в роли индексов массива структур
 ttinfo ;

массив находится в файле после этих значений.
Эти структуры состоят из следующих полей:

 
 
struct ttinfo {
     long          tt_gmtoff;
     int           tt_isdst;
     unsigned int  tt_abbrind;
};
 

 
Каждая структура состоит из четырехбайтного значения
 tt_gmtoff 

типа
 long ,

записанного в "стандартном" порядке байтов; за этим значением следует
однобайтное значение
 tt_isdst 

и однобайтное значение
 tt_abbrind .

В каждой структуре
 tt_gmtoff 

означает, сколько секунда надо добавить к UTC;
 tt_isdst 

означает, что
 tm_isdst 

должно быть установлено при помощи
 localtime (3),

и
 tt_abbrind 

является индексом массива аббревиатур часовых поясов;
массив следует за структурами
 ttinfo .

 

После этого массива стоят пары четырехбайтных значений
 tzh_leapcnt ,

записанные в "стандартном" порядке байтов;
первое значение каждой пары задает время
(в формате
 time (2)) 

високосной секунды;
вторая пара определяет
 общее 

количество високосных секунд, добавляемых к указанному
моменту времени.
Пары значений располагаются в порядке возрастания.
 

Затем в файле располагаются индикаторы стандартного/местного времени
 tzh_ttisstdcnt ,

каждый из которых имеет однобайтное значение;
эти индикаторы определяют, как заданы "переходные периоды"
местного времени: согласно стандартному или местному времени.
Эти индикаторы используются, когда файл с информацией
о часовых поясах работает с POSIX-совместимыми
переменными окружения часовых поясов.
 

И, наконец, в этом файле находятся UTC/местные индикаторы
 tzh_ttisgmtcnt ,

каждый из которых представлен в виде однобайтного значения;
эти индикаторы определяют, как заданы "переходные периоды"
местного времени: согласно UTC или местному времени.
Эти индикаторы используются, когда файл с информацией
о часовых поясах работает с POSIX-совместимыми
переменными окружения часовых поясов.
 

 Localtime 

использует первую структуру стандартного местного времени
 ttinfo 

из этого файла
(или просто первую структуру
 ttinfo 

при отсутствии структур стандартного местного времени),
если
 tzh_timecnt 

равен 0, или аргумент времени меньше временного аргумента первого 
"переходного периода", записанного в файле.


 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 
 
 
 
 
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