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
 
 
 
 llround (3)   llround  (3)   ( Solaris man: Библиотечные вызовы )   llround  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  llround  (3)   ( Русские man: Библиотечные вызовы )   llround  (3)   ( Linux man: Библиотечные вызовы )   llround  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

lround, lroundf, lroundl, llround, llroundf, llroundl - округление до ближайшего целого в направлении от нуля
   
 СИНТАКСИС 

 #include < math.h > 

 long int lround(double  x ); 
 
 long int lroundf(float  x ); 
 
 long int lroundl(long double  x ); 

 long long int llround(double  x ); 
 
 long long int llroundf(float  x ); 
 
 long long int llroundl(long double  x ); 
 

   
 ОПИСАНИЕ 

Эти функции округляют аргумент до ближайшего целого значения,
используя направление округления от нуля, независимо от текущего направления округления.
Если  x  является бесконечным или нечисловым значением (NaN), или если округленное значение
выходит за границы типа, возвращаемого функцией, то числовой результат не возвращается.
Если величина  x  слишком велика, то может произойти ошибка области определения.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Округленное целое значение.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EDOM 

 
Величина  x  слишком велика и 
 (math_errhandling & MATH_ERRNO) 

ненулевое.
 
   
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