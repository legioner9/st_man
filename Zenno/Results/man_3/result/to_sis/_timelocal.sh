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
 
 
 
 timelocal (3) >>  timelocal  (3)   ( Русские man: Библиотечные вызовы )   timelocal  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

timegm, timelocal - инверсия для gmtime и localtime
   
 СИНТАКСИС 

 #include < time.h > 

 time_t timelocal (struct tm * tm ); 

 time_t timegm (struct tm * tm ); 
 

   
 ОПИСАНИЕ 

Функции
 timelocal() 

и
 timegm() 

являются инверсией для функций
 localtime (3)

и
 gmtime (3).

   
 ЗАМЕЧАНИЯ 

Эти функции являются расширениями GNU.
Функция
 timelocal() 

эквивалентна стандартной функйии POSIX
 mktime (3).

Вообще нет причин когда либо ее использовать.
 

Для портируемых версий
 timegm() ,

установите переменную окружения
 TZ 

в UTC, вызовите
 mktime() 

и восстановите значение
 TZ .

Примерно так:
 
 
 #include < time.h >
#include < stdlib.h >

time_t my_timegm (struct tm *tm) {
    time_t ret;
    char *tz;

    tz = getenv("TZ");
    setenv("TZ", "", 1);
    tzset();
    ret = mktime(tm);
    if (tz)
        setenv("TZ", tz, 1);
    else
        unsetenv("TZ");
    tzset();
    return ret;
}
 

 

   
 СМ. ТАКЖЕ 

 gmtime (3),

 localtime (3),

 mktime (3),

 tzset (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ЗАМЕЧАНИЯ 
 СМ. ТАКЖЕ 
 
 
 
 
 
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