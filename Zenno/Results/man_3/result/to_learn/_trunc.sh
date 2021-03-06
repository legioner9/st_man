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
 
 
 
 trunc (3)   trunc  (3)   ( Solaris man: Библиотечные вызовы )   trunc  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  trunc  (3)   ( Русские man: Библиотечные вызовы )   trunc  (3)   ( Linux man: Библиотечные вызовы )   trunc  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

trunc, truncf, truncl - округление до ближайшего целого числа в направлении к нулю
   
 СИНТАКСИС 

 #include < math.h > 

 double trunc(double  x ); 
 
 float truncf(float  x ); 
 
 long double truncl(long double  x ); 
 

   
 ОПИСАНИЕ 

Эти функции округляют  x  до ближайшего целого числа,
не больше, чем абсолютное значение числа.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Округленное целое число. Если  x  является целым, бесконечным, или
нечисловым значением, то возвратится само значение  x .
   
 НАЙДЕННЫЕ ОШИБКИ 

Нет.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

C99.
   
 СМ. ТАКЖЕ 

 ceil (3),

 floor (3),

 lrint (3),

 nearbyint (3),

 rint (3),

 round (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
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